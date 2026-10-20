# FRONTEND_REPORT.md

Frontend of **Swadharma IAS** — a free UPSC Prelims test series.
React 19 + Vite 5 + **Material UI v9** (with Emotion) + React Router 6, backed by
Supabase Auth/Postgres. Nothing under `supabase/` was touched by the frontend work.

> **Revision 2 — full visual redesign.** The first version of this app was built with
> Tailwind and a hand-rolled theme. It has now been rebuilt on MUI with a proper
> design system, premium page layouts and charts. All Supabase logic, RPC calls and
> data flows are unchanged.

---

## 1. Design system

**Method.** The *UI UX Pro Max* skill (`npx uipro-cli init`) was installed into
`.kilo/skills/ui-ux-pro-max` and used to generate the design system, style,
typography, chart, landing-structure and UX guidance for an education/exam product.
The generated "claymorphism + children's fonts" recommendation was overridden where it
conflicted with the brief: a UPSC test series needs a *professional* look, so the
skill's **Soft UI Evolution** style, **Modern Professional** typography pairing and
its accessibility/motion/loading rules were adopted instead.

| Token | Value | Source |
|---|---|---|
| Primary (brand) | `#4F46E5` indigo | "Learning indigo" palette |
| Secondary | `#7C3AED` violet | gradient partner |
| Success / progress | `#16A34A` / `#22C55E` | "progress green" |
| Warning / error | `#F59E0B` / `#E11D48` | status semantics |
| Hero gradient | `135deg, #4F46E5 → #6D28D9 → #2563EB` | brand |
| Display type | **Poppins** 600/700/800 | "Modern Professional" pairing |
| Body type | **Inter** 400/500/600/700 | readability for exam content |
| Radius | 12 px controls, 20 px cards, 999 px pills | Soft UI Evolution |
| Shadows | soft, multi-layer, hover elevation | Soft UI Evolution |
| Motion | 180–300 ms, `prefers-reduced-motion` honoured | UX guidelines |

**Files**

* `src/theme/theme.js` — `createTheme` for light and dark mode: palette, typography,
  shape, and ~25 component overrides (Button, Card, TextField, Chip, Tabs, Accordion,
  Dialog, Alert, LinearProgress, Slider, ToggleButton, TableCell, …).
* `src/context/ThemeContext.jsx` — colour-mode provider (system preference on first
  visit, persisted in `localStorage`) that feeds the MUI `ThemeProvider`.
* `src/index.css` — only what a component library cannot express: reset, scrollbars,
  focus defaults, selection, gradient-text and entrance-animation helpers.
* `src/components/ui.jsx` — `SectionHeading`, `StatCard`, `EmptyState`, `LoadingState`.
* `src/components/charts/` — `ScoreDonut`, `TrendChart`, `SubjectBars` (hand-built SVG,
  theme aware, no chart library).
* `src/components/Logo.jsx`, `Navbar.jsx`, `Footer.jsx`, `ProtectedRoute.jsx`.

**Charts are dependency-free SVG.** A donut gauge, a score-trend area/line chart and
horizontal comparison bars are ~240 lines of SVG in total, which keeps the chart
payload at 0 kB and lets them inherit theme colours and stay keyboard/screen-reader
friendly (each chart carries an `aria-label` and every bar has a text value).

---

## 2. Pages

| Route | What it is now |
|---|---|
| `/` | **Hero landing** — gradient hero with a live CBT console mock-up, live stats band (subjects, question count, ₹0, unlimited papers), 6-card feature bento grid, 3-step "how it works", live subject cards with question counts, testimonials, 7-item FAQ accordion, gradient CTA band, rich footer. |
| `/about` | Mission page: four pillar cards, "how the question bank is built", gradient CTA. |
| `/login` | **Split-panel auth** — brand panel with value props on the left, MUI card on the right with Sign in / Create account tabs, show-hide password, inline "forgot password" flow, inline alerts, redirect back to the page the user wanted. |
| `/reset-password` | Recovery landing with new/confirm password, success state. |
| `/dashboard` | Greeting header, 4 stat cards, **score-trend chart**, **subject-performance bars**, paper builder (subject cards with question counts, question slider + presets, difficulty toggle, live summary), quick "full mixed paper" CTA, recent-paper progress bars, resume banner for unfinished papers. |
| `/exam/:id` | **Real CBT console** — sticky header with server-derived countdown (turns red under 5 min), progress bar, question palette with UPSC colour states (green answered / amber marked / white unanswered, current question ringed), sticky sidebar on desktop and a bottom-sheet drawer on mobile, mark for review, clear response, previous / save & next, keyboard shortcuts (A–D, ←/→, M), auto-submit at zero, submit-confirmation dialog, beforeunload guard, per-attempt `localStorage` cache. |
| `/result/:id` | **Result** — gradient score hero with SVG donut gauge and verdict chip, correct/incorrect/skipped/time-taken stat cards, **subject-wise accuracy bars**, **score-trend chart**, filterable answer review (all / correct / incorrect / skipped) with the correct option, the chosen option, the explanation, source and year, and CTAs to take another test. |
| `/attempts` | History with 4 stat cards, All / Completed / In-progress filters, per-attempt score + progress bar, Review and Resume actions. |
| `/profile` | Avatar card, editable display name, e-mail (read only), sign out. |

