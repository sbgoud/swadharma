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

/** Profile of the signed-in user. */
export const fetchProfile = async (userId) => {
  const { data, error } = await supabase
    .from('profiles')
    .select('id, full_name, email, created_at')
    .eq('id', userId)
    .maybeSingle();
  if (error) throw error;
  return data;
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

/** Updates the display name of the signed-in user. */
export const updateProfileName = async (userId, fullName, email) => {
  const { data, error } = await supabase
    .from('profiles')
    .update({ full_name: fullName })
    .eq('id', userId)
    .select('id, full_name, email, created_at')
    .maybeSingle();
  if (error) throw error;
  if (data) return data;

  // The profile row can be missing for accounts created before the signup
  // trigger existed — create it and retry the update.
  await ensureProfile({ id: userId, email });
  const { data: created, error: retryError } = await supabase
    .from('profiles')
    .update({ full_name: fullName })
    .eq('id', userId)
    .select('id, full_name, email, created_at')
    .maybeSingle();
  if (retryError) throw retryError;
  return created;
};
