import { Link as RouterLink } from 'react-router-dom';
import Box from '@mui/material/Box';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import Link from '@mui/material/Link';
import EmailRoundedIcon from '@mui/icons-material/EmailRounded';
import VerifiedRoundedIcon from '@mui/icons-material/VerifiedRounded';
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

const Footer = () => (
  <Box
    component="footer"
    sx={{
      mt: { xs: 8, md: 12 },
      background: 'linear-gradient(180deg, #0B1120 0%, #0F172A 100%)',
      color: 'rgba(226, 232, 240, 0.78)',
      position: 'relative',
      overflow: 'hidden',
    }}
  >
    <Box
      sx={{
        position: 'absolute',
        inset: 0,
        background:
          'radial-gradient(60% 60% at 15% 0%, rgba(79,70,229,0.28) 0%, transparent 60%), radial-gradient(50% 50% at 90% 10%, rgba(124,58,237,0.22) 0%, transparent 60%)',
        pointerEvents: 'none',
      }}
    />
    <Container maxWidth="xl" sx={{ position: 'relative' }}>
      <Grid container spacing={4} sx={{ py: { xs: 6, md: 8 } }}>
        <Grid size={{ xs: 12, md: 4 }}>
          <Box sx={{ '& .MuiTypography-root': { color: '#fff' } }}>
            <Logo size={44} />
          </Box>
          <Typography variant="body2" sx={{ mt: 2.5, maxWidth: 340, lineHeight: 1.75 }}>
            A free UPSC Prelims test series built for aspirants who want real timed papers,
            official marking and detailed explanations — without a single rupee spent.
          </Typography>
          <Stack direction="row" spacing={1} sx={{ alignItems: 'center', mt: 2.5 }}>
            <VerifiedRoundedIcon sx={{ color: '#22C55E', fontSize: 20 }} />
            <Typography variant="body2" sx={{ color: '#fff', fontWeight: 600 }}>
              Free forever · no paywalls
            </Typography>
          </Stack>
        </Grid>

        <Grid size={{ xs: 6, sm: 3, md: 2 }}>
          <Typography variant="overline" sx={{ color: '#fff', fontWeight: 700 }}>
            Explore
          </Typography>
          <Stack component="ul" spacing={1.25} sx={{ listStyle: 'none', p: 0, mt: 1.5 }}>
            {EXPLORE.map((item) => (
              <li key={item.label}>
                <Link
                  component={RouterLink}
                  to={item.to}
                  underline="none"
                  sx={{ color: 'rgba(226,232,240,0.75)', fontSize: 14, '&:hover': { color: '#fff' } }}
                >
                  {item.label}
                </Link>
              </li>
            ))}
          </Stack>
        </Grid>

        <Grid size={{ xs: 6, sm: 3, md: 3 }}>
          <Typography variant="overline" sx={{ color: '#fff', fontWeight: 700 }}>
            Subjects
          </Typography>
          <Stack component="ul" spacing={1.25} sx={{ listStyle: 'none', p: 0, mt: 1.5 }}>
            {SUBJECTS.map((subject) => (
              <li key={subject}>
                <Link
                  component={RouterLink}
                  to="/#subjects"
                  underline="none"
                  sx={{ color: 'rgba(226,232,240,0.75)', fontSize: 14, '&:hover': { color: '#fff' } }}
                >
                  {subject}
                </Link>
              </li>
            ))}
          </Stack>
        </Grid>

        <Grid size={{ xs: 12, sm: 6, md: 3 }}>
          <Typography variant="overline" sx={{ color: '#fff', fontWeight: 700 }}>
            Contact
          </Typography>
          <Stack spacing={1.5} sx={{ mt: 1.5 }}>
            <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
              <EmailRoundedIcon sx={{ color: '#818CF8', fontSize: 20 }} />
              <Link
                href="mailto:contact@swadharmaias.com"
                underline="none"
                sx={{ color: 'rgba(226,232,240,0.85)', fontSize: 14, '&:hover': { color: '#fff' } }}
              >
                contact@swadharmaias.com
              </Link>
            </Stack>
            <Typography variant="body2" sx={{ lineHeight: 1.7 }}>
              Swadharma IAS Academy
              <br />
              Ashok Nagar X Roads, Hyderabad — 500020
            </Typography>
            <Typography variant="caption" sx={{ color: 'rgba(226,232,240,0.55)' }}>
              Support replies within one working day.
            </Typography>
          </Stack>
        </Grid>
      </Grid>

      <Divider sx={{ borderColor: 'rgba(148, 163, 184, 0.18)' }} />
      <Stack
        direction={{ xs: 'column', md: 'row' }}
        
        
        spacing={1.5}
        sx={{ justifyContent: 'space-between', alignItems: { xs: 'center', md: 'center' }, py: 3 }}
      >
        <Typography variant="body2" sx={{ color: 'rgba(226,232,240,0.6)' }}>
          © {new Date().getFullYear()} Swadharma IAS Academy. All rights reserved.
        </Typography>
        <Typography variant="caption" sx={{ color: 'rgba(226,232,240,0.45)' }}>
          Forging the Steel Frame of India · Practice material only, not affiliated with UPSC
        </Typography>
      </Stack>
    </Container>
  </Box>
);

export default Footer;
