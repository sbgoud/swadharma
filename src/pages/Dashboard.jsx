import { useEffect, useMemo, useState } from 'react';
import { Link as RouterLink, useNavigate } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Chip from '@mui/material/Chip';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import LinearProgress from '@mui/material/LinearProgress';
import Paper from '@mui/material/Paper';
import Slider from '@mui/material/Slider';
import Stack from '@mui/material/Stack';
import ToggleButton from '@mui/material/ToggleButton';
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import AutoAwesomeRoundedIcon from '@mui/icons-material/AutoAwesomeRounded';
import CheckRoundedIcon from '@mui/icons-material/CheckRounded';
import EmojiEventsRoundedIcon from '@mui/icons-material/EmojiEventsRounded';
import HistoryRoundedIcon from '@mui/icons-material/HistoryRounded';
import InsightsRoundedIcon from '@mui/icons-material/InsightsRounded';
import PlayArrowRoundedIcon from '@mui/icons-material/PlayArrowRounded';
import QuizRoundedIcon from '@mui/icons-material/QuizRounded';
import ScheduleRoundedIcon from '@mui/icons-material/ScheduleRounded';
import TrendingUpRoundedIcon from '@mui/icons-material/TrendingUpRounded';
import { fetchMyAttempts, fetchSubjectCounts, startExam } from '../services/examService';
import { appConfig } from '../config/env';
import { useAuth } from '../context/AuthContext';
import { EmptyState, PageHeader, StatCard } from '../components/ui';
import TrendChart from '../components/charts/TrendChart';
import SubjectBars from '../components/charts/SubjectBars';

const QUESTION_PRESETS = [10, 20, 50, 100, 150];
const DIFFICULTIES = [
  { value: '', label: 'Any' },
  { value: 'easy', label: 'Easy' },
  { value: 'medium', label: 'Medium' },
  { value: 'hard', label: 'Hard' },
];

const INK = '#0F1819';

const durationFor = (count) => Math.max(10, Math.min(120, Math.round(count * 1.2)));

