# Edge Function Deployment Guide

This guide will walk you through deploying the `create-user` Edge Function via the Supabase Dashboard and integrating it with your frontend.

## 📋 Prerequisites

Before you begin, make sure you have:
- Access to your Supabase project dashboard
- The Edge Function file: [`supabase/functions/create-user/index.js`](supabase/functions/create-user/index.js)
- Your Supabase project URL and credentials

## 🚀 Step-by-Step Deployment

### Step 1: Access Supabase Dashboard

1. Open your web browser and navigate to:
   ```
   https://supabase.com/dashboard/project/dpaokhpqhchmfsuuwfmy
   ```

2. Log in to your Supabase account if prompted.

### Step 2: Navigate to Edge Functions

1. In the left sidebar, look for **"Edge Functions"** under the **"Project"** section.
2. Click on **"Edge Functions"** to open the Edge Functions page.

### Step 3: Create New Function

1. Click the **"New Function"** button (usually located at the top right of the page).
2. You'll see a form to create a new Edge Function.

### Step 4: Upload the Function File

1. Click the **"Upload a function"** button.
2. A file picker dialog will appear.
3. Navigate to your project directory: `supabase/functions/create-user/`
4. Select the file: `index.js`
5. Click **"Open"** or **"Upload"** to upload the file.

### Step 5: Configure the Function

1. **Function Name**: Enter `create-user` (this must match exactly)
2. **Verify**: The system will automatically verify the uploaded file
3. Wait for the verification to complete (usually takes a few seconds)

### Step 6: Deploy the Function

1. Click the **"Deploy"** button
2. Wait for the deployment to complete (usually takes 10-30 seconds)
3. You'll see a success message when deployment is complete

### Step 7: Get the Function URL

After successful deployment, you'll see:
- **Function URL**: `https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user`
- **Status**: Active
- **Created**: Timestamp

Copy this URL - you'll need it for testing and frontend integration.

## ✅ Verify Deployment

### Test with curl

Open your terminal and run:

```bash
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

**Expected Success Response:**
```json
{
  "success": true,
  "message": "Account created successfully. Please check your email to verify your account.",
  "user": {
    "id": "uuid-here",
    "email": "test@example.com",
    "full_name": "Test User"
  }
}
```

**Expected Error Response (if user exists):**
```json
{
  "error": "User already exists",
  "message": "An account with this email already exists"
}
```

### Check Function Logs

1. Go to **Edge Functions** in the dashboard
2. Click on the `create-user` function
3. Click the **"Logs"** tab
4. View real-time logs and recent invocations

## 🔌 Frontend Integration

### Update Environment Variables

Add the Edge Function URL to your [`.env`](.env) file:

```env
VITE_SUPABASE_URL=https://dpaokhpqhchmfsuuwfmy.supabase.co
VITE_SUPABASE_ANON_KEY=your_anon_key
VITE_PEXELS_API_KEY=your_pexels_api_key
VITE_EDGE_FUNCTION_URL=https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user
```

### Frontend Changes Already Made

The following files have been updated to integrate with the Edge Function:

1. **[`src/pages/Login.jsx`](src/pages/Login.jsx)**
   - Added import for Edge Function service
   - Updated `handleLogin` function to call Edge Function for signup
   - Added validation using `validateUserData`
   - Shows success message and redirects after signup

2. **[`src/services/edgeFunctionService.js`](src/services/edgeFunctionService.js)**
   - Updated to use environment variable for Edge Function URL
   - Includes validation, retry logic, and error handling

3. **[`.env.example`](.env.example)**
   - Added `VITE_EDGE_FUNCTION_URL` variable

### How It Works

When a user fills out the signup form:

1. **Form Validation**: The form validates all required fields
2. **Data Validation**: `validateUserData` checks email format, password strength, etc.
3. **Edge Function Call**: `createUserAccount` sends data to the Edge Function
4. **User Creation**: Edge Function creates Supabase Auth user and database profile
5. **Email Verification**: Supabase sends verification email to user
6. **Success Message**: User sees success message and is redirected to login
7. **Email Verification**: User clicks link in email to activate account

## 🧪 Testing the Integration

### Test Signup Flow

1. Start your development server:
   ```bash
   npm run dev
   ```

2. Open your browser and navigate to: `http://localhost:5173/login`

3. Click **"Create account"** button

4. Fill out the signup form:
   - **Full Name**: Test User
   - **Date of Birth**: 1990-01-01
   - **Address**: 123 Test St
   - **Phone Number**: +1234567890
   - **Email**: test@example.com
   - **Password**: password123
   - **Confirm Password**: password123
   - **Terms**: Check the checkbox

5. Click **"Sign Up"**

6. **Expected Result**:
   - Loading spinner appears
   - Success message appears: "Account created successfully! Please check your email to verify your account."
   - After 3 seconds, redirects to login page

