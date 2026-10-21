import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import BalanceRoundedIcon from '@mui/icons-material/BalanceRounded';
import BoltRoundedIcon from '@mui/icons-material/BoltRounded';
import EmojiEventsRoundedIcon from '@mui/icons-material/EmojiEventsRounded';
import MenuBookRoundedIcon from '@mui/icons-material/MenuBookRounded';
import ScheduleRoundedIcon from '@mui/icons-material/ScheduleRounded';
import SecurityRoundedIcon from '@mui/icons-material/SecurityRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import { useAuth } from '../context/AuthContext';
import { CtaBand, Eyebrow, IconTile, SectionHeading } from '../components/ui';

const PILLARS = [
  {
    icon: <BoltRoundedIcon />,
    title: 'A large, original question bank',
    body: 'Thousands of questions across eight General Studies subjects, written from NCERT and the standard reference books, with previous-year UPSC questions wherever they are known.',
    accent: 'primary.main',
  },
  {
    icon: <ScheduleRoundedIcon />,
    title: 'Exam-like conditions',
    body: 'Papers are sampled fresh on the server for every attempt, with the UPSC timing of 100 questions in 120 minutes and a 1.2 minute per question ratio for shorter papers.',
    accent: 'info.main',
  },
  {
    icon: <BalanceRoundedIcon />,
    title: 'Correct UPSC marking',
    body: '+2 for a correct answer, −0.66 for a wrong answer and 0 for an unattempted question, calculated on the server so a score can never be tampered with.',
    accent: 'warning.main',
  },
  {
    icon: <SecurityRoundedIcon />,
    title: 'Fair practice',
    body: 'The answer key is never sent to the browser before an attempt is submitted — every explanation is revealed only after you finish the paper.',
    accent: 'success.main',
  },
];

const BUILD_NOTES = [
  { icon: <MenuBookRoundedIcon />, text: 'NCERT and standard reference based' },
  {
    icon: <EmojiEventsRoundedIcon />,
    text: 'Previous-year UPSC questions marked with source and year',
  },
  { icon: <SecurityRoundedIcon />, text: 'Duplicate detection on normalised question text' },
  { icon: <BoltRoundedIcon />, text: 'Balanced answer key across A to D' },
];

const About = () => {
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
              ? 'radial-gradient(80% 70% at 22% 0%, rgba(45, 212, 191, 0.10) 0%, transparent 62%)'
              : 'radial-gradient(80% 70% at 22% 0%, rgba(15, 118, 110, 0.08) 0%, transparent 62%)',
        }}
      >
        <Container maxWidth="md">
          <Box sx={{ maxWidth: 720 }}>
            <Eyebrow>About the platform</Eyebrow>
            <Typography
              variant="h1"
              sx={{ color: 'text.primary', mt: 2, mb: 2.5, fontSize: 'clamp(2.1rem, 4.6vw, 3.4rem)' }}
            >
              Practice should feel like the real exam
            </Typography>
            <Typography variant="body1" sx={{ color: 'text.secondary', fontSize: '1.075rem', lineHeight: 1.75 }}>
              Swadharma IAS exists for one reason: an aspirant should be able to attempt real,
              timed prelims papers as often as they need to. Nothing about the platform is
              designed to make a paper feel easier than it is.
            </Typography>
          </Box>
        </Container>
      </Box>

      <Container maxWidth="xl" sx={{ pb: { xs: 6, md: 10 } }}>
        <Grid container spacing={2.5}>
          {PILLARS.map((pillar) => (
            <Grid key={pillar.title} size={{ xs: 12, sm: 6, md: 3 }}>
              <Card
                variant="outlined"
                sx={{
                  height: '100%',
                  borderRadius: '20px',
                  transition: 'transform 220ms ease, box-shadow 220ms ease',
                  '&:hover': { transform: 'translateY(-3px)' },
                }}
              >
                <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                  <IconTile icon={pillar.icon} color={pillar.accent} size={46} sx={{ mb: 2.25 }} />
                  <Typography variant="h6" sx={{ fontWeight: 600, mb: 1, color: 'text.primary' }}>
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
            borderRadius: '28px',
            bgcolor: 'background.paper',
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
                {BUILD_NOTES.map((item) => (
                  <Stack key={item.text} direction="row" spacing={1.5} sx={{ alignItems: 'center' }}>
                    <IconTile icon={item.icon} size={36} />
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
          variant="outlined"
          sx={{
            mt: { xs: 4, md: 6 },
            p: { xs: 3, md: 4.5 },
            borderRadius: '20px',
            bgcolor: 'background.paper',
          }}
        >
          <SectionHeading
            align="left"
            eyebrow="Disclaimer"
            title="An independent practice platform"
            subtitle="Swadharma IAS is not affiliated with, endorsed by or connected to the Union Public Service Commission, the Telangana Public Service Commission or the Andhra Pradesh Public Service Commission. All content is practice material prepared for self-study, and any error found in a question is corrected in the bank as soon as it is reported."
            maxWidth={760}
          />
          <Stack direction="row" spacing={1.25} sx={{ mt: 2.5, alignItems: 'flex-start' }}>
            <CheckCircleRoundedIcon sx={{ color: 'primary.main', fontSize: 19, mt: 0.2 }} />
            <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.7 }}>
              Errors in a question are reported by aspirants and fixed in the bank; a paper you have
              already attempted is never changed underneath you.
            </Typography>
          </Stack>
        </Paper>

        <Box sx={{ mt: { xs: 4, md: 6 } }}>
          <CtaBand
            title="Ready when you are"
            description="Create your account and attempt your first paper in under a minute."
            actionLabel={user ? 'Go to dashboard' : 'Create a free account'}
            actionHref={ctaHref}
          />
        </Box>
      </Container>
    </Box>
  );
};

export default About;
