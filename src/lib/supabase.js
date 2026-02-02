import { createClient } from '@supabase/supabase-js';

// Access environment variables using import.meta.env (standard for Vite)
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

// Validation for Development clarity
if (!supabaseUrl || !supabaseAnonKey) {
    console.warn(
        'Supabase URL or Anon Key is missing in environment variables. \n' +
        'Please check your .env file and ensure VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY are set.'
    );
}

// Create and export the Supabase client with explicit session persistence
export const supabase = createClient(
    supabaseUrl, 
    supabaseAnonKey,
    {
        auth: {
            persistSession: true,
            detectSessionInUrl: true,
            autoRefreshToken: true,
            storage: typeof window !== 'undefined' ? window.localStorage : undefined
        }
    }
);

export default supabase;