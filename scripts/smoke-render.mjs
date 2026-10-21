#!/usr/bin/env node
/**
 * Smoke render — every route is opened in a headless browser and the script
 * fails if a route throws, logs an error or renders nothing.
 *
 * It needs a production build in `dist/` and a Chrome/Chromium binary.
 *
 *   node scripts/smoke-render.mjs            # light mode
 *   node scripts/smoke-render.mjs dark       # dark mode
 */
import { spawn } from 'node:child_process';
import { existsSync, rmSync } from 'node:fs';
import http from 'node:http';

const SCHEME = process.argv[2] === 'dark' ? 'dark' : 'light';
const PORT = Number(process.env.SMOKE_PORT || 4188);
const DEBUG_PORT = Number(process.env.SMOKE_CDP_PORT || 9333);
const PROFILE = '/tmp/kilo/smoke-profile';
const ORIGIN = `http://127.0.0.1:${PORT}`;

const ROUTES = [
  { path: '/', expect: 'Swadharma' },
  { path: '/about', expect: 'Practice should feel' },
  { path: '/login', expect: 'Sign in to Swadharma' },
  { path: '/forgot-password', expect: 'Reset your password' },
  { path: '/reset-password', expect: 'Set a new password' },
  // Signed-out visitors are redirected to /login — that redirect is the
  // behaviour under test, so the login screen is what has to render.
  { path: '/verify-email', expect: 'Sign in to Swadharma' },
  { path: '/dashboard', expect: 'Sign in to Swadharma' },
  { path: '/attempts', expect: 'Sign in to Swadharma' },
  { path: '/profile', expect: 'Sign in to Swadharma' },
  { path: '/exam/does-not-exist', expect: 'Sign in to Swadharma' },
  { path: '/result/does-not-exist', expect: 'Sign in to Swadharma' },
  { path: '/a-route-that-does-not-exist', expect: 'Swadharma' },
];

const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

const getJson = (path) =>
  new Promise((resolve, reject) => {
    http
      .get(`http://127.0.0.1:${DEBUG_PORT}${path}`, (res) => {
        let body = '';
        res.on('data', (chunk) => (body += chunk));
        res.on('end', () => {
          try {
            resolve(JSON.parse(body));
          } catch (error) {
            reject(error);
          }
        });
      })
      .on('error', reject);
  });

if (!existsSync('dist/index.html')) {
  console.error('dist/ is missing — run `npm run build` first.');
  process.exit(1);
}

rmSync(PROFILE, { recursive: true, force: true });

const preview = spawn(
  'npx',
  ['vite', 'preview', '--host', '127.0.0.1', '--port', String(PORT), '--strictPort'],
  { stdio: 'ignore' }
);

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

const shutdown = () => {
  preview.kill('SIGKILL');
  chrome.kill('SIGKILL');
  try {
    rmSync(PROFILE, { recursive: true, force: true });
  } catch {
    /* the browser may still be writing to the profile */
  }
};
process.on('exit', shutdown);

/* Wait for both the preview server and the DevTools endpoint. */
for (let attempt = 0; attempt < 120; attempt += 1) {
  const [server, browser] = await Promise.all([
    new Promise((resolve) => {
      http
        .get(ORIGIN, (res) => {
          res.resume();
          resolve(res.statusCode < 500);
        })
        .on('error', () => resolve(false));
    }),
    getJson('/json/version').then(
      () => true,
      () => false
    ),
  ]);
  if (server && browser) break;
  await sleep(250);
}

const targets = await getJson('/json/list');
const page = targets.find((target) => target.type === 'page');
if (!page) {
  console.error('no page target');
  process.exit(1);
}

const ws = new WebSocket(page.webSocketDebuggerUrl);
let nextId = 1;
const pending = new Map();
let consoleErrors = [];
let pageErrors = [];

ws.addEventListener('message', (event) => {
  const message = JSON.parse(event.data);
  if (message.id && pending.has(message.id)) {
    const { resolve: done, reject } = pending.get(message.id);
    pending.delete(message.id);
    if (message.error) reject(new Error(JSON.stringify(message.error)));
    else done(message.result);
    return;
  }
  if (message.method === 'Runtime.consoleAPICalled' && message.params.type === 'error') {
    consoleErrors.push(message.params.args.map((arg) => arg.value ?? arg.description).join(' '));
  }
  if (message.method === 'Runtime.exceptionThrown') {
    const details = message.params.exceptionDetails;
    pageErrors.push(details.exception?.description || details.text);
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
await send('Emulation.setEmulatedMedia', {
  features: [{ name: 'prefers-color-scheme', value: SCHEME }],
});

const failures = [];

for (const route of ROUTES) {
  consoleErrors = [];
  pageErrors = [];

  await send('Page.navigate', { url: `${ORIGIN}${route.path}` });
  await sleep(1600);

  const { result } = await send('Runtime.evaluate', {
    expression:
      'JSON.stringify({ text: document.body.innerText, root: !!document.getElementById("root"), url: location.href, title: document.title, html: document.documentElement.outerHTML.slice(0, 200) })',
    returnByValue: true,
  });

  const state = JSON.parse(result.value || '{}');
  const problems = [];

  if (!state.root) problems.push(`the #root element is missing (url ${state.url}, title "${state.title}")`);
  if (!state.text || state.text.trim().length < 40) problems.push('the page rendered almost no text');
  if (state.text && !state.text.includes(route.expect)) {
    problems.push(`expected the text "${route.expect}" on screen`);
  }
  if (pageErrors.length) problems.push(`uncaught: ${pageErrors.join(' | ')}`);
  if (consoleErrors.length) problems.push(`console error: ${consoleErrors.join(' | ')}`);

  if (problems.length) {
    failures.push({ route: route.path, problems });
    console.log(`  FAIL  ${route.path}`);
    problems.forEach((problem) => console.log(`        · ${problem}`));
  } else {
    console.log(`  ok    ${route.path}`);
  }
}

console.log('');
if (failures.length) {
  console.error(`smoke render (${SCHEME}): ${failures.length} of ${ROUTES.length} routes failed`);
  shutdown();
  process.exit(1);
}

console.log(`smoke render (${SCHEME}): all ${ROUTES.length} routes rendered cleanly`);
shutdown();
process.exit(0);
