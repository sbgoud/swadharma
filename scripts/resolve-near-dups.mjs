#!/usr/bin/env node
/**
 * resolve-near-dups.mjs — removes the near duplicates inside a subject.
 *
 * The seed builder refuses to emit two questions of the same subject whose
 * stems share too many tokens. This script looks for such pairs and either
 * rebuilds the stem of the later question from the content of its own correct
 * option (so the two questions ask for different things) or, when the two
 * questions really test the same fact, drops the later one.
 *
 *   node scripts/resolve-near-dups.mjs            # rewrite the packs
 *   node scripts/resolve-near-dups.mjs --check    # only report
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

const STOP_WORDS = new Set([
  'the', 'and', 'for', 'that', 'this', 'with', 'which', 'from', 'were', 'was',
  'are', 'has', 'have', 'not', 'its', 'his', 'her', 'their', 'them', 'then',
  'than', 'there', 'these', 'those', 'into', 'been', 'being', 'will', 'would',
  'what', 'when', 'where', 'whom', 'why', 'how', 'all', 'any', 'can', 'could',
  'does', 'did', 'such', 'may', 'might', 'must', 'shall', 'should', 'also',
]);

const THRESHOLD = 0.82;

const VERBS = [
  'is managed by', 'are managed by', 'was managed by', 'were managed by',
  'is located', 'are located', 'was located', 'were located', 'has been',
  'have been', 'had been', 'will be', 'can be', 'may be', 'is known',
  'are known', 'was known', 'were known', 'refers to', 'denotes', 'stands for',
  'includes', 'include', 'deals with', 'concerns', 'relates to', 'linked to',
  'linked with', 'associated with', 'belongs to', 'based on', 'resulted in',
  'leads to', 'led to', 'became', 'become', 'remains', 'remain', 'ended',
  'ends', 'began', 'begun', 'started', 'start', 'finished', 'crossed',
  'reached', 'rose', 'fell', 'dropped', 'jumped', 'surged', 'doubled',
  'tripled', 'grew', 'gains', 'mandated', 'recommended', 'reported',
  'adopted', 'launched', 'introduced', 'implemented', 'notified', 'issued',
  'published', 'held', 'conducted', 'organised', 'celebrated', 'approved',
  'decided', 'announced', 'declared', 'signed', 'ratified', 'created',
  'developed', 'promoted', 'supported', 'caused', 'requires', 'required',
  'provides', 'provided', 'allows', 'permitted', 'aims', 'aimed', 'focuses',
  'takes', 'took', 'makes', 'made', 'gives', 'gave', 'sees', 'saw', 'comes',
  'came', 'stands', 'used', 'called', 'named', 'titled', 'regarded',
  'considered', 'treated', 'covered', 'covers', 'applies', 'appear',
  'appears', 'ranked', 'ranks', 'earned', 'spent', 'invested', 'opened',
  'closed', 'shifted', 'moved', 'split', 'merged', 'acquired', 'devoted',
  'dedicated', 'agreed', 'observed', 'estimated', 'projected', 'expected',
  'recorded', 'surpassed', 'exceeded', 'upheld', 'struck', 'dealt', 'banned',
  'listed', 'designated', 'classified', 'annexed', 'ceded', 'transferred',
  'drew', 'sent', 'kept', 'put', 'set', 'went', 'hosted', 'staged', 'marked',
  'suggested', 'proposed', 'advised', 'requested', 'attributed', 'credited',
  'recognised', 'recognized', 'quoted', 'argued', 'stated', 'noted', 'added',
  'sought', 'functions', 'function', 'included', 'comprise', 'comprises',
  'consist', 'consists', 'consisted', 'is', 'are', 'was', 'were', 'has',
  'have', 'had',
];

const PRONOUNS = new Set([
  'it', 'they', 'this', 'these', 'those', 'he', 'she', 'its', 'their',
  'a', 'an', 'the', 'and', 'in', 'of', 'there', 'here',
]);

const tokenSet = (value) => new Set(
  String(value)
    .toLowerCase()
    .replace(/[^a-z0-9\s]/g, ' ')
    .split(/\s+/)
    .filter((t) => (t.length > 2 && !STOP_WORDS.has(t)) || /^\d+$/.test(t))
);

const jaccard = (a, b) => {
  if (a.size === 0 || b.size === 0) return 0;
  let shared = 0;
  for (const t of a) if (b.has(t)) shared += 1;
  return shared / (a.size + b.size - shared);
};

const yearSet = (value) => new Set(
  (String(value).match(/\b(1[6-9]\d{2}|20\d{2})\b/g) || []).map((y) => y)
);

const hasNegation = (value) => /\b(not|except|incorrect|wrong|false)\b/i.test(String(value));

const comparable = (a, b) => {
  if (hasNegation(a) !== hasNegation(b)) return false;
  const ya = yearSet(a);
  const yb = yearSet(b);
  if (ya.size !== yb.size) return false;
  for (const year of ya) if (!yb.has(year)) return false;
  return true;
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

/** The quoted term or the leading noun phrase of a stem. */
const topicOf = (stem) => {
  const quoted = stem.match(/'([^']+)'/);
  if (quoted) return quoted[1].trim();
  const head = stem.split(/[:?]/)[0].replace(/^(The|A|An)\s+/i, '').trim();
  return head.length > 2 && head.length < 80 ? head : '';
};

