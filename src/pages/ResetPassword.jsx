import { useEffect, useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import IconButton from '@mui/material/IconButton';
import InputAdornment from '@mui/material/InputAdornment';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import LockRoundedIcon from '@mui/icons-material/LockRounded';
import VisibilityOffRoundedIcon from '@mui/icons-material/VisibilityOffRounded';
import VisibilityRoundedIcon from '@mui/icons-material/VisibilityRounded';
import { supabase } from '../lib/supabase';
import AuthShell from '../components/AuthShell';

/**
 * Landing page of the password recovery link. supabase-js picks up the
 * recovery token from the URL (detectSessionInUrl) and establishes a
 * temporary session, which allows setting a new password.
 */
const ResetPassword = () => {
  const navigate = useNavigate();
  const [ready, setReady] = useState(false);
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState(null);
  const [done, setDone] = useState(false);

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => setReady(Boolean(data?.session)));
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === 'PASSWORD_RECOVERY' || session) setReady(true);
    });
    return () => subscription.unsubscribe();
  }, []);

  const handleSubmit = async (event) => {
    event.preventDefault();
    setError(null);
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
      const { error: updateError } = await supabase.auth.updateUser({ password });
      if (updateError) throw updateError;
      setDone(true);
      setTimeout(() => navigate('/dashboard', { replace: true }), 1500);
    } catch (err) {
      setError(err.message || 'Could not update the password.');
    } finally {
      setBusy(false);
    }
  };

  return (
    <AuthShell
      eyebrow="Account recovery"
      title="Set a new password"
      subtitle={
        ready
          ? 'Choose a new password for your Swadharma IAS account.'
          : 'Open this page from the reset link in your email to set a new password.'
      }
      aside={{
        heading: 'Almost there',
        body: 'Pick something you will remember — at least eight characters — and you are back in the dashboard.',
        points: [
          'Your attempt history is untouched',
          'Your papers stay exactly as you left them',
          'Sign in with the new password straight away',
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
      {error && (
        <Alert severity="error" sx={{ mb: 2.5 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}
      {done && (
        <Alert severity="success" sx={{ mb: 2.5 }} icon={<CheckCircleRoundedIcon />}>
          Password updated. Taking you to your dashboard…
        </Alert>
      )}

      <Stack component="form" onSubmit={handleSubmit} spacing={2.5}>
        <TextField
          fullWidth
          required
          id="new-password"
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
          id="new-confirm-password"
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
        <Button type="submit" variant="contained" size="large" disabled={!ready || busy}>
          {busy ? 'Updating…' : 'Update password'}
        </Button>
      </Stack>
    </AuthShell>
  );
};

export default ResetPassword;
