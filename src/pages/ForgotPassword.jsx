import { useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import IconButton from '@mui/material/IconButton';
import InputAdornment from '@mui/material/InputAdornment';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import ArrowBackRoundedIcon from '@mui/icons-material/ArrowBackRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import LockRoundedIcon from '@mui/icons-material/LockRounded';
import MarkEmailReadRoundedIcon from '@mui/icons-material/MarkEmailReadRounded';
import VisibilityOffRoundedIcon from '@mui/icons-material/VisibilityOffRounded';
import VisibilityRoundedIcon from '@mui/icons-material/VisibilityRounded';
import { resetPassword, sendPasswordResetCode } from '../services/otpService';

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
const CODE_RE = /^\d{6}$/;

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
    <Box sx={{ minHeight: '100%', display: 'flex', alignItems: 'center', py: { xs: 5, md: 8 } }}>
      <Container maxWidth="sm">
        <Card>
          <CardContent sx={{ p: { xs: 3, sm: 4.5 }, '&:last-child': { pb: { xs: 3, sm: 4.5 } } }}>
            <Box
              sx={{
                width: 56,
                height: 56,
                borderRadius: 4,
                display: 'grid',
                placeItems: 'center',
                mb: 2.5,
                bgcolor: (theme) => theme.palette.primary.main,
                color: '#fff',
                boxShadow: '0 16px 30px -16px rgba(79, 70, 229, 0.9)',
              }}
            >
              <MarkEmailReadRoundedIcon />
            </Box>

            <Typography variant="h4" sx={{ fontWeight: 700, color: 'text.primary', mb: 0.75 }}>
              {isCodeStep ? 'Choose a new password' : 'Reset your password'}
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
              {isCodeStep
                ? `Enter the 6-digit code we sent to ${email} and pick a new password.`
                : 'Tell us the address you signed up with — we will send you a 6-digit code.'}
            </Typography>

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
                <TextField
                  fullWidth
                  required
                  id="reset-code"
                  label="6-digit code"
                  value={code}
                  onChange={(event) => setCode(event.target.value.replace(/\D/g, '').slice(0, 6))}
                  autoFocus
                  slotProps={{
                    htmlInput: {
                      inputMode: 'numeric',
                      pattern: '[0-9]*',
                      maxLength: 6,
                      autoComplete: 'one-time-code',
                    },
                  }}
                  sx={{
                    '& input': {
                      letterSpacing: '0.6em',
                      textAlign: 'center',
                      fontSize: 22,
                      fontWeight: 600,
                      paddingLeft: '0.6em',
                    },
                  }}
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

            <Divider sx={{ my: 3 }} />

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
          </CardContent>
        </Card>
      </Container>
    </Box>
  );
};

export default ForgotPassword;
