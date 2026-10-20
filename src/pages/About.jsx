import { Link as RouterLink } from 'react-router-dom';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import ArrowForwardRoundedIcon from '@mui/icons-material/ArrowForwardRounded';
import BalanceRoundedIcon from '@mui/icons-material/BalanceRounded';
import BoltRoundedIcon from '@mui/icons-material/BoltRounded';
import EmojiEventsRoundedIcon from '@mui/icons-material/EmojiEventsRounded';
import MenuBookRoundedIcon from '@mui/icons-material/MenuBookRounded';
import ScheduleRoundedIcon from '@mui/icons-material/ScheduleRounded';
import SecurityRoundedIcon from '@mui/icons-material/SecurityRounded';
import { useAuth } from '../context/AuthContext';
import { SectionHeading } from '../components/ui';
import { heroGradient } from '../theme/theme';

const PILLARS = [
  {
    icon: <BoltRoundedIcon />,
    title: 'A large, original question bank',
    body: 'Thousands of questions across eight General Studies subjects, written from NCERT and the standard reference books, with previous-year UPSC questions wherever they are known.',
    accent: '#4F46E5',
  },
  {
    icon: <ScheduleRoundedIcon />,
    title: 'Exam-like conditions',
    body: 'Papers are sampled fresh on the server for every attempt, with the UPSC timing of 100 questions in 120 minutes and a 1.2 minute per question ratio for shorter papers.',
    accent: '#0EA5E9',
  },
  {
    icon: <BalanceRoundedIcon />,
    title: 'Correct UPSC marking',
    body: '+2 for a correct answer, −0.66 for a wrong answer and 0 for an unattempted question, calculated on the server so a score can never be tampered with.',
    accent: '#D97706',
  },
  {
    icon: <SecurityRoundedIcon />,
    title: 'Fair practice',
    body: 'The answer key is never sent to the browser before an attempt is submitted — every explanation is revealed only after you finish the paper.',
    accent: '#16A34A',
  },
];

const Home = () => {
  const { user } = useAuth();
  const ctaHref = user ? '/dashboard' : '/login';

  return (
    <Box>
      <Box
        component="section"
        sx={{
          py: { xs: 7, md: 11 },
          background: (theme) =>
            theme.palette.mode === 'dark'
              ? 'radial-gradient(70% 60% at 20% 0%, rgba(79,70,229,0.3) 0%, transparent 60%)'
              : 'radial-gradient(70% 60% at 20% 0%, rgba(79,70,229,0.14) 0%, transparent 60%)',
        }}
      >
        <Container maxWidth="md">
          <Stack sx={{ alignItems: 'center', textAlign: 'center' }}>
            <Typography variant="overline" sx={{ color: 'primary.main', fontWeight: 700, letterSpacing: '0.16em' }}>
              About the platform
            </Typography>
            <Typography variant="h1" sx={{ color: 'text.primary', mt: 1.5, mb: 2.5, fontSize: 'clamp(2rem, 4.4vw, 3.25rem)' }}>
              Free practice should feel like the real exam
            </Typography>
            <Typography variant="body1" sx={{ color: 'text.secondary', fontSize: '1.075rem', maxWidth: 680 }}>
              Swadharma IAS exists for one reason: an aspirant should be able to attempt as many real,
              timed prelims papers as they want, for free. No subscriptions, no coupons, no paywalls —
              just honest practice with the official marking scheme.
            </Typography>
          </Stack>
        </Container>
      </Box>

      <Container maxWidth="xl" sx={{ pb: { xs: 6, md: 10 } }}>
        <Grid container spacing={2.5}>
          {PILLARS.map((pillar) => (
            <Grid key={pillar.title} size={{ xs: 12, sm: 6, md: 3 }}>
              <Card sx={{ height: '100%', '&:hover': { transform: 'translateY(-4px)', boxShadow: 6 } }}>
                <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                  <Box
                    sx={{
                      width: 48,
                      height: 48,
                      borderRadius: 3,
                      display: 'grid',
                      placeItems: 'center',
                      mb: 2.25,
                      color: pillar.accent,
                      bgcolor: alpha(pillar.accent, 0.12),
                    }}
                  >
                    {pillar.icon}
                  </Box>
                  <Typography variant="h6" sx={{ fontWeight: 700, mb: 1, color: 'text.primary' }}>
                    {pillar.title}
                  </Typography>
                  <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.75 }}>
                    {pillar.body}
                  </Typography>
                </CardContent>
              </Card>
            </Grid>
          ))}
        </Grid>

        <Paper
          variant="outlined"
          sx={{
            mt: { xs: 4, md: 6 },
            p: { xs: 3, md: 5 },
            borderRadius: 5,
            borderColor: 'divider',
          }}
        >
          <Grid container spacing={4} sx={{ alignItems: 'center' }}>
            <Grid size={{ xs: 12, md: 7 }}>
              <SectionHeading
                align="left"
                eyebrow="How the question bank is built"
                title="Written, verified and re-checked"
                subtitle="Every question carries a difficulty tag, a category, a source and a written explanation, and the answer key is stored separately so it can never leak into the browser before you submit."
                maxWidth={620}
              />
            </Grid>
            <Grid size={{ xs: 12, md: 5 }}>
              <Stack spacing={1.5}>
                {[
                  { icon: <MenuBookRoundedIcon />, text: 'NCERT and standard reference based' },
                  { icon: <EmojiEventsRoundedIcon />, text: 'Previous-year UPSC questions marked with source and year' },
                  { icon: <SecurityRoundedIcon />, text: 'Duplicate detection on normalised question text' },
                  { icon: <BoltRoundedIcon />, text: 'Balanced answer key across A to D' },
                ].map((item) => (
                  <Stack key={item.text} direction="row" spacing={1.5} sx={{ alignItems: 'center' }}>
                    <Box
                      sx={{
                        width: 36,
                        height: 36,
                        borderRadius: 2,
                        display: 'grid',
                        placeItems: 'center',
                        bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
                        color: 'primary.main',
                        flexShrink: 0,
                      }}
                    >
                      {item.icon}
                    </Box>
                    <Typography variant="body2" sx={{ color: 'text.primary', fontWeight: 500 }}>
                      {item.text}
                    </Typography>
                  </Stack>
                ))}
              </Stack>
            </Grid>
          </Grid>
        </Paper>

        <Paper
          elevation={0}
          sx={{
            mt: { xs: 4, md: 6 },
            borderRadius: 6,
            p: { xs: 4, md: 6 },
            textAlign: 'center',
            background: heroGradient,
            color: '#fff',
            boxShadow: '0 40px 80px -40px rgba(79, 70, 229, 0.75)',
          }}
        >
          <Typography variant="h3" sx={{ color: '#fff', mb: 1.5 }}>
            Ready when you are
          </Typography>
          <Typography sx={{ color: 'rgba(255,255,255,0.85)', maxWidth: 520, mx: 'auto', mb: 3.5 }}>
            Create a free account and attempt your first paper in under a minute.
          </Typography>
          <Button
            component={RouterLink}
            to={ctaHref}
            variant="contained"
            size="large"
            endIcon={<ArrowForwardRoundedIcon />}
            sx={{ bgcolor: '#fff', color: '#312E81', '&:hover': { bgcolor: '#EEF2FF' } }}
          >
            {user ? 'Go to dashboard' : 'Create free account'}
          </Button>
        </Paper>
      </Container>
    </Box>
  );
};

export default Home;
