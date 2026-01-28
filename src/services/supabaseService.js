import { supabase } from '../lib/supabase';

// User related functions
export const fetchUserProfile = async (userId) => {
  const { data, error } = await supabase
    .from('users')
    .select('*')
    .eq('id', userId)
    .single();

  if (error) {
    console.error('Error fetching user profile:', error);
    return null;
  }

  return data;
};

export const updateUserProfile = async (userId, profileData) => {
  const { data, error } = await supabase
    .from('users')
    .update(profileData)
    .eq('id', userId)
    .select()
    .single();

  if (error) {
    console.error('Error updating user profile:', error);
    return null;
  }

  return data;
};

export const createUserProfile = async (userData) => {
  const { data, error } = await supabase
    .from('users')
    .insert([userData])
    .select()
    .single();

  if (error) {
    console.error('Error creating user profile:', error);
    return null;
  }

  return data;
};

// Courses related functions
export const fetchAllCourses = async () => {
  const { data, error } = await supabase
    .from('courses')
    .select('*')
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching courses:', error);
    return [];
  }

  return data;
};

export const fetchUserCourses = async (userId) => {
  const { data, error } = await supabase
    .from('user_courses')
    .select(`
      *,
      courses(*)
    `)
    .eq('user_id', userId)
    .order('enrolled_at', { ascending: false });

  if (error) {
    console.error('Error fetching user courses:', error);
    return [];
  }

  return data;
};

export const enrollCourse = async (userId, courseId) => {
  const { data, error } = await supabase
    .from('user_courses')
    .insert([{ user_id: userId, course_id: courseId }])
    .select()
    .single();

  if (error) {
    console.error('Error enrolling in course:', error);
    return null;
  }

  return data;
};

// Tests related functions
export const fetchAllTests = async () => {
  const { data, error } = await supabase
    .from('tests')
    .select(`
      *,
      courses(title),
      subjects(name)
    `)
    .eq('is_active', true)
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching tests:', error);
    return [];
  }

  return data;
};

export const fetchCourseTests = async (courseId) => {
  const { data, error } = await supabase
    .from('tests')
    .select(`
      *,
      courses(title),
      subjects(name)
    `)
    .eq('course_id', courseId)
    .eq('is_active', true)
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching course tests:', error);
    return [];
  }

  return data;
};

export const fetchTestById = async (testId) => {
  const { data, error } = await supabase
    .from('tests')
    .select(`
      *,
      courses(title),
      subjects(name)
    `)
    .eq('id', testId)
    .single();

  if (error) {
    console.error('Error fetching test:', error);
    return null;
  }

  return data;
};

// Questions related functions
export const fetchTestQuestions = async (testId) => {
  const { data, error } = await supabase
    .from('questions')
    .select('*')
    .eq('test_id', testId)
    .order('id', { ascending: true });

  if (error) {
    console.error('Error fetching test questions:', error);
    return [];
  }

  return data;
};

// Test attempts related functions
export const createTestAttempt = async (userId, testId) => {
  const { data, error } = await supabase
    .from('test_attempts')
    .insert([{ user_id: userId, test_id: testId }])
    .select()
    .single();

  if (error) {
    console.error('Error creating test attempt:', error);
    return null;
  }

  return data;
};

export const submitTestAttempt = async (attemptId, score, totalMarks) => {
  const { data, error } = await supabase
    .from('test_attempts')
    .update({ 
      score: score, 
      total_marks: totalMarks, 
      completed_at: new Date() 
    })
    .eq('id', attemptId)
    .select()
    .single();

  if (error) {
    console.error('Error submitting test attempt:', error);
    return null;
  }

  return data;
};

export const fetchUserTestAttempts = async (userId) => {
  const { data, error } = await supabase
    .from('test_attempts')
    .select(`
      *,
      tests(*)
    `)
    .eq('user_id', userId)
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching user test attempts:', error);
    return [];
  }

  return data;
};

// User answers related functions
export const saveUserAnswers = async (answers) => {
  const { data, error } = await supabase
    .from('user_answers')
    .insert(answers);

  if (error) {
    console.error('Error saving user answers:', error);
    return null;
  }

  return data;
};

export const fetchUserAnswers = async (attemptId) => {
  const { data, error } = await supabase
    .from('user_answers')
    .select(`
      *,
      questions(*)
    `)
    .eq('test_attempt_id', attemptId);

  if (error) {
    console.error('Error fetching user answers:', error);
    return [];
  }

  return data;
};

// Subjects related functions
export const fetchAllSubjects = async () => {
  const { data, error } = await supabase
    .from('subjects')
    .select('*')
    .order('name', { ascending: true });

  if (error) {
    console.error('Error fetching subjects:', error);
    return [];
  }

  return data;
};
