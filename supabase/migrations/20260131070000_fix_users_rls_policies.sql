-- Drop existing RLS policies on users table
DROP POLICY IF EXISTS "Users can view own profile" ON users;
DROP POLICY IF EXISTS "Users can update own profile" ON users;
DROP POLICY IF EXISTS "Users can insert own profile" ON users;
DROP POLICY IF EXISTS "Users can delete own profile" ON users;

-- Create more permissive policies for testing
-- Allow authenticated users to view any profile (for testing)
CREATE POLICY "Users can view profiles"
ON users
FOR SELECT
TO authenticated
USING (true);

-- Allow authenticated users to update any profile (for testing)
CREATE POLICY "Users can update profiles"
ON users
FOR UPDATE
TO authenticated
USING (true)
WITH CHECK (true);

-- Allow authenticated users to insert profiles (for testing)
CREATE POLICY "Users can insert profiles"
ON users
FOR INSERT
TO authenticated
WITH CHECK (true);

-- Allow authenticated users to delete profiles (for testing)
CREATE POLICY "Users can delete profiles"
ON users
FOR DELETE
TO authenticated
USING (true);
