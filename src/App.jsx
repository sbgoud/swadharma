import { lazy, Suspense, useEffect } from 'react';
import { BrowserRouter, Navigate, Route, Routes, useLocation } from 'react-router-dom';
import Box from '@mui/material/Box';
import CircularProgress from '@mui/material/CircularProgress';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import ProtectedRoute from './components/ProtectedRoute';
import ErrorBoundary from './components/ErrorBoundary';
import { AuthProvider } from './context/AuthContext';
import { ThemeProvider } from './context/ThemeContext';

/* Route level code splitting keeps the first paint small. */
const Home = lazy(() => import('./pages/Home'));
const About = lazy(() => import('./pages/About'));
const Login = lazy(() => import('./pages/Login'));
const ResetPassword = lazy(() => import('./pages/ResetPassword'));
const ForgotPassword = lazy(() => import('./pages/ForgotPassword'));
const VerifyEmail = lazy(() => import('./pages/VerifyEmail'));
const Dashboard = lazy(() => import('./pages/Dashboard'));
const Exam = lazy(() => import('./pages/Exam'));
const Result = lazy(() => import('./pages/Result'));
const Attempts = lazy(() => import('./pages/Attempts'));
const Profile = lazy(() => import('./pages/Profile'));

const PageLoader = () => (
  <Box
    sx={{
      minHeight: '62vh',
      display: 'grid',
      placeItems: 'center',
    }}
  >
    <CircularProgress size={34} thickness={4} />
  </Box>
);

/**
 * The header links to sections of the landing page (`/#subjects`), so a hash
 * in the URL has to be scrolled to once the page has actually rendered. A
 * route change without a hash goes back to the top.
 */
const ScrollManager = () => {
  const { pathname, hash } = useLocation();

  useEffect(() => {
    let frame = 0;
    let attempt = 0;

    const scroll = () => {
      if (hash) {
        const target = document.getElementById(hash.slice(1));
        if (target) {
          target.scrollIntoView({ behavior: 'smooth', block: 'start' });
          return;
        }
      }
      if (attempt < 8) {
        attempt += 1;
        frame = window.setTimeout(scroll, 80);
        return;
      }
      window.scrollTo({ top: 0 });
    };

    frame = window.setTimeout(scroll, 40);

    return () => window.clearTimeout(frame);
  }, [pathname, hash]);

  return null;
};

const Layout = ({ children }) => {
  const location = useLocation();
  const isExam = location.pathname.startsWith('/exam/');

  /* The exam console is deliberately chrome free — no header, no footer, no
     distractions while the clock is running. */
  if (isExam) {
    return (
      <Box sx={{ minHeight: '100vh', bgcolor: 'background.default' }}>
        <ErrorBoundary resetKey={location.pathname}>{children}</ErrorBoundary>
      </Box>
    );
  }

  return (
    <Box
      sx={{
        minHeight: '100vh',
        display: 'flex',
        flexDirection: 'column',
        bgcolor: 'background.default',
      }}
    >
      <Navbar />
      <Box component="main" sx={{ flexGrow: 1 }}>
        <ScrollManager />
        <ErrorBoundary resetKey={location.pathname}>{children}</ErrorBoundary>
      </Box>
      <Footer />
    </Box>
  );
};

const App = () => (
  <ThemeProvider>
    <AuthProvider>
      <BrowserRouter>
        <ErrorBoundary>
          <Layout>
            <Suspense fallback={<PageLoader />}>
              <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/about" element={<About />} />
                <Route path="/login" element={<Login />} />
                <Route path="/forgot-password" element={<ForgotPassword />} />
                <Route path="/reset-password" element={<ResetPassword />} />
                <Route path="/verify-email" element={<VerifyEmail />} />
                <Route
                  path="/dashboard"
                  element={
                    <ProtectedRoute>
                      <Dashboard />
                    </ProtectedRoute>
                  }
                />
                <Route
                  path="/exam/:attemptId"
                  element={
                    <ProtectedRoute>
                      <Exam />
                    </ProtectedRoute>
                  }
                />
                <Route
                  path="/result/:attemptId"
                  element={
                    <ProtectedRoute>
                      <Result />
                    </ProtectedRoute>
                  }
                />
                <Route
                  path="/attempts"
                  element={
                    <ProtectedRoute>
                      <Attempts />
                    </ProtectedRoute>
                  }
                />
                <Route
                  path="/profile"
                  element={
                    <ProtectedRoute>
                      <Profile />
                    </ProtectedRoute>
                  }
                />
                <Route path="*" element={<Navigate to="/" replace />} />
              </Routes>
            </Suspense>
          </Layout>
        </ErrorBoundary>
      </BrowserRouter>
    </AuthProvider>
  </ThemeProvider>
);

export default App;
