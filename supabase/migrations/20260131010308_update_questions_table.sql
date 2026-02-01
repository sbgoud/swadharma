-- Add explanation column to questions table
ALTER TABLE questions ADD COLUMN IF NOT EXISTS explanation text;

-- Add foreign key constraint from subject_id to subjects table
ALTER TABLE questions 
ADD CONSTRAINT questions_subject_id_fkey 
FOREIGN KEY (subject_id) REFERENCES subjects(id) ON DELETE CASCADE;

-- Remove test_id column
ALTER TABLE questions DROP COLUMN IF EXISTS test_id;

-- Remove marks column
ALTER TABLE questions DROP COLUMN IF EXISTS marks;

-- Add subject_name column back (denormalized for easier querying)
ALTER TABLE questions ADD COLUMN IF NOT EXISTS subject_name text;

-- Populate subject_name from subjects table
UPDATE questions q SET subject_name = s.name FROM subjects s WHERE q.subject_id = s.id;

-- Add foreign key constraint from subject_name to subjects.name
ALTER TABLE questions 
ADD CONSTRAINT questions_subject_name_fkey 
FOREIGN KEY (subject_name) REFERENCES subjects(name) ON DELETE CASCADE;

-- Drop unique constraint on explanation if it exists
ALTER TABLE questions DROP CONSTRAINT IF EXISTS questions_explanation_key;

-- Populate explanation for all questions
UPDATE questions SET explanation = 'This question tests knowledge in ' || subject_name || '. The correct answer is option ' || correct_answer || '. Question ID: ' || id || '.' WHERE explanation IS NULL;

-- Make explanation column non-nullable
ALTER TABLE questions ALTER COLUMN explanation SET NOT NULL;

-- Add unique constraint on explanation column
ALTER TABLE questions ADD CONSTRAINT questions_explanation_key UNIQUE (explanation);

-- Delete all questions (as requested)
DELETE FROM questions;

-- Delete base subjects (IDs 1-7) that were created for test questions
DELETE FROM subjects WHERE id IN (1, 2, 3, 4, 5, 6, 7);
