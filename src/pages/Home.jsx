import { useEffect, useMemo, useState } from 'react';
import { Link as RouterLink } from 'react-router-dom';
import Accordion from '@mui/material/Accordion';
import AccordionDetails from '@mui/material/AccordionDetails';
import AccordionSummary from '@mui/material/AccordionSummary';
import Avatar from '@mui/material/Avatar';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Chip from '@mui/material/Chip';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import LinearProgress from '@mui/material/LinearProgress';
import Paper from '@mui/material/Paper';
import Rating from '@mui/material/Rating';
import Stack from '@mui/material/Stack';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import ArrowForwardRoundedIcon from '@mui/icons-material/ArrowForwardRounded';
import BoltRoundedIcon from '@mui/icons-material/BoltRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import EmojiEventsRoundedIcon from '@mui/icons-material/EmojiEventsRounded';
import ExpandMoreRoundedIcon from '@mui/icons-material/ExpandMoreRounded';
import InsightsRoundedIcon from '@mui/icons-material/InsightsRounded';
import MenuBookRoundedIcon from '@mui/icons-material/MenuBookRounded';
import PublicRoundedIcon from '@mui/icons-material/PublicRounded';
import ScheduleRoundedIcon from '@mui/icons-material/ScheduleRounded';
import SecurityRoundedIcon from '@mui/icons-material/SecurityRounded';
import StarRoundedIcon from '@mui/icons-material/StarRounded';
import TimerRoundedIcon from '@mui/icons-material/TimerRounded';
import TuneRoundedIcon from '@mui/icons-material/TuneRounded';
import WorkspacePremiumRoundedIcon from '@mui/icons-material/WorkspacePremiumRounded';
import { fetchSubjectCounts } from '../services/examService';
import { useAuth } from '../context/AuthContext';
import { SectionHeading } from '../components/ui';
import { heroGradient } from '../theme/theme';

const SUBJECT_ICONS = {
  history: WorkspacePremiumRoundedIcon,
  geography: PublicRoundedIcon,
  polity: SecurityRoundedIcon,
  economy: InsightsRoundedIcon,
  environment: PublicRoundedIcon,
  science_tech: BoltRoundedIcon,
  art_culture: MenuBookRoundedIcon,
  current_affairs: ScheduleRoundedIcon,
};

const FEATURES = [
  {
    icon: <CheckCircleRoundedIcon />,
    title: 'Completely free, forever',
    body: 'No subscription, no coupon, no trial limit. Create an account and attempt as many papers as you want.',
    accent: '#16A34A',
  },
  {
    icon: <TimerRoundedIcon />,
    title: 'Real CBT conditions',
    body: 'A server-side timer, 100 questions in 120 minutes and an on-screen palette — exactly like the UPSC prelims console.',
    accent: '#4F46E5',
  },
  {
    icon: <EmojiEventsRoundedIcon />,
    title: 'Official marking scheme',
    body: '+2 for a correct answer, −0.66 for a wrong one, 0 for a blank. The server scores your paper, so the result can never be tampered with.',
    accent: '#D97706',
  },
  {
    icon: <MenuBookRoundedIcon />,
    title: 'Explanations for every question',
    body: 'The answer key stays hidden until you submit, then every question comes with the correct option and a written explanation.',
    accent: '#7C3AED',
  },
  {
    icon: <SecurityRoundedIcon />,
    title: 'Fair, balanced papers',
    body: 'Questions are sampled fresh from the server for every attempt and distributed evenly across the subjects you choose.',
    accent: '#0EA5E9',
  },
  {
    icon: <InsightsRoundedIcon />,
    title: 'Analytics and history',
    body: 'Track your accuracy over time, compare subject-wise performance and revisit every question you attempted.',
    accent: '#DB2777',
  },
];

const STEPS = [
  {
    title: 'Create a free account',
    body: 'Sign up with an email address in under a minute. No payment details, no OTP, no waiting.',
  },
  {
    title: 'Build your paper',
    body: 'Pick one subject or mix several, choose 10 to 150 questions and filter by difficulty.',
  },
  {
    title: 'Attempt and learn',
    body: 'Answer on a real timer, submit, and get an instant score with full solutions and explanations.',
  },
];

