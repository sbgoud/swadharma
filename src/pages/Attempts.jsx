import { useEffect, useMemo, useState } from 'react';
import { Link as RouterLink } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Chip from '@mui/material/Chip';
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid';
import LinearProgress from '@mui/material/LinearProgress';
import Stack from '@mui/material/Stack';
import ToggleButton from '@mui/material/ToggleButton';
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import HistoryRoundedIcon from '@mui/icons-material/HistoryRounded';
import InsightsRoundedIcon from '@mui/icons-material/InsightsRounded';
import PlayArrowRoundedIcon from '@mui/icons-material/PlayArrowRounded';
import QuizRoundedIcon from '@mui/icons-material/QuizRounded';
import TrendingUpRoundedIcon from '@mui/icons-material/TrendingUpRounded';
import EmojiEventsRoundedIcon from '@mui/icons-material/EmojiEventsRounded';
import { fetchMyAttempts, fetchSubjectCounts } from '../services/examService';
import { StatCard, EmptyState, PageHeader } from '../components/ui';

const formatDate = (value) => {
  if (!value) return '—';
  return new Date(value).toLocaleString('en-IN', {
    day: '2-digit',
    month: 'short',
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
  });
};

const Attempts = () => {
  const [attempts, setAttempts] = useState([]);
  const [names, setNames] = useState({});
  const [filter, setFilter] = useState('all');
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    let active = true;
    Promise.all([fetchMyAttempts(), fetchSubjectCounts().catch(() => [])])
      .then(([history, subjects]) => {
        if (!active) return;
        setAttempts(history);
        setNames(subjects.reduce((acc, subject) => ({ ...acc, [subject.slug]: subject.name }), {}));
      })
      .catch((err) => active && setError(err.message || 'Could not load your attempts.'))
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
  }, []);

  const subjectLabel = (slugs) =>
    (slugs || [])
      .map(
        (slug) =>
          names[slug] ||
          slug.replace(/_/g, ' ').replace(/\b\w/g, (character) => character.toUpperCase())
      )
      .join(', ');

  const finished = useMemo(() => attempts.filter((attempt) => attempt.submitted_at && attempt.total), [attempts]);
  const inProgress = useMemo(() => attempts.filter((attempt) => !attempt.submitted_at), [attempts]);

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

  const visible = filter === 'progress' ? inProgress : filter === 'done' ? finished : attempts;

  return (
    <Container maxWidth="lg" sx={{ py: { xs: 4, md: 6 } }}>
      <PageHeader
        eyebrow="My tests"
        title="Attempt history"
        description="Every paper you have taken, with the score you achieved."
        actions={
          <Button
            component={RouterLink}
            to="/dashboard"
            variant="contained"
            startIcon={<PlayArrowRoundedIcon />}
          >
            New test
          </Button>
        }
        sx={{ mb: 3.5 }}
      />

      {error && (
        <Alert severity="error" sx={{ mb: 3 }} onClose={() => setError(null)}>
          {error}
        </Alert>
      )}

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
            icon={<InsightsRoundedIcon />}
            label="Questions solved"
            value={stats.questions}
            caption="Total attempted"
            accent="success.main"
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
      </Grid>

      {attempts.length > 0 && (
        <ToggleButtonGroup
          exclusive
          size="small"
          value={filter}
          onChange={(_, value) => value && setFilter(value)}
          aria-label="Filter attempts"
          sx={{ mb: 3 }}
        >
          <ToggleButton value="all">All ({attempts.length})</ToggleButton>
          <ToggleButton value="done">Completed ({finished.length})</ToggleButton>
          <ToggleButton value="progress">In progress ({inProgress.length})</ToggleButton>
        </ToggleButtonGroup>
      )}

      {loading ? (
        <LinearProgress />
      ) : !attempts.length ? (
        <EmptyState
          icon={<HistoryRoundedIcon sx={{ fontSize: 40 }} />}
          title="You have not taken any test yet"
          description="Configure a paper on the dashboard and your first attempt will show up here."
          action={
            <Button
              component={RouterLink}
              to="/dashboard"
              variant="contained"
              startIcon={<PlayArrowRoundedIcon />}
            >
              Start your first test
            </Button>
          }
        />
      ) : (
        <Stack spacing={2}>
          {visible.map((attempt) => {
            const percent = attempt.total ? (Number(attempt.score || 0) / (attempt.total * 2)) * 100 : 0;
            const done = Boolean(attempt.submitted_at);
            return (
              <Card
                key={attempt.id}
                variant="outlined"
                sx={{
                  borderRadius: '20px',
                  transition: 'border-color 200ms ease, transform 200ms ease',
                  '&:hover': { borderColor: 'primary.main', transform: 'translateY(-2px)' },
                }}
              >
                <CardContent sx={{ p: { xs: 2.25, md: 3 }, '&:last-child': { pb: { xs: 2.25, md: 3 } } }}>
                  <Stack
                    direction={{ xs: 'column', md: 'row' }}
                    spacing={2.5}
                    sx={{
                      alignItems: { xs: 'stretch', md: 'center' },
                      justifyContent: 'space-between',
                    }}
                  >
                    <Box sx={{ minWidth: 0 }}>
                      <Stack direction="row" spacing={1} useFlexGap sx={{ flexWrap: 'wrap', mb: 1 }}>
                        <Chip
                          label={`${attempt.total ?? 0} questions`}
                          size="small"
                          sx={{ bgcolor: 'action.hover', color: 'text.primary' }}
                        />
                        {attempt.config?.difficulty && (
                          <Chip
                            label={attempt.config.difficulty}
                            size="small"
                            variant="outlined"
                            sx={{ textTransform: 'capitalize' }}
                          />
                        )}
                        {attempt.config?.duration_minutes && (
                          <Chip
                            label={`${attempt.config.duration_minutes} min`}
                            size="small"
                            variant="outlined"
                          />
                        )}
                        {done ? (
                          <Chip
                            icon={<CheckCircleRoundedIcon sx={{ fontSize: 15 }} />}
                            label="Completed"
                            size="small"
                            sx={{
                              bgcolor: (theme) => alpha(theme.palette.success.main, 0.12),
                              color: 'success.main',
                              '& .MuiChip-icon': { color: 'success.main' },
                            }}
                          />
                        ) : (
                          <Chip
                            icon={<PlayArrowRoundedIcon sx={{ fontSize: 15 }} />}
                            label="In progress"
                            size="small"
                            sx={{ bgcolor: (theme) => alpha(theme.palette.info.main, 0.12), color: 'info.main' }}
                          />
                        )}
                      </Stack>

                      <Typography variant="body2" color="text.secondary" sx={{ mb: 1 }}>
                        {formatDate(attempt.started_at)}
                        {subjectLabel(attempt.config?.subject_slugs)
                          ? ` · ${subjectLabel(attempt.config.subject_slugs)}`
                          : ''}
                      </Typography>

                      {done && (
                        <Box sx={{ maxWidth: 320 }}>
                          <LinearProgress
                            variant="determinate"
                            value={Math.max(2, percent)}
                            aria-label={`Score ${percent.toFixed(0)} percent`}
                            sx={{ height: 8, borderRadius: 999 }}
                          />
                        </Box>
                      )}
                    </Box>

                    <Stack
                      direction="row"
                      spacing={2}
                      sx={{ alignItems: 'center', justifyContent: { xs: 'space-between', md: 'flex-end' } }}
                    >
                      {done ? (
                        <Box sx={{ textAlign: { xs: 'left', md: 'right' } }}>
                          <Typography variant="caption" color="text.secondary" sx={{ fontWeight: 600 }}>
                            Score
                          </Typography>
                          <Typography
                            className="tabular"
                            sx={{
                              fontFamily: '"Fraunces Variable", Georgia, serif',
                              fontWeight: 600,
                              fontSize: '1.5rem',
                              lineHeight: 1.2,
                              color: 'text.primary',
                            }}
                          >
                            {attempt.score}
                            <Box component="span" sx={{ fontSize: '0.9rem', color: 'text.disabled' }}>
                              /{attempt.total * 2}
                            </Box>
                          </Typography>
                          <Typography variant="caption" color="text.secondary">
                            {percent.toFixed(1)}%
                          </Typography>
                        </Box>
                      ) : (
                        <Box />
                      )}

                      {done ? (
                        <Button
                          component={RouterLink}
                          to={`/result/${attempt.id}`}
                          variant="outlined"
                          color="inherit"
                          sx={{ borderColor: 'divider' }}
                        >
                          Review
                        </Button>
                      ) : (
                        <Button
                          component={RouterLink}
                          to={`/exam/${attempt.id}`}
                          variant="contained"
                          startIcon={<PlayArrowRoundedIcon />}
                        >
                          Resume
                        </Button>
                      )}
                    </Stack>
                  </Stack>
                </CardContent>
              </Card>
            );
          })}
        </Stack>
      )}
    </Container>
  );
};

export default Attempts;
