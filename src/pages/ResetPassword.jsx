import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { AlertCircle, Check, Lock } from 'lucide-react';
import { supabase } from '../lib/supabase';
import Button from '../components/Button';

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
    <div className="min-h-screen bg-slate-50 flex items-center justify-center py-12 px-4">
      <div className="max-w-md w-full bg-white rounded-2xl border border-slate-200 shadow-sm p-6 sm:p-8">
        <h1 className="text-2xl font-bold text-slate-900">Set a new password</h1>
        <p className="mt-2 text-sm text-slate-600">
          {ready
            ? 'Choose a new password for your Swadharma IAS account.'
            : 'Open this page from the reset link in your email to set a new password.'}
        </p>

        {error && (
          <div className="mt-4 p-4 rounded-lg bg-rose-50 text-rose-700 text-sm flex items-start gap-2">
            <AlertCircle className="h-5 w-5 mt-0.5 flex-shrink-0" />
            <span>{error}</span>
          </div>
        )}
        {done && (
          <div className="mt-4 p-4 rounded-lg bg-emerald-50 text-emerald-700 text-sm flex items-start gap-2">
            <Check className="h-5 w-5 mt-0.5 flex-shrink-0" />
            <span>Password updated. Taking you to your dashboard…</span>
          </div>
        )}

        <form className="mt-6 space-y-5" onSubmit={handleSubmit}>
          <div>
            <label htmlFor="new-password" className="block text-sm font-medium text-slate-700 mb-1">
              New password
            </label>
            <div className="relative">
              <Lock className="absolute inset-y-0 left-3 w-5 h-5 text-slate-400 pointer-events-none" />
              <input
                id="new-password"
                type="password"
                required
                minLength={8}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                className="w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                placeholder="At least 8 characters"
              />
            </div>
          </div>
          <div>
            <label htmlFor="new-confirm-password" className="block text-sm font-medium text-slate-700 mb-1">
              Confirm password
            </label>
            <div className="relative">
              <Lock className="absolute inset-y-0 left-3 w-5 h-5 text-slate-400 pointer-events-none" />
              <input
                id="new-confirm-password"
                type="password"
                required
                minLength={8}
                value={confirmPassword}
                onChange={(e) => setConfirmPassword(e.target.value)}
                className="w-full pl-10 pr-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                placeholder="Repeat the password"
              />
            </div>
          </div>
          <Button type="submit" className="w-full justify-center py-3" loading={busy} disabled={!ready}>
            Update password
          </Button>
        </form>

        <p className="mt-6 text-center text-xs text-slate-400">
          <Link to="/login" className="hover:text-slate-600">
            ← Back to sign in
          </Link>
        </p>
      </div>
    </div>
  );
};

export default ResetPassword;
