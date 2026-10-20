/**
 * Swadharma IAS — e-mail OTP edge function.
 *
 * POST {SUPABASE_URL}/functions/v1/email-otp
 * body: { action: 'send_verify' | 'verify' | 'send_reset' | 'reset_password', ... }
 *
 * Actions
 *   send_verify     (JWT required)  sends a 6-digit code to the signed-in user
 *   verify          (JWT required)  checks the code and sets profiles.email_verified
 *   send_reset      (no auth)       sends a 6-digit reset code — always answers 200
 *   reset_password  (no auth)       checks the code and sets a new password
 *
 * The codes are never part of a response body.
 */

import { createClient, type SupabaseClient } from 'https://esm.sh/@supabase/supabase-js@2.78.0';
import { sendEmail } from '../_shared/brevo.ts';
import { resetPasswordTemplate, verifyEmailTemplate } from '../_shared/templates.ts';

const CORS_HEADERS: Record<string, string> = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
  'Access-Control-Max-Age': '86400',
};

/** A code is valid for ten minutes. */
const CODE_TTL_MINUTES = 10;

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
const CODE_RE = /^\d{6}$/;
const MIN_PASSWORD_LENGTH = 8;

type Purpose = 'verify' | 'reset';

interface JsonPayload {
  [key: string]: unknown;
}

interface OtpResult {
  ok: boolean;
  reason: string;
  code?: string;
}

let adminClient: SupabaseClient | null = null;

/** Service role client — bypasses RLS and the private schema policies. */
const getAdmin = (): SupabaseClient => {
  if (adminClient) return adminClient;

  const url = Deno.env.get('SUPABASE_URL') ?? '';
  const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '';

  if (!url || !serviceRoleKey) {
    throw new Error('SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY are required.');
  }

  adminClient = createClient(url, serviceRoleKey, {
    auth: { persistSession: false, autoRefreshToken: false },
  });

  return adminClient;
};

/** JSON response with the CORS headers attached. */
const json = (body: JsonPayload, status = 200): Response =>
  new Response(JSON.stringify(body), {
    status,
    headers: { ...CORS_HEADERS, 'Content-Type': 'application/json' },
  });

const readJson = async (request: Request): Promise<JsonPayload> => {
  try {
    const body = await request.json();
    return body && typeof body === 'object' ? (body as JsonPayload) : {};
  } catch {
    return {};
  }
};

const normalizeEmail = (value: unknown): string =>
  String(value ?? '').trim().toLowerCase();

/** Verifies the bearer token and returns the auth user, or null. */
const getAuthenticatedUser = async (request: Request) => {
  const header = request.headers.get('Authorization') ?? '';
  const token = header.replace(/^Bearer\s+/i, '').trim();
  if (!token) return null;

  const { data, error } = await getAdmin().auth.getUser(token);
  if (error || !data?.user) return null;

  return data.user;
};

/** Six random digits, uniform (rejection sampling, no modulo bias). */
const generateCode = (): string => {
  const buffer = new Uint32Array(1);
  for (;;) {
    crypto.getRandomValues(buffer);
    if (buffer[0] < 4294000000) {
      return String(buffer[0] % 1000000).padStart(6, '0');
    }
  }
};

const generateSalt = (): string => {
  const bytes = new Uint8Array(16);
  crypto.getRandomValues(bytes);
  return Array.from(bytes).map((byte) => byte.toString(16).padStart(2, '0')).join('');
};

/** sha256(salt + ':' + code) — the very same recipe the database uses. */
const hashCode = async (salt: string, code: string): Promise<string> => {
  const digest = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(`${salt}:${code}`));
  return Array.from(new Uint8Array(digest))
    .map((byte) => byte.toString(16).padStart(2, '0'))
    .join('');
};

/** Stores a fresh code. The rate limit (5 sends per e-mail per hour) lives in the database. */
const storeOtp = async (email: string, purpose: Purpose, userId: string | null): Promise<OtpResult> => {
  const code = generateCode();
  const salt = generateSalt();
  const codeHash = await hashCode(salt, code);
  const expiresAt = new Date(Date.now() + CODE_TTL_MINUTES * 60 * 1000).toISOString();

  const { data, error } = await getAdmin().rpc('create_email_otp', {
    p_email: email,
    p_purpose: purpose,
    p_user_id: userId,
    p_code_hash: codeHash,
    p_salt: salt,
    p_expires_at: expiresAt,
  });

  if (error) {
    console.error('create_email_otp failed', error);
    return { ok: false, reason: 'storage_error' };
  }

  const row = (Array.isArray(data) ? data[0] : data) as
    | { success?: boolean; reason?: string }
    | null;

  if (!row?.success) {
    return { ok: false, reason: row?.reason ?? 'storage_error' };
  }

  return { ok: true, reason: 'created', code };
};

