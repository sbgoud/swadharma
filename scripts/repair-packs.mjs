#!/usr/bin/env node
/**
 * repair-packs.mjs — removes malformed or truncated entries from the question
 * packs. A truncated write (the file ends in the middle of a question) leaves
 * an entry without four options or without an explanation; those entries are
 * dropped and the file is rewritten.
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const DIR = join(ROOT, 'supabase', 'questions');
const DIFFICULTIES = new Set(['easy', 'medium', 'hard']);

let removed = 0;
let files = 0;

for (const file of readdirSync(DIR).filter((f) => f.endsWith('.json'))) {
  const path = join(DIR, file);
  let parsed;
  try {
    parsed = JSON.parse(readFileSync(path, 'utf8'));
  } catch {
    console.log(`! ${file} is not valid JSON — skipped`);
    continue;
  }
  if (!Array.isArray(parsed)) continue;

  const kept = parsed.filter((q) => {
    const ok =
      q &&
      typeof q.q === 'string' &&
      q.q.trim().length >= 10 &&
      Array.isArray(q.options) &&
      q.options.length === 4 &&
      q.options.every((o) => typeof o === 'string' && o.trim().length > 0) &&
      Number.isInteger(q.answer) &&
      q.answer >= 0 &&
      q.answer <= 3 &&
      DIFFICULTIES.has(q.difficulty) &&
      typeof q.explanation === 'string' &&
      q.explanation.trim().length >= 15 &&
      typeof q.source === 'string' &&
      q.source.trim().length > 0 &&
      typeof q.category === 'string' &&
      q.category.trim().length > 0;
    if (!ok) {
      console.log(`  - dropped a broken entry in ${file}: ${String(q && q.q).slice(0, 70)}`);
      removed += 1;
    }
    return ok;
  });

  if (kept.length !== parsed.length) {
    writeFileSync(path, `${JSON.stringify(kept, null, 2)}\n`, 'utf8');
    files += 1;
  }
}

console.log(`\n${removed} broken entr(y/ies) removed from ${files} file(s)`);
