# Supabase Edge Function - Create User

This Edge Function handles user registration from the website, creating a new Supabase Auth user and user profile.

## 📋 Function Details

- **Name**: `create-user`
- **Endpoint**: `https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user`
- **Method**: `POST`
- **Authentication**: Uses Service Role Key (bypasses RLS)

## 🚀 Deployment via Supabase Dashboard (Recommended)

Since Docker is not running, use the Supabase Dashboard to deploy the Edge Function.

### Step 1: Access Supabase Dashboard

1. Go to: https://supabase.com/dashboard/project/dpaokhpqhchmfsuuwfmy
2. Navigate to: **Edge Functions** in the left sidebar
3. Click the **"New Function"** button

### Step 2: Upload the Function File

1. Click **"Upload a function"** button
2. Select the file: [`create-user/index.js`](create-user/index.js) from your local `supabase/functions/create-user/` directory
3. Click **"Upload"**

### Step 3: Configure the Function

1. **Function Name**: Enter `create-user`
2. **Verify**: The system will verify the file

### Step 4: Deploy the Function

1. Click the **"Deploy"** button
2. Wait for the deployment to complete
3. You'll see a success message when done

### Step 5: Get the Function URL

After deployment, you'll see the function URL:
```
https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user
```

### Step 6: Test the Function

```bash
# Test the deployed function
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "password123",
    "full_name": "Test User",
    "date_of_birth": "1990-01-01",
    "address": "123 Test St",
    "phone_number": "+1234567890"
  }'
```

## 📝 Request Format

### POST Body

```json
{
  "email": "user@example.com",
  "password": "securepassword",
  "full_name": "John Doe",
  "date_of_birth": "1990-01-01",
  "address": "123 Main St, City, State",
  "phone_number": "+1234567890"
}
```

### Required Fields
- `email` (string, required) - User's email address
- `password` (string, required) - User's password (min 6 characters)
- `full_name` (string, required) - User's full name

### Optional Fields
- `date_of_birth` (string, optional) - User's date of birth (YYYY-MM-DD format)
- `address` (string, optional) - User's address
- `phone_number` (string, optional) - User's phone number

## 📤 Response Format

### Success Response (201 Created)

```json
{
  "success": true,
  "message": "Account created successfully. Please check your email to verify your account.",
  "user": {
    "id": "uuid-here",
    "email": "user@example.com",
    "full_name": "John Doe"
  }
}
```

### Error Responses

#### 400 Bad Request
```json
{
  "error": "Missing required fields",
  "message": "Email, password, and full name are required"
}
```

#### 400 Invalid Email
```json
{
  "error": "Invalid email format",
  "message": "Please provide a valid email address"
}
```

#### 400 Weak Password
```json
{
  "error": "Password too weak",
  "message": "Password must be at least 6 characters"
}
```

#### 409 Conflict (User Exists)
```json
{
  "error": "User already exists",
  "message": "An account with this email already exists"
}
```

#### 500 Internal Server Error
```json
{
  "error": "Failed to create user",
  "message": "Failed to create account"
}
```

## 🔌 Frontend Integration

### Update Login Page

Modify your [`src/pages/Login.jsx`](src/pages/Login.jsx) to call the Edge Function:

```javascript
// Add this import
import { createUserAccount, validateUserData } from '../services/edgeFunctionService';

// Update the handleSignUp function
const handleSignUp = async (e) => {
  e.preventDefault();
  setLoading(true);
  setError(null);

  try {
    if (isSignUp) {
      // Validate form
      const validation = validateUserData({
        email,
        password,
        full_name: fullName,
        date_of_birth: dateOfBirth,
        address,
        phone_number: phoneNumber
      });

      if (!validation.isValid) {
        setError(validation.errors.join('. '));
        return;
      }

      // Call Edge Function
      const response = await createUserAccount({
        email,
        password,
        full_name: fullName,
        date_of_birth: dateOfBirth,
        address,
        phone_number: phoneNumber
      });

      if (response.success) {
        setMessage('Account created successfully! Please check your email to verify your account.');
        // Redirect to login page after delay
        setTimeout(() => {
          setIsSignUp(false);
          navigate('/login');
        }, 3000);
      } else {
        throw new Error(response.message || 'Failed to create account');
      }
    } else {
      // Existing login flow
      const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
      if (signInError) throw signInError;
      navigate('/');
    }
  } catch (err) {
    setError(err.message);
  } finally {
    setLoading(false);
  }
};
```

### Update Environment Variables

Add the Edge Function URL to your [`.env`](../../.env) file:

