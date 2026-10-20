# Swadharma IAS – rebuild brief (for Kilo Code)

Goal: a free UPSC Prelims test-series website. Frontend can stay simple; BACKEND must be impeccable, secure and efficient. Work autonomously, never ask questions, make decisions yourself.

## Stack (keep)
- React + Vite (this repo), deployed on Vercel (push to main = auto deploy to swadharmaias.in). `npm run build` MUST pass.
- Supabase project ref `oxeqjtzeamdgyeqhlljk`
  - URL: https://oxeqjtzeamdgyeqhlljk.supabase.co
  - Publishable key: sb_publishable_9k4_1dGA_-8X6LUhaqaEJA_jBjQ4lme
  - Put both in `src/config/env.js` as defaults (VITE_SUPABASE_URL / VITE_SUPABASE_ANON_KEY env override). Remove any references to the old Supabase project.
- You have NO direct DB access. Write all SQL as files; the supervisor applies them in filename order:
  - Schema/RLS/functions: `supabase/migrations/001_schema.sql`, `002_...sql`, etc. Idempotent where possible.
  - Question data: `supabase/seed/<subject_slug>_NN.sql`, max ~300 questions per file, plain INSERT statements referencing subjects/categories by slug (use subqueries), `ON CONFLICT DO NOTHING`.

## Database (design it properly)
- subjects (id, slug unique, name, exam = 'UPSC_PRELIMS')
- categories / topics (id, subject_id fk, slug, name)
- questions (id, subject_id, category_id, question_text, explanation, difficulty enum easy|medium|hard, source text, year int null, is_active, created_at; unique hash on normalized question_text to block duplicates)
- question_options (id, question_id, label A-D, option_text) – exactly 4 per question
- correct answer stored so the CLIENT CAN NEVER READ IT before submitting (e.g. separate table or column not exposed by RLS).
- profiles (id = auth.users.id, full_name, created via trigger on signup)
- exam_attempts (id, user_id, config jsonb, started_at, submitted_at, score, total, duration)
- attempt_questions (attempt_id, question_id, position, selected_label, is_correct)
- Indexes on all FKs and filter columns. RLS ON for every table: users see only their own attempts/profile; questions/options readable to authenticated users WITHOUT answers.
- Postgres RPC functions (SECURITY DEFINER, search_path set):
  - `start_exam(subject_slugs text[] null, num_questions int default 100, difficulty text null)` -> creates attempt, picks random questions in realtime (efficient random sampling, balanced across subjects when multiple/none chosen), returns attempt id + questions + options (no answers).
  - `submit_exam(attempt_id, answers jsonb)` -> scores server-side using UPSC marking (+2 correct, -0.66 wrong, 0 blank), stores results, returns score + per-question correct answer + explanation.
  - `get_attempt_result(attempt_id)` and `my_attempts()`.
  - `subject_question_counts()` for the homepage.
- Run Supabase advisors-style hygiene: no tables without RLS, no mutable search_path.

## Questions (most important content task)
- Subjects (slugs): history, geography, polity, economy, environment, science_tech, art_culture, current_affairs.
- AT LEAST 1000 unique, real, factually correct UPSC-Prelims-style MCQs PER SUBJECT (8000+ total), each with 4 options, one correct answer, a short explanation, difficulty, and category.
- Use previous year UPSC prelims questions where you can find them online (mark source + year), plus high-quality questions based on NCERT/standard books. NO templated/fill-in-the-blank auto-generated junk, no near-duplicates, no placeholder text. Spread correct answers across A–D.
- Generate in batches, subject by subject, writing seed files as you go.

## Features
- Email/password signup + login + logout + password reset via Supabase Auth; protected routes; session persistence.
- Dashboard: pick subjects (or all), number of questions, difficulty -> start exam -> timed exam UI (UPSC: 100 Qs / 120 min default, scaled for fewer) -> submit -> result page with score, correct answers, explanations -> history of attempts.
- Everything FREE: remove pricing/checkout/payment pages. Remove admin/debug pages (InitializeDb, CheckColumns, AddQuestions*, inspect scripts) and any secrets from the repo.
- Fast: code-split routes, minimal deps.
- Create `supabase/seed/zz_test_user.sql` is NOT needed; the supervisor creates the test user.

## When done
- `npm run build` passes, `git commit` all work on main (do not push; supervisor pushes).
- Write `KILO_REPORT.md`: list of SQL files in apply order, question count per subject, and anything unfinished. Keep it short.
