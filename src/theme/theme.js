import { alpha, createTheme } from '@mui/material/styles';

/**
 * Brand tokens for Swadharma IAS.
 *
 * The palette follows the "learning indigo + progress green" direction of the
 * UI/UX Pro Max design system: indigo carries the brand, violet adds the
 * premium gradient, green marks progress and success.
 */
export const brand = {
  indigo: '#4F46E5',
  indigoDark: '#3730A3',
  indigoLight: '#818CF8',
  violet: '#7C3AED',
  green: '#16A34A',
  greenLight: '#22C55E',
  amber: '#F59E0B',
  rose: '#E11D48',
  ink: '#0B1120',
  sky: '#0EA5E9',
};

export const heroGradient =
  'linear-gradient(135deg, #4F46E5 0%, #6D28D9 52%, #2563EB 100%)';

export const softGradient = 'linear-gradient(135deg, #EEF2FF 0%, #F5F3FF 100%)';

const fontStack = '"Inter", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif';
const displayStack = '"Poppins", "Inter", system-ui, sans-serif';

const baseComponents = {
  MuiCssBaseline: {
    styleOverrides: {
      body: {
        fontFeatureSettings: '"cv02","cv03","cv04","cv11"',
      },
    },
  },
  MuiButton: {
    defaultProps: { disableElevation: true },
    styleOverrides: {
      root: {
        borderRadius: 12,
        textTransform: 'none',
        fontWeight: 600,
        letterSpacing: 0,
        fontFamily: fontStack,
        paddingInline: 20,
        transition: 'transform 200ms ease, box-shadow 200ms ease, background-color 200ms ease',
      },
      containedPrimary: {
        background: heroGradient,
        boxShadow: '0 10px 24px -10px rgba(79, 70, 229, 0.65)',
        '&:hover': {
          transform: 'translateY(-1px)',
          boxShadow: '0 16px 30px -12px rgba(79, 70, 229, 0.75)',
        },
      },
      outlined: {
        borderWidth: 1.5,
        '&:hover': { borderWidth: 1.5 },
      },
      sizeLarge: { padding: '12px 26px', fontSize: '1rem' },
      sizeMedium: { padding: '9px 18px' },
    },
  },
  MuiCard: {
    defaultProps: { elevation: 0 },
    styleOverrides: {
      root: {
        borderRadius: 20,
        backgroundImage: 'none',
        border: '1px solid',
        borderColor: 'divider',
        boxShadow: (theme) =>
          theme.palette.mode === 'dark'
            ? '0 1px 2px rgba(0, 0, 0, 0.4), 0 18px 40px -28px rgba(0, 0, 0, 0.9)'
            : '0 1px 2px rgba(15, 23, 42, 0.04), 0 12px 32px -24px rgba(15, 23, 42, 0.35)',
        transition: 'transform 250ms ease, box-shadow 250ms ease, border-color 250ms ease',
        backgroundColor: 'background.paper',
      },
    },
  },
  MuiPaper: {
    styleOverrides: {
      root: { backgroundImage: 'none' },
      rounded: { borderRadius: 20 },
    },
  },
  MuiOutlinedInput: {
    styleOverrides: {
      root: {
        borderRadius: 12,
        backgroundColor: 'background.paper',
        transition: 'box-shadow 200ms ease',
        '& .MuiOutlinedInput-notchedOutline': { borderColor: 'divider' },
        '&:hover .MuiOutlinedInput-notchedOutline': { borderColor: 'rgba(79, 70, 229, 0.5)' },
        '&.Mui-focused': { boxShadow: `0 0 0 4px ${alpha(brand.indigo, 0.14)}` },
      },
      input: { paddingTop: 13, paddingBottom: 13 },
    },
  },
  MuiInputLabel: {
    styleOverrides: { root: { fontWeight: 500 } },
  },
  MuiChip: {
    styleOverrides: {
      root: { borderRadius: 10, fontWeight: 600, fontFamily: fontStack },
      sizeSmall: { height: 26, fontSize: '0.75rem' },
    },
  },
  MuiIconButton: {
    styleOverrides: {
      root: {
        borderRadius: 12,
        transition: 'background-color 200ms ease, transform 200ms ease',
      },
    },
  },
  MuiAppBar: {
    defaultProps: { elevation: 0, color: 'transparent' },
    styleOverrides: {
      root: {
        backgroundColor: (theme) =>
          theme.palette.mode === 'dark' ? 'rgba(11, 16, 32, 0.82)' : 'rgba(255, 255, 255, 0.82)',
        backdropFilter: 'blur(14px)',
        borderBottom: '1px solid',
        borderColor: 'divider',
        color: 'text.primary',
      },
    },
  },
  MuiLinearProgress: {
    styleOverrides: {
      root: { height: 8, borderRadius: 999 },
      bar: { borderRadius: 999 },
    },
  },
  MuiCircularProgress: {
    styleOverrides: { root: { color: 'primary.main' } },
  },
  MuiTabs: {
    styleOverrides: {
      indicator: { height: 3, borderRadius: 3 },
    },
  },
  MuiTab: {
    styleOverrides: {
      root: { textTransform: 'none', fontWeight: 600, minHeight: 48 },
    },
  },
  MuiToggleButton: {
    styleOverrides: {
      root: {
        textTransform: 'none',
        fontWeight: 600,
        borderColor: 'divider',
        '&.Mui-selected': {
          backgroundColor: alpha(brand.indigo, 0.1),
          color: brand.indigoDark,
        },
      },
    },
  },
  MuiToggleButtonGroup: {
    styleOverrides: {
      root: {
        borderRadius: 12,
        gap: 6,
        '& .MuiToggleButtonGroup-grouped': { border: '1px solid', borderColor: 'divider' },
      },
    },
  },
  MuiAccordion: {
    styleOverrides: {
      root: {
        borderRadius: '16px !important',
        border: '1px solid',
        borderColor: 'divider',
        boxShadow: 'none',
        overflow: 'hidden',
        '&::before': { display: 'none' },
      },
    },
  },
  MuiAccordionSummary: {
    styleOverrides: {
      root: { paddingInline: 20, '&.Mui-expanded': { minHeight: 64 } },
      content: { alignItems: 'center', marginBlock: 12, fontWeight: 600 },
    },
  },
  MuiAccordionDetails: { styleOverrides: { root: { paddingInline: 20, paddingBottom: 20 } } },
  MuiTooltip: {
    styleOverrides: {
      tooltip: { borderRadius: 8, fontSize: '0.78rem', fontWeight: 500 },
    },
  },
  MuiDialog: {
    styleOverrides: {
      paper: { borderRadius: 22, padding: 8 },
      backdrop: { backgroundColor: 'rgba(11, 17, 32, 0.55)', backdropFilter: 'blur(3px)' },
    },
  },
  MuiAlert: {
    styleOverrides: {
      root: { borderRadius: 14, fontWeight: 500 },
      standardError: { backgroundColor: 'rgba(225, 29, 72, 0.08)' },
      standardSuccess: { backgroundColor: 'rgba(22, 163, 74, 0.1)' },
      standardInfo: { backgroundColor: 'rgba(79, 70, 229, 0.08)' },
      standardWarning: { backgroundColor: 'rgba(245, 158, 11, 0.12)' },
    },
  },
  MuiTableCell: {
    styleOverrides: {
      root: { borderColor: 'divider' },
      head: { fontWeight: 700, fontSize: '0.78rem', letterSpacing: '0.04em', textTransform: 'uppercase' },
    },
  },
  MuiSkeleton: { styleOverrides: { root: { borderRadius: 12 } } },
  MuiDivider: { styleOverrides: { root: { borderColor: 'divider' } } },
  MuiMenuItem: { styleOverrides: { root: { borderRadius: 10, marginInline: 6 } } },
  MuiListItemButton: { styleOverrides: { root: { borderRadius: 12 } } },
  MuiSlider: {
    styleOverrides: {
      root: { height: 6 },
      thumb: { width: 18, height: 18, boxShadow: '0 4px 10px rgba(79,70,229,0.35)' },
      rail: { opacity: 1, backgroundColor: 'rgba(15,23,42,0.1)' },
    },
  },
  MuiBadge: { styleOverrides: { badge: { fontWeight: 700 } } },
  MuiAvatar: { styleOverrides: { root: { fontWeight: 700 } } },
  MuiStepLabel: { styleOverrides: { label: { fontWeight: 600 } } },
  MuiLinearProgressCircular: {},
};