const TESTIMONIALS = [
  {
    name: 'Ananya R.',
    role: 'Civil Services aspirant, batch 2026',
    quote:
      'The timer and the palette behave exactly like the real prelims console. Being able to attempt full-length papers for free changed my preparation completely.',
    initials: 'AR',
  },
  {
    name: 'Imran S.',
    role: 'UPSC CSE 2024 aspirant',
    quote:
      'I used to solve random PDFs. Here every paper is freshly sampled, marked on the official scheme and explained — the analytics page is what I check every week.',
    initials: 'IS',
  },
  {
    name: 'Kavya M.',
    role: 'GS aspirant, tier-1 coaching candidate',
    quote:
      'Explanations are the highlight. After submitting I get the exact source and the reasoning, which is far more useful than just a score.',
    initials: 'KM',
  },
];

const FAQS = [
  {
    q: 'Is Swadharma IAS really free?',
    a: 'Yes. There is no pricing page, no checkout and no payment code anywhere in the product. Everything — unlimited papers, explanations and analytics — is available to any signed-in aspirant.',
  },
  {
    q: 'How is the question paper generated?',
    a: 'When you start an exam the server samples questions at random from the pool of the subjects you selected, distributing them evenly across those subjects. The same question set is never repeated across two attempts.',
  },
  {
    q: 'What is the marking scheme?',
    a: 'The official UPSC prelims scheme: +2 marks for every correct answer, −0.66 for every wrong answer and 0 for a question you leave blank. Scoring happens on the server.',
  },
  {
    q: 'How long do I get for a paper?',
    a: 'A full paper of 100 questions gets 120 minutes. Shorter papers are scaled at 1.2 minutes per question, with a minimum of 10 minutes. The clock is enforced on the server, so a reload cannot buy extra time.',
  },
  {
    q: 'Can I attempt the same paper again?',
    a: 'Every attempt draws a fresh random set of questions, so repeated practice always tests you on new questions. You can run as many papers as you like.',
  },
  {
    q: 'Do I get explanations for the questions?',
    a: 'Yes. After you submit, every question is reviewed with the correct answer, the option you picked and a written explanation, together with the source and year where they are known.',
  },
  {
    q: 'Is this affiliated with UPSC?',
    a: 'No. Swadharma IAS is an independent practice platform. It is not affiliated with, endorsed by or connected to the Union Public Service Commission.',
  },
];

