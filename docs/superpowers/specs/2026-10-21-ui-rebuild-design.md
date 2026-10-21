# Swadharma IAS — UI/UX Rebuild Design Spec

**Date:** 2026-10-21
**Scope:** presentation layer only (`src/`, `public/`, `index.html`, `package.json` fonts)

The owner was not happy with the current UI/UX of swadharmaias.in. This spec is the
result of a self-directed brainstorming pass: the brief said "decide everything on your
own; never wait for human answers", so every open question below is answered with a
decision and a reason, and each decision is marked as **my call**.

---

## 1. Intent and the why

The product is a UPSC/TGPSC/APPSC prelims test series: timed papers, official marking,
server-side scoring, explanations after submission. The old UI was a generic indigo/violet
SaaS template — gradient buttons, glassmorphism cards, purple everywhere, and copy that
kept promising the product was "free during launch". It looked like a landing page, not
like a serious examination console, and it made claims about price that the business had
not authorised.

The rebuild therefore has two jobs:

1. **Look like an exam product, not a marketing template.** Calm, editorial, high-contrast,
   dense where it matters (paper builder, exam console, result review) and spacious where
   it matters (landing, auth).
2. **Say nothing about price that the business has not decided.** Neutral copy only.

## 2. Goals, non-goals, anti-goals

**Goals**
- A distinct, premium, mobile-first visual system end to end (all nine routes).
- A minimal swan mark, drawn as inline SVG, legible on light and dark backgrounds, used
  in the header, on the auth pages and as the favicon.
- A coherent type scale, spacing rhythm, radius scale, shadow scale and colour system.
- Every interactive target ≥ 44 px on touch, visible focus rings, reduced-motion support.
- Copy that is neutral about pricing: "Start practising free today" is allowed, "free
  forever" / "unlimited" / "free during launch" are not.

**Non-goals**
- No backend, schema, RPC, edge-function, auth-flow or scoring changes.
- No new runtime dependencies (one self-hosted font package is added).
- No new routes, no feature removal, no change to what a page *does*.

**Anti-goals**
- No "AI slop" look: no glassmorphism, no floating gradient blobs, no emoji in the UI, no
  generic purple gradients, no fabricated testimonials with ratings.
- No pricing promises of any kind.

## 3. Constraints (hard)

- `supabase/**` (migrations, edge functions, seed, questions) is **not touched**.
- RPC names and parameters are **not touched**.
- `src/config/env.js` is **not touched**.
- The auth / Brevo OTP flow logic is **not touched** — only the markup around it.
- Exam scoring is **not touched** — the `submit_exam` payload shape stays exactly as is.
- `src/services/**`, `src/lib/supabase.js`, `src/context/AuthContext.jsx` stay as they are.
- `npm run build` must pass; `npm run lint` must pass.
- Commits are small and pushed to `origin/main` frequently so the Vercel preview moves.

## 4. Design decisions (my calls)

### 4.1 Concept — "calm ink on paper"

The visual idea is a **quiet editorial**: warm paper background, deep ink text, one
confident teal, hairline rules, a soft serif for headings, and a lot of air. The exam
console is the opposite — tighter, denser, higher contrast, closer to a real CBT console
than to a brochure.

Rejected: the old indigo→violet→blue gradient identity, glass blur cards, emoji, the
"unlimited / free / ₹0" stat band, and the fake 4.8-star rating.

### 4.2 Colour

| Token | Light | Dark | Note |
|---|---|---|---|
| `background.default` | `#F6F4EF` warm paper | `#0A1113` | page canvas |
| `background.paper` | `#FFFFFF` | `#111A1C` | cards, sheets |
| `text.primary` | `#101A1C` ink | `#EAF2F1` | |
| `text.secondary` | `#56656A` | `#9BAFB0` | |
| `primary.main` | `#0F766E` teal | `#2DD4BF` | brand |
| `primary.dark` | `#0B4F4A` | `#14B8A6` | |
| `success.main` | `#15803D` | `#4ADE80` | correct |
| `error.main` | `#B42318` | `#F97066` | wrong |
| `warning.main` | `#B54708` | `#FDB022` | timer / marked |
| `info.main` | `#0E7490` | `#38BDF8` | |
| `divider` | `rgba(16,26,28,0.10)` | `rgba(233,242,241,0.12)` | hairlines |

Brand gradient (used for the mark badge, the CTA band and the result hero):
`linear-gradient(135deg, #0F766E 0%, #0E7490 100%)` — teal → cyan, never purple.

### 4.3 Type

