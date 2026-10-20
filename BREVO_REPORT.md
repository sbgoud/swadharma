# Brevo email OTP report

Commit: d4da997 (local only, not pushed). `npm run build` and `eslint src` pass.

## Files
- supabase/functions/_shared/brevo.ts - reusable `sendEmail({ to, subject, html, text })` via Brevo `POST /v3/smtp/email`. Reads `brevo_api_key`, `brevo_sender_email`, `brevo_sender_name` from `private.app_secrets` (through the service-role-only RPC `public.get_app_secret`), falling back to env `BREVO_API_KEY`, `BREVO_SENDER_EMAIL`, `BREVO_SENDER_NAME`.
- supabase/functions/_shared/templates.ts - branded Swadharma IAS HTML/text templates.
- supabase/functions/email-otp/index.ts - edge function `email-otp`, actions `send_verify`, `verify`, `send_reset`, `reset_password`.
- supabase/migrations/006_email_otp.sql - `private.app_secrets`, `private.email_otps`, `profiles.email_verified`, service-role-only helpers (`get_app_secret`, `auth_user_id_by_email`, `create_email_otp`, `verify_email_otp`), rate limits (5 sends/email/hour, 5 attempts/code).
- Frontend: src/pages/VerifyEmail.jsx, src/pages/ForgotPassword.jsx, src/services/otpService.js, plus edits to App.jsx, ProtectedRoute.jsx, AuthContext.jsx, Login.jsx, examService.js.

## Deploy order (important)
1. Apply 006_email_otp.sql first. Until it is applied the frontend treats every profile as unverified, so users would be held on the verify screen.
2. Insert secrets (below).
3. `supabase functions deploy email-otp --project-ref oxeqjtzeamdgyeqhlljk`

## Secrets SQL
```sql
insert into private.app_secrets (key, value) values
  ('brevo_api_key',      '<BREVO_API_KEY>'),
  ('brevo_sender_email', '<verified-sender@yourdomain>'),
  ('brevo_sender_name',  'Swadharma IAS')
on conflict (key) do update set value = excluded.value;
```
The sender email must be a verified sender/domain in Brevo.
