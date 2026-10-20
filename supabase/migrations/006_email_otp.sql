-- =============================================================================
-- 006_email_otp.sql — email OTP infrastructure (Brevo transactional mail)
--
--  * private.app_secrets    — key/value store for the mail provider credentials
--                              (api key, sender address, sender name). RLS is
--                              enabled and there are NO policies, so only the
--                              service role (which bypasses RLS) can read it.
--  * private.email_otps     — hashed one-time codes with expiry, attempt
--                              counter and consumption flag.
--  * public.profiles.email_verified — the flag the frontend gates on.
--
-- Rate limits (enforced in the database, not in the Edge Function):
--    * max 5 OTP sends per e-mail address per hour  (create_email_otp)
--    * max 5 verification attempts per code          (verify_email_otp)
--
-- The `private` schema is not exposed through the PostgREST API, so the Edge
-- Function cannot read those tables directly. Three SECURITY DEFINER helpers
-- in the `public` schema bridge the gap; they are granted to `service_role`
-- only and are revoked from anon/authenticated/public.
--
-- Everything here is idempotent: re-running the file is a no-op.
-- =============================================================================

begin;

-- -----------------------------------------------------------------------------
-- 1. private.app_secrets
-- -----------------------------------------------------------------------------
create table if not exists private.app_secrets (
    key        text primary key,
    value      text not null,
    created_at timestamptz not null default now()
);

comment on table private.app_secrets is
    'Service credentials for the transactional mail provider. Service role only.';

alter table private.app_secrets enable row level security;

-- No policies on purpose: with RLS enabled and zero policies, anon and
-- authenticated can never read or write this table.
revoke all on private.app_secrets from anon, authenticated, public;

-- -----------------------------------------------------------------------------
-- 2. private.email_otps
-- -----------------------------------------------------------------------------
create table if not exists private.email_otps (
    id          uuid primary key default gen_random_uuid(),
    email       text not null,
    purpose     text not null,
    user_id     uuid references auth.users(id) on delete cascade,
    -- sha256(salt || ':' || code) — the plain code is never stored
    code_hash   text not null,
    salt        text not null,
    expires_at  timestamptz not null,
    attempts    integer not null default 0,
    consumed_at timestamptz,
    created_at  timestamptz not null default now(),
    constraint email_otps_purpose_check check (purpose in ('verify', 'reset')),
    constraint email_otps_attempts_check check (attempts >= 0),
    constraint email_otps_email_present check (char_length(btrim(email)) > 0)
);

comment on table private.email_otps is
    'One-time email codes. Only hashes are stored; the codes live in the mail.';

create index if not exists idx_email_otps_email_purpose
    on private.email_otps (email, purpose, created_at desc);
create index if not exists idx_email_otps_expires_at
    on private.email_otps (expires_at);
create index if not exists idx_email_otps_user
    on private.email_otps (user_id) where user_id is not null;
create index if not exists idx_email_otps_pending
    on private.email_otps (email) where consumed_at is null;

revoke all on private.email_otps from anon, authenticated, public;

-- -----------------------------------------------------------------------------
-- 3. public.profiles.email_verified
-- -----------------------------------------------------------------------------
alter table public.profiles
    add column if not exists email_verified boolean not null default false;

comment on column public.profiles.email_verified is
    'True once the aspirant proved ownership of the address with a 6-digit code.';

-- Accounts created before this migration already proved ownership of their
-- address through the Supabase confirmation mail, so they are grandfathered in.
update public.profiles p
   set email_verified = true
  from auth.users u
 where u.id = p.id
   and u.email_confirmed_at is not null
   and p.email_verified is false;

-- -----------------------------------------------------------------------------
-- 4. Service-role helpers (the private schema is not exposed via PostgREST)
-- -----------------------------------------------------------------------------

-- 4.1 read one secret
create or replace function public.get_app_secret(p_key text)
returns text
language sql
stable
security definer
set search_path = private, pg_temp
as $$
    select s.value
      from private.app_secrets s
     where s.key = p_key;
$$;

revoke all on function public.get_app_secret(text) from public, anon, authenticated;
grant execute on function public.get_app_secret(text) to service_role;

-- 4.2 resolve an auth user id from an e-mail address
create or replace function public.auth_user_id_by_email(p_email text)
returns uuid
language sql
stable
security definer
set search_path = auth, pg_temp
as $$
    select u.id
      from auth.users u
     where lower(u.email) = lower(btrim(p_email))
     limit 1;