const normalise = (value) => String(value).replace(/\s+/g, ' ').trim();

/** A new stem built from the question's own correct option. */
const restate = (question) => {
  const correct = question.options[question.answer];
  if (typeof correct !== 'string') return null;
  const split = findVerb(correct);
  if (!split) return null;
  const subject = normalise(correct.slice(0, split.index)).replace(/[,:;]\s*$/, '');
  const topic = topicOf(question.q);
  const stem = (!subject || PRONOUNS.has(subject.toLowerCase())
    ? `${topic} ${split.verb}`
    : `${subject} ${split.verb}`).replace(/['"“”]/g, '').trim();
  if (stem.length < 12 || stem.length > 170) return null;
  return `${stem}:`;
};

let rebuilt = 0;
let dropped = 0;
const unresolved = [];

for (const subject of SUBJECTS) {
  const files = readdirSync(PACKS)
    .filter((f) => f.startsWith(subject) && f.endsWith('.json'))
    .sort();

  const entries = [];
  for (const file of files) {
    const list = JSON.parse(readFileSync(join(PACKS, file), 'utf8'));
    list.forEach((question, index) => entries.push({ file, index, question }));
  }

  const removed = new Set();
  let guard = 0;
  let changed = true;

  while (changed && guard < 500) {
    changed = false;
    guard += 1;
    const alive = entries.filter((entry) => !removed.has(entry));
    const tokens = alive.map((entry) => tokenSet(entry.question.q));

    for (let i = 0; i < alive.length && !changed; i += 1) {
      for (let j = i + 1; j < alive.length; j += 1) {
        const first = alive[i];
        const second = alive[j];
        if (!comparable(first.question.q, second.question.q)) continue;
        if (jaccard(tokens[i], tokens[j]) < THRESHOLD) continue;

        const candidate = restate(second.question);
        if (candidate) {
          const score = jaccard(tokens[i], tokenSet(candidate));
          if (score < THRESHOLD) {
            second.question.q = candidate;
            rebuilt += 1;
            changed = true;
            break;
          }
        }
        removed.add(second);
        dropped += 1;
        changed = true;
        break;
      }
    }
  }

  const alive = entries.filter((entry) => !removed.has(entry));
  for (let i = 0; i < alive.length; i += 1) {
    for (let j = i + 1; j < alive.length; j += 1) {
      if (!comparable(alive[i].question.q, alive[j].question.q)) continue;
      if (jaccard(tokenSet(alive[i].question.q), tokenSet(alive[j].question.q)) >= THRESHOLD) {
        unresolved.push(`${subject}: "${alive[i].question.q}" ~ "${alive[j].question.q}"`);
      }
    }
  }

  if (!CHECK_ONLY && (removed.size || rebuilt)) {
    for (const file of files) {
      const path = join(PACKS, file);
      const list = JSON.parse(readFileSync(path, 'utf8'));
      const keep = entries
        .filter((entry) => entry.file === file && !removed.has(entry))
        .map((entry) => entry.question);
      writeFileSync(path, `${JSON.stringify(keep, null, 2)}\n`, 'utf8');
    }
  }
}

console.log(`${rebuilt} stem(s) rebuilt, ${dropped} duplicate question(s) dropped, ${unresolved.length} left`);
for (const item of unresolved.slice(0, 20)) console.log(`  ! ${item}`);
