import { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import Alert from '@mui/material/Alert';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Chip from '@mui/material/Chip';
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogTitle from '@mui/material/DialogTitle';
import Divider from '@mui/material/Divider';
import Drawer from '@mui/material/Drawer';
import IconButton from '@mui/material/IconButton';
import Stack from '@mui/material/Stack';
import Tooltip from '@mui/material/Tooltip';
import Typography from '@mui/material/Typography';
import { alpha } from '@mui/material/styles';
import ArrowBackRoundedIcon from '@mui/icons-material/ArrowBackRounded';
import ArrowForwardRoundedIcon from '@mui/icons-material/ArrowForwardRounded';
import CheckCircleRoundedIcon from '@mui/icons-material/CheckCircleRounded';
import CloseRoundedIcon from '@mui/icons-material/CloseRounded';
import FlagRoundedIcon from '@mui/icons-material/FlagRounded';
import GridOnRoundedIcon from '@mui/icons-material/GridOnRounded';
import HelpOutlineRoundedIcon from '@mui/icons-material/HelpOutlineRounded';
import ScheduleRoundedIcon from '@mui/icons-material/ScheduleRounded';
import TimerRoundedIcon from '@mui/icons-material/TimerRounded';
import { fetchAttemptQuestions, submitExam } from '../services/examService';

const LABELS = ['A', 'B', 'C', 'D'];
const STORAGE_PREFIX = 'swadharma:attempt:';

const formatTime = (seconds) => {
  const safe = Math.max(0, seconds);
  const hours = Math.floor(safe / 3600);
  const minutes = Math.floor((safe % 3600) / 60);
  const secs = safe % 60;
  if (hours > 0) {
    return `${hours}:${String(minutes).padStart(2, '0')}:${String(secs).padStart(2, '0')}`;
  }
  return `${String(minutes).padStart(2, '0')}:${String(secs).padStart(2, '0')}`;
};

const readCache = (key) => {
  try {
    const parsed = JSON.parse(localStorage.getItem(key) || '{}');
    return parsed && typeof parsed === 'object' ? parsed : {};
  } catch {
    return {};
  }
};

const PALETTE_STATES = {
  answered: { bg: '#16A34A', color: '#fff', label: 'Answered' },
  marked: { bg: '#F59E0B', color: '#fff', label: 'Marked for review' },
  unanswered: { bg: 'transparent', color: 'text.primary', label: 'Not answered' },
};

const Exam = () => {
  const { attemptId } = useParams();
  const navigate = useNavigate();

  const [attempt, setAttempt] = useState(null);
  const [questions, setQuestions] = useState([]);
  const [answers, setAnswers] = useState({});
  const [marked, setMarked] = useState({});
  const [current, setCurrent] = useState(0);
  const [remaining, setRemaining] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [notice, setNotice] = useState(null);
  const [confirming, setConfirming] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [paletteOpen, setPaletteOpen] = useState(false);
  const [helpOpen, setHelpOpen] = useState(false);
  const submittedRef = useRef(false);
  const remainingRef = useRef(0);
  const submitRef = useRef(null);

  /* ---------------------------------------------------------- load attempt */
  useEffect(() => {
    let active = true;
    fetchAttemptQuestions(attemptId)
      .then((data) => {
        if (!active) return;
        if (!data?.questions?.length) throw new Error('This attempt has no questions.');
        setAttempt(data);
        setQuestions(data.questions);
        const startedAt = data.started_at ? new Date(data.started_at).getTime() : Date.now();
        const total = (data.duration_minutes || 120) * 60;
        const left = Math.max(0, total - Math.floor((Date.now() - startedAt) / 1000));
        remainingRef.current = left;
        setRemaining(left);
        const cached = readCache(`${STORAGE_PREFIX}${attemptId}`);
        if (Object.keys(cached.answers || {}).length) setAnswers(cached.answers);
        if (Object.keys(cached.marked || {}).length) setMarked(cached.marked);
      })
      .catch((err) => {
        if (!active) return;
        if (/already been submitted/i.test(err.message || '')) {
          navigate(`/result/${attemptId}`, { replace: true });
          return;
        }
        setError(err.message || 'Could not load the exam.');
      })
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
  }, [attemptId, navigate]);

  /* -------------------------------------------------------------- submit */
  const handleSubmit = useCallback(
    async (auto = false) => {
      if (submittedRef.current) return;
      submittedRef.current = true;
      setSubmitting(true);
      setError(null);
      try {
        const result = await submitExam(attemptId, answers);
        localStorage.removeItem(`${STORAGE_PREFIX}${attemptId}`);
        navigate(`/result/${attemptId}`, { replace: true, state: { result } });
      } catch (err) {
        submittedRef.current = false;
        setSubmitting(false);
        setError(err.message || 'Could not submit the exam.');
        if (auto) setNotice('Time is over, but the paper could not be submitted. Please try again.');
        else setConfirming(false);
      }
    },
    [answers, attemptId, navigate]
  );

  useEffect(() => {
    submitRef.current = handleSubmit;
  }, [handleSubmit]);

  /* --------------------------------------------------------------- timer */
  useEffect(() => {
    if (!attempt) return undefined;
    const timer = setInterval(() => {
      const next = Math.max(0, remainingRef.current - 1);
      remainingRef.current = next;
      setRemaining(next);
      if (next === 0 && !submittedRef.current) {
        clearInterval(timer);
        setNotice('Time is over. Your paper is being submitted automatically.');
        submitRef.current(true);
      }
    }, 1000);
    return () => clearInterval(timer);
  }, [attempt]);

  /* --------------------------------------------------- persist the answers */
  useEffect(() => {
    if (!attemptId) return;
    try {
      localStorage.setItem(`${STORAGE_PREFIX}${attemptId}`, JSON.stringify({ answers, marked }));
    } catch {
      /* storage unavailable */
    }
  }, [answers, marked, attemptId]);

  /* --------------------------------------------- guard against losing work */
  useEffect(() => {
    const handler = (event) => {
      if (submittedRef.current) return undefined;
      event.preventDefault();
      event.returnValue = '';
      return '';
    };
    window.addEventListener('beforeunload', handler);
    return () => window.removeEventListener('beforeunload', handler);
  }, []);

  /* ------------------------------------------------------------- actions */
  const selectOption = useCallback(
    (label) => {
      const question = questions[current];
      if (!question) return;
      setAnswers((prev) => ({ ...prev, [question.id]: label }));
    },
    [questions, current]
  );

  const clearResponse = useCallback(() => {
    const question = questions[current];
    if (!question) return;
    setAnswers((prev) => {
      if (!(question.id in prev)) return prev;
      const next = { ...prev };
      delete next[question.id];
      return next;
    });
  }, [questions, current]);

  const toggleMark = useCallback(() => {
    const question = questions[current];
    if (!question) return;
    setMarked((prev) => ({ ...prev, [question.id]: !prev[question.id] }));
  }, [questions, current]);

  const goTo = useCallback(
    (index) => {
      setCurrent(Math.max(0, Math.min(questions.length - 1, index)));
      setPaletteOpen(false);
    },
    [questions.length]
  );

  /* ---------------------------------------------------- keyboard control */
  useEffect(() => {
    const onKeyDown = (event) => {
      if (event.metaKey || event.ctrlKey || event.altKey) return;
      const target = event.target;
      const tag = target?.tagName;
      if (tag === 'INPUT' || tag === 'TEXTAREA' || target?.isContentEditable) return;
      if (confirming || submitting) return;

      const key = event.key.toLowerCase();
      if (key === 'a' || key === 'b' || key === 'c' || key === 'd') {
        event.preventDefault();
        selectOption(key.toUpperCase());
      } else if (event.key === 'ArrowRight') {
        event.preventDefault();
        goTo(current + 1);
      } else if (event.key === 'ArrowLeft') {
        event.preventDefault();
        goTo(current - 1);
      } else if (key === 'm') {
        event.preventDefault();
        toggleMark();
      }
    };
    window.addEventListener('keydown', onKeyDown);
    return () => window.removeEventListener('keydown', onKeyDown);
  }, [confirming, submitting, current, selectOption, goTo, toggleMark]);

  /* ------------------------------------------------------------- derived */
  const answeredCount = Object.keys(answers).length;
  const markedCount = Object.keys(marked).filter((id) => marked[id]).length;
  const unansweredCount = questions.length - answeredCount;
  const question = questions[current];
  const isCurrentAnswered = Boolean(question && answers[question.id]);
  const isCurrentMarked = Boolean(question && marked[question.id]);
  const urgent = remaining <= 300;

  const palette = useMemo(
    () =>
      questions.map((item, index) => {
        const state = answers[item.id] ? 'answered' : marked[item.id] ? 'marked' : 'unanswered';
        return { id: item.id, index, state };
      }),
    [questions, answers, marked]
  );

  if (loading) {
    return (
      <Box sx={{ minHeight: '60vh', display: 'grid', placeItems: 'center' }}>
        <Stack spacing={2} sx={{ alignItems: 'center' }}>
          <Box
            sx={{
              width: 46,
              height: 46,
              borderRadius: '50%',
              border: '3px solid',
              borderColor: (theme) => alpha(theme.palette.primary.main, 0.2),
              borderTopColor: 'primary.main',
              animation: 'spin 900ms linear infinite',
              '@keyframes spin': { to: { transform: 'rotate(360deg)' } },
            }}
          />
          <Typography variant="body2" color="text.secondary">
            Preparing your paper…
          </Typography>
        </Stack>
      </Box>
    );
  }

  if (error && !questions.length) {
    return (
      <Box sx={{ minHeight: '60vh', display: 'grid', placeItems: 'center', px: 2 }}>
        <Card sx={{ maxWidth: 480, textAlign: 'center' }}>
          <CardContent sx={{ p: 4 }}>
            <TimerRoundedIcon sx={{ fontSize: 44, color: 'warning.main', mb: 1.5 }} />
            <Typography variant="h5" sx={{ fontWeight: 700, color: 'text.primary', mb: 1 }}>
              Exam unavailable
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
              {error}
            </Typography>
            <Button variant="contained" onClick={() => navigate('/dashboard')}>
              Back to dashboard
            </Button>
          </CardContent>
        </Card>
      </Box>
    );
  }

  const PaletteGrid = ({ compact = false }) => (
    <Box>
      <Box
        role="group"
        aria-label="Question palette"
        sx={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(44px, 1fr))', gap: 1 }}
      >
        {palette.map((item) => {
          const state = PALETTE_STATES[item.state];
          const isCurrent = item.index === current;
          return (
            <Button
              key={item.id}
              onClick={() => goTo(item.index)}
              aria-label={`Question ${item.index + 1}, ${state.label}`}
              aria-current={isCurrent ? 'true' : undefined}
              sx={{
                minWidth: 44,
                height: 44,
                p: 0,
                borderRadius: 2.5,
                fontWeight: 700,
                fontSize: 14,
                color: state.color,
                bgcolor: state.bg,
                border: '1.5px solid',
                borderColor: item.state === 'unanswered' ? 'divider' : state.bg,
                boxShadow: isCurrent ? `0 0 0 3px ${alpha('#4F46E5', 0.35)}` : 'none',
                '&:hover': { filter: 'brightness(0.94)' },
              }}
            >
              {item.index + 1}
            </Button>
          );
        })}
      </Box>

      {!compact && (
        <>
          <Divider sx={{ my: 2.5 }} />
          <Stack spacing={1}>
            {[
              { label: 'Answered', value: answeredCount, color: '#16A34A' },
              { label: 'Not answered', value: unansweredCount, color: 'text.disabled' },
              { label: 'Marked for review', value: markedCount, color: '#F59E0B' },
            ].map((row) => (
              <Stack key={row.label} direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center' }}>
                <Stack direction="row" spacing={1} sx={{ alignItems: 'center' }}>
                  <Box sx={{ width: 12, height: 12, borderRadius: '50%', bgcolor: row.color }} />
                  <Typography variant="caption" color="text.secondary">
                    {row.label}
                  </Typography>
                </Stack>
                <Typography variant="caption" sx={{ fontWeight: 700, color: 'text.primary' }}>
                  {row.value}
                </Typography>
              </Stack>
            ))}
          </Stack>
        </>
      )}
    </Box>
  );

  return (
    <Box sx={{ minHeight: '100vh', bgcolor: 'background.default', pb: { xs: 10, md: 4 } }}>
      {/* ------------------------------------------------------------ Header */}
      <Box
        sx={{
          position: 'sticky',
          top: 0,
          zIndex: 20,
          bgcolor: 'background.paper',
          borderBottom: '1px solid',
          borderColor: 'divider',
        }}
      >
        <Box sx={{ maxWidth: 1400, mx: 'auto', px: { xs: 2, md: 3 }, py: 1.5 }}>
          <Stack direction="row" spacing={2} sx={{ alignItems: 'center' }}>
            <Stack direction="row" spacing={1.5} sx={{ alignItems: 'center', minWidth: 0 }}>
              <IconButton
                onClick={() => setPaletteOpen(true)}
                aria-label="Open question palette"
                sx={{ display: { md: 'none' } }}
              >
                <GridOnRoundedIcon />
              </IconButton>
              <Box sx={{ minWidth: 0 }}>
                <Typography variant="caption" color="text.secondary" sx={{ fontWeight: 600 }}>
                  Question {current + 1} of {questions.length}
                </Typography>
                <Typography
                  variant="h6"
                  sx={{ fontWeight: 700, color: 'text.primary', lineHeight: 1.2, display: { xs: 'none', sm: 'block' } }}
                >
                  {attempt?.config?.subject_slugs?.length
                    ? `${attempt.config.subject_slugs.length} subject paper`
                    : 'Prelims paper'}
                </Typography>
              </Box>
            </Stack>

            <Box sx={{ flexGrow: 1 }} />

            <Tooltip title="Keyboard shortcuts">
              <IconButton onClick={() => setHelpOpen(true)} aria-label="Keyboard shortcuts" size="small">
                <HelpOutlineRoundedIcon fontSize="small" />
              </IconButton>
            </Tooltip>

            <Stack
              direction="row"
              spacing={1}
              
              sx={{ alignItems: 'center',
                px: 1.75,
                py: 0.75,
                borderRadius: 3,
                bgcolor: urgent ? (theme) => alpha(theme.palette.error.main, 0.12) : 'action.hover',
                color: urgent ? 'error.main' : 'text.primary',
              }}
            >
              <ScheduleRoundedIcon sx={{ fontSize: 18 }} />
              <Typography sx={{ fontWeight: 700, fontVariantNumeric: 'tabular-nums', fontSize: 15 }}>
                {formatTime(remaining)}
              </Typography>
            </Stack>

            <Button variant="contained" onClick={() => setConfirming(true)} disabled={submitting} size="small">
              Submit
            </Button>
          </Stack>

          <Box sx={{ mt: 1.5, height: 6, borderRadius: 999, bgcolor: 'action.hover', overflow: 'hidden' }}>
            <Box
              sx={{
                height: '100%',
                width: `${questions.length ? ((current + 1) / questions.length) * 100 : 0}%`,
                background: 'linear-gradient(90deg,#4F46E5,#7C3AED)',
                transition: 'width 300ms ease',
              }}
            />
          </Box>
        </Box>
      </Box>

      {notice && (
        <Box sx={{ maxWidth: 1400, mx: 'auto', px: { xs: 2, md: 3 }, pt: 2 }}>
          <Alert severity="warning">{notice}</Alert>
        </Box>
      )}

      <Box sx={{ maxWidth: 1400, mx: 'auto', px: { xs: 2, md: 3 }, py: 3 }}>
        <Box sx={{ display: 'grid', gridTemplateColumns: { xs: '1fr', md: 'minmax(0,1fr) 320px' }, gap: 3 }}>
          {/* ------------------------------------------------------ Question */}
          <Card sx={{ alignSelf: 'start' }}>
            <CardContent sx={{ p: { xs: 2.5, md: 4 }, '&:last-child': { pb: { xs: 2.5, md: 4 } } }}>
              <Stack direction="row" gap={1} sx={{ flexWrap: 'wrap', mb: 2.5 }}>
                {question.subject && (
                  <Chip
                    label={question.subject}
                    size="small"
                    sx={{ bgcolor: (theme) => alpha(theme.palette.primary.main, 0.12), color: 'primary.main' }}
                  />
                )}
                {question.category && (
                  <Chip label={question.category} size="small" variant="outlined" />
                )}
                <Chip label={question.difficulty} size="small" variant="outlined" sx={{ textTransform: 'capitalize' }} />
                {(question.source || question.year) && (
                  <Typography variant="caption" color="text.secondary" sx={{ alignSelf: 'center' }}>
                    {question.source}
                    {question.year ? `, ${question.year}` : ''}
                  </Typography>
                )}
              </Stack>

              <Typography
                sx={{
                  fontSize: { xs: '1.05rem', md: '1.2rem' },
                  fontWeight: 600,
                  lineHeight: 1.65,
                  color: 'text.primary',
                  mb: 3,
                }}
              >
                {question.question_text}
              </Typography>

              <Stack spacing={1.5}>
                {LABELS.map((label) => {
                  const option = question.options.find((item) => item.label === label);
                  if (!option) return null;
                  const selected = answers[question.id] === label;
                  return (
                    <Paper
                      key={label}
                      component="button"
                      type="button"
                      onClick={() => selectOption(label)}
                      aria-pressed={selected}
                      sx={{
                        p: { xs: 1.5, md: 2 },
                        display: 'flex',
                        alignItems: 'center',
                        gap: 1.75,
                        textAlign: 'left',
                        cursor: 'pointer',
                        borderRadius: 3,
                        border: '1.5px solid',
                        borderColor: selected ? 'primary.main' : 'divider',
                        bgcolor: selected ? (theme) => alpha(theme.palette.primary.main, 0.07) : 'background.paper',
                        transition: 'all 180ms ease',
                        font: 'inherit',
                        '&:hover': {
                          borderColor: 'primary.main',
                          transform: 'translateX(2px)',
                        },
                      }}
                    >
                      <Box
                        sx={{
                          width: 38,
                          height: 38,
                          borderRadius: '50%',
                          display: 'grid',
                          placeItems: 'center',
                          fontWeight: 800,
                          fontSize: 15,
                          flexShrink: 0,
                          border: '1.5px solid',
                          borderColor: selected ? 'primary.main' : 'divider',
                          bgcolor: selected ? 'primary.main' : 'transparent',
                          color: selected ? '#fff' : 'text.secondary',
                        }}
                      >
                        {label}
                      </Box>
                      <Typography sx={{ fontSize: '0.98rem', color: 'text.primary', lineHeight: 1.6 }}>
                        {option.option_text}
                      </Typography>
                    </Paper>
                  );
                })}
              </Stack>

              <Divider sx={{ my: 3 }} />

              <Stack
                direction={{ xs: 'column', sm: 'row' }}
                
                
                spacing={1.5} sx={{ justifyContent: 'space-between', alignItems: { xs: 'stretch', sm: 'center' } }}>
                <Stack direction="row" spacing={2}>
                  <Button
                    onClick={toggleMark}
                    size="small"
                    startIcon={<FlagRoundedIcon />}
                    sx={{ color: isCurrentMarked ? 'warning.main' : 'text.secondary' }}
                  >
                    {isCurrentMarked ? 'Marked for review' : 'Mark for review'}
                  </Button>
                  {isCurrentAnswered && (
                    <Button onClick={clearResponse} size="small" sx={{ color: 'text.secondary' }}>
                      Clear response
                    </Button>
                  )}
                </Stack>

                <Stack direction="row" spacing={1}>
                  <Button
                    variant="outlined"
                    color="inherit"
                    onClick={() => goTo(current - 1)}
                    disabled={current === 0}
                    startIcon={<ArrowBackRoundedIcon />}
                    sx={{ borderColor: 'divider' }}
                  >
                    Previous
                  </Button>
                  <Button
                    variant="contained"
                    onClick={() => goTo(current + 1)}
                    disabled={current === questions.length - 1}
                    endIcon={<ArrowForwardRoundedIcon />}
                  >
                    Save &amp; next
                  </Button>
                </Stack>
              </Stack>

              <Typography variant="caption" color="text.secondary" sx={{ display: { xs: 'none', sm: 'block' }, mt: 2 }}>
                Shortcuts — A to D answer · ← and → move between questions · M marks for review
              </Typography>
            </CardContent>
          </Card>

          {/* ------------------------------------------------------- Palette */}
          <Box sx={{ display: { xs: 'none', md: 'block' } }}>
            <Card sx={{ position: 'sticky', top: 96 }}>
              <CardContent sx={{ p: 3, '&:last-child': { pb: 3 } }}>
                <Typography variant="subtitle1" sx={{ fontWeight: 700, color: 'text.primary', mb: 2 }}>
                  Question palette
                </Typography>
                <PaletteGrid />
                <Button
                  fullWidth
                  variant="contained"
                  onClick={() => setConfirming(true)}
                  sx={{ mt: 2.5 }}
                  startIcon={<CheckCircleRoundedIcon />}
                >
                  Submit paper
                </Button>
              </CardContent>
            </Card>
          </Box>
        </Box>
      </Box>

      {/* ------------------------------------------------- Mobile palette */}
      <Drawer
        anchor="right"
        open={paletteOpen}
        onClose={() => setPaletteOpen(false)}
        slotProps={{ paper: { sx: { width: { xs: '92%', sm: 360 }, p: 2.5 } } }}
      >
        <Stack direction="row" sx={{ justifyContent: 'space-between', alignItems: 'center', mb: 2 }}>
          <Typography variant="h6" sx={{ fontWeight: 700 }}>
            Question palette
          </Typography>
          <IconButton onClick={() => setPaletteOpen(false)} aria-label="Close palette">
            <CloseRoundedIcon />
          </IconButton>
        </Stack>
        <PaletteGrid />
        <Button fullWidth variant="contained" onClick={() => setConfirming(true)} sx={{ mt: 2.5 }}>
          Submit paper
        </Button>
      </Drawer>

      {/* ------------------------------------------------- Mobile action bar */}
      <Box
        sx={{
          display: { xs: 'flex', md: 'none' },
          position: 'fixed',
          bottom: 0,
          insetInline: 0,
          zIndex: 15,
          alignItems: 'center',
          justifyContent: 'space-between',
          gap: 1.5,
          px: 2,
          py: 1.25,
          bgcolor: 'background.paper',
          borderTop: '1px solid',
          borderColor: 'divider',
        }}
      >
        <Typography variant="caption" color="text.secondary" sx={{ fontWeight: 600 }}>
          {answeredCount}/{questions.length} answered
        </Typography>
        <Stack direction="row" spacing={1}>
          <Button variant="outlined" color="inherit" onClick={() => setPaletteOpen(true)} sx={{ borderColor: 'divider' }}>
            Palette
          </Button>
          <Button variant="contained" onClick={() => setConfirming(true)}>
            Submit
          </Button>
        </Stack>
      </Box>

      {/* ------------------------------------------------------ Confirm */}
      <Dialog open={confirming} onClose={() => setConfirming(false)} maxWidth="xs" fullWidth>
        <DialogTitle sx={{ fontWeight: 700, pb: 1 }}>
          Submit the exam?
        </DialogTitle>
        <DialogContent>
          <Typography variant="body2" color="text.secondary" sx={{ lineHeight: 1.75 }}>
            You have answered <strong>{answeredCount}</strong> of {questions.length} questions
            {unansweredCount > 0 && (
              <>
                {' '}and left <strong>{unansweredCount}</strong> unanswered
              </>
            )}
            . Unanswered questions score zero and wrong answers carry a negative marking of −0.66.
          </Typography>
          {error && (
            <Alert severity="error" sx={{ mt: 2 }}>
              {error}
            </Alert>
          )}
        </DialogContent>
        <DialogActions sx={{ px: 3, pb: 2.5 }}>
          <Button onClick={() => setConfirming(false)} color="inherit" disabled={submitting}>
            Keep writing
          </Button>
          <Button variant="contained" onClick={() => handleSubmit(false)} disabled={submitting}>
            {submitting ? 'Submitting…' : 'Submit exam'}
          </Button>
        </DialogActions>
      </Dialog>

      {/* --------------------------------------------------- Shortcut help */}
      <Dialog open={helpOpen} onClose={() => setHelpOpen(false)} maxWidth="xs" fullWidth>
        <DialogTitle sx={{ fontWeight: 700 }}>Keyboard shortcuts</DialogTitle>
        <DialogContent>
          <Stack spacing={1.25}>
            {[
              ['A – D', 'Select the option for the current question'],
              ['← / →', 'Move to the previous or next question'],
              ['M', 'Mark the current question for review'],
            ].map(([keys, description]) => (
              <Stack key={keys} direction="row" spacing={2} sx={{ alignItems: 'center' }}>
                <Chip label={keys} size="small" sx={{ minWidth: 72, fontWeight: 700 }} />
                <Typography variant="body2" color="text.secondary">
                  {description}
                </Typography>
              </Stack>
            ))}
          </Stack>
        </DialogContent>
        <DialogActions sx={{ px: 3, pb: 2.5 }}>
          <Button onClick={() => setHelpOpen(false)}>Got it</Button>
        </DialogActions>
      </Dialog>
    </Box>
  );
};

export default Exam;
