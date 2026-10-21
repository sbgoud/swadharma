# UI Rebuild Report — Swadharma IAS

A complete, from-scratch rebuild of the frontend of **swadharmaias.in**, a UPSC / TGPSC / APPSC
prelims test series. The previous interface was rejected by the owner; every screen below was
rebuilt on a new design system.

**The backend was not touched.** Not one line of `supabase/`, `src/config/env.js`,
`src/services/examService.js` or `src/context/AuthContext.jsx` changed. Every RPC name, RPC
parameter, scoring rule, auth call and OTP path is byte-identical to before the rebuild. The
change is presentation only.

---

## 1. What changed at a glance

| Area | Before | After |
| --- | --- | --- |
| Type | Poppins for everything | Fraunces Variable for display, Inter for interface and exam content |
| Colour | Indigo/violet gradients on white | Warm paper canvas, deep ink text, one teal that carries every action |
| Surfaces | Gradient cards, floating blobs | Flat paper panels, 1px hairline borders, 20px corners |
| Logo | Abstract "SW" mark | A minimal swan, drawn as inline SVG, plus a matching favicon |
| Landing | Hero, feature grid, testimonial block with a star rating | Editorial hero with a live console mock, factual fact strip, six features, three steps, live subject grid, a result-review teaser, seven FAQs |
| Auth | Indigo panels, plain fields | Shared auth shell with an ink brand panel, segmented sign-in / sign-up switch, six-cell OTP entry |
| Dashboard | Paper builder buried under panels | The builder is the hero: subject cards, length, difficulty, live paper summary |
| Exam | Indigo header, indigo progress bar | Swan mark in the top bar, teal progress, calm option cards, readable timer |
| Result | Indigo gradient hero | Ink hero with the score donut, teal charts, filterable answer review |
| Attempts / Profile | Poppins numerals, old cards | Fraunces figures, shared primitives, no pricing language anywhere |

---

## 2. The design system

Defined once in `src/theme/theme.js` and applied everywhere.

**Colour**

| Token | Light | Dark | Use |
| --- | --- | --- | --- |
| `primary.main` | `#0F766E` teal | `#2DD4BF` | Every action, the logo badge, the charts |
| `secondary.main` | `#0E7490` cyan | `#38BDF8` | Secondary emphasis |
| `success.main` | `#15803D` | `#4ADE80` | Correct answers, completed papers |
| `warning.main` | `#B54708` | `#FDB022` | Marked for review, skipped questions |
| `error.main` | `#B42318` | `#F97066` | Wrong answers, destructive actions |
| `background.default` | `#F6F4EF` warm paper | `#0A1113` | The page canvas |
| `background.paper` | `#FFFFFF` | `#111A1C` | Cards and panels |
| `text.primary` | `#101A1C` ink | `#EAF2F1` | Headings and body |

Every semantic colour carries an explicit `contrastText`, so a bright dark-mode accent is never
paired with white text it cannot carry.

**Type** — Fraunces Variable (display serif) for headings, figures and the wordmark; Inter for
everything else. The scale runs `h1` 2.75rem → `caption` 0.8125rem, with tabular numerals on every
figure so columns of scores line up.

**Shape** — 10px small controls, 14px inputs and buttons, 20px cards, 28px large panels, pills at
999px. MUI multiplies a numeric `borderRadius` by `shape.borderRadius`, so the rebuilt code uses
explicit pixel values throughout.

**Depth** — flat. Cards are a hairline border plus one soft shadow; nothing floats on a gradient.

**Motion** — 180–260ms ease transitions only, plus a 620ms entrance on the hero. Everything is
disabled under `prefers-reduced-motion: reduce`.

---

## 3. The swan mark

A single geometry, drawn once in a 48×48 viewBox, used three ways:

- `SwanMark` — the swan in white on a teal-to-cyan badge (header, favicon, auth panel, loading state).
- `SwanGlyph` — the bare swan in `currentColor`, for placing directly on a surface.
- `public/favicon.svg` — the same geometry, with a `prefers-color-scheme: dark` variant.

The shape is a filled boat-shaped body with a raised tail, a tapered neck rising from the breast,
a round head and a small beak. It was drawn against rendered proofs at 220, 96, 56, 40, 32, 24, 20
and 16 pixels, on both light and dark surfaces, before the final geometry was fixed — at 16px it
still reads as a bird.

The wordmark is "Swadharma" in Fraunces over "IAS" in wide-tracked teal caps, with a light variant
for the ink panels.

---

## 4. Page by page

**Landing (`/`)** — An editorial hero with a static but faithful console mock, a fact strip of
four verifiable numbers (subjects, question count, minutes per full paper, marks per correct
answer), six feature cards, a three-step "how it works" band, the live subject grid fed by the
existing `subject_question_counts` RPC, a result-review teaser that previews the score donut and
subject bars, seven FAQs and a closing call to action.

**About (`/about`)** — Mission, the four pillars of the platform, how the question bank is built,
the brand palette as a swatch strip, a contact block and the platform disclaimer.

**Sign in / sign up (`/login`)** — One screen with a segmented switch, on a shared auth shell: an
ink brand panel on wide screens, a bordered form card on every size. The switch follows the
WAI-ARIA tabs pattern — roving `tabindex`, arrow-key navigation, `aria-controls` on the panel.