```env
VITE_SUPABASE_URL=https://dpaokhpqhchmfsuuwfmy.supabase.co
VITE_SUPABASE_ANON_KEY=your_anon_key
VITE_PEXELS_API_KEY=your_pexels_api_key
VITE_EDGE_FUNCTION_URL=https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user
```

### Update Edge Function Service

Update [`src/services/edgeFunctionService.js`](src/services/edgeFunctionService.js) to use the environment variable:

```javascript
// Change from hardcoded URL to environment variable
const EDGE_FUNCTION_URL = import.meta.env.VITE_EDGE_FUNCTION_URL || 'https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user';
```

## 🔒 Security Features

### Service Role Key
- Uses `SUPABASE_AUTH_SERVICE_ROLE_KEY` for elevated privileges
- Bypasses Row Level Security (RLS) policies
- Required for creating users and profiles

### Input Validation
- Email format validation
- Password strength validation (minimum 6 characters)
- Required field validation
- XSS prevention (handled by Supabase)

### CORS Configuration
- Allows requests from any origin (`*`)
- Supports POST and OPTIONS methods
- Proper CORS headers for browser compatibility

## 🧪 Testing

### Test with curl

```bash
# Test successful registration
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "newuser@example.com",
    "password": "securepass123",
    "full_name": "New User",
    "date_of_birth": "1995-05-15",
    "address": "456 Oak Street",
    "phone_number": "+15551234567"
  }'

# Test duplicate email
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "existing@example.com",
    "password": "password123",
    "full_name": "Existing User"
  }'

# Test missing fields
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "pass"
  }'
```

## 📊 Monitoring

### View Function Logs

After deployment, you can view logs in the Supabase Dashboard:

1. Go to **Edge Functions** in the dashboard
2. Click on the `create-user` function
3. Click the **"Logs"** tab
4. View real-time logs and recent invocations

### Monitor Function Metrics

Check your Supabase Dashboard for:
- Function invocation count
- Error rates
- Average execution time
- Memory usage

## 🚨 Troubleshooting

### Docker Not Running

If you see this error when deploying via CLI:
```
WARNING: Docker is not running
```

**Solution**: Use the Supabase Dashboard deployment method above instead.

### Function Not Found

If you see this error:
```
failed to read file: open supabase/functions/create-user/index.ts: no such file or directory
```

**Solution**: Ensure the file exists at `supabase/functions/create-user/index.js` (not `.ts`).

### Deployment Failed

If deployment fails:
1. Check the function file has no syntax errors
2. Verify the file is named `index.js` (not `.ts`)
3. Check the file is in the correct directory
4. View function logs for errors

## 🔄 Updates

To update the function after deployment:

1. Make changes to `supabase/functions/create-user/index.js`
2. Go to Supabase Dashboard → Edge Functions
3. Click on the `create-user` function
4. Click the **"..."** menu
5. Select **"Redeploy"**
6. Upload the updated file
7. Click **"Deploy"**

## 📝 Notes

- The function automatically creates both an Auth user and a user profile
- Email verification is handled by Supabase Auth
- The user will be redirected to login page after email verification
- All optional fields are stored in the users table
- The function uses service role key for elevated privileges
- CORS is enabled for cross-origin requests from the frontend
- The Edge Function URL will be available after deployment

## 📚 Additional Resources