const typography = {
  fontFamily: fontStack,
  h1: {
    fontFamily: displayStack,
    fontWeight: 800,
    fontSize: 'clamp(2.25rem, 5vw, 3.75rem)',
    lineHeight: 1.08,
    letterSpacing: '-0.035em',
  },
  h2: {
    fontFamily: displayStack,
    fontWeight: 700,
    fontSize: 'clamp(1.75rem, 3.4vw, 2.5rem)',
    lineHeight: 1.18,
    letterSpacing: '-0.025em',
  },
  h3: {
    fontFamily: displayStack,
    fontWeight: 700,
    fontSize: 'clamp(1.35rem, 2.4vw, 1.75rem)',
    lineHeight: 1.25,
    letterSpacing: '-0.02em',
  },
  h4: { fontFamily: displayStack, fontWeight: 700, fontSize: '1.25rem', letterSpacing: '-0.015em' },
  h5: { fontFamily: displayStack, fontWeight: 600, fontSize: '1.075rem' },
  h6: { fontFamily: displayStack, fontWeight: 600, fontSize: '1rem' },
  subtitle1: { fontWeight: 600, fontSize: '1.0625rem' },
  subtitle2: { fontWeight: 600, fontSize: '0.9375rem' },
  body1: { fontSize: '1rem', lineHeight: 1.7 },
  body2: { fontSize: '0.9rem', lineHeight: 1.65 },
  button: { fontWeight: 600, textTransform: 'none', letterSpacing: 0 },
  caption: { fontSize: '0.8rem', lineHeight: 1.5 },
  overline: { fontWeight: 700, letterSpacing: '0.12em', fontSize: '0.72rem' },
};

