import { Navigate, useLocation } from 'react-router-dom';
import Box from '@mui/material/Box';
import CircularProgress from '@mui/material/CircularProgress';
import { useAuth } from '../context/AuthContext';

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
        <CircularProgress size={38} thickness={4} />
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
