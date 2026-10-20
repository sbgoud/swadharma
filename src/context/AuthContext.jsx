import { createContext, useCallback, useContext, useEffect, useMemo, useState } from 'react';
import { supabase } from '../lib/supabase';
import { ensureProfile, fetchProfile } from '../services/examService';

const AuthContext = createContext(null);

/**
 * Holds the Supabase auth session and the matching profile row.
 * The session is restored by supabase-js on mount (persistSession), so a
 * reload keeps the user signed in.
 */
export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);
  const [profileLoading, setProfileLoading] = useState(true);

  const loadProfile = useCallback(async (sessionUser) => {
    setProfileLoading(true);
    try {
      const existing = await fetchProfile(sessionUser.id);
      if (existing) {
        setProfile(existing);
        return existing;
      }
      await ensureProfile(sessionUser);
      const created = await fetchProfile(sessionUser.id);
      setProfile(created);
      return created;
    } catch {
      setProfile(null);
      return null;
    } finally {
      setProfileLoading(false);
    }
  }, []);

  useEffect(() => {
    let active = true;

    supabase.auth.getSession().then(({ data }) => {
      if (!active) return;
      const sessionUser = data?.session?.user ?? null;
      setUser(sessionUser);
      if (sessionUser) {
        loadProfile(sessionUser);
      } else {
        setProfileLoading(false);
      }
      setLoading(false);
    });

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (!active) return;
      const sessionUser = session?.user ?? null;
      setUser(sessionUser);
      if (event === 'SIGNED_OUT' || !sessionUser) {
        setProfile(null);
        setProfileLoading(false);
        setLoading(false);
        return;
      }
      if (event === 'SIGNED_IN' || event === 'INITIAL_SESSION' || event === 'USER_UPDATED') {
        loadProfile(sessionUser);
      }
      setLoading(false);
    });

    return () => {
      active = false;
      subscription.unsubscribe();
    };
  }, [loadProfile]);

  const signOut = useCallback(async () => {
    try {
      await supabase.auth.signOut();
    } finally {
      setUser(null);
      setProfile(null);
    }
  }, []);

  /** Re-reads the profile — used after the e-mail address got verified. */
  const refreshProfile = useCallback(async () => {
    if (!user) return null;
    return loadProfile(user);
  }, [user, loadProfile]);

  const emailVerified = profile?.email_verified === true;

  const value = useMemo(
    () => ({
      user,
      profile,
      loading,
      profileLoading,
      emailVerified,
      signOut,
      setProfile,
      refreshProfile,
    }),
    [user, profile, loading, profileLoading, emailVerified, signOut, refreshProfile]
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) throw new Error('useAuth must be used within an AuthProvider');
  return context;
};

export default AuthProvider;
