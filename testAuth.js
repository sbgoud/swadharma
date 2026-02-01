import { createClient } from '@supabase/supabase-js';

// Load environment variables
const supabaseUrl = 'https://dpaokhpqhchmfsuuwfmy.supabase.co';
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwYW9raHBxaGNobWZzdXV3Zm15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5NzY0NzgsImV4cCI6MjA4MzU1MjQ3OH0.aHPnm25Xu28uqhBUbl2SilROT3OJ4gpinmLX9-DtEQE';

console.log('Testing Supabase Authentication');
console.log('URL:', supabaseUrl);
console.log('Anon Key:', supabaseAnonKey ? 'Set' : 'Missing');

// Create Supabase client
const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function testAuth() {
    console.log('\n=== Testing Authentication ===');
    
    // Test 1: Check current session
    console.log('\n1. Checking current session...');
    const { data: { session } } = await supabase.auth.getSession();
    console.log('Current session:', session ? 'Active' : 'None');
    if (session?.user) {
        console.log('User email:', session.user.email);
        console.log('User ID:', session.user.id);
    }
    
    // Test 2: Try to sign in with test credentials
    console.log('\n2. Testing sign in...');
    const testEmail = 'telusuga@yopmail.com';
    const testPassword = 'Kanna@3010';
    
    try {
        const { data, error } = await supabase.auth.signInWithPassword({
            email: testEmail,
            password: testPassword
        });
        
        if (error) {
            console.error('❌ Login failed:', error.message);
            console.error('Error code:', error.status);
            console.error('Error details:', error);
        } else {
            console.log('✅ Login successful!');
            console.log('User:', data.user);
            console.log('Session:', data.session);
            console.log('Access token:', data.session?.access_token ? 'Present' : 'Missing');
        }
    } catch (err) {
        console.error('❌ Exception during login:', err);
    }
    
    // Test 3: Check session after login
    console.log('\n3. Checking session after login...');
    const { data: { session: sessionAfterLogin } } = await supabase.auth.getSession();
    console.log('Session after login:', sessionAfterLogin ? 'Active' : 'None');
    
    // Test 4: Try to get user
    console.log('\n4. Getting current user...');
    const { data: { user } } = await supabase.auth.getUser();
    console.log('Current user:', user ? 'Found' : 'None');
    if (user) {
        console.log('User email:', user.email);
        console.log('User metadata:', user.user_metadata);
    }
}

testAuth().then(() => {
    console.log('\n=== Test Complete ===');
    process.exit(0);
}).catch(err => {
    console.error('Fatal error:', err);
    process.exit(1);
});