---

## 3. Backend contract (unchanged, and now correct)

All calls still go through `src/services/examService.js`:

| RPC | Used by |
|---|---|
| `subject_question_counts()` | Home, Dashboard, Attempts (public — anon + authenticated) |
| `start_exam(p_subject_slugs, p_num_questions, p_difficulty)` | Dashboard |
| `get_attempt_questions(p_attempt_id)` | Exam (survives a reload) |
| `submit_exam(p_attempt_id, p_answers)` | Exam |
| `get_attempt_result(p_attempt_id)` | Result |
| `my_attempts()` | Dashboard, Attempts |

**Contract fix.** `get_attempt_result` / `submit_exam` answer with
`attempt_id`, `correct`, `incorrect`, `unanswered`, `max_score` and `percentage` —
not `id` / `correct_count` / `incorrect_count`. The service now normalises the
payload (`normalizeResult`) into one stable shape, so the UI is immune to both
variants and `time taken` is derived from `started_at` / `submitted_at`.

---

## 4. Engineering notes

* **Tailwind removed.** The old utility-class CSS, the PostCSS config and the
  `tailwindcss` / `@tailwindcss/vite` / `@tailwindcss/postcss` dependencies are gone;
  MUI is now the single design system. `lucide-react`, `clsx` and `tailwind-merge`
  were dropped as well (MUI icons replaced Lucide, `sx` replaced `cn`).
* **Fonts self-hosted**, latin subset only (`@fontsource/inter`, `@fontsource/poppins`)
  — 7 woff2 files, 120 kB total, no Google Fonts request, no layout shift.
* **Code splitting** — every route is `React.lazy`; Vite splits `react` and `mui`
  into their own chunks.
* **Accessibility** — semantic landmarks, labelled fields, `aria-label` on palette
  buttons and icon buttons, `aria-pressed`/`aria-current` state, visible focus rings
  from the theme, keyboard-operable subject cards, 44 px touch targets, `alt`/`aria`
  on decorative mocks (`aria-hidden`), and `prefers-reduced-motion` respected.
* **Responsive** — 375 / 768 / 1024 / 1440 layouts; the exam switches from a sticky
  sidebar to a bottom sheet, the grids collapse from 4 → 2 → 1 columns.
* **Quality gates** — `npm run build` and `npm run lint` pass (React Compiler lint
  rules included, zero warnings). Every page is additionally server-rendered in a
  smoke test that renders all nine routes with `react-dom/server`; this caught and
  fixed a missing import and several invalid Stack props before shipping.

**Bundle**

| Asset | Raw | Gzip |
|---|---|---|
| `mui` chunk (MUI + Emotion + icons) | 393.7 kB | 121.3 kB |
| `index` chunk (app, Supabase client, router glue) | 375.7 kB | 109.1 kB |
| `react` chunk | 33.5 kB | 11.8 kB |
| CSS | 3.0 kB | 1.0 kB |
| Home / Dashboard / Exam / Result routes | 18.6 / 13.1 / 14.0 / 11.7 kB | 6.0 / 4.5 / 4.8 / 4.1 kB |
| Self-hosted fonts | 120 kB (7 woff2) | — |

Total first load ≈ 242 kB gzip of JavaScript plus 7 font files.

---

## 5. Commits (frontend only)

1. `feat: MUI design system foundation — brand theme, tokens and app shell`
2. `feat: premium landing page with hero, stats, features, subjects, testimonials and FAQ`
3. `feat: polished split-panel auth pages with sign in, sign up and password reset`
4. `feat: dashboard with score trend, subject performance and a paper builder`
5. `feat: CBT-style exam screen with timer, question palette and keyboard control`
6. `feat: rich result page with score gauge, charts and full answer review`
7. `feat: attempt history with stats and filters, and a refreshed profile page`
8. `fix: normalise the RPC result payload and polish exam palette, drawer and loading states`
9. `refactor: drop the remaining Tailwind-era helpers and unused dependencies`
10. `docs: frontend report` (this file)

Nothing was pushed, and no `supabase/` file was added, modified or committed.

---

## 6. Open items for the supervisor

* The live project still has **no schema applied** (`public.subjects` and the RPCs are
  absent from the PostgREST schema cache), so the redesigned UI could not be exercised
  against real data. The frontend follows `supabase/migrations/003_rpc.sql` exactly and
  the landing page degrades with a friendly message until the database is ready.
* After the migrations and seeds are applied, one manual pass is recommended:
  sign-up → dashboard → start a 20-question paper → submit → review the result, the
  subject analytics and the history.
* The design skill itself lives in `.kilo/skills/ui-ux-pro-max` (untracked, ~650 kB) —
  keep it local or commit it deliberately as a project skill.
