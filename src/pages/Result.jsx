import { useEffect, useMemo, useState } from 'react';
import { Link as RouterLink, useLocation, useParams } from 'react-router-dom';
import Accordion from '@mui/material/Accordion';
import AccordionDetails from '@mui/material/AccordionDetails';
import AccordionSummary from '@mui/material/AccordionSummary';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Chip from '@mui/material/Chip';
import Container from '@mui/material/Container';
import Divider from '@mui/material/Divider';
import Grid from '@mui/material/Grid';
import Paper from '@mui/material/Paper';
import Stack from '@mui/material/Stack';
import ToggleButton from '@mui/material/ToggleButton';
import ToggleButtonGroup from '@mui/material/ToggleButtonGroup';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import ArrowForwardRoundedIcon from '@mui/icons-material/ArrowForwardRounded';
import CancelRoundedIcon from '@mui/icons-material/CancelRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import EmojiEventsRoundedIcon from '@mui/icons-material/EmojiEventsRounded';
import ExpandMoreRoundedIcon from '@mui/icons-material/ExpandMoreRounded';
import HelpOutlineRoundedIcon from '@mui/icons-material/HelpOutlineRounded';
import InsightsRoundedIcon from '@mui/icons-material/InsightsRounded';
import RemoveCircleRoundedIcon from '@mui/icons-material/RemoveCircleRounded';
import ScheduleRoundedIcon from '@mui/icons-material/ScheduleRounded';
import { fetchAttemptResult, fetchMyAttempts } from '../services/examService';
import { StatCard, EmptyState } from '../components/ui';
import ScoreDonut from '../components/charts/ScoreDonut';
import SubjectBars from '../components/charts/SubjectBars';
import TrendChart from '../components/charts/TrendChart';

const FILTERS = [
  { value: 'all', label: 'All' },
  { value: 'correct', label: 'Correct' },
  { value: 'incorrect', label: 'Incorrect' },
  { value: 'unanswered', label: 'Skipped' },
];

const INK = '#0F1819';

const verdictFor = (percentage) => {
  if (percentage >= 60) return { label: 'Excellent', color: '#4ADE80' };
  if (percentage >= 40) return { label: 'Good attempt', color: '#5EEAD4' };
  if (percentage >= 25) return { label: 'Needs revision', color: '#FDB022' };
  return { label: 'Keep practising', color: '#F97066' };
};

