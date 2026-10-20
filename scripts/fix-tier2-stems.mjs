#!/usr/bin/env node
/**
 * fix-tier2-stems.mjs — repairs the stems of the "regarding the ..." family
 * whose subject phrase was extracted badly ("regarding the The Kalighat
 * temple", "regarding the The National Monetisation Pipeline and").
 *
 * The duplicated article is collapsed and a key phrase that ends in a
 * preposition, a pronoun or a conjunction is trimmed; when nothing usable is
 * left, the key is rebuilt from the correct option of the question.
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const PACKS = process.env.PACKS_DIR
  ? resolve(process.env.PACKS_DIR)
  : join(ROOT, 'supabase', 'questions');

const FORMS = [
  { pattern: /^Which of the following statements regarding the (.+) is correct\?$/, build: (key) => `Which of the following statements regarding the ${key} is correct?` },
  { pattern: /^Which of the following is correct in the case of the (.+)\?$/, build: (key) => `Which of the following is correct in the case of the ${key}?` },
  { pattern: /^In the context of the (.+), which of the following is correct\?$/, build: (key) => `In the context of the ${key}, which of the following is correct?` },
  { pattern: /^Which of the following statements is\/are correct in relation to the (.+)\?$/, build: (key) => `Which of the following statements is/are correct in relation to the ${key}?` },
  { pattern: /^Consider the following statements\. Which of them is correct with regard to the (.+)\?$/, build: (key) => `Consider the following statements. Which of them is correct with regard to the ${key}?` },
  { pattern: /^Which of the following is true about the (.+)\?$/, build: (key) => `Which of the following is true about the ${key}?` },
  { pattern: /^Which of the following facts about the (.+)\?$/, build: (key) => `Which of the following facts about the ${key}?` },
];

const STOP_TAIL = new Set([
  'and', 'or', 'for', 'of', 'in', 'on', 'at', 'to', 'by', 'with', 'from',
  'the', 'a', 'an', 'their', 'his', 'her', 'its', 'is', 'was', 'were', 'that',
  'which', 'as', 'it', 'they', 'this', 'these', 'those', 'there',
]);

const VERBS = [
  'is', 'are', 'was', 'were', 'has', 'have', 'had', 'became', 'becomes',
  'remains', 'remain', 'started', 'ended', 'began', 'crossed', 'reached',
  'rose', 'fell', 'grew', 'mandated', 'recommended', 'reported', 'adopted',
  'launched', 'introduced', 'implemented', 'notified', 'published', 'held',
  'conducted', 'approved', 'decided', 'announced', 'declared', 'signed',
  'created', 'developed', 'promoted', 'supported', 'caused', 'requires',
  'provides', 'allows', 'aims', 'takes', 'took', 'makes', 'made', 'gives',
  'gave', 'sees', 'saw', 'comes', 'came', 'stands', 'used', 'called',
  'named', 'covers', 'applies', 'appears', 'ranked', 'ranks', 'earned',
  'spent', 'invested', 'opened', 'closed', 'shifted', 'moved', 'split',
  'merged', 'acquired', 'devoted', 'dedicated', 'agreed', 'observed',
  'recorded', 'surpassed', 'exceeded', 'upheld', 'struck', 'dealt', 'banned',
  'listed', 'designated', 'classified', 'annexed', 'ceded', 'transferred',
  'drew', 'sent', 'kept', 'set', 'went', 'hosted', 'staged', 'marked',
  'suggested', 'proposed', 'advised', 'requested', 'attributed', 'credited',
  'recognised', 'recognized', 'quoted', 'argued', 'stated', 'noted', 'added',
  'refers', 'denotes', 'includes', 'include', 'deals', 'concerns', 'relates',
  'linked', 'associated', 'belongs', 'based', 'resulted', 'leads', 'functions',
  'function', 'comprise', 'comprises', 'consist', 'consists', 'consisted',
];

const clean = (text) => String(text).replace(/\s+/g, ' ').trim();

const subjectOf = (option) => {
  const lower = option.toLowerCase();
  for (const verb of VERBS) {
    const index = lower.indexOf(` ${verb} `);
    if (index === -1) continue;
    return option.slice(0, index).trim();
  }
  return '';
};

let fixed = 0;
const unresolved = [];

for (const file of readdirSync(PACKS).filter((f) => f.endsWith('.json'))) {
  const path = join(PACKS, file);
  const questions = JSON.parse(readFileSync(path, 'utf8'));
  let changed = false;

  for (const question of questions) {
    const form = FORMS.find((entry) => entry.pattern.test(question.q));
    if (!form) continue;
    const key = question.q.match(form.pattern)[1];

    let fixedKey = clean(key).replace(/^(the|The)\s+(the|The)\s+/i, '$1 ');
    fixedKey = fixedKey.replace(/^(the|The)\s+/, '');
    const words = fixedKey.split(' ').filter(Boolean);
    while (words.length > 1 && STOP_TAIL.has(words[words.length - 1].toLowerCase())) words.pop();
    fixedKey = words.join(' ').replace(/^the$/i, '').trim();

    if (!fixedKey || fixedKey.split(' ').length < 1) {
      const correct = question.options[question.answer];
      const rebuilt = clean(subjectOf(correct)).replace(/['"“”]/g, '');
      if (rebuilt.split(' ').length < 2) {
        unresolved.push(`${file} :: ${question.q}`);
        continue;
      }
      fixedKey = rebuilt;
    }

    const stem = form.build(fixedKey);
    if (stem === question.q) continue;
    question.q = stem;
    fixed += 1;
    changed = true;
  }

  if (changed) writeFileSync(path, `${JSON.stringify(questions, null, 2)}\n`, 'utf8');
}

console.log(`${fixed} stem(s) repaired, ${unresolved.length} left for manual review`);
for (const item of unresolved.slice(0, 20)) console.log(`  ! ${item}`);
