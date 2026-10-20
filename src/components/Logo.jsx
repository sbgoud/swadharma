import { Box, Stack, Typography } from '@mui/material';
import AutoStoriesRoundedIcon from '@mui/icons-material/AutoStoriesRounded';
import { Link as RouterLink } from 'react-router-dom';
import { heroGradient } from '../theme/theme';

const Logo = ({ size = 40, showWordmark = true, subtitle = 'IAS' }) => (
  <Stack
    component={RouterLink}
    to="/"
    direction="row"
    
    spacing={1.25}
    sx={{ alignItems: 'center', textDecoration: 'none', color: 'inherit', flexShrink: 0 }}
  >
    <Box
      sx={{
        width: size,
        height: size,
        borderRadius: '14px',
        background: heroGradient,
        display: 'grid',
        placeItems: 'center',
        color: '#fff',
        boxShadow: '0 10px 22px -10px rgba(79, 70, 229, 0.9)',
        flexShrink: 0,
      }}
    >
      <AutoStoriesRoundedIcon sx={{ fontSize: size * 0.55 }} />
    </Box>
    {showWordmark && (
      <Box sx={{ lineHeight: 1 }}>
        <Typography
          sx={{
            fontFamily: '"Poppins", sans-serif',
            fontWeight: 800,
            fontSize: size * 0.45,
            letterSpacing: '-0.02em',
            color: 'text.primary',
          }}
        >
          Swadharma
        </Typography>
        <Typography
          sx={{
            fontSize: size * 0.24,
            fontWeight: 700,
            letterSpacing: '0.24em',
            color: 'primary.main',
            mt: 0.4,
          }}
        >
          {subtitle}
        </Typography>
      </Box>
    )}
  </Stack>
);

export default Logo;
