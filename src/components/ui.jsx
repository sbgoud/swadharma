import Box from '@mui/material/Box';
import Chip from '@mui/material/Chip';
import Paper from '@mui/material/Paper';
import Skeleton from '@mui/material/Skeleton';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';

/** Section title + optional eyebrow + subtitle, used across the landing page. */
export const SectionHeading = ({ eyebrow, title, subtitle, align = 'center', maxWidth = 720, sx }) => (
  <Box sx={{ textAlign: 'align', maxWidth, mx: align === 'center' ? 'auto' : 0, ...sx }}>
    {eyebrow && (
      <Chip
        label={eyebrow}
        size="small"
        sx={{
          mb: 1.75,
          bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
          color: 'primary.main',
          letterSpacing: '0.06em',
          textTransform: 'uppercase',
          fontSize: '0.68rem',
        }}
      />
    )}
    <Typography variant="h2" sx={{ color: 'text.primary' }}>
      {title}
    </Typography>
    {subtitle && (
      <Typography variant="body1" color="text.secondary" sx={{ mt: 1.75, lineHeight: 1.75 }}>
        {subtitle}
      </Typography>
    )}
  </Box>
);

/** Metric card with an icon, a value and a caption. */
export const StatCard = ({ icon, label, value, caption, accent = 'primary.main', trend }) => (
  <Paper
    variant="outlined"
    sx={{
      p: 2.5,
      borderRadius: 4,
      height: '100%',
      display: 'flex',
      gap: 2,
      alignItems: 'flex-start',
      borderColor: 'divider',
      transition: 'transform 250ms ease, box-shadow 250ms ease',
      '&:hover': { transform: 'translateY(-3px)', boxShadow: 6 },
    }}
  >
    {icon && (
      <Box
        sx={{
          width: 44,
          height: 44,
          borderRadius: 3,
          display: 'grid',
          placeItems: 'center',
          bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
          color: accent,
          flexShrink: 0,
        }}
      >
        {icon}
      </Box>
    )}
    <Box sx={{ minWidth: 0 }}>
      <Typography variant="caption" color="text.secondary" sx={{ fontWeight: 600, letterSpacing: '0.04em' }}>
        {label}
      </Typography>
      <Typography
        sx={{
          fontFamily: '"Poppins", sans-serif',
          fontWeight: 700,
          fontSize: '1.6rem',
          lineHeight: 1.2,
          color: 'text.primary',
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
    sx={{ p: { xs: 4, md: 6 }, textAlign: 'center', borderRadius: 4, borderStyle: 'dashed' }}
  >
    {icon && <Box sx={{ color: 'text.disabled', mb: 1.5, display: 'grid', placeItems: 'center' }}>{icon}</Box>}
    <Typography variant="h6" sx={{ fontWeight: 700, color: 'text.primary' }}>
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

export default SectionHeading;
