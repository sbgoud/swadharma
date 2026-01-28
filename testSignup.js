import { createClient } from '@supabase/supabase-js';
import { v4 as uuidv4 } from 'uuid';

// Initialize Supabase client with hardcoded values from .env file
const supabase = createClient(
  'https://dpaokhpqhchmfsuuwfmy.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwYW9raHBxaGNobWZzdXV3Zm15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5NzY0NzgsImV4cCI6MjA4MzU1MjQ3OH0.aHPnm25Xu28uqhBUbl2SilROT3OJ4gpinmLX9-DtEQE'
);

async function testSignup() {
  try {
    console.log('Testing signup process...\n');

    // Generate random test user data
    const testUserId = uuidv4();
    const testEmail = `test-${Date.now()}@example.com`;
    const testPassword = 'Test@123';

    const testUser = {
      id: testUserId,
      full_name: 'Test User',
      email: testEmail,
      phone_number: '1234567890',
      address: '123 Test Street',
      date_of_birth: '1990-01-01'
    };

    console.log('Test user data:', testUser);

    // Try to insert a test user
    const { error: insertError } = await supabase.from('users').upsert([testUser]);

    if (insertError) {
      console.error('Error inserting test user:', insertError);
      return;
    }

    console.log('Successfully inserted test user');

    // Verify test user was inserted
    const { data: insertedUser, error: verifyError } = await supabase
      .from('users')
      .select('*')
      .eq('id', testUser.id);

    if (verifyError) {
      console.error('Error verifying test user:', verifyError);
      return;
    }

    console.log('Test user was inserted correctly:', insertedUser[0]);

    // Check if all new fields are present
    const requiredFields = ['full_name', 'email', 'phone_number', 'address', 'date_of_birth'];
    const missingFields = requiredFields.filter(field => !(field in insertedUser[0]));

    if (missingFields.length > 0) {
      console.error('Error: Missing fields in user record:', missingFields);
    } else {
      console.log('All new fields are present in the user record');
    }

    // Delete test user
    const { error: deleteError } = await supabase
      .from('users')
      .delete()
      .eq('id', testUser.id);

    if (deleteError) {
      console.error('Error deleting test user:', deleteError);
    } else {
      console.log('Successfully deleted test user');
    }

    console.log('\n---\n');
    console.log('Testing Supabase Auth signup process...');

    // Try to sign up using Supabase Auth
    const { data: authData, error: authError } = await supabase.auth.signUp({
      email: testEmail,
      password: testPassword,
      options: {
        data: {
          full_name: testUser.full_name,
          phone_number: testUser.phone_number,
          address: testUser.address,
          date_of_birth: testUser.date_of_birth
        }
      }
    });

    if (authError) {
      console.error('Auth signup error:', authError);
    } else {
      console.log('Auth signup successful');
      console.log('Auth data:', authData);

      // Check if user was created in auth.users table and public.users table
      const { data: publicUsers, error: publicUsersError } = await supabase
        .from('users')
        .select('*')
        .eq('email', testEmail);

      if (publicUsersError) {
        console.error('Error checking public.users after signup:', publicUsersError);
      } else {
        console.log('User in public.users table:', publicUsers.length > 0);
        if (publicUsers.length > 0) {
          console.log('Public user data:', publicUsers[0]);
        }
      }
    }

  } catch (err) {
    console.error('Error:', err);
  }
}

testSignup();
