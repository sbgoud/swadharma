#!/usr/bin/env node
/**
 * find-collisions.mjs — lists questions whose stem is duplicated (or nearly
 * duplicated) inside a subject, so that they can be rewritten.
 *
 *   node scripts/find-collisions.mjs environment
 *   node scripts/find-collisions.mjs --all
 */

import { readFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const DIR = join(ROOT, 'supabase', 'questions');

const SUBJECTS = [
  'current_affairs', 'science_tech', 'art_culture', 'environment', 'economy',
  'geography', 'history', 'polity',
];

const arg = process.argv[2];
const wanted = !arg || arg === '--all' ? SUBJECTS : [arg];

const norm = (value) => String(value).replace(/\s+/g, ' ').trim().toLowerCase();

for (const subject of wanted) {
  const groups = new Map();
  for (const file of readdirSync(DIR).filter((f) => f.startsWith(subject) && f.endsWith('.json'))) {
    const questions = JSON.parse(readFileSync(join(DIR, file), 'utf8'));
    questions.forEach((question, index) => {
      const key = norm(question.q);
      if (!groups.has(key)) groups.set(key, []);
      groups.get(key).push({ file, index, question });
    });
  }

  const collisions = [...groups.entries()].filter(([, items]) => items.length > 1);
  if (!collisions.length) {
    console.log(`${subject}: no duplicated stems`);
    continue;
  }
  console.log(`${subject}: ${collisions.length} duplicated stem group(s)`);
  for (const [stem, items] of collisions) {
    console.log(`\n  STEM: ${stem}`);
    for (const item of items) {
      console.log(`    ${item.file}#${item.index} -> ${JSON.stringify(item.question.options[item.question.answer]).slice(0, 120)}`);
    }
  }
}