const Result = () => {
  const { attemptId } = useParams();
  const location = useLocation();
  const [result, setResult] = useState(location.state?.result || null);
  const [attempts, setAttempts] = useState([]);
  const [filter, setFilter] = useState('all');
  const [loading, setLoading] = useState(!location.state?.result);
  const [error, setError] = useState(null);

  useEffect(() => {
    let active = true;
    const load = async () => {
      try {
        if (!result) {
          const data = await fetchAttemptResult(attemptId);
          if (active) setResult(data);
        }
        const history = await fetchMyAttempts().catch(() => []);
        if (active) setAttempts(history);
      } catch (err) {
        if (active) setError(err.message || 'Could not load the result.');
      } finally {
        if (active) setLoading(false);
      }
    };
    load();
    return () => {
      active = false;
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [attemptId]);

  const details = useMemo(() => result?.details || [], [result]);
  const counts = useMemo(() => {
    const correct = details.filter((item) => item.is_correct).length;
    const incorrect = details.filter((item) => !item.is_correct && item.selected_label).length;
    const unanswered = details.filter((item) => !item.selected_label).length;
    return { correct, incorrect, unanswered, total: details.length };
  }, [details]);

  const filtered = useMemo(() => {
    if (filter === 'incorrect') return details.filter((item) => !item.is_correct && item.selected_label);
    if (filter === 'unanswered') return details.filter((item) => !item.selected_label);
    if (filter === 'correct') return details.filter((item) => item.is_correct);
    return details;
  }, [details, filter]);

  const bySubject = useMemo(() => {
    const map = new Map();
    details.forEach((item) => {
      const key = item.subject || 'General Studies';
      if (!map.has(key)) map.set(key, { label: key, correct: 0, total: 0 });
      const row = map.get(key);
      row.total += 1;
      if (item.is_correct) row.correct += 1;
    });
    return [...map.values()]
      .map((row) => ({ label: row.label, value: Math.round((row.correct / row.total) * 100) }))
      .sort((a, b) => b.value - a.value);
  }, [details]);

  const trend = useMemo(
    () =>
      [...attempts]
        .filter((attempt) => attempt.submitted_at && attempt.total)
        .reverse()
        .slice(-8)
        .map((attempt, index) => ({
          label: `P${index + 1}`,
          value: Math.round((Number(attempt.score || 0) / (attempt.total * 2)) * 1000) / 10,
        })),
    [attempts]
  );

  if (loading) {
    return (
      <Container maxWidth="lg" sx={{ py: 6 }}>
        <Typography variant="body2" color="text.secondary">
          Loading your result…
        </Typography>
      </Container>
    );
  }

  if (error || !result) {
    return (
      <Container maxWidth="md" sx={{ py: 8 }}>
        <EmptyState
          icon={<HelpOutlineRoundedIcon sx={{ fontSize: 40 }} />}
          title="Result not available"
          description={error || 'This result could not be loaded. It may belong to a different account.'}
          action={
            <Button component={RouterLink} to="/attempts" variant="contained">
              Back to my tests
            </Button>
          }
        />
      </Container>
    );
  }

  const percentage = Number(result.percentage ?? 0);
  const verdict = verdictFor(percentage);
  const accuracy = counts.total ? Math.round((counts.correct / counts.total) * 100) : 0;
  const negativeMarking = Math.round(counts.incorrect * 0.66 * 100) / 100;
  const timeTaken = result.timeTakenMinutes;

  return (
    <Container maxWidth="lg" sx={{ py: { xs: 4, md: 6 } }}>
      {/* ------------------------------------------------------------ Hero */}
      <PaperHero result={result} percentage={percentage} verdict={verdict}>
        <ScoreDonut value={percentage} size={168} caption="of maximum" />
      </PaperHero>

      {/* ----------------------------------------------------------- Stats */}
      <Grid container spacing={2} sx={{ mt: 1 }}>
        <Grid size={{ xs: 12, sm: 6, md: 3 }}>
          <StatCard
            icon={<CheckCircleRoundedIcon />}
            label="Correct"
            value={counts.correct}
            caption={`${accuracy}% accuracy`}
            accent="success.main"
          />
        </Grid>
        <Grid size={{ xs: 12, sm: 6, md: 3 }}>
          <StatCard
            icon={<CancelRoundedIcon />}
            label="Incorrect"
            value={counts.incorrect}
            caption={`−${negativeMarking} marks`}
            accent="error.main"
          />
        </Grid>
        <Grid size={{ xs: 12, sm: 6, md: 3 }}>
          <StatCard
            icon={<RemoveCircleRoundedIcon />}
            label="Skipped"
            value={counts.unanswered}
            caption="0 marks"
            accent="warning.main"
          />
        </Grid>
        <Grid size={{ xs: 12, sm: 6, md: 3 }}>
          <StatCard
            icon={<ScheduleRoundedIcon />}
            label="Time taken"
            value={timeTaken !== null ? `${timeTaken} min` : '—'}
            caption={`of ${result.durationMinutes || 120} min allowed`}
            accent="primary.main"
          />
        </Grid>
      </Grid>

      {/* ---------------------------------------------------------- Charts */}
      <Grid container spacing={2} sx={{ mt: 1 }}>
        <Grid size={{ xs: 12, md: 6 }}>
          <Card variant="outlined" sx={{ height: '100%', borderRadius: '24px' }}>
            <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
              <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center', mb: 2 }}>
                <InsightsRoundedIcon sx={{ color: 'primary.main' }} />
                <Box>
                  <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary', lineHeight: 1.2 }}>
                    Subject-wise accuracy
                  </Typography>
                  <Typography variant="caption" color="text.secondary">
                    Share of questions answered correctly
                  </Typography>
                </Box>
              </Stack>
              {bySubject.length ? (
                <SubjectBars data={bySubject} />
              ) : (
                <Typography variant="body2" color="text.secondary">
                  No subject data available for this attempt.
                </Typography>
              )}
            </CardContent>
          </Card>
        </Grid>

        <Grid size={{ xs: 12, md: 6 }}>
          <Card variant="outlined" sx={{ height: '100%', borderRadius: '24px' }}>
            <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
              <Stack direction="row" spacing={1.25} sx={{ alignItems: 'center', mb: 2 }}>
                <EmojiEventsRoundedIcon sx={{ color: 'warning.main' }} />
                <Box>
                  <Typography variant="h6" sx={{ fontWeight: 600, color: 'text.primary', lineHeight: 1.2 }}>
                    Your score trend
                  </Typography>
                  <Typography variant="caption" color="text.secondary">
                    Percentage across recent papers
                  </Typography>
                </Box>
              </Stack>
              {trend.length > 1 ? (
                <TrendChart data={trend} height={236} />
              ) : (
                <Box sx={{ py: 4, textAlign: 'center' }}>
                  <Typography variant="body2" color="text.secondary">
                    Attempt another paper to see your trend over time.
                  </Typography>
                </Box>
              )}
            </CardContent>
          </Card>
        </Grid>
      </Grid>

      {/* --------------------------------------------------------- Review */}
      <Card variant="outlined" sx={{ mt: 2, borderRadius: '24px' }}>
        <CardContent sx={{ p: { xs: 2.5, md: 3.5 }, '&:last-child': { pb: { xs: 2.5, md: 3.5 } } }}>
          <Stack
            direction={{ xs: 'column', md: 'row' }}
            spacing={2}
            sx={{
              justifyContent: 'space-between',
              alignItems: { xs: 'stretch', md: 'center' },
              mb: 2.5,
            }}
          >
            <Box>
              <Typography variant="h5" sx={{ fontWeight: 600, color: 'text.primary' }}>
                Answer review
              </Typography>
              <Typography variant="body2" color="text.secondary">
                The correct answer and an explanation for every question.
              </Typography>
            </Box>
            <ToggleButtonGroup
              exclusive
              size="small"
              value={filter}
              onChange={(_, value) => value && setFilter(value)}
              aria-label="Filter questions"
            >
              {FILTERS.map((item) => (
                <ToggleButton key={item.value} value={item.value}>
                  {item.label}
                  {item.value !== 'all' && (
                    <Box component="span" sx={{ ml: 0.75, opacity: 0.6, fontSize: 12 }}>
                      {item.value === 'correct'
                        ? counts.correct
                        : item.value === 'incorrect'
                          ? counts.incorrect
                          : counts.unanswered}
                    </Box>
                  )}
                </ToggleButton>
              ))}
            </ToggleButtonGroup>
          </Stack>

          <Stack spacing={1.25}>
            {filtered.map((item, index) => (
              <Accordion key={item.question_id || index} disableGutters>
                <AccordionSummary expandIcon={<ExpandMoreRoundedIcon />}>
                  <Stack direction="row" spacing={1.5} sx={{ alignItems: 'center', width: '100%', minWidth: 0 }}>
                    <StatusIcon correct={item.is_correct} answered={Boolean(item.selected_label)} />
                    <Box sx={{ minWidth: 0, flexGrow: 1 }}>
                      <Typography variant="subtitle2" sx={{ fontWeight: 600, color: 'text.primary' }} noWrap>
                        Q{item.position ?? index + 1}. {item.question_text}
                      </Typography>
                      <Typography variant="caption" color="text.secondary">
                        {item.subject} · your answer {item.selected_label || 'not answered'}
                      </Typography>
                    </Box>
                    <Chip
                      size="small"
                      label={item.is_correct ? 'Correct' : item.selected_label ? 'Wrong' : 'Skipped'}
                      sx={{
                        display: { xs: 'none', sm: 'inline-flex' },
                        bgcolor: item.is_correct
                          ? (theme) => alpha(theme.palette.success.main, 0.12)
                          : item.selected_label
                            ? (theme) => alpha(theme.palette.error.main, 0.1)
                            : 'action.hover',
                        color: item.is_correct
                          ? 'success.main'
                          : item.selected_label
                            ? 'error.main'
                            : 'text.secondary',
                      }}
                    />
                  </Stack>
                </AccordionSummary>
                <AccordionDetails>
                  <Stack spacing={2}>
                    <Box>
                      <Typography variant="caption" sx={{ fontWeight: 700, color: 'text.secondary' }}>
                        QUESTION
                      </Typography>
                      <Typography variant="body2" sx={{ color: 'text.primary', mt: 0.5, lineHeight: 1.7 }}>
                        {item.question_text}
                      </Typography>
                    </Box>

                    <Box>
                      <Typography variant="caption" sx={{ fontWeight: 700, color: 'text.secondary' }}>
                        CORRECT ANSWER
                      </Typography>
                      <Stack direction="row" spacing={1} sx={{ alignItems: 'center', mt: 0.5 }}>
                        <Chip
                          label={item.correct_label}
                          size="small"
                          sx={{ bgcolor: 'success.main', color: '#fff', fontWeight: 700, width: 30 }}
                        />
                        <Typography variant="body2" sx={{ color: 'text.primary' }}>
                          {item.options?.find((option) => option.label === item.correct_label)?.option_text ||
                            '—'}
                        </Typography>
                      </Stack>
                    </Box>

                    {item.selected_label && !item.is_correct && (
                      <Box>
                        <Typography variant="caption" sx={{ fontWeight: 700, color: 'text.secondary' }}>
                          YOUR ANSWER
                        </Typography>
                        <Stack direction="row" spacing={1} sx={{ alignItems: 'center', mt: 0.5 }}>
                          <Chip
                            label={item.selected_label}
                            size="small"
                            sx={{ bgcolor: 'error.main', color: '#fff', fontWeight: 700, width: 30 }}
                          />
                          <Typography variant="body2" sx={{ color: 'text.primary' }}>
                            {item.options?.find((option) => option.label === item.selected_label)
                              ?.option_text || '—'}
                          </Typography>
                        </Stack>
                      </Box>
                    )}

                    {item.explanation && (
                      <Box
                        sx={{
                          p: 2,
                          borderRadius: '16px',
                          bgcolor: (theme) => alpha(theme.palette.primary.main, 0.06),
                        }}
                      >
                        <Typography variant="caption" sx={{ fontWeight: 700, color: 'primary.main' }}>
                          EXPLANATION
                        </Typography>
                        <Typography variant="body2" sx={{ color: 'text.primary', mt: 0.5, lineHeight: 1.75 }}>
                          {item.explanation}
                        </Typography>
                      </Box>
                    )}

                    {(item.source || item.year) && (
                      <Typography variant="caption" color="text.secondary">
                        Source: {item.source}
                        {item.year ? `, ${item.year}` : ''}
                      </Typography>
                    )}
                  </Stack>
                </AccordionDetails>
              </Accordion>
            ))}
          </Stack>

          {!filtered.length && (
            <Box sx={{ py: 4, textAlign: 'center' }}>
              <Typography variant="body2" color="text.secondary">
                No questions in this category.
              </Typography>
            </Box>
          )}

          <Divider sx={{ my: 3 }} />
          <Stack direction={{ xs: 'column', sm: 'row' }} spacing={1.5} sx={{ justifyContent: 'center' }}>
            <Button
              component={RouterLink}
              to="/dashboard"
              variant="contained"
              endIcon={<ArrowForwardRoundedIcon />}
            >
              Take another test
            </Button>
            <Button
              component={RouterLink}
              to="/attempts"
              variant="outlined"
              color="inherit"
              sx={{ borderColor: 'divider' }}
            >
              View all attempts
            </Button>
          </Stack>
        </CardContent>
      </Card>
    </Container>
  );
};

const StatusIcon = ({ correct, answered }) => {
  if (correct) {
    return <CheckCircleRoundedIcon sx={{ color: 'success.main', fontSize: 22 }} />;
  }
  if (answered) {
    return <CancelRoundedIcon sx={{ color: 'error.main', fontSize: 22 }} />;
  }
  return <RemoveCircleRoundedIcon sx={{ color: 'text.disabled', fontSize: 22 }} />;
};

const PaperHero = ({ result, percentage, verdict, children }) => (
  <Paper
    elevation={0}
    sx={{
      mb: 1,
      p: { xs: 3, md: 4.5 },
      borderRadius: '28px',
      bgcolor: INK,
      color: '#EAF2F1',
    }}
  >
    <Stack
      direction={{ xs: 'column', md: 'row' }}
      spacing={4}
      sx={{ alignItems: { xs: 'flex-start', md: 'center' }, justifyContent: 'space-between' }}
    >
      <Box>
        <Chip
          label={verdict.label}
          size="small"
          sx={{ bgcolor: 'rgba(255,255,255,0.12)', color: verdict.color, fontWeight: 700, mb: 2 }}
        />
        <Typography
          className="tabular"
          sx={{
            fontFamily: '"Fraunces Variable", Georgia, serif',
            fontWeight: 600,
            fontSize: { xs: '2rem', md: '2.6rem' },
            lineHeight: 1.15,
            color: '#FFFFFF',
            mb: 1,
          }}
        >
          {result.score} / {result.maxScore} marks
        </Typography>
        <Typography sx={{ color: 'rgba(234, 242, 241, 0.72)', maxWidth: 460, lineHeight: 1.7 }}>
          {percentage.toFixed(1)}% of the maximum score — {result.correct} correct,{' '}
          {result.incorrect} incorrect and {result.unanswered} unattempted. Every question below is
          explained.
        </Typography>
        <Typography
          variant="caption"
          sx={{ color: 'rgba(234, 242, 241, 0.5)', display: 'block', mt: 2 }}
        >
          Attempted on{' '}
          {new Date(result.startedAt).toLocaleString('en-IN', {
            day: '2-digit',
            month: 'short',
            year: 'numeric',
            hour: '2-digit',
            minute: '2-digit',
          })}
        </Typography>
      </Box>
      <Box sx={{ bgcolor: 'background.paper', borderRadius: '20px', p: 2 }}>
        {children}
      </Box>
    </Stack>
  </Paper>
);

export default Result;
