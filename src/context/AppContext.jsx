import { createContext, useContext, useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import { fetchUserProfile, createUserProfile } from '../services/supabaseService';

const AppContext = createContext();

export const useApp = () => {
  const context = useContext(AppContext);
  if (!context) {
    throw new Error('useApp must be used within an AppProvider');
  }
  return context;
};

export const AppProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);
  const [enquiries, setEnquiries] = useState([]);

  useEffect(() => {
    let isMounted = true;

    // Subscribe to auth changes FIRST - this will catch the initial session restoration
    const { data: { subscription } } = supabase.auth.onAuthStateChange(async (event, session) => {
      console.log('AppContext: Auth state changed:', event, session?.user?.id);
      
      if (!isMounted) return;

      if (event === 'INITIAL_SESSION') {
        // This is the initial session - session is already restored
        if (session?.user) {
          setUser(session.user);
          fetchUserProfileAndSet(session.user);
        } else {
          setLoading(false);
        }
      } else if (event === 'SIGNED_IN' && session?.user) {
        setUser(session.user);
        fetchUserProfileAndSet(session.user);
      } else if (event === 'SIGNED_OUT') {
        setUser(null);
        setProfile(null);
        setLoading(false);
      }
    });

    // Helper function to fetch user profile
    const fetchUserProfileAndSet = async (user) => {
      try {
        const userProfile = await fetchUserProfile(user.id);
        console.log('AppContext: Fetched profile:', userProfile);
        if (userProfile) {
          setProfile(userProfile);
        } else {
          // Profile doesn't exist in database - create a new one
          console.log('AppContext: Profile not found in public.users table - creating new profile');
          const newProfile = await createUserProfile(user.id, user.email);
          if (newProfile) {
            console.log('AppContext: New profile created successfully:', newProfile);
            setProfile(newProfile);
          } else {
            console.error('AppContext: Failed to create new profile');
            setProfile(null);
          }
        }
      } catch (error) {
        console.error('AppContext: Error fetching profile:', error);
        setProfile(null);
      } finally {
        if (isMounted) {
          setLoading(false);
        }
      }
    };

    return () => {
      isMounted = false;
      subscription.unsubscribe();
    };
  }, []);

  const logout = async () => {
    console.log('Starting logout process');

    // 1. Optimistically clear local state immediately
    setUser(null);
    setProfile(null);

    // 2. Force clear Supabase tokens from localStorage
    // This is critical because if the network signOut fails/hangs, 
    // the tokens would remain and auto-login would happen on refresh.
    try {
      console.log('Clearing local storage tokens...');
      // Only clear Supabase auth-related tokens, not everything
      // This preserves any other app data while ensuring auth state is cleared
      const keysToRemove = [];
      for (let i = 0; i < localStorage.length; i++) {
        const key = localStorage.key(i);
        if (key && (key.startsWith('sb-') || key.includes('supabase') || key.includes('auth'))) {
          keysToRemove.push(key);
        }
      }
      keysToRemove.forEach(key => {
        localStorage.removeItem(key);
        console.log('Removed:', key);
      });
      console.log('Auth tokens cleared');
    } catch (e) {
      console.error('Error clearing local storage:', e);
    }

    try {
      // 3. Attempt network sign-out
      // We start this but don't wait aggressively for it.
      // We give it a short window to try and notify the server.
      const signOutPromise = supabase.auth.signOut();

      // We don't await this promise blocking the UI. 
      // We just let it run. If it fails, who cares, we deleted the token locally.
      // But we can await it with a very short timeout just to be nice.
      const timeoutPromise = new Promise(resolve => setTimeout(resolve, 500));

      await Promise.race([signOutPromise, timeoutPromise]);
      console.log('Network signOut initiated');

    } catch (error) {
      console.error('Error during network signOut:', error);
    } finally {
      // 4. Force redirect
      console.log('Redirecting to homepage');
      window.location.href = '/';
    }
  };

  const value = {
    user,
    profile,
    loading,
    enquiries,
    setEnquiries,
    setProfile,
    logout,
  };

  return (
    <AppContext.Provider value={value}>
      {children}
    </AppContext.Provider>
  );
};

export default AppContext;
