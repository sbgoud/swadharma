// User related functions
import { supabase } from '../lib/supabase';

export const fetchUserProfile = async (userId) => {
  try {
    const { data, error } = await supabase
      .from('users')
      .select('*')
      .eq('id', userId)
      .single();

    if (error) throw error;
    return data;
  } catch (error) {
    console.error('Error fetching user profile:', error);
    return null;
  }
};

export const updateUserProfile = async (userId, profileData) => {
  try {
    const { data, error } = await supabase
      .from('users')
      .upsert({ 
        id: userId, 
        ...profileData,
        updated_at: new Date().toISOString() 
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  } catch (error) {
    console.error('Error updating profile:', error);
    return null;
  }
};

export const createUserProfile = async (userData) => {
  console.log('createUserProfile: Creating profile with data:', userData);
  const { data, error } = await supabase
    .from('users')
    .insert([userData])
    .select()
    .single();

  if (error) {
    console.error('createUserProfile: Error creating user profile:', error);
    console.error('createUserProfile: Error code:', error.code);
    console.error('createUserProfile: Error message:', error.message);
    console.error('createUserProfile: Error details:', error.details);
    return null;
  }

  console.log('createUserProfile: Successfully created profile:', data);
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

export const insertQuestions = async (questionsData) => {
  try {
    const { subject_id, subject_name, questions } = questionsData;

    // Validate input
    if (!questions || !Array.isArray(questions) || questions.length === 0) {
      return {
        error: {
          message: 'Invalid questions data: must be a non-empty array',
          code: 'INVALID_INPUT'
        },
        count: 0,
        data: null
      };
    }

    // Prepare questions array for insertion
    const questionsToInsert = questions.map(q => ({
      subject_id,
      subject_name,
      question_text: q.question_text,
      options: q.options,
      correct_answer: q.correct_answer,
      question_type: q.question_type || 'MCQ',
      difficulty: q.difficulty !== undefined ? q.difficulty : 50,
      is_published: q.is_published !== undefined ? q.is_published : 0,
      explanation: q.explanation
    }));

    // Insert questions
    const { data, error } = await supabase
      .from('questions')
      .insert(questionsToInsert)
      .select();

    if (error) {
      console.error('Error inserting questions:', error);
      
      // Enhance error message with more context
      let enhancedError = {
        message: error.message,
        code: error.code,
        details: error.details,
        hint: error.hint
      };

      // Add context for common errors
      if (error.code === '23503') {
        enhancedError.message = 'Foreign key constraint violation: subject_id does not exist';
        enhancedError.context = `Subject ID ${subject_id} not found in subjects table`;
      } else if (error.code === '23505') {
        enhancedError.message = 'Unique constraint violation: duplicate question detected';
        enhancedError.context = 'A question with the same explanation already exists';
      } else if (error.code === '22P02') {
        enhancedError.message = 'Invalid data format: JSON structure error';
        enhancedError.context = 'Check that options field is valid JSON';
      }

      return { error: enhancedError, count: 0, data: null };
    }

    return { error: null, count: data.length, data };

  } catch (error) {
    console.error('Unexpected error in insertQuestions:', error);
    return {
      error: {
        message: error.message || 'An unexpected error occurred',
        code: 'UNEXPECTED_ERROR',
        details: error.toString()
      },
      count: 0,
      data: null
    };
  }
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

// Bulk insert questions from array format (single batch)
export const insertQuestionsBulk = async (questionsArray) => {
  try {
    // Validate input
    if (!questionsArray || !Array.isArray(questionsArray) || questionsArray.length === 0) {
      return {
        error: {
          message: 'Invalid questions data: must be a non-empty array',
          code: 'INVALID_INPUT'
        },
        count: 0,
        data: null
      };
    }

    // Prepare questions array for insertion
    const questionsToInsert = questionsArray.map(q => ({
      subject_id: q.subject_id,
      subject_name: q.subject_name,
      question_text: q.question_text,
      options: q.options,
      correct_answer: q.correct_answer,
      question_type: q.question_type || 'MCQ',
      difficulty: q.difficulty !== undefined ? q.difficulty : 50,
      is_published: q.is_published !== undefined ? q.is_published : 0,
      explanation: q.explanation
    }));

    // Insert questions
    const { data, error } = await supabase
      .from('questions')
      .insert(questionsToInsert)
      .select();

    if (error) {
      console.error('Error inserting questions:', error);
      
      // Enhance error message with more context
      let enhancedError = {
        message: error.message,
        code: error.code,
        details: error.details,
        hint: error.hint
      };

      // Add context for common errors
      if (error.code === '23503') {
        enhancedError.message = 'Foreign key constraint violation: subject_id does not exist';
      } else if (error.code === '23505') {
        enhancedError.message = 'Unique constraint violation: duplicate question detected';
      } else if (error.code === '22P02') {
        enhancedError.message = 'Invalid data format: JSON structure error';
      }

      return { error: enhancedError, count: 0, data: null };
    }

    return { error: null, count: data.length, data };

  } catch (error) {
    console.error('Unexpected error in insertQuestionsBulk:', error);
    return {
      error: {
        message: error.message || 'An unexpected error occurred',
        code: 'UNEXPECTED_ERROR',
        details: error.toString()
      },
      count: 0,
      data: null
    };
  }
};

// Bulk insert questions in batches with progress tracking
const BATCH_SIZE = 10000;

export const insertQuestionsBulkBatched = async (questionsArray, onProgress) => {
  try {
    // Validate input
    if (!questionsArray || !Array.isArray(questionsArray) || questionsArray.length === 0) {
      return {
        error: {
          message: 'Invalid questions data: must be a non-empty array',
          code: 'INVALID_INPUT'
        },
        totalInserted: 0,
        failed: 0,
        batches: []
      };
    }

    const totalQuestions = questionsArray.length;
    const totalBatches = Math.ceil(totalQuestions / BATCH_SIZE);
    let totalInserted = 0;
    let failed = 0;
    const batches = [];

    // Process in batches
    for (let i = 0; i < totalQuestions; i += BATCH_SIZE) {
      const batchNum = Math.floor(i / BATCH_SIZE) + 1;
      const batch = questionsArray.slice(i, i + BATCH_SIZE);
      
      // Prepare batch for insertion
      const questionsToInsert = batch.map(q => ({
        subject_id: q.subject_id,
        subject_name: q.subject_name,
        question_text: q.question_text,
        options: q.options,
        correct_answer: q.correct_answer,
        question_type: q.question_type || 'MCQ',
        difficulty: q.difficulty !== undefined ? q.difficulty : 50,
        is_published: q.is_published !== undefined ? q.is_published : 0,
        explanation: q.explanation
      }));

      // Insert batch
      const { data, error } = await supabase
        .from('questions')
        .insert(questionsToInsert)
        .select();

      if (error) {
        console.error(`Error inserting batch ${batchNum}:`, error);
        failed += batch.length;
        batches.push({
          batchNum,
          totalBatches,
          status: 'failed',
          inserted: 0,
          failed: batch.length,
          error: error.message
        });
      } else {
        const insertedCount = data.length;
        totalInserted += insertedCount;
        batches.push({
          batchNum,
          totalBatches,
          status: 'success',
          inserted: insertedCount,
          failed: 0,
          error: null
        });
      }

      // Report progress
      if (onProgress) {
        onProgress({
          currentBatch: batchNum,
          totalBatches,
          totalQuestions,
          processed: Math.min(i + BATCH_SIZE, totalQuestions),
          totalInserted,
          failed,
          batches
        });
      }

      // Small delay between batches to prevent overwhelming the server
      if (batchNum < totalBatches) {
        await new Promise(resolve => setTimeout(resolve, 500));
      }
    }

    return {
      error: null,
      totalInserted,
      failed,
      batches,
      summary: `Processed ${totalBatches} batches. Inserted ${totalInserted} questions, ${failed} failed.`
    };

  } catch (error) {
    console.error('Unexpected error in insertQuestionsBulkBatched:', error);
    return {
      error: {
        message: error.message || 'An unexpected error occurred',
        code: 'UNEXPECTED_ERROR',
        details: error.toString()
      },
      totalInserted: 0,
      failed: 0,
      batches: []
    };
  }
};
