-- Drop existing RLS policies on users table
DROP POLICY IF EXISTS "Users can view profiles" ON users;
DROP POLICY IF EXISTS "Users can update profiles" ON users;
DROP POLICY IF EXISTS "Users can insert profiles" ON users;
DROP POLICY IF EXISTS "Users can delete profiles" ON users;

-- Create read-only policy for users table
-- Allow authenticated users to only view profiles (no insert/update/delete)
CREATE POLICY "Users can view profiles"
ON users
FOR SELECT
TO authenticated
USING (true);

-- Note: Updates to users table should be done through the update-user-profile Edge Function
-- which has elevated permissions to bypass RLS
