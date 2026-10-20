#!/usr/bin/env python3
"""Build idempotent, batched SQL seed files from the JSON question packs.

Usage:
    python3 scripts/build_question_sql.py [questions_dir] [output_dir]

    questions_dir  directory holding the JSON packs (default: supabase/questions)
    output_dir     directory the .sql files are written to (default: supabase/seed)

Every ``*.json`` file in the questions directory is read (files whose name starts
with ``_`` are ignored).  The generated files are named ``questions_001.sql``,
``questions_002.sql``, ... and hold at most 400 questions / 900 KB each.

The SQL is written against the schema in ``supabase/migrations/001_schema.sql``
and the reference rows in ``004_reference_data.sql``:

    public.subjects        (slug, name)
    public.categories     (subject_id, slug, name)
    public.topics         (subject_id, category_id, slug, name)
    public.questions       (id, subject_id, category_id, topic_id, question_text,
                             explanation, difficulty, source, year, question_hash)
    public.question_options(question_id, label, option_text)
    private.question_answers(question_id, correct_label)

Guarantees:

* Subjects and categories are resolved *inside* SQL (slug first, name as a
  fallback), so the files do not need to know the surrogate keys of the
  database.  Topics are created on demand with ``ON CONFLICT DO NOTHING``.
* The answer key only ever lands in ``private.question_answers``; no public
  table holds the correct option.
* Re-running the generator (or applying a batch twice) never creates a
  duplicate: question ids are deterministic ``uuid5`` values derived from the
  normalised stem, the ``question_hash`` matches the value the
  ``questions_set_hash`` trigger computes, and every insert is idempotent.
* Malformed files and questions are skipped and reported as a warning count.
"""

import hashlib
import json
import os
import re
import sys
import uuid
from collections import Counter, OrderedDict

# --------------------------------------------------------------------------- #
# constants
# --------------------------------------------------------------------------- #

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

DEFAULT_QUESTIONS_DIR = os.path.join(ROOT, 'supabase', 'questions')
DEFAULT_OUTPUT_DIR = os.path.join(ROOT, 'supabase', 'seed')
REFERENCE_DATA_PATH = os.path.join(ROOT, 'supabase', 'migrations', '004_reference_data.sql')

MAX_QUESTIONS_PER_FILE = 400
MAX_BYTES_PER_FILE = 900_000
FILE_PREFIX = 'questions_'
# Reserved for the file header + "begin;" / "commit;" wrapper.
HEADER_OVERHEAD = 1_200

LABELS = ('A', 'B', 'C', 'D')
DIFFICULTIES = ('easy', 'medium', 'hard')

# Used when 004_reference_data.sql cannot be read.
FALLBACK_SUBJECT_SLUGS = (
    'art_culture', 'current_affairs', 'economy', 'environment',
    'geography', 'history', 'polity', 'science_tech',
)

# Fixed namespace so that the generated question ids stay stable forever.
QUESTION_NAMESPACE = uuid.uuid5(uuid.NAMESPACE_URL, 'https://swadharma.ias/questions/v1')

WHITESPACE_RE = re.compile(r'\s+')
CONTROL_RE = re.compile(r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f]')
TUPLE_RE = re.compile(
    r"\(\s*'((?:[^']|'')*)'\s*,\s*'((?:[^']|'')*)'\s*,\s*'((?:[^']|'')*)'\s*,\s*(\d+)\s*\)"
)
SLUG_RE = re.compile(r'[^a-z0-9]+')
OUTPUT_FILE_RE = re.compile(r'^questions_\d{3,}\.sql$')


# --------------------------------------------------------------------------- #
# small helpers
# --------------------------------------------------------------------------- #

def collapse(text):
    """Collapse every run of whitespace into a single space and trim."""
    return WHITESPACE_RE.sub(' ', str(text)).strip()


def normalise_stem(text):
    """Normalised stem used for de-duplication: lower case, collapsed spaces."""
    return collapse(text).lower()


def md5_of(text):
    """Mirrors the questions_set_hash trigger: md5(lower(normalised text))."""
    return hashlib.md5(normalise_stem(text).encode('utf-8')).hexdigest()


def slugify(text):
    """Slug safe for subjects_slug_format / category slugs."""
    return SLUG_RE.sub('-', str(text).strip().lower()).strip('-')


