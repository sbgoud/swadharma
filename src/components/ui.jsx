import { Link as RouterLink } from 'react-router-dom';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Paper from '@mui/material/Paper';
import Skeleton from '@mui/material/Skeleton';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import ArrowForwardRoundedIcon from '@mui/icons-material/ArrowForwardRounded';
import { resolveColor } from '../theme/theme';

/**
 * The shared primitives every page is built from.
 *
 * They deliberately carry no page-specific copy so the same shapes can be
 * reused on the landing page, in the dashboard and inside the exam console.
 */

const TONES = {
  primary: 'primary.main',
  success: 'success.main',
  warning: 'warning.main',
  error: 'error.main',
  info: 'info.main',
  neutral: 'text.secondary',
};

/** A small tracked label with a hairline rule in front of it. */
export const Eyebrow = ({ children, tone = 'primary', sx }) => (
  <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center', ...sx }}>
    <Box sx={{ width: 22, height: 2, borderRadius: '2px', bgcolor: `${tone}.main`, flexShrink: 0 }} />
    <Typography
      component="span"
      variant="overline"
      sx={{ color: `${tone}.main`, fontWeight: 700, lineHeight: 1 }}
    >
      {children}
    </Typography>
  </Stack>
);

/** Section title with an optional eyebrow and subtitle. */
export const SectionHeading = ({
  eyebrow,
  title,
  subtitle,
  align = 'left',
  maxWidth = 680,
  sx,
}) => (
  <Box sx={{ textAlign: align, maxWidth, ...(align === 'center' ? { mx: 'auto' } : {}), ...sx }}>
    {eyebrow && (
      <Box sx={{ mb: 2, display: 'flex', justifyContent: align === 'center' ? 'center' : 'flex-start' }}>
        <Eyebrow>{eyebrow}</Eyebrow>
      </Box>
    )}
    <Typography variant="h2" sx={{ color: 'text.primary' }}>
      {title}
    </Typography>
    {subtitle && (
      <Typography variant="body1" color="text.secondary" sx={{ mt: 2, lineHeight: 1.75, maxWidth: 620 }}>
        {subtitle}
      </Typography>
    )}
  </Box>
);

/** Page-level heading with an optional action cluster on the right. */
export const PageHeader = ({ eyebrow, title, description, actions, sx }) => (
  <Stack
    direction={{ xs: 'column', sm: 'row' }}
    spacing={3}
    sx={{ alignItems: { sm: 'flex-end' }, justifyContent: 'space-between', ...sx }}
  >
    <Box sx={{ minWidth: 0 }}>
      {eyebrow && (
        <Box sx={{ mb: 1.5 }}>
          <Eyebrow>{eyebrow}</Eyebrow>
        </Box>
      )}
      <Typography variant="h2" sx={{ color: 'text.primary' }}>
        {title}
      </Typography>
      {description && (
        <Typography variant="body1" color="text.secondary" sx={{ mt: 1.5, lineHeight: 1.7, maxWidth: 640 }}>
          {description}
        </Typography>
      )}
    </Box>
    {actions && (
      <Stack direction="row" spacing={1.25} sx={{ flexShrink: 0, flexWrap: 'wrap', gap: 1.25 }}>
        {actions}
      </Stack>
    )}
  </Stack>
);

/**
 * A rounded tile holding one icon, tinted with a semantic colour.
 * `color` accepts a theme palette path (`primary.main`) or a raw CSS colour.
 */
export const IconTile = ({ icon, color, tone = 'primary', size = 44, filled = false, sx }) => {
  const shade = color || TONES[tone] || TONES.primary;

  return (
    <Box
      sx={{
        width: size,
        height: size,
        borderRadius: size > 40 ? '16px' : '12px',
        display: 'grid',
        placeItems: 'center',
        flexShrink: 0,
        color: (theme) => (filled ? '#FFFFFF' : resolveColor(theme, shade)),
        bgcolor: (theme) =>
          filled ? resolveColor(theme, shade) : alpha(resolveColor(theme, shade), 0.1),
        '& svg': { fontSize: size * 0.5 },
        ...sx,
      }}
    >
      {icon}
    </Box>
  );
};

