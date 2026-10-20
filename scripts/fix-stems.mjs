#!/usr/bin/env node
/**
 * fix-stems.mjs — repairs the stems whose subject phrase was extracted badly
 * ("regarding the the ECTA", "regarding the India and the").
 *
 * The subject is rebuilt from the correct option of the question: the part in
 * front of the first verb, or the first words of the complement. Trailing
 * articles and dangling verbs are removed and the doubled article ("the the")
 * is collapsed.
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const PACKS = process.env.PACKS_DIR
  ? resolve(process.env.PACKS_DIR)
  : join(ROOT, 'supabase', 'questions');

const BAD = /the the\b|\bthe is correct\b|\band the is correct\b|\bthe\s*\?\s*$/;

const STOP = new Set([
  'of', 'in', 'at', 'on', 'for', 'to', 'by', 'with', 'from', 'and', 'or',
  'that', 'which', 'as', 'into', 'under', 'over', 'across', 'during', 'is',
  'are', 'was', 'were', 'has', 'have', 'had', 'the', 'a', 'an', 'it', 'its',
  'their', 'this', 'these', 'those', 'they', 'he', 'she', 'there', 'and',
]);

const VERBS = [
  'is', 'are', 'was', 'were', 'has', 'have', 'had', 'became', 'remains',
  'started', 'ended', 'began', 'crossed', 'reached', 'rose', 'fell', 'grew',
  'mandated', 'recommended', 'reported', 'adopted', 'launched', 'introduced',
  'implemented', 'notified', 'published', 'held', 'conducted', 'approved',
  'decided', 'announced', 'declared', 'signed', 'created', 'developed',
  'promoted', 'supported', 'caused', 'requires', 'provides', 'allows', 'aims',
  'takes', 'took', 'makes', 'made', 'gives', 'gave', 'sees', 'saw', 'comes',
  'came', 'stands', 'used', 'called', 'named', 'known', 'covers', 'applies',
  'appears', 'ranked', 'ranks', 'earned', 'spent', 'invested', 'opened',
  'closed', 'shifted', 'moved', 'split', 'merged', 'acquired', 'devoted',
  'dedicated', 'agreed', 'observed', 'recorded', 'surpassed', 'exceeded',
  'upheld', 'struck', 'dealt', 'banned', 'listed', 'designated', 'classified',
  'annexed', 'ceded', 'transferred', 'drew', 'sent', 'kept', 'set', 'went',
  'hosted', 'staged', 'marked', 'suggested', 'proposed', 'advised',
  'requested', 'permitted', 'attributed', 'credited', 'recognised',
  'recognized', 'quoted', 'argued', 'stated', 'noted', 'added', 'sought',
  'refers', 'denotes', 'includes', 'include', 'deals', 'concerns', 'relates',
  'linked', 'associated', 'belongs', 'based', 'resulted', 'leads', 'forms',
  'flows', 'flows', 'passes', 'rises', 'rises', 'meets', 'joins', 'falls',
  'drains', 'empties', 'opens', 'closes', 'empties', 'borders', 'borders',
];

const FORMS = [
  (key) => `Which of the following statements regarding the ${key} is correct?`,
  (key) => `Which of the following is correct in the case of the ${key}?`,
  (key) => `In the context of the ${key}, which of the following is correct?`,
  (key) => `Which of the following statements is/are correct in relation to the ${key}?`,
  (key) => `Consider the following statements. Which of them is correct with regard to the ${key}?`,
];

const trim = (text) => String(text)
  .replace(/\s+/g, ' ')
  .replace(/[.,;:]\s*$/, '')
  .trim();

const cleanKey = (text) => {
  let key = trim(text);
  key = key.replace(/^the\s+/i, '').replace(/\s+the$/i, '');
  key = key.replace(/^and\s+/i, '').replace(/\s+and$/i, '');
  key = key.replace(/^of\s+/i, '').replace(/\s+of$/i, '');
  const words = key.split(' ').filter(Boolean);
  while (words.length && STOP.has(words[words.length - 1].toLowerCase())) words.pop();
  return words.join(' ');
};

const subjectOf = (option) => {
  const lower = option.toLowerCase();
  for (const verb of VERBS) {
    const index = lower.indexOf(` ${verb} `);
    if (index === -1) continue;
    return option.slice(0, index).trim();
  }
  return '';
};

const subjectKey = (option) => {
  const subject = subjectOf(option);
  if (subject && subject.split(' ').length >= 2) return cleanKey(subject);
  const words = option.split(/\s+/).filter(Boolean);
  const head = [];
  for (const word of words) {
    const bare = word.replace(/[^A-Za-z]/g, '').toLowerCase();
    if (STOP.has(bare)) {
      if (head.length >= 2) break;
      continue;
    }
    head.push(word);
    if (head.length >= 6) break;
  }
  return cleanKey(head.join(' '));
};

let fixed = 0;
const unresolved = [];

for (const file of readdirSync(PACKS).filter((f) => f.endsWith('.json'))) {
  const path = join(PACKS, file);
  const questions = JSON.parse(readFileSync(path, 'utf8'));
  let changed = false;

  for (const question of questions) {
    const stem = question.q;
    if (!BAD.test(stem)) continue;

    const correct = question.options[question.answer];
    const key = subjectKey(correct);
    if (!key || key.split(' ').length < 2) {
      unresolved.push(`${file} :: ${stem}`);
      continue;
    }

    const index = Math.abs(stem.length + key.length) % FORMS.length;
    let candidate = FORMS[index](key);
    if (candidate.length < 20 || candidate.length > 220) {
      candidate = FORMS[0](key);
    }
    question.q = candidate;
    fixed += 1;
    changed = true;
  }

  if (changed) writeFileSync(path, `${JSON.stringify(questions, null, 2)}\n`, 'utf8');
}

console.log(`${fixed} stem(s) repaired, ${unresolved.length} left for manual review`);
for (const item of unresolved.slice(0, 20)) console.log(`  ! ${item}`);
