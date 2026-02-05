-- Add course column to users table
-- This migration adds a course column to track the user's current course

ALTER TABLE public.users 
ADD COLUMN IF NOT EXISTS course TEXT;

-- Add comment to explain the purpose of the column
COMMENT ON COLUMN public.users.course IS 'Current course the user is enrolled in';
