/**
 * Thin wrapper around the security-definer RPCs that implement the exam
 * engine. All scoring happens in Postgres — the client never sees the answer
 * key of an unattempted question.
 */

import { supabase } from '../lib/supabase';

/**
 * Normalises the result payload of `submit_exam` / `get_attempt_result`.
 * The RPC answers with `attempt_id`, `correct`, `incorrect` and `unanswered`;
 * older builds used `id` and the `*_count` names, so both are accepted here
 * and the UI only ever sees one stable shape.
 */
export const normalizeResult = (raw) => {
  if (!raw) return null;
  const total = Number(raw.total ?? 0);
  const score = Number(raw.score ?? 0);
  const startedAt = raw.started_at ?? null;
  const submittedAt = raw.submitted_at ?? null;
  const timeTakenMinutes =
    startedAt && submittedAt
      ? Math.max(0, Math.round((new Date(submittedAt).getTime() - new Date(startedAt).getTime()) / 60000))
      : null;

  return {
    id: raw.attempt_id ?? raw.id ?? null,
    score,
    maxScore: Number(raw.max_score ?? total * 2),
    total,
    correct: Number(raw.correct ?? raw.correct_count ?? 0),
    incorrect: Number(raw.incorrect ?? raw.incorrect_count ?? 0),
    unanswered: Number(raw.unanswered ?? raw.unanswered_count ?? 0),
    percentage: Number(
      raw.percentage ?? (total ? (score / (total * 2)) * 100 : 0)
    ),
    startedAt,
    submittedAt,
    timeTakenMinutes,
    durationMinutes: Number(raw.duration_minutes ?? 120),
    config: raw.config ?? {},
    details: Array.isArray(raw.details) ? raw.details : [],
  };
};

/** Subject statistics for the home page (public). */
export const fetchSubjectCounts = async () => {
  const { data, error } = await supabase.rpc('subject_question_counts');
  if (error) throw error;
  return Array.isArray(data) ? data : [];
};

/** Creates an attempt and returns the sampled questions (without answers). */
export const startExam = async ({ subjectSlugs = null, numQuestions = 100, difficulty = null }) => {
  const { data, error } = await supabase.rpc('start_exam', {
    p_subject_slugs: subjectSlugs && subjectSlugs.length ? subjectSlugs : null,
    p_num_questions: numQuestions,
    p_difficulty: difficulty || null,
  });
  if (error) throw error;
  return data;
};

/** Re-opens an in-progress attempt (used after a page reload). */
export const fetchAttemptQuestions = async (attemptId) => {
  const { data, error } = await supabase.rpc('get_attempt_questions', { p_attempt_id: attemptId });
  if (error) throw error;
  return data;
};

/** Scores the attempt server side and returns the answer key + explanations. */
export const submitExam = async (attemptId, answers) => {
  const { data, error } = await supabase.rpc('submit_exam', {
    p_attempt_id: attemptId,
    p_answers: answers,
  });
  if (error) throw error;
  return normalizeResult(data);
};

/** Stored result of a finished attempt. */
export const fetchAttemptResult = async (attemptId) => {
  const { data, error } = await supabase.rpc('get_attempt_result', { p_attempt_id: attemptId });
  if (error) throw error;
  return normalizeResult(data);
};

/** Attempt history of the signed-in user. */
export const fetchMyAttempts = async () => {
  const { data, error } = await supabase.rpc('my_attempts');
  if (error) throw error;
  return Array.isArray(data) ? data : [];
};

const PROFILE_COLUMNS = 'id, full_name, email, email_verified, created_at';
const LEGACY_PROFILE_COLUMNS = 'id, full_name, email, created_at';

/** True when Postgres complains that the column does not exist (yet). */
const isMissingColumn = (error, column) => {
  const message = `${error?.message ?? ''} ${error?.details ?? ''} ${error?.code ?? ''}`.toLowerCase();
  return message.includes(column) && (message.includes('does not exist') || message.includes('column'));
};

/**
 * `email_verified` arrives with migration 006. Until that migration is
 * applied the legacy shape is used, so the app never breaks.
 */
const readProfile = async (userId, columns) => {
  const { data, error } = await supabase
    .from('profiles')
    .select(columns)
    .eq('id', userId)
    .maybeSingle();
  if (error) throw error;
  return data;
};

/** Profile of the signed-in user. */
export const fetchProfile = async (userId) => {
  try {
    return await readProfile(userId, PROFILE_COLUMNS);
  } catch (error) {
    if (!isMissingColumn(error, 'email_verified')) throw error;
    const legacy = await readProfile(userId, LEGACY_PROFILE_COLUMNS);
    return legacy ? { ...legacy, email_verified: false } : legacy;
  }
};

/** Creates the profile row for users who signed up before the trigger existed. */
export const ensureProfile = async (user) => {
  const fullName =
    user?.user_metadata?.full_name ||
    user?.email?.split('@')[0] ||
    'Aspirant';
  const { error } = await supabase
    .from('profiles')
    .upsert({ id: user.id, full_name: fullName, email: user.email }, { onConflict: 'id' });
  if (error) throw error;
};

/** Writes the display name and returns the fresh profile row. */
const writeProfileName = async (userId, fullName) => {
  try {
    const { data, error } = await supabase
      .from('profiles')
      .update({ full_name: fullName })
      .eq('id', userId)
      .select(PROFILE_COLUMNS)
      .maybeSingle();
    if (error) throw error;
    return data;
  } catch (error) {
    if (!isMissingColumn(error, 'email_verified')) throw error;
    const { data, error: legacyError } = await supabase
      .from('profiles')
      .update({ full_name: fullName })
      .eq('id', userId)
      .select(LEGACY_PROFILE_COLUMNS)
      .maybeSingle();
    if (legacyError) throw legacyError;
    return data ? { ...data, email_verified: false } : data;
  }
};

/** Updates the display name of the signed-in user. */
export const updateProfileName = async (userId, fullName, email) => {
  const updated = await writeProfileName(userId, fullName);
  if (updated) return updated;

  // The profile row can be missing for accounts created before the signup
  // trigger existed — create it and retry the update.
  await ensureProfile({ id: userId, email });
  return writeProfileName(userId, fullName);
};
