
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://dpaokhpqhchmfsuuwfmy.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwYW9raHBxaGNobWZzdXV3Zm15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5NzY0NzgsImV4cCI6MjA4MzU1MjQ3OH0.aHPnm25Xu28uqhBUbl2SilROT3OJ4gpinmLX9-DtEQE';

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifySchemaWithAuth() {
  console.log('--- Verifying Schema with Auth (Try 2) ---');
  
  const randomId = Math.floor(Math.random() * 100000);
  const email = `inspector${randomId}@example.com`;
  const password = 'TestPassword123!';

  try {
    // 1. Sign Up
    console.log(`Creating temp user: ${email}`);
    const { data: authData, error: authError } = await supabase.auth.signUp({
      email,
      password,
    });

    if (authError) {
      console.error('Auth check failed:', authError.message);
      return;
    }

    const userId = authData.user?.id;
    // Auth might require email confirmation?
    if (!userId && !authData.session) {
       console.log("Signup successful but no immediate session. Email confirmation might be on.");
       // Usually Supabase returns user object even if unconfirmed.
       if (authData.user) {
         console.log("User object returned:", authData.user.id);
       } else {
         console.log("No user object. Cannot proceed.");
         return;
       }
    }
    
    // Check if we have a session to perform DB operations
    if (!authData.session) {
      console.log('No session returned (email confirmation required?). Cannot insert to DB without session.');
      // Attempt login immediately? Might fail if unconfirmed.
      return;
    }

    console.log('User created and session active. ID:', authData.user.id);

    // 2. Try to INSERT into users table with expected columns
    const profileData = {
      id: authData.user.id,
      full_name: 'Inspector Gadget',
      phone_number: '1234567890',
      email: email,
      city: 'Test City',
      state: 'Test State',
      pincode: '123456',
      education: 'PhD',
      course: 'Test Course'
    };

    console.log('Attempting to insert profile...');

    const { data, error } = await supabase
      .from('users')
      .insert([profileData])
      .select();

    if (error) {
      console.error('❌ Insert failed.');
      console.error('Error:', error.message);
      console.error('Code:', error.code);
      console.error('Details:', error.details);
      console.error('Hint:', error.hint);
    } else {
      console.log('✅ Insert succeeded! All columns exist.');
      if (data && data.length > 0) {
        console.log('Returned Data Keys:', Object.keys(data[0]));
      }
    }

  } catch (err) {
    console.error('Unexpected error:', err);
  }
}

verifySchemaWithAuth();
