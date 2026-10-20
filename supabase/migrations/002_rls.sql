-- =============================================================================
-- 002_rls.sql — Row Level Security for every table
--
--  * questions / question_options  : readable by authenticated users, answers
--                                    are NOT in these tables (private schema).
--  * subjects / categories / topics: public metadata, readable by anyone.
--  * profiles                      : a user sees only their own row.
--  * exam_attempts / attempt_questions : a user sees only their own attempts.
--  * private.question_answers      : RLS enabled, no policy => unreachable
--                                    through the API for every role.
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- private schema: answers are never readable through PostgREST
-- -----------------------------------------------------------------------------
-- RLS is enabled but deliberately has no policy: every role (anon, authenticated,
-- public) reads zero rows. The SECURITY DEFINER RPCs run as the table owner and
-- are therefore the only way to reach the answers.
alter table private.question_answers enable row level security;
revoke all on private.question_answers from anon, authenticated, public;
revoke all on schema private from anon, authenticated, public;

-- -----------------------------------------------------------------------------
-- reference tables
-- -----------------------------------------------------------------------------
alter table public.subjects enable row level security;
alter table public.categories enable row level security;
alter table public.topics enable row level security;

drop policy if exists "subjects_select_all" on public.subjects;
create policy "subjects_select_all"
    on public.subjects for select
    to anon, authenticated
    using (true);

drop policy if exists "categories_select_all" on public.categories;
create policy "categories_select_all"
    on public.categories for select
    to anon, authenticated
    using (true);

drop policy if exists "topics_select_all" on public.topics;
create policy "topics_select_all"
    on public.topics for select
    to anon, authenticated
    using (true);

-- -----------------------------------------------------------------------------
-- question bank
-- -----------------------------------------------------------------------------
alter table public.questions enable row level security;
alter table public.question_options enable row level security;

drop policy if exists "questions_select_authenticated" on public.questions;
create policy "questions_select_authenticated"
    on public.questions for select
    to authenticated
    using (is_active);

drop policy if exists "question_options_select_authenticated" on public.question_options;
create policy "question_options_select_authenticated"
    on public.question_options for select
    to authenticated
    using (
        exists (
            select 1
            from public.questions q
            where q.id = question_options.question_id
              and q.is_active
        )
    );

-- -----------------------------------------------------------------------------
-- profiles
-- -----------------------------------------------------------------------------
alter table public.profiles enable row level security;

drop policy if exists "profiles_select_own" on public.profiles;
create policy "profiles_select_own"
    on public.profiles for select
    to authenticated
    using (id = (select auth.uid()));

drop policy if exists "profiles_insert_own" on public.profiles;
create policy "profiles_insert_own"
    on public.profiles for insert
    to authenticated
    with check (id = (select auth.uid()));

drop policy if exists "profiles_update_own" on public.profiles;
create policy "profiles_update_own"
    on public.profiles for update
    to authenticated
    using (id = (select auth.uid()))
    with check (id = (select auth.uid()));

drop policy if exists "profiles_delete_own" on public.profiles;
create policy "profiles_delete_own"
    on public.profiles for delete
    to authenticated
    using (id = (select auth.uid()));

-- -----------------------------------------------------------------------------
-- attempts
-- -----------------------------------------------------------------------------
alter table public.exam_attempts enable row level security;
alter table public.attempt_questions enable row level security;

drop policy if exists "exam_attempts_select_own" on public.exam_attempts;
create policy "exam_attempts_select_own"
    on public.exam_attempts for select
    to authenticated
    using (user_id = (select auth.uid()));

drop policy if exists "exam_attempts_insert_own" on public.exam_attempts;
create policy "exam_attempts_insert_own"
    on public.exam_attempts for insert
    to authenticated
    with check (user_id = (select auth.uid()));

drop policy if exists "exam_attempts_update_own" on public.exam_attempts;
create policy "exam_attempts_update_own"
    on public.exam_attempts for update
    to authenticated
    using (user_id = (select auth.uid()))
    with check (user_id = (select auth.uid()));

drop policy if exists "exam_attempts_delete_own" on public.exam_attempts;
create policy "exam_attempts_delete_own"
    on public.exam_attempts for delete
    to authenticated
    using (user_id = (select auth.uid()));

drop policy if exists "attempt_questions_select_own" on public.attempt_questions;
create policy "attempt_questions_select_own"
    on public.attempt_questions for select
    to authenticated
    using (
        exists (
            select 1
            from public.exam_attempts a
            where a.id = attempt_questions.attempt_id
              and a.user_id = (select auth.uid())
        )
    );

drop policy if exists "attempt_questions_insert_own" on public.attempt_questions;
create policy "attempt_questions_insert_own"
    on public.attempt_questions for insert
    to authenticated
    with check (
        exists (
            select 1
            from public.exam_attempts a
            where a.id = attempt_questions.attempt_id
              and a.user_id = (select auth.uid())
        )
    );

drop policy if exists "attempt_questions_update_own" on public.attempt_questions;
create policy "attempt_questions_update_own"
    on public.attempt_questions for update
    to authenticated
    using (
        exists (
            select 1
            from public.exam_attempts a
            where a.id = attempt_questions.attempt_id
              and a.user_id = (select auth.uid())
        )
    )
    with check (
        exists (
            select 1
            from public.exam_attempts a
            where a.id = attempt_questions.attempt_id
              and a.user_id = (select auth.uid())
        )
    );

commit;
