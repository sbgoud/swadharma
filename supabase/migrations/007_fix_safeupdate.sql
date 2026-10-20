-- =============================================================================
-- 007_fix_safeupdate.sql — pg_safeupdate compatibility fix
--
-- Supabase enables the `safeupdate` extension for connections coming from the
-- API (PostgREST / `supabase-js`). It rejects any UPDATE or DELETE whose
-- WHERE clause is missing:
--
--     ERROR:  UPDATE requires a WHERE clause   (SQLSTATE 21000)
--
-- The check is purely syntactic (see pg_safeupdate's `post_parse_analyze_hook`:
-- it fires for CMD_UPDATE / CMD_DELETE when `jointree->quals` is NULL), so it
-- also applies to the temporary tables manipulated inside the SECURITY DEFINER
-- RPCs. Calling public.start_exam() over PostgREST therefore failed on the two
-- unconditional quota updates against `pg_temp.exam_subjects`.
--
-- Only the affected function is re-created below; its body is otherwise
-- identical to the latest definition in 003_rpc.sql. The two updates that
-- intentionally target every row of the temporary table now carry an explicit
-- `where true`, which is the documented way to express "all rows" and keeps
-- the original semantics untouched.
--
-- Checked and left unchanged:
--   * public.submit_exam()             -- all of its UPDATE statements already
--                                         have a WHERE clause. Its
--                                         `ON CONFLICT ... DO UPDATE`
--                                         statements are INSERTs
--                                         (commandType = CMD_INSERT) and are
--                                         not matched by the extension.
--   * public.get_attempt_result(), public.get_attempt_questions(),
--     public.my_attempts(), public.subject_question_counts()
--                                      -- no DML at all.
--   * 005_security.sql                 -- contains no function bodies, only
--                                         grants/revokes/ALTER FUNCTION.
--   * No DELETE statement without a WHERE clause exists in 003_rpc.sql or
--     005_security.sql.
--
-- Signature, SECURITY DEFINER, search_path and grants are kept identical to
-- the originals; the grants and search_path are re-asserted at the end of the
-- file so the function ends up exactly as 005_security.sql left it.
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- 1. start_exam
--    (unchanged copy of 003_rpc.sql with `where true` added to the two
--     unconditional updates on pg_temp.exam_subjects)
-- -----------------------------------------------------------------------------
create or replace function public.start_exam(
    p_subject_slugs text[] default null,
    p_num_questions  integer default 100,
    p_difficulty    text default null
)
returns jsonb
language plpgsql
security definer
set search_path = public, private, pg_temp
as $$
declare
    v_user        uuid := auth.uid();
    v_num         integer;
    v_duration    integer;
    v_attempt_id  uuid;
    v_total_avail integer := 0;
    v_assigned    integer := 0;
    v_sub_id      uuid;
    v_sub         record;
    v_config      jsonb;
    v_result      jsonb;
    v_slugs       text[];
