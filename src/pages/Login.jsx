import { useState } from 'react';
import { Link, Navigate, useLocation, useNavigate } from 'react-router-dom';
import { AlertCircle, ArrowLeft, Check, Eye, EyeOff, Lock, Mail, RefreshCw } from 'lucide-react';
import { supabase } from '../lib/supabase';
import { useAuth } from '../context/AuthContext';
import Button from '../components/Button';

const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

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
        navigate('/dashboard', { replace: true });
        return;
      }
      setMessage('Account created. Check your inbox for the confirmation link, then sign in.');
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

  return (
    <div className="min-h-screen bg-slate-50 flex items-center justify-center py-12 px-4 sm:px-6">
      <div className="max-w-md w-full">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-slate-900">
            {mode === 'signin' && 'Welcome back'}
            {mode === 'signup' && 'Create your free account'}
            {mode === 'reset' && 'Reset your password'}
          </h1>
          <p className="mt-2 text-sm text-slate-600">
            {mode === 'reset'
              ? 'We will email you a secure link to set a new password.'
              : 'Free, unlimited UPSC Prelims practice. No payment required.'}
          </p>
        </div>

        <div className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6 sm:p-8">
          {message && (
            <div className="mb-4 p-4 rounded-lg bg-emerald-50 text-emerald-700 text-sm flex items-start gap-2">
              <Check className="h-5 w-5 mt-0.5 flex-shrink-0" />
              <span>{message}</span>
            </div>
          )}
          {error && (
            <div className="mb-4 p-4 rounded-lg bg-rose-50 text-rose-700 text-sm flex items-start gap-2">
              <AlertCircle className="h-5 w-5 mt-0.5 flex-shrink-0" />
              <span>{error}</span>
            </div>
          )}

          {mode === 'reset' ? (
            <form className="space-y-5" onSubmit={handleReset}>
              <div>
                <label htmlFor="reset-email" className="block text-sm font-medium text-slate-700 mb-1">
                  Email address
                </label>
                <div className="relative">
                  <Mail className="absolute inset-y-0 left-3 w-5 h-5 text-slate-400 pointer-events-none" />
                  <input
                    id="reset-email"
                    type="email"
                    required
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    className="w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                    placeholder="you@example.com"
                  />
                </div>
              </div>
              <Button type="submit" className="w-full justify-center py-3" loading={busy}>
                Send reset link
              </Button>
              <button
                type="button"
                onClick={() => switchMode('signin')}
                className="w-full text-sm text-blue-600 hover:underline inline-flex items-center justify-center gap-1"
              >
                <ArrowLeft className="h-4 w-4" /> Back to sign in
              </button>
            </form>
          ) : (
            <form className="space-y-5" onSubmit={mode === 'signin' ? handleSignIn : handleSignUp}>
              {mode === 'signup' && (
                <div>
                  <label htmlFor="full-name" className="block text-sm font-medium text-slate-700 mb-1">
                    Full name
                  </label>
                  <input
                    id="full-name"
                    type="text"
                    value={fullName}
                    onChange={(e) => setFullName(e.target.value)}
                    className="w-full px-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                    placeholder="Aspirant"
                  />
                </div>
              )}

              <div>
                <label htmlFor="email" className="block text-sm font-medium text-slate-700 mb-1">
                  Email address
                </label>
                <div className="relative">
                  <Mail className="absolute inset-y-0 left-3 w-5 h-5 text-slate-400 pointer-events-none" />
                  <input
                    id="email"
                    type="email"
                    required
                    autoComplete="email"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    className="w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                    placeholder="you@example.com"
                  />
                </div>
              </div>

              <div>
                <label htmlFor="password" className="block text-sm font-medium text-slate-700 mb-1">
                  Password
                </label>
                <div className="relative">
                  <Lock className="absolute inset-y-0 left-3 w-5 h-5 text-slate-400 pointer-events-none" />
                  <input
                    id="password"
                    type={showPassword ? 'text' : 'password'}
                    required
                    minLength={8}
                    autoComplete={mode === 'signin' ? 'current-password' : 'new-password'}
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    className="w-full pl-10 pr-10 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                    placeholder="At least 8 characters"
                  />
                  <button
                    type="button"
                    onClick={() => setShowPassword((v) => !v)}
                    className="absolute inset-y-0 right-3 text-slate-400 hover:text-slate-600"
                    aria-label={showPassword ? 'Hide password' : 'Show password'}
                  >
                    {showPassword ? <EyeOff className="h-5 w-5" /> : <Eye className="h-5 w-5" />}
                  </button>
                </div>
              </div>

              {mode === 'signup' && (
                <div>
                  <label htmlFor="confirm-password" className="block text-sm font-medium text-slate-700 mb-1">
                    Confirm password
                  </label>
                  <div className="relative">
                    <Lock className="absolute inset-y-0 left-3 w-5 h-5 text-slate-400 pointer-events-none" />
                    <input
                      id="confirm-password"
                      type={showPassword ? 'text' : 'password'}
                      required
                      minLength={8}
                      autoComplete="new-password"
                      value={confirmPassword}
                      onChange={(e) => setConfirmPassword(e.target.value)}
                      className="w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                      placeholder="Repeat the password"
                    />
                  </div>
                </div>
              )}

              <Button type="submit" className="w-full justify-center py-3" loading={busy}>
                {mode === 'signin' ? 'Sign in' : 'Create account'}
              </Button>

              {mode === 'signin' && (
                <div className="flex items-center justify-between text-sm">
                  <button
                    type="button"
                    onClick={() => switchMode('reset')}
                    className="inline-flex items-center gap-1 text-slate-500 hover:text-blue-600"
                  >
                    <RefreshCw className="h-3.5 w-3.5" /> Forgot password?
                  </button>
                </div>
              )}
            </form>
          )}
        </div>

        <div className="mt-6 text-center text-sm text-slate-600">
          {mode === 'signin' ? (
            <>
              New here?{' '}
              <button type="button" onClick={() => switchMode('signup')} className="text-blue-600 font-semibold hover:underline">
                Create a free account
              </button>
            </>
          ) : (
            <>
              Already registered?{' '}
              <button type="button" onClick={() => switchMode('signin')} className="text-blue-600 font-semibold hover:underline">
                Sign in
              </button>
            </>
          )}
        </div>

        <p className="mt-6 text-center text-xs text-slate-400">
          <Link to="/" className="hover:text-slate-600">
            ← Back to home
          </Link>
        </p>
      </div>
    </div>
  );
};

export default Login;