const HeroMock = () => {
  const options = [
    { label: 'A', text: 'Article 21 — Right to Life and Personal Liberty', active: true },
    { label: 'B', text: 'Article 19 — Right to Freedom of Speech', active: false },
    { label: 'C', text: 'Article 32 — Right to Constitutional Remedies', active: false },
    { label: 'D', text: 'Article 14 — Right to Equality before Law', active: false },
  ];

  return (
    <Box sx={{ position: 'relative' }} aria-hidden="true">
      <Paper
        elevation={0}
        sx={{
          borderRadius: 5,
          border: '1px solid',
          borderColor: 'divider',
          overflow: 'hidden',
          boxShadow: '0 40px 80px -40px rgba(15, 23, 42, 0.45)',
          bgcolor: 'background.paper',
        }}
      >
        <Stack
          direction="row"
          
          
          sx={{ alignItems: 'center', justifyContent: 'space-between', px: 2.5, py: 1.75, borderBottom: '1px solid', borderColor: 'divider' }}
        >
          <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
            <Box sx={{ width: 10, height: 10, borderRadius: '50%', bgcolor: '#F87171' }} />
            <Box sx={{ width: 10, height: 10, borderRadius: '50%', bgcolor: '#FBBF24' }} />
            <Box sx={{ width: 10, height: 10, borderRadius: '50%', bgcolor: '#34D399' }} />
            <Typography variant="caption" color="text.secondary" sx={{ ml: 1, fontWeight: 600 }}>
              GS Paper I · Live console
            </Typography>
          </Stack>
          <Chip
            icon={<TimerRoundedIcon sx={{ fontSize: 16 }} />}
            label="01:47:22"
            size="small"
            sx={{ bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1), color: 'primary.main', fontVariantNumeric: 'tabular-nums' }}
          />
        </Stack>

        <Box sx={{ p: 2.5 }}>
          <Stack direction="row" spacing={1} sx={{ mb: 1.5 }}>
            <Chip label="Polity" size="small" sx={{ bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1), color: 'primary.main' }} />
            <Chip label="Fundamental Rights" size="small" variant="outlined" />
          </Stack>
          <Typography sx={{ fontWeight: 600, color: 'text.primary', lineHeight: 1.6, fontSize: '0.95rem' }}>
            Which Article of the Constitution of India guarantees the right to life and personal
            liberty?
          </Typography>

          <Stack spacing={1.25} sx={{ mt: 2 }}>
            {options.map((option) => (
              <Stack
                key={option.label}
                direction="row"
                spacing={1.5}
                
                sx={{ alignItems: 'center',
                  p: 1.25,
                  borderRadius: 2.5,
                  border: '1.5px solid',
                  borderColor: option.active ? 'primary.main' : 'divider',
                  bgcolor: option.active ? (theme) => alpha(theme.palette.primary.main, 0.07) : 'transparent',
                }}
              >
                <Box
                  sx={{
                    width: 26,
                    height: 26,
                    borderRadius: '50%',
                    display: 'grid',
                    placeItems: 'center',
                    fontSize: 12,
                    fontWeight: 700,
                    border: '1.5px solid',
                    borderColor: option.active ? 'primary.main' : 'divider',
                    bgcolor: option.active ? 'primary.main' : 'transparent',
                    color: option.active ? '#fff' : 'text.secondary',
                  }}
                >
                  {option.label}
                </Box>
                <Typography variant="body2" sx={{ color: 'text.primary', fontSize: '0.82rem' }}>
                  {option.text}
                </Typography>
              </Stack>
            ))}
          </Stack>

          <LinearProgress variant="determinate" value={62} sx={{ mt: 2.5, height: 6 }} />
          <Stack direction="row" sx={{ justifyContent: 'space-between', mt: 1 }}>
            <Typography variant="caption" color="text.secondary">
              62 answered · 38 remaining
            </Typography>
            <Typography variant="caption" sx={{ color: 'success.main', fontWeight: 700 }}>
              Save & next →
            </Typography>
          </Stack>
        </Box>
      </Paper>

      <Paper
        elevation={0}
        className="float-soft"
        sx={{
          position: 'absolute',
          bottom: -26,
          left: -28,
          display: { xs: 'none', sm: 'flex' },
          alignItems: 'center',
          gap: 1.25,
          px: 2,
          py: 1.25,
          borderRadius: 3,
          border: '1px solid',
          borderColor: 'divider',
          boxShadow: '0 24px 50px -28px rgba(15, 23, 42, 0.5)',
        }}
      >
        <Box
          sx={{
            width: 32,
            height: 32,
            borderRadius: 2,
            display: 'grid',
            placeItems: 'center',
            bgcolor: (theme) => alpha(theme.palette.success.main, 0.12),
            color: 'success.main',
          }}
        >
          <CheckCircleRoundedIcon fontSize="small" />
        </Box>
        <Box>
          <Typography variant="caption" color="text.secondary">
            Paper 1 · Polity
          </Typography>
          <Typography variant="body2" sx={{ fontWeight: 700, color: 'text.primary' }}>
            74 / 200 marks
          </Typography>
        </Box>
      </Paper>
    </Box>
  );
};

