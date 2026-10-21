#!/usr/bin/env node
/**
 * Visual QA helper.
 *
 * Drives headless Chrome over the DevTools protocol so a shot can be taken
 * with an emulated colour scheme and an exact viewport — both of which the
 * plain `--screenshot` flag cannot do.
 *
 * usage: node scripts/shot.mjs <route> <out.png> [width] [height] [light|dark]
 */
import { spawn } from 'node:child_process';
import { mkdirSync, rmSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import http from 'node:http';

const [route = '/', out = '/tmp/kilo/shots/shot.png', width = '1440', height = '2400', scheme = 'light'] =
  process.argv.slice(2);

const PORT = Number(process.env.PORT || 4180);
const DEBUG_PORT = Number(process.env.CDP_PORT || 9222);
const PROFILE = '/tmp/kilo/cdp-profile';
const ORIGIN = `http://127.0.0.1:${PORT}`;

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

const getJson = (path) =>
  new Promise((resolvePromise, reject) => {
    http
      .get(`http://127.0.0.1:${DEBUG_PORT}${path}`, (res) => {
        let body = '';
        res.on('data', (chunk) => (body += chunk));
        res.on('end', () => {
          try {
            resolvePromise(JSON.parse(body));
          } catch (error) {
            reject(error);
          }
        });
      })
      .on('error', reject);
  });

rmSync(PROFILE, { recursive: true, force: true });

const chrome = spawn(
  'google-chrome',
  [
    '--headless=new',
    '--disable-gpu',
    '--no-sandbox',
    '--hide-scrollbars',
    `--remote-debugging-port=${DEBUG_PORT}`,
    `--user-data-dir=${PROFILE}`,
    'about:blank',
  ],
  { stdio: 'ignore' }
);

const cleanup = () => {
  chrome.kill('SIGKILL');
  try {
    rmSync(PROFILE, { recursive: true, force: true });
  } catch {
    /* chrome may still be writing to the profile; the next run clears it */
  }
};
process.on('exit', cleanup);

// Wait for the DevTools endpoint.
let version = null;
for (let i = 0; i < 60; i += 1) {
  try {
    version = await getJson('/json/version');
    break;
  } catch {
    await sleep(250);
  }
}
if (!version) {
  console.error('chrome did not start');
  process.exit(1);
}

const targets = await getJson('/json/list');
const page = targets.find((t) => t.type === 'page');
if (!page) {
  console.error('no page target');
  process.exit(1);
}
const ws = new WebSocket(page.webSocketDebuggerUrl);

let nextId = 1;
const pending = new Map();

ws.addEventListener('message', (event) => {
  const message = JSON.parse(event.data);
  if (message.id && pending.has(message.id)) {
    const { resolve: done, reject } = pending.get(message.id);
    pending.delete(message.id);
    if (message.error) reject(new Error(JSON.stringify(message.error)));
    else done(message.result);
  }
});

const send = (method, params = {}) =>
  new Promise((done, reject) => {
    const id = nextId++;
    pending.set(id, { resolve: done, reject });
    ws.send(JSON.stringify({ id, method, params }));
  });

await new Promise((done) => ws.addEventListener('open', done, { once: true }));

await send('Page.enable');
await send('Runtime.enable');
await send('Emulation.setDeviceMetricsOverride', {
  width: Number(width),
  height: Number(height),
  deviceScaleFactor: 1,
  mobile: Number(width) < 500,
});
await send('Emulation.setEmulatedMedia', {
  features: [{ name: 'prefers-color-scheme', value: scheme }],
});

await send('Page.navigate', { url: `${ORIGIN}${route}` });
await sleep(3500);

// Optional interaction: CLICK="aria-label text" clicks the first element with
// that accessible name before the shot is taken.
if (process.env.CLICK) {
  const label = JSON.stringify(process.env.CLICK);
  await send('Runtime.evaluate', {
    expression: `(() => {
      const nodes = Array.from(document.querySelectorAll('button, a, [role="button"]'));
      const hit = nodes.find((node) =>
        (node.getAttribute('aria-label') || '').toLowerCase().includes(${label}.toLowerCase())
      );
      if (hit) hit.click();
      return Boolean(hit);
    })()`,
    returnByValue: true,
  });
  await sleep(1200);
}

const { data } = await send('Page.captureScreenshot', {
  format: 'png',
  captureBeyondViewport: process.env.FULL !== '0',
  ...(process.env.CLIP
    ? {
        clip: (() => {
          const [x, y, width, height] = process.env.CLIP.split(',').map(Number);
          return { x, y, width, height, scale: Number(process.env.SCALE || 1) };
        })(),
      }
    : {}),
});

mkdirSync(dirname(resolve(out)), { recursive: true });
writeFileSync(out, Buffer.from(data, 'base64'));
console.log(`saved ${out} (${scheme}, ${width}x${height})`);

ws.close();
chrome.kill('SIGKILL');
try {
  rmSync(PROFILE, { recursive: true, force: true });
} catch {
  /* ignore */
}
process.exit(0);