def sql_literal(value):
    """Render a python value as a SQL literal (doubled single quotes)."""
    if value is None:
        return 'null'
    text = CONTROL_RE.sub(' ', str(value))
    return "'" + text.replace("'", "''") + "'"


def as_int(value):
    """Return value as an int, or None when it is not an integer."""
    if isinstance(value, bool):
        return None
    if isinstance(value, int):
        return value
    if isinstance(value, float) and value.is_integer():
        return int(value)
    if isinstance(value, str):
        try:
            return int(value.strip())
        except ValueError:
            return None
    return None


# --------------------------------------------------------------------------- #
# reference catalog (004_reference_data.sql)
# --------------------------------------------------------------------------- #

def _section(text, start_marker, end_marker):
    start = text.find(start_marker)
    if start < 0:
        return ''
    start += len(start_marker)
    end = text.find(end_marker, start)
    return text[start:end if end >= 0 else len(text)]


def parse_reference_catalog(path):
    """Return {subject_slug: {'name': str, 'categories': {slug: name}}}.

    Returns None when the reference file cannot be read.
    """
    try:
        with open(path, encoding='utf-8') as handle:
            text = handle.read()
    except OSError:
        return None

    catalog = OrderedDict()

    subjects = _section(text, 'insert into public.subjects', 'on conflict (slug) do update')
    for slug, name, _description, _position in TUPLE_RE.findall(subjects):
        catalog.setdefault(slug, {'name': name, 'categories': OrderedDict()})

    categories = _section(
        text, 'insert into public.categories', 'on conflict (subject_id, slug) do update'
    )
    for subject, slug, name, _position in TUPLE_RE.findall(categories):
        entry = catalog.setdefault(
            subject, {'name': subject.replace('_', ' ').title(), 'categories': OrderedDict()}
        )
        entry['categories'][slug] = name

    return catalog


# --------------------------------------------------------------------------- #
# loading + validation
# --------------------------------------------------------------------------- #

def detect_subject(filename, subject_slugs):
    """Map a pack file name onto a subject slug (longest known prefix wins)."""
    stem = os.path.splitext(os.path.basename(filename))[0]
    matches = [slug for slug in subject_slugs if stem == slug or stem.startswith(slug + '_')]
    if matches:
        return max(matches, key=len)
    # Unknown prefix: strip trailing "_21", "_b_12", ... and use what is left.
    fallback = re.sub(r'(?:_[a-z0-9]+)+$', '', stem)
    return fallback or stem


def validate_question(raw, subject, catalog, warnings):
    """Return a normalised question record, or None when it is malformed."""
    if not isinstance(raw, dict):
        warnings['question is not an object'] += 1
        return None

    stem = raw.get('q', raw.get('stem'))
    if not isinstance(stem, str) or not stem.strip():
        warnings['missing stem'] += 1
        return None
    stem = collapse(stem)

    options = raw.get('options')
    if not isinstance(options, list):
        warnings['missing options'] += 1
        return None
    cleaned = []
    for option in options:
        if not isinstance(option, str) or not option.strip():
            warnings['empty option'] += 1
            return None
        cleaned.append(collapse(option))
    if len(cleaned) < 2:
        warnings['fewer than 2 options'] += 1
        return None
    if len(cleaned) > len(LABELS):
        warnings['more than 4 options (extra ones dropped)'] += 1
        cleaned = cleaned[:len(LABELS)]

    answer = as_int(raw.get('answer'))
    if answer is None or answer < 0 or answer >= len(cleaned):
        warnings['invalid answer'] += 1
        return None

    difficulty = raw.get('difficulty')
    if not isinstance(difficulty, str) or difficulty.strip().lower() not in DIFFICULTIES:
        if difficulty is not None:
            warnings['invalid difficulty (defaulted to medium)'] += 1
        difficulty = 'medium'
    difficulty = difficulty.strip().lower()

    explanation = raw.get('explanation')
    if not isinstance(explanation, str) or not explanation.strip():
        warnings['missing explanation'] += 1
        explanation = ''
    else:
        explanation = collapse(explanation)

    source = raw.get('source')
    if not isinstance(source, str) or not source.strip():
        warnings['missing source'] += 1
        source = None
    else:
        source = collapse(source)

    year = as_int(raw.get('year'))
    if year is not None and not (1900 <= year <= 2100):
        warnings['year out of range (stored as null)'] += 1
        year = None

    category = raw.get('category')
    if not isinstance(category, str) or not category.strip():
        warnings['missing category'] += 1
        category = None
    else:
        category = category.strip()

    category_name = None
    if category is not None and catalog is not None:
        known = catalog.get(subject, {}).get('categories', {})
        category_name = known.get(category)
        if category_name is None:
            warnings['category not in the reference data'] += 1
    elif category is not None:
        category_name = None

    topic = raw.get('topic')
    topic_name = None
    topic_slug = None
    if isinstance(topic, str) and topic.strip():
        topic_name = collapse(topic)
        topic_slug = slugify(topic_name) or None
        if not topic_slug:
            topic_name = None

    return {
        'subject': subject,
        'stem': stem,
        'normalised': normalise_stem(stem),
        'options': cleaned,
        'answer': answer,
        'difficulty': difficulty,
        'explanation': explanation,
        'source': source,
        'year': year,
        'category': category,
        'category_name': category_name,
        'topic': topic_name,
        'topic_slug': topic_slug,
    }


