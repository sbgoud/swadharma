-- Make users table completely read-only
-- All updates should go through the update-user-profile Edge Function

-- Drop all existing policies
DROP POLICY IF EXISTS "Users can insert their own profile" ON users;
DROP POLICY IF EXISTS "Users can read their own data" ON users;
DROP POLICY IF EXISTS "Users can update their own data" ON users;
DROP POLICY IF EXISTS "Users can update their own profile" ON users;
DROP POLICY IF EXISTS "Users can view profiles" ON users;
DROP POLICY IF EXISTS "Users can view their own profile" ON users;

-- Create read-only policy for authenticated users
-- Allow authenticated users to only SELECT (read) data
CREATE POLICY "Users can read profiles"
ON users
FOR SELECT
TO authenticated
USING (true);

-- Note: INSERT, UPDATE, DELETE operations are blocked for authenticated users
-- Use the update-user-profile Edge Function for profile updates
-- The Edge Function uses service role key to bypass RLS
