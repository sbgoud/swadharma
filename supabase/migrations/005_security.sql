-- =============================================================================
-- 005_security.sql — grants, revokes and hardening
--
--  * the question bank is read-only for clients (no INSERT/UPDATE/DELETE)
--  * answers stay unreachable (private schema, no grants, no policies)
--  * only the exam RPCs are executable, and only by signed-in users
--  * every SECURITY DEFINER function has a fixed search_path
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- 1. Schema usage
-- -----------------------------------------------------------------------------
grant usage on schema public to anon, authenticated;

-- the answers live in a schema that is not exposed through the API
revoke all on schema private from anon, authenticated, public;

-- -----------------------------------------------------------------------------
-- 2. Table privileges
--    Supabase grants ALL on every table in public by default, so the write
--    privileges are revoked explicitly.
-- -----------------------------------------------------------------------------
revoke all on public.subjects, public.categories, public.topics,
                public.questions, public.question_options,
                public.profiles, public.exam_attempts, public.attempt_questions
    from anon, authenticated;

grant select on public.subjects, public.categories, public.topics to anon, authenticated;
grant select on public.questions, public.question_options to authenticated;
grant select on public.profiles, public.exam_attempts, public.attempt_questions to authenticated;
grant insert on public.profiles to authenticated;
grant update on public.profiles to authenticated;

-- -----------------------------------------------------------------------------
-- 3. Sequences / identity
-- -----------------------------------------------------------------------------
do $$
declare
    r record;
begin
    for r in
        select c.relname
          from pg_class c
          join pg_namespace n on n.oid = c.relnamespace
         where n.nspname = 'public'
           and c.relkind = 'S'
    loop
        execute format('grant usage, select on sequence public.%I to authenticated', r.relname);
    end loop;
end
$$;

-- -----------------------------------------------------------------------------
-- 4. Functions: only what the app needs, only for signed-in users
-- -----------------------------------------------------------------------------
revoke all on function public.start_exam(text[], integer, text) from public, anon;
revoke all on function public.submit_exam(uuid, jsonb) from public, anon;
revoke all on function public.get_attempt_result(uuid) from public, anon;
revoke all on function public.get_attempt_questions(uuid) from public, anon;
revoke all on function public.my_attempts() from public, anon;
revoke all on function public.subject_question_counts() from public, anon;

grant execute on function public.start_exam(text[], integer, text) to authenticated;
grant execute on function public.submit_exam(uuid, jsonb) to authenticated;
grant execute on function public.get_attempt_result(uuid) to authenticated;
grant execute on function public.get_attempt_questions(uuid) to authenticated;
grant execute on function public.my_attempts() to authenticated;
grant execute on function public.subject_question_counts() to authenticated;

-- the homepage statistics are public
grant execute on function public.subject_question_counts() to anon;

revoke all on function public.handle_new_user() from public, anon, authenticated;
revoke all on function public.set_updated_at() from public, anon, authenticated;

-- -----------------------------------------------------------------------------
-- 5. Hardening of the RPC layer
-- -----------------------------------------------------------------------------
alter function public.start_exam(text[], integer, text) set search_path = public, private, pg_temp;
alter function public.submit_exam(uuid, jsonb) set search_path = public, private, pg_temp;
alter function public.get_attempt_result(uuid) set search_path = public, private, pg_temp;
alter function public.get_attempt_questions(uuid) set search_path = public, private, pg_temp;
alter function public.my_attempts() set search_path = public, private, pg_temp;
alter function public.subject_question_counts() set search_path = public, pg_temp;

-- no SECURITY DEFINER function may be replaced by a caller
do $$
declare
    r record;
begin
    for r in
        select p.oid::regprocedure as signature
          from pg_proc p
          join pg_namespace n on n.oid = p.pronamespace
         where n.nspname = 'public'
           and p.proname in ('start_exam', 'submit_exam', 'get_attempt_result',
                             'get_attempt_questions', 'my_attempts',
                             'subject_question_counts')
    loop
        begin
            execute format('alter function %s owner to postgres', r.signature);
        exception when others then
            null; -- the applying role already owns the function
        end;
    end loop;
end
$$;

commit;
