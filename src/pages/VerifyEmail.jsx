import { useCallback, useEffect, useRef, useState } from 'react';
import { Navigate, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Container from '@mui/material/Container';
import CircularProgress from '@mui/material/CircularProgress';
import Divider from '@mui/material/Divider';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import LogoutRoundedIcon from '@mui/icons-material/LogoutRounded';
import MarkEmailReadRoundedIcon from '@mui/icons-material/MarkEmailReadRounded';
import { useAuth } from '../context/AuthContext';
import { sendVerificationCode, verifyEmailAddress } from '../services/otpService';

const RESEND_COOLDOWN_SECONDS = 60;
const CODE_RE = /^\d{6}$/;

/**
 * The screen every new (or not yet verified) account sees. It sends the
 * 6-digit code, allows a resend after a cooldown and unlocks the app once the
 * code is confirmed.
 */
const VerifyEmail = () => {
  const { user, profile, loading, profileLoading, refreshProfile, signOut } = useAuth();
  const navigate = useNavigate();

  const [code, setCode] = useState('');
  const [cooldown, setCooldown] = useState(0);
  const [sending, setSending] = useState(false);
  const [verifying, setVerifying] = useState(false);
  const [error, setError] = useState(null);
  const [message, setMessage] = useState(null);
  const autoSent = useRef(false);

  const email = user?.email || profile?.email || '';
  const verified = profile?.email_verified === true;

  const requestCode = useCallback(async () => {
    setSending(true);
    setError(null);
    try {
      const result = await sendVerificationCode();
      setMessage(result.message || 'We have sent a 6-digit code to your e-mail address.');
      setCooldown(RESEND_COOLDOWN_SECONDS);
    } catch (err) {
      setError(err.message || 'We could not send the code. Please try again.');
    } finally {
      setSending(false);
    }
  }, []);

  // The code is sent once, as soon as the session is known.
  useEffect(() => {
    if (loading || profileLoading || !user || verified || autoSent.current) return;
    autoSent.current = true;
    requestCode();
  }, [loading, profileLoading, user, verified, requestCode]);

  // Cooldown ticker.
  useEffect(() => {
    const timer = setInterval(() => {
      setCooldown((value) => (value > 0 ? value - 1 : 0));
    }, 1000);
    return () => clearInterval(timer);
  }, []);

  const handleVerify = async (event) => {
    event.preventDefault();
    setError(null);
    setMessage(null);

    if (!CODE_RE.test(code)) {
      setError('Enter the 6-digit code from the e-mail we just sent.');
      return;
    }

    setVerifying(true);
    try {
      await verifyEmailAddress(code);
      await refreshProfile();
      setMessage('Your e-mail address is verified. Taking you to your dashboard…');
      setTimeout(() => navigate('/dashboard', { replace: true }), 1200);
    } catch (err) {
      setError(err.message || 'That code could not be verified. Please try again.');
    } finally {
      setVerifying(false);
    }
  };

  const handleSignOut = async () => {
    await signOut();
    navigate('/login', { replace: true });
  };

  if (loading || profileLoading) {
    return (
      <Box sx={{ minHeight: '60vh', display: 'grid', placeItems: 'center' }}>
        <CircularProgress size={38} thickness={4} />
      </Box>
    );
  }

  if (!user) {
    return <Navigate to="/login" state={{ from: '/verify-email' }} replace />;
  }

  if (verified) {
    return <Navigate to="/dashboard" replace />;
  }

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
              Verify your e-mail
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
              {email ? (
                <>
                  We sent a 6-digit code to <strong>{email}</strong>. Enter it below to unlock your
                  dashboard, the exam papers and your attempt history.
                </>
              ) : (
                'We sent a 6-digit code to your e-mail address. Enter it below to unlock your account.'
              )}
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

            <Stack component="form" onSubmit={handleVerify} spacing={2.5}>
              <TextField
                fullWidth
                required
                id="verification-code"
                label="6-digit code"
                value={code}
                onChange={(event) => {
                  setCode(event.target.value.replace(/\D/g, '').slice(0, 6));
                }}
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

              <Button type="submit" variant="contained" size="large" disabled={verifying || sending}>
                {verifying ? 'Verifying…' : 'Verify e-mail'}
              </Button>

              <Button
                type="button"
                variant="text"
                onClick={requestCode}
                disabled={sending || cooldown > 0}
                sx={{ alignSelf: 'center' }}
              >
                {cooldown > 0
                  ? `Resend code in ${cooldown}s`
                  : sending
                    ? 'Sending…'
                    : 'Resend code'}
              </Button>
            </Stack>

            <Divider sx={{ my: 3 }} />

            <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center', justifyContent: 'center' }}>
              <Typography variant="body2" color="text.secondary">
                Wrong address or want to use another one?
              </Typography>
              <Button onClick={handleSignOut} startIcon={<LogoutRoundedIcon />} sx={{ p: 0, minWidth: 0 }}>
                Sign out
              </Button>
            </Stack>
          </CardContent>
        </Card>
      </Container>
    </Box>
  );
};

export default VerifyEmail;
