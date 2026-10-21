import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { Link as RouterLink } from 'react-router-dom';
import { SwanMark } from './SwanLogo';

/**
 * The lockup: the swan badge plus the wordmark.
 *
 * `tone="light"` is for dark surfaces (the footer, the auth brand panel) where
 * the wordmark has to invert with the background.
 */
const Logo = ({
  size = 40,
  showWordmark = true,
  subtitle = 'IAS',
  to = '/',
  tone = 'default',
  sx,
  ...rest
}) => {
  const light = tone === 'light';

  return (
    <Stack
      component={RouterLink}
      to={to}
      direction="row"
      spacing={1.25}
      sx={{
        alignItems: 'center',
        textDecoration: 'none',
        color: 'inherit',
        flexShrink: 0,
        ...sx,
      }}
      {...rest}
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
              color: light ? '#F1F6F5' : 'text.primary',
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
              color: light ? '#5EEAD4' : 'primary.main',
              lineHeight: 1.2,
            }}
          >
            {subtitle}
          </Typography>
        </Stack>
      )}
    </Stack>
  );
};

export default Logo;
