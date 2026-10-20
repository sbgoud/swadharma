import { useEffect, useMemo, useState } from 'react';
import { Link, useLocation, useParams } from 'react-router-dom';
import { AlertCircle, Award, CheckCircle2, ChevronDown, Clock, Home, Loader2, XCircle } from 'lucide-react';
import { fetchAttemptResult } from '../services/examService';

const LABELS = ['A', 'B', 'C', 'D'];
const FILTERS = [
  { value: 'all', label: 'All' },
  { value: 'incorrect', label: 'Incorrect' },
  { value: 'unanswered', label: 'Unanswered' },
  { value: 'correct', label: 'Correct' },
];

const Result = () => {
  const { attemptId } = useParams();
  const location = useLocation();
  const [result, setResult] = useState(location.state?.result || null);
  const [loading, setLoading] = useState(!location.state?.result);
  const [error, setError] = useState(null);
  const [filter, setFilter] = useState('all');
  const [openId, setOpenId] = useState(null);

  useEffect(() => {
    if (result) return;
    let active = true;
    fetchAttemptResult(attemptId)
      .then((data) => active && setResult(data))
      .catch((err) => active && setError(err.message || 'Could not load the result.'))
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [attemptId]);

  const details = useMemo(() => result?.details || [], [result]);
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
      if (!map.has(key)) {
        map.set(key, { subject: key, correct: 0, incorrect: 0, unanswered: 0, total: 0 });
      }
      const row = map.get(key);
      row.total += 1;
      if (item.is_correct) row.correct += 1;
      else if (item.selected_label) row.incorrect += 1;
      else row.unanswered += 1;
    });
    return [...map.values()].map((row) => ({
      ...row,
      score: Math.round((row.correct * 2 - row.incorrect * 0.66) * 100) / 100,
      percentage: row.total ? (row.correct / row.total) * 100 : 0,
    }));
  }, [details]);

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-blue-600" />
      </div>
    );
  }

  if (error || !result) {
    return (
      <div className="max-w-2xl mx-auto px-4 py-20 text-center">
        <AlertCircle className="h-10 w-10 text-amber-500 mx-auto mb-4" />
        <h1 className="text-xl font-semibold text-slate-900 mb-2">Result unavailable</h1>
        <p className="text-slate-600 mb-6">{error || 'This attempt could not be found.'}</p>
        <Link
          to="/attempts"
          className="inline-block px-5 py-2.5 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700"
        >
          View my attempts
        </Link>
      </div>
    );
  }

  const percentage = Number(result.percentage || 0);
  const timeUsed =
    result.started_at && result.submitted_at
      ? Math.max(
          0,
          Math.round(
            (new Date(result.submitted_at).getTime() - new Date(result.started_at).getTime()) / 60000
          )
        )
      : null;

  const stats = [
    { label: 'Score', value: `${result.score ?? 0} / ${result.max_score ?? 0}`, tone: 'text-blue-700' },
    { label: 'Correct', value: result.correct ?? 0, tone: 'text-emerald-700' },
    { label: 'Incorrect', value: result.incorrect ?? 0, tone: 'text-rose-700' },
    { label: 'Unanswered', value: result.unanswered ?? 0, tone: 'text-slate-600' },
  ];

  return (
    <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-10">
      <header className="mb-8">
        <Link to="/dashboard" className="text-sm text-blue-600 hover:underline inline-flex items-center gap-1">
          <Home className="h-4 w-4" /> Back to dashboard
        </Link>
        <h1 className="text-3xl font-bold text-slate-900 mt-3">Result</h1>
        <p className="text-slate-600 mt-1">
          Submitted {new Date(result.submitted_at).toLocaleString('en-IN')}
          {timeUsed !== null && ` · ${timeUsed} min spent`}
          {result.duration_minutes ? ` · limit ${result.duration_minutes} min` : ''}
        </p>
      </header>

      {/* Summary */}
      <section className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6 mb-6">
        <div className="flex flex-col sm:flex-row sm:items-center gap-6">
          <div className="flex-1">
            <div className="flex items-end gap-3">
              <span className="text-5xl font-extrabold text-slate-900">{result.score ?? 0}</span>
              <span className="text-slate-400 text-lg font-medium pb-1">/ {result.max_score ?? 0}</span>
            </div>
            <div className="mt-3 h-2.5 bg-slate-100 rounded-full overflow-hidden">
              <div
                className="h-full bg-blue-600 rounded-full transition-all"
                style={{ width: `${Math.min(100, Math.max(0, percentage))}%` }}
              />
            </div>
            <p className="mt-2 text-sm text-slate-600">
              {percentage.toFixed(2)}% accuracy · marking +2 / −0.66 / 0
            </p>
          </div>
          <div className="grid grid-cols-3 gap-4 sm:gap-6 sm:grid-cols-1">
            {stats.slice(1).map((stat) => (
              <div key={stat.label} className="text-center sm:text-left">
                <p className="text-xs uppercase tracking-wide text-slate-500">{stat.label}</p>
                <p className={`text-2xl font-bold ${stat.tone}`}>{stat.value}</p>
              </div>
            ))}
          </div>
        </div>
        <div className="mt-6 flex flex-wrap gap-3 border-t border-slate-100 pt-4">
          <Link
            to="/dashboard"
            className="px-4 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700"
          >
            Take another test
          </Link>
          <Link
            to="/attempts"
            className="px-4 py-2 rounded-lg border border-slate-200 text-slate-700 text-sm font-medium hover:bg-slate-50"
          >
            Attempt history
          </Link>
        </div>
      </section>

      {/* Subject-wise breakdown */}
      {bySubject.length > 1 && (
        <section className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6 mb-6">
          <h2 className="text-lg font-semibold text-slate-900 mb-4">Subject-wise performance</h2>
          <div className="overflow-x-auto -mx-6 px-6">
            <table className="w-full text-sm min-w-[520px]">
              <thead>
                <tr className="text-left text-xs uppercase tracking-wide text-slate-500 border-b border-slate-100">
                  <th className="font-medium pb-2">Subject</th>
                  <th className="font-medium pb-2 text-right">Correct</th>
                  <th className="font-medium pb-2 text-right">Wrong</th>
                  <th className="font-medium pb-2 text-right">Skipped</th>
                  <th className="font-medium pb-2 text-right">Accuracy</th>
                  <th className="font-medium pb-2 text-right">Score</th>
                </tr>
              </thead>
              <tbody>
                {bySubject.map((row) => (
                  <tr key={row.subject} className="border-b border-slate-50 last:border-0">
                    <td className="py-2.5 pr-4 font-medium text-slate-900">{row.subject}</td>
                    <td className="py-2.5 text-right text-emerald-700">{row.correct}</td>
                    <td className="py-2.5 text-right text-rose-700">{row.incorrect}</td>
                    <td className="py-2.5 text-right text-slate-500">{row.unanswered}</td>
                    <td className="py-2.5 text-right text-slate-600">{row.percentage.toFixed(0)}%</td>
                    <td className="py-2.5 text-right font-semibold text-slate-900">{row.score}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </section>
      )}

      {/* Filters */}
      <div className="flex flex-wrap items-center gap-2 mb-4">
        {FILTERS.map((item) => (
          <button
            key={item.value}
            type="button"
            onClick={() => setFilter(item.value)}
            className={`px-3.5 py-1.5 rounded-full text-sm font-medium border transition ${
              filter === item.value
                ? 'bg-slate-900 border-slate-900 text-white'
                : 'bg-white border-slate-200 text-slate-600 hover:bg-slate-50'
            }`}
          >
            {item.label}
          </button>
        ))}
        <span className="text-sm text-slate-500 ml-auto">
          {filtered.length} of {details.length} questions
        </span>
      </div>

      {/* Review */}
      <div className="space-y-3">
        {filtered.map((item) => {
          const open = openId === item.question_id;
          return (
            <div key={item.question_id} className="bg-white rounded-xl border border-slate-200 shadow-sm overflow-hidden">
              <button
                type="button"
                onClick={() => setOpenId(open ? null : item.question_id)}
                className="w-full text-left p-4 flex items-start gap-3 hover:bg-slate-50"
              >
                <span className="mt-0.5 flex-shrink-0">
                  {item.is_correct ? (
                    <CheckCircle2 className="h-5 w-5 text-emerald-600" />
                  ) : item.selected_label ? (
                    <XCircle className="h-5 w-5 text-rose-600" />
                  ) : (
                    <AlertCircle className="h-5 w-5 text-slate-400" />
                  )}
                </span>
                <span className="flex-1">
                  <span className="block text-[15px] font-medium text-slate-900 leading-relaxed">
                    Q{item.position}. {item.question_text}
                  </span>
                  <span className="mt-1 flex flex-wrap items-center gap-2 text-xs text-slate-500">
                    <span className="px-2 py-0.5 rounded-full bg-slate-100">{item.subject}</span>
                    {item.source && <span>{item.source}{item.year ? `, ${item.year}` : ''}</span>}
                  </span>
                </span>
                <ChevronDown
                  className={`h-5 w-5 text-slate-400 transition-transform flex-shrink-0 ${open ? 'rotate-180' : ''}`}
                />
              </button>

              {open && (
                <div className="px-4 pb-4 space-y-3 border-t border-slate-100 pt-4">
                  <div className="space-y-2">
                    {LABELS.map((label) => {
                      const option = item.options.find((opt) => opt.label === label);
                      if (!option) return null;
                      const isCorrect = item.correct_label === label;
                      const isSelected = item.selected_label === label;
                      return (
                        <div
                          key={label}
                          className={`flex items-start gap-3 rounded-lg border p-3 text-sm ${
                            isCorrect
                              ? 'border-emerald-400 bg-emerald-50 text-emerald-900'
                              : isSelected
                              ? 'border-rose-300 bg-rose-50 text-rose-900'
                              : 'border-slate-200 text-slate-700'
                          }`}
                        >
                          <span className="font-bold flex-shrink-0">{label}.</span>
                          <span className="flex-1 leading-relaxed">{option.option_text}</span>
                          {isCorrect && <span className="text-xs font-semibold uppercase">Correct</span>}
                          {isSelected && !isCorrect && (
                            <span className="text-xs font-semibold uppercase">Your answer</span>
                          )}
                        </div>
                      );
                    })}
                  </div>
                  {!item.selected_label && (
                    <p className="text-sm text-slate-500 italic">You did not attempt this question.</p>
                  )}
                  {item.explanation && (
                    <div className="rounded-lg bg-blue-50 p-4 text-sm text-slate-700 leading-relaxed">
                      <span className="font-semibold text-blue-800">Explanation: </span>
                      {item.explanation}
                    </div>
                  )}
                </div>
              )}
            </div>
          );
        })}
        {!filtered.length && (
          <div className="text-center text-sm text-slate-500 py-10 bg-white rounded-xl border border-slate-200">
            <Award className="h-8 w-8 mx-auto mb-2 text-slate-300" />
            Nothing in this category.
          </div>
        )}
      </div>

      <p className="mt-8 text-xs text-slate-400 flex items-center gap-1">
        <Clock className="h-3.5 w-3.5" /> Scores are calculated on the server using the official UPSC prelims
        marking scheme.
      </p>
    </div>
  );
};

export default Result;
