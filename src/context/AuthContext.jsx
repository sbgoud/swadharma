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

  const loadProfile = useCallback(async (sessionUser) => {
    try {
      const existing = await fetchProfile(sessionUser.id);
      if (existing) {
        setProfile(existing);
        return;
      }
      await ensureProfile(sessionUser);
      const created = await fetchProfile(sessionUser.id);
      setProfile(created);
    } catch {
      setProfile(null);
    }
  }, []);

  useEffect(() => {
    let active = true;

    supabase.auth.getSession().then(({ data }) => {
      if (!active) return;
      const sessionUser = data?.session?.user ?? null;
      setUser(sessionUser);
      if (sessionUser) loadProfile(sessionUser);
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

  const value = useMemo(
    () => ({ user, profile, loading, signOut, setProfile }),
    [user, profile, loading, signOut]
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) throw new Error('useAuth must be used within an AuthProvider');
  return context;
};

export default AuthProvider;
