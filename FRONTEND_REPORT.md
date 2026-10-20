# FRONTEND_REPORT.md

Frontend of the rebuilt **Swadharma IAS** free UPSC Prelims test series
(React 19 + Vite 5 + Tailwind CSS 4 + React Router 6, Supabase Auth/Postgres).
Everything under `supabase/` was owned by the parallel backend agent and was
**not** touched here.

## 1. What is in the app

| Route | Page | Purpose |
|-------|------|---------|
| `/` | `Home` | Landing page: live subject list + question counts (public RPC), value props, CTA |
| `/about` | `About` | How the free test series works, marking scheme, fairness notes |
| `/login` | `Login` | Sign in / sign up / forgot password in one screen |
| `/reset-password` | `ResetPassword` | Landing page of the recovery link, sets the new password |
| `/dashboard` | `Dashboard` | Pick subjects, number of questions, difficulty → start exam |
| `/exam/:attemptId` | `Exam` | Timed paper, question palette, mark for review, submit |
| `/result/:attemptId` | `Result` | Score, subject-wise breakdown, answer key, explanations |
| `/attempts` | `Attempts` | Attempt history with stats and resume for unfinished papers |
| `/profile` | `Profile` | Display name, e-mail (read only), sign out |

`/dashboard`, `/exam/*`, `/result/*`, `/attempts` and `/profile` are behind
`ProtectedRoute` (redirect to `/login`, intended location preserved).

Removed: pricing, checkout, courses, orders/coupons, admin and debug pages
(`InitializeDb`, `CheckColumns`, `AddQuestions*`, `TestResults`, `WriteTest`,
`Contact`), the old `users` API layer, the Pexels helper and every reference to
the previous Supabase project.

## 2. Backend contract used (from `KILO_TASK.md`)

All calls go through `src/services/examService.js`; nothing else touches
Supabase directly.

| RPC | Used by | Notes |
|-----|---------|-------|
| `subject_question_counts()` | Home, Dashboard, Attempts | public (anon + authenticated) |
| `start_exam(subject_slugs, num_questions, difficulty)` | Dashboard | returns attempt id, questions, options — **no answers** |
| `get_attempt_questions(attempt_id)` | Exam | re-opens an attempt after a reload, keeps the server timer honest |
| `submit_exam(attempt_id, answers)` | Exam | server-side scoring, returns score + answer key + explanations |
| `get_attempt_result(attempt_id)` | Result | stored result of a finished attempt |
| `my_attempts()` | Dashboard, Attempts | history incl. unfinished attempts |

Answers are sent as a flat `{ question_id: "A" }` map; the RPC also accepts the
array form. Credentials live in `src/config/env.js`
(`https://oxeqjtzeamdgyeqhlljk.supabase.co` +
publishable key) and can be overridden with `VITE_SUPABASE_URL` /
`VITE_SUPABASE_ANON_KEY`.

The client never sees the answer key before submission — the key stays in
`private.question_answers` and is only exposed through the `SECURITY DEFINER`
RPCs.

## 3. Feature highlights

**Auth** — email/password sign-up, sign-in, sign-out and password reset via
Supabase Auth; session persisted in `localStorage` and restored on reload;
profile row created/updated through the `profiles` table; display name
editable in the profile page.

**Dashboard** — subject checkboxes with live question counts, question-count
input + presets (10/20/50/100/150), difficulty filter, live summary of
questions / subjects / pool / time limit / maximum score, quick starts
(*Full mixed paper* = all eight subjects, 100 Q in 120 min, and a one-click
*Test* button per subject), personal stats and a "resume paper" banner for an
unfinished attempt.

**Exam screen** — server-derived countdown that survives a page reload, question
palette (answered / marked / unanswered), mark for review, clear response,
*Save & next*, previous/next, confirm-before-submit dialog with the exact
answered/unanswered tally, auto-submit when the clock hits zero, and a
beforeunload guard. Keyboard shortcuts: `A`–`D` answer, `←`/`→` navigate, `M`
marks for review. Answers and marks are cached in `localStorage` per attempt so
a refresh or a dropped connection does not lose the paper. On phones the
palette is a bottom-sheet drawer and a sticky action bar keeps *Palette* and
*Submit* one tap away.

**Result** — score against the maximum (+2 / −0.66 / 0), progress bar, correct /
incorrect / unanswered counters, time taken, subject-wise performance table,
filters (all / correct / incorrect / unanswered) and an expandable review of
every question with the correct option, the chosen option and the explanation.

**History** — papers attempted, questions solved, average and best score, a
resume action for unfinished papers and a review link for finished ones.

## 4. Design, performance and quality

* **Token based theming** — the neutral palette (`white`, `slate`, `gray`) and
  the blue scale are CSS variables, so the existing utility classes follow the
  theme; light/dark switch only flips the variables (`src/index.css`). The
  toggle in the navbar respects the system preference and remembers the choice.
* **No web fonts** — a system font stack replaces the Google Fonts import: no
  extra DNS/TLS round trip, no layout shift, no external dependency.
* **Small bundle** — every route is lazily loaded, icons come from
  `lucide-react` (tree shaken, one chunk per icon) and the unused
  `framer-motion` / `uuid` dependencies and the unused `Card` component were
  deleted.

  | Asset | Raw | Gzip |
  |-------|-----|------|
  | `index` (React + router + Supabase) | 431.8 kB | 126.6 kB |
  | `index.css` | 38.3 kB | 7.6 kB |
  | Exam route | 14.7 kB | 4.4 kB |
  | Dashboard route | 10.5 kB | 3.4 kB |
  | Result route | 10.5 kB | 3.4 kB |
  | Login route | 9.3 kB | 2.8 kB |

* **Mobile first** — single column under `sm`, sticky action bar and bottom
  sheet in the exam, hamburger menu, horizontally scrollable result table.
* **Accessibility** — semantic landmarks, labelled inputs, `aria-label` on the
  palette buttons and the toggle, visible focus rings, `prefers-reduced-motion`
  support, 44 px touch targets.
* `npm run build` and `npm run lint` both pass; ESLint runs with the React
  Compiler rules enabled (no warnings).

## 5. Commits (frontend only, in order)

1. `chore: remove pricing, checkout, admin and debug pages`
2. `feat: rebuild app shell with Supabase auth foundation`
3. `feat: landing, about and authentication pages`
4. `feat: exam engine — dashboard, timed exam, result and attempt history`
5. `perf: drop unused dependencies and the unused Card component`
6. `feat: token based light and dark theme with a system font stack`
7. `feat: exam screen — save and next, clear response, keyboard shortcuts, mobile palette drawer`
8. `feat: dashboard quick starts, personal stats and resumable attempt history`
9. `feat: subject-wise result breakdown, favicon and service cleanup`
10. `docs: refresh project docs for the free test-series rebuild`
11. `docs: frontend report` (this file)

No `supabase/` file was added, modified or committed by the frontend work, and
nothing was pushed.

## 6. Notes / open items for the supervisor

* The live project had **no schema applied** while the frontend was built
  (`subject_question_counts` and the `public.subjects` table are not in the
  PostgREST schema cache yet), so the UI could not be exercised against real
  data. The frontend follows the contract in `KILO_TASK.md` and
  `supabase/migrations/003_rpc.sql` exactly; the landing page and the
  dashboard degrade with a friendly message while the database is not ready.
* After the migrations and the seed files are applied, one manual pass is
  recommended: sign-up → dashboard → start a 20 question paper → submit →
  review the result and the history.
* `scripts/` (seed generator helpers) and every file under `supabase/` belong
  to the backend agent and were left untouched.
