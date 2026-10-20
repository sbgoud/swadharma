#!/usr/bin/env node
/**
 * fix-categories.mjs — normalises the subject/category pair of every
 * question in supabase/questions/.
 *
 * A question whose category belongs to a different subject (a World Heritage
 * question sitting in an environment pack, for instance) is moved to a pack of
 * that subject. Categories with a typo are matched against the known list.
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const PACKS = join(ROOT, 'supabase', 'questions');
const REFERENCE = join(ROOT, 'supabase', 'migrations', '004_reference_data.sql');

const reference = readFileSync(REFERENCE, 'utf8');
const valid = new Map(); // subject -> Set(categories)
for (const line of reference.split('\n')) {
  const match = line.match(/\('([a-z_]+)',\s*'([a-z0-9\-]+)'/);
  if (!match) continue;
  if (!valid.has(match[1])) valid.set(match[1], new Set());
  valid.get(match[1]).add(match[2]);
}
const owners = new Map(); // category -> [subjects]
for (const [subject, categories] of valid) {
  for (const category of categories) {
    if (!owners.has(category)) owners.set(category, []);
    owners.get(category).push(subject);
  }
}
const allCategories = [...owners.keys()];

const distance = (a, b) => {
  const m = a.length;
  const n = b.length;
  const d = Array.from({ length: m + 1 }, (_, i) => [i, ...Array(n).fill(0)]);
  for (let j = 0; j <= n; j += 1) d[0][j] = j;
  for (let i = 1; i <= m; i += 1) {
    for (let j = 1; j <= n; j += 1) {
      d[i][j] = Math.min(
        d[i - 1][j] + 1,
        d[i][j - 1] + 1,
        d[i - 1][j - 1] + (a[i - 1] === b[j - 1] ? 0 : 1)
      );
    }
  }
  return d[m][n];
};

const closest = (category, pool) => {
  let best = null;
  let bestDistance = Infinity;
  for (const candidate of pool) {
    const d = distance(category, candidate);
    if (d < bestDistance) {
      bestDistance = d;
      best = candidate;
    }
  }
  return bestDistance <= Math.max(2, Math.floor(category.length / 4)) ? best : null;
};

const subjectOf = (file) => {
  const stem = file.replace(/\.json$/, '');
  const subjects = [...valid.keys()].filter((s) => stem.startsWith(s)).sort((a, b) => b.length - a.length);
  return subjects[0] || stem;
};

const moved = [];
const renamed = [];
const extra = new Map(); // subject -> questions to append

for (const file of readdirSync(PACKS).filter((f) => f.endsWith('.json'))) {
  const subject = subjectOf(file);
  const questions = JSON.parse(readFileSync(join(PACKS, file), 'utf8'));
  const kept = [];

  for (const question of questions) {
    let category = question.category;
    let target = subject;

    if (!valid.get(subject)?.has(category)) {
      const candidateSubjects = owners.get(category);
      if (candidateSubjects?.length) {
        target = candidateSubjects[0];
        category = category;
        moved.push(`${file}: ${subject}/${question.category} -> ${target}/${category}`);
      } else {
        const local = closest(category, [...(valid.get(subject) || [])]);
        if (local) {
          category = local;
          renamed.push(`${file}: ${question.category} -> ${local}`);
        } else {
          const foreign = closest(category, allCategories);
          if (foreign) {
            target = owners.get(foreign)[0];
            category = foreign;
            moved.push(`${file}: ${subject}/${question.category} -> ${target}/${category}`);
          } else {
            category = [...(valid.get(subject) || [])][0];
            renamed.push(`${file}: ${question.category} -> ${category} (default)`);
          }
        }
      }
    }

    question.category = category;
    if (target === subject) {
      kept.push(question);
    } else {
      if (!extra.has(target)) extra.set(target, []);
      extra.get(target).push(question);
    }
  }

  if (kept.length !== questions.length) {
    writeFileSync(join(PACKS, file), `${JSON.stringify(kept, null, 2)}\n`, 'utf8');
  }
}

for (const [subject, questions] of extra) {
  const target = join(PACKS, `${subject}_moved.json`);
  let merged = questions;
  try {
    merged = [...JSON.parse(readFileSync(target, 'utf8')), ...questions];
  } catch {
    merged = questions;
  }
  writeFileSync(target, `${JSON.stringify(merged, null, 2)}\n`, 'utf8');
}

console.log(`${moved.length} question(s) moved to the right subject`);
for (const line of moved.slice(0, 10)) console.log(`  - ${line}`);
console.log(`${renamed.length} category typo(s) corrected`);
for (const line of renamed.slice(0, 10)) console.log(`  - ${line}`);
