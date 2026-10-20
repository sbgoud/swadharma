#!/usr/bin/env node
/**
 * repair-stems.mjs — rewrites the question stems that were truncated by a
 * repeated phrase (for example "The 'Pashmina' and the 'the 'the 'the ...").
 *
 * The topic is taken from the first quoted term and the stem becomes a neutral
 * "With reference to the <topic>, which of the following is correct?" — which
 * keeps the options meaningful whatever their length.
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const PACKS = join(ROOT, 'supabase', 'questions');

const BROKEN = /('the\s*){2,}/i;
const isBroken = (stem) => BROKEN.test(stem) || /\band the 'the\b/i.test(stem);

const topicOf = (stem) => {
  const quoted = stem.match(/'([^']+)'/);
  if (quoted) return quoted[1].trim();
  const head = stem.split(/\band the\b/i)[0].replace(/[?:]\s*$/, '').trim();
  return head.length > 3 && head.length < 70 ? head : 'the subject';
};

const capitalise = (text) => text.charAt(0).toUpperCase() + text.slice(1);

let repaired = 0;
let files = 0;

for (const file of readdirSync(PACKS).filter((f) => f.endsWith('.json'))) {
  const path = join(PACKS, file);
  const questions = JSON.parse(readFileSync(path, 'utf8'));
  let changed = false;

  for (const question of questions) {
    if (!isBroken(question.q)) continue;
    const topic = topicOf(question.q);
    question.q = `With reference to the ${topic}, which of the following is correct?`;
    repaired += 1;
    changed = true;
  }

  if (changed) {
    writeFileSync(path, `${JSON.stringify(questions, null, 2)}\n`, 'utf8');
    files += 1;
  }
}

console.log(`${repaired} broken stem(s) rewritten across ${files} file(s)`);
