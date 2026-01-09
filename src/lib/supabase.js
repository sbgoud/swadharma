import { createClient } from '@supabase/supabase-js';

// These environment variables should be set in your .env file
// For now, replace with your actual Supabase credentials
// REACT_APP_SUPABASE_URL=your-project-url
// REACT_APP_SUPABASE_ANON_KEY=your-anon-key

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || 'YOUR_SUPABASE_URL';
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY || 'YOUR_SUPABASE_ANON_KEY';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

export default supabase;