-- =============================================================================
-- 003_rpc.sql — Server side exam engine
--
--  start_exam(subject_slugs, num_questions, difficulty)
--      creates an attempt, samples questions at random (balanced over the
--      selected subjects) and returns them WITHOUT the correct answers.
--  submit_exam(attempt_id, answers)
--      scores server side with the UPSC marking scheme (+2 / -0.66 / 0) and
--      returns the answer key + explanations.
--  get_attempt_result(attempt_id)   -> the stored result of a finished attempt
--  my_attempts()                    -> attempt history of the caller
--  subject_question_counts()        -> homepage statistics
--
-- All functions are SECURITY DEFINER with a fixed search_path, so they are
-- immune to search_path hijacking and never leak the answer key to the client
-- before an attempt is submitted.
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- 1. start_exam
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
       set quota = least(cnt, floor(v_num::numeric * cnt::numeric / v_total_avail)::int);

    if v_num >= (select count(*)::int from pg_temp.exam_subjects) then
        update pg_temp.exam_subjects set quota = greatest(quota, 1);
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
-- 1b. get_attempt_questions
--     Re-opens an in-progress attempt (page reload) without leaking answers.
-- -----------------------------------------------------------------------------
create or replace function public.get_attempt_questions(p_attempt_id uuid)
returns jsonb
language plpgsql
security definer
set search_path = public, private, pg_temp
as $$
declare
    v_user    uuid := auth.uid();
    v_attempt public.exam_attempts%rowtype;
    v_result  jsonb;
begin
    if v_user is null then
        raise exception 'You must be signed in.' using errcode = '28000';
    end if;

    select * into v_attempt
      from public.exam_attempts
     where id = p_attempt_id
       and user_id = v_user;

    if not found then
        raise exception 'Attempt not found.' using errcode = 'P0002';
    end if;

    if v_attempt.submitted_at is not null then
        raise exception 'This attempt has already been submitted.' using errcode = 'P0001';
    end if;

    select jsonb_build_object(
        'attempt_id', v_attempt.id,
        'duration_minutes', v_attempt.duration_minutes,
        'total', v_attempt.total,
        'started_at', v_attempt.started_at,
        'config', v_attempt.config,
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
                'selected_label', aq.selected_label,
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
             where aq.attempt_id = p_attempt_id
        )
    ) into v_result;

    return v_result;
end;
$$;

-- -----------------------------------------------------------------------------
-- 2. get_attempt_result
-- -----------------------------------------------------------------------------
create or replace function public.get_attempt_result(p_attempt_id uuid)
returns jsonb
language plpgsql
security definer
set search_path = public, private, pg_temp
as $$
declare
    v_user    uuid := auth.uid();
    v_attempt public.exam_attempts%rowtype;
    v_result  jsonb;
begin
    if v_user is null then
        raise exception 'You must be signed in to view a result.' using errcode = '28000';
    end if;

    select * into v_attempt
      from public.exam_attempts
     where id = p_attempt_id
       and user_id = v_user;

    if not found then
        raise exception 'Attempt not found.' using errcode = 'P0002';
    end if;

    if v_attempt.submitted_at is null then
        raise exception 'This attempt has not been submitted yet.' using errcode = 'P0001';
    end if;

    select jsonb_build_object(
        'attempt_id', v_attempt.id,
        'score', v_attempt.score,
        'max_score', coalesce(v_attempt.total, 0) * 2,
        'total', v_attempt.total,
        'correct', v_attempt.correct_count,
        'incorrect', v_attempt.incorrect_count,
        'unanswered', v_attempt.unanswered_count,
        'percentage', case when coalesce(v_attempt.total, 0) > 0
                            then round(((v_attempt.score / (v_attempt.total * 2)) * 100)::numeric, 2)
                            else 0 end,
        'started_at', v_attempt.started_at,
        'submitted_at', v_attempt.submitted_at,
        'duration_minutes', v_attempt.duration_minutes,
        'config', v_attempt.config,
        'details', (
            select coalesce(jsonb_agg(jsonb_build_object(
                'question_id', q.id,
                'position', aq.position,
                'question_text', q.question_text,
                'difficulty', q.difficulty,
                'source', q.source,
                'year', q.year,
                'subject', s.name,
                'subject_slug', s.slug,
                'category', c.name,
                'category_slug', c.slug,
                'selected_label', aq.selected_label,
                'correct_label', ans.correct_label,
                'is_correct', aq.is_correct,
                'explanation', q.explanation,
                'options', (
                    select coalesce(jsonb_agg(jsonb_build_object('label', o.label, 'option_text', o.option_text)
                                              order by o.label), '[]'::jsonb)
                      from public.question_options o
                     where o.question_id = q.id
                )
            ) order by aq.position), '[]'::jsonb)
              from public.attempt_questions aq
              join public.questions q on q.id = aq.question_id
              join private.question_answers ans on ans.question_id = q.id
              join public.subjects s on s.id = q.subject_id
              left join public.categories c on c.id = q.category_id
             where aq.attempt_id = p_attempt_id
        )
    ) into v_result;

    return v_result;
end;
$$;

-- -----------------------------------------------------------------------------
-- 3. submit_exam
-- -----------------------------------------------------------------------------
create or replace function public.submit_exam(p_attempt_id uuid, p_answers jsonb)
returns jsonb
language plpgsql
security definer
set search_path = public, private, pg_temp
as $$
declare
    v_user    uuid := auth.uid();
    v_attempt public.exam_attempts%rowtype;
    v_score   numeric := 0;
    v_correct integer := 0;
    v_wrong   integer := 0;
    v_blank   integer := 0;
    v_total   integer := 0;
