import { alpha, createTheme } from '@mui/material/styles';

/**
 * Swadharma IAS design tokens.
 *
 * The identity is "calm ink on paper": a warm paper canvas, deep ink text, one
 * confident teal and hairline rules. Fraunces (a warm serif) carries the
 * headings, Inter carries the interface and the dense exam content.
 */
export const brand = {
  teal: '#0F766E',
  tealLight: '#14958A',
  tealDark: '#0B4F4A',
  cyan: '#0E7490',
  cyanLight: '#22A5BE',
  ink: '#101A1C',
  paper: '#F6F4EF',
  sand: '#E8E3D9',
  gold: '#B08040',
  green: '#15803D',
  amber: '#B54708',
  rose: '#B42318',
};

export const heroGradient = 'linear-gradient(135deg, #0F766E 0%, #0E7490 100%)';

export const softGradient = 'linear-gradient(135deg, #EEF4F3 0%, #E9F0F5 100%)';

export const displayStack = '"Fraunces Variable", "Iowan Old Style", Georgia, "Times New Roman", serif';
export const fontStack =
  '"Inter", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", sans-serif';

const shadowLight = '0 1px 2px rgba(16, 26, 28, 0.04), 0 12px 32px -24px rgba(16, 26, 28, 0.35)';
const shadowDark = '0 1px 2px rgba(0, 0, 0, 0.5), 0 18px 40px -28px rgba(0, 0, 0, 0.9)';

