import { useEffect, useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Container from '@mui/material/Container';
import IconButton from '@mui/material/IconButton';
import InputAdornment from '@mui/material/InputAdornment';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import LockRoundedIcon from '@mui/icons-material/LockRounded';
import MarkEmailReadRoundedIcon from '@mui/icons-material/MarkEmailReadRounded';
import VisibilityOffRoundedIcon from '@mui/icons-material/VisibilityOffRounded';
import VisibilityRoundedIcon from '@mui/icons-material/VisibilityRounded';
import { supabase } from '../lib/supabase';

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
              Set a new password
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
              {ready
                ? 'Choose a new password for your Swadharma IAS account.'
                : 'Open this page from the reset link in your email to set a new password.'}
            </Typography>

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

            <Box sx={{ mt: 3, textAlign: 'center' }}>
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

export default ResetPassword;