/** A metric card: icon, label, value and a caption. */
export const StatCard = ({ icon, label, value, caption, accent = 'primary.main', trend, sx }) => (
  <Paper
    variant="outlined"
    sx={{
      p: 2.5,
      borderRadius: '20px',
      height: '100%',
      display: 'flex',
      gap: 2,
      alignItems: 'flex-start',
      transition: 'transform 200ms ease, box-shadow 200ms ease, border-color 200ms ease',
      '&:hover': {
        transform: 'translateY(-2px)',
        borderColor: (theme) => alpha(resolveColor(theme, accent), 0.35),
      },
      ...sx,
    }}
  >
    {icon && (
      <IconTile icon={icon} color={accent} size={44}>
        {icon}
      </IconTile>
    )}
    <Box sx={{ minWidth: 0 }}>
      <Typography
        variant="caption"
        color="text.secondary"
        sx={{ fontWeight: 600, letterSpacing: '0.06em', textTransform: 'uppercase' }}
      >
        {label}
      </Typography>
      <Typography
        className="tabular"
        sx={{
          fontFamily: '"Fraunces Variable", Georgia, serif',
          fontWeight: 600,
          fontSize: '1.75rem',
          lineHeight: 1.25,
          color: 'text.primary',
          mt: 0.25,
        }}
      >
        {value}
      </Typography>
      {(caption || trend) && (
        <Typography variant="caption" color="text.secondary">
          {trend || caption}
        </Typography>
      )}
    </Box>
  </Paper>
);

/** Friendly placeholder for empty lists. */
export const EmptyState = ({ icon, title, description, action }) => (
  <Paper
    variant="outlined"
    sx={{ p: { xs: 4, md: 6 }, textAlign: 'center', borderRadius: '24px', borderStyle: 'dashed' }}
  >
    {icon && (
      <Box sx={{ color: 'text.disabled', mb: 2, display: 'grid', placeItems: 'center' }}>{icon}</Box>
    )}
    <Typography variant="h5" sx={{ fontWeight: 600, color: 'text.primary' }}>
      {title}
    </Typography>
    {description && (
      <Typography variant="body2" color="text.secondary" sx={{ mt: 1, maxWidth: 460, mx: 'auto' }}>
        {description}
      </Typography>
    )}
    {action && <Box sx={{ mt: 3 }}>{action}</Box>}
  </Paper>
);

/** Skeleton placeholder used while a page loads its data. */
export const LoadingState = ({ lines = 3, height = 90 }) => (
  <Stack spacing={1.5}>
    {Array.from({ length: lines }).map((_, index) => (
      <Skeleton key={index} variant="rounded" height={height} />
    ))}
  </Stack>
);

/** A closing band that points at one action. */
export const CtaBand = ({
  title,
  description,
  actionLabel,
  actionHref,
  onAction,
  secondaryLabel,
  secondaryHref,
  onSecondary,
}) => (
  <Paper
    variant="outlined"
    sx={{
      borderRadius: '28px',
      p: { xs: 3.5, md: 5 },
      textAlign: { xs: 'left', md: 'center' },
      background: (theme) =>
        theme.palette.mode === 'dark'
          ? 'linear-gradient(135deg, rgba(45, 212, 191, 0.12) 0%, rgba(56, 189, 248, 0.10) 100%)'
          : 'linear-gradient(135deg, #EEF4F3 0%, #E9F0F5 100%)',
    }}
  >
    <Typography variant="h3" sx={{ color: 'text.primary', maxWidth: 640, mx: { md: 'auto' } }}>
      {title}
    </Typography>
    {description && (
      <Typography
        variant="body1"
        color="text.secondary"
        sx={{ mt: 2, lineHeight: 1.75, maxWidth: 560, mx: { md: 'auto' } }}
      >
        {description}
      </Typography>
    )}
    <Stack
      direction={{ xs: 'column', sm: 'row' }}
      spacing={1.5}
      sx={{ mt: 3.5, justifyContent: { md: 'center' }, alignItems: 'stretch' }}
    >
      {actionLabel && (
        <Button
          variant="contained"
          size="large"
          component={actionHref ? RouterLink : 'button'}
          to={actionHref}
          href={actionHref && !actionHref.startsWith('/') ? actionHref : undefined}
          onClick={onAction}
          endIcon={<ArrowForwardRoundedIcon />}
          sx={{ minWidth: 220 }}
        >
          {actionLabel}
        </Button>
      )}
      {secondaryLabel && (
        <Button
          variant="outlined"
          size="large"
          component={secondaryHref ? RouterLink : 'button'}
          to={secondaryHref}
          href={secondaryHref && !secondaryHref.startsWith('/') ? secondaryHref : undefined}
          onClick={onSecondary}
          sx={{ minWidth: 180 }}
        >
          {secondaryLabel}
        </Button>
      )}
    </Stack>
  </Paper>
);

export default SectionHeading;
