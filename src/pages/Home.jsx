import { useEffect, useMemo, useState } from 'react';
import { Link as RouterLink } from 'react-router-dom';
import Accordion from '@mui/material/Accordion';
import AccordionDetails from '@mui/material/AccordionDetails';
import AccordionSummary from '@mui/material/AccordionSummary';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Chip from '@mui/material/Chip';
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid';
import LinearProgress from '@mui/material/LinearProgress';
import Paper from '@mui/material/Paper';
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
import TimerRoundedIcon from '@mui/icons-material/TimerRounded';
import TuneRoundedIcon from '@mui/icons-material/TuneRounded';
import WorkspacePremiumRoundedIcon from '@mui/icons-material/WorkspacePremiumRounded';
import { fetchSubjectCounts } from '../services/examService';
import { useAuth } from '../context/AuthContext';
import { CtaBand, Eyebrow, SectionHeading } from '../components/ui';
import { resolveColor } from '../theme/theme';
import ScoreDonut from '../components/charts/ScoreDonut';
import SubjectBars from '../components/charts/SubjectBars';
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
    icon: <TimerRoundedIcon />,
    title: 'Real CBT conditions',
    body: 'A server-side clock, 100 questions in 120 minutes and an on-screen palette — the same shape as the prelims console.',
    accent: 'primary.main',
  },
  {
    icon: <EmojiEventsRoundedIcon />,
    title: 'Official marking scheme',
    body: '+2 for a correct answer, −0.66 for a wrong one, 0 for a blank. The server scores the paper, so a result cannot be tampered with.',
    accent: 'warning.main',
  },
  {
    icon: <MenuBookRoundedIcon />,
    title: 'An explanation for every question',
    body: 'The answer key stays hidden until you submit. After that each question comes with the correct option, the source and a written explanation.',
    accent: 'info.main',
  },
  {
    icon: <SecurityRoundedIcon />,
    title: 'Fresh papers, fairly drawn',
    body: 'Questions are sampled from the server for every attempt and spread evenly across the subjects you choose.',
    accent: 'success.main',
  },
  {
    icon: <InsightsRoundedIcon />,
    title: 'Analytics and history',
    body: 'Track accuracy over time, compare subject-wise performance and revisit every question you have attempted.',
    accent: 'primary.main',
  },
  {
    icon: <BoltRoundedIcon />,
    title: 'Your pace, your length',
    body: 'One subject or a mixed paper, ten to a hundred and fifty questions, easy or hard. The timer scales to the paper you build.',
    accent: 'info.main',
  },
];

const STEPS = [
  {
    icon: <SecurityRoundedIcon />,
    title: 'Create your account',
    body: 'Sign up with an e-mail address and verify it with a six-digit code. No card is needed to start.',
  },
  {
    icon: <TuneRoundedIcon />,
    title: 'Build your paper',
    body: 'Pick one subject or mix several, choose the number of questions and filter by difficulty.',
  },
  {
    icon: <EmojiEventsRoundedIcon />,
    title: 'Attempt and learn',
    body: 'Answer on a real timer, submit, and get an instant score with full solutions and explanations.',
  },
];

const FAQS = [
  {
    q: 'How is the question paper generated?',
    a: 'When you start a paper the server samples questions at random from the pool of the subjects you selected, distributing them evenly across those subjects. The same question set is never repeated across two attempts.',
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
    a: 'Every attempt draws a fresh random set of questions, so repeated practice always tests you on new questions.',
  },
  {
    q: 'Do I get explanations for the questions?',
    a: 'Yes. After you submit, every question is reviewed with the correct answer, the option you picked and a written explanation, together with the source and year where they are known.',
  },
  {
    q: 'Is this affiliated with UPSC?',
    a: 'No. Swadharma IAS is an independent practice platform. It is not affiliated with, endorsed by or connected to the Union Public Service Commission.',
  },
  {
    q: 'Which exams does the series cover?',
    a: 'The question bank is built around the General Studies prelims syllabus shared by UPSC, TGPSC and APPSC, and papers can be drawn from any combination of the eight subjects.',
  },
];

