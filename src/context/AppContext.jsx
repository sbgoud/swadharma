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
    
    try {
      // Sign out from Supabase
      const { error } = await supabase.auth.signOut();
      
      if (error) {
        console.error('Supabase signOut error:', error);
        throw error;
      }
      
      console.log('Supabase signOut successful');
      
      // Clear local storage
      localStorage.clear();
      
      // The auth state change listener will handle setting user and profile to null
      // Wait a brief moment for the state to update
      await new Promise(resolve => setTimeout(resolve, 100));
      
      // Redirect to homepage
      console.log('Redirecting to homepage');
      window.location.href = '/';
      
    } catch (error) {
      console.error('Error during logout:', error);
      // Even on error, clear and redirect
      localStorage.clear();
      setUser(null);
      setProfile(null);
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