begin
    if v_user is null then
        raise exception 'You must be signed in to submit an exam.' using errcode = '28000';
    end if;

    select * into v_attempt
      from public.exam_attempts
     where id = p_attempt_id
       and user_id = v_user;

    if not found then
        raise exception 'Attempt not found.' using errcode = 'P0002';
    end if;

    if v_attempt.submitted_at is not null then
        return public.get_attempt_result(p_attempt_id);
    end if;

    -- normalise the submitted answers
    drop table if exists pg_temp.exam_answers;
    create temporary table exam_answers (
        question_id uuid primary key,
        label       text not null
    ) on commit drop;

    if p_answers is not null and jsonb_typeof(p_answers) = 'object' then
        insert into pg_temp.exam_answers (question_id, label)
        select e.key::uuid, upper(e.value #>> '{}')
          from jsonb_each(p_answers) as e(key, value)
         where e.value #>> '{}' in ('A', 'B', 'C', 'D', 'a', 'b', 'c', 'd')
           and e.key ~* '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$'
        on conflict (question_id) do update set label = excluded.label;
    elsif p_answers is not null and jsonb_typeof(p_answers) = 'array' then
        insert into pg_temp.exam_answers (question_id, label)
        select (e.value #>> '{question_id}')::uuid,
               upper(coalesce(e.value #>> '{selected_label}', e.value #>> '{answer}'))
          from jsonb_array_elements(p_answers) as e(value)
         where upper(coalesce(e.value #>> '{selected_label}', e.value #>> '{answer}')) in ('A', 'B', 'C', 'D')
           and (e.value #>> '{question_id}') ~* '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$'
        on conflict (question_id) do update set label = excluded.label;
    end if;

    -- score every attempted question
    update public.attempt_questions aq
       set selected_label = a.label,
           is_correct = (a.label = ans.correct_label)
      from pg_temp.exam_answers a
      join private.question_answers ans on ans.question_id = a.question_id
     where aq.attempt_id = p_attempt_id
       and aq.question_id = a.question_id;

    update public.attempt_questions
       set selected_label = null,
           is_correct = false
     where attempt_id = p_attempt_id
       and selected_label is null;

    select count(*) filter (where is_correct)::int,
           count(*) filter (where not is_correct and selected_label is not null)::int,
           count(*) filter (where selected_label is null)::int,
           count(*)::int
      into v_correct, v_wrong, v_blank, v_total
      from public.attempt_questions
     where attempt_id = p_attempt_id;

    -- UPSC prelims marking scheme: +2 for a correct answer, -0.66 for a wrong
    -- answer, 0 for an unattempted question.
    v_score := round((v_correct * 2.0 - v_wrong * 0.66)::numeric, 2);

    update public.exam_attempts
       set submitted_at = now(),
           score = v_score,
           total = v_total,
           correct_count = v_correct,
           incorrect_count = v_wrong,
           unanswered_count = v_blank
     where id = p_attempt_id
       and user_id = v_user;

    return public.get_attempt_result(p_attempt_id);
end;
$$;

-- -----------------------------------------------------------------------------
-- 4. my_attempts
-- -----------------------------------------------------------------------------
create or replace function public.my_attempts()
returns jsonb
language plpgsql
security definer
set search_path = public, private, pg_temp
as $$
declare
    v_user uuid := auth.uid();
begin
    if v_user is null then
        raise exception 'You must be signed in.' using errcode = '28000';
    end if;

    return coalesce(
        (
            select jsonb_agg(jsonb_build_object(
                'id', a.id,
                'started_at', a.started_at,
                'submitted_at', a.submitted_at,
                'score', a.score,
                'total', a.total,
                'correct', a.correct_count,
                'incorrect', a.incorrect_count,
                'unanswered', a.unanswered_count,
                'duration_minutes', a.duration_minutes,
                'config', a.config
            ) order by a.started_at desc)
              from public.exam_attempts a
             where a.user_id = v_user
        ),
        '[]'::jsonb
    );
end;
$$;

-- -----------------------------------------------------------------------------
-- 5. subject_question_counts (homepage statistics)
-- -----------------------------------------------------------------------------
create or replace function public.subject_question_counts()
returns jsonb
language sql
security definer
set search_path = public, pg_temp
as $$
    select coalesce(
        jsonb_agg(
            jsonb_build_object(
                'slug', s.slug,
                'name', s.name,
                'description', s.description,
                'position', s.position,
                'question_count', coalesce(sc.cnt, 0),
                'categories', coalesce(
                    (
                        select jsonb_agg(
                            jsonb_build_object(
                                'slug', c.slug,
                                'name', c.name,
                                'count', coalesce(cc.cnt, 0)
                            ) order by c.slug
                        )
                          from public.categories c
                          left join lateral (
                              select count(*)::int as cnt
                                from public.questions x
                               where x.category_id = c.id
                                 and x.is_active
                          ) cc on true
                         where c.subject_id = s.id
                    ),
                    '[]'::jsonb
                )
            ) order by s.position, s.slug
        ),
        '[]'::jsonb
    )
      from public.subjects s
      left join lateral (
          select count(*)::int as cnt
            from public.questions x
           where x.subject_id = s.id
             and x.is_active
      ) sc on true;
$$;

commit;