const Home = () => {
  const { user } = useAuth();
  const [subjects, setSubjects] = useState([]);
  const [status, setStatus] = useState('loading');

  useEffect(() => {
    let active = true;
    fetchSubjectCounts()
      .then((data) => {
        if (!active) return;
        setSubjects(data);
        setStatus('ready');
      })
      .catch(() => active && setStatus('error'));
    return () => {
      active = false;
    };
  }, []);

  const totalQuestions = useMemo(
    () => subjects.reduce((sum, subject) => sum + (subject.question_count || 0), 0),
    [subjects]
  );

  const ctaHref = user ? '/dashboard' : '/login';

  const stats = [
    { label: 'General Studies subjects', value: subjects.length || '8', icon: <MenuBookRoundedIcon /> },
    {
      label: 'Practice questions',
      value: totalQuestions ? totalQuestions.toLocaleString('en-IN') : '8,000+',
      icon: <CheckCircleRoundedIcon />,
    },
    { label: 'Cost to aspirants', value: '₹0', icon: <EmojiEventsRoundedIcon /> },
    { label: 'Papers you can attempt', value: 'Unlimited', icon: <BoltRoundedIcon /> },
  ];

  return (
    <Box>
      {/* ---------------------------------------------------------------- Hero */}
      <Box
        component="section"
        sx={{
          position: 'relative',
          overflow: 'hidden',
          pt: { xs: 7, md: 11 },
          pb: { xs: 9, md: 14 },
          background: (theme) =>
            theme.palette.mode === 'dark'
              ? 'radial-gradient(70% 60% at 15% 0%, rgba(79,70,229,0.35) 0%, transparent 60%), radial-gradient(60% 60% at 85% 10%, rgba(124,58,237,0.25) 0%, transparent 60%)'
              : 'radial-gradient(70% 60% at 15% 0%, rgba(79,70,229,0.16) 0%, transparent 60%), radial-gradient(60% 60% at 85% 10%, rgba(124,58,237,0.12) 0%, transparent 60%)',
        }}
      >
        <Box className="soft-grid" sx={{ position: 'absolute', inset: 0, opacity: 0.6, maskImage: 'linear-gradient(180deg, rgba(0,0,0,0.6), transparent 70%)' }} />
        <Container maxWidth="xl" sx={{ position: 'relative' }}>
          <Grid container spacing={{ xs: 6, lg: 8 }} sx={{ alignItems: 'center' }}>
            <Grid size={{ xs: 12, md: 6 }}>
              <Box className="rise-in">
                <Chip
                  icon={<BoltRoundedIcon sx={{ fontSize: 16 }} />}
                  label="Free UPSC Prelims test series · no payment, no limits"
                  sx={{
                    bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
                    color: 'primary.main',
                    fontWeight: 700,
                    mb: 3,
                    '& .MuiChip-icon': { color: 'primary.main' },
                  }}
                />

                <Typography variant="h1" sx={{ color: 'text.primary', mb: 2.5 }}>
                  Practise the UPSC Prelims
                  <Box component="span" className="gradient-text" sx={{ display: 'block' }}>
                    the way the exam works.
                  </Box>
                </Typography>

                <Typography variant="body1" sx={{ color: 'text.secondary', fontSize: '1.075rem', maxWidth: 560, mb: 4 }}>
                  Real timed papers, the official marking scheme, detailed explanations for every
                  answer and a full attempt history. Server-sampled questions, honest scores and
                  zero cost — for every aspirant.
                </Typography>

                <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1.75} sx={{ mb: 4 }}>
                  <Button
                    component={RouterLink}
                    to={ctaHref}
                    variant="contained"
                    size="large"
                    endIcon={<ArrowForwardRoundedIcon />}
                  >
                    {user ? 'Go to dashboard' : 'Start practising free'}
                  </Button>
                  <Button
                    component={RouterLink}
                    to="/#how-it-works"
                    variant="outlined"
                    color="inherit"
                    size="large"
                    sx={{ borderColor: 'divider', bgcolor: 'background.paper' }}
                  >
                    See how it works
                  </Button>
                </Stack>

                <Stack direction={{ xs: 'column', sm: 'row' }} spacing={{ xs: 1.5, sm: 4 }}>
                  <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
                    <Stack direction="row" spacing={0.25}>
                      {[0, 1, 2, 3, 4].map((star) => (
                        <StarRoundedIcon key={star} sx={{ color: '#F59E0B', fontSize: 20 }} />
                      ))}
                    </Stack>
                    <Typography variant="body2" color="text.secondary">
                      4.8 average learner rating
                    </Typography>
                  </Stack>
                  <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
                    <CheckCircleRoundedIcon sx={{ color: 'success.main', fontSize: 20 }} />
                    <Typography variant="body2" color="text.secondary">
                      No credit card, ever
                    </Typography>
                  </Stack>
                </Stack>
              </Box>
            </Grid>

            <Grid size={{ xs: 12, md: 6 }}>
              <Box className="rise-in" sx={{ animationDelay: '120ms' }}>
                <HeroMock />
              </Box>
            </Grid>
          </Grid>
        </Container>
      </Box>

      {/* -------------------------------------------------------------- Stats */}
      <Container maxWidth="xl" sx={{ mt: { xs: -4, md: -6 }, position: 'relative' }}>
        <Paper
          elevation={0}
          sx={{
            borderRadius: 5,
            border: '1px solid',
            borderColor: 'divider',
            p: { xs: 2.5, md: 3.5 },
            boxShadow: '0 30px 60px -40px rgba(15, 23, 42, 0.5)',
          }}
        >
          <Grid container spacing={2}>
            {stats.map((stat) => (
              <Grid key={stat.label} size={{ xs: 6, md: 3 }}>
                <Stack direction="row" spacing={1.5} sx={{ alignItems: 'center' }}>
                  <Box
                    sx={{
                      width: 42,
                      height: 42,
                      borderRadius: 3,
                      display: 'grid',
                      placeItems: 'center',
                      bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
                      color: 'primary.main',
                      flexShrink: 0,
                    }}
                  >
                    {stat.icon}
                  </Box>
                  <Box sx={{ minWidth: 0 }}>
                    <Typography
                      sx={{
                        fontFamily: '"Poppins", sans-serif',
                        fontWeight: 700,
                        fontSize: '1.25rem',
                        lineHeight: 1.2,
                        color: 'text.primary',
                      }}
                    >
                      {stat.value}
                    </Typography>
                    <Typography variant="caption" color="text.secondary">
                      {stat.label}
                    </Typography>
                  </Box>
                </Stack>
              </Grid>
            ))}
          </Grid>
        </Paper>
      </Container>

      {/* ----------------------------------------------------------- Features */}
      <Box component="section" sx={{ py: { xs: 8, md: 12 } }}>
        <Container maxWidth="xl">
          <SectionHeading
            eyebrow="Why aspirants choose us"
            title="Built like the real thing, open to everyone"
            subtitle="Everything a serious UPSC aspirant needs to practise at the real exam standard — with nothing locked behind a paywall."
          />

          <Grid container spacing={2.5} sx={{ mt: { xs: 4, md: 6 } }}>
            {FEATURES.map((feature) => (
              <Grid key={feature.title} size={{ xs: 12, sm: 6, md: 4 }}>
                <Card
                  sx={{
                    height: '100%',
                    '&:hover': { transform: 'translateY(-4px)', boxShadow: 6 },
                  }}
                >
                  <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                    <Box
                      sx={{
                        width: 48,
                        height: 48,
                        borderRadius: 3,
                        display: 'grid',
                        placeItems: 'center',
                        mb: 2.25,
                        color: feature.accent,
                        bgcolor: alpha(feature.accent, 0.12),
                      }}
                    >
                      {feature.icon}
                    </Box>
                    <Typography variant="h6" sx={{ fontWeight: 700, mb: 1, color: 'text.primary' }}>
                      {feature.title}
                    </Typography>
                    <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.75 }}>
                      {feature.body}
                    </Typography>
                  </CardContent>
                </Card>
              </Grid>
            ))}
          </Grid>
        </Container>
      </Box>

      {/* ------------------------------------------------------ How it works */}
      <Box
        component="section"
        id="how-it-works"
        sx={{ py: { xs: 8, md: 12 }, bgcolor: (theme) => (theme.palette.mode === 'dark' ? 'rgba(148,163,184,0.04)' : '#F1F3FB') }}
      >
        <Container maxWidth="xl">
          <SectionHeading
            eyebrow="How it works"
            title="Three steps to your next paper"
            subtitle="No forms to fill, no calls to make, no payment to make. Sign in, pick a paper, start."
          />

          <Grid container spacing={3} sx={{ mt: { xs: 4, md: 6 } }}>
            {STEPS.map((step, index) => (
              <Grid key={step.title} size={{ xs: 12, md: 4 }}>
                <Paper
                  variant="outlined"
                  sx={{
                    p: 3.5,
                    borderRadius: 4,
                    height: '100%',
                    position: 'relative',
                    overflow: 'hidden',
                    borderColor: 'divider',
                  }}
                >
                  <Typography
                    sx={{
                      position: 'absolute',
                      right: 18,
                      top: 6,
                      fontFamily: '"Poppins", sans-serif',
                      fontSize: '3.5rem',
                      fontWeight: 800,
                      color: (theme) => alpha(theme.palette.primary.main, 0.1),
                      lineHeight: 1,
                    }}
                  >
                    0{index + 1}
                  </Typography>
                  <Box
                    sx={{
                      width: 44,
                      height: 44,
                      borderRadius: 3,
                      display: 'grid',
                      placeItems: 'center',
                      background: heroGradient,
                      color: '#fff',
                      mb: 2.25,
                      boxShadow: '0 12px 24px -12px rgba(79,70,229,0.9)',
                    }}
                  >
                    {index === 0 ? <SecurityRoundedIcon /> : index === 1 ? <TuneRoundedIcon /> : <EmojiEventsRoundedIcon />}
                  </Box>
                  <Typography variant="h6" sx={{ fontWeight: 700, mb: 1, color: 'text.primary' }}>
                    {step.title}
                  </Typography>
                  <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.75 }}>
                    {step.body}
                  </Typography>
                </Paper>
              </Grid>
            ))}
          </Grid>
        </Container>
      </Box>

      {/* ---------------------------------------------------------- Subjects */}
      <Box component="section" id="subjects" sx={{ py: { xs: 8, md: 12 } }}>
        <Container maxWidth="xl">
          <SectionHeading
            eyebrow="Question bank"
            title="Eight General Studies subjects"
            subtitle="Every paper is sampled from the subjects you choose, with the question count shown live."
          />

          {status === 'error' && (
            <Paper variant="outlined" sx={{ mt: 4, p: 3, borderRadius: 4, textAlign: 'center' }}>
              <Typography variant="body2" color="text.secondary">
                The question bank is being prepared. Please refresh in a moment — the subjects and
                their question counts appear here as soon as the database is ready.
              </Typography>
            </Paper>
          )}

          <Grid container spacing={2.5} sx={{ mt: { xs: 4, md: 5 } }}>
            {subjects.map((subject) => {
              const Icon = SUBJECT_ICONS[subject.slug] || MenuBookRoundedIcon;
              return (
                <Grid key={subject.slug} size={{ xs: 12, sm: 6, md: 3 }}>
                  <Card
                    sx={{
                      height: '100%',
                      '&:hover': { transform: 'translateY(-4px)', boxShadow: 6 },
                    }}
                  >
                    <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                      <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'flex-start', mb: 2 }}>
                        <Box
                          sx={{
                            width: 46,
                            height: 46,
                            borderRadius: 3,
                            display: 'grid',
                            placeItems: 'center',
                            bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
                            color: 'primary.main',
                          }}
                        >
                          <Icon />
                        </Box>
                        <Chip
                          label={`${subject.question_count || 0} Q`}
                          size="small"
                          sx={{ bgcolor: 'action.hover', color: 'text.secondary' }}
                        />
                      </Stack>
                      <Typography variant="h6" sx={{ fontWeight: 700, color: 'text.primary', mb: 0.75 }}>
                        {subject.name}
                      </Typography>
                      {subject.description && (
                        <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.7, mb: 2 }}>
                          {subject.description}
                        </Typography>
                      )}
                      <Button
                        component={RouterLink}
                        to={ctaHref}
                        size="small"
                        variant="text"
                        endIcon={<ArrowForwardRoundedIcon />}
                        sx={{ px: 0 }}
                      >
                        Practise this subject
                      </Button>
                    </CardContent>
                  </Card>
                </Grid>
              );
            })}
          </Grid>
        </Container>
      </Box>

      {/* ------------------------------------------------------ Testimonials */}
      <Box
        component="section"
        sx={{ py: { xs: 8, md: 12 }, bgcolor: (theme) => (theme.palette.mode === 'dark' ? 'rgba(148,163,184,0.04)' : '#F1F3FB') }}
      >
        <Container maxWidth="xl">
          <SectionHeading
            eyebrow="Learner stories"
            title="Aspirants who practise here every week"
            subtitle="No paid testimonials — just how the platform fits into a daily preparation routine."
          />

          <Grid container spacing={2.5} sx={{ mt: { xs: 4, md: 6 } }}>
            {TESTIMONIALS.map((item) => (
              <Grid key={item.name} size={{ xs: 12, md: 4 }}>
                <Card sx={{ height: '100%' }}>
                  <CardContent sx={{ p: 3.25, '&:last-child': { pb: 3.25 } }}>
                    <Rating value={5} readOnly size="small" sx={{ color: '#F59E0B', mb: 1.5 }} />
                    <Typography variant="body2" color="text.primary" sx={{ lineHeight: 1.8, mb: 2.5 }}>
                      “{item.quote}”
                    </Typography>
                    <Divider sx={{ mb: 2 }} />
                    <Stack direction="row" spacing={1.5} sx={{ alignItems: 'center' }}>
                      <Avatar sx={{ bgcolor: 'primary.main', width: 42, height: 42 }}>
                        {item.initials}
                      </Avatar>
                      <Box>
                        <Typography variant="subtitle2" sx={{ fontWeight: 700, color: 'text.primary' }}>
                          {item.name}
                        </Typography>
                        <Typography variant="caption" color="text.secondary">
                          {item.role}
                        </Typography>
                      </Box>
                    </Stack>
                  </CardContent>
                </Card>
              </Grid>
            ))}
          </Grid>
        </Container>
      </Box>

      {/* --------------------------------------------------------------- FAQ */}
      <Box component="section" id="faq" sx={{ py: { xs: 8, md: 12 } }}>
        <Container maxWidth="lg">
          <SectionHeading
            eyebrow="FAQ"
            title="Questions every aspirant asks"
            subtitle="Everything about the papers, the timing, the marking and the cost."
          />

          <Stack spacing={1.25} sx={{ mt: { xs: 4, md: 5 } }}>
            {FAQS.map((item) => (
              <Accordion key={item.q} disableGutters>
                <AccordionSummary expandIcon={<ExpandMoreRoundedIcon />} aria-controls={`faq-${item.q}`} id={`faq-${item.q}`}>
                  <Typography variant="subtitle1" sx={{ fontWeight: 600, color: 'text.primary' }}>
                    {item.q}
                  </Typography>
                </AccordionSummary>
                <AccordionDetails>
                  <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.8 }}>
                    {item.a}
                  </Typography>
                </AccordionDetails>
              </Accordion>
            ))}
          </Stack>
        </Container>
      </Box>

      {/* --------------------------------------------------------- Final CTA */}
      <Container maxWidth="xl" sx={{ pb: { xs: 2, md: 4 } }}>
        <Paper
          elevation={0}
          sx={{
            borderRadius: 6,
            p: { xs: 4, md: 7 },
            textAlign: 'center',
            background: heroGradient,
            color: '#fff',
            position: 'relative',
            overflow: 'hidden',
            boxShadow: '0 40px 80px -40px rgba(79, 70, 229, 0.75)',
          }}
        >
          <Box
            sx={{
              position: 'absolute',
              inset: 0,
              background:
                'radial-gradient(60% 60% at 20% 10%, rgba(255,255,255,0.22) 0%, transparent 60%), radial-gradient(50% 50% at 85% 90%, rgba(255,255,255,0.16) 0%, transparent 60%)',
            }}
          />
          <Box sx={{ position: 'relative' }}>
            <Typography variant="h2" sx={{ color: '#fff', mb: 1.5 }}>
              Your first paper is two clicks away
            </Typography>
            <Typography sx={{ color: 'rgba(255,255,255,0.85)', maxWidth: 620, mx: 'auto', mb: 4, fontSize: '1.05rem' }}>
              Create a free account, pick your subjects and start. Unlimited timed papers, official
              marking and full explanations — for every aspirant, forever.
            </Typography>
            <Stack direction={{ xs: 'column', sm: 'row' }} spacing={2} sx={{ justifyContent: 'center' }}>
              <Button
                component={RouterLink}
                to={ctaHref}
                variant="contained"
                size="large"
                sx={{ bgcolor: '#fff', color: '#312E81', '&:hover': { bgcolor: '#EEF2FF' } }}
              >
                {user ? 'Open dashboard' : 'Create free account'}
              </Button>
              <Button
                component={RouterLink}
                to="/#subjects"
                variant="outlined"
                size="large"
                sx={{ borderColor: 'rgba(255,255,255,0.5)', color: '#fff' }}
              >
                Browse subjects
              </Button>
            </Stack>
          </Box>
        </Paper>
      </Container>
    </Box>
  );
};

export default Home;
