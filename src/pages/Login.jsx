import { useState } from 'react';
import { Navigate, useLocation, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import IconButton from '@mui/material/IconButton';
import InputAdornment from '@mui/material/InputAdornment';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import LockRoundedIcon from '@mui/icons-material/LockRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import VisibilityOffRoundedIcon from '@mui/icons-material/VisibilityOffRounded';
import VisibilityRoundedIcon from '@mui/icons-material/VisibilityRounded';
import { supabase } from '../lib/supabase';
import { useAuth } from '../context/AuthContext';
import AuthShell from '../components/AuthShell';

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

const SegmentedTabs = ({ value, onChange }) => (
  <Box
    role="tablist"
    sx={{
      display: 'grid',
      gridTemplateColumns: '1fr 1fr',
      gap: 0.5,
      p: 0.5,
      borderRadius: '12px',
      bgcolor: 'action.hover',
      mb: 3,
    }}
  >
    {[
      { id: 'signin', label: 'Sign in' },
      { id: 'signup', label: 'Create account' },
    ].map((tab) => {
      const active = value === tab.id;
      return (
        <Box
          key={tab.id}
          role="tab"
          aria-selected={active}
          tabIndex={0}
          onClick={() => onChange(tab.id)}
          onKeyDown={(event) => {
            if (event.key === 'Enter' || event.key === ' ') {
              event.preventDefault();
              onChange(tab.id);
            }
          }}
          sx={{
            py: 1.25,
            minHeight: 44,
            borderRadius: '10px',
            textAlign: 'center',
            fontSize: '0.9375rem',
            fontWeight: 600,
            cursor: 'pointer',
            color: active ? 'text.primary' : 'text.secondary',
            bgcolor: active ? 'background.paper' : 'transparent',
            boxShadow: active ? '0 1px 2px rgba(16, 26, 28, 0.08)' : 'none',
            transition: 'background-color 180ms ease, color 180ms ease',
            userSelect: 'none',
            '&:focus-visible': { outline: '2px solid rgba(15, 118, 110, 0.75)', outlineOffset: 2 },
          }}
        >
          {tab.label}
        </Box>
      );
    })}
  </Box>
);

const Login = () => {
  const { user, loading } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();

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
        navigate('/verify-email', { replace: true });
        return;
      }

      // The project can ask for a mail confirmation before the first sign-in.
      const { error: signInError } = await supabase.auth.signInWithPassword({ email, password });
      if (!signInError) {
        navigate('/verify-email', { replace: true });
        return;
      }

      setMessage(
        'Account created. Confirm your address with the link we just mailed, then sign in — you will be asked for a 6-digit code.'
      );
      switchMode('signin');
    } catch (err) {
      setError(err.message || 'Could not create the account.');
    } finally {
      setBusy(false);
    }
  };

  const isSignUp = mode === 'signup';

  return (
    <AuthShell
      eyebrow={isSignUp ? 'Create an account' : 'Welcome back'}
      title={isSignUp ? 'Create your account' : 'Sign in to Swadharma IAS'}
      subtitle={
        isSignUp
          ? 'One e-mail address and a password. We will send a 6-digit code to confirm it.'
          : 'Sign in to build a paper, sit a timed attempt and review your answers.'
      }
      aside={{
        heading: 'Your prelims practice starts here',
        body: 'Create an account and attempt server-sampled, timed papers with the official UPSC marking scheme. No card is needed to start.',
        points: [
          'Timed papers on a server clock',
          'Official +2 / −0.66 marking scheme',
          'A written explanation behind every question',
        ],
      }}
      footer={
        <Box sx={{ textAlign: 'center' }}>
          <Typography variant="body2" color="text.secondary">
            {isSignUp ? 'Already registered?' : 'New to Swadharma IAS?'}
          </Typography>
          <Button
            onClick={() => switchMode(isSignUp ? 'signin' : 'signup')}
            sx={{ p: 0, minWidth: 0, mt: 0.25 }}
          >
            {isSignUp ? 'Sign in instead' : 'Create a free account'}
          </Button>
        </Box>
      }
    >
      <SegmentedTabs value={mode} onChange={switchMode} />

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

      <Stack component="form" onSubmit={isSignUp ? handleSignUp : handleSignIn} spacing={2}>
        {isSignUp && (
          <TextField
            fullWidth
            id="full-name"
            label="Full name"
            value={fullName}
            onChange={(event) => setFullName(event.target.value)}
            autoComplete="name"
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

        <Button type="submit" variant="contained" size="large" disabled={busy} sx={{ mt: 0.5 }}>
          {busy ? 'Please wait…' : isSignUp ? 'Create your account' : 'Sign in'}
        </Button>

        {!isSignUp && (
          <Box sx={{ display: 'flex', justifyContent: 'flex-end', mt: -1 }}>
            <Button onClick={() => navigate('/forgot-password')} sx={{ px: 0, minWidth: 0 }}>
              Forgot password?
            </Button>
          </Box>
        )}
      </Stack>
    </AuthShell>
  );
};

export default Login;
