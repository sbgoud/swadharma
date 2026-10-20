#!/usr/bin/env node
/**
 * validate-packs.mjs — validates every question pack in supabase/questions/.
 * Prints a summary per subject and lists the malformed entries.
 */

import { readFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const DIR = join(ROOT, 'supabase', 'questions');
const DIFFICULTIES = new Set(['easy', 'medium', 'hard']);
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

const files = readdirSync(DIR)
  .filter((f) => f.endsWith('.json'))
  .sort();

const perSubject = new Map();
const problems = [];
let total = 0;

for (const file of files) {
  const path = join(DIR, file);
  let parsed;
  try {
    parsed = JSON.parse(readFileSync(path, 'utf8'));
  } catch (error) {
    problems.push(`${file}: invalid JSON (${error.message})`);
    continue;
  }
  if (!Array.isArray(parsed)) {
    problems.push(`${file}: not a JSON array`);
    continue;
  }
  const subject = subjectOf(file);
  if (!perSubject.has(subject)) perSubject.set(subject, []);
  perSubject.get(subject).push(...parsed);

  parsed.forEach((q, index) => {
    const where = `${file}[${index}]`;
    const errors = [];
    if (typeof q.q !== 'string' || q.q.trim().length < 10) errors.push('question text');
    if (!Array.isArray(q.options) || q.options.length !== 4) errors.push('options');
    else {
      const seen = new Set();
      for (const option of q.options) {
        if (typeof option !== 'string' || option.trim().length === 0) errors.push('empty option');
        const key = option.trim().toLowerCase();
        if (seen.has(key)) errors.push('duplicate option');
        seen.add(key);
      }
    }
    if (!Number.isInteger(q.answer) || q.answer < 0 || q.answer > 3) errors.push('answer index');
    if (!DIFFICULTIES.has(q.difficulty)) errors.push('difficulty');
    if (typeof q.explanation !== 'string' || q.explanation.trim().length < 20) errors.push('explanation');
    if (typeof q.source !== 'string' || !q.source.trim()) errors.push('source');
    if (typeof q.category !== 'string' || !q.category.trim()) errors.push('category');
    if (q.year !== null && q.year !== undefined && !Number.isInteger(q.year)) errors.push('year');
    if (errors.length) problems.push(`${where}: ${errors.join(', ')}`);
    total += 1;
  });
}

console.log('subject            questions  answer distribution (A/B/C/D)');
for (const [subject, questions] of [...perSubject.entries()].sort()) {
  const distribution = [0, 0, 0, 0];
  for (const q of questions) if (Number.isInteger(q.answer)) distribution[q.answer] += 1;
  const percent = distribution.map((n) => `${n} (${Math.round((n / questions.length) * 100)}%)`);
  console.log(`${subject.padEnd(18)}${String(questions.length).padStart(9)}   ${percent.join('  ')}`);
  if (questions.length < 1000) console.log(`  ^ needs ${1000 - questions.length} more to reach 1000`);
}
console.log(`\nTOTAL: ${total} questions in ${files.length} pack files`);
if (problems.length) {
  console.log(`\n${problems.length} malformed entr${problems.length === 1 ? 'y' : 'ies'}:`);
  for (const problem of problems.slice(0, 40)) console.log(`  - ${problem}`);
  if (problems.length > 40) console.log(`  ... and ${problems.length - 40} more`);
  process.exit(1);
}
console.log('All packs are well formed');
