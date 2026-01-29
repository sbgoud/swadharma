import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

serve(async (req) => {
  // Handle CORS preflight request
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    // Only allow POST requests
    if (req.method !== 'POST') {
      return new Response(
        JSON.stringify({ error: 'Method not allowed' }),
        { status: 405, headers: corsHeaders }
      );
    }
    
    // Parse request body
    const { user_id, email, full_name, date_of_birth, address, phone_number } = await req.json();
    
    // Validate required fields
    if (!user_id || !email || !full_name) {
      return new Response(
        JSON.stringify({ 
          error: 'Missing required fields',
          message: 'User ID, email, and full name are required'
        }),
        { status: 400, headers: corsHeaders }
      );
    }
    
    // Validate email format
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
      return new Response(
        JSON.stringify({ 
          error: 'Invalid email format',
          message: 'Please provide a valid email address'
        }),
        { status: 400, headers: corsHeaders }
      );
    }
    
    // Create Supabase client with service role key
    const supabaseUrl = Deno.env.get('SUPABASE_URL');
    const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');
    const supabase = createClient(supabaseUrl, serviceRoleKey);
    
    // Create user profile in users table
    const { data: profileData, error: profileError } = await supabase
      .from('users')
      .insert([{
        id: user_id,
        full_name,
        email,
        phone_number: phone_number || null,
        address: address || null,
        date_of_birth: date_of_birth || null,
        city: null,
        state: null,
        pincode: null,
        education: null
      }])
      .select()
      .single();
    
    if (profileError) {
      console.error('Error creating user profile:', profileError);
      return new Response(
        JSON.stringify({ 
          error: 'Failed to create profile',
          message: profileError.message || 'Failed to create user profile'
        }),
        { status: 500, headers: corsHeaders }
      );
    }
    
    // Send success response
    return new Response(
      JSON.stringify({
        success: true,
        message: 'User profile created successfully.',
        user: {
          id: user_id,
          email: email,
          full_name: full_name
        }
      }),
      { status: 201, headers: corsHeaders }
    );
  } catch (error) {
    console.error('Unexpected error:', error);
    return new Response(
      JSON.stringify({ 
        error: 'Internal server error',
        message: 'An unexpected error occurred'
      }),
      { status: 500, headers: corsHeaders }
    );
  }
});
