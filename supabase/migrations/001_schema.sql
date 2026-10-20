-- =============================================================================
-- 001_schema.sql — Swadharma IAS : core schema
--
-- Applied by the supervisor in filename order. Everything here is idempotent:
-- re-running the file on an already-migrated database is a no-op and never
-- destroys seeded content.
--
-- Tables (public):
--   subjects, categories, topics, questions, question_options, profiles,
--   exam_attempts, attempt_questions
-- Answers live in the private schema (private.question_answers) which is not
-- exposed through the REST API, so a client can never read them before
-- submitting. They are only reachable through the SECURITY DEFINER RPCs.
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- 0. Cleanup of the pre-rebuild (legacy) schema.
--    The old app had `users`, `orders`, `coupons` and a `questions` table with a
--    jsonb `options` column. Drop the legacy shapes only when they are still
--    present; the current shapes are preserved so re-applying migrations never
--    wipes question data.
-- -----------------------------------------------------------------------------
do $$
declare
    v_legacy boolean;
begin
    -- legacy `users` / payment tables
    execute 'drop table if exists public.orders cascade';
    execute 'drop table if exists public.coupons cascade';
    execute 'drop table if exists public.users cascade';

    -- legacy `questions` (jsonb options column, integer difficulty)
    select exists (
        select 1 from information_schema.columns
         where table_schema = 'public' and table_name = 'questions' and column_name = 'options'
    ) into v_legacy;
    if v_legacy then
        execute 'drop table if exists public.questions cascade';
    end if;

    -- legacy `subjects` (no slug column)
    if exists (select 1 from information_schema.tables
                where table_schema = 'public' and table_name = 'subjects') then
        select not exists (
            select 1 from information_schema.columns
             where table_schema = 'public' and table_name = 'subjects' and column_name = 'slug'
        ) into v_legacy;
        if v_legacy then
            execute 'drop table if exists public.subjects cascade';
        end if;
    end if;

    -- legacy `categories` without the (subject_id, slug) shape
    if exists (select 1 from information_schema.tables
                where table_schema = 'public' and table_name = 'categories') then
        select not exists (
            select 1 from information_schema.columns
             where table_schema = 'public' and table_name = 'categories' and column_name = 'slug'
        ) into v_legacy;
        if v_legacy then
            execute 'drop table if exists public.categories cascade';
        end if;
    end if;
end
$$;

-- -----------------------------------------------------------------------------
-- 1. Schemas & types
-- -----------------------------------------------------------------------------
create schema if not exists private;

do $$
begin
    create type public.question_difficulty as enum ('easy', 'medium', 'hard');
exception
    when duplicate_object then null;
end
$$;

-- gen_random_uuid() is core from PostgreSQL 13 onwards; pgcrypto is only a
-- safety net for older images.
do $$
begin
    create extension if not exists pgcrypto;
exception
    when others then null;
end
$$;

-- -----------------------------------------------------------------------------
-- 2. Reference tables
-- -----------------------------------------------------------------------------
create table if not exists public.subjects (
    id          uuid primary key default gen_random_uuid(),
    slug        text not null unique,
    name        text not null,
    exam        text not null default 'UPSC_PRELIMS',
    description text,
    position    integer not null default 100,
    created_at  timestamptz not null default now(),
    constraint subjects_slug_format check (slug ~ '^[a-z0-9_]+$'),
    constraint subjects_exam_check check (exam = 'UPSC_PRELIMS')
);

create table if not exists public.categories (
    id         uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    slug       text not null,
    name       text not null,
    position   integer not null default 100,
    created_at timestamptz not null default now(),
    constraint categories_subject_slug_key unique (subject_id, slug)
);

create table if not exists public.topics (
    id          uuid primary key default gen_random_uuid(),
    subject_id  uuid not null references public.subjects(id) on delete cascade,
    category_id uuid not null references public.categories(id) on delete cascade,
    slug        text not null,
    name        text not null,
    position    integer not null default 100,
    created_at  timestamptz not null default now(),
    constraint topics_category_slug_key unique (category_id, slug)
);

-- -----------------------------------------------------------------------------
-- 3. Question bank
-- -----------------------------------------------------------------------------
create table if not exists public.questions (
    id            uuid primary key default gen_random_uuid(),
    subject_id    uuid not null references public.subjects(id) on delete cascade,
    category_id   uuid references public.categories(id) on delete set null,
    topic_id      uuid references public.topics(id) on delete set null,
    question_text text not null,
    explanation   text not null default '',
    difficulty    public.question_difficulty not null default 'medium',
    source        text,
    year          integer,
    is_active     boolean not null default true,
    -- normalised hash -> blocks duplicate questions (case / whitespace proof).
    -- Filled by the questions_set_hash trigger; the seed files provide the
    -- same value so that question, answer and option rows always match.
    question_hash text not null default '',
    created_at    timestamptz not null default now(),
    constraint questions_text_present check (char_length(btrim(question_text)) > 0),
    constraint questions_year_range check (year is null or year between 1900 and 2100)
);

