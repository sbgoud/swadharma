-- Allow users to insert their own profiles
-- This migration adds an INSERT policy to allow authenticated users to create their own profiles

-- Create policy to allow users to insert their own profiles
CREATE POLICY "Users can insert own profile"
ON users
FOR INSERT
TO authenticated
WITH CHECK (auth.uid() = id);