const baseComponents = {
  MuiCssBaseline: {
    styleOverrides: {
      body: {
        fontFeatureSettings: '"cv02","cv03","cv04","cv11"',
        backgroundColor: (theme) => theme.palette.background.default,
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
        letterSpacing: '-0.005em',
        fontFamily: fontStack,
        paddingInline: 20,
        minHeight: 44,
        transition: 'background-color 180ms ease, border-color 180ms ease, color 180ms ease, box-shadow 180ms ease, transform 180ms ease',
      },
      containedPrimary: {
        background: heroGradient,
        color: '#FFFFFF',
        '&:hover': {
          background: 'linear-gradient(135deg, #0C6760 0%, #0B6479 100%)',
          boxShadow: '0 14px 30px -14px rgba(15, 118, 110, 0.7)',
        },
        '&:active': { transform: 'translateY(0)' },
      },
      outlined: {
        borderWidth: 1.5,
        borderColor: 'divider',
        color: 'text.primary',
        '&:hover': { borderWidth: 1.5, borderColor: 'primary.main', backgroundColor: alpha('#0F766E', 0.05) },
      },
      sizeLarge: { padding: '13px 28px', fontSize: '1rem', minHeight: 52 },
      sizeMedium: { padding: '10px 20px' },
      sizeSmall: { padding: '7px 14px', minHeight: 38 },
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
        boxShadow: (theme) => (theme.palette.mode === 'dark' ? shadowDark : shadowLight),
        transition: 'transform 220ms ease, box-shadow 220ms ease, border-color 220ms ease',
        backgroundColor: 'background.paper',
      },
    },
  },
  MuiPaper: {
    styleOverrides: {
      root: { backgroundImage: 'none' },
      rounded: { borderRadius: 20 },
      outlined: { borderColor: 'divider' },
    },
  },
  MuiOutlinedInput: {
    styleOverrides: {
      root: {
        borderRadius: 12,
        backgroundColor: 'background.paper',
        transition: 'box-shadow 180ms ease, border-color 180ms ease',
        '& .MuiOutlinedInput-notchedOutline': { borderColor: 'divider' },
        '&:hover .MuiOutlinedInput-notchedOutline': { borderColor: alpha('#0F766E', 0.55) },
        '&.Mui-focused': {
          boxShadow: `0 0 0 4px ${alpha('#0F766E', 0.14)}`,
          '& .MuiOutlinedInput-notchedOutline': { borderColor: 'primary.main', borderWidth: 1.5 },
        },
      },
      input: { paddingTop: 13, paddingBottom: 13 },
    },
  },
  MuiFilledInput: {
    styleOverrides: {
      root: {
        borderRadius: 12,
        backgroundColor: 'background.paper',
        '&.Mui-focused': { boxShadow: `0 0 0 4px ${alpha('#0F766E', 0.14)}` },
      },
    },
  },
  MuiInputLabel: {
    styleOverrides: { root: { fontWeight: 500 } },
  },
  MuiChip: {
    styleOverrides: {
      root: { borderRadius: 999, fontWeight: 600, fontFamily: fontStack },
      sizeSmall: { height: 26, fontSize: '0.75rem' },
    },
  },
  MuiIconButton: {
    styleOverrides: {
      root: {
        borderRadius: 12,
        transition: 'background-color 180ms ease, color 180ms ease',
      },
    },
  },
  MuiAppBar: {
    defaultProps: { elevation: 0, color: 'transparent' },
    styleOverrides: {
      root: {
        backgroundColor: (theme) =>
          theme.palette.mode === 'dark' ? 'rgba(10, 17, 19, 0.86)' : 'rgba(246, 244, 239, 0.86)',
        backdropFilter: 'blur(16px)',
        WebkitBackdropFilter: 'blur(16px)',
        borderBottom: '1px solid',
        borderColor: 'divider',
        color: 'text.primary',
      },
    },
  },
  MuiLinearProgress: {
    styleOverrides: {
      root: { height: 8, borderRadius: 999, backgroundColor: alpha('#0F766E', 0.12) },
      bar: { borderRadius: 999, background: heroGradient },
    },
  },
  MuiCircularProgress: {
    styleOverrides: { root: { color: 'primary.main' } },
  },
  MuiTabs: {
    styleOverrides: {
      indicator: { height: 2, borderRadius: 2 },
    },
  },
  MuiTab: {
    styleOverrides: {
      root: { textTransform: 'none', fontWeight: 600, minHeight: 46, paddingInline: 16 },
    },
  },
  MuiToggleButton: {
    styleOverrides: {
      root: {
        textTransform: 'none',
        fontWeight: 600,
        borderColor: 'divider',
        color: 'text.secondary',
        '&.Mui-selected': {
          backgroundColor: alpha('#0F766E', 0.12),
          color: 'primary.main',
          '&:hover': { backgroundColor: alpha('#0F766E', 0.16) },
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
        backgroundImage: 'none',
        '&::before': { display: 'none' },
      },
    },
  },
  MuiAccordionSummary: {
    styleOverrides: {
      root: { paddingInline: 20, minHeight: 60, '&.Mui-expanded': { minHeight: 60 } },
      content: { alignItems: 'center', marginBlock: 14, fontWeight: 600 },
    },
  },
  MuiAccordionDetails: { styleOverrides: { root: { paddingInline: 20, paddingBottom: 20 } } },
  MuiTooltip: {
    styleOverrides: {
      tooltip: { borderRadius: 10, fontSize: '0.78rem', fontWeight: 500, padding: '6px 10px' },
    },
  },
  MuiDialog: {
    styleOverrides: {
      paper: { borderRadius: 22, padding: 8, border: '1px solid', borderColor: 'divider' },
      backdrop: { backgroundColor: 'rgba(9, 16, 18, 0.5)', backdropFilter: 'blur(3px)' },
    },
  },
  MuiAlert: {
    styleOverrides: {
      root: { borderRadius: 14, fontWeight: 500, alignItems: 'center' },
      standardError: { backgroundColor: alpha('#B42318', 0.08) },
      standardSuccess: { backgroundColor: alpha('#15803D', 0.1) },
      standardInfo: { backgroundColor: alpha('#0E7490', 0.08) },
      standardWarning: { backgroundColor: alpha('#B54708', 0.1) },
    },
  },
  MuiTableCell: {
    styleOverrides: {
      root: { borderColor: 'divider' },
      head: { fontWeight: 700, fontSize: '0.75rem', letterSpacing: '0.08em', textTransform: 'uppercase' },
    },
  },
  MuiSkeleton: { styleOverrides: { root: { borderRadius: 12 } } },
  MuiDivider: { styleOverrides: { root: { borderColor: 'divider' } } },
  MuiMenu: {
    styleOverrides: {
      paper: {
        marginTop: 8,
        borderRadius: 16,
        border: '1px solid',
        borderColor: 'divider',
        boxShadow: (theme) => (theme.palette.mode === 'dark' ? shadowDark : shadowLight),
      },
    },
  },
  MuiMenuItem: { styleOverrides: { root: { borderRadius: 10, marginInline: 6, minHeight: 42 } } },
  MuiListItemButton: { styleOverrides: { root: { borderRadius: 12, minHeight: 44 } } },
  MuiSlider: {
    styleOverrides: {
      root: { height: 6 },
      thumb: {
        width: 20,
        height: 20,
        boxShadow: '0 4px 12px rgba(15, 118, 110, 0.35)',
        '&:hover, &.Mui-focusVisible': { boxShadow: '0 0 0 8px rgba(15, 118, 110, 0.16)' },
      },
      rail: { opacity: 1, backgroundColor: alpha('#0F766E', 0.14) },
    },
  },
  MuiBadge: { styleOverrides: { badge: { fontWeight: 700 } } },
  MuiAvatar: { styleOverrides: { root: { fontWeight: 700 } } },
  MuiStepLabel: { styleOverrides: { label: { fontWeight: 600 } } },
  MuiStepIcon: { styleOverrides: { root: { color: alpha('#0F766E', 0.22) } } },
  MuiSwitch: { styleOverrides: { switchBase: { color: alpha('#0F766E', 0.4) } } },
};

