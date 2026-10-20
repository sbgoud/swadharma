import { createContext, useCallback, useContext, useEffect, useMemo, useState } from 'react';
import CssBaseline from '@mui/material/CssBaseline';
import { ThemeProvider as MuiThemeProvider } from '@mui/material/styles';
import { buildTheme } from '../theme/theme';

const ThemeContext = createContext(null);
const STORAGE_KEY = 'swadharma-theme';

const getInitialMode = () => {
  if (typeof window === 'undefined') return 'light';
  const stored = window.localStorage.getItem(STORAGE_KEY);
  if (stored === 'light' || stored === 'dark') return stored;
  return window.matchMedia?.('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
};

/**
 * Holds the colour mode of the app and exposes the matching MUI theme.
 * The choice is persisted, and the system preference is used on first visit.
 */
export const ThemeProvider = ({ children }) => {
  const [mode, setMode] = useState(getInitialMode);
  const theme = useMemo(() => buildTheme(mode), [mode]);

  useEffect(() => {
    window.localStorage.setItem(STORAGE_KEY, mode);
  }, [mode]);

  const toggleTheme = useCallback(() => {
    setMode((current) => (current === 'light' ? 'dark' : 'light'));
  }, []);

  const value = useMemo(
    () => ({ mode, isDark: mode === 'dark', isLight: mode === 'light', toggleTheme, setMode }),
    [mode, toggleTheme]
  );

  return (
    <ThemeContext.Provider value={value}>
      <MuiThemeProvider theme={theme}>
        <CssBaseline />
        {children}
      </MuiThemeProvider>
    </ThemeContext.Provider>
  );
};

export const useTheme = () => {
  const context = useContext(ThemeContext);
  if (!context) throw new Error('useTheme must be used within a ThemeProvider');
  return context;
};

export default ThemeProvider;
