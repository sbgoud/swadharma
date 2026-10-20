import { useState } from 'react';
import { Link as RouterLink, Navigate, useLocation, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import AlertTitle from '@mui/material/AlertTitle';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Chip from '@mui/material/Chip';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import IconButton from '@mui/material/IconButton';
import InputAdornment from '@mui/material/InputAdornment';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import Tab from '@mui/material/Tab';
import Tabs from '@mui/material/Tabs';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import ArrowBackRoundedIcon from '@mui/icons-material/ArrowBackRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import LockRoundedIcon from '@mui/icons-material/LockRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import VisibilityOffRoundedIcon from '@mui/icons-material/VisibilityOffRounded';
import VisibilityRoundedIcon from '@mui/icons-material/VisibilityRounded';
import VerifiedRoundedIcon from '@mui/icons-material/VerifiedRounded';
import { supabase } from '../lib/supabase';
import { useAuth } from '../context/AuthContext';
import { heroGradient } from '../theme/theme';

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

const HIGHLIGHTS = [
  'Unlimited timed prelims papers',
  'Official +2 / −0.66 marking',
  'Written explanation for every question',
  'Subject-wise analytics and history',
];

const Login = () => {
  const { user, loading } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();

  const [tab, setTab] = useState(0);
  const [mode, setMode] = useState('signin');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [fullName, setFullName] = useState('');
  const [showPassword, setShowPassword] = useState(false);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState(null);
  const [message, setMessage] = useState(null);

  if (!loading && user) {
    const target = location.state?.from || '/dashboard';
    return <Navigate to={target} replace />;
  }

  const switchMode = (next) => {
    setMode(next);
    setError(null);
    setMessage(null);
  };

  const handleSignIn = async (event) => {
    event.preventDefault();
    setBusy(true);
    setError(null);
    setMessage(null);
    try {
      const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
      if (signInError) throw signInError;
      navigate(location.state?.from || '/dashboard', { replace: true });
    } catch (err) {
      setError(err.message || 'Could not sign you in. Please check your credentials.');
    } finally {
      setBusy(false);
    }
  };

  const handleSignUp = async (event) => {
    event.preventDefault();
    setError(null);
    setMessage(null);

    if (!EMAIL_RE.test(email)) {
      setError('Please enter a valid email address.');
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
      const { data, error: signUpError } = await supabase.auth.signUp({
        email,
        password,
        options: { data: { full_name: fullName.trim() } },
      });
      if (signUpError) throw signUpError;
      if (data?.session) {
        navigate('/dashboard', { replace: true });
        return;
      }
      setMessage('Account created. Check your inbox for the confirmation link, then sign in.');
      setTab(0);
      setMode('signin');
    } catch (err) {
      setError(err.message || 'Could not create the account.');
    } finally {
      setBusy(false);
    }
  };

  const handleReset = async (event) => {
    event.preventDefault();
    setError(null);
    setMessage(null);
    if (!EMAIL_RE.test(email)) {
      setError('Please enter the email address you signed up with.');
      return;
    }
    setBusy(true);
    try {
      const { error: resetError } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo: `${window.location.origin}/reset-password`,
      });
      if (resetError) throw resetError;
      setMessage('If that email is registered, a password reset link is on its way.');
    } catch (err) {
      setError(err.message || 'Could not send the reset email.');
    } finally {
      setBusy(false);
    }
  };

  const isReset = mode === 'reset';
  const isSignUp = mode === 'signup';

  return (
    <Box sx={{ minHeight: '100%', display: 'flex', alignItems: 'center', py: { xs: 5, md: 8 } }}>
      <Container maxWidth="lg">
        <Grid container spacing={4} sx={{ alignItems: 'stretch' }}>
          {/* Brand panel */}
          <Grid size={{ xs: 12, md: 5 }} sx={{ display: { xs: 'none', md: 'block' } }}>
            <Paper
              elevation={0}
              sx={{
                height: '100%',
                borderRadius: 6,
                p: 5,
                position: 'relative',
                overflow: 'hidden',
                background: heroGradient,
                color: '#fff',
                boxShadow: '0 40px 80px -40px rgba(79, 70, 229, 0.8)',
              }}
            >
              <Box
                sx={{
                  position: 'absolute',
                  inset: 0,
                  background:
                    'radial-gradient(60% 60% at 15% 5%, rgba(255,255,255,0.22) 0%, transparent 60%), radial-gradient(50% 50% at 90% 95%, rgba(255,255,255,0.16) 0%, transparent 60%)',
                }}
              />
              <Box sx={{ position: 'relative' }}>
                <Chip
                  icon={<VerifiedRoundedIcon sx={{ fontSize: 16 }} />}
                  label="100% free for every aspirant"
                  sx={{
                    bgcolor: 'rgba(255,255,255,0.16)',
                    color: '#fff',
                    fontWeight: 600,
                    mb: 3,
                    '& .MuiChip-icon': { color: '#fff' },
                  }}
                />
                <Typography variant="h3" sx={{ color: '#fff', mb: 2 }}>
                  Your UPSC prelims practice starts here
                </Typography>
                <Typography sx={{ color: 'rgba(255,255,255,0.85)', lineHeight: 1.75, mb: 4 }}>
                  Create an account and attempt server-sampled, timed papers with the official UPSC
                  marking scheme — no payment details, ever.
                </Typography>
                <Stack spacing={1.75}>
                  {HIGHLIGHTS.map((item) => (
                    <Stack key={item} direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
                      <CheckCircleRoundedIcon sx={{ color: '#86EFAC', fontSize: 20 }} />
                      <Typography sx={{ color: 'rgba(255,255,255,0.92)', fontSize: 14.5, fontWeight: 500 }}>
                        {item}
                      </Typography>
                    </Stack>
                  ))}
                </Stack>
              </Box>
            </Paper>
          </Grid>

          {/* Form */}
          <Grid size={{ xs: 12, md: 7 }}>
            <Card sx={{ height: '100%' }}>
              <CardContent sx={{ p: { xs: 3, sm: 4.5 }, '&:last-child': { pb: { xs: 3, sm: 4.5 } } }}>
                <Typography variant="h4" sx={{ fontWeight: 700, color: 'text.primary', mb: 0.75 }}>
                  {isReset ? 'Reset your password' : isSignUp ? 'Create your free account' : 'Welcome back'}
                </Typography>
                <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
                  {isReset
                    ? 'We will email you a secure link to set a new password.'
                    : 'Free, unlimited UPSC Prelims practice. No payment required.'}
                </Typography>

                {!isReset && (
                  <Tabs
                    value={tab}
                    onChange={(_, value) => {
                      setTab(value);
                      switchMode(value === 1 ? 'signup' : 'signin');
                    }}
                    variant="fullWidth"
                    sx={{ mb: 3, borderBottom: '1px solid', borderColor: 'divider' }}
                  >
                    <Tab label="Sign in" />
                    <Tab label="Create account" />
                  </Tabs>
                )}

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

                {isReset ? (
                  <Stack component="form" onSubmit={handleReset} spacing={2.5}>
                    <TextField
                      fullWidth
                      required
                      id="reset-email"
                      label="Email address"
                      type="email"
                      autoComplete="email"
                      value={email}
                      onChange={(event) => setEmail(event.target.value)}
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
                      {busy ? 'Sending…' : 'Send reset link'}
                    </Button>
                    <Button
                      type="button"
                      onClick={() => switchMode('signin')}
                      startIcon={<ArrowBackRoundedIcon />}
                      sx={{ alignSelf: 'flex-start', px: 0 }}
                    >
                      Back to sign in
                    </Button>
                  </Stack>
                ) : (
                  <Stack component="form" onSubmit={isSignUp ? handleSignUp : handleSignIn} spacing={2.5}>
                    {isSignUp && (
                      <TextField
                        fullWidth
                        id="full-name"
                        label="Full name"
                        value={fullName}
                        onChange={(event) => setFullName(event.target.value)}
                        slotProps={{
                          input: {
                            startAdornment: (
                              <InputAdornment position="start">
                                <PersonRoundedIcon color="action" />
                              </InputAdornment>
                            ),
                          },
                        }}
                      />
                    )}

                    <TextField
                      fullWidth
                      required
                      id="email"
                      label="Email address"
                      type="email"
                      autoComplete="email"
                      value={email}
                      onChange={(event) => setEmail(event.target.value)}
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

                    <TextField
                      fullWidth
                      required
                      id="password"
                      label="Password"
                      type={showPassword ? 'text' : 'password'}
                      autoComplete={isSignUp ? 'new-password' : 'current-password'}
                      value={password}
                      onChange={(event) => setPassword(event.target.value)}
                      helperText={isSignUp ? 'At least 8 characters' : undefined}
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

                    {isSignUp && (
                      <TextField
                        fullWidth
                        required
                        id="confirm-password"
                        label="Confirm password"
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
                    )}

                    <Button type="submit" variant="contained" size="large" disabled={busy}>
                      {busy ? 'Please wait…' : isSignUp ? 'Create free account' : 'Sign in'}
                    </Button>

                    {!isSignUp && (
                      <Box sx={{ display: 'flex', justifyContent: 'flex-end' }}>
                        <Button onClick={() => switchMode('reset')} sx={{ px: 0 }}>
                          Forgot password?
                        </Button>
                      </Box>
                    )}
                  </Stack>
                )}

                <Divider sx={{ my: 3 }} />
                <Stack direction="row" spacing={1} sx={{ justifyContent: 'center', alignItems: 'center' }}>
                  <Typography variant="body2" color="text.secondary">
                    {isSignUp ? 'Already registered?' : 'New to Swadharma IAS?'}
                  </Typography>
                  <Button
                    onClick={() => {
                      setTab(isSignUp ? 0 : 1);
                      switchMode(isSignUp ? 'signin' : 'signup');
                    }}
                    sx={{ p: 0, minWidth: 0 }}
                  >
                    {isSignUp ? 'Sign in' : 'Create a free account'}
                  </Button>
                </Stack>
              </CardContent>
            </Card>
          </Grid>
        </Grid>
      </Container>
    </Box>
  );
};

export default Login;