/** Checks a code. The attempt limit (5 per code) lives in the database. */
const verifyOtp = async (
  email: string,
  purpose: Purpose,
  code: string
): Promise<{ success: boolean; reason: string }> => {
  const { data, error } = await getAdmin().rpc('verify_email_otp', {
    p_email: email,
    p_purpose: purpose,
    p_code: code,
  });

  if (error) {
    console.error('verify_email_otp failed', error);
    return { success: false, reason: 'server_error' };
  }

  const row = (Array.isArray(data) ? data[0] : data) as
    | { success?: boolean; reason?: string }
    | null;

  return { success: Boolean(row?.success), reason: row?.reason ?? 'invalid_code' };
};

/** Resolves the auth user id of an e-mail address. */
const findAuthUserId = async (email: string): Promise<string | null> => {
  const { data, error } = await getAdmin().rpc('auth_user_id_by_email', { p_email: email });

  if (!error) {
    if (typeof data === 'string' && data) return data;
    if (data === null) return null;
  }

  // Fallback for deployments where the helper is not installed yet.
  const { data: listed } = await getAdmin().auth.admin.listUsers({ page: 1, perPage: 1000 });
  const match = listed?.users?.find((candidate) => (candidate.email ?? '').toLowerCase() === email);
  return match?.id ?? null;
};

/** Flags the profile as verified. */
const markEmailVerified = async (
  userId: string,
  email: string,
  fullName: string | undefined
): Promise<void> => {
  const admin = getAdmin();

  const { data, error } = await admin
    .from('profiles')
    .update({ email_verified: true })
    .eq('id', userId)
    .select('id')
    .maybeSingle();

  if (error) throw error;

  // The profile row can be missing for accounts created before the trigger.
  if (!data) {
    const { error: insertError } = await admin.from('profiles').insert({
      id: userId,
      email,
      full_name: fullName ?? null,
      email_verified: true,
    });
    if (insertError) throw insertError;
  }
};

const VERIFY_ERRORS: Record<string, { error: string; message: string }> = {
  invalid_code: {
    error: 'invalid_code',
    message: 'That code is not correct. Please check the e-mail and try again.',
  },
  expired: {
    error: 'expired_code',
    message: 'That code has expired. Please request a new one.',
  },
  too_many_attempts: {
    error: 'too_many_attempts',
    message: 'Too many wrong attempts. Please request a new code.',
  },
  not_found: {
    error: 'no_code',
    message: 'We could not find an active code. Please request a new one.',
  },
  server_error: {
    error: 'server_error',
    message: 'Something went wrong on our side. Please try again.',
  },
};

/** Sends the verification code to the signed-in user. */
const handleSendVerify = async (request: Request): Promise<Response> => {
  const user = await getAuthenticatedUser(request);
  if (!user) {
    return json(
      { ok: false, error: 'unauthorized', message: 'Please sign in again to continue.' },
      401,
    );
  }

  const email = normalizeEmail(user.email);
  if (!email) {
    return json(
      { ok: false, error: 'email_missing', message: 'Your account has no e-mail address.' },
      400,
    );
  }

  const { data: profile } = await getAdmin()
    .from('profiles')
    .select('email_verified')
    .eq('id', user.id)
    .maybeSingle();

  if (profile?.email_verified) {
    return json({
      ok: true,
      verified: true,
      message: 'Your e-mail address is already verified.',
    });
  }

  const stored = await storeOtp(email, 'verify', user.id);

  if (!stored.ok) {
    if (stored.reason === 'rate_limited') {
      return json(
        {
          ok: false,
          error: 'rate_limited',
          message: 'You have asked for too many codes. Please try again in a few minutes.',
        },
        429,
      );
    }
    return json(
      {
        ok: false,
        error: 'send_failed',
        message: 'We could not send the verification code. Please try again.',
      },
      500,
    );
  }

  const template = verifyEmailTemplate({
    code: stored.code as string,
    name: user.user_metadata?.full_name,
  });

  await sendEmail({
    to: email,
    subject: template.subject,
    html: template.html,
    text: template.text,
  });

  return json({
    ok: true,
    message: 'We have sent a 6-digit verification code to your e-mail address.',
  });
};

