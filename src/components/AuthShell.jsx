import Box from '@mui/material/Box';
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import { SwanMark } from './SwanLogo';

const INK = '#0F1819';

const HIGHLIGHTS = [
  'Timed papers on a server clock',
  'Official +2 / −0.66 marking scheme',
  'A written explanation behind every question',
];

/**
 * The shared frame for every authentication screen.
 *
 * On wide screens the form sits beside a dark brand panel; on a phone the
 * panel collapses to a compact lockup above the form card.
 */
const AuthShell = ({ title, subtitle, eyebrow, children, footer, aside }) => (
  <Box sx={{ minHeight: '100%', display: 'flex', alignItems: 'center', py: { xs: 4, md: 7 } }}>
    <Container maxWidth="lg">
      <Grid container spacing={{ xs: 3, md: 5 }} sx={{ alignItems: 'stretch' }}>
        {/* Brand panel — hidden on phones, where the lockup above the card does the job. */}
        <Grid size={{ xs: 12, md: 5 }} sx={{ display: { xs: 'none', md: 'block' } }}>
          <Paper
            elevation={0}
            sx={{
              height: '100%',
              borderRadius: '28px',
              p: { md: 4, lg: 5 },
              position: 'relative',
              overflow: 'hidden',
              bgcolor: INK,
              color: '#EAF2F1',
              border: '1px solid rgba(255, 255, 255, 0.08)',
            }}
          >
            <Box sx={{ position: 'relative' }}>
              <SwanMark size={54} />
              <Typography
                sx={{
                  fontFamily: '"Fraunces Variable", Georgia, serif',
                  fontWeight: 600,
                  fontSize: { md: '1.8rem', lg: '2.1rem' },
                  lineHeight: 1.2,
                  letterSpacing: '-0.015em',
                  color: '#FFFFFF',
                  mt: 3.5,
                  mb: 1.75,
                }}
              >
                {aside?.heading || 'Your prelims practice starts here'}
              </Typography>
              <Typography sx={{ color: 'rgba(234, 242, 241, 0.72)', lineHeight: 1.75, mb: 4 }}>
                {aside?.body ||
                  'Create an account and attempt server-sampled, timed papers with the official UPSC marking scheme. No card is needed to start.'}
              </Typography>

              <Stack spacing={1.75}>
                {(aside?.points || HIGHLIGHTS).map((item) => (
                  <Stack key={item} direction="row" spacing={1.25} sx={{ alignItems: 'flex-start' }}>
                    <CheckCircleRoundedIcon sx={{ color: '#5EEAD4', fontSize: 19, mt: 0.15 }} />
                    <Typography sx={{ color: 'rgba(234, 242, 241, 0.9)', fontSize: 14.5, fontWeight: 500, lineHeight: 1.6 }}>
                      {item}
                    </Typography>
                  </Stack>
                ))}
              </Stack>

              <Typography
                variant="caption"
                sx={{ display: 'block', mt: 4, color: 'rgba(234, 242, 241, 0.45)' }}
              >
                Practice material only. Not affiliated with UPSC.
              </Typography>
            </Box>
          </Paper>
        </Grid>

        {/* Form */}
        <Grid size={{ xs: 12, md: 7 }}>
          <Paper
            variant="outlined"
            sx={{
              p: { xs: 3, sm: 4 },
              borderRadius: '24px',
              bgcolor: 'background.paper',
              height: '100%',
              display: 'flex',
              flexDirection: 'column',
            }}
          >
              <Box sx={{ mb: 3 }}>
                {eyebrow && (
                  <Typography
                    variant="overline"
                    sx={{ color: 'primary.main', fontWeight: 700, letterSpacing: '0.16em' }}
                  >
                    {eyebrow}
                  </Typography>
                )}
                <Typography
                  variant="h4"
                  sx={{ fontWeight: 600, color: 'text.primary', mt: eyebrow ? 0.75 : 0, mb: 0.75 }}
                >
                  {title}
                </Typography>
                {subtitle && (
                  <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.7 }}>
                    {subtitle}
                  </Typography>
                )}
              </Box>

              {children}

              {footer && <Box sx={{ mt: 3 }}>{footer}</Box>}
            </Paper>
        </Grid>
      </Grid>
    </Container>
  </Box>
);

export default AuthShell;