const Dashboard = () => {
  const navigate = useNavigate();
  const { user, profile } = useAuth();
  const [subjects, setSubjects] = useState([]);
  const [selected, setSelected] = useState([]);
  const [numQuestions, setNumQuestions] = useState(appConfig.defaultQuestions);
  const [difficulty, setDifficulty] = useState('');
  const [attempts, setAttempts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [starting, setStarting] = useState(false);
  const [error, setError] = useState(null);

  useEffect(() => {
    let active = true;
    Promise.all([fetchSubjectCounts(), fetchMyAttempts().catch(() => [])])
      .then(([data, history]) => {
        if (!active) return;
        setSubjects(data);
        setSelected(data.map((item) => item.slug));
        setAttempts(history);
      })
      .catch(() => setError('Could not load the subject list. Please refresh.'))
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
  }, []);

  const toggleSubject = (slug) => {
    setSelected((prev) =>
      prev.includes(slug) ? prev.filter((item) => item !== slug) : [...prev, slug]
    );
  };

  const totalAvailable = useMemo(
    () =>
      subjects
        .filter((subject) => selected.includes(subject.slug))
        .reduce((sum, subject) => sum + (subject.question_count || 0), 0),
    [subjects, selected]
  );

  /**
   * Resolves the number of questions a paper may ask for: never more than the
   * user picked and never more than the selected subjects can supply.
   * Shared by every "start" button so they all honour the same selection.
   */
  const resolveCount = (slugs, requested) => {
    const available = subjects
      .filter((subject) => slugs.includes(subject.slug))
      .reduce((sum, subject) => sum + (subject.question_count || 0), 0);
    return Math.min(requested, Math.max(appConfig.minQuestions, available));
  };

  const effectiveQuestions = Math.min(numQuestions, Math.max(appConfig.minQuestions, totalAvailable));
  const duration = durationFor(effectiveQuestions);

  /* The quick-start card advertises the paper it is about to create. */
  const fullPaperSlugs = subjects.map((item) => item.slug);
  const fullPaperQuestions = resolveCount(fullPaperSlugs, numQuestions);
  const fullPaperDuration = durationFor(fullPaperQuestions);

  const finished = useMemo(() => attempts.filter((attempt) => attempt.submitted_at && attempt.total), [attempts]);

  const stats = useMemo(() => {
    if (!finished.length) return { count: 0, average: 0, best: 0, questions: 0 };
    const percentages = finished.map(
      (attempt) => (Number(attempt.score || 0) / (attempt.total * 2)) * 100
    );
    return {
      count: finished.length,
      average: percentages.reduce((sum, value) => sum + value, 0) / percentages.length,
      best: Math.max(...percentages),
      questions: finished.reduce((sum, attempt) => sum + (attempt.total || 0), 0),
    };
  }, [finished]);

  const trend = useMemo(
    () =>
      [...finished]
        .reverse()
        .slice(-8)
        .map((attempt, index) => ({
          label: `P${index + 1}`,
          value: Math.round((Number(attempt.score || 0) / (attempt.total * 2)) * 1000) / 10,
        })),
    [finished]
  );

  const subjectAccuracy = useMemo(() => {
    const names = Object.fromEntries(subjects.map((subject) => [subject.slug, subject.name]));
    const map = new Map();
    finished.forEach((attempt) => {
      (attempt.config?.subject_slugs || []).forEach((slug) => {
        const key = names[slug] || slug;
        if (!map.has(key)) map.set(key, { label: key, correct: 0, total: 0 });
        const row = map.get(key);
        row.total += 1;
        row.correct += Number(attempt.score || 0) > 0 ? 1 : 0;
      });
    });
    return [...map.values()]
      .map((row) => ({ label: row.label, value: Math.round((row.correct / row.total) * 100) }))
      .sort((a, b) => b.value - a.value)
      .slice(0, 6);
  }, [finished, subjects]);

  const inProgress = attempts.find((attempt) => !attempt.submitted_at);

  const startWith = async (config) => {
    setError(null);
    setStarting(true);
    try {
      const attempt = await startExam(config);
      if (!attempt?.attempt_id) throw new Error('The exam could not be created.');
      navigate(`/exam/${attempt.attempt_id}`);
    } catch (err) {
      setError(err.message || 'Could not start the exam. Please try again.');
      setStarting(false);
    }
  };

  const handleStart = async () => {
    if (!selected.length) {
      setError('Select at least one subject.');
      return;
    }
    if (!totalAvailable) {
      setError('No questions available for the selected subjects.');
      return;
    }
    await startWith({
      subjectSlugs: selected,
      numQuestions: effectiveQuestions,
      difficulty: difficulty || null,
    });
  };

  const startSubjectTest = (subject) => {
    const slugs = [subject.slug];
    const count = resolveCount(slugs, numQuestions);
    setSelected(slugs);
    setNumQuestions(count);
    return startWith({ subjectSlugs: slugs, numQuestions: count, difficulty: difficulty || null });
  };

  const startFullPaper = () => {
    const slugs = subjects.map((item) => item.slug);
    const count = resolveCount(slugs, numQuestions);
    setSelected(slugs);
    setNumQuestions(count);
    return startWith({ subjectSlugs: slugs, numQuestions: count, difficulty: difficulty || null });
  };

  const firstName =
    (profile?.full_name || user?.user_metadata?.full_name || user?.email || 'aspirant').split(' ')[0];

  return (
    <Box sx={{ bgcolor: 'background.default', minHeight: '100%' }}>
      <Box sx={{ maxWidth: 1280, mx: 'auto', px: { xs: 2, sm: 3, lg: 5 }, py: { xs: 4, md: 6 } }}>
        <PageHeader
          eyebrow="Dashboard"
          title={`Good to see you, ${firstName}`}
          description="Configure a prelims paper and start. Every attempt is timed and scored on the server."
          actions={
            <>
              <Button
                component={RouterLink}
                to="/attempts"
                variant="outlined"
                color="inherit"
                startIcon={<HistoryRoundedIcon />}
                sx={{ borderColor: 'divider' }}
              >
                History
              </Button>
              <Button
                variant="contained"
                startIcon={<PlayArrowRoundedIcon />}
                onClick={startFullPaper}
                disabled={starting || !subjects.length}
              >
                Full mixed paper
              </Button>
            </>
          }
          sx={{ mb: 4 }}
        />

        {error && (
          <Alert severity="error" sx={{ mb: 3 }} onClose={() => setError(null)}>
            {error}
          </Alert>
        )}

        {inProgress && (
          <Alert
            severity="info"
            icon={<AutoAwesomeRoundedIcon />}
            sx={{ mb: 3, alignItems: 'center' }}
            action={
              <Button
                component={RouterLink}
                to={`/exam/${inProgress.id}`}
                color="inherit"
                size="small"
                variant="contained"
              >
                Resume
              </Button>
            }
          >
            You have a paper in progress ({inProgress.total} questions). Continue where you left off?
          </Alert>
        )}

        {/* Stats */}
        <Grid container spacing={2} sx={{ mb: 3 }}>
          <Grid size={{ xs: 12, sm: 6, md: 3 }}>
            <StatCard
              icon={<QuizRoundedIcon />}
              label="Papers attempted"
              value={stats.count}
              caption="Submitted papers"
            />
          </Grid>
          <Grid size={{ xs: 12, sm: 6, md: 3 }}>
            <StatCard
              icon={<TrendingUpRoundedIcon />}
              label="Average score"
              value={`${stats.average.toFixed(1)}%`}
              caption="Across all papers"
              accent="info.main"
            />
          </Grid>
          <Grid size={{ xs: 12, sm: 6, md: 3 }}>
            <StatCard
              icon={<EmojiEventsRoundedIcon />}
              label="Best score"
              value={`${stats.best.toFixed(1)}%`}
              caption="Personal record"
              accent="warning.main"
            />
          </Grid>
          <Grid size={{ xs: 12, sm: 6, md: 3 }}>
            <StatCard
              icon={<InsightsRoundedIcon />}
              label="Questions solved"
              value={stats.questions}
              caption="Total answered"
              accent="success.main"
            />
          </Grid>
        </Grid>

        <Grid container spacing={3}>
          {/* Paper builder */}
          <Grid size={{ xs: 12, lg: 8 }}>
            <Paper
              variant="outlined"
              sx={{ p: { xs: 2.5, md: 3.5 }, borderRadius: '20px', bgcolor: 'background.paper' }}
            >
              <Stack
                direction="row"
                sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 2.5, gap: 2 }}
              >
                <Box>
                  <Typography variant="h5" sx={{ fontWeight: 600, color: 'text.primary' }}>
                    Build your paper
                  </Typography>
                  <Typography variant="caption" color="text.secondary">
                    Choose subjects, length and difficulty
                  </Typography>
                </Box>
                <Stack direction="row" spacing={0.5} sx={{ flexShrink: 0 }}>
                  <Button
                    size="small"
                    onClick={() => setSelected(subjects.map((item) => item.slug))}
                    sx={{ whiteSpace: 'nowrap', px: 1 }}
                  >
                    Select all
                  </Button>
                  <Button size="small" onClick={() => setSelected([])} sx={{ whiteSpace: 'nowrap', px: 1 }}>
                    Clear
                  </Button>
                </Stack>
              </Stack>

              <Grid container spacing={1.5}>
                {loading &&
                  Array.from({ length: 8 }).map((_, index) => (
                    <Grid key={`skeleton-${index}`} size={{ xs: 12, sm: 6, md: 4 }}>
                      <Box sx={{ height: 100, borderRadius: '16px', bgcolor: 'action.hover' }} />
                    </Grid>
                  ))}
                {subjects.map((subject) => {
                  const active = selected.includes(subject.slug);
                  return (
                    <Grid key={subject.slug} size={{ xs: 12, sm: 6, md: 4 }}>
                      <Paper
                        variant="outlined"
                        onClick={() => toggleSubject(subject.slug)}
                        role="button"
                        tabIndex={0}
                        aria-pressed={active}
                        onKeyDown={(event) => {
                          if (event.key === 'Enter' || event.key === ' ') {
                            event.preventDefault();
                            toggleSubject(subject.slug);
                          }
                        }}
                        sx={{
                          p: 2,
                          borderRadius: '16px',
                          cursor: 'pointer',
                          height: '100%',
                          borderColor: active ? 'primary.main' : 'divider',
                          bgcolor: active
                            ? (theme) => alpha(theme.palette.primary.main, 0.06)
                            : 'background.paper',
                          transition: 'border-color 200ms ease, background-color 200ms ease',
                          '&:hover': { borderColor: 'primary.main' },
                          '&:focus-visible': {
                            outline: '2px solid rgba(15, 118, 110, 0.75)',
                            outlineOffset: 2,
                          },
                        }}
                      >
                        <Stack direction="row" spacing={1.25} sx={{ alignItems: 'flex-start' }}>
                          <Box
                            sx={{
                              width: 22,
                              height: 22,
                              borderRadius: '7px',
                              display: 'grid',
                              placeItems: 'center',
                              border: '1.5px solid',
                              borderColor: active ? 'primary.main' : 'divider',
                              bgcolor: active ? 'primary.main' : 'transparent',
                              color: '#fff',
                              flexShrink: 0,
                              mt: 0.25,
                            }}
                          >
                            {active && <CheckRoundedIcon sx={{ fontSize: 15 }} />}
                          </Box>
                          <Box sx={{ minWidth: 0 }}>
                            <Typography
                              variant="subtitle2"
                              sx={{ fontWeight: 600, color: 'text.primary' }}
                              noWrap
                            >
                              {subject.name}
                            </Typography>
                            <Typography variant="caption" color="text.secondary">
                              {subject.question_count} questions
                            </Typography>
                          </Box>
                        </Stack>
                        <Button
                          size="small"
                          variant="text"
                          onClick={(event) => {
                            event.stopPropagation();
                            startSubjectTest(subject);
                          }}
                          disabled={starting || !subject.question_count}
                          sx={{ px: 0, mt: 0.75, minHeight: 24, color: 'primary.main' }}
                        >
                          Start this subject
                        </Button>
                      </Paper>
                    </Grid>
                  );
                })}
              </Grid>

              <Divider sx={{ my: 3 }} />

              <Grid container spacing={3}>
                <Grid size={{ xs: 12, md: 5 }}>
                  <Typography variant="subtitle2" sx={{ fontWeight: 600, color: 'text.primary', mb: 1 }}>
                    Number of questions —{' '}
                    <Box component="span" sx={{ color: 'primary.main' }}>
                      {numQuestions}
                    </Box>
                  </Typography>
                  <Slider
                    value={Math.min(numQuestions, appConfig.maxQuestions)}
                    onChange={(_, value) => setNumQuestions(value)}
                    min={appConfig.minQuestions}
                    max={appConfig.maxQuestions}
                    step={5}
                    valueLabelDisplay="auto"
                    aria-label="Number of questions"
                  />
                  <Stack direction="row" spacing={1} useFlexGap sx={{ flexWrap: 'wrap' }}>
                    {QUESTION_PRESETS.map((preset) => (
                      <Chip
                        key={preset}
                        label={preset}
                        onClick={() => setNumQuestions(preset)}
                        color={numQuestions === preset ? 'primary' : 'default'}
                        variant={numQuestions === preset ? 'filled' : 'outlined'}
                        size="small"
                      />
                    ))}
                  </Stack>
                </Grid>

                <Grid size={{ xs: 12, md: 4 }}>
                  <Typography variant="subtitle2" sx={{ fontWeight: 600, color: 'text.primary', mb: 1 }}>
                    Difficulty
                  </Typography>
                  <ToggleButtonGroup
                    exclusive
                    fullWidth
                    size="small"
                    value={difficulty}
                    onChange={(_, value) => value !== null && setDifficulty(value)}
                    aria-label="Difficulty filter"
                  >
                    {DIFFICULTIES.map((option) => (
                      <ToggleButton key={option.label} value={option.value}>
                        {option.label}
                      </ToggleButton>
                    ))}
                  </ToggleButtonGroup>
                </Grid>

                <Grid size={{ xs: 12, md: 3 }}>
                  <Typography variant="subtitle2" sx={{ fontWeight: 600, color: 'text.primary', mb: 1 }}>
                    Paper summary
                  </Typography>
                  <Stack spacing={0.75}>
                    {[
                      { label: 'Questions', value: effectiveQuestions },
                      { label: 'Subjects', value: selected.length },
                      { label: 'Time limit', value: `${duration} min` },
                      { label: 'Maximum score', value: effectiveQuestions * 2 },
                    ].map((row) => (
                      <Stack key={row.label} direction="row" sx={{ justifyContent: 'space-between' }}>
                        <Typography variant="caption" color="text.secondary">
                          {row.label}
                        </Typography>
                        <Typography
                          variant="caption"
                          className="tabular"
                          sx={{ fontWeight: 700, color: 'text.primary' }}
                        >
                          {row.value}
                        </Typography>
                      </Stack>
                    ))}
                  </Stack>
                </Grid>
              </Grid>

              <Button
                variant="contained"
                size="large"
                fullWidth
                onClick={handleStart}
                disabled={starting || !selected.length || !totalAvailable}
                startIcon={<PlayArrowRoundedIcon />}
                sx={{ mt: 3, py: 1.5 }}
              >
                {starting ? 'Preparing your paper…' : 'Start exam'}
              </Button>
              <Typography
                variant="caption"
                color="text.secondary"
                sx={{ display: 'block', textAlign: 'center', mt: 1.5 }}
              >
                The timer starts the moment the paper opens. +2 correct, −0.66 wrong, 0 unanswered.
              </Typography>
            </Paper>

            {/* Charts */}
            <Grid container spacing={3} sx={{ mt: 0 }}>
              <Grid size={{ xs: 12, md: 7 }}>
                <Paper
                  variant="outlined"
                  sx={{ p: 3, borderRadius: '20px', height: '100%', bgcolor: 'background.paper' }}
                >
                  <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 2 }}>
                    <Box>
                      <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary' }}>
                        Score trend
                      </Typography>
                      <Typography variant="caption" color="text.secondary">
                        Percentage in each submitted paper
                      </Typography>
                    </Box>
                    <Chip label={`${stats.count} papers`} size="small" sx={{ bgcolor: 'action.hover' }} />
                  </Stack>
                  {trend.length ? (
                    <TrendChart data={trend} height={248} />
                  ) : (
                    <Box sx={{ py: 5, textAlign: 'center' }}>
                      <InsightsRoundedIcon sx={{ color: 'text.disabled', fontSize: 40, mb: 1 }} />
                      <Typography variant="body2" color="text.secondary">
                        Submit your first paper to unlock your score trend.
                      </Typography>
                    </Box>
                  )}
                </Paper>
              </Grid>

              <Grid size={{ xs: 12, md: 5 }}>
                <Paper
                  variant="outlined"
                  sx={{ p: 3, borderRadius: '20px', height: '100%', bgcolor: 'background.paper' }}
                >
                  <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary', mb: 0.5 }}>
                    Subject performance
                  </Typography>
                  <Typography variant="caption" color="text.secondary">
                    Papers where you scored above zero
                  </Typography>
                  <Box sx={{ mt: 2.5 }}>
                    {subjectAccuracy.length ? (
                      <SubjectBars data={subjectAccuracy} />
                    ) : (
                      <Box sx={{ py: 4, textAlign: 'center' }}>
                        <Typography variant="body2" color="text.secondary">
                          Subject-wise insights appear after your first paper.
                        </Typography>
                      </Box>
                    )}
                  </Box>
                </Paper>
              </Grid>
            </Grid>
          </Grid>

          {/* Quick start + recent */}
          <Grid size={{ xs: 12, lg: 4 }}>
            <Stack spacing={3}>
              <Paper
                elevation={0}
                sx={{
                  p: 3,
                  borderRadius: '20px',
                  bgcolor: INK,
                  color: '#EAF2F1',
                  border: '1px solid rgba(255, 255, 255, 0.08)',
                }}
              >
                <Typography
                  sx={{
                    fontFamily: '"Fraunces Variable", Georgia, serif',
                    fontWeight: 600,
                    fontSize: '1.25rem',
                    color: '#FFFFFF',
                    mb: 0.75,
                  }}
                >
                  Full mixed paper
                </Typography>
                <Typography
                  variant="body2"
                  sx={{ color: 'rgba(234, 242, 241, 0.72)', lineHeight: 1.7, mb: 2.5 }}
                >
                  All {subjects.length} General Studies subjects, {fullPaperQuestions} questions in{' '}
                  {fullPaperDuration} minutes
                  {difficulty ? ` · ${difficulty} only` : ''}.
                </Typography>
                <Button
                  variant="contained"
                  fullWidth
                  onClick={startFullPaper}
                  disabled={starting || !subjects.length}
                  startIcon={<PlayArrowRoundedIcon />}
                >
                  Start now
                </Button>
              </Paper>

              <Paper
                variant="outlined"
                sx={{ p: 3, borderRadius: '20px', bgcolor: 'background.paper' }}
              >
                <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 2 }}>
                  <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary' }}>
                    Recent papers
                  </Typography>
                  <Button component={RouterLink} to="/attempts" size="small">
                    View all
                  </Button>
                </Stack>

                {finished.length ? (
                  <Stack spacing={2}>
                    {finished.slice(0, 4).map((attempt) => {
                      const percent = (Number(attempt.score || 0) / (attempt.total * 2)) * 100;
                      return (
                        <Box key={attempt.id}>
                          <Stack
                            direction="row"
                            sx={{ justifyContent: 'space-between', alignItems: 'baseline', mb: 0.5 }}
                          >
                            <Typography variant="body2" sx={{ fontWeight: 600, color: 'text.primary' }}>
                              {attempt.total} questions
                            </Typography>
                            <Typography
                              variant="caption"
                              className="tabular"
                              sx={{ fontWeight: 700, color: 'primary.main' }}
                            >
                              {percent.toFixed(0)}%
                            </Typography>
                          </Stack>
                          <LinearProgress
                            variant="determinate"
                            value={Math.max(2, percent)}
                            sx={{ height: 6, borderRadius: 999 }}
                          />
                          <Typography variant="caption" color="text.secondary">
                            {new Date(attempt.started_at).toLocaleDateString('en-IN', {
                              day: '2-digit',
                              month: 'short',
                            })}
                          </Typography>
                        </Box>
                      );
                    })}
                  </Stack>
                ) : (
                  <EmptyState
                    icon={<QuizRoundedIcon sx={{ fontSize: 36 }} />}
                    title="No papers yet"
                    description="Configure a paper and start your first attempt."
                  />
                )}
              </Paper>

              <Paper
                variant="outlined"
                sx={{ p: 2.5, borderRadius: '20px', bgcolor: 'background.paper' }}
              >
                <Stack direction="row" spacing={1.5} sx={{ alignItems: 'flex-start' }}>
                  <ScheduleRoundedIcon sx={{ color: 'primary.main', mt: 0.25 }} />
                  <Box>
                    <Typography variant="subtitle2" sx={{ fontWeight: 600, color: 'text.primary' }}>
                      UPSC timing
                    </Typography>
                    <Typography variant="caption" color="text.secondary" sx={{ lineHeight: 1.7 }}>
                      100 questions in 120 minutes. Shorter papers are scaled at 1.2 minutes per
                      question and are enforced on the server, so a reload cannot buy extra time.
                    </Typography>
                  </Box>
                </Stack>
              </Paper>
            </Stack>
          </Grid>
        </Grid>
      </Box>
    </Box>
  );
};

export default Dashboard;
