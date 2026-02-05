-- Allow users to update their own profiles
-- This migration reverses the read-only policy and allows authenticated users to update their own profiles

-- Drop existing read-only policy
DROP POLICY IF EXISTS "Users can read profiles" ON users;

-- Create policy to allow users to view all profiles (read-only)
CREATE POLICY "Users can view profiles"
ON users
FOR SELECT
TO authenticated
USING (true);

-- Create policy to allow users to update their own profiles
CREATE POLICY "Users can update own profile"
ON users
FOR UPDATE
TO authenticated
USING (auth.uid() = id)
WITH CHECK (auth.uid() = id);

-- Note: INSERT and DELETE operations are still blocked
-- Users can only update their own profiles
