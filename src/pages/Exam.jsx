import { useCallback, useEffect, useMemo, useRef, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import {
  AlertTriangle,
  ChevronLeft,
  ChevronRight,
  Flag,
  LayoutGrid,
  Loader2,
  X,
} from 'lucide-react';
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

  /* ------------------------------------------------------------- submit */
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

  /* Keep a stable handle to the latest submit handler for the timer. */
  useEffect(() => {
    submitRef.current = handleSubmit;
  }, [handleSubmit]);

  /* ------------------------------------------------------------- timer */
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
      localStorage.setItem(
        `${STORAGE_PREFIX}${attemptId}`,
        JSON.stringify({ answers, marked })
      );
    } catch {
      /* storage full or unavailable */
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

  /* ------------------------------------------------------------ derived */
  const answeredCount = Object.keys(answers).length;
  const markedCount = Object.keys(marked).filter((id) => marked[id]).length;
  const unansweredCount = questions.length - answeredCount;
  const question = questions[current];
  const isCurrentAnswered = Boolean(question && answers[question.id]);
  const isCurrentMarked = Boolean(question && marked[question.id]);

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
      <div className="min-h-[60vh] flex items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-blue-600" />
      </div>
    );
  }

  if (error && !questions.length) {
    return (
      <div className="max-w-2xl mx-auto px-4 py-20 text-center">
        <AlertTriangle className="h-10 w-10 text-amber-500 mx-auto mb-4" />
        <h1 className="text-xl font-semibold text-slate-900 mb-2">Exam unavailable</h1>
        <p className="text-slate-600 mb-6">{error}</p>
        <button
          type="button"
          onClick={() => navigate('/dashboard')}
          className="px-5 py-2.5 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700"
        >
          Back to dashboard
        </button>
      </div>
    );
  }

  const paletteGrid = (
    <div className="flex flex-wrap gap-2">
      {palette.map((item) => {
        const styles = {
          answered: 'bg-emerald-600 text-white border-emerald-600',
          marked: 'bg-amber-500 text-white border-amber-500',
          unanswered: 'bg-white text-slate-700 border-slate-300',
        };
        return (
          <button
            key={item.id}
            type="button"
            onClick={() => goTo(item.index)}
            aria-label={`Question ${item.index + 1}, ${item.state}`}
            className={`h-9 w-9 rounded-lg border text-sm font-medium ${styles[item.state]} ${
              item.index === current ? 'ring-2 ring-blue-500 ring-offset-1' : ''
            }`}
          >
            {item.index + 1}
          </button>
        );
      })}
    </div>
  );

  const paletteSummary = (
    <dl className="space-y-1.5 text-sm border-t border-slate-100 pt-4">
      <div className="flex justify-between">
        <dt className="text-slate-500">Answered</dt>
        <dd className="font-semibold text-emerald-700">{answeredCount}</dd>
      </div>
      <div className="flex justify-between">
        <dt className="text-slate-500">Not answered</dt>
        <dd className="font-semibold text-slate-700">{unansweredCount}</dd>
      </div>
      <div className="flex justify-between">
        <dt className="text-slate-500">Marked for review</dt>
        <dd className="font-semibold text-amber-600">{markedCount}</dd>
      </div>
    </dl>
  );

  return (
    <div className="min-h-screen bg-slate-100 pb-28">
      {/* Header */}
      <header className="sticky top-0 z-30 bg-white border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6 py-3 flex items-center justify-between gap-4">
          <div>
            <p className="text-xs uppercase tracking-wide text-slate-500 font-medium">Question</p>
            <p className="text-sm font-semibold text-slate-900">
              {current + 1} of {questions.length}
            </p>
          </div>
          <div className="flex items-center gap-4">
            <div className="text-right">
              <p className="text-xs uppercase tracking-wide text-slate-500 font-medium">Time left</p>
              <p
                className={`text-lg font-bold tabular-nums ${
                  remaining <= 300 ? 'text-rose-600' : 'text-slate-900'
                }`}
              >
                {formatTime(remaining)}
              </p>
            </div>
            <button
              type="button"
              onClick={() => setConfirming(true)}
              className="px-4 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700 disabled:opacity-60"
              disabled={submitting}
            >
              Submit
            </button>
          </div>
        </div>
        <div className="h-1 bg-slate-100">
          <div
            className="h-1 bg-blue-600 transition-all"
            style={{
              width: `${questions.length ? ((current + 1) / questions.length) * 100 : 0}%`,
            }}
          />
        </div>
      </header>

      {notice && (
        <div className="max-w-6xl mx-auto px-4 sm:px-6 pt-4">
          <div className="rounded-lg bg-amber-50 text-amber-800 text-sm px-4 py-3 flex items-start gap-2">
            <AlertTriangle className="h-5 w-5 mt-0.5 flex-shrink-0" />
            <span>{notice}</span>
          </div>
        </div>
      )}

      <div className="max-w-6xl mx-auto px-4 sm:px-6 py-6 grid lg:grid-cols-3 gap-6">
        {/* Question */}
        <main className="lg:col-span-2">
          <div className="bg-white rounded-2xl border border-slate-200 shadow-sm p-5 sm:p-6">
            <div className="flex flex-wrap items-center gap-2 mb-4">
              <span className="text-xs font-semibold px-2.5 py-1 rounded-full bg-blue-50 text-blue-700">
                {question.subject}
              </span>
              {question.category && (
                <span className="text-xs font-medium px-2.5 py-1 rounded-full bg-slate-100 text-slate-600">
                  {question.category}
                </span>
              )}
              <span className="text-xs font-medium px-2.5 py-1 rounded-full bg-slate-100 text-slate-600 capitalize">
                {question.difficulty}
              </span>
              {question.source && (
                <span className="text-xs text-slate-400">
                  {question.source}
                  {question.year ? `, ${question.year}` : ''}
                </span>
              )}
            </div>

            <p className="text-[17px] leading-relaxed text-slate-900 font-medium mb-6">
              {question.question_text}
            </p>

            <div className="space-y-3">
              {LABELS.map((label) => {
                const option = question.options.find((item) => item.label === label);
                if (!option) return null;
                const selected = answers[question.id] === label;
                return (
                  <button
                    key={label}
                    type="button"
                    onClick={() => selectOption(label)}
                    className={`w-full text-left flex items-start gap-3 rounded-xl border p-4 transition ${
                      selected
                        ? 'border-blue-600 bg-blue-50 ring-1 ring-blue-600'
                        : 'border-slate-200 hover:border-blue-300 hover:bg-slate-50'
                    }`}
                  >
                    <span
                      className={`h-7 w-7 rounded-full border flex items-center justify-center text-sm font-bold flex-shrink-0 ${
                        selected ? 'bg-blue-600 border-blue-600 text-white' : 'border-slate-300 text-slate-500'
                      }`}
                    >
                      {label}
                    </span>
                    <span className="text-[15px] text-slate-800 leading-relaxed">{option.option_text}</span>
                  </button>
                );
              })}
            </div>

            <div className="mt-5 flex flex-wrap items-center justify-between gap-3 border-t border-slate-100 pt-4">
              <div className="flex items-center gap-4">
                <button
                  type="button"
                  onClick={toggleMark}
                  className={`inline-flex items-center gap-2 text-sm font-medium ${
                    isCurrentMarked ? 'text-amber-600' : 'text-slate-500 hover:text-slate-700'
                  }`}
                >
                  <Flag className="h-4 w-4" />
                  {isCurrentMarked ? 'Marked for review' : 'Mark for review'}
                </button>
                {isCurrentAnswered && (
                  <button
                    type="button"
                    onClick={clearResponse}
                    className="text-sm font-medium text-slate-500 hover:text-rose-600"
                  >
                    Clear response
                  </button>
                )}
              </div>

              <div className="flex gap-2">
                <button
                  type="button"
                  onClick={() => goTo(current - 1)}
                  disabled={current === 0}
                  className="inline-flex items-center px-4 py-2 rounded-lg border border-slate-200 text-sm font-medium text-slate-700 hover:bg-slate-50 disabled:opacity-40"
                >
                  <ChevronLeft className="h-4 w-4" /> Previous
                </button>
                <button
                  type="button"
                  onClick={() => goTo(current + 1)}
                  disabled={current === questions.length - 1}
                  className="inline-flex items-center px-4 py-2 rounded-lg bg-slate-900 text-white text-sm font-medium hover:bg-slate-800 disabled:opacity-40"
                >
                  Save &amp; next <ChevronRight className="h-4 w-4" />
                </button>
              </div>
            </div>

            <p className="mt-3 text-xs text-slate-400 hidden sm:block">
              Shortcuts: A–D to answer, ←/→ to move, M to mark for review.
            </p>
          </div>
        </main>

        {/* Palette (desktop) */}
        <aside className="h-fit bg-white rounded-2xl border border-slate-200 shadow-sm p-5 hidden lg:block lg:sticky lg:top-24">
          <h2 className="font-semibold text-slate-900 mb-3">Question palette</h2>
          {paletteGrid}
          {paletteSummary}
          <p className="mt-3 text-xs text-slate-500">
            {isCurrentAnswered ? 'This question is answered.' : 'This question is not answered yet.'}
          </p>
        </aside>
      </div>

      {/* Mobile action bar */}
      <div className="fixed bottom-0 inset-x-0 lg:hidden bg-white border-t border-slate-200 px-4 py-3 flex items-center justify-between gap-3">
        <span className="text-sm text-slate-600">
          {answeredCount}/{questions.length} answered
        </span>
        <div className="flex items-center gap-2">
          <button
            type="button"
            onClick={() => setPaletteOpen(true)}
            className="inline-flex items-center gap-2 px-3 py-2 rounded-lg border border-slate-200 text-sm font-medium text-slate-700"
          >
            <LayoutGrid className="h-4 w-4" /> Palette
          </button>
          <button
            type="button"
            onClick={() => setConfirming(true)}
            className="px-5 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold"
          >
            Submit
          </button>
        </div>
      </div>

      {/* Mobile palette drawer */}
      {paletteOpen && (
        <div className="fixed inset-0 z-40 lg:hidden">
          <button
            type="button"
            aria-label="Close question palette"
            onClick={() => setPaletteOpen(false)}
            className="absolute inset-0 bg-black/50"
          />
          <div className="absolute inset-x-0 bottom-0 max-h-[80vh] overflow-y-auto bg-white rounded-t-2xl p-5 shadow-2xl">
            <div className="flex items-center justify-between mb-4">
              <h2 className="font-semibold text-slate-900">Question palette</h2>
              <button
                type="button"
                onClick={() => setPaletteOpen(false)}
                className="p-1.5 rounded-lg text-slate-500 hover:bg-slate-100"
                aria-label="Close"
              >
                <X className="h-5 w-5" />
              </button>
            </div>
            {paletteGrid}
            {paletteSummary}
            <button
              type="button"
              onClick={() => setPaletteOpen(false)}
              className="mt-5 w-full py-2.5 rounded-lg bg-slate-900 text-white text-sm font-semibold"
            >
              Continue the exam
            </button>
          </div>
        </div>
      )}

      {/* Confirm dialog */}
      {confirming && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 px-4">
          <div className="bg-white rounded-2xl shadow-xl w-full max-w-md p-6">
            <h3 className="text-lg font-semibold text-slate-900 mb-2">Submit the exam?</h3>
            <p className="text-sm text-slate-600 mb-4">
              You have answered <strong>{answeredCount}</strong> of {questions.length} questions
              {unansweredCount > 0 && (
                <>
                  {' '}
                  and left <strong>{unansweredCount}</strong> unanswered
                </>
              )}
              . Unanswered questions score zero and wrong answers carry a negative marking of −0.66.
            </p>
            {error && <p className="text-sm text-rose-600 mb-3">{error}</p>}
            <div className="flex justify-end gap-3">
              <button
                type="button"
                onClick={() => setConfirming(false)}
                className="px-4 py-2 rounded-lg border border-slate-200 text-sm font-medium text-slate-700 hover:bg-slate-50"
                disabled={submitting}
              >
                Keep writing
              </button>
              <button
                type="button"
                onClick={() => handleSubmit(false)}
                className="px-4 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700 disabled:opacity-60"
                disabled={submitting}
              >
                {submitting ? 'Submitting…' : 'Submit exam'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default Exam;