def load_questions(questions_dir, catalog, warnings):
    """Read every pack in questions_dir and return the valid question records."""
    if not os.path.isdir(questions_dir):
        raise SystemExit('error: questions directory not found: %s' % questions_dir)

    subject_slugs = list(catalog.keys()) if catalog else list(FALLBACK_SUBJECT_SLUGS)
    subject_slugs.sort(key=len, reverse=True)

    files = sorted(
        name for name in os.listdir(questions_dir)
        if name.endswith('.json') and not name.startswith('_')
    )

    records = []
    file_errors = 0
    for name in files:
        path = os.path.join(questions_dir, name)
        try:
            with open(path, encoding='utf-8') as handle:
                payload = json.load(handle)
        except (OSError, ValueError) as error:
            file_errors += 1
            warnings['file could not be parsed'] += 1
            print('warning: %s: could not be parsed (%s) - skipped' % (name, error))
            continue
        if not isinstance(payload, list):
            file_errors += 1
            warnings['file is not a JSON array'] += 1
            print('warning: %s: not a JSON array - skipped' % name)
            continue

        subject = detect_subject(name, subject_slugs)
        for raw in payload:
            if isinstance(raw, dict):
                declared = raw.get('subject')
                if isinstance(declared, str) and declared.strip():
                    declared = declared.strip()
                    if catalog is not None and declared not in catalog:
                        warnings['unknown subject in question payload'] += 1
                    else:
                        subject = declared
            record = validate_question(raw, subject, catalog, warnings)
            if record is not None:
                records.append(record)

    return records, files, file_errors


def deduplicate(records, warnings):
    """Drop questions whose normalised stem was already seen."""
    seen = {}
    unique = []
    for record in records:
        key = record['normalised']
        if key in seen:
            warnings['duplicate stem (skipped)'] += 1
            continue
        seen[key] = record
        unique.append(record)
    return unique


# --------------------------------------------------------------------------- #
# SQL rendering
# --------------------------------------------------------------------------- #

def subject_reference(subject, subject_name):
    """Scalar subquery resolving a subject by slug (name is the fallback)."""
    clause = "s.slug = %s" % sql_literal(subject)
    if subject_name:
        clause += " or lower(s.name) = lower(%s)" % sql_literal(subject_name)
    return (
        "(select s.id from public.subjects s\n"
        "      where %s\n"
        "      order by (s.slug = %s) desc limit 1)" % (clause, sql_literal(subject))
    )


def category_reference(subject, subject_name, category, category_name):
    """Scalar subquery resolving a category of a subject by slug or name."""
    if not category:
        return 'null'
    clause = "c.slug = %s" % sql_literal(category)
    if category_name:
        clause += " or lower(c.name) = lower(%s)" % sql_literal(category_name)
    return (
        "(select c.id from public.categories c\n"
        "       join public.subjects s on s.id = c.subject_id\n"
        "      where s.slug = %s\n"
        "        and (%s)\n"
        "      order by (c.slug = %s) desc limit 1)"
        % (sql_literal(subject), clause, sql_literal(category))
    )


def topic_reference(subject, category, topic_slug):
    """Scalar subquery resolving a topic of a category by slug."""
    if not topic_slug:
        return 'null'
    return (
        "(select t.id from public.topics t\n"
        "       join public.categories c on c.id = t.category_id\n"
        "       join public.subjects s on s.id = t.subject_id\n"
        "      where s.slug = %s and c.slug = %s and t.slug = %s\n"
        "      limit 1)"
        % (sql_literal(subject), sql_literal(category), sql_literal(topic_slug))
    )