7. Check your email for verification link

8. Click the verification link to activate your account

9. Try logging in with your credentials

## 📊 Monitoring

### View Function Metrics

1. Go to **Edge Functions** in the dashboard
2. Click on the `create-user` function
3. View metrics:
   - **Invocations**: Number of times the function was called
   - **Errors**: Number of failed invocations
   - **Average Execution Time**: How long the function takes to run
   - **Memory Usage**: Memory consumption

### Set Up Alerts (Optional)

1. Go to **Settings** → **Alerts**
2. Create alerts for:
   - High error rate
   - Slow execution time
   - High memory usage

## 🔄 Updating the Function

To update the Edge Function after deployment:

1. Make changes to [`supabase/functions/create-user/index.js`](supabase/functions/create-user/index.js)
2. Go to Supabase Dashboard → Edge Functions
3. Click on the `create-user` function
4. Click the **"..."** menu (three dots)
5. Select **"Redeploy"**
6. Upload the updated file
7. Click **"Deploy"**
8. Wait for deployment to complete

## 🚨 Troubleshooting

### Issue: Function Not Found

**Error**: `404 Not Found`

**Solution**:
- Verify the function name is exactly `create-user`
- Check the function URL is correct
- Ensure the function is deployed and active

### Issue: CORS Error

**Error**: `Access to fetch at '...' has been blocked by CORS policy`

**Solution**:
- The Edge Function already includes CORS headers
- Clear your browser cache
- Try using a different browser
- Check browser console for specific error details

### Issue: User Already Exists

**Error**: `User already exists`

**Solution**:
- This is expected behavior for duplicate email addresses
- Use a different email address for testing
- Or delete the existing user from Supabase Dashboard → Authentication → Users

### Issue: Email Not Received

**Error**: User created but no verification email received

**Solution**:
- Check spam/junk folder
- Verify email templates in Supabase Dashboard → Authentication → Email Templates
- Check email logs in Supabase Dashboard → Logs
- Ensure email provider is configured correctly

### Issue: Deployment Failed

**Error**: Deployment fails with error message

**Solution**:
- Check the function file has no syntax errors
- Verify the file is named `index.js` (not `.ts`)
- Ensure the file is in the correct directory
- View function logs for specific error details
- Try redeploying the function

### Issue: Frontend Not Calling Edge Function

**Error**: Signup still uses direct Supabase auth

**Solution**:
- Verify [`src/pages/Login.jsx`](src/pages/Login.jsx) has the correct imports
- Check that `createUserAccount` is being called in the signup flow
- Ensure environment variable `VITE_EDGE_FUNCTION_URL` is set
- Restart your development server after updating `.env`

## 📝 Additional Notes

### Security

- The Edge Function uses the **Service Role Key** for elevated privileges
- This allows the function to bypass Row Level Security (RLS) policies
- The Service Role Key is stored securely in Supabase environment variables
- Never expose the Service Role Key in frontend code

### Rate Limiting

- Consider implementing rate limiting on the Edge Function
- This prevents abuse and protects against brute force attacks
- You can use Supabase's built-in rate limiting or implement custom logic

### Error Handling

- The Edge Function includes comprehensive error handling
- All errors are returned with user-friendly messages
- Frontend displays these messages to users
- Errors are logged for debugging purposes

### Email Verification

- Email verification is handled automatically by Supabase Auth
- Users cannot log in until they verify their email
- You can customize email templates in the Supabase Dashboard
- Consider adding a "Resend verification email" feature

## 📚 Additional Resources

- [Supabase Edge Functions Documentation](https://supabase.com/docs/guides/functions)
- [Supabase Dashboard Guide](https://supabase.com/docs/guides/dashboard)
- [Deno Documentation](https://deno.land/manual)
- [Supabase JS Client Documentation](https://supabase.com/docs/reference/javascript)
- [Service Role Keys Documentation](https://supabase.com/docs/guides/functions/service-role-keys)

## 🎉 Summary

You've successfully:

✅ Deployed the `create-user` Edge Function via Supabase Dashboard
✅ Tested the function with curl
✅ Integrated the function with your frontend
✅ Updated environment variables
✅ Tested the signup flow
✅ Learned how to monitor and update the function

The Edge Function is now ready to handle user registration for your Swadharma IAS Academy application!

## 🆘 Need Help?

If you encounter any issues:

1. Check the [Troubleshooting](#-troubleshooting) section above
2. View function logs in the Supabase Dashboard
3. Check browser console for frontend errors
4. Review the [Edge Function README](supabase/functions/README.md) for more details
5. Consult Supabase documentation: https://supabase.com/docs

---

**Last Updated**: 2026-01-28
**Project**: Swadharma IAS Academy
**Edge Function**: create-user
