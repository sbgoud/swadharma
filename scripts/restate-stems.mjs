#!/usr/bin/env node
/**
 * restate-stems.mjs — turns statement-style options into real question stems.
 *
 * A repaired question looks like
 *   "With reference to the Pashmina, which of the following is correct?"
 *   ["the fine wool of the Changthangi goats", "the silk of Assam", ...]
 *
 * Two shapes are produced:
 *   1. "The Pashmina is:" with the options reduced to their complements, when
 *      the options are full statements sharing the same verb;
 *   2. "Which of the following statements regarding the Pashmina is correct?"
 *      (several wordings, picked deterministically) when they do not.
 *
 * Every stem produced here is specific, names its subject and is at least
 * 20 characters long.
 */

import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const PACKS = process.env.PACKS_DIR
  ? resolve(process.env.PACKS_DIR)
  : join(ROOT, 'supabase', 'questions');

const VERBS = [
  'is managed by', 'are managed by', 'was managed by', 'were managed by',
  'is located', 'are located', 'was located', 'were located',
  'has been', 'have been', 'had been', 'will be', 'can be', 'may be',
  'is known', 'are known', 'was known', 'were known',
  'refers to', 'denotes', 'stands for', 'includes', 'include',
  'deals with', 'deal with', 'dealt with', 'concerns', 'concerned with',
  'relates to', 'related to', 'linked to', 'linked with', 'associated with',
  'belongs to', 'belong to', 'based on', 'based upon', 'resulted in',
  'leads to', 'led to', 'gives rise to', 'gave rise to', 'due to',
  'became', 'become', 'remains', 'remain', 'ended', 'ends', 'began', 'begun',
  'started', 'start', 'finished', 'crossed', 'reached', 'rose', 'fell',
  'dropped', 'jumped', 'surged', 'doubled', 'tripled', 'grew', 'gains',
  'mandated', 'recommended', 'reported', 'adopted', 'launched', 'introduced',
  'implemented', 'notified', 'issued', 'published', 'held', 'conducted',
  'organised', 'organized', 'celebrated', 'commemorated', 'approved',
  'decided', 'announced', 'declared', 'signed', 'ratified', 'created',
  'developed', 'promoted', 'supported', 'helped', 'caused', 'requires',
  'required', 'provides', 'provided', 'allows', 'permitted', 'aims',
  'aimed', 'focuses', 'focused', 'takes', 'took', 'makes', 'made', 'gives',
  'gave', 'sees', 'saw', 'comes', 'came', 'stands', 'stood', 'used',
  'called', 'named', 'titled', 'regarded', 'considered', 'treated',
  'covered', 'covers', 'applies', 'appear', 'appears', 'ranked', 'ranks',
  'earned', 'spent', 'invested', 'opened', 'closed', 'shifted', 'moved',
  'split', 'merged', 'acquired', 'devoted', 'dedicated', 'agreed', 'signed',
  'observed', 'surveyed', 'estimated', 'projected', 'expected', 'recorded',
  'surpassed', 'exceeded', 'accounted', 'constituted', 'forms', 'upheld',
  'upholds', 'struck', 'dealt', 'banned', 'listed', 'designated',
  'classified', 'annexed', 'ceded', 'transferred', 'drew', 'sent', 'kept',
  'put', 'set', 'went', 'hosted', 'staged', 'marked', 'suggested',
  'proposed', 'advised', 'requested', 'permitted', 'attributed', 'credited',
  'linked', 'mapped', 'tagged', 'recognised', 'recognized', 'quoted',
  'argued', 'stated', 'noted', 'added', 'sought', 'functions', 'function',
  'included', 'cover', 'comprise', 'comprises', 'consist', 'consists',
  'consisted', 'is', 'are', 'was', 'were', 'has', 'have', 'had',
];

const PRONOUNS = new Set([
  'it', 'they', 'this', 'these', 'those', 'he', 'she', 'its', 'their',
  'a', 'an', 'the', 'and', 'in', 'of', 'there', 'here',
]);

const WEAK_TOPIC = new Set([
  'the', 'india', 'it', 'they', 'this', 'these', 'those', 'he', 'she',
  'its', 'their', 'and', 'in', 'of', 'there', 'a', 'an',
]);

const STOP = new Set([
  'of', 'in', 'at', 'on', 'for', 'to', 'by', 'with', 'from', 'and', 'or',
  'that', 'which', 'as', 'into', 'under', 'over', 'across', 'during',
]);

const GENERIC = /^With reference to the (.+), which of the following is correct\?$/;
const GENERIC_PLURAL = /^With reference to (.+), which of the following is correct\?$/;

const TIER2 = [
  (key) => `Which of the following statements regarding the ${key} is correct?`,
  (key) => `Which of the following is correct in the case of the ${key}?`,
  (key) => `In the context of the ${key}, which of the following is correct?`,
  (key) => `Which of the following statements is/are correct in relation to the ${key}?`,
  (key) => `Consider the following statements. Which of them is correct with regard to the ${key}?`,
];