def render_topic_insert(subject, subject_name, category, category_name, topic, topic_slug):
    """Create a topic on demand; the ON CONFLICT clause keeps it idempotent."""
    return (
        "insert into public.topics (id, subject_id, category_id, slug, name)\n"
        "select %s, s.id, c.id, %s, %s\n"
        "  from public.subjects s\n"
        "  join public.categories c on c.subject_id = s.id\n"
        " where s.slug = %s and c.slug = %s\n"
        "on conflict (category_id, slug) do nothing;\n"
        % (
            sql_literal(str(uuid.uuid5(QUESTION_NAMESPACE, 'topic|%s|%s|%s' % (subject, category, topic_slug)))),
            sql_literal(topic_slug),
            sql_literal(topic),
            sql_literal(subject),
            sql_literal(category),
        )
    )


def render_question(record, subject_name):
    """Render the three statements that store one question."""
    normalised = record['normalised']
    question_id = str(uuid.uuid5(QUESTION_NAMESPACE, normalised))
    question_hash = md5_of(record['stem'])
    label = LABELS[record['answer']]

    category = record['category']
    category_name = record['category_name']
    if category_name is None and category:
        category_name = category.replace('-', ' ').title()

    comment = '-- %s | %s | %s' % (record['subject'], category or 'uncategorised', record['difficulty'])

    values = (
        "values (\n"
        "    %s,\n" % sql_literal(question_id) +
        "    %s,\n" % subject_reference(record['subject'], subject_name) +
        "    %s,\n" % category_reference(record['subject'], subject_name, category, category_name) +
        "    %s,\n" % topic_reference(record['subject'], category, record['topic_slug']) +
        "    %s,\n" % sql_literal(record['stem']) +
        "    %s,\n" % sql_literal(record['explanation']) +
        "    %s,\n" % sql_literal(record['difficulty']) +
        "    %s,\n" % sql_literal(record['source']) +
        "    %s,\n" % (record['year'] if record['year'] is not None else 'null') +
        "    %s\n" % sql_literal(question_hash) +
        ")"
    )

    question_stmt = (
        "%s\n"
        "insert into public.questions (id, subject_id, category_id, topic_id, question_text,\n"
        "                              explanation, difficulty, source, year, question_hash)\n"
        "%s\n"
        "on conflict do nothing;\n" % (comment, values)
    )

    answer_stmt = (
        "insert into private.question_answers (question_id, correct_label)\n"
        "select id, %s from public.questions where question_hash = %s limit 1\n"
        "on conflict (question_id) do nothing;\n"
        % (sql_literal(label), sql_literal(question_hash))
    )

    option_values = ',\n'.join(
        "            (%s, %s)" % (sql_literal(LABELS[index]), sql_literal(text))
        for index, text in enumerate(record['options'])
    )
    options_stmt = (
        "insert into public.question_options (question_id, label, option_text)\n"
        "select q.id, v.label, v.option_text\n"
        "  from (select id from public.questions where question_hash = %s limit 1) q\n"
        "  cross join (values\n%s\n           ) as v(label, option_text)\n"
        "on conflict (question_id, label) do nothing;\n"
        % (sql_literal(question_hash), option_values)
    )

    return question_stmt + '\n' + answer_stmt + '\n' + options_stmt + '\n'


# --------------------------------------------------------------------------- #
# batching + writing
# --------------------------------------------------------------------------- #

def build_batches(records, subject_names):
    """Group the records into size limited batches (list of SQL chunks)."""
    batches = []
    current = []
    current_size = HEADER_OVERHEAD
    topics = OrderedDict()

    for record in records:
        subject_name = subject_names.get(record['subject'], record['subject'].replace('_', ' ').title())

        topic_block = ''
        if record['topic_slug'] and record['category']:
            key = (record['subject'], record['category'], record['topic_slug'])
            if key not in topics:
                topics[key] = render_topic_insert(
                    record['subject'], subject_name, record['category'],
                    record['category_name'], record['topic'], record['topic_slug'],
                )
            topic_block = topics[key]

        block = topic_block + render_question(record, subject_name)
        block_size = len(block.encode('utf-8'))

        if current and (len(current) >= MAX_QUESTIONS_PER_FILE
                        or current_size + block_size > MAX_BYTES_PER_FILE):
            batches.append((current, current_size))
            current = []
            current_size = HEADER_OVERHEAD

        current.append((record, block))
        current_size += block_size

    if current:
        batches.append((current, current_size))
    return batches