/** Checks the verification code and flags the profile as verified. */
const handleVerify = async (request: Request, payload: JsonPayload): Promise<Response> => {
  const user = await getAuthenticatedUser(request);
  if (!user) {
    return json(
      { ok: false, error: 'unauthorized', message: 'Please sign in again to continue.' },
      401,
    );
  }

  const code = String(payload.code ?? '').trim();
  if (!CODE_RE.test(code)) {
    return json(
      { ok: false, error: 'invalid_code', message: 'Enter the 6-digit code from the e-mail.' },
      400,
    );
  }

  const email = normalizeEmail(user.email);
  const result = await verifyOtp(email, 'verify', code);

  if (!result.success) {
    const mapped = VERIFY_ERRORS[result.reason] ?? VERIFY_ERRORS.invalid_code;
    return json({ ok: false, ...mapped }, 400);
  }

  await markEmailVerified(user.id, email, user.user_metadata?.full_name);

  return json({
    ok: true,
    verified: true,
    message: 'Your e-mail address is verified. Welcome aboard!',
  });
};

/**
 * Sends a password reset code.
 * The answer is identical for known and unknown addresses, so e-mail addresses
 * cannot be enumerated through this action.
 */
const handleSendReset = async (payload: JsonPayload): Promise<Response> => {
  const email = normalizeEmail(payload.email);

  if (!EMAIL_RE.test(email)) {
    return json(
      { ok: false, error: 'invalid_email', message: 'Please enter a valid e-mail address.' },
      400,
    );
  }

  const userId = await findAuthUserId(email);

  if (userId) {
    const stored = await storeOtp(email, 'reset', userId);

    if (stored.ok) {
      const template = resetPasswordTemplate({ code: stored.code as string });
      try {
        await sendEmail({
          to: email,
          subject: template.subject,
          html: template.html,
          text: template.text,
        });
      } catch (error) {
        // Never let a provider failure turn into a difference between a known
        // and an unknown address.
        console.error('reset mail could not be sent', error);
      }
    } else {
      console.warn('reset code not stored', stored.reason);
    }
  }

  return json({
    ok: true,
    message: 'If an account exists for that address, a 6-digit reset code is on its way.',
  });
};

/** Checks the reset code and replaces the password through the auth admin API. */
const handleResetPassword = async (payload: JsonPayload): Promise<Response> => {
  const email = normalizeEmail(payload.email);
  const code = String(payload.code ?? '').trim();
  const password = String(payload.new_password ?? '');

  if (!EMAIL_RE.test(email)) {
    return json(
      { ok: false, error: 'invalid_email', message: 'Please enter a valid e-mail address.' },
      400,
    );
  }

  if (!CODE_RE.test(code)) {
    return json(
      { ok: false, error: 'invalid_code', message: 'Enter the 6-digit code from the e-mail.' },
      400,
    );
  }

  if (password.length < MIN_PASSWORD_LENGTH) {
    return json(
      {
        ok: false,
        error: 'weak_password',
        message: 'The new password must be at least 8 characters long.',
      },
      400,
    );
  }

  const userId = await findAuthUserId(email);

  // An unknown address is answered exactly like a wrong code.
  if (!userId) {
    return json(
      {
        ok: false,
        error: 'invalid_code',
        message: 'That code is not correct or has expired. Please request a new one.',
      },
      400,
    );
  }

  const result = await verifyOtp(email, 'reset', code);

  if (!result.success) {
    const mapped = VERIFY_ERRORS[result.reason] ?? VERIFY_ERRORS.invalid_code;
    return json({ ok: false, ...mapped }, 400);
  }

  const { error: updateError } = await getAdmin().auth.admin.updateUserById(userId, { password });

  if (updateError) {
    console.error('password update failed', updateError);
    return json(
      {
        ok: false,
        error: 'update_failed',
        message: 'We could not update the password. Please try again.',
      },
      500,
    );
  }

  return json({
    ok: true,
    message: 'Your password has been updated. You can sign in now.',
  });
};

Deno.serve(async (request: Request): Promise<Response> => {
  if (request.method === 'OPTIONS') {
    return new Response(null, { status: 204, headers: CORS_HEADERS });
  }

  if (request.method !== 'POST') {
    return json(
      { ok: false, error: 'method_not_allowed', message: 'Please use POST.' },
      405,
    );
  }

  const payload = await readJson(request);
  const action = String(payload.action ?? '').trim();

  try {
    switch (action) {
      case 'send_verify':
        return await handleSendVerify(request);
      case 'verify':
        return await handleVerify(request, payload);
      case 'send_reset':
        return await handleSendReset(payload);
      case 'reset_password':
        return await handleResetPassword(payload);
      default:
        return json(
          { ok: false, error: 'unknown_action', message: 'Unknown action.' },
          400,
        );
    }
  } catch (error) {
    console.error('email-otp failed', error);
    return json(
      {
        ok: false,
        error: 'server_error',
        message: 'Something went wrong on our side. Please try again.',
      },
      500,
    );
  }
});
