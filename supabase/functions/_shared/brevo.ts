/**
 * Reusable transactional e-mail module for the Swadharma IAS edge functions.
 *
 * The transport is Brevo's v3 SMTP API:
 *   POST https://api.brevo.com/v3/smtp/email   (header: api-key)
 *
 * Credentials are read from the `private.app_secrets` table through the
 * service role client (SUPABASE_URL / SUPABASE_SERVICE_ROLE_KEY are injected
 * into every edge function by Supabase). The environment variables
 * BREVO_API_KEY / BREVO_SENDER_EMAIL / BREVO_SENDER_NAME are used as a
 * fallback, so the module also works on a local `supabase functions serve`.
 *
 * The `private` schema is not exposed through PostgREST, therefore the table
 * read falls back to the `get_app_secret` helper (service role only).
 */

import { createClient, type SupabaseClient } from 'https://esm.sh/@supabase/supabase-js@2.78.0';

/** A single transactional e-mail. */
export interface EmailMessage {
  /** Recipient address. */
  to: string;
  /** Subject line. */
  subject: string;
  /** HTML body. */
  html: string;
  /** Plain text body (used by clients that cannot render HTML). */
  text: string;
  /** Optional sender override — by default the configured sender is used. */
  from?: { email: string; name: string };
}

/** The shape of the Brevo v3 send endpoint. */
interface BrevoPayload {
  sender: { email: string; name: string };
  to: { email: string; name?: string }[];
  subject: string;
  htmlContent: string;
  textContent: string;
}

const BREVO_ENDPOINT = 'https://api.brevo.com/v3/smtp/email';

/** Keys used inside `private.app_secrets`. */
export const SECRET_KEYS = {
  apiKey: 'brevo_api_key',
  senderEmail: 'brevo_sender_email',
  senderName: 'brevo_sender_name',
} as const;

/** Environment variables used when a secret is missing from the table. */
export const ENV_KEYS = {
  apiKey: 'BREVO_API_KEY',
  senderEmail: 'BREVO_SENDER_EMAIL',
  senderName: 'BREVO_SENDER_NAME',
} as const;

/** Last resort defaults so a misconfigured sender never blocks a mail. */
const FALLBACK_SENDER = {
  email: 'no-reply@swadharmaias.in',
  name: 'Swadharma IAS',
};

let serviceClient: SupabaseClient | null = null;

/** Lazily created service role client (bypasses RLS). */
export const getServiceClient = (): SupabaseClient => {
  if (serviceClient) return serviceClient;

  const url = Deno.env.get('SUPABASE_URL');
  const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');

  if (!url || !serviceRoleKey) {
    throw new Error('SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY must be set for the service client.');
  }

  serviceClient = createClient(url, serviceRoleKey, {
    auth: { persistSession: false, autoRefreshToken: false },
  });

  return serviceClient;
};

/** Reads the secrets through the RPC helper (the private schema is not in the API). */
const readSecretViaRpc = async (key: string): Promise<string | null> => {
  const { data, error } = await getServiceClient().rpc('get_app_secret', { p_key: key });
  if (error) return null;

  const value = typeof data === 'string' ? data : null;
  return value && value.trim() ? value.trim() : null;
};

/** Reads the secrets directly from `private.app_secrets` (works when exposed). */
const readSecretViaTable = async (key: string): Promise<string | null> => {
  const { data, error } = await getServiceClient()
    .from('private.app_secrets')
    .select('value')
    .eq('key', key)
    .maybeSingle();

  if (error) return null;

  const row = Array.isArray(data) ? data[0] : data;
  const value = (row as { value?: string } | null)?.value;
  return value && value.trim() ? value.trim() : null;
};

/**
 * Resolves a single secret: the database first, the environment second.
 */
export const getAppSecret = async (key: string): Promise<string | null> => {
  const fromTable = await readSecretViaTable(key);
  if (fromTable) return fromTable;

  const fromRpc = await readSecretViaRpc(key);
  if (fromRpc) return fromRpc;

  return null;
};

/** Reads a secret and falls back to an environment variable. */
const resolveSecret = async (tableKey: string, envKey: string): Promise<string | null> => {
  const stored = await getAppSecret(tableKey);
  if (stored) return stored;

  const fromEnv = Deno.env.get(envKey);
  return fromEnv && fromEnv.trim() ? fromEnv.trim() : null;
};

/** The sender identity used for every outgoing mail. */
export const getSender = async (): Promise<{ email: string; name: string }> => {
  const email = await resolveSecret(SECRET_KEYS.senderEmail, ENV_KEYS.senderEmail);
  const name = await resolveSecret(SECRET_KEYS.senderName, ENV_KEYS.senderName);

  return {
    email: email || FALLBACK_SENDER.email,
    name: name || FALLBACK_SENDER.name,
  };
};

/**
 * Sends a transactional e-mail through Brevo.
 *
 * Throws when the provider rejects the message — callers decide whether that
 * is fatal (it is for a one-time code: the code must not exist without a mail).
 */
export const sendEmail = async (message: EmailMessage): Promise<void> => {
  const apiKey = await resolveSecret(SECRET_KEYS.apiKey, ENV_KEYS.apiKey);
  if (!apiKey) {
    throw new Error(
      'Brevo API key is missing. Store "brevo_api_key" in private.app_secrets or set BREVO_API_KEY.',
    );
  }

  const sender = message.from ?? (await getSender());
  const payload: BrevoPayload = {
    sender: { email: sender.email, name: sender.name },
    to: [{ email: message.to }],
    subject: message.subject,
    htmlContent: message.html,
    textContent: message.text,
  };

  const response = await fetch(BREVO_ENDPOINT, {
    method: 'POST',
    headers: {
      accept: 'application/json',
      'api-key': apiKey,
      'content-type': 'application/json',
    },
    body: JSON.stringify(payload),
  });

  if (!response.ok) {
    const details = await response.text();
    console.error('Brevo rejected the message', response.status, details);
    throw new Error(`Brevo request failed with status ${response.status}.`);
  }
};

export default sendEmail;
