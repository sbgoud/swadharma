import { supabase } from '../lib/supabase';

/**
 * Edge Function Service
 * Handles communication with Supabase Edge Functions
 */

const EDGE_FUNCTION_URL = import.meta.env.VITE_EDGE_FUNCTION_URL || 'https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user';
const UPDATE_USER_PROFILE_FUNCTION_URL = import.meta.env.VITE_UPDATE_USER_PROFILE_FUNCTION_URL || 'https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/update-user-profile';

/**
 * Create a new user account via Edge Function
 * @param {Object} userData - User registration data
 * @returns {Promise<Object>} - Response from Edge Function
 */
export const createUserAccount = async (userData) => {
  const response = await fetch(EDGE_FUNCTION_URL, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify(userData)
  });

  if (!response.ok) {
    const errorData = await response.json();
    throw new Error(errorData.message || 'Failed to create account');
  }

  return await response.json();
};

/**
 * Create a new user account with retry logic
 * @param {Object} userData - User registration data
 * @param {Object} options - Retry options
 * @returns {Promise<Object>} - Response from Edge Function
 */
export const createUserAccountWithRetry = async (userData, options = {}) => {
  const {
    maxRetries = 3,
    retryDelay = 1000
  } = options;

  let lastError;

  for (let i = 0; i < maxRetries; i++) {
    try {
      return await createUserAccount(userData);
    } catch (error) {
      lastError = error;
      if (i < maxRetries - 1) {
        // Wait before retry (exponential backoff)
        await new Promise(resolve => setTimeout(resolve, Math.pow(2, i) * retryDelay));
      }
    }
  }

  throw lastError;
};

/**
 * Validate user data before sending to Edge Function
 * @param {Object} userData - User registration data
 * @returns {Object} - Validation result
 */
export const validateUserData = (userData) => {
  const errors = [];

  // Validate email
  if (!userData.email || typeof userData.email !== 'string') {
    errors.push('Email is required');
  } else {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(userData.email)) {
      errors.push('Please enter a valid email address');
    }
  }

  // Validate password
  if (!userData.password || typeof userData.password !== 'string') {
    errors.push('Password is required');
  } else if (userData.password.length < 6) {
    errors.push('Password must be at least 6 characters');
  }

  // Validate full name
  if (!userData.full_name || typeof userData.full_name !== 'string') {
    errors.push('Full name is required');
  } else if (userData.full_name.trim().length < 2) {
    errors.push('Full name must be at least 2 characters');
  }

  // Validate date of birth
  if (userData.date_of_birth) {
    const dateRegex = /^\d{4}-\d{2}-\d{2}$/;
    if (!dateRegex.test(userData.date_of_birth)) {
      errors.push('Please enter a valid date (YYYY-MM-DD)');
    }
  }

  // Validate phone number
  if (userData.phone_number) {
    const phoneRegex = /^\+?[\d\s\-\(\)]+$/;
    if (!phoneRegex.test(userData.phone_number)) {
      errors.push('Please enter a valid phone number');
    }
  }

  return {
    isValid: errors.length === 0,
    errors
  };
};

/**
 * Format user data for Edge Function
 * @param {Object} formData - Form data from signup form
 * @returns {Object} - Formatted user data
 */
export const formatUserDataForEdgeFunction = (formData) => {
  return {
    email: formData.email?.trim(),
    password: formData.password,
    full_name: formData.fullName?.trim(),
    date_of_birth: formData.dateOfBirth || null,
    address: formData.address?.trim() || null,
    phone_number: formData.phoneNumber?.trim() || null
  };
};

/**
 * Handle Edge Function errors
 * @param {Error} error - Error from Edge Function
 * @returns {Object} - Formatted error object
 */
export const handleEdgeFunctionError = (error) => {
  console.error('Edge Function error:', error);

  // Parse error message
  let message = error.message || 'An unexpected error occurred';

  // Map common errors to user-friendly messages
  if (message.includes('User already exists')) {
    message = 'An account with this email already exists. Please try logging in or use a different email.';
  } else if (message.includes('Missing required fields')) {
    message = 'Please fill in all required fields.';
  } else if (message.includes('Invalid email format')) {
    message = 'Please enter a valid email address.';
  } else if (message.includes('Password too weak')) {
    message = 'Password must be at least 6 characters.';
  }

  return {
    success: false,
    error: message,
    code: error.name || 'EDGE_FUNCTION_ERROR'
  };
};

/**
 * Update user profile via Edge Function
 * @param {string} userId - User ID
 * @param {Object} profileData - Profile data to update
 * @returns {Promise<Object>} - Response from Edge Function
 */
export const updateUserProfile = async (userId, profileData) => {
  // Get the current user's session
  const { data: { session } } = await supabase.auth.getSession();
  
  const headers = {
    'Content-Type': 'application/json',
  };
  
  // Include authorization header if user is logged in
  if (session?.access_token) {
    headers['Authorization'] = `Bearer ${session.access_token}`;
  }

  const response = await fetch(UPDATE_USER_PROFILE_FUNCTION_URL, {
    method: 'POST',
    headers,
    body: JSON.stringify({
      user_id: userId,
      profile_data: profileData
    })
  });

  if (!response.ok) {
    const errorData = await response.json();
    throw new Error(errorData.message || 'Failed to update profile');
  }

  return await response.json();
};

export default {
  createUserAccount,
  createUserAccountWithRetry,
  validateUserData,
  formatUserDataForEdgeFunction,
  handleEdgeFunctionError,
  updateUserProfile
};
