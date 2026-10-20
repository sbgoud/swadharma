import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Check, LogOut, Save, User } from 'lucide-react';
import { useAuth } from '../context/AuthContext';
import { updateProfileName } from '../services/examService';

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
      const updated = await updateProfileName(user.id, fullName.trim());
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
    <div className="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8 py-10">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-slate-900 flex items-center gap-3">
          <User className="h-7 w-7 text-blue-600" /> Profile
        </h1>
        <p className="text-slate-600 mt-1">Your account details for the free test series.</p>
      </header>

      <div className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6 space-y-6">
        <div>
          <label className="block text-sm font-medium text-slate-700 mb-1" htmlFor="profile-email">
            Email address
          </label>
          <input
            id="profile-email"
            type="email"
            value={user?.email || ''}
            readOnly
            className="w-full px-3 py-2.5 border border-slate-200 rounded-lg bg-slate-50 text-slate-500 text-sm"
          />
        </div>

        <form onSubmit={handleSave} className="space-y-4">
          <div>
            <label className="block text-sm font-medium text-slate-700 mb-1" htmlFor="profile-name">
              Display name
            </label>
            <input
              id="profile-name"
              type="text"
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              className="w-full px-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
              placeholder="Your name"
            />
          </div>

          {message && (
            <p className="text-sm text-emerald-700 flex items-center gap-1">
              <Check className="h-4 w-4" /> {message}
            </p>
          )}
          {error && <p className="text-sm text-rose-600">{error}</p>}

          <button
            type="submit"
            disabled={saving}
            className="inline-flex items-center px-5 py-2.5 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700 disabled:opacity-60"
          >
            <Save className="mr-2 h-4 w-4" /> {saving ? 'Saving…' : 'Save changes'}
          </button>
        </form>

        <div className="border-t border-slate-100 pt-6 flex flex-wrap gap-3">
          <Link
            to="/dashboard"
            className="px-4 py-2 rounded-lg border border-slate-200 text-sm font-medium text-slate-700 hover:bg-slate-50"
          >
            Back to dashboard
          </Link>
          <button
            type="button"
            onClick={handleSignOut}
            className="inline-flex items-center px-4 py-2 rounded-lg border border-rose-200 text-sm font-medium text-rose-700 hover:bg-rose-50"
          >
            <LogOut className="mr-2 h-4 w-4" /> Sign out
          </button>
        </div>
      </div>
    </div>
  );
};

export default Profile;