/** A static preview of the exam console — markup only, no data behind it. */
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
          borderRadius: '28px',
          border: '1px solid',
          borderColor: 'divider',
          overflow: 'hidden',
          boxShadow: '0 40px 80px -44px rgba(16, 26, 28, 0.55)',
          bgcolor: 'background.paper',
        }}
      >
        <Stack
          direction="row"
          sx={{ alignItems: 'center', justifyContent: 'space-between', px: 2.5, py: 1.6, borderBottom: '1px solid', borderColor: 'divider' }}
        >
          <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center' }}>
            <Box sx={{ width: 10, height: 10, borderRadius: '50%', bgcolor: '#E5756B' }} />
            <Box sx={{ width: 10, height: 10, borderRadius: '50%', bgcolor: '#E0A33C' }} />
            <Box sx={{ width: 10, height: 10, borderRadius: '50%', bgcolor: '#5FB08A' }} />
            <Typography variant="caption" color="text.secondary" sx={{ ml: 1, fontWeight: 600 }}>
              GS Paper I · Live console
            </Typography>
          </Stack>
          <Chip
            icon={<TimerRoundedIcon sx={{ fontSize: 16 }} />}
            label="01:47:22"
            size="small"
            sx={{
              bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
              color: 'primary.main',
              fontVariantNumeric: 'tabular-nums',
            }}
          />
        </Stack>

        <Box sx={{ p: 2.5 }}>
          <Stack direction="row" spacing={1} sx={{ mb: 1.5 }}>
            <Chip
              label="Polity"
              size="small"
              sx={{ bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1), color: 'primary.main' }}
            />
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
                sx={{
                  alignItems: 'center',
                  p: 1.25,
                  borderRadius: '12px',
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
              Save &amp; next →
            </Typography>
          </Stack>
        </Box>
      </Paper>

      <Paper
        elevation={0}
        className="float-soft"
        sx={{
          position: 'absolute',
          bottom: -40,
          left: -24,
          display: { xs: 'none', sm: 'flex' },
          alignItems: 'center',
          gap: 1.25,
          px: 2,
          py: 1.25,
          borderRadius: '16px',
          border: '1px solid',
          borderColor: 'divider',
          boxShadow: '0 24px 50px -30px rgba(16, 26, 28, 0.5)',
          bgcolor: 'background.paper',
        }}
      >
        <Box
          sx={{
            width: 32,
            height: 32,
            borderRadius: '10px',
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

/** A static preview of the result review — the payoff of submitting a paper. */
const ResultMock = () => (
  <Paper
    variant="outlined"
    sx={{ borderRadius: '20px', p: { xs: 2.5, md: 3 }, bgcolor: 'background.paper' }}
    aria-hidden="true"
  >
    <Stack direction={{ xs: 'column', sm: 'row' }} spacing={3.5} sx={{ alignItems: 'center' }}>
      <ScoreDonut value={72} size={132} stroke={12} caption="Paper 1" />
      <Box sx={{ width: '100%' }}>
        <Typography variant="subtitle2" sx={{ fontWeight: 700, color: 'text.primary', mb: 2 }}>
          Subject-wise accuracy
        </Typography>
        <SubjectBars
          valueLabel="Accuracy"
          data={[
            { label: 'Polity', value: 78, caption: '39 / 50' },
            { label: 'History', value: 64, caption: '32 / 50' },
            { label: 'Economy', value: 51, caption: '25 / 50' },
          ]}
        />
      </Box>
    </Stack>
  </Paper>
);

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
    {
      label: 'General Studies subjects',
      value: subjects.length ? String(subjects.length) : '8',
      icon: <MenuBookRoundedIcon />,
    },
    {
      label: 'Practice questions',
      value: totalQuestions ? totalQuestions.toLocaleString('en-IN') : '8,000+',
      icon: <CheckCircleRoundedIcon />,
    },
    { label: 'Minutes in a full paper', value: '120', icon: <TimerRoundedIcon /> },
    { label: 'Marks per correct answer', value: '+2', icon: <EmojiEventsRoundedIcon /> },
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
              ? 'radial-gradient(90% 70% at 78% 8%, rgba(45, 212, 191, 0.10) 0%, transparent 62%)'
              : 'radial-gradient(90% 70% at 78% 8%, rgba(15, 118, 110, 0.09) 0%, transparent 62%)',
        }}
      >
        <Container maxWidth="xl" sx={{ position: 'relative' }}>
          <Grid container spacing={{ xs: 6, lg: 8 }} sx={{ alignItems: 'center' }}>
            <Grid size={{ xs: 12, md: 6 }}>
              <Box className="rise-in">
                <Box sx={{ mb: 3 }}>
                  <Eyebrow>UPSC · TGPSC · APPSC prelims</Eyebrow>
                </Box>

                <Typography variant="h1" sx={{ color: 'text.primary', mb: 2.5 }}>
                  Practise the prelims the way they are actually run.
                </Typography>

                <Typography
                  variant="body1"
                  sx={{ color: 'text.secondary', fontSize: '1.075rem', maxWidth: 560, mb: 4 }}
                >
                  Timed papers on a server clock, the official marking scheme, an explanation
                  behind every answer and a history of every attempt you have made.
                </Typography>

                <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1.75} sx={{ mb: 4 }}>
                  <Button
                    component={RouterLink}
                    to={ctaHref}
                    variant="contained"
                    size="large"
                    endIcon={<ArrowForwardRoundedIcon />}
                  >
                    {user ? 'Go to dashboard' : 'Start practising free today'}
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

                <Stack
                  direction={{ xs: 'column', sm: 'row' }}
                  spacing={{ xs: 1, sm: 3 }}
                  sx={{ rowGap: 1 }}
                >
                  {[
                    'No card needed to start',
                    'Scored on the server',
                    'Explanations after you submit',
                  ].map((item) => (
                    <Stack key={item} direction="row" spacing={1} sx={{ alignItems: 'center' }}>
                      <CheckCircleRoundedIcon sx={{ color: 'success.main', fontSize: 18 }} />
                      <Typography variant="body2" color="text.secondary">
                        {item}
                      </Typography>
                    </Stack>
                  ))}
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

      {/* -------------------------------------------------------------- Facts */}
      <Container maxWidth="xl" sx={{ mt: { xs: -4, md: -6 }, position: 'relative' }}>
        <Paper
          elevation={0}
          sx={{
            borderRadius: '28px',
            border: '1px solid',
            borderColor: 'divider',
            p: { xs: 2.5, md: 3.5 },
            bgcolor: 'background.paper',
            boxShadow: '0 30px 60px -44px rgba(16, 26, 28, 0.5)',
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
                      borderRadius: '16px',
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
                      className="tabular"
                      sx={{
                        fontFamily: '"Fraunces Variable", Georgia, serif',
                        fontWeight: 600,
                        fontSize: '1.3rem',
                        lineHeight: 1.25,
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
            eyebrow="What you get"
            title="A console, not a quiz app"
            subtitle="Everything a serious aspirant needs to practise at the real exam standard, and nothing that gets in the way of a paper."
          />

          <Grid container spacing={2.5} sx={{ mt: { xs: 4, md: 6 } }}>
            {FEATURES.map((feature) => (
              <Grid key={feature.title} size={{ xs: 12, sm: 6, md: 4 }}>
                <Card
                  variant="outlined"
                  sx={{
                    height: '100%',
                    borderRadius: '20px',
                    transition: 'transform 220ms ease, box-shadow 220ms ease, border-color 220ms ease',
                    '&:hover': {
                      transform: 'translateY(-3px)',
                      borderColor: (theme) => alpha(resolveColor(theme, feature.accent), 0.4),
                    },
                  }}
                >
                  <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                    <Box
                      sx={{
                        width: 46,
                        height: 46,
                        borderRadius: '16px',
                        display: 'grid',
                        placeItems: 'center',
                        mb: 2.25,
                        color: feature.accent,
                        bgcolor: (theme) => alpha(resolveColor(theme, feature.accent), 0.12),
                      }}
                    >
                      {feature.icon}
                    </Box>
                    <Typography variant="h6" sx={{ fontWeight: 600, mb: 1, color: 'text.primary' }}>
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
        sx={{
          py: { xs: 8, md: 12 },
          bgcolor: (theme) => alpha(theme.palette.primary.main, theme.palette.mode === 'dark' ? 0.05 : 0.035),
          borderBlock: '1px solid',
          borderColor: 'divider',
        }}
      >
        <Container maxWidth="xl">
          <SectionHeading
            eyebrow="How it works"
            title="Three steps to your next paper"
            subtitle="No forms to fill, no calls to make, no waiting. Sign in, pick a paper, start."
          />

          <Grid container spacing={3} sx={{ mt: { xs: 4, md: 6 } }}>
            {STEPS.map((step, index) => (
              <Grid key={step.title} size={{ xs: 12, md: 4 }}>
                <Paper
                  variant="outlined"
                  sx={{
                    p: 3.5,
                    borderRadius: '20px',
                    height: '100%',
                    position: 'relative',
                    overflow: 'hidden',
                    bgcolor: 'background.paper',
                  }}
                >
                  <Typography
                    className="tabular"
                    sx={{
                      position: 'absolute',
                      right: 18,
                      top: 4,
                      fontFamily: '"Fraunces Variable", Georgia, serif',
                      fontSize: '3.75rem',
                      fontWeight: 600,
                      color: (theme) => alpha(theme.palette.primary.main, 0.12),
                      lineHeight: 1,
                    }}
                  >
                    0{index + 1}
                  </Typography>
                  <Box
                    sx={{
                      width: 44,
                      height: 44,
                      borderRadius: '16px',
                      display: 'grid',
                      placeItems: 'center',
                      background: heroGradient,
                      color: '#fff',
                      mb: 2.25,
                      boxShadow: '0 12px 24px -14px rgba(15, 118, 110, 0.9)',
                    }}
                  >
                    {step.icon}
                  </Box>
                  <Typography variant="h6" sx={{ fontWeight: 600, mb: 1, color: 'text.primary' }}>
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
            <Paper variant="outlined" sx={{ mt: 4, p: 3, borderRadius: '20px', textAlign: 'center' }}>
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
                    variant="outlined"
                    sx={{
                      height: '100%',
                      borderRadius: '20px',
                      transition: 'transform 220ms ease, box-shadow 220ms ease',
                      '&:hover': { transform: 'translateY(-3px)' },
                    }}
                  >
                    <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                      <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'flex-start', mb: 2 }}>
                        <Box
                          sx={{
                            width: 44,
                            height: 44,
                            borderRadius: '16px',
                            display: 'grid',
                            placeItems: 'center',
                            bgcolor: (theme) => alpha(theme.palette.primary.main, 0.1),
                            color: 'primary.main',
                          }}
                        >
                          <Icon fontSize="small" />
                        </Box>
                        <Chip
                          label={`${subject.question_count || 0} Q`}
                          size="small"
                          sx={{ bgcolor: 'action.hover', color: 'text.secondary' }}
                        />
                      </Stack>
                      <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary', mb: 0.75 }}>
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
                        sx={{ px: 0, color: 'primary.main' }}
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

      {/* --------------------------------------------------- After you submit */}
      <Box
        component="section"
        sx={{
          py: { xs: 8, md: 12 },
          bgcolor: (theme) => alpha(theme.palette.primary.main, theme.palette.mode === 'dark' ? 0.05 : 0.035),
          borderBlock: '1px solid',
          borderColor: 'divider',
        }}
      >
        <Container maxWidth="xl">
          <Grid container spacing={{ xs: 5, md: 7 }} sx={{ alignItems: 'center' }}>
            <Grid size={{ xs: 12, md: 5 }}>
              <SectionHeading
                eyebrow="After you submit"
                title="A score is only the start"
                subtitle="Every submitted paper opens into a full review: where the marks came from, which subjects need work and the reasoning behind each answer."
              />
              <Stack spacing={1.5} sx={{ mt: 3.5 }}>
                {[
                  'A score gauge and a subject-wise accuracy breakdown',
                  'Every question, your answer and the correct one side by side',
                  'A written explanation with the source and year where known',
                  'A history entry you can compare against the next attempt',
                ].map((item) => (
                  <Stack key={item} direction="row" spacing={1.25} sx={{ alignItems: 'flex-start' }}>
                    <CheckCircleRoundedIcon sx={{ color: 'primary.main', fontSize: 19, mt: 0.2 }} />
                    <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.7 }}>
                      {item}
                    </Typography>
                  </Stack>
                ))}
              </Stack>
            </Grid>
            <Grid size={{ xs: 12, md: 7 }}>
              <ResultMock />
            </Grid>
          </Grid>
        </Container>
      </Box>

      {/* --------------------------------------------------------------- FAQ */}
      <Box component="section" id="faq" sx={{ py: { xs: 8, md: 12 } }}>
        <Container maxWidth="lg">
          <SectionHeading
            eyebrow="FAQ"
            title="Questions every aspirant asks"
            subtitle="Everything about the papers, the timing, the marking and the questions."
          />

          <Stack spacing={1.25} sx={{ mt: { xs: 4, md: 5 } }}>
            {FAQS.map((item) => (
              <Accordion key={item.q} disableGutters>
                <AccordionSummary
                  expandIcon={<ExpandMoreRoundedIcon />}
                  aria-controls={`faq-${item.q}`}
                  id={`faq-${item.q}`}
                >
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
        <CtaBand
          title="Your first paper is two clicks away"
          description="Create an account, pick your subjects and start. Timed papers, the official marking scheme and a full explanation behind every answer."
          actionLabel={user ? 'Open dashboard' : 'Create a free account'}
          actionHref={ctaHref}
          secondaryLabel="Browse the subjects"
          secondaryHref="/#subjects"
        />
      </Container>
    </Box>
  );
};

export default Home;
