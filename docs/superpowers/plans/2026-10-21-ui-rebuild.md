# Swadharma IAS UI/UX Rebuild — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the entire frontend presentation of swadharmaias.in with a new mobile-first, premium design system (warm-paper + teal editorial identity, Fraunces/Inter type pairing, minimal swan mark) across the landing page, auth flow, dashboard, exam console, result page, attempts and profile — with zero changes to the backend.

**Architecture:** MUI v9 stays the component library (already installed, no new runtime deps). The work is a token-and-composition rewrite: a new `src/theme/theme.js` palette/typography/overrides, a new global stylesheet, a new brand mark component, a small shared UI kit in `src/components/ui.jsx`, and page files rewritten in place. All data access continues to flow through the untouched `src/services/examService.js` and `src/services/otpService.js`.

**Tech Stack:** React 19, Vite 5, MUI v9 + Emotion, React Router 6, `@fontsource-variable/fraunces` (new, self-hosted display font).

**Spec:** `docs/superpowers/specs/2026-10-21-ui-rebuild-design.md`

## Global Constraints

- Do not modify: `supabase/**`, `src/config/env.js`, `src/lib/supabase.js`,
  `src/services/**`, `src/context/AuthContext.jsx`, `src/context/ThemeContext.jsx`
  (behaviour), any RPC name or parameter, exam scoring, the Brevo/OTP flow logic.
- `npm run build` and `npm run lint` must both pass at the end of every task that touches
  `src/`.
- No pricing claims: the strings `free forever`, `free during launch`, `unlimited`,
  `₹0`, `subscription`, `free for all` must not appear anywhere in `src/` or `index.html`.
- Copy for cost-adjacent CTAs: "Start practising free today", "Create a free account",
  "No card needed to start".
- New dependency allowed: `@fontsource-variable/fraunces` only.
- Commit after every task, push to `origin main` after every task.

## Review Focus

- **Reveal of the answer key before submit** — the exam page must never render answer
  keys; only the server result carries them. (Owned by Task 9.)
- **Timer accuracy across a reload** — remaining time derives from the server
  `started_at`, not from a client counter. (Task 9.)
- **Answers survive a reload** — the `localStorage` cache key stays
  `swadharma:attempt:<id>` with the same `{answers, marked}` shape. (Task 9.)
- **Auth redirect after sign-in** — the `location.state.from` target must be honoured so
  a protected-route bounce returns the user where they were. (Task 7.)
- **Verify-email gate** — an unverified account must not reach the dashboard; the
  `email_verified` check in `VerifyEmail` must keep working. (Task 7.)
- **Empty and error states** — every data-backed panel needs a loading, empty and error
  state; a failed RPC must show a message, not a blank page. (Tasks 8–10.)
- **Touch targets** — every interactive element ≥ 44 px on mobile. (Tasks 4–10.)
- **Dark mode legibility** — no hard-coded light text on light surfaces. (Task 1–10.)

---

### Task 1: Design foundation — fonts, theme tokens, global CSS

**Files:**
- Modify: `src/main.jsx` (font imports)
- Modify: `src/theme/theme.js` (new palette, typography, component overrides)
- Modify: `src/index.css` (reset, selection, scrollbars, utilities)
- Modify: `src/App.jsx` (shell: max width, page background, loader)

**Interfaces:**
- Produces: `brand` token object, `heroGradient`, `softGradient` (both still exported from
  `src/theme/theme.js` — existing imports keep working), `buildTheme(mode)`.
- Produces: theme fields `palette.primary`, `palette.background`, `palette.text`,
  `palette.divider`, `shape.borderRadius`, `typography.fontFamily`.

- [ ] **Step 1:** `npm install @fontsource-variable/fraunces@5.3.0 --save` (already done).
- [ ] **Step 2:** In `src/main.jsx` import `@fontsource-variable/fraunces/wght.css` and
  drop every `@fontsource/poppins/*` import; keep the four Inter imports.
- [ ] **Step 3:** Rewrite `src/theme/theme.js`: palette from the spec table, Fraunces
  display stack (`'Fraunces Variable', Georgia, serif`) for h1–h4 and the wordmark,
  Inter everywhere else, radius 14, and style overrides for Button, Card, Paper, Chip,
  TextField/OutlinedInput, Dialog, Tabs, Accordion, Alert, ToggleButton(+Group), Linear
  Progress, Slider, Menu/MenuItem, ListItemButton, Tooltip, IconButton, Avatar, Badge,
  Skeleton, Divider, TableCell.
