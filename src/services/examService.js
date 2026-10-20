/**
 * Thin wrapper around the security-definer RPCs that implement the exam
 * engine. All scoring happens in Postgres — the client never sees the answer
 * key of an unattempted question.
 */

import { supabase } from '../lib/supabase';

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
  return data;
};

/** Stored result of a finished attempt. */
export const fetchAttemptResult = async (attemptId) => {
  const { data, error } = await supabase.rpc('get_attempt_result', { p_attempt_id: attemptId });
  if (error) throw error;
  return data;
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
export const updateProfileName = async (userId, fullName) => {
  const { data, error } = await supabase
    .from('profiles')
    .update({ full_name: fullName })
    .eq('id', userId)
    .select('id, full_name, email, created_at')
    .maybeSingle();
  if (error) throw error;
  return data;
};