const lightPalette = {
  mode: 'light',
  primary: { main: brand.indigo, light: brand.indigoLight, dark: brand.indigoDark, contrastText: '#FFFFFF' },
  secondary: { main: brand.violet, light: '#A78BFA', dark: '#5B21B6' },
  success: { main: brand.green, light: brand.greenLight, dark: '#15803D' },
  warning: { main: brand.amber, dark: '#B45309', light: '#FCD34D' },
  error: { main: brand.rose, dark: '#9F1239', light: '#FDA4AF' },
  info: { main: '#2563EB', dark: '#1D4ED8', light: '#93C5FD' },
  background: { default: '#F6F7FB', paper: '#FFFFFF' },
  text: { primary: '#0F172A', secondary: '#516079' },
  divider: 'rgba(15, 23, 42, 0.08)',
};

const darkPalette = {
  mode: 'dark',
  primary: { main: '#818CF8', light: '#A5B4FC', dark: '#6366F1', contrastText: '#0B1120' },
  secondary: { main: '#A78BFA', light: '#C4B5FD', dark: '#7C3AED' },
  success: { main: '#4ADE80', light: '#86EFAC', dark: '#16A34A' },
  warning: { main: '#FBBF24', light: '#FCD34D', dark: '#D97706' },
  error: { main: '#FB7185', light: '#FDA4AF', dark: '#E11D48' },
  info: { main: '#60A5FA', light: '#93C5FD', dark: '#2563EB' },
  background: { default: '#080C17', paper: '#111827' },
  text: { primary: '#F1F5F9', secondary: '#94A3B8' },
  divider: 'rgba(148, 163, 184, 0.16)',
};

export const buildTheme = (mode = 'light') =>
  createTheme({
    palette: mode === 'dark' ? darkPalette : lightPalette,
    shape: { borderRadius: 14 },
    typography,
    components: baseComponents,
  });

export const lightTheme = buildTheme('light');
export const darkTheme = buildTheme('dark');

export default lightTheme;
