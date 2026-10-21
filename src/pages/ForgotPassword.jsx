import { useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import IconButton from '@mui/material/IconButton';
import InputAdornment from '@mui/material/InputAdornment';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import ArrowBackRoundedIcon from '@mui/icons-material/ArrowBackRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import LockRoundedIcon from '@mui/icons-material/LockRounded';
import VisibilityOffRoundedIcon from '@mui/icons-material/VisibilityOffRounded';
import VisibilityRoundedIcon from '@mui/icons-material/VisibilityRounded';
import { resetPassword, sendPasswordResetCode } from '../services/otpService';
import AuthShell from '../components/AuthShell';
import OtpField from '../components/OtpField';

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
const CODE_RE = /^\d{6}$/;

/** The two steps of the recovery flow, shown as a small progress track. */
const StepTrack = ({ current }) => (
  <Stack direction="row" spacing={1} sx={{ mb: 3 }} aria-hidden="true">
    {['Your e-mail', 'New password'].map((label, index) => {
      const active = index <= current;
      return (
        <Stack key={label} spacing={1} sx={{ flex: 1 }}>
          <Box
            sx={{
              height: 4,
              borderRadius: '2px',
              bgcolor: active ? 'primary.main' : 'action.hover',
              transition: 'background-color 200ms ease',
            }}
          />
          <Typography
            variant="caption"
            sx={{
              fontWeight: active ? 600 : 500,
              color: active ? 'text.secondary' : 'text.disabled',
            }}
          >
            {label}
          </Typography>
        </Stack>
      );
    })}
  </Stack>
);

/**
 * Password recovery through a 6-digit code: the code is mailed out with
 * `send_reset`, the new password is set with `reset_password` and the visitor
 * is sent back to the sign-in page.
 */
const ForgotPassword = () => {
  const navigate = useNavigate();

  const [step, setStep] = useState('email');
  const [email, setEmail] = useState('');
  const [code, setCode] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState(null);
  const [message, setMessage] = useState(null);
  const [done, setDone] = useState(false);

  const handleSendCode = async (event) => {
    event.preventDefault();
    setError(null);
    setMessage(null);

    if (!EMAIL_RE.test(email)) {
      setError('Please enter a valid e-mail address.');
      return;
    }

    setBusy(true);
    try {
      const result = await sendPasswordResetCode(email);
      setMessage(result.message || 'If that address is registered, a 6-digit code is on its way.');
      setStep('code');
    } catch (err) {
      setError(err.message || 'We could not send the code. Please try again.');
    } finally {
      setBusy(false);
    }
  };

  const handleReset = async (event) => {
    event.preventDefault();
    setError(null);
    setMessage(null);

    if (!CODE_RE.test(code)) {
      setError('Enter the 6-digit code from the e-mail.');
      return;
    }
    if (password.length < 8) {
      setError('Password must be at least 8 characters long.');
      return;
    }
    if (password !== confirmPassword) {
      setError('Passwords do not match.');
      return;
    }

    setBusy(true);
    try {
      await resetPassword({ email, code, newPassword: password });
      setDone(true);
      setMessage('Your password has been updated. Taking you to the sign-in page…');
      setTimeout(() => navigate('/login', { replace: true }), 1500);
    } catch (err) {
      setError(err.message || 'We could not update the password. Please try again.');
    } finally {
      setBusy(false);
    }
  };

  const isCodeStep = step === 'code';

  return (
    <AuthShell
      eyebrow="Account recovery"
      title={isCodeStep ? 'Choose a new password' : 'Reset your password'}
      subtitle={
        isCodeStep
          ? `Enter the 6-digit code we sent to ${email} and pick a new password.`
          : 'Tell us the address you signed up with — we will send you a 6-digit code.'
      }
      aside={{
        heading: 'Locked out? It happens',
        body: 'A six-digit code is all it takes to get back in. Nothing about your papers or your attempt history is lost in the process.',
        points: [
          'The code arrives by e-mail within a minute',
          'Your papers stay exactly as you left them',
          'Nothing is ever deleted from your history',
        ],
      }}
      footer={
        <Box sx={{ textAlign: 'center' }}>
          <Typography
            component={RouterLink}
            to="/login"
            variant="body2"
            sx={{ color: 'text.secondary', textDecoration: 'none', '&:hover': { color: 'primary.main' } }}
          >
            ← Back to sign in
          </Typography>
        </Box>
      }
    >
      <StepTrack current={isCodeStep ? 1 : 0} />

      {message && (
        <Alert severity="success" sx={{ mb: 2.5 }} onClose={() => setMessage(null)}>
          {message}
        </Alert>
      )}
      {error && (
        <Alert severity="error" sx={{ mb: 2.5 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}
      {done && (
        <Alert severity="success" sx={{ mb: 2.5 }} icon={<CheckCircleRoundedIcon />}>
          Password updated.
        </Alert>
      )}

      {isCodeStep ? (
        <Stack component="form" onSubmit={handleReset} spacing={2.5}>
          <OtpField
            id="reset-code"
            value={code}
            onChange={setCode}
            autoFocus
            disabled={busy || done}
            ariaLabel="6-digit reset code"
          />

          <TextField
            fullWidth
            required
            id="reset-new-password"
            label="New password"
            type={showPassword ? 'text' : 'password'}
            autoComplete="new-password"
            value={password}
            onChange={(event) => setPassword(event.target.value)}
            helperText="At least 8 characters"
            slotProps={{
              input: {
                startAdornment: (
                  <InputAdornment position="start">
                    <LockRoundedIcon color="action" />
                  </InputAdornment>
                ),
                endAdornment: (
                  <InputAdornment position="end">
                    <IconButton
                      onClick={() => setShowPassword((value) => !value)}
                      edge="end"
                      aria-label={showPassword ? 'Hide password' : 'Show password'}
                    >
                      {showPassword ? <VisibilityOffRoundedIcon /> : <VisibilityRoundedIcon />}
                    </IconButton>
                  </InputAdornment>
                ),
              },
            }}
          />

          <TextField
            fullWidth
            required
            id="reset-confirm-password"
            label="Confirm new password"
            type={showPassword ? 'text' : 'password'}
            autoComplete="new-password"
            value={confirmPassword}
            onChange={(event) => setConfirmPassword(event.target.value)}
            slotProps={{
              input: {
                startAdornment: (
                  <InputAdornment position="start">
                    <LockRoundedIcon color="action" />
                  </InputAdornment>
                ),
              },
            }}
          />

          <Button type="submit" variant="contained" size="large" disabled={busy || done}>
            {busy ? 'Updating…' : 'Update password'}
          </Button>

          <Button
            type="button"
            onClick={() => {
              setStep('email');
              setCode('');
              setError(null);
              setMessage(null);
            }}
            startIcon={<ArrowBackRoundedIcon />}
            sx={{ alignSelf: 'flex-start', px: 0 }}
          >
            Use a different address
          </Button>
        </Stack>
      ) : (
        <Stack component="form" onSubmit={handleSendCode} spacing={2.5}>
          <TextField
            fullWidth
            required
            id="forgot-email"
            label="Email address"
            type="email"
            autoComplete="email"
            value={email}
            onChange={(event) => setEmail(event.target.value)}
            autoFocus
            slotProps={{
              input: {
                startAdornment: (
                  <InputAdornment position="start">
                    <EmailRoundedIcon color="action" />
                  </InputAdornment>
                ),
              },
            }}
          />
          <Button type="submit" variant="contained" size="large" disabled={busy}>
            {busy ? 'Sending…' : 'Send reset code'}
          </Button>
        </Stack>
      )}
    </AuthShell>
  );
};

export default ForgotPassword;