create table if not exists public.question_options (
    id          uuid primary key default gen_random_uuid(),
    question_id uuid not null references public.questions(id) on delete cascade,
    label       text not null,
    option_text text not null,
    position    smallint not null default 1,
    created_at  timestamptz not null default now(),
    constraint question_options_label_check check (label in ('A', 'B', 'C', 'D')),
    constraint question_options_text_present check (char_length(btrim(option_text)) > 0),
    constraint question_options_question_label_key unique (question_id, label)
);

-- The correct answers. Never exposed to the client.
create table if not exists private.question_answers (
    question_id  uuid primary key references public.questions(id) on delete cascade,
    correct_label text not null,
    created_at   timestamptz not null default now(),
    constraint question_answers_label_check check (correct_label in ('A', 'B', 'C', 'D'))
);

-- -----------------------------------------------------------------------------
-- 4. Users, attempts
-- -----------------------------------------------------------------------------
create table if not exists public.profiles (
    id         uuid primary key references auth.users(id) on delete cascade,
    full_name  text,
    email      text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

create table if not exists public.exam_attempts (
    id                uuid primary key default gen_random_uuid(),
    user_id           uuid not null references auth.users(id) on delete cascade,
    config            jsonb not null default '{}'::jsonb,
    started_at        timestamptz not null default now(),
    submitted_at      timestamptz,
    score             numeric(6, 2),
    total             integer,
    correct_count     integer,
    incorrect_count   integer,
    unanswered_count  integer,
    duration_minutes  integer not null default 120,
    created_at        timestamptz not null default now(),
    constraint exam_attempts_duration_check check (duration_minutes between 1 and 600)
);

create table if not exists public.attempt_questions (
    attempt_id     uuid not null references public.exam_attempts(id) on delete cascade,
    question_id    uuid not null references public.questions(id) on delete cascade,
    position       integer not null,
    selected_label text,
    is_correct     boolean not null default false,
    constraint attempt_questions_label_check check (selected_label is null or selected_label in ('A', 'B', 'C', 'D')),
    constraint attempt_questions_position_key unique (attempt_id, position),
    constraint attempt_questions_primary_key primary key (attempt_id, question_id)
);

-- -----------------------------------------------------------------------------
-- 5. Indexes (every FK + every filter column)
-- -----------------------------------------------------------------------------
create index if not exists idx_categories_subject      on public.categories (subject_id);
create index if not exists idx_topics_subject          on public.topics (subject_id);
create index if not exists idx_topics_category         on public.topics (category_id);
create index if not exists idx_questions_subject       on public.questions (subject_id);
create index if not exists idx_questions_category      on public.questions (category_id);
create index if not exists idx_questions_topic         on public.questions (topic_id);
create index if not exists idx_questions_difficulty    on public.questions (difficulty);
create index if not exists idx_questions_active        on public.questions (is_active);
create index if not exists idx_questions_subject_diff  on public.questions (subject_id, difficulty) where is_active;
create index if not exists idx_questions_subject_cat   on public.questions (subject_id, category_id) where is_active;
create unique index if not exists idx_questions_hash_uniq on public.questions (question_hash);
create index if not exists idx_question_options_question on public.question_options (question_id);
create index if not exists idx_profiles_email           on public.profiles (email);
create index if not exists idx_exam_attempts_user      on public.exam_attempts (user_id, started_at desc);
create index if not exists idx_exam_attempts_user_sub  on public.exam_attempts (user_id) where submitted_at is not null;
create index if not exists idx_attempt_questions_qid   on public.attempt_questions (question_id);
create index if not exists idx_attempt_questions_att   on public.attempt_questions (attempt_id);

-- -----------------------------------------------------------------------------
-- 6. Triggers
-- -----------------------------------------------------------------------------
create or replace function public.set_updated_at()
returns trigger
language plpgsql
set search_path = public, pg_temp
as $$
begin
    new.updated_at := now();
    return new;
end;
$$;

-- keeps question_hash in sync with the normalised question text
create or replace function public.set_question_hash()
returns trigger
language plpgsql
set search_path = public, pg_temp
as $$
begin
    if new.question_hash is null or new.question_hash = '' then
        new.question_hash := md5(lower(regexp_replace(btrim(new.question_text), '\s+', ' ', 'g')));
    end if;
    return new;
end;
$$;

drop trigger if exists questions_set_hash on public.questions;
create trigger questions_set_hash
    before insert or update of question_text on public.questions
    for each row execute function public.set_question_hash();

drop trigger if exists profiles_set_updated_at on public.profiles;
create trigger profiles_set_updated_at
    before update on public.profiles
    for each row execute function public.set_updated_at();

-- profile is created automatically when a user signs up
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public, pg_temp
as $$
begin
    insert into public.profiles (id, full_name, email)
    values (
        new.id,
        coalesce(nullif(btrim(new.raw_user_meta_data ->> 'full_name'), ''), split_part(coalesce(new.email, ''), '@', 1)),
        new.email
    )
    on conflict (id) do update
        set full_name = coalesce(nullif(excluded.full_name, ''), public.profiles.full_name),
            email = coalesce(excluded.email, public.profiles.email);
    return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
    after insert on auth.users
    for each row execute function public.handle_new_user();

commit;
