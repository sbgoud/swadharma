-- Allow users to insert their own profiles
-- This migration adds an INSERT policy to allow authenticated users to create their own profiles

-- Drop policy if it exists
DROP POLICY IF EXISTS "Users can insert own profile" ON users;

-- Create policy to allow users to insert their own profiles
CREATE POLICY "Users can insert own profile"
ON users
FOR INSERT
TO authenticated
WITH CHECK (auth.uid() = id);
