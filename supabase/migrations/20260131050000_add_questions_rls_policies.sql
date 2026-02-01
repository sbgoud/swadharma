-- Enable Row Level Security on questions table if not already enabled
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if they exist (to avoid conflicts)
DROP POLICY IF EXISTS "Users can insert questions" ON questions;
DROP POLICY IF EXISTS "Users can view questions" ON questions;
DROP POLICY IF EXISTS "Users can update questions" ON questions;
DROP POLICY IF EXISTS "Users can delete questions" ON questions;

-- Policy to allow authenticated users to insert questions
CREATE POLICY "Users can insert questions"
ON questions
FOR INSERT
TO authenticated
WITH CHECK (true);

-- Policy to allow authenticated users to view questions
CREATE POLICY "Users can view questions"
ON questions
FOR SELECT
TO authenticated
USING (true);

-- Policy to allow authenticated users to update questions
CREATE POLICY "Users can update questions"
ON questions
FOR UPDATE
TO authenticated
USING (true)
WITH CHECK (true);

-- Policy to allow authenticated users to delete questions
CREATE POLICY "Users can delete questions"
ON questions
FOR DELETE
TO authenticated
USING (true);

-- Optional: Allow public (non-authenticated) users to view questions
-- Uncomment the following line if you want to allow public access
-- CREATE POLICY "Public can view questions" ON questions FOR SELECT TO public USING (true);
