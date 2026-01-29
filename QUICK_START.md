# Quick Start: Deploy Edge Function via Dashboard

Follow these simple steps to deploy the Edge Function and integrate it with your frontend.

## 🚀 Deploy Edge Function (5 minutes)

### 1. Open Supabase Dashboard
```
https://supabase.com/dashboard/project/dpaokhpqhchmfsuuwfmy
```

### 2. Navigate to Edge Functions
- Click **"Edge Functions"** in the left sidebar

### 3. Create New Function
- Click **"New Function"** button

### 4. Upload Function File
- Click **"Upload a function"**
- Select: `supabase/functions/create-user/index.js`
- Click **"Open"**

### 5. Configure Function
- **Function Name**: Enter `create-user`
- Wait for verification

### 6. Deploy
- Click **"Deploy"** button
- Wait for deployment to complete

### 7. Copy Function URL
```
https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user
```

## ✅ Test the Function

Run this command in your terminal:

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

**Expected Response:**
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

## 🔌 Frontend Integration

### Update .env File

Add this line to your [`.env`](.env) file:

```env
VITE_EDGE_FUNCTION_URL=https://dpaokhpqhchmfsuuwfmy.supabase.co/functions/v1/create-user
```

### Restart Development Server

```bash
# Stop the current server (Ctrl+C)
# Then restart
npm run dev
```

## 🧪 Test Signup Flow

1. Open browser: `http://localhost:5173/login`
2. Click **"Create account"**
3. Fill out the form:
   - Full Name: Test User
   - Date of Birth: 1990-01-01
   - Address: 123 Test St
   - Phone Number: +1234567890
   - Email: test@example.com
   - Password: password123
   - Confirm Password: password123
   - Check "Terms and Conditions"
4. Click **"Sign Up"**
5. See success message
6. Check email for verification link
7. Click verification link
8. Try logging in

## 📊 Monitor Function

1. Go to Supabase Dashboard → Edge Functions
2. Click on `create-user` function
3. View **Logs** tab for real-time logs
4. View **Metrics** for performance data

## 🔄 Update Function

To update the function later:

1. Edit [`supabase/functions/create-user/index.js`](supabase/functions/create-user/index.js)
2. Go to Supabase Dashboard → Edge Functions
3. Click on `create-user` function
4. Click **"..."** menu → **"Redeploy"**
5. Upload updated file
6. Click **"Deploy"**

## 🚨 Troubleshooting

### Function Not Found
- Verify function name is exactly `create-user`
- Check function URL is correct

### CORS Error
- Clear browser cache
- Try different browser

### User Already Exists
- Use different email for testing
- Or delete existing user from Dashboard → Authentication → Users

### Email Not Received
- Check spam/junk folder
- Verify email templates in Dashboard → Authentication → Email Templates

## 📚 More Information

- **Full Guide**: See [`DEPLOYMENT_GUIDE.md`](DEPLOYMENT_GUIDE.md) for detailed instructions
- **Edge Function Docs**: See [`supabase/functions/README.md`](supabase/functions/README.md)
- **Supabase Docs**: https://supabase.com/docs/guides/functions

## ✅ Summary

You've completed:

✅ Deployed Edge Function via Dashboard
✅ Tested function with curl
✅ Updated environment variables
✅ Restarted development server
✅ Tested signup flow

Your Edge Function is now ready! 🎉

---

**Need Help?** Check [`DEPLOYMENT_GUIDE.md`](DEPLOYMENT_GUIDE.md) for detailed troubleshooting.