- [ ] **Step 4:** Rewrite `src/index.css`: reset, warm background from the theme, focus
  ring, selection colour, scrollbar, `.rise-in` / `.float-soft` keyframes, reduced-motion
  block. Remove `.gradient-text` and `.soft-grid` (no longer used).
- [ ] **Step 5:** Update `src/App.jsx` shell: page canvas uses `background.default`, the
  exam route keeps a chrome-free full-height layout, the Suspense fallback uses the new
  spinner. **Routes and their order must not change.**
- [ ] **Step 6:** `npm run build && npm run lint` — both must pass.
- [ ] **Step 7:** Commit `feat(ui): new design foundation — Fraunces/Inter type system, warm-paper teal palette, global styles` and push.

### Task 2: The swan mark, wordmark and favicon

**Files:**
- Create: `src/components/SwanLogo.jsx`
- Modify: `public/favicon.svg`
- Modify: `index.html`

**Interfaces:**
- Produces: `SwanMark({ size = 40, className })` → inline SVG badge.
- Produces: `Logo({ size = 40, showWordmark = true })` → mark + wordmark link.
- Produces: `SWAN_GLYPH` path constants reused by the favicon (kept in sync manually).

- [ ] **Step 1:** Draw the swan in a 48×48 viewBox: body `M12 30c0 7 24 7 24 0`
  continued into the neck `0-7-4-10.5-8.5-13`, a filled head circle at `(24.5,14) r 3.6`
  and a small filled beak triangle pointing left. Stroke width 3.6, round caps/joins.
- [ ] **Step 2:** `SwanMark` renders the glyph in white on a teal→cyan gradient
  rounded square (`rx = 30%`), `role="img"`, `aria-label="Swadharma IAS"`, and scales via
  the `size` prop. Gradient ids must be unique per instance (use `useId`).
- [ ] **Step 3:** `Logo` links to `/` and renders the mark plus the wordmark: "Swadharma"
  in Fraunces 600 and a wide-tracked "IAS" in `primary.main`.
- [ ] **Step 4:** Rewrite `public/favicon.svg` with the same geometry in white on the same
  gradient, plus a `prefers-color-scheme: dark` block that swaps in a deeper badge.
- [ ] **Step 5:** `index.html`: title `Swadharma IAS — UPSC, TGPSC & APPSC Prelims Test
  Series`, neutral meta description (no price claim), `theme-color` `#0F766E` with a
  `media` variant for dark, and the favicon link.
- [ ] **Step 6:** `npm run build` must pass; visually confirm the glyph in the built
  `dist/assets/*.css|js` output.
- [ ] **Step 7:** Commit `feat(brand): minimal inline-SVG swan mark, wordmark and favicon`
  and push.

### Task 3: Shared UI kit and charts

**Files:**
- Modify: `src/components/ui.jsx`
- Modify: `src/components/charts/ScoreDonut.jsx`
- Modify: `src/components/charts/SubjectBars.jsx`
- Modify: `src/components/charts/TrendChart.jsx`
- Modify: `src/components/ErrorBoundary.jsx`
- Modify: `src/components/ProtectedRoute.jsx`

**Interfaces:**
- Produces: `SectionHeading({ eyebrow, title, subtitle, align, maxWidth })`,
  `StatCard({ icon, label, value, caption, accent })`, `EmptyState({ icon, title,
  description, action })`, `LoadingState({ lines, height })`, `PageHeader({ eyebrow, title,
  description, actions })`, `IconTile({ icon, tone, size })`, `Eyebrow({ children })`.
- All chart components keep their current props and default exports.

- [ ] **Step 1:** Rewrite `src/components/ui.jsx` with the six components above, styled on
  the new tokens (no Poppins, no indigo hard-codes).
- [ ] **Step 2:** Restyle the three charts to the brand palette: donut stroke
  `#0F766E → #0E7490`, trend line `#0F766E` with a teal area fill, bars teal with a
  per-row `color` override still honoured. Keep them dependency-free SVG with
  `aria-label`s.