$$;

revoke all on function public.auth_user_id_by_email(text) from public, anon, authenticated;
grant execute on function public.auth_user_id_by_email(text) to service_role;

-- 4.3 store a new code
--     rate limit: max 5 sends per e-mail per hour (all purposes together)
create or replace function public.create_email_otp(
    p_email      text,
    p_purpose    text,
    p_user_id    uuid,
    p_code_hash  text,
    p_salt       text,
    p_expires_at timestamptz
) returns table (success boolean, otp_id uuid, reason text)
language plpgsql
security definer
set search_path = private, pg_temp
as $$
declare
    v_recent integer;
    v_new_id uuid;
    c_max_sends_per_hour constant integer := 5;
    c_window              constant interval := interval '1 hour';
begin
    if p_purpose is null or p_purpose not in ('verify', 'reset') then
        return query select false, null::uuid, 'invalid_purpose';
        return;
    end if;

    select count(*)
      into v_recent
      from private.email_otps o
     where lower(o.email) = lower(btrim(p_email))
       and o.created_at >= now() - c_window;

    if v_recent >= c_max_sends_per_hour then
        return query select false, null::uuid, 'rate_limited';
        return;
    end if;

    -- a fresh code invalidates every earlier unused code of the same purpose
    update private.email_otps o
       set consumed_at = now()
     where lower(o.email) = lower(btrim(p_email))
       and o.purpose = p_purpose
       and o.consumed_at is null;

    insert into private.email_otps (email, purpose, user_id, code_hash, salt, expires_at)
    values (lower(btrim(p_email)), p_purpose, p_user_id, p_code_hash, p_salt, p_expires_at)
    returning id into v_new_id;

    return query select true, v_new_id, 'created';
end;
$$;

revoke all on function public.create_email_otp(text, text, uuid, text, text, timestamptz)
    from public, anon, authenticated;
grant execute on function public.create_email_otp(text, text, uuid, text, text, timestamptz)
    to service_role;

-- 4.4 check a code
--     rate limit: max 5 attempts per code
create or replace function public.verify_email_otp(
    p_email   text,
    p_purpose text,
    p_code    text
) returns table (success boolean, otp_id uuid, otp_user_id uuid, reason text)
language plpgsql
security definer
set search_path = private, pg_temp
as $$
declare
    v_row private.email_otps%rowtype;
    v_hash text;
    c_max_attempts constant integer := 5;
begin
    select o.*
      into v_row
      from private.email_otps o
     where lower(o.email) = lower(btrim(p_email))
       and o.purpose = p_purpose
       and o.consumed_at is null
     order by o.created_at desc
     limit 1
     for update;

    if not found then
        return query select false, null::uuid, null::uuid, 'not_found';
        return;
    end if;

    if v_row.expires_at <= now() then
        update private.email_otps o
           set consumed_at = now()
         where o.id = v_row.id;
        return query select false, v_row.id, null::uuid, 'expired';
        return;
    end if;

    if v_row.attempts >= c_max_attempts then
        update private.email_otps o
           set consumed_at = now()
         where o.id = v_row.id;
        return query select false, v_row.id, null::uuid, 'too_many_attempts';
        return;
    end if;

    update private.email_otps o
       set attempts = o.attempts + 1
     where o.id = v_row.id;

    v_hash := encode(sha256(convert_to(v_row.salt || ':' || p_code, 'UTF8')), 'hex');

    if v_hash = v_row.code_hash then
        update private.email_otps o
           set consumed_at = now()
         where o.id = v_row.id;
        return query select true, v_row.id, v_row.user_id, 'ok';
        return;
    end if;

    return query select false, v_row.id, null::uuid, 'invalid_code';
end;
$$;

revoke all on function public.verify_email_otp(text, text, text)
    from public, anon, authenticated;
grant execute on function public.verify_email_otp(text, text, text) to service_role;

-- -----------------------------------------------------------------------------
-- 5. Hardening
-- -----------------------------------------------------------------------------
do $$
declare
    r record;
begin
    for r in
        select p.oid::regprocedure as signature
          from pg_proc p
          join pg_namespace n on n.oid = p.pronamespace
         where n.nspname = 'public'
           and p.proname in ('get_app_secret', 'auth_user_id_by_email',
                             'create_email_otp', 'verify_email_otp')
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