def render_file(index, total, entries):
    """Render one complete .sql file (BEGIN ... COMMIT)."""
    subjects = Counter(record['subject'] for record, _block in entries)
    mix = ', '.join('%s %d' % (slug, count) for slug, count in sorted(subjects.items()))

    header = (
        "-- =============================================================================\n"
        "-- questions_%03d.sql - generated by scripts/build_question_sql.py\n"
        "-- Batch %d of %d - %d questions\n"
        "-- Subjects: %s\n"
        "-- Question ids are uuid5(QUESTION_NAMESPACE, lower(normalised stem)),\n"
        "--   namespace = %s\n"
        "-- The answer key only ever lives in private.question_answers.\n"
        "-- Every insert is idempotent, so a batch can be applied more than once.\n"
        "-- Apply after supabase/migrations/004_reference_data.sql.\n"
        "-- =============================================================================\n"
        "\n"
        "begin;\n\n"
        % (index, index, total, len(entries), mix, QUESTION_NAMESPACE)
    )

    body = ''.join(block for _record, block in entries)
    footer = "\ncommit;\n"
    return header + body + footer


def write_files(output_dir, batches):
    """Write the batch files and remove stale ones from a previous run."""
    os.makedirs(output_dir, exist_ok=True)

    written = []
    for index, (entries, _size) in enumerate(batches, start=1):
        content = render_file(index, len(batches), entries)
        name = '%s%03d.sql' % (FILE_PREFIX, index)
        path = os.path.join(output_dir, name)
        with open(path, 'w', encoding='utf-8') as handle:
            handle.write(content)
        written.append((name, len(entries), os.path.getsize(path)))

    # Drop files of a previous run that are no longer produced.
    for name in sorted(os.listdir(output_dir)):
        if not OUTPUT_FILE_RE.match(name):
            continue
        suffix = int(name[len(FILE_PREFIX):-len('.sql')])
        if suffix > len(batches):
            os.remove(os.path.join(output_dir, name))
            print('removed stale file: %s' % name)

    return written


# --------------------------------------------------------------------------- #
# main
# --------------------------------------------------------------------------- #

def main(argv):
    questions_dir = argv[1] if len(argv) > 1 else DEFAULT_QUESTIONS_DIR
    output_dir = argv[2] if len(argv) > 2 else DEFAULT_OUTPUT_DIR

    warnings = Counter()
    catalog = parse_reference_catalog(REFERENCE_DATA_PATH)
    if catalog is None:
        print('warning: could not read %s - using slug lookups only' % REFERENCE_DATA_PATH)
    subject_names = {slug: entry['name'] for slug, entry in (catalog or {}).items()}

    records, files, file_errors = load_questions(questions_dir, catalog, warnings)
    total_read = len(records)
    records = deduplicate(records, warnings)

    batches = build_batches(records, subject_names)
    written = write_files(output_dir, batches)

    # ---- report ---------------------------------------------------------- #
    warning_total = sum(warnings.values())
    per_subject = Counter(record['subject'] for record in records)

    print('')
    print('questions dir : %s' % os.path.abspath(questions_dir))
    print('output dir    : %s' % os.path.abspath(output_dir))
    print('pack files    : %d read, %d skipped (unreadable)' % (len(files) - file_errors, file_errors))
    print('questions read: %d' % total_read)
    print('unique stems  : %d' % len(records))
    print('warnings      : %d' % warning_total)
    for reason, count in sorted(warnings.items()):
        print('    %-40s %d' % (reason, count))
    print('')
    print('files written : %d' % len(written))
    for name, count, size in written:
        print('    %-20s %4d questions  %8.1f KB' % (name, count, size / 1024.0))
    print('')
    print('questions written per subject:')
    for subject in sorted(per_subject):
        print('    %-20s %6d' % (subject, per_subject[subject]))
    print('')
    print('TOTAL QUESTIONS: %d' % sum(per_subject.values()))

    if warning_total:
        print('')
        print('%d warning(s) - malformed files/questions were skipped.' % warning_total)

    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv))