- [ ] **Step 3:** Restyle `ErrorBoundary` (friendly panel + "Reload" + "Back home") and
  `ProtectedRoute` (spinner + brand mark) without changing their props/redirect logic.
- [ ] **Step 4:** `npm run build && npm run lint` must pass.
- [ ] **Step 5:** Commit `feat(ui): shared primitives, brand charts and app-state panels`
  and push.

### Task 4: Header and footer

**Files:**
- Modify: `src/components/Navbar.jsx`
- Modify: `src/components/Footer.jsx`

**Interfaces:**
- Consumes: `SwanMark` / `Logo` from Task 2, `useAuth`, `useTheme`.
- Produces: same default exports and the same nav destinations.

- [ ] **Step 1:** Rewrite the header: sticky, blurred, hairline bottom border, `Logo` on
  the left, nav links (`Home`, `Subjects`, `How it works`, `FAQ`, `About`) from `lg` up,
  theme toggle, and guest (`Sign in` + `Start practising`) or user (avatar menu with
  Dashboard / My tests / Profile / Sign out) actions.
- [ ] **Step 2:** Mobile: a right-hand drawer sheet with the links, the theme toggle and
  the primary CTA; every item ≥ 44 px.
- [ ] **Step 3:** Rewrite the footer: dark ink panel, brand column, explore/subject/contact
  columns, bottom bar with the year and the "not affiliated with UPSC" disclaimer.
- [ ] **Step 4:** `npm run build && npm run lint` must pass.
- [ ] **Step 5:** Commit `feat(ui): rebuild header and footer` and push.

### Task 5: Landing page and about page

**Files:**
- Modify: `src/pages/Home.jsx`
- Modify: `src/pages/About.jsx`

**Interfaces:**
- Consumes: `fetchSubjectCounts()` (unchanged), `useAuth`, `SectionHeading`, `StatCard`.
- Produces: same default export; anchors `#subjects`, `#how-it-works`, `#faq` must keep
  working (the header links to them).

- [ ] **Step 1:** Hero: eyebrow pill, h1 "Practise like the real exam", neutral sub-copy,
  CTAs "Start practising free today" / "See how it works", a trust row, and the console
  mock (static markup only, `aria-hidden`).
- [ ] **Step 2:** Spec strip: 4 facts (subjects, question count from the live fetch, UPSC
  timing, marking scheme).
- [ ] **Step 3:** Feature grid (6 cards), 3-step "how it works", live subject grid with
  question counts, three testimonial quotes with **no** star rating, FAQ accordion, and a
  closing CTA band.
- [ ] **Step 4:** Apply the copy rules: remove every "free during launch" / "unlimited" /
  "₹0" string, keep the FAQ answers factual.
- [ ] **Step 5:** Rewrite `About.jsx` to the same system: mission hero, four pillars, "how
  the bank is built", disclaimer, CTA band.
- [ ] **Step 6:** `npm run build && npm run lint` must pass; grep the built bundle for the
  forbidden words.
- [ ] **Step 7:** Commit `feat(ui): rebuild landing and about pages` and push.

### Task 6: Auth shell

**Files:**
- Create: `src/components/AuthShell.jsx`

**Interfaces:**
- Produces: `AuthShell({ title, subtitle, children, footer, aside })` — a two-column
  layout: brand panel (hidden below `md`) + form card; on mobile the swan mark and
  wordmark sit above the card.

- [ ] **Step 1:** Build `AuthShell` with the brand panel: gradient badge with the swan
  mark, headline, three value props, and a neutral footnote.
- [ ] **Step 2:** On mobile the panel collapses to a compact header with `Logo` centred
  above the card.
- [ ] **Step 3:** `npm run build && npm run lint` must pass.
- [ ] **Step 4:** Commit `feat(ui): shared auth shell for the sign-in and OTP screens` and
  push.

### Task 7: Authentication screens

**Files:**
- Modify: `src/pages/Login.jsx`
- Modify: `src/pages/VerifyEmail.jsx`
- Modify: `src/pages/ForgotPassword.jsx`
- Modify: `src/pages/ResetPassword.jsx`

