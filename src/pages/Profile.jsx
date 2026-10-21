import { useEffect, useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Avatar from '@mui/material/Avatar';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import Typography from '@mui/material/Typography';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import LogoutRoundedIcon from '@mui/icons-material/LogoutRounded';
import PersonRoundedIcon from '@mui/icons-material/PersonRounded';
import SaveRoundedIcon from '@mui/icons-material/SaveRounded';
import { useAuth } from '../context/AuthContext';
import { updateProfileName } from '../services/examService';
import { PageHeader } from '../components/ui';

const Profile = () => {
  const { user, profile, setProfile, signOut } = useAuth();
  const navigate = useNavigate();
  const [fullName, setFullName] = useState('');
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    setFullName(profile?.full_name || user?.user_metadata?.full_name || '');
  }, [profile, user]);

  const initials = (profile?.full_name || user?.email || 'A')
    .toString()
    .split(' ')
    .slice(0, 2)
    .map((part) => part.charAt(0).toUpperCase())
    .join('');

  const handleSave = async (event) => {
    event.preventDefault();
    setError(null);
    setMessage(null);
    if (!fullName.trim()) {
      setError('Please enter a name.');
      return;
    }
    setSaving(true);
    try {
      const updated = await updateProfileName(user.id, fullName.trim(), user.email);
      if (updated) setProfile(updated);
      setMessage('Profile updated.');
    } catch (err) {
      setError(err.message || 'Could not update the profile.');
    } finally {
      setSaving(false);
    }
  };

  const handleSignOut = async () => {
    await signOut();
    navigate('/', { replace: true });
  };

  return (
    <Container maxWidth="md" sx={{ py: { xs: 4, md: 6 } }}>
      <PageHeader
        eyebrow="Account"
        title="Your profile"
        description="The name shown on your papers and in your attempt history."
        sx={{ mb: 3.5 }}
      />

      <Grid container spacing={2.5}>
        <Grid size={{ xs: 12, md: 4 }}>
          <Card variant="outlined" sx={{ borderRadius: '24px', height: '100%' }}>
            <CardContent sx={{ p: 3, textAlign: 'center', '&:last-child': { pb: 3 } }}>
              <Avatar
                sx={{
                  width: 84,
                  height: 84,
                  mx: 'auto',
                  mb: 2,
                  bgcolor: 'primary.main',
                  fontFamily: '"Fraunces Variable", Georgia, serif',
                  fontWeight: 600,
                  fontSize: 30,
                }}
              >
                {initials}
              </Avatar>
              <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary' }}>
                {profile?.full_name || 'Aspirant'}
              </Typography>
              <Typography variant="body2" color="text.secondary" sx={{ wordBreak: 'break-word' }}>
                {user?.email}
              </Typography>
              <Divider sx={{ my: 2.5 }} />
              <Button
                fullWidth
                variant="outlined"
                color="inherit"
                onClick={handleSignOut}
                startIcon={<LogoutRoundedIcon />}
                sx={{ borderColor: 'divider' }}
              >
                Sign out
              </Button>
            </CardContent>
          </Card>
        </Grid>

        <Grid size={{ xs: 12, md: 8 }}>
          <Card variant="outlined" sx={{ borderRadius: '24px' }}>
            <CardContent sx={{ p: { xs: 2.5, md: 3.5 }, '&:last-child': { pb: { xs: 2.5, md: 3.5 } } }}>
              <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary', mb: 2.5 }}>
                Account details
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

              <Stack component="form" onSubmit={handleSave} spacing={2.5}>
                <TextField
                  fullWidth
                  id="profile-email"
                  label="Email address"
                  value={user?.email || ''}
                  disabled
                  slotProps={{
                    input: {
                      startAdornment: <EmailRoundedIcon sx={{ mr: 1, color: 'text.disabled' }} />,
                    },
                  }}
                />
                <TextField
                  fullWidth
                  id="profile-name"
                  label="Display name"
                  value={fullName}
                  onChange={(event) => setFullName(event.target.value)}
                  slotProps={{
                    input: {
                      startAdornment: <PersonRoundedIcon sx={{ mr: 1, color: 'action.disabled' }} />,
                    },
                  }}
                />
                <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1.5}>
                  <Button type="submit" variant="contained" disabled={saving} startIcon={<SaveRoundedIcon />}>
                    {saving ? 'Saving…' : 'Save changes'}
                  </Button>
                  <Button
                    component={RouterLink}
                    to="/attempts"
                    variant="outlined"
                    color="inherit"
                    sx={{ borderColor: 'divider' }}
                  >
                    My attempts
                  </Button>
                </Stack>
              </Stack>

              <Divider sx={{ my: 3 }} />
              <Stack direction="row" spacing={1.25} sx={{ alignItems: 'flex-start' }}>
                <CheckCircleRoundedIcon sx={{ color: 'success.main', mt: 0.2 }} />
                <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.7 }}>
                  There is nothing to pay or manage here. Start practising free today and come back
                  whenever you want another paper.
                </Typography>
              </Stack>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
    </Container>
  );
};

export default Profile;
