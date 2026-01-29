-- Remove the automatic user profile creation trigger
-- This is being replaced by Edge Function approach

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS handle_new_user();