/** Words that are capitalised inside a sentence are proper nouns. */
const properNouns = new Set();

const collectProperNouns = () => {
  for (const file of readdirSync(PACKS).filter((f) => f.endsWith('.json'))) {
    const questions = JSON.parse(readFileSync(join(PACKS, file), 'utf8'));
    for (const question of questions) {
      for (const option of [question.q, ...(question.options || [])]) {
        const words = String(option).split(/\s+/);
        words.forEach((word, index) => {
          if (index === 0) return;
          const clean = word.replace(/[^A-Za-z]/g, '');
          if (!clean || clean.length < 3) return;
          if (!/^[A-Z]/.test(clean)) return;
          if (clean === clean.toUpperCase()) return;
          if (VERBS.includes(clean.toLowerCase())) return;
          properNouns.add(clean);
        });
      }
    }
  }
};

const lowerFirst = (text) => {
  const first = text.split(' ')[0].replace(/[^A-Za-z]/g, '');
  if (!first) return text;
  if (properNouns.has(first)) return text;
  if (first === first.toUpperCase() && first.length > 1) return text;
  return text.charAt(0).toLowerCase() + text.slice(1);
};

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

/** The most specific noun phrase that can be pulled out of an option. */
const keyPhrase = (part) => {
  const subject = (part.subject || '').replace(/['"“”]/g, '').trim();
  if (subject && !PRONOUNS.has(subject.toLowerCase()) && subject.split(' ').length > 1) {
    return subject;
  }
  if (subject && !PRONOUNS.has(subject.toLowerCase()) && subject.length >= 4) {
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

const hash = (text) => {
  let value = 0;
  for (let i = 0; i < text.length; i += 1) value = (value * 31 + text.charCodeAt(i)) >>> 0;
  return value;
};

let converted = 0;
let tier2 = 0;
const leftovers = [];

collectProperNouns();

for (const file of readdirSync(PACKS).filter((f) => f.endsWith('.json'))) {
  const path = join(PACKS, file);
  const questions = JSON.parse(readFileSync(path, 'utf8'));
  let changed = false;

  for (const question of questions) {
    const generic = question.q.match(GENERIC) || question.q.match(GENERIC_PLURAL);
    if (!generic) continue;
    const topic = generic[1].replace(/['"“”]/g, '').replace(/\s+/g, ' ').trim();

    const parts = question.options.map((option) => split(option));
    const correct = parts[question.answer];
    const withVerb = parts.filter(Boolean).length;

    let stem = null;
    let options = null;

    if (correct && withVerb >= 3) {
      const complements = parts.map((part, index) => (part
        ? part.complement
        : question.options[index].trim().replace(/[.,;]\s*$/, '')));
      const distinct = new Set(complements.map((value) => value.toLowerCase()));
      const subject = (!correct.subject || PRONOUNS.has(correct.subject.toLowerCase())
        ? topic
        : correct.subject).replace(/['"“”]/g, '').replace(/\s+/g, ' ').trim();
      const candidate = `${subject.replace(/[.]\s*$/, '')} ${correct.verb}:`;
      if (complements.every(Boolean) && distinct.size === 4
          && candidate.length >= 20 && candidate.length <= 180) {
        stem = /s$/i.test(subject) && ['is', 'was', 'has'].includes(correct.verb)
          ? candidate.replace(/\b(is|was|has)\b:$/, (match) => `${match[1] === 'is' ? 'are' : match[1] === 'was' ? 'were' : 'have'}:`)
          : candidate;
        options = complements.map((value) => lowerFirst(value));
      }
    }

    if (!stem) {
      const key = WEAK_TOPIC.has(topic.toLowerCase()) && correct
        ? keyPhrase(correct)
        : topic;
      const cleanKey = key.replace(/['"“”]/g, '').replace(/[.,;]\s*$/, '').trim();
      if (!cleanKey || cleanKey.length < 2) {
        leftovers.push(question.q);
        continue;
      }
      const form = TIER2[hash(question.q) % TIER2.length];
      const candidate = form(cleanKey);
      if (candidate.length < 20 || candidate.length > 220) {
        leftovers.push(question.q);
        continue;
      }
      stem = candidate;
      tier2 += 1;
    }

    question.q = stem;
    if (options) question.options = options;
    question.explanation = question.explanation.replace(/\s+/g, ' ').trim();
    converted += 1;
    changed = true;
  }

  if (changed) writeFileSync(path, `${JSON.stringify(questions, null, 2)}\n`, 'utf8');
}

console.log(`${converted} stem(s) rewritten (${tier2} topic based), ${leftovers.length} left as they are`);
for (const sample of leftovers.slice(0, 15)) console.log(`  - ${sample}`);
