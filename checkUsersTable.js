import { createClient } from '@supabase/supabase-js';

// Initialize Supabase client with hardcoded values from .env file
const supabase = createClient(
  'https://dpaokhpqhchmfsuuwfmy.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwYW9raHBxaGNobWZzdXV3Zm15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5NzY0NzgsImV4cCI6MjA4MzU1MjQ3OH0.aHPnm25Xu28uqhBUbl2SilROT3OJ4gpinmLX9-DtEQE'
);

async function checkUsersTable() {
  try {
    console.log('Checking public.users table...\n');

    // Get all users from the public.users table
    const { data: users, error } = await supabase.from('users').select('*');

    if (error) {
      console.error('Error fetching users:', error);
    } else {
      console.log('Users in public.users table (count):', users.length);
      if (users.length > 0) {
        console.log('First user:', users[0]);
      }
    }

    console.log('\n---\n');

    // Try to fetch users with new fields
    const { data: usersWithNewFields, error: fieldsError } = await supabase
      .from('users')
      .select('id, full_name, email, phone_number, address, date_of_birth');

    if (fieldsError) {
      console.error('Error fetching users with new fields:', fieldsError);
    } else {
      console.log('Users with new fields (count):', usersWithNewFields.length);
      if (usersWithNewFields.length > 0) {
        console.log('First user with new fields:', usersWithNewFields[0]);
      }
    }

    console.log('\n---\n');

    // Check if we can insert a test user
    const testUser = {
      id: 'test-user-id-123',
      full_name: 'Test User',
      email: 'test@example.com',
      phone_number: '1234567890',
      address: '123 Test Street',
      date_of_birth: '1990-01-01'
    };

    const { error: insertError } = await supabase.from('users').upsert([testUser]);

    if (insertError) {
      console.error('Error inserting test user:', insertError);
    } else {
      console.log('Successfully inserted test user');
      
      // Verify test user was inserted
      const { data: insertedUser, error: verifyError } = await supabase
        .from('users')
        .select('*')
        .eq('id', testUser.id);

      if (verifyError) {
        console.error('Error verifying test user:', verifyError);
      } else {
        console.log('Test user was inserted correctly:', insertedUser[0]);
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
    }

  } catch (err) {
    console.error('Error:', err);
  }
}

checkUsersTable();
