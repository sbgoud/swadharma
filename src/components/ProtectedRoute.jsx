import { Navigate, useLocation } from 'react-router-dom';
import Box from '@mui/material/Box';
import CircularProgress from '@mui/material/CircularProgress';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { useAuth } from '../context/AuthContext';
import { SwanMark } from './SwanLogo';

/**
 * Guards the signed-in area of the app. Unauthenticated visitors are sent to
 * the login page, the attempted location is preserved so they land back on it
 * after signing in.
 *
 * Accounts that have not proven their e-mail address yet are sent to the
 * verification screen — the dashboard, the exam papers and the attempt
 * history stay locked until the 6-digit code is confirmed.
 */
const ProtectedRoute = ({ children, requireVerified = true }) => {
  const { user, profile, loading, profileLoading } = useAuth();
  const location = useLocation();

  if (loading || profileLoading) {
    return (
      <Box sx={{ minHeight: '60vh', display: 'grid', placeItems: 'center' }}>
        <Stack spacing={2.5} sx={{ alignItems: 'center' }}>
          <SwanMark size={52} />
          <CircularProgress size={28} thickness={4} />
          <Typography variant="caption" color="text.secondary">
            Checking your session…
          </Typography>
        </Stack>
      </Box>
    );
  }

  if (!user) {
    return <Navigate to="/login" state={{ from: location.pathname }} replace />;
  }

  if (requireVerified && profile?.email_verified !== true) {
    return <Navigate to="/verify-email" replace />;
  }

  return children;
};

export default ProtectedRoute;