const typography = {
  fontFamily: fontStack,
  h1: {
    fontFamily: displayStack,
    fontWeight: 600,
    fontSize: 'clamp(2.35rem, 5.4vw, 3.9rem)',
    lineHeight: 1.06,
    letterSpacing: '-0.022em',
  },
  h2: {
    fontFamily: displayStack,
    fontWeight: 600,
    fontSize: 'clamp(1.85rem, 3.6vw, 2.6rem)',
    lineHeight: 1.14,
    letterSpacing: '-0.018em',
  },
  h3: {
    fontFamily: displayStack,
    fontWeight: 600,
    fontSize: 'clamp(1.35rem, 2.4vw, 1.85rem)',
    lineHeight: 1.2,
    letterSpacing: '-0.014em',
  },
  h4: {
    fontFamily: displayStack,
    fontWeight: 600,
    fontSize: '1.35rem',
    lineHeight: 1.25,
    letterSpacing: '-0.012em',
  },
  h5: { fontFamily: fontStack, fontWeight: 600, fontSize: '1.0625rem', letterSpacing: '-0.01em' },
  h6: { fontFamily: fontStack, fontWeight: 600, fontSize: '0.9375rem', letterSpacing: '-0.005em' },
  subtitle1: { fontWeight: 600, fontSize: '1.0625rem' },
  subtitle2: { fontWeight: 600, fontSize: '0.9375rem' },
  body1: { fontSize: '1rem', lineHeight: 1.7 },
  body2: { fontSize: '0.9375rem', lineHeight: 1.65 },
  button: { fontWeight: 600, textTransform: 'none', letterSpacing: '-0.005em' },
  caption: { fontSize: '0.8125rem', lineHeight: 1.55 },
  overline: {
    fontWeight: 700,
    letterSpacing: '0.16em',
    fontSize: '0.6875rem',
    lineHeight: 1.6,
  },
};

const lightPalette = {
  mode: 'light',
  primary: { main: brand.teal, light: brand.tealLight, dark: brand.tealDark, contrastText: '#FFFFFF' },
  secondary: { main: brand.cyan, light: brand.cyanLight, dark: '#0A5A6E' },
  success: { main: brand.green, light: '#22A06B', dark: '#14532D' },
  warning: { main: brand.amber, light: '#E08A2E', dark: '#7C2D12' },
  error: { main: brand.rose, light: '#E04A3E', dark: '#7A1D16' },
  info: { main: brand.cyan, light: '#3BAFC8', dark: '#0A5A6E' },
  background: { default: brand.paper, paper: '#FFFFFF' },
  text: { primary: brand.ink, secondary: '#56656A' },
  divider: 'rgba(16, 26, 28, 0.10)',
};

const darkPalette = {
  mode: 'dark',
  primary: { main: '#2DD4BF', light: '#5EEAD4', dark: '#14B8A6', contrastText: '#04211E' },
  secondary: { main: '#38BDF8', light: '#7DD3FC', dark: '#0EA5E9' },
  success: { main: '#4ADE80', light: '#86EFAC', dark: '#22C55E' },
  warning: { main: '#FDB022', light: '#FEC84B', dark: '#F79009' },
  error: { main: '#F97066', light: '#FDA29B', dark: '#F04438' },
  info: { main: '#38BDF8', light: '#7DD3FC', dark: '#0EA5E9' },
  background: { default: '#0A1113', paper: '#111A1C' },
  text: { primary: '#EAF2F1', secondary: '#9BAFB0' },
  divider: 'rgba(233, 242, 241, 0.12)',
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