begin
    if v_user is null then
        raise exception 'You must be signed in to start an exam.' using errcode = '28000';
    end if;

    if p_difficulty is not null and lower(btrim(p_difficulty)) not in ('easy', 'medium', 'hard') then
        raise exception 'Invalid difficulty: %', p_difficulty;
    end if;

    v_num := coalesce(p_num_questions, 100);
    v_num := greatest(1, least(500, v_num));

    -- subjects that actually have eligible questions
    drop table if exists pg_temp.exam_subjects;
    create temporary table exam_subjects (
        id    uuid primary key,
        slug  text not null,
        cnt   integer not null,
        quota integer not null default 0
    ) on commit drop;

    insert into pg_temp.exam_subjects (id, slug, cnt)
    select s.id,
           s.slug,
           (select count(*)
              from public.questions q
             where q.subject_id = s.id
               and q.is_active
               and (p_difficulty is null or q.difficulty::text = lower(btrim(p_difficulty))))::int
      from public.subjects s
     where (p_subject_slugs is null or s.slug = any (p_subject_slugs))
       and exists (
            select 1
              from public.questions q
             where q.subject_id = s.id
               and q.is_active
               and (p_difficulty is null or q.difficulty::text = lower(btrim(p_difficulty)))
       )
     order by s.position, s.slug;

    select coalesce(sum(cnt), 0) into v_total_avail from pg_temp.exam_subjects;

    if v_total_avail = 0 then
        raise exception 'No questions are available for the selected subjects.';
    end if;

    -- proportional quota, then trim/extend so the total is exactly v_num
    update pg_temp.exam_subjects
       set quota = least(cnt, floor(v_num::numeric * cnt::numeric / v_total_avail)::int)
     where true;

    if v_num >= (select count(*)::int from pg_temp.exam_subjects) then
        update pg_temp.exam_subjects set quota = greatest(quota, 1) where true;
    end if;

    select coalesce(sum(quota), 0) into v_assigned from pg_temp.exam_subjects;

    while v_assigned > v_num loop
        update pg_temp.exam_subjects
           set quota = quota - 1
         where id = (select id from pg_temp.exam_subjects order by quota desc, slug limit 1)
           and quota > 0;
        v_assigned := v_assigned - 1;
    end loop;

    while v_assigned < v_num loop
        select es.id into v_sub_id
          from pg_temp.exam_subjects es
         where es.cnt > es.quota
         order by (es.cnt - es.quota) desc, es.slug
         limit 1;
        exit when v_sub_id is null;
        update pg_temp.exam_subjects set quota = quota + 1 where id = v_sub_id;
        v_assigned := v_assigned + 1;
    end loop;

    -- random sample per subject
    drop table if exists pg_temp.exam_pick;
    create temporary table exam_pick (
        question_id uuid primary key,
        subject_id  uuid not null,
        ord         double precision not null
    ) on commit drop;

    for v_sub in select id, quota from pg_temp.exam_subjects where quota > 0 order by slug loop
        insert into pg_temp.exam_pick (question_id, subject_id, ord)
        select q.id, q.subject_id, random()
          from public.questions q
         where q.subject_id = v_sub.id
           and q.is_active
           and (p_difficulty is null or q.difficulty::text = lower(btrim(p_difficulty)))
         order by random()
         limit v_sub.quota;
    end loop;

    -- UPSC style timing: 100 questions in 120 minutes, scaled for shorter tests
    v_duration := greatest(10, least(120, round(v_num * 1.2)::int));

    select coalesce(array_agg(slug order by slug), '{}'::text[]) into v_slugs from pg_temp.exam_subjects;

    v_config := jsonb_build_object(
        'subject_slugs', to_jsonb(v_slugs),
        'num_questions', (select count(*)::int from pg_temp.exam_pick),
        'requested_questions', v_num,
        'difficulty', case when p_difficulty is null then null else lower(btrim(p_difficulty)) end,
        'duration_minutes', v_duration
    );

    insert into public.exam_attempts (user_id, config, duration_minutes, total)
    values (v_user, v_config, v_duration, (select count(*)::int from pg_temp.exam_pick))
    returning id into v_attempt_id;

    insert into public.attempt_questions (attempt_id, question_id, position)
    select v_attempt_id, p.question_id, p.rn::int
      from (
            select question_id, row_number() over (order by ord, question_id) as rn
              from pg_temp.exam_pick
           ) p;

    select jsonb_build_object(
        'attempt_id', v_attempt_id,
        'duration_minutes', v_duration,
        'total', (select count(*)::int from pg_temp.exam_pick),
        'config', v_config,
        'questions', (
            select coalesce(jsonb_agg(jsonb_build_object(
                'id', q.id,
                'position', aq.position,
                'question_text', q.question_text,
                'difficulty', q.difficulty,
                'source', q.source,
                'year', q.year,
                'subject', s.name,
                'subject_slug', s.slug,
                'category', c.name,
                'category_slug', c.slug,
                'options', (
                    select coalesce(jsonb_agg(jsonb_build_object('label', o.label, 'option_text', o.option_text)
                                              order by o.label), '[]'::jsonb)
                      from public.question_options o
                     where o.question_id = q.id
                )
            ) order by aq.position), '[]'::jsonb)
              from public.attempt_questions aq
              join public.questions q on q.id = aq.question_id
              join public.subjects s on s.id = q.subject_id
              left join public.categories c on c.id = q.category_id
             where aq.attempt_id = v_attempt_id
        )
    ) into v_result;

    return v_result;
end;
$$;

-- -----------------------------------------------------------------------------
-- 2. Grants and search_path — identical to 005_security.sql
-- -----------------------------------------------------------------------------
revoke all on function public.start_exam(text[], integer, text) from public, anon;
grant execute on function public.start_exam(text[], integer, text) to authenticated;

alter function public.start_exam(text[], integer, text) set search_path = public, private, pg_temp;

commit;
