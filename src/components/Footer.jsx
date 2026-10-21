import { Link as RouterLink } from 'react-router-dom';
import Box from '@mui/material/Box';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import Link from '@mui/material/Link';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import Logo from './Logo';

const EXPLORE = [
  { label: 'Home', to: '/' },
  { label: 'About', to: '/about' },
  { label: 'Dashboard', to: '/dashboard' },
  { label: 'My tests', to: '/attempts' },
  { label: 'Profile', to: '/profile' },
];

const SUBJECTS = [
  'History',
  'Geography',
  'Polity',
  'Economy',
  'Environment',
  'Science & Technology',
  'Art & Culture',
  'Current Affairs',
];

const INK = '#0F1819';
const MUTED = 'rgba(226, 236, 235, 0.62)';
const SOFT = 'rgba(226, 236, 235, 0.82)';

const Footer = () => (
  <Box
    component="footer"
    sx={{
      mt: { xs: 8, md: 12 },
      bgcolor: INK,
      color: SOFT,
      borderTop: '1px solid rgba(226, 236, 235, 0.10)',
    }}
  >
    <Container maxWidth="lg">
      <Grid container spacing={{ xs: 4, md: 5 }} sx={{ py: { xs: 6, md: 8 } }}>
        <Grid size={{ xs: 12, md: 4 }}>
          <Logo size={44} tone="light" />
          <Typography variant="body2" sx={{ mt: 2.5, maxWidth: 340, lineHeight: 1.75, color: MUTED }}>
            A UPSC, TGPSC and APPSC prelims test series for aspirants who want real timed
            papers, official marking schemes and detailed explanations for every question.
          </Typography>
          <Typography
            variant="caption"
            sx={{ mt: 2.5, display: 'inline-block', color: '#5EEAD4', letterSpacing: '0.02em' }}
          >
            Start practising free today
          </Typography>
        </Grid>

        <Grid size={{ xs: 6, sm: 3, md: 2 }}>
          <Typography variant="overline" sx={{ color: '#FFFFFF', fontWeight: 700 }}>
            Explore
          </Typography>
          <Stack component="ul" spacing={1.25} sx={{ listStyle: 'none', p: 0, mt: 1.5 }}>
            {EXPLORE.map((item) => (
              <li key={item.label}>
                <Link
                  component={RouterLink}
                  to={item.to}
                  underline="none"
                  sx={{ color: MUTED, fontSize: 14, '&:hover': { color: '#FFFFFF' } }}
                >
                  {item.label}
                </Link>
              </li>
            ))}
          </Stack>
        </Grid>

        <Grid size={{ xs: 6, sm: 3, md: 3 }}>
          <Typography variant="overline" sx={{ color: '#FFFFFF', fontWeight: 700 }}>
            Subjects
          </Typography>
          <Stack component="ul" spacing={1.25} sx={{ listStyle: 'none', p: 0, mt: 1.5 }}>
            {SUBJECTS.map((subject) => (
              <li key={subject}>
                <Link
                  component={RouterLink}
                  to="/#subjects"
                  underline="none"
                  sx={{ color: MUTED, fontSize: 14, '&:hover': { color: '#FFFFFF' } }}
                >
                  {subject}
                </Link>
              </li>
            ))}
          </Stack>
        </Grid>

        <Grid size={{ xs: 12, sm: 6, md: 3 }}>
          <Typography variant="overline" sx={{ color: '#FFFFFF', fontWeight: 700 }}>
            Contact
          </Typography>
          <Stack spacing={1.5} sx={{ mt: 1.5 }}>
            <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
              <EmailRoundedIcon sx={{ color: '#5EEAD4', fontSize: 20 }} />
              <Link
                href="mailto:contact@swadharmaias.com"
                underline="none"
                sx={{ color: SOFT, fontSize: 14, '&:hover': { color: '#FFFFFF' } }}
              >
                contact@swadharmaias.com
              </Link>
            </Stack>
            <Typography variant="body2" sx={{ lineHeight: 1.7, color: MUTED }}>
              Swadharma IAS Academy
              <br />
              Ashok Nagar X Roads, Hyderabad — 500020
            </Typography>
            <Typography variant="caption" sx={{ color: 'rgba(226, 236, 235, 0.45)' }}>
              Support replies within one working day.
            </Typography>
          </Stack>
        </Grid>
      </Grid>

      <Divider sx={{ borderColor: 'rgba(226, 236, 235, 0.12)' }} />
      <Stack
        direction={{ xs: 'column', md: 'row' }}
        spacing={1.5}
        sx={{ justifyContent: 'space-between', alignItems: { xs: 'center', md: 'center' }, py: 3 }}
      >
        <Typography variant="body2" sx={{ color: MUTED }}>
          © {new Date().getFullYear()} Swadharma IAS Academy. All rights reserved.
        </Typography>
        <Typography variant="caption" sx={{ color: 'rgba(226, 236, 235, 0.45)', textAlign: 'center' }}>
          Forging the Steel Frame of India · Practice material only, not affiliated with UPSC
        </Typography>
      </Stack>
    </Container>
  </Box>
);

export default Footer;
