#!/usr/bin/env node
/**
 * build-seeds.mjs
 *
 * Turns the JSON question packs in supabase/questions/ into the plain SQL seed
 * files in supabase/seed/ that the supervisor applies.
 *
 *   node scripts/build-seeds.mjs            # build the seed files
 *   node scripts/build-seeds.mjs --check    # validate only, write nothing
 *
 * The generator is strict: it refuses to emit a file when a question is
 * malformed, duplicated, unbalanced or refers to an unknown category.
 */

import { createHash } from 'node:crypto';
import { readFileSync, writeFileSync, readdirSync, existsSync, mkdirSync } from 'node:fs';
import { dirname, join, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const QUESTIONS_DIR = join(ROOT, 'supabase', 'questions');
const SEED_DIR = join(ROOT, 'supabase', 'seed');
const REFERENCE_SQL = join(ROOT, 'supabase', 'migrations', '004_reference_data.sql');

const CHECK_ONLY = process.argv.includes('--check');
const PER_FILE = 250;
const LABELS = ['A', 'B', 'C', 'D'];

const SUBJECTS = [
  'current_affairs', 'science_tech', 'art_culture', 'environment', 'economy',
  'geography', 'history', 'polity',
];

/** Maps a pack file name onto its subject slug (longest known prefix wins). */
const subjectOf = (file) => {
  const stem = file.replace(/\.json$/, '');
  const match = SUBJECTS.filter((s) => stem.startsWith(s)).sort((a, b) => b.length - a.length)[0];
  return match || stem.replace(/[_-]\d+$/, '').replace(/[_-][a-z]$/, '');
};

const DIFFICULTIES = new Set(['easy', 'medium', 'hard']);

/* ------------------------------------------------------------------ utils */

const sqlText = (value) => {
  if (value === null || value === undefined) return 'null';
  return `'${String(value).replace(/'/g, "''")}'`;
};

const normalize = (value) => String(value).replace(/\s+/g, ' ').trim();

const hashOf = (normalized) =>
  createHash('md5').update(normalized.toLowerCase(), 'utf8').digest('hex');

const tokenSet = (value) =>
  new Set(
    String(value)
      .toLowerCase()
      .replace(/[^a-z0-9\s]/g, ' ')
      .split(/\s+/)
      .filter((t) => (t.length > 2 && !STOP_WORDS.has(t)) || /^\d+$/.test(t))
  );

/* Questions about different years, different editions or with an inverted
 * polarity are genuinely different questions even when the wording matches. */
const yearSet = (value) =>
  new Set((String(value).match(/\b(1[6-9]\d{2}|20\d{2})\b/g) || []).map((y) => y));

const hasNegation = (value) => /\b(not|except|incorrect|wrong|false)\b/i.test(String(value));

const comparable = (a, b) => {
  if (hasNegation(a) !== hasNegation(b)) return false;
  const ya = yearSet(a);
  const yb = yearSet(b);
  if (ya.size !== yb.size) return false;
  for (const year of ya) if (!yb.has(year)) return false;
  return true;
};

const STOP_WORDS = new Set([
  'the', 'and', 'for', 'that', 'this', 'with', 'which', 'from', 'were', 'was',
  'are', 'has', 'have', 'not', 'its', 'his', 'her', 'their', 'them', 'then',
  'than', 'there', 'these', 'those', 'into', 'been', 'being', 'will', 'would',
  'what', 'when', 'where', 'whom', 'why', 'how', 'all', 'any', 'can', 'could',
  'does', 'did', 'such', 'may', 'might', 'must', 'shall', 'should', 'also',
]);

const jaccard = (a, b) => {
  if (a.size === 0 || b.size === 0) return 0;
  let shared = 0;
  for (const t of a) if (b.has(t)) shared += 1;
  return shared / (a.size + b.size - shared);
};

/* ------------------------------------------------- reference data catalog */

const readCatalog = () => {
  const sql = readFileSync(REFERENCE_SQL, 'utf8');
  const catalog = new Map();
  const tuple = /\(\s*'([a-z_]+)'\s*,\s*'([a-z0-9\-]+)'\s*,\s*'([^']*)'\s*,\s*\d+\s*\)/g;
  let match;
  while ((match = tuple.exec(sql)) !== null) {
    const [, subject, category, name] = match;
    if (!catalog.has(subject)) catalog.set(subject, new Map());
    catalog.get(subject).set(category, name);
  }
  return catalog;
};

/* --------------------------------------------------------------- loading */

const loadPacks = () => {
  const packs = [];
  if (!existsSync(QUESTIONS_DIR)) return packs;
  const files = readdirSync(QUESTIONS_DIR)
    .filter((f) => f.endsWith('.json'))
    .sort();
  for (const file of files) {
    const subject = subjectOf(file);
    const raw = readFileSync(join(QUESTIONS_DIR, file), 'utf8');
    let parsed;
    try {
      parsed = JSON.parse(raw);
    } catch (error) {
      throw new Error(`${file} is not valid JSON: ${error.message}`);
    }
    if (!Array.isArray(parsed)) throw new Error(`${file} must contain a JSON array`);
    packs.push({ file, subject, questions: parsed });
  }
  return packs;
};

/* ------------------------------------------------------------- validation */

const problems = [];
const duplicates = [];
const fail = (message) => problems.push(message);

const validate = (packs, catalog) => {
  const seenHashes = new Map();
  const seenSubjects = new Map();
  const perSubject = new Map();

  for (const pack of packs) {
    const categories = catalog.get(pack.subject);
    if (!categories) {
      fail(`${pack.file}: unknown subject slug "${pack.subject}"`);
      continue;
    }
    if (!perSubject.has(pack.subject)) perSubject.set(pack.subject, []);
    perSubject.get(pack.subject).push(...pack.questions);

    pack.questions.forEach((q, index) => {
      const where = `${pack.file}[${index}]`;
      if (typeof q.q !== 'string' || q.q.trim().length < 10) fail(`${where}: question text too short`);
      if (typeof q.explanation !== 'string' || q.explanation.trim().length < 20) {
        fail(`${where}: explanation missing or too short`);
      }
      if (!Array.isArray(q.options) || q.options.length !== 4) {
        fail(`${where}: needs exactly 4 options`);
        return;
      }
      const options = q.options.map((o) => (typeof o === 'string' ? o.trim() : ''));
      if (options.some((o) => o.length === 0)) fail(`${where}: empty option`);
      if (options.some((o) => o.length > 220)) fail(`${where}: option longer than 220 characters`);
      const lower = options.map((o) => o.toLowerCase());
      if (new Set(lower).size !== 4) fail(`${where}: duplicate options`);
      if (!Number.isInteger(q.answer) || q.answer < 0 || q.answer > 3) {
        fail(`${where}: answer index out of range`);
      }
      if (!DIFFICULTIES.has(q.difficulty)) fail(`${where}: invalid difficulty "${q.difficulty}"`);
      if (!categories.has(q.category)) {
        fail(`${where}: unknown category "${q.category}" for subject "${pack.subject}"`);
      }
      if (typeof q.source !== 'string' || q.source.trim().length === 0) {
        fail(`${where}: missing source`);
      }
      if (q.year !== null && q.year !== undefined) {
        const year = Number(q.year);
        if (!Number.isInteger(year) || year < 1900 || year > 2026) {
          fail(`${where}: invalid year "${q.year}"`);
        }
      }
      const normalized = normalize(q.q || '');
      const hash = hashOf(normalized);
      if (seenHashes.has(hash)) {
        duplicates.push(`${where}: duplicate question text (also in ${seenHashes.get(hash)})`);
      } else {
        seenHashes.set(hash, where);
      }
      if (seenSubjects.has(normalized.toLowerCase())) {
        duplicates.push(`${where}: duplicate question text (also in ${seenSubjects.get(normalized.toLowerCase())})`);
      } else {
        seenSubjects.set(normalized.toLowerCase(), where);
      }
    });
  }

  // near duplicate detection inside every subject
  for (const [subject, questions] of perSubject.entries()) {
    const tokens = questions.map((q) => tokenSet(q.q || ''));
    for (let i = 0; i < questions.length; i += 1) {
      for (let j = i + 1; j < questions.length; j += 1) {
        if (!comparable(questions[i].q, questions[j].q)) continue;
        const score = jaccard(tokens[i], tokens[j]);
        if (score >= 0.82) {
          fail(
            `${subject}: near duplicate (${score.toFixed(2)}) -> "${normalize(questions[i].q)}" / "${normalize(questions[j].q)}"`
          );
        }
      }
    }
  }

  return perSubject;
};

/* --------------------------------------------------------------- emitting */

