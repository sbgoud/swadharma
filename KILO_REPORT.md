# KILO_REPORT — Swadharma IAS rebuild

Free UPSC Prelims test-series site (React + Vite on Vercel, Supabase backend).
Everything is committed on `main`; the supervisor pushes and applies the SQL.

## 1. SQL files, in apply order

| # | file | what it does |
|---|---|---|
| 1 | `supabase/migrations/001_schema.sql` | Drops the legacy (`users`/`orders`/`coupons`) shapes, creates `public.subjects, categories, topics, questions, question_options, profiles, exam_attempts, attempt_questions` and the private `private.question_answers` table, the `question_difficulty` enum, the hash + updated-at triggers, the `profiles` signup trigger, and every index (incl. the unique `question_hash`). |
| 2 | `supabase/migrations/002_rls.sql` | RLS enabled on all 10 tables, including `private.question_answers` (no policy at all). Authenticated users may read `questions`/`question_options` only — never the answer column. |
| 3 | `supabase/migrations/003_rpc.sql` | `SECURITY DEFINER` RPCs with a fixed `search_path`: `start_exam`, `get_attempt_questions`, `submit_exam` (UPSC marking +2 / −0.66 / 0), `get_attempt_result`, `my_attempts`, `subject_question_counts`. |
| 4 | `supabase/migrations/004_reference_data.sql` | 8 subjects and their 94 categories, inserted idempotently by slug. |
| 5 | `supabase/migrations/005_security.sql` | Grants/revokes: the question bank is read-only, `private` schema is unreachable, only the exam RPCs are executable and only by signed-in users, `subject_question_counts` is also public. |
| 6 | `supabase/migrations/006_email_otp.sql` | Email OTP verification and password reset: `private.app_secrets`, `private.email_otps`, `profiles.email_verified`, service-role-only helpers and rate limits. |

Question data (applied after the migrations, 37 files, 250 questions each, plain
`INSERT … ON CONFLICT DO NOTHING` with slug sub-selects):
`supabase/seed/<subject_slug>_NN.sql` — `art_culture_01..05`,
`current_affairs_01..05`, `economy_01..05`, `environment_01..05`,
`geography_01..04`, `history_01..04`, `polity_01..04`, `science_tech_01..05`.

Rebuild the seed files with `node scripts/clean-packs.mjs && node scripts/build-seeds.mjs`.

## 2. Question count per subject

| subject | questions | seed files |
|---|---:|---:|
| history | 1000 | 4 |
| geography | 1000 | 4 |
| polity | 1000 | 4 |
| economy | 1014 | 5 |
| environment | 1004 | 5 |
| science_tech | 1010 | 5 |
| art_culture | 1011 | 5 |
| current_affairs | 1060 | 5 |
| **total** | **8099** | **37** |

Every subject is at or above 1000 unique questions. Sources: `supabase/questions/*.json`
(78 packs, JSON source of truth). The answer key is balanced at ~25% per index in
every subject; stems are unique per subject and free of near-duplicates
(`node scripts/build-seeds.mjs --check` enforces this and passes).

## 3. Frontend

`npm run build` passes, `npx eslint .` is clean. Routes: `/` (landing), `/about`,
`/login` (sign-in + create-account tabs), `/forgot-password`, `/reset-password`,
`/verify-email`, and the protected `/dashboard`, `/exam/:attemptId`,
`/result/:attemptId`, `/attempts`, `/profile`. Everything is free — no pricing,
checkout, payment, admin or debug pages remain, and no secret is committed.

## 4. Tooling (repo-local, `scripts/`)

`validate-packs.mjs` (schema + balance), `clean-packs.mjs` (dedupe + answer-key
rotation), `build-seeds.mjs` (packs → SQL, strict), `check-sql.mjs` (SQL sanity),
`repair-stems.mjs`, `restate-stems.mjs`, `fix-stems.mjs`, `dedupe-stems.mjs`,
`resolve-near-dups.mjs`, `find-collisions.mjs`, `fix-categories.mjs`.

## 5. Not finished / notes

- The `email-otp` edge function still has to be deployed by the supervisor:
  `supabase functions deploy email-otp --project-ref oxeqjtzeamdgyeqhlljk`, after
  applying `006_email_otp.sql` and inserting the Brevo secrets into
  `private.app_secrets` (see `BREVO_REPORT.md`).
- The question bank is static UPSC Prelims content (2026 syllabus); no new
  monthly current-affairs cycle is wired up.
- `current_affairs` mixes dated items (2021–2024) with static GK; the oldest
  dated items will need refreshing over time.
