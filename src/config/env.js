/**
 * Environment configuration.
 *
 * The Supabase project credentials are baked in as defaults so the app works
 * out of the box (and on Vercel) without any manual .env setup. They can be
 * overridden at build time with VITE_SUPABASE_PROJECT_URL / VITE_SUPABASE_PUBLISHABLE_KEY
 * (the old VITE_SUPABASE_URL / VITE_SUPABASE_ANON_KEY names are ignored: Vercel still
 * holds stale values for them that point at the retired project).
 *
 * The publishable key is a public, client-side key (it is the replacement for
 * the legacy anon key) — the database is protected by Row Level Security, and
 * every write goes through security-definer RPC functions.
 */

const DEFAULT_SUPABASE_URL = 'https://oxeqjtzeamdgyeqhlljk.supabase.co';
const DEFAULT_SUPABASE_ANON_KEY = 'sb_publishable_9k4_1dGA_-8X6LUhaqaEJA_jBjQ4lme';

export const supabaseUrl = import.meta.env.VITE_SUPABASE_PROJECT_URL || DEFAULT_SUPABASE_URL;
export const supabaseAnonKey = import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY || DEFAULT_SUPABASE_ANON_KEY;

export const appConfig = {
  name: import.meta.env.VITE_APP_NAME || 'Swadharma IAS',
  exam: 'UPSC_PRELIMS',
  defaultQuestions: 100,
  defaultDurationMinutes: 120,
  maxQuestions: 500,
  minQuestions: 5,
  markingScheme: { correct: 2, incorrect: -0.66, blank: 0 },
};

export const getEnvConfig = () => ({
  supabase: { url: supabaseUrl, anonKey: supabaseAnonKey },
  app: appConfig,
});

export default getEnvConfig;