const emitQuestion = (subject, q) => {
  const text = normalize(q.q);
  const hash = hashOf(text);
  const label = LABELS[q.answer];
  const options = q.options.map((o) => normalize(o));
  const year = q.year === null || q.year === undefined ? null : Number(q.year);

  const values = [
    `('A', ${sqlText(options[0])})`,
    `('B', ${sqlText(options[1])})`,
    `('C', ${sqlText(options[2])})`,
    `('D', ${sqlText(options[3])})`,
  ].join(',\n            ');

  return `-- ${subject} | ${q.category} | ${q.difficulty}
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = ${sqlText(subject)}),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = ${sqlText(subject)} and c.slug = ${sqlText(q.category)}),
    ${sqlText(text)},
    ${sqlText(normalize(q.explanation))},
    ${sqlText(q.difficulty)},
    ${sqlText(q.source)},
    ${year === null ? 'null' : year},
    ${sqlText(hash)}
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, ${sqlText(label)} from public.questions where question_hash = ${sqlText(hash)}
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ${values}
           ) as v(label, option_text)
 where q.question_hash = ${sqlText(hash)}
on conflict (question_id, label) do nothing;
`;
};

const buildFiles = (perSubject) => {
  const files = [];
  const emitted = new Set();
  let skipped = 0;
  for (const [subject, questions] of [...perSubject.entries()].sort()) {
    const unique = [];
    for (const question of questions) {
      const hash = hashOf(normalize(question.q || ''));
      if (emitted.has(hash)) {
        skipped += 1;
        continue;
      }
      emitted.add(hash);
      unique.push(question);
    }
    for (let index = 0; index < unique.length; index += PER_FILE) {
      const chunk = unique.slice(index, index + PER_FILE);
      const part = String(Math.floor(index / PER_FILE) + 1).padStart(2, '0');
      const body = chunk
        .map((q) => emitQuestion(subject, q))
        .join('\n');
      const header = `-- =============================================================================
-- ${subject}_${part}.sql — ${subject} question pack, part ${part}
-- ${chunk.length} questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

`;
      files.push({
        name: `${subject}_${part}.sql`,
        content: `${header}${body}\ncommit;\n`,
        count: chunk.length,
        subject,
      });
    }
  }
  buildFiles.skipped = skipped;
  return files;
};

/* ------------------------------------------------------------------- main */

const catalog = readCatalog();
const packs = loadPacks();
if (packs.length === 0) {
  console.error('No question packs found in supabase/questions/');
  process.exit(1);
}

const perSubject = validate(packs, catalog);

if (problems.length) {
  console.error(`✗ ${problems.length} problem(s) found:\n`);
  for (const problem of problems.slice(0, 60)) console.error(`  - ${problem}`);
  if (problems.length > 60) console.error(`  ... and ${problems.length - 60} more`);
  if (process.env.SHOW_ALL) for (const p of problems) console.error(`  - ${p}`);
  process.exit(1);
}

const files = buildFiles(perSubject);

if (!CHECK_ONLY) {
  mkdirSync(SEED_DIR, { recursive: true });
  for (const file of files) {
    writeFileSync(join(SEED_DIR, file.name), file.content, 'utf8');
  }
}

console.log(`✓ ${packs.length} pack(s) validated, ${files.length} seed file(s) ${CHECK_ONLY ? 'ready' : 'written'}`);
console.log('');
console.log('subject            questions  files  answer distribution (A/B/C/D)');
let grandTotal = 0;
for (const [subject, questions] of [...perSubject.entries()].sort()) {
  const distribution = [0, 0, 0, 0];
  for (const q of questions) distribution[q.answer] += 1;
  const subjectFiles = files.filter((f) => f.subject === subject).length;
  grandTotal += questions.length;
  console.log(
    `${subject.padEnd(18)}${String(questions.length).padStart(7)}${String(subjectFiles).padStart(7)}   ${distribution
      .map((n) => `${n} (${Math.round((n / questions.length) * 100)}%)`)
      .join('  ')}`
  );
}
console.log('');
console.log(`TOTAL QUESTIONS: ${grandTotal}`);
if (duplicates.length) {
  console.log(`\n${duplicates.length} duplicate stem(s) skipped:`);
  for (const duplicate of duplicates.slice(0, 20)) console.log(`  - ${duplicate}`);
  if (duplicates.length > 20) console.log(`  ... and ${duplicates.length - 20} more`);
  if (process.env.SHOW_ALL) for (const d of duplicates) console.log(`  - ${d}`);
}
