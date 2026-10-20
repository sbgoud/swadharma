import { useCallback, useEffect, useRef, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { AlertTriangle, ChevronLeft, ChevronRight, Flag, Loader2 } from 'lucide-react';
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
  const [confirming, setConfirming] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const submittedRef = useRef(false);

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
        setRemaining(Math.max(0, total - Math.floor((Date.now() - startedAt) / 1000)));
        try {
          const stored = JSON.parse(localStorage.getItem(`${STORAGE_PREFIX}${attemptId}`) || '{}');
          if (stored && typeof stored === 'object') setAnswers(stored);
        } catch {
          /* ignore malformed cache */
        }
      })
      .catch((err) => active && setError(err.message || 'Could not load the exam.'))
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
  }, [attemptId]);

  /* ------------------------------------------------------------- timer */
  const handleSubmit = useCallback(
    async (auto = false) => {
      if (submittedRef.current) return;
      submittedRef.current = true;
      setSubmitting(true);
      try {
        const result = await submitExam(attemptId, answers);
        localStorage.removeItem(`${STORAGE_PREFIX}${attemptId}`);
        navigate(`/result/${attemptId}`, { replace: true, state: { result } });
      } catch (err) {
        submittedRef.current = false;
        setSubmitting(false);
        setError(err.message || 'Could not submit the exam.');
        if (auto) setConfirming(false);
      }
    },
    [answers, attemptId, navigate]
  );

  useEffect(() => {
    if (!attempt) return undefined;
    const timer = setInterval(() => {
      setRemaining((value) => {
        if (value <= 1) {
          clearInterval(timer);
          setConfirming(true);
          handleSubmit(true);
          return 0;
        }
        return value - 1;
      });
    }, 1000);
    return () => clearInterval(timer);
  }, [attempt, handleSubmit]);

  /* --------------------------------------------------- persist the answers */
  useEffect(() => {
    if (!attemptId || !Object.keys(answers).length) return;
    try {
      localStorage.setItem(`${STORAGE_PREFIX}${attemptId}`, JSON.stringify(answers));
    } catch {
      /* storage full or unavailable */
    }
  }, [answers, attemptId]);

  /* ------------------------------------------------------------- actions */
  const selectOption = (label) => {
    setAnswers((prev) => {
      const next = { ...prev, [questions[current].id]: label };
      return next;
    });
  };

  const toggleMark = () => {
    const id = questions[current].id;
    setMarked((prev) => ({ ...prev, [id]: !prev[id] }));
  };

  const answeredCount = Object.keys(answers).length;
  const markedCount = Object.keys(marked).filter((id) => marked[id]).length;
  const unansweredCount = questions.length - answeredCount;
  const isCurrentAnswered = Boolean(answers[questions[current]?.id]);
  const isCurrentMarked = Boolean(marked[questions[current]?.id]);

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

  const question = questions[current];

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

      <div className="max-w-6xl mx-auto px-4 sm:px-6 py-6 grid lg:grid-cols-3 gap-6">
        {/* Question */}
        <main className="lg:col-span-2">
          <div className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6">
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

            <div className="mt-6 flex items-center justify-between border-t border-slate-100 pt-4">
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

              <div className="flex gap-2">
                <button
                  type="button"
                  onClick={() => setCurrent((value) => Math.max(0, value - 1))}
                  disabled={current === 0}
                  className="inline-flex items-center px-4 py-2 rounded-lg border border-slate-200 text-sm font-medium text-slate-700 hover:bg-slate-50 disabled:opacity-40"
                >
                  <ChevronLeft className="h-4 w-4" /> Previous
                </button>
                <button
                  type="button"
                  onClick={() => setCurrent((value) => Math.min(questions.length - 1, value + 1))}
                  disabled={current === questions.length - 1}
                  className="inline-flex items-center px-4 py-2 rounded-lg bg-slate-900 text-white text-sm font-medium hover:bg-slate-800 disabled:opacity-40"
                >
                  Next <ChevronRight className="h-4 w-4" />
                </button>
              </div>
            </div>
          </div>
        </main>

        {/* Palette */}
        <aside className="h-fit bg-white rounded-2xl border border-slate-200 shadow-sm p-5 lg:sticky lg:top-24">
          <h2 className="font-semibold text-slate-900 mb-3">Question palette</h2>
          <div className="flex flex-wrap gap-2 mb-4">
            {questions.map((item, index) => {
              const state = answers[item.id] ? 'answered' : marked[item.id] ? 'marked' : 'unanswered';
              const styles = {
                answered: 'bg-emerald-600 text-white border-emerald-600',
                marked: 'bg-amber-500 text-white border-amber-500',
                unanswered: 'bg-white text-slate-700 border-slate-300',
              };
              return (
                <button
                  key={item.id}
                  type="button"
                  onClick={() => setCurrent(index)}
                  className={`h-9 w-9 rounded-lg border text-sm font-medium ${styles[state]} ${
                    index === current ? 'ring-2 ring-blue-500 ring-offset-1' : ''
                  }`}
                >
                  {index + 1}
                </button>
              );
            })}
          </div>
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
          <p className="mt-3 text-xs text-slate-500">
            {isCurrentAnswered
              ? 'This question is answered.'
              : 'This question is not answered yet.'}
          </p>
        </aside>
      </div>

      {/* Mobile submit bar */}
      <div className="fixed bottom-0 inset-x-0 lg:hidden bg-white border-t border-slate-200 px-4 py-3 flex items-center justify-between">
        <span className="text-sm text-slate-600">
          {answeredCount}/{questions.length} answered
        </span>
        <button
          type="button"
          onClick={() => setConfirming(true)}
          className="px-5 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold"
        >
          Submit
        </button>
      </div>

      {/* Confirm dialog */}
      {confirming && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-900/60 px-4">
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
