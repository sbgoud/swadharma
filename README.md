# Swadharma IAS — free UPSC Prelims test series

A React + Vite single page app backed by Supabase. Aspirants sign up for free,
pick the subjects they want, take a timed prelims paper, and get a scored result
with the correct answers and an explanation for every question.

Everything is free: there is no pricing page, no checkout and no payment code
anywhere in the repository.

## Stack

| Layer      | Technology                                                   |
|------------|--------------------------------------------------------------|
| Frontend   | React 19, Vite 5, Tailwind CSS 4, React Router 6            |
| Auth       | Supabase Auth (email + password, password reset)             |
| Database   | Supabase Postgres with Row Level Security                     |
| Exam logic | `SECURITY DEFINER` Postgres functions (RPC)                   |

## Project layout

```
src/
  components/     Navbar, Footer, Button, ThemeToggle, ProtectedRoute
  config/env.js  Supabase URL / publishable key (env overridable)
  context/       AuthContext (session + profile), ThemeContext
  lib/           Supabase client, class-name helper
  pages/         Home, About, Login, ResetPassword, Dashboard,
                 Exam, Result, Attempts, Profile
  services/      examService.js — thin wrappers around the RPCs
supabase/
  migrations/    001_schema.sql … 005_security.sql (apply in this order)
  seed/          <subject>_NN.sql — the question data
  questions/     JSON question packs + the generator specification
scripts/
  build-seeds.mjs   JSON packs  ->  supabase/seed/*.sql
  clean-packs.mjs   removes duplicates and balances the answer key
```

## Getting started

```bash
npm install
npm run dev      # http://localhost:5173
npm run build    # production build in dist/
npm run lint     # eslint
```

The Supabase credentials are built into `src/config/env.js`, so the app works
without a `.env` file. To point it somewhere else set `VITE_SUPABASE_URL` and
`VITE_SUPABASE_ANON_KEY` (see `.env.example`).

## Database

Apply the files in `supabase/migrations/` in filename order, then the files in
`supabase/seed/` in filename order:

| Order | File | Purpose |
|-------|------|---------|
| 1 | `001_schema.sql` | tables, indexes, triggers, legacy cleanup |
| 2 | `002_rls.sql` | row level security for every table |
| 3 | `003_rpc.sql` | `start_exam`, `submit_exam`, `get_attempt_result`, `get_attempt_questions`, `my_attempts`, `subject_question_counts` |
| 4 | `004_reference_data.sql` | the eight subjects and their categories |
| 5 | `005_security.sql` | grants, revokes, `search_path` hardening |
| 6 | `supabase/seed/*.sql` | the question bank |

Regenerate the seed files from the JSON packs with:

```bash
node scripts/clean-packs.mjs     # de-duplicate + balance the answer key
node scripts/build-seeds.mjs     # write supabase/seed/*.sql
```

## How an exam works

1. The dashboard calls `start_exam(subject_slugs, num_questions, difficulty)`.
2. Postgres samples the questions at random, balanced over the chosen
   subjects, stores the attempt and returns the questions **without** the
   answer key.
3. The browser collects the answers and calls
   `submit_exam(attempt_id, answers)`.
4. Postgres scores with the UPSC prelims scheme (+2 correct, −0.66 wrong,
   0 blank) and returns the score, the correct answers and the explanations.

The answer key lives in the `private.question_answers` table, which is not
exposed through the REST API and has no RLS policy, so a client can never read
an answer before submitting.

## Deployment

Push to `main` — Vercel builds and deploys to swadharmaias.in. See
`DEPLOYMENT_GUIDE.md`.
