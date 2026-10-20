#!/usr/bin/env node
/**
 * check-sql.mjs — a light sanity check for the SQL that will be applied to
 * Postgres. It cannot replace a real database, but it catches the mistakes
 * that are easy to make in generated SQL: unbalanced parentheses, unbalanced
 * dollar quoting, unbalanced BEGIN/COMMIT and stray double quotes.
 */

import { readFileSync, readdirSync } from 'node:fs';
import { join, resolve, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');

const dirs = [
  join(ROOT, 'supabase', 'migrations'),
  join(ROOT, 'supabase', 'seed'),
];

const countQuotes = (sql) => {
  let count = 0;
  let inString = false;
  let inDollar = false;
  let inLineComment = false;
  for (let i = 0; i < sql.length; i += 1) {
    const ch = sql[i];
    const next = sql[i + 1];
    if (inLineComment) {
      if (ch === '\n') inLineComment = false;
      continue;
    }
    if (inString) {
      if (ch === "'") {
        if (next === "'") {
          i += 1;
        } else {
          inString = false;
          count += 1;
        }
      }
      continue;
    }
    if (inDollar) {
      if (ch === '$' && next === '$') {
        inDollar = false;
        i += 1;
      }
      continue;
    }
    if (ch === '-' && next === '-') {
      inLineComment = true;
      i += 1;
      continue;
    }
    if (ch === "'") {
      inString = true;
      count += 1;
      continue;
    }
    if (ch === '$' && next === '$') {
      inDollar = true;
      i += 1;
      continue;
    }
  }
  return count;
};

let failures = 0;

for (const dir of dirs) {
  const files = readdirSync(dir)
    .filter((f) => f.endsWith('.sql'))
    .sort();

  for (const file of files) {
    const path = join(dir, file);
    const sql = readFileSync(path, 'utf8');
    const problems = [];

    // dollar quoting
    const tags = sql.match(/\$\$[a-zA-Z_]*\$\$/g) || [];
    if (tags.length % 2 !== 0) problems.push('unbalanced $$ quoting');

    // single quotes outside of comments and dollar quoted blocks
    const singleQuotes = countQuotes(sql);
    if (singleQuotes % 2 !== 0) problems.push('unbalanced single quotes');

    // parentheses outside of string literals and dollar quoted blocks
    let depth = 0;
    let minDepth = 0;
    let inString = false;
    let inDollar = false;
    for (let i = 0; i < sql.length; i += 1) {
      const ch = sql[i];
      const next = sql[i + 1];
      if (inString) {
        if (ch === "'") {
          if (next === "'") {
            i += 1;
          } else {
            inString = false;
          }
        }
        continue;
      }
      if (inDollar) {
        if (ch === '$' && next === '$') {
          inDollar = false;
          i += 1;
        }
        continue;
      }
      if (ch === "'") {
        inString = true;
        continue;
      }
      if (ch === '$' && next === '$') {
        inDollar = true;
        i += 1;
        continue;
      }
      if (ch === '(') depth += 1;
      if (ch === ')') {
        depth -= 1;
        minDepth = Math.min(minDepth, depth);
      }
    }
    if (depth !== 0) problems.push(`unbalanced parentheses (depth ${depth})`);
    if (minDepth < 0) problems.push('closing parenthesis without an opening one');

    // transaction blocks
    const begins = (sql.match(/^\s*begin\s*;/gim) || []).length;
    const commits = (sql.match(/^\s*commit\s*;/gim) || []).length;
    if (begins !== commits) problems.push(`unbalanced transaction block (${begins}/${commits})`);

    // statements that reference the removed legacy tables
    for (const legacy of ['public.users', 'public.orders', 'public.coupons']) {
      if (new RegExp(`insert\\s+into\\s+${legacy}\\b`, 'i').test(sql)) {
        problems.push(`inserts into the removed table ${legacy}`);
      }
    }

    if (problems.length) {
      failures += 1;
      console.log(`✗ ${file}: ${problems.join('; ')}`);
    } else {
      console.log(`✓ ${file}`);
    }
  }
}

if (failures) {
  console.log(`\n${failures} file(s) need attention`);
  process.exit(1);
}
console.log('\nAll SQL files look structurally sound');