- [Supabase Edge Functions Documentation](https://supabase.com/docs/guides/functions)
- [Deno Documentation](https://deno.land/manual)
- [Supabase JS Client Documentation](https://supabase.com/docs/reference/javascript)
- [Service Role Keys Documentation](https://supabase.com/docs/guides/functions/service-role-keys)

## 🔄 Alternative: Direct Supabase Client

If you prefer to use the Supabase client directly without Edge Functions, you can modify your [`src/pages/Login.jsx`](src/pages/Login.jsx) to:

```javascript
import { supabase } from '../lib/supabase';
import { sanitizeUserProfile } from '../utils/sanitizer';

const handleSignUp = async (e) => {
  e.preventDefault();
  setLoading(true);
  setError(null);

  try {
    if (isSignUp) {
      // Validate and sanitize form data
      const { isValid, data: sanitizedData, errors } = sanitizeUserProfile({
        full_name: fullName,
        email,
        password,
        date_of_birth: dateOfBirth,
        address,
        phone_number: phoneNumber
      });

      if (!isValid) {
        setError(errors.join('. '));
        return;
      }

      // Create auth user directly
      const { data: authData, error: authError } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            full_name: sanitizedData.full_name,
            date_of_birth: sanitizedData.date_of_birth,
            address: sanitizedData.address,
            phone_number: sanitizedData.phone_number
          },
          emailRedirectTo: `${window.location.origin}/login`
        }
      });

      if (authError) throw authError;

      // User profile will be created automatically by the trigger
      setMessage('Account created successfully! Please check your email to verify your account.');
      setTimeout(() => {
        setIsSignUp(false);
        navigate('/login');
      }, 2000);
    } else {
      // Existing login flow
      const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
      if (signInError) throw signInError;
      navigate('/');
    }
  } catch (err) {
    setError(err.message);
  } finally {
    setLoading(false);
  }
};
```

This approach:
- Uses Supabase client directly (no Edge Function needed)
- User profile is created automatically by the database trigger
- Simpler and more reliable
- No Docker required for deployment

## 📝 Request Format

### POST Body

```json
{
  "email": "user@example.com",
  "password": "securepassword",
  "full_name": "John Doe",
  "date_of_birth": "1990-01-01",
  "address": "123 Main St, City, State",
  "phone_number": "+1234567890"
}
```

### Required Fields
- `email` (string, required) - User's email address
- `password` (string, required) - User's password (min 6 characters)
- `full_name` (string, required) - User's full name

### Optional Fields
- `date_of_birth` (string, optional) - User's date of birth (YYYY-MM-DD format)
- `address` (string, optional) - User's address
- `phone_number` (string, optional) - User's phone number

## 📤 Response Format

### Success Response (201 Created)

```json
{
  "success": true,
  "message": "Account created successfully. Please check your email to verify your account.",
  "user": {
    "id": "uuid-here",
    "email": "user@example.com",
    "full_name": "John Doe"
  }
}
```

### Error Responses

#### 400 Bad Request
```json
{
  "error": "Missing required fields",
  "message": "Email, password, and full name are required"
}
```

#### 400 Invalid Email
```json
{
  "error": "Invalid email format",
  "message": "Please provide a valid email address"
}
```

#### 400 Weak Password
```json
{
  "error": "Password too weak",
  "message": "Password must be at least 6 characters"
}
```

#### 409 Conflict (User Exists)
```json
{
  "error": "User already exists",
  "message": "An account with this email already exists"
}
```

#### 500 Internal Server Error
```json
{
  "error": "Failed to create user",
  "message": "Failed to create account"
}
```

## 🔌 Integration with Frontend

### Update Login Page

Modify your [`src/pages/Login.jsx`](src/pages/Login.jsx) to call the Edge Function:

```javascript
// Add this function to your Login component
const handleSignUp = async (e) => {
  e.preventDefault();
  setLoading(true);
  setMessage(null);
  setError(null);

  try {
    if (isSignUp) {
      // Validate form
      if (!fullName || !dateOfBirth || !address || !phoneNumber) {
        throw new Error('All fields are required');
      }

      if (password !== confirmPassword) {
        throw new Error('Passwords do not match');
      }

      if (!termsAccepted) {
        throw new Error('You must accept the terms and conditions');
      }

      // Call Edge Function instead of direct Supabase auth
      const response = await fetch('https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          email,
          password,
          full_name: fullName,
          date_of_birth: dateOfBirth,
          address,
          phone_number: phoneNumber
        })
      });

      const data = await response.json();

      if (data.success) {
        setMessage('Account created successfully! Please check your email to verify your account.');
        // Redirect to login page after delay
        setTimeout(() => {
          setIsSignUp(false);
        }, 3000);
      } else {
        throw new Error(data.message || 'Failed to create account');
      }
    } else {
      // Existing login flow
      const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
      if (signInError) throw signInError;
      navigate('/');
    }
  } catch (err) {
    setError(err.message);
  } finally {
    setLoading(false);
  }
};
```

### Create API Service Function

Create a new service function in [`src/services/edgeFunctionService.js`](src/services/edgeFunctionService.js):

```javascript
// src/services/edgeFunctionService.js
const EDGE_FUNCTION_URL = 'https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user';

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

export const createUserAccountWithRetry = async (userData, maxRetries = 3) => {
  let lastError;
  
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await createUserAccount(userData);
    } catch (error) {
      lastError = error;
      if (i < maxRetries - 1) {
        // Wait before retry (exponential backoff)
        await new Promise(resolve => setTimeout(resolve, Math.pow(2, i) * 1000));
      }
    }
  }
  
  throw lastError;
};
```

### Update Form Validation

Update your form validation to work with the Edge Function:

```javascript
// src/pages/Login.jsx
const handleSubmit = async (e) => {
  e.preventDefault();
  setLoading(true);
  setError(null);

  try {
    if (isSignUp) {
      // Validate all fields
      const validationErrors = [];

      if (!fullName || fullName.trim().length < 2) {
        validationErrors.push('Full name must be at least 2 characters');
      }

      if (!email || !validateEmail(email)) {
        validationErrors.push('Please enter a valid email address');
      }

      if (!password || password.length < 6) {
        validationErrors.push('Password must be at least 6 characters');
      }

      if (password !== confirmPassword) {
        validationErrors.push('Passwords do not match');
      }

      if (!dateOfBirth) {
        validationErrors.push('Date of birth is required');
      }

      if (!address) {
        validationErrors.push('Address is required');
      }

      if (!phoneNumber) {
        validationErrors.push('Phone number is required');
      }

      if (!termsAccepted) {
        validationErrors.push('You must accept the terms and conditions');
      }

      if (validationErrors.length > 0) {
        setError(validationErrors.join('. '));
        return;
      }

      // Call Edge Function
      const response = await fetch('https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          email,
          password,
          full_name: fullName,
          date_of_birth: dateOfBirth,
          address,
          phone_number: phoneNumber
        })
      });

      const data = await response.json();

      if (data.success) {
        setMessage('Account created successfully! Please check your email to verify your account.');
        setTimeout(() => {
          setIsSignUp(false);
        }, 3000);
      } else {
        throw new Error(data.message || 'Failed to create account');
      }
    }
  } catch (err) {
    setError(err.message);
  } finally {
    setLoading(false);
  }
};
```

## 🔒 Security Features

### Service Role Key
- Uses `SUPABASE_AUTH_SERVICE_ROLE_KEY` for elevated privileges
- Bypasses Row Level Security (RLS) policies
- Required for creating users and profiles

### Input Validation
- Email format validation
- Password strength validation (minimum 6 characters)
- Required field validation
- XSS prevention (handled by Supabase)

### CORS Configuration
- Allows requests from any origin (`*`)
- Supports POST and OPTIONS methods
- Proper CORS headers for browser compatibility

## 🧪 Testing

### Local Testing with Deno

```bash
# Test locally with Deno
deno run --allow-net --allow-env supabase/functions/create-user/index.js
```

### Test with curl

```bash
# Test successful registration
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "newuser@example.com",
    "password": "securepass123",
    "full_name": "New User",
    "date_of_birth": "1995-05-15",
    "address": "456 Oak Street",
    "phone_number": "+15551234567"
  }'

# Test duplicate email
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "existing@example.com",
    "password": "password123",
    "full_name": "Existing User"
  }'

# Test missing fields
curl -X POST https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user \
  -H "Content-Type: application/json" \
  -d '{
    "email": "test@example.com",
    "password": "pass"
  }'
```

## 📊 Monitoring

### View Function Logs

```bash
# View real-time logs
supabase functions logs create-user --project-ref dpaokhpqhchmfsuuwfmy

# View recent logs
supabase functions logs create-user --project-ref dpaokhpqhchmfsuuwfmy --tail 100
```

### Monitor Function Metrics

Check your Supabase Dashboard for:
- Function invocation count
- Error rates
- Average execution time
- Memory usage

## 🚨 Troubleshooting

### Docker Not Running

If you see this error:
```
WARNING: Docker is not running
```

**Solution**: Start Docker Desktop or Docker daemon

```bash
# On macOS
open -a Docker

# On Linux
sudo systemctl start docker

# On Windows
Start Docker Desktop
```

### Function Not Found

If you see this error:
```
failed to read file: open supabase/functions/create-user/index.ts: no such file or directory
```

**Solution**: Ensure the file exists at the correct path

```bash
# Check if file exists
ls -la supabase/functions/create-user/

# Verify file extension (should be .js, not .ts)
```

### Deployment Failed

If deployment fails:
1. Check Docker is running
2. Verify project reference is correct
3. Check function file exists and has no syntax errors
4. Check Supabase project is linked
5. View function logs for errors

## 📚 Additional Resources

- [Supabase Edge Functions Documentation](https://supabase.com/docs/guides/functions)
- [Deno Documentation](https://deno.land/manual)
- [Supabase JS Client Documentation](https://supabase.com/docs/reference/javascript)
- [Service Role Keys Documentation](https://supabase.com/docs/guides/functions/service-role-keys)

## 🔄 Updates

To update the function after deployment:

1. Make changes to `supabase/functions/create-user/index.js`
2. Deploy again: `supabase functions deploy create-user --project-ref dpaokhpqhchmfsuuwfmy`
3. Test the updated function

## 📝 Notes

- The function automatically creates both an Auth user and a user profile
- Email verification is handled by Supabase Auth
- The user will be redirected to login page after email verification
- All optional fields are stored in the users table
- The function uses the service role key for elevated privileges
- CORS is enabled for cross-origin requests from the frontend