**Interfaces:**
- Consumes: `AuthShell`, `Logo`.
- Backend contract unchanged: `supabase.auth.signInWithPassword`, `supabase.auth.signUp`
  with `options.data.full_name`, `supabase.auth.updateUser`, and the `otpService`
  functions `sendVerificationCode`, `verifyEmailAddress`, `sendPasswordResetCode`,
  `resetPassword`.

- [ ] **Step 1:** `Login.jsx`: keep the exact auth calls and validation, swap the layout
  for `AuthShell`, restyle the tabs into a segmented control, add show/hide password,
  keep the "Forgot password?" link and the `location.state.from` redirect.
- [ ] **Step 2:** `VerifyEmail.jsx`: segmented 6-cell code display driven by the same
  single controlled input (paste and backspace keep working), resend cooldown unchanged
  (60 s), sign-out link unchanged, `refreshProfile()` + navigate to `/dashboard`
  unchanged.
- [ ] **Step 3:** `ForgotPassword.jsx`: keep the two steps (email → code + new password)
  and the `resetPassword({ email, code, newPassword })` call; add a step indicator.
- [ ] **Step 4:** `ResetPassword.jsx`: keep the `PASSWORD_RECOVERY` listener and
  `updateUser({ password })`; restyle only.
- [ ] **Step 5:** `npm run build && npm run lint` must pass; grep `src/pages/Login.jsx` to
  confirm the Supabase calls are unchanged.
- [ ] **Step 6:** Commit `feat(ui): rebuild sign-in, verification and password recovery
  screens` and push.

### Task 8: Dashboard

**Files:**
- Modify: `src/pages/Dashboard.jsx`

**Interfaces:**
- Consumes: `fetchSubjectCounts`, `fetchMyAttempts`, `startExam` (unchanged),
  `appConfig.minQuestions/maxQuestions/defaultQuestions`, `StatCard`, `TrendChart`,
  `SubjectBars`.
- Produces: `startExam({ subjectSlugs, numQuestions, difficulty })` payload unchanged.

- [ ] **Step 1:** Header row: greeting, subtitle, "History" and "Full mixed paper"
  actions.
- [ ] **Step 2:** 4 stat cards (papers, average, best, questions solved).
- [ ] **Step 3:** Paper builder: subject cards with question counts and a per-subject
  "Start" action, a question-count slider with presets, a difficulty segmented control,
  a live summary (questions / subjects / minutes / max marks) and the primary
  "Start exam" button.
- [ ] **Step 4:** Right rail: quick-start card, recent papers with score bars, and the
  "how the timing works" note; on mobile the rail stacks under the builder.
- [ ] **Step 5:** Resume banner for an in-progress attempt (link to `/exam/:id`).
- [ ] **Step 6:** `npm run build && npm run lint` must pass; confirm the
  `start_exam` parameter names are untouched.
- [ ] **Step 7:** Commit `feat(ui): rebuild the dashboard and paper builder` and push.

### Task 9: Exam console

**Files:**
- Modify: `src/pages/Exam.jsx`

**Interfaces:**
- Consumes: `fetchAttemptQuestions(attemptId)`, `submitExam(attemptId, answers)`,
  `submit_exam` payload shape `{ p_attempt_id, p_answers }` (unchanged).
- Preserves: `localStorage` key `swadharma:attempt:<id>` and the
  `{ answers, marked }` shape; the `beforeunload` guard; keyboard shortcuts A–D, ←/→, M;
  auto-submit at zero; redirect to `/result/:id` on submit.

- [ ] **Step 1:** Sticky header: palette button (mobile), question counter, paper title,
  help button, countdown chip (amber under 10 min, red under 5 min), submit button, and a
  progress rail.
- [ ] **Step 2:** Question card: subject / category / difficulty chips, the question text
  at a comfortable reading size, and four option rows (letter badge + text) at ≥ 52 px
  height, selected state in brand teal.
- [ ] **Step 3:** Action row: "Mark for review", "Clear response", "Previous",
  "Save & next"; keyboard hint on desktop.
- [ ] **Step 4:** Palette: sticky rail from `md`, bottom-sheet drawer below `md`, with the
  three state colours (answered / marked / not answered) and their legend.
