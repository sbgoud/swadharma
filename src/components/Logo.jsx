import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { Link as RouterLink } from 'react-router-dom';
import { SwanMark } from './SwanLogo';

/**
 * The lockup: the swan badge plus the wordmark. The wordmark flips with the
 * theme (`text.primary`) while the "IAS" line carries the brand colour.
 */
const Logo = ({ size = 40, showWordmark = true, subtitle = 'IAS', to = '/', ...rest }) => (
  <Stack
    component={RouterLink}
    to={to}
    direction="row"
    spacing={1.25}
    sx={{ alignItems: 'center', textDecoration: 'none', color: 'inherit', flexShrink: 0, ...rest }}
  >
    <SwanMark size={size} />
    {showWordmark && (
      <Stack spacing={0} sx={{ lineHeight: 1 }}>
        <Typography
          component="span"
          sx={{
            fontFamily: '"Fraunces Variable", Georgia, serif',
            fontWeight: 600,
            fontSize: size * 0.46,
            letterSpacing: '-0.015em',
            color: 'text.primary',
            lineHeight: 1.1,
          }}
        >
          Swadharma
        </Typography>
        <Typography
          component="span"
          sx={{
            fontSize: size * 0.235,
            fontWeight: 700,
            letterSpacing: '0.26em',
            color: 'primary.main',
            lineHeight: 1.2,
          }}
        >
          {subtitle}
        </Typography>
      </Stack>
    )}
  </Stack>
);

export default Logo;
