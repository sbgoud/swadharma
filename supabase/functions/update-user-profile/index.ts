import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, content-type',
  'Access-Control-Allow-Methods': 'POST, OPTIONS',
};

interface UpdateProfileData {
  full_name?: string;
  phone_number?: string;
  city?: string;
  state?: string;
  pincode?: string;
  education?: string;
  date_of_birth?: string;
  course?: string;
}

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

    // Get Supabase URL and keys
    const supabaseUrl = Deno.env.get('SUPABASE_URL');
    const supabaseAnonKey = Deno.env.get('SUPABASE_ANON_KEY');
    const serviceRoleKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY');

    if (!supabaseUrl || !serviceRoleKey || !supabaseAnonKey) {
      return new Response(
        JSON.stringify({
          error: 'Server configuration error',
          message: 'Missing Supabase configuration'
        }),
        { status: 500, headers: corsHeaders }
      );
    }

    // Parse request body
    const { user_id, profile_data } = await req.json();

    // Validate required fields
    if (!user_id) {
      return new Response(
        JSON.stringify({
          error: 'Missing required field',
          message: 'User ID is required'
        }),
        { status: 400, headers: corsHeaders }
      );
    }

    // Get the authorization header
    const authHeader = req.headers.get('authorization');
    
    // Verify the user is authenticated if authorization header is present
    let authenticatedUserId = null;
    let userEmail = null;
    
    if (authHeader && authHeader.startsWith('Bearer ')) {
      const token = authHeader.replace('Bearer ', '');
      const userSupabase = createClient(supabaseUrl, supabaseAnonKey, {
        global: {
          headers: { Authorization: authHeader }
        }
      });

      const { data: { user }, error: authError } = await userSupabase.auth.getUser(token);
      
      if (!authError && user) {
        authenticatedUserId = user.id;
        userEmail = user.email;
      }
    }

    // Security check: if we have an authenticated user, ensure they can only update their own profile
    if (authenticatedUserId && authenticatedUserId !== user_id) {
      return new Response(
        JSON.stringify({
          error: 'Forbidden',
          message: 'You can only update your own profile'
        }),
        { status: 403, headers: corsHeaders }
      );
    }

    if (!profile_data || typeof profile_data !== 'object') {
      return new Response(
        JSON.stringify({
          error: 'Invalid profile data',
          message: 'Profile data must be an object'
        }),
        { status: 400, headers: corsHeaders }
      );
    }

    // Validate allowed fields
    const allowedFields = ['full_name', 'phone_number', 'city', 'state', 'pincode', 'education', 'date_of_birth', 'course'];
    const providedFields = Object.keys(profile_data);
    const invalidFields = providedFields.filter(field => !allowedFields.includes(field));

    if (invalidFields.length > 0) {
      return new Response(
        JSON.stringify({
          error: 'Invalid fields',
          message: `Invalid fields: ${invalidFields.join(', ')}. Only allowed fields are: ${allowedFields.join(', ')}`
        }),
        { status: 400, headers: corsHeaders }
      );
    }

    // Create Supabase client with service role key to bypass RLS
    const supabase = createClient(supabaseUrl, serviceRoleKey);

    // Update user profile in users table using upsert
    // Include email to satisfy the not-null constraint
    const updateData: UpdateProfileData = {
      ...profile_data,
      updated_at: new Date().toISOString()
    };

    const { data: updatedProfile, error: updateError } = await supabase
      .from('users')
      .upsert({
        id: user_id,
        email: userEmail, // Include email from authenticated user
        ...updateData
      })
      .select()
      .single();

    if (updateError) {
      console.error('Error updating user profile:', updateError);
      return new Response(
        JSON.stringify({
          error: 'Failed to update profile',
          message: updateError.message || 'Failed to update user profile'
        }),
        { status: 500, headers: corsHeaders }
      );
    }

    // Send success response
    return new Response(
      JSON.stringify({
        success: true,
        message: 'User profile updated successfully.',
        profile: updatedProfile
      }),
      { status: 200, headers: corsHeaders }
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
