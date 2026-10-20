/**
 * Client for the `email-otp` edge function.
 *
 * Every call goes through supabase.functions.invoke('email-otp', ...) with a
 * JSON body that carries the action. The access token of the signed-in user
 * is attached automatically, which is what the `send_verify` and `verify`
 * actions check.
 */

import { supabase } from '../lib/supabase';

const FUNCTION_NAME = 'email-otp';

const FALLBACK_ERROR = 'Something went wrong. Please try again.';

/** Digs the human readable message out of the error payload of the function. */
const readErrorMessage = async (error, fallback) => {
  try {
    const context = error?.context;
    if (context && typeof context.json === 'function') {
      const body = await context.json();
      if (body?.message) return body.message;
      if (body?.error) return body.error;
    }
  } catch {
    /* the body could not be read — fall back to the generic message */
  }
  return error?.message || fallback;
};

const invoke = async (body) => {
  const { data, error } = await supabase.functions.invoke(FUNCTION_NAME, { body });

  if (error) {
    throw new Error(await readErrorMessage(error, FALLBACK_ERROR));
  }

  if (!data) {
    throw new Error(FALLBACK_ERROR);
  }

  if (data.ok === false) {
    throw new Error(data.message || data.error || FALLBACK_ERROR);
  }

  return data;
};

/** Sends a 6-digit verification code to the signed-in user. */
export const sendVerificationCode = () => invoke({ action: 'send_verify' });

/** Checks the 6-digit verification code and marks the address as verified. */
export const verifyEmailAddress = (code) => invoke({ action: 'verify', code });

/** Sends a 6-digit password reset code. The answer never reveals the account. */
export const sendPasswordResetCode = (email) => invoke({ action: 'send_reset', email });

/** Checks the reset code and replaces the password. */
export const resetPassword = ({ email, code, newPassword }) =>
  invoke({ action: 'reset_password', email, code, new_password: newPassword });
