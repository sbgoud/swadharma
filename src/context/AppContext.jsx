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
    // Check for existing session
    const checkSession = async () => {
      try {
        const { data: { session } } = await supabase.auth.getSession();
        console.log('AppContext: getSession result:', session);
        setUser(session?.user || null);

        if (session?.user) {
          console.log('AppContext: User session found:', session.user.id);
          // Fetch user profile
          const userProfile = await fetchUserProfile(session.user.id);
          console.log('AppContext: Fetched profile:', userProfile);
          if (userProfile) {
            setProfile(userProfile);
          } else {
            // Create profile if it doesn't exist - use user_metadata as fallback
            console.log('AppContext: Creating new profile for user:', session.user.id);
            console.log('AppContext: User metadata:', session.user.user_metadata);
            const newProfile = await createUserProfile({
              id: session.user.id,
              full_name: session.user.user_metadata?.full_name || '',
              email: session.user.email,
              phone_number: session.user.user_metadata?.phone_number || '',
              city: session.user.user_metadata?.city || '',
              state: session.user.user_metadata?.state || '',
              pincode: session.user.user_metadata?.pincode || '',
              education: session.user.user_metadata?.education || '',
              date_of_birth: session.user.user_metadata?.date_of_birth || null,
            });
            console.log('AppContext: Created profile:', newProfile);
            setProfile(newProfile);
          }
        } else {
          console.log('AppContext: No user session found');
        }
      } catch (error) {
        console.error('AppContext: Error checking session:', error);
      } finally {
        setLoading(false);
      }
    };

    checkSession();

    // Subscribe to auth changes
    const { data: { subscription } } = supabase.auth.onAuthStateChange(async (_event, session) => {
      setUser(session?.user || null);

      if (session?.user) {
        console.log('AppContext: Auth state change - User found:', session.user.id);
        const userProfile = await fetchUserProfile(session.user.id);
        console.log('AppContext: Auth state change - Fetched profile:', userProfile);
        if (userProfile) {
          setProfile(userProfile);
        } else {
          console.log('AppContext: Auth state change - Creating new profile');
          console.log('AppContext: Auth state change - User metadata:', session.user.user_metadata);
          const newProfile = await createUserProfile({
            id: session.user.id,
            full_name: session.user.user_metadata?.full_name || '',
            email: session.user.email,
            phone_number: session.user.user_metadata?.phone_number || '',
            city: session.user.user_metadata?.city || '',
            state: session.user.user_metadata?.state || '',
            pincode: session.user.user_metadata?.pincode || '',
            education: session.user.user_metadata?.education || '',
            date_of_birth: session.user.user_metadata?.date_of_birth || null,
          });
          console.log('AppContext: Auth state change - Created profile:', newProfile);
          setProfile(newProfile);
        }
      } else {
        console.log('AppContext: Auth state change - No user session');
        setProfile(null);
      }
    });

    return () => subscription.unsubscribe();
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
      // Clear all items starting with 'sb-' (Supabase default prefix)
      // or just clear everything if we want to be nuking it.
      // Let's be safer but effective: clear everything auth related.
      const keysToRemove = [];
      for (let i = 0; i < localStorage.length; i++) {
        const key = localStorage.key(i);
        if (key && (key.startsWith('sb-') || key.includes('supabase'))) {
          keysToRemove.push(key);
        }
      }
      keysToRemove.forEach(key => localStorage.removeItem(key));

      // Also clear everything just in case, if the user was having issues with 'clearing' before
      // it might be cleaner to just wipe it to ensure fresh state.
      // Since the user is specifically having trouble with Persistence, let's just wipe it.
      localStorage.clear();
      console.log('Local storage cleared');
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
