import { supabase } from '../lib/supabase';

// SQL script to create tables and seed data
const SQL_SCRIPT = `
-- Create tables for Swadharma IAS Academy

-- 1. Users table (extends auth.users)
CREATE TABLE IF NOT EXISTS public.users (
    id UUID REFERENCES auth.users(id) PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone_number TEXT,
    address TEXT,
    date_of_birth DATE,
    city TEXT,
    state TEXT,
    pincode TEXT,
    education TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Subjects table
CREATE TABLE IF NOT EXISTS public.subjects (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    icon TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. Courses table
CREATE TABLE IF NOT EXISTS public.courses (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    duration TEXT,
    price DECIMAL(10, 2),
    is_active BOOLEAN DEFAULT TRUE,
    image_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. User Courses table (enrollments)
CREATE TABLE IF NOT EXISTS public.user_courses (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES public.users(id),
    course_id INTEGER REFERENCES public.courses(id),
    progress INTEGER DEFAULT 0,
    enrolled_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(user_id, course_id)
);

-- 5. Tests table
CREATE TABLE IF NOT EXISTS public.tests (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    course_id INTEGER REFERENCES public.courses(id),
    subject_id INTEGER REFERENCES public.subjects(id),
    duration INTEGER, -- in minutes
    total_questions INTEGER,
    difficulty TEXT DEFAULT 'Medium',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 6. Questions table
CREATE TABLE IF NOT EXISTS public.questions (
    id SERIAL PRIMARY KEY,
    test_id INTEGER REFERENCES public.tests(id),
    subject_id INTEGER REFERENCES public.subjects(id),
    question_text TEXT NOT NULL,
    options JSONB, -- { "A": "Option 1", "B": "Option 2", "C": "Option 3", "D": "Option 4" }
    correct_answer TEXT,
    marks INTEGER DEFAULT 2,
    question_type TEXT DEFAULT 'MCQ',
    difficulty INTEGER DEFAULT 70 CHECK (difficulty BETWEEN 1 AND 100),
    is_published INTEGER DEFAULT 0 CHECK (is_published BETWEEN 0 AND EXTRACT(YEAR FROM NOW())),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 7. Test Attempts table
CREATE TABLE IF NOT EXISTS public.test_attempts (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES public.users(id),
    test_id INTEGER REFERENCES public.tests(id),
    score INTEGER,
    total_marks INTEGER,
    completed_at TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 8. User Answers table
CREATE TABLE IF NOT EXISTS public.user_answers (
    id SERIAL PRIMARY KEY,
    test_attempt_id INTEGER REFERENCES public.test_attempts(id),
    question_id INTEGER REFERENCES public.questions(id),
    user_answer TEXT,
    is_correct BOOLEAN,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE public.users ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subjects ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.courses ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_courses ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.tests ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.test_attempts ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_answers ENABLE ROW LEVEL SECURITY;

-- Policies
-- Allow authenticated users to read their own data
CREATE POLICY "Users can read their own data" 
    ON public.users 
    FOR SELECT 
    USING (auth.uid() = id);

CREATE POLICY "Users can update their own data" 
    ON public.users 
    FOR UPDATE 
    USING (auth.uid() = id);

-- Allow authenticated users to read courses and tests
CREATE POLICY "Public can read courses" 
    ON public.courses 
    FOR SELECT 
    USING (true);

CREATE POLICY "Public can read subjects" 
    ON public.subjects 
    FOR SELECT 
    USING (true);

CREATE POLICY "Public can read tests" 
    ON public.tests 
    FOR SELECT 
    USING (true);

-- Allow authenticated users to create user_courses and test_attempts
CREATE POLICY "Users can create user_courses" 
    ON public.user_courses 
    FOR INSERT 
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can read their own user_courses" 
    ON public.user_courses 
    FOR SELECT 
    USING (auth.uid() = user_id);

CREATE POLICY "Users can create test_attempts" 
    ON public.test_attempts 
    FOR INSERT 
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can read their own test_attempts" 
    ON public.test_attempts 
    FOR SELECT 
    USING (auth.uid() = user_id);

CREATE POLICY "Users can create user_answers" 
    ON public.user_answers 
    FOR INSERT 
    WITH CHECK (true);

-- Function to handle user creation
CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO public.users (id, full_name, email, phone_number, address, date_of_birth)
    VALUES (
        NEW.id,
        NEW.raw_user_meta_data->>'full_name',
        NEW.email,
        NEW.raw_user_meta_data->>'phone_number',
        NEW.raw_user_meta_data->>'address',
        (NEW.raw_user_meta_data->>'date_of_birth')::DATE
    );
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Trigger to create public user when auth user is created
CREATE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION handle_new_user();

-- Function to update updated_at column
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Triggers
CREATE TRIGGER update_users_updated_at 
    BEFORE UPDATE ON public.users 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_subjects_updated_at 
    BEFORE UPDATE ON public.subjects 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_courses_updated_at 
    BEFORE UPDATE ON public.courses 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_user_courses_updated_at 
    BEFORE UPDATE ON public.user_courses 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_tests_updated_at 
    BEFORE UPDATE ON public.tests 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_questions_updated_at 
    BEFORE UPDATE ON public.questions 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_test_attempts_updated_at 
    BEFORE UPDATE ON public.test_attempts 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_user_answers_updated_at 
    BEFORE UPDATE ON public.user_answers 
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- Insert default subjects
INSERT INTO public.subjects (name, description) VALUES 
('History', 'Indian and World History'),
('Geography', 'Physical, Human and Economic Geography'),
('Polity', 'Indian Constitution and Governance'),
('Economics', 'Indian Economy and Development'),
('Environment', 'Ecology, Environment and Biodiversity'),
('Science & Technology', 'General Science and Technology'),
('Current Affairs', 'Recent Events and Developments')
ON CONFLICT (name) DO NOTHING;

-- Insert default courses
INSERT INTO public.courses (title, description, duration, price, is_active, image_url) VALUES 
('Prelims Test Series 2026', 'Comprehensive mock tests designed to simulate the real exam environment with detailed performance analysis.', '3 Months', 2999.00, true, 'https://images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&w=800'),
('GS Foundation Course', 'Complete coverage of Prelims and Mains syllabus for freshers.', '6 Months', 15999.00, false, 'https://images.pexels.com/photos/1181675/pexels-photo-1181675.jpeg?auto=compress&cs=tinysrgb&w=800'),
('Optional Subjects', 'Specialized guidance for Pol. Science, Sociology, and Geography.', '4 Months', 8999.00, false, 'https://images.pexels.com/photos/207662/pexels-photo-207662.jpeg?auto=compress&cs=tinysrgb&w=800')
ON CONFLICT DO NOTHING;

-- Insert default tests
INSERT INTO public.tests (title, description, course_id, subject_id, duration, total_questions, difficulty, is_active) VALUES 
('General Studies Paper 1', 'Test covering History, Geography, Polity, and Economy.', 1, 1, 180, 100, 'Medium', true),
('CSAT Paper 2', 'Test covering Logical Reasoning, Quantitative Aptitude, and English.', 1, 2, 120, 80, 'Easy', true),
('Current Affairs - January', 'Test covering important events of January 2024.', 1, 7, 90, 50, 'Hard', true)
ON CONFLICT DO NOTHING;

-- Insert sample questions (for GS Paper 1)
INSERT INTO public.questions (test_id, subject_id, question_text, options, correct_answer, marks, question_type) VALUES 
(1, 1, 'Who was the first Prime Minister of India?', '{"A": "Jawaharlal Nehru", "B": "Sardar Vallabhbhai Patel", "C": "Mahatma Gandhi", "D": "Rajendra Prasad"}', 'A', 2, 'MCQ'),
(1, 2, 'Which is the highest mountain peak in India?', '{"A": "Mount Everest", "B": "K2", "C": "Kanchenjunga", "D": "Nanda Devi"}', 'C', 2, 'MCQ'),
(1, 3, 'The Indian Constitution was adopted on which date?', '{"A": "26 January 1950", "B": "15 August 1947", "C": "26 November 1949", "D": "1 January 1950"}', 'C', 2, 'MCQ'),
(1, 4, 'Which Five Year Plan focused on poverty alleviation?', '{"A": "First Five Year Plan", "B": "Fifth Five Year Plan", "C": "Ninth Five Year Plan", "D": "Eleventh Five Year Plan"}', 'B', 2, 'MCQ'),
(1, 5, 'Which of the following is a greenhouse gas?', '{"A": "Nitrogen", "B": "Oxygen", "C": "Carbon Dioxide", "D": "Argon"}', 'C', 2, 'MCQ'),
(1, 6, 'What is the full form of DNA?', '{"A": "Deoxyribonucleic Acid", "B": "Deoxyribose Nucleic Acid", "C": "Ribonucleic Acid", "D": "Ribose Nucleic Acid"}', 'A', 2, 'MCQ'),
(1, 7, 'Which country won the FIFA World Cup 2022?', '{"A": "Brazil", "B": "Argentina", "C": "France", "D": "Portugal"}', 'B', 2, 'MCQ')
ON CONFLICT DO NOTHING;
`;

export const initializeDatabase = async () => {
  try {
    console.error('The run_sql RPC function is not available in the remote Supabase database.');
    console.error('Please run the SQL script directly from the Supabase Dashboard SQL editor.');
    console.error('Location: supabase/sql/create_tables.sql');
    
    return false;
  } catch (error) {
    console.error('Error initializing database:', error);
    return false;
  }
};
