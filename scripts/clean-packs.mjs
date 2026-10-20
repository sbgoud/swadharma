#!/usr/bin/env node
/**
 * clean-packs.mjs
 *
 * Removes exact and near duplicate questions from the JSON packs in
 * supabase/questions/. The first occurrence is kept, later duplicates are
 * dropped and the files are rewritten in place.
 *
 *   node scripts/clean-packs.mjs            # rewrite the packs
 *   node scripts/clean-packs.mjs --check    # only report
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const DIR = join(ROOT, 'supabase', 'questions');
const CHECK_ONLY = process.argv.includes('--check');

const STOP_WORDS = new Set([
  'the', 'and', 'for', 'that', 'this', 'with', 'which', 'from', 'were', 'was',
  'are', 'has', 'have', 'not', 'its', 'his', 'her', 'their', 'them', 'then',
  'than', 'there', 'these', 'those', 'into', 'been', 'being', 'will', 'would',
  'what', 'when', 'where', 'whom', 'why', 'how', 'all', 'any', 'can', 'could',
  'does', 'did', 'such', 'may', 'might', 'must', 'shall', 'should', 'also',
]);

const normalize = (value) => String(value).replace(/\s+/g, ' ').trim();

const tokenSet = (value) =>
  new Set(
    String(value)
      .toLowerCase()
      .replace(/[^a-z0-9\s]/g, ' ')
      .split(/\s+/)
      .filter((t) => (t.length > 2 && !STOP_WORDS.has(t)) || /^\d+$/.test(t))
  );

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

const jaccard = (a, b) => {
  if (a.size === 0 || b.size === 0) return 0;
  let shared = 0;
  for (const t of a) if (b.has(t)) shared += 1;
  return shared / (a.size + b.size - shared);
};

/* Two options that say the same thing make a question unanswerable. Only
 * wordy options are compared — short or formula-like options legitimately
 * look alike ("1/2 mr^2" vs "1/4 mr^2"). */
const ambiguousOptions = (question) => {
  const options = question.options || [];
  const tokens = options.map((option) => tokenSet(option));
  for (let i = 0; i < options.length; i += 1) {
    if (tokens[i].size < 4) continue;
    for (let j = i + 1; j < options.length; j += 1) {
      if (tokens[j].size < 4) continue;
      if (jaccard(tokens[i], tokens[j]) >= 0.85) return true;
    }
  }
  return false;
};


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

const files = readdirSync(DIR)
  .filter((f) => f.endsWith('.json'))
  .sort();

const globalStems = new Map();
let removed = 0;

/* ---------------------------------------------------------------------------
 * Answer key balancing
 *
 * Left to itself the writers place the correct option in the first position
 * most of the time. The option list of every question is therefore rotated
 * (a cyclic shift, which keeps the relative order of the options) so that the
 * correct answer is spread evenly over A, B, C and D. The pattern is shuffled
 * with a fixed seed so it is not simply "every fourth answer is A".
 * ------------------------------------------------------------------------ */
const mulberry32 = (seed) => () => {
  seed |= 0;
  seed = (seed + 0x6d2b79f5) | 0;
  let t = Math.imul(seed ^ (seed >>> 15), 1 | seed);
  t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
  return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
};

const shuffle = (array, random) => {
  const copy = array.slice();
  for (let i = copy.length - 1; i > 0; i -= 1) {
    const j = Math.floor(random() * (i + 1));
    [copy[i], copy[j]] = [copy[j], copy[i]];
  }
  return copy;
};

const balanceAnswerKey = (subjectQuestions) => {
  const random = mulberry32(
    [...subjectQuestions[0].q].reduce((sum, char) => sum + char.charCodeAt(0), 7)
  );
  let deck = [];
  const take = () => {
    if (!deck.length) deck = shuffle([0, 1, 2, 3], random);
    return deck.pop();
  };
  for (const question of subjectQuestions) {
    const target = take();
    const shift = (target - question.answer + 4) % 4;
    if (shift === 0) continue;
    const options = question.options.slice();
    question.options = options.map((_, index) => options[(index - shift + 4) % 4]);
    question.answer = target;
  }
};

for (const file of files) {
  const path = join(DIR, file);
  const questions = JSON.parse(readFileSync(path, 'utf8'));
  const kept = [];
  const tokens = [];

  for (const question of questions) {
    const stem = normalize(question.q || '').toLowerCase();
    if (ambiguousOptions(question)) {
      removed += 1;
      console.log(`drop ambiguous options in ${file}: "${stem.slice(0, 90)}"`);
      continue;
    }
    if (globalStems.has(stem)) {
      removed += 1;
      console.log(`drop exact duplicate in ${file}: "${stem.slice(0, 90)}"`);
      continue;
    }
    const token = tokenSet(question.q || '');
    let duplicate = false;
    for (let i = 0; i < kept.length; i += 1) {
      if (!comparable(kept[i].q, question.q)) continue;
      if (jaccard(tokens[i], token) >= 0.82) {
        duplicate = true;
        console.log(
          `drop near duplicate in ${file}: "${stem.slice(0, 80)}" ~ "${normalize(kept[i].q).slice(0, 80)}"`
        );
        break;
      }
    }
    if (duplicate) {
      removed += 1;
      continue;
    }
    globalStems.set(stem, file);
    kept.push(question);
    tokens.push(token);
  }

  if (!CHECK_ONLY && kept.length !== questions.length) {
    writeFileSync(path, `${JSON.stringify(kept, null, 2)}\n`, 'utf8');
  }
  console.log(`${file}: ${questions.length} -> ${kept.length}`);
}

console.log(`\n${removed} duplicate question(s) ${CHECK_ONLY ? 'found' : 'removed'}`);

/* ---------------------------------------------------------------------------
 * Balance the answer key of every subject
 * ------------------------------------------------------------------------ */
const bySubject = new Map();
for (const file of files) {
  const path = join(DIR, file);
  const questions = JSON.parse(readFileSync(path, 'utf8'));
  const subject = subjectOf(file);
  if (!bySubject.has(subject)) bySubject.set(subject, { questions: [], files: [] });
  const entry = bySubject.get(subject);
  entry.questions.push(...questions);
  entry.files.push({ file, path, questions });
}

for (const [subject, entry] of bySubject.entries()) {
  balanceAnswerKey(entry.questions);
  const distribution = [0, 0, 0, 0];
  for (const question of entry.questions) distribution[question.answer] += 1;
  console.log(`${subject}: answer distribution ${distribution.join(' / ')}`);
}

/* write the rotated questions back to their files */
if (!CHECK_ONLY) {
  for (const [, entry] of bySubject.entries()) {
    for (const { file, path, questions } of entry.files) {
      const rewritten = entry.questions.splice(0, questions.length);
      writeFileSync(path, `${JSON.stringify(rewritten, null, 2)}\n`, 'utf8');
    }
  }
}
