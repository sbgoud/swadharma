# Deployment guide

## Vercel (production)

The repository is connected to Vercel. Pushing to `main` triggers a build:

* Build command: `npm run build`
* Output directory: `dist`
* Framework preset: Vite
* `vercel.json` rewrites every path to `index.html` so the client side router
  works on a hard refresh.

No environment variable is required — the Supabase URL and publishable key are
the defaults in `src/config/env.js`. To use a different project, add
`VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY` to the Vercel project
settings (both are exposed to the browser by design; the database is protected
by RLS).

## Database

The supervisor applies the SQL in this order:

```bash
# 1. schema, RLS, RPCs, reference data, grants
for f in supabase/migrations/*.sql; do psql "$DATABASE_URL" -f "$f"; done

# 2. question bank
for f in supabase/seed/*.sql; do psql "$DATABASE_URL" -f "$f"; done
```

All migration files are idempotent, the seed files use `ON CONFLICT DO NOTHING`,
so re-running them is safe.

After the seed is applied:

```sql
select slug, count(*) from public.questions group by slug;
select slug, count(*) from public.subjects group by slug;
```

`subject_question_counts()` returns the same numbers and is what the home page
uses.

## Supabase settings to check

* **Authentication → Email**: email sign-in is enabled; if email confirmation is
  switched on, new users must confirm before they can sign in.
* **Authentication → URL Configuration**: add the deployed origin
  (`https://swadharmaias.in`) to the redirect allow list so password reset
  links work.
* **API settings**: `public` and `graphql_public` are exposed. The `private`
  schema (the answer key) is not exposed and is therefore unreachable over the
  REST API.

## Local development with the Supabase CLI (optional)

```bash
supabase start
supabase db reset          # applies migrations + seed in order
npm run dev
```

Point the frontend at the local instance with:

```bash
VITE_SUPABASE_URL=http://127.0.0.1:54321
VITE_SUPABASE_ANON_KEY=<anon key printed by supabase status>
```

## Troubleshooting

| Symptom | Cause |
|---|---|
| `start_exam` returns "No questions are available" | the seed files were not applied, or every question of that subject is inactive |
| `submit_exam` fails with a permission error | `005_security.sql` was not applied, so the RPC is still executable by `anon` only |
| Password reset link bounces to the home page | the deployed origin is missing from the Supabase redirect allow list |
| The timer keeps running after a reload | expected — the remaining time is derived from `started_at` on the server |