- [ ] **Step 5:** Fixed mobile bottom bar with the answered count, "Palette" and "Submit";
  submit-confirmation dialog and shortcut dialog restyled.
- [ ] **Step 6:** `npm run build && npm run lint` must pass; confirm `submitExam` and the
  storage key are unchanged.
- [ ] **Step 7:** Commit `feat(ui): rebuild the CBT exam console` and push.

### Task 10: Result page

**Files:**
- Modify: `src/pages/Result.jsx`

**Interfaces:**
- Consumes: `fetchAttemptResult(attemptId)`, `fetchMyAttempts()` (unchanged),
  `ScoreDonut`, `SubjectBars`, `TrendChart`, `StatCard`.
- Preserves: the result payload shape from `normalizeResult` (score, maxScore, correct,
  incorrect, unanswered, percentage, durationMinutes, details[]).

- [ ] **Step 1:** Score hero: verdict chip, `score / maxScore`, breakdown sentence,
  attempt timestamp, donut gauge.
- [ ] **Step 2:** 4 stat cards (correct / incorrect / skipped / time taken).
- [ ] **Step 3:** Subject accuracy bars and score trend side by side.
- [ ] **Step 4:** Answer review: filter chips with counts, accordion rows showing the
  question, the correct option, your option, the explanation and the source/year.
- [ ] **Step 5:** `npm run build && npm run lint` must pass.
- [ ] **Step 6:** Commit `feat(ui): rebuild the result and answer-review page` and push.

### Task 11: Attempts and profile

**Files:**
- Modify: `src/pages/Attempts.jsx`
- Modify: `src/pages/Profile.jsx`

**Interfaces:**
- Consumes: `fetchMyAttempts`, `fetchSubjectCounts`, `updateProfileName` (unchanged).

- [ ] **Step 1:** Attempts: stats, All / Completed / In-progress filters, one row per
  attempt with score, progress bar and Review/Resume action, empty state.
- [ ] **Step 2:** Profile: identity card with the swan-style avatar, editable display
  name, read-only e-mail, sign out, and a neutral note (no plan/billing language).
- [ ] **Step 3:** `npm run build && npm run lint` must pass.
- [ ] **Step 4:** Commit `feat(ui): rebuild attempts history and profile` and push.

### Task 12: Copy sweep and consistency pass

**Files:**
- Modify: any `src/` file still carrying old-brand copy.

- [ ] **Step 1:** `grep -rniE "free forever|free during launch|unlimited|₹0|subscription|free for all" src/ index.html`
  must return nothing.
- [ ] **Step 2:** `grep -rn "Poppins" src/` must return nothing; `grep -rn "#4F46E5\|#7C3AED" src/`
  must return nothing.
- [ ] **Step 3:** Re-read each page top to bottom for leftover old-brand headings or
  "🚀"-style emoji and fix them.
- [ ] **Step 4:** `npm run build && npm run lint` must pass.
- [ ] **Step 5:** Commit `copy: neutral pricing language and brand consistency sweep` and
  push.

### Task 13: Verification

**Files:**
- Create: `scripts/smoke-render.mjs` (render-only check, no test framework dependency)

**Interfaces:**
- Consumes: the built app.

- [ ] **Step 1:** Add `scripts/smoke-render.mjs`: use Vite's SSR build to render the app
  with a stubbed Supabase client and assert every route produces non-empty markup.
  Add `"smoke": "node scripts/smoke-render.mjs"` to `package.json`.
- [ ] **Step 2:** Run `npm run build`, `npm run lint`, `npm run smoke` — all pass.
- [ ] **Step 3:** Confirm `git diff main --stat -- supabase src/config src/services src/lib
  src/context/AuthContext.jsx` is empty (nothing protected changed).
- [ ] **Step 4:** Commit `test: add a route smoke-render check for the rebuilt UI` and
  push.

### Task 14: Report

**Files:**
- Create: `UI_REBUILD_REPORT.md`

- [ ] **Step 1:** Write the report: what changed, the design system, the swan mark, the
  per-page summary, the copy rules applied, the backend contract that stayed identical,
  the verification evidence and the commit list.
- [ ] **Step 2:** `npm run build && npm run lint && npm run smoke` pass one last time.
- [ ] **Step 3:** Commit `docs: UI rebuild report` and push.