**Verify e-mail (`/verify-email`)** — A six-cell code entry over a single real input, so paste,
backspace, arrow keys, one-time-code autofill and the mobile numeric keypad all behave as the
browser intends. A resend is available after a 60-second cooldown.

**Forgot / reset password (`/forgot-password`, `//reset-password`)** — A two-step progress track:
address, then code and new password. Both call the existing `send_reset` and `reset_password` RPCs.

**Dashboard (`/dashboard`)** — The paper builder leads: eight selectable subject cards, a length
slider with presets, a difficulty filter, a live paper summary and the start button. Below it, the
score trend and subject performance; beside it, an ink quick-start panel, recent papers and the
UPSC timing note. The paper summary and the quick-start card share one resolver, so both honour the
same subject selection.

**Exam (`/exam/:id`)** — Chrome-free, as before. A sticky bar with the swan mark, the question
counter, a tabular timer that turns red in the last five minutes and the submit button, over a teal
progress bar. The question card carries the subject, category, difficulty and source, four calm
option rows, mark-for-review and clear-response, and the keyboard-shortcut hint. The palette on the
right (a drawer on a phone) marks answered, unanswered and marked-for-review in the theme tokens.

**Result (`/result/:id`)** — An ink hero with the score in Fraunces and the score donut, four stat
cards, subject-wise accuracy and the score trend, then a filterable answer review where every
question opens to the correct answer, your answer, the written explanation and the source.

**Attempts (`/attempts`)** and **Profile (`/profile`)** — Rebuilt on the same primitives. No pricing
language anywhere.

---

## 5. What was deliberately not changed

| Path | Why it was left alone |
| --- | --- |
| `supabase/` — migrations, edge functions, question seed | The exam engine and the question bank. Out of scope and explicitly protected. |
| `src/config/env.js` | Environment and app configuration. |
| `src/services/examService.js` | Every RPC name and parameter, the result normaliser, the profile helpers. |
| `src/context/AuthContext.jsx` | Session handling, profile loading, sign-out, profile refresh. |
| `src/services/otpService.js` | The Brevo/Supabase OTP send, verify, reset and password-update calls. |
| `src/context/ThemeContext.jsx` (logic) | The persisted colour-mode contract is unchanged; only a `color-scheme` line was added. |
| Scoring | The `+2 / −0.66 / 0` scheme, the server-side scoring and the negative-marking arithmetic are untouched. |

`git diff` over the whole rebuild returns **nothing** for `supabase/`, `src/config/`,
`src/services/` and `src/lib/`. The only change inside `src/context/` is two added lines in
`ThemeContext.jsx` that set `document.documentElement.style.colorScheme` so native controls follow
the mode — the persisted colour-mode contract itself is unchanged.

---

## 6. Copy

Every launch-period pricing claim was removed: "free during launch", "unlimited", "₹0",
"subscription", "price" and standalone "plan" as product-plan language. The only pricing sentences
left are:

- "Start practising free today"
- "Create a free account"
- "No card needed to start"

The fabricated 4.8-star rating and the testimonial block were removed as well. Nothing claims a
permanence, a price or a rating that does not exist.

The platform disclaimer — not affiliated with UPSC, TGPSC or APPSC — appears in the footer, on the
About page and on the auth panel.

---

## 7. Verification

```bash
npm run build     # ✓ passes
npm run lint      # ✓ passes
npm run smoke     # ✓ all 12 routes render cleanly (light)
npm run smoke dark # ✓ all 12 routes render cleanly (dark)
```

`scripts/smoke-render.mjs` drives a headless Chrome over the DevTools protocol. It opens every
route, waits for the app to settle, and fails the run if a route throws, logs a console error, or
renders nothing meaningful. The routes covered are `/`, `/about`, `/login`, `/forgot-password`,
`/reset-password`, `/verify-email`, `/dashboard`, `/attempts`, `/profile`, `/exam/:id`,
`/result/:id` and an unknown route.

Beyond the automated check, every screen was rendered and inspected in light and dark mode at
1440px and 390px wide, including the mobile navigation drawer, the exam console under a 390px
viewport and the six-cell OTP entry.

**Accessibility** — a visible 3px teal focus ring on every interactive element, `aria-label`s on
all icon-only buttons, a roving-tabindex tab pattern on the sign-in switch, keyboard operation
(Enter/Space) on the dashboard subject cards, `aria-pressed` on the option rows, `aria-current` on
the exam palette, `role="img"` with a label on the charts, and full `prefers-reduced-motion`
support.

**Also shipped**

- `scripts/shot.sh` / `scripts/shot.mjs` — screenshot a route in a given scheme and viewport.
- `scripts/devserver.py` — a static server with SPA fallback, used by the screenshot tooling.
- `scripts/mock-preview.sh` — swaps in a mocked auth context and exam service so the signed-in
  screens can be rendered without a live session, and restores the real files from git.

---

## 8. Notes and follow-ups

- The header's section links (`/#subjects`, `/#how-it-works`, `/#faq`) are handled by a
  `ScrollManager` in `src/App.jsx`; it scrolls after the lazy chunk has mounted and honours
  reduced motion.
- The `/exam/:id` route is deliberately chrome-free — no header, no footer — so the timer and the
  paper own the whole screen.
- The result page reads the result from the navigation state when the exam was just submitted and
  falls back to `get_attempt_result` when the page is opened cold.
- The question bank is the long pole for real usage: the copy on the landing page quotes the live
  count from the database, and it reads "8,000+" until the first query returns.