- **Display / headings:** *Fraunces Variable* (`@fontsource-variable/fraunces`, wght axis,
  36 KB latin woff2) — a warm serif that carries the "editorial" tone. Used for h1–h4,
  the wordmark and the big score numbers.
- **UI / body:** *Inter* (already installed) at 400/500/600/700 — legible at small sizes
  for dense exam content.
- *Poppins* is dropped; the old `fontFamily: '"Poppins", sans-serif'` hacks disappear.
- Scale: h1 `clamp(2.4rem, 6vw, 4rem)`, h2 `clamp(1.9rem, 4vw, 2.75rem)`,
  h3 `clamp(1.4rem, 2.6vw, 1.9rem)`, body 1rem/1.7, caption 0.8125rem.
- Numerals in data views use `font-variant-numeric: tabular-nums`.

### 4.4 Shape, elevation, motion

- Radius: 10 px (small controls) / 14 px (inputs, buttons) / 20 px (cards) / 28 px (large
  surfaces) / 999 px (pills).
- Shadows are ink-tinted and low-opacity: `0 1px 2px rgba(16,26,28,.04),
  0 12px 32px -24px rgba(16,26,28,.35)`.
- Motion: 160–260 ms, `cubic-bezier(.22,1,.36,1)`; `prefers-reduced-motion` respected.

### 4.5 The swan mark

A single continuous stroke: a shallow boat for the body, one curve rising into the neck,
a filled head and a small beak. Geometry lives in a 48×48 viewBox, stroke width 3.6,
round caps.

- **In-app (`SwanMark`):** the glyph sits on a teal→cyan gradient disc/rounded square, so
  the mark is self-contained and legible on **any** page background, light or dark. The
  wordmark next to it uses `text.primary`, which flips with the theme.
- **Favicon (`public/favicon.svg`):** the same geometry in white on the same gradient
  rounded square, plus a `prefers-color-scheme` block that deepens the badge in dark
  browsers.
- Both are inline SVG, no image request, no icon font.

### 4.6 Layout and responsive rules

- Content max width 1200 px (1280 px for the dashboard), 20–24 px gutters.
- Mobile-first: single column everywhere; two columns only from `md`/`lg`.
- Exam: sticky header + fixed bottom action bar on mobile; sticky palette rail from `md`.
- Auth: brand panel hidden below `md`; the swan mark + wordmark sit above the form.

### 4.7 Copy rules (mandatory)

- Allowed: "Start practising free today", "Create a free account", "No card needed to
  start", "Practice at your own pace".
- Forbidden: "free forever", "free during launch", "unlimited", "₹0", "price", "plan",
  "subscription", "free for all", and any similar permanence claim.
- Every CTA that implies cost uses the neutral form above.

## 5. Page-by-page intent

| Route | New intent |
|---|---|
| `/` | Editorial landing: hero with a live console mock, spec strip (timing, marking, scoring, explanations), 6-card feature grid, 3 steps, live subject list, testimonial quotes without fake ratings, FAQ, CTA band. |
| `/about` | Mission + how the bank is built + disclaimer. |
| `/login` | Split auth: left brand panel (swan, value props), right card with Sign in / Create account tabs. |
| `/verify-email` | 6-digit OTP entry with a segmented code display and resend cooldown. |
| `/forgot-password` | Email → code → new password, one card, step indicator. |
| `/reset-password` | New password from the recovery link. |
| `/dashboard` | Greeting, 4 stats, score trend + subject bars, paper builder (subjects, count, difficulty, live summary), quick-start, recent papers, resume banner. |
| `/exam/:id` | CBT console: sticky header with server clock, progress rail, question card, four option rows, palette rail (desktop) / bottom sheet (mobile), mark-for-review, clear response, keyboard shortcuts, auto-submit. |
| `/result/:id` | Score hero + donut, 4 stats, subject bars + trend, filterable answer review with explanations. |
| `/attempts` | History with stats and All / Completed / In-progress filters. |
| `/profile` | Identity card, editable display name, sign out. |

## 6. Acceptance criteria

1. `npm run build` exits 0; `npm run lint` reports no errors.
2. All nine routes render without a runtime error (smoke-render check).
3. No file under `supabase/` is modified; `src/config/env.js`, `src/services/**`,
   `src/lib/supabase.js` and `src/context/AuthContext.jsx` are byte-identical to `main`.
4. The swan mark appears in the header, on the auth pages and as the favicon.
5. No occurrence of the forbidden pricing words in `src/` or `index.html`.
6. Every page is usable at 375 px width with 44 px touch targets.
