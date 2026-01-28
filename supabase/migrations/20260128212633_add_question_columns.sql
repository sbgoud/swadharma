-- Add new columns to questions table
ALTER TABLE public.questions 
ADD COLUMN difficulty INTEGER DEFAULT 70 CHECK (difficulty BETWEEN 1 AND 100),
ADD COLUMN is_published INTEGER DEFAULT 0 CHECK (is_published BETWEEN 0 AND EXTRACT(YEAR FROM NOW()));
