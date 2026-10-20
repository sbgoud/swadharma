#!/usr/bin/env node
/**
 * dedupe-stems.mjs — makes sure no two questions of the same subject share a
 * stem. For a duplicated stem the later copies are rebuilt from the content
 * of their own correct option, so each question keeps testing its own fact.
 *
 *   node scripts/dedupe-stems.mjs            # rewrite the packs
 *   node scripts/dedupe-stems.mjs --check    # only report
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const PACKS = process.env.PACKS_DIR
  ? resolve(process.env.PACKS_DIR)
  : join(ROOT, 'supabase', 'questions');

const CHECK_ONLY = process.argv.includes('--check');

const SUBJECTS = [
  'current_affairs', 'science_tech', 'art_culture', 'environment', 'economy',
  'geography', 'history', 'polity',
];

const STOP = new Set([
  'of', 'in', 'at', 'on', 'for', 'to', 'by', 'with', 'from', 'and', 'or',
  'that', 'which', 'as', 'into', 'under', 'over', 'across', 'during',
]);

const PRONOUNS = new Set([
  'it', 'they', 'this', 'these', 'those', 'he', 'she', 'its', 'their',
  'a', 'an', 'the', 'and', 'in', 'of', 'there', 'here',
]);

const TIER2 = [
  (key) => `Which of the following statements regarding the ${key} is correct?`,
  (key) => `Which of the following is correct in the case of the ${key}?`,
  (key) => `In the context of the ${key}, which of the following is correct?`,
  (key) => `Which of the following statements is/are correct in relation to the ${key}?`,
  (key) => `Consider the following statements. Which of them is correct with regard to the ${key}?`,
  (key) => `Which of the following is true about the ${key}?`,
  (key) => `Which of the following facts about the ${key} is correct?`,
];

const VERBS = [
  'is', 'are', 'was', 'were', 'has', 'have', 'had', 'became', 'remains',
  'remained', 'started', 'ended', 'began', 'crossed', 'reached', 'rose',
  'fell', 'dropped', 'grew', 'gained', 'mandated', 'recommended', 'reported',
  'adopted', 'launched', 'introduced', 'implemented', 'notified', 'published',
  'held', 'conducted', 'organised', 'approved', 'decided', 'announced',
  'declared', 'signed', 'created', 'developed', 'promoted', 'supported',
  'caused', 'requires', 'provides', 'allows', 'aims', 'focuses', 'takes',
  'took', 'makes', 'made', 'gives', 'gave', 'sees', 'saw', 'comes', 'came',
  'stands', 'used', 'called', 'named', 'known', 'regarded', 'considered',
  'treated', 'covers', 'applies', 'appears', 'ranked', 'ranks', 'earned',
  'spent', 'invested', 'opened', 'closed', 'shifted', 'moved', 'split',
  'merged', 'acquired', 'devoted', 'dedicated', 'agreed', 'observed',
  'estimated', 'projected', 'expected', 'recorded', 'surpassed', 'exceeded',
  'upheld', 'struck', 'dealt', 'banned', 'listed', 'designated', 'classified',
  'annexed', 'ceded', 'transferred', 'drew', 'sent', 'kept', 'set', 'went',
  'hosted', 'staged', 'marked', 'suggested', 'proposed', 'advised',
  'requested', 'permitted', 'attributed', 'credited', 'recognised',
  'recognized', 'quoted', 'argued', 'stated', 'noted', 'added', 'sought',
  'refers', 'denotes', 'includes', 'include', 'deals', 'concerns', 'relates',
  'linked', 'associated', 'belongs', 'based', 'resulted', 'leads', 'gives',
  'allowed', 'permitted', 'allowed', 'consisted', 'consists', 'comprise',
  'comprises', 'covers', 'forms', 'function', 'functions', 'mapped', 'tagged',
];

const findVerb = (text) => {
  const lower = text.toLowerCase();
  for (const verb of VERBS) {
    const index = lower.indexOf(verb);
    if (index === -1) continue;
    const before = lower.slice(0, index);
    if (before && !/\s$/.test(before)) continue;
    const after = lower.slice(index + verb.length);
    if (!/^\s/.test(after)) continue;
    if (/(^|\s)(a|an|the)\s*$/.test(before)) continue;
    return { verb, index, end: index + verb.length };
  }
  return null;
};

const split = (text) => {
  const match = findVerb(text);
  if (!match) return null;
  return {
    subject: text.slice(0, match.index).trim().replace(/[,:;]\s*$/, ''),
    verb: match.verb,
    complement: text.slice(match.end).trim().replace(/[.,;]\s*$/, ''),
  };
};

const keyPhrase = (option) => {
  const part = split(option);
  if (!part) {
    const words = option.split(/\s+/).filter(Boolean);
    return words.slice(0, 5).join(' ');
  }
  const subject = (part.subject || '').replace(/['"“”]/g, '').trim();
  if (subject && !PRONOUNS.has(subject.toLowerCase()) && subject.split(' ').length > 1) {
    return subject;
  }
  const words = (part.complement || '').split(/\s+/).filter(Boolean);
  const head = [];
  for (const word of words) {
    const clean = word.replace(/[^A-Za-z]/g, '').toLowerCase();
    if (STOP.has(clean) || VERBS.includes(clean)) break;
    head.push(word);
    if (head.length >= 5) break;
  }
  if (head.length >= 2) return head.join(' ');
  return subject || words.slice(0, 4).join(' ');
};

const clean = (text) => String(text)
  .replace(/['"“”]/g, '')
  .replace(/\s+/g, ' ')
  .replace(/[.,;]\s*$/, '')
  .trim();

const topicOf = (stem) => {
  const match = stem.match(/^With reference to (?:the )?(.+), which of the following is correct\?$/)
    || stem.match(/(?:regarding|in the case of the|in the context of|with regard to the|about the|relation to the)\s+(.+?)(?: is\/are correct\?|\?)$/);
  return match ? clean(match[1]) : '';
};

let fixed = 0;
const unresolved = [];

const used = new Set();

for (const subject of SUBJECTS) {
  const files = readdirSync(PACKS)
    .filter((f) => f.startsWith(subject) && f.endsWith('.json'))
    .sort();

  const questions = [];
  for (const file of files) {
    const list = JSON.parse(readFileSync(join(PACKS, file), 'utf8'));
    list.forEach((question) => questions.push({ file, question }));
  }

  const rebuilt = new Map();
  for (const { file, question } of questions) {
    const stem = clean(question.q);
    if (!used.has(stem.toLowerCase())) {
      used.add(stem.toLowerCase());
      continue;
    }

    const options = question.options || [];
    const correct = options[question.answer];
    const topic = topicOf(question.q);
    const key = clean(keyPhrase(correct));

    const candidates = [];
    const part = split(correct);
    if (part) {
      const subject = (!part.subject || PRONOUNS.has(part.subject.toLowerCase()))
        ? topic
        : part.subject;
      candidates.push(`${clean(subject)} ${part.verb}:`);
    }
    for (const form of TIER2) candidates.push(form(key));
    if (topic && key && key.toLowerCase() !== topic.toLowerCase()) {
      for (const form of TIER2) candidates.push(form(`${topic} and the ${key}`));
    }

    const choice = candidates.find((candidate) => {
      const normalised = clean(candidate).toLowerCase();
      return normalised.length >= 20
        && normalised.length <= 220
        && !used.has(normalised);
    });

    if (!choice) {
      unresolved.push(`${subject} :: ${stem}`);
      continue;
    }
    question.q = choice;
    used.add(clean(choice).toLowerCase());
    rebuilt.set(file, true);
    fixed += 1;
  }

  if (!CHECK_ONLY) {
    for (const file of files) {
      if (!rebuilt.has(file)) continue;
      const path = join(PACKS, file);
      const list = JSON.parse(readFileSync(path, 'utf8'));
      const wanted = questions.filter((entry) => entry.file === file).map((entry) => entry.question);
      writeFileSync(path, `${JSON.stringify(wanted, null, 2)}\n`, 'utf8');
    }
  }
}

console.log(`${fixed} duplicated stem(s) rebuilt, ${unresolved.length} could not be separated`);
for (const item of unresolved) console.log(`  ! ${item}`);
