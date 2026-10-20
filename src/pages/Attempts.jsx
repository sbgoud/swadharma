import { useEffect, useMemo, useState } from 'react';
import { Link } from 'react-router-dom';
import { History, Loader2, PlayCircle, TrendingUp } from 'lucide-react';
import { fetchMyAttempts, fetchSubjectCounts } from '../services/examService';

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
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    let active = true;
    Promise.all([fetchMyAttempts(), fetchSubjectCounts().catch(() => [])])
      .then(([history, subjects]) => {
        if (!active) return;
        setAttempts(history);
        setNames(
          subjects.reduce((acc, subject) => ({ ...acc, [subject.slug]: subject.name }), {})
        );
      })
      .catch((err) => active && setError(err.message || 'Could not load your attempts.'))
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
  }, []);

  const subjectLabel = (slugs) =>
    (slugs || [])
      .map((slug) => names[slug] || slug.replace(/_/g, ' ').replace(/\b\w/g, (c) => c.toUpperCase()))
      .join(', ');

  const stats = useMemo(() => {
    const done = attempts.filter((attempt) => attempt.submitted_at && attempt.total);
    if (!done.length) return { count: 0, average: 0, best: 0, questions: 0 };
    const percentages = done.map(
      (attempt) => (Number(attempt.score || 0) / (attempt.total * 2)) * 100
    );
    return {
      count: done.length,
      average: percentages.reduce((sum, value) => sum + value, 0) / percentages.length,
      best: Math.max(...percentages),
      questions: done.reduce((sum, attempt) => sum + (attempt.total || 0), 0),
    };
  }, [attempts]);

  const inProgress = attempts.filter((attempt) => !attempt.submitted_at);
  const finished = attempts.filter((attempt) => attempt.submitted_at);

  return (
    <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-10">
      <header className="mb-8">
        <h1 className="text-3xl font-bold text-slate-900 flex items-center gap-3">
          <History className="h-7 w-7 text-blue-600" /> Attempt history
        </h1>
        <p className="text-slate-600 mt-1">Every paper you have taken, with the score you achieved.</p>
      </header>

      {loading ? (
        <div className="flex justify-center py-16">
          <Loader2 className="h-8 w-8 animate-spin text-blue-600" />
        </div>
      ) : error ? (
        <div className="rounded-xl border border-rose-200 bg-rose-50 p-4 text-sm text-rose-700">{error}</div>
      ) : !attempts.length ? (
        <div className="rounded-xl border border-slate-200 bg-white p-12 text-center">
          <History className="h-10 w-10 mx-auto mb-3 text-slate-300" />
          <p className="text-slate-600 mb-4">You have not taken any test yet.</p>
          <Link
            to="/dashboard"
            className="inline-block px-5 py-2.5 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700"
          >
            Start your first test
          </Link>
        </div>
      ) : (
        <>
          <dl className="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-6">
            {[
              { label: 'Papers attempted', value: stats.count },
              { label: 'Questions solved', value: stats.questions },
              { label: 'Average score', value: `${stats.average.toFixed(1)}%` },
              { label: 'Best score', value: `${stats.best.toFixed(1)}%` },
            ].map((item) => (
              <div
                key={item.label}
                className="bg-white rounded-xl border border-slate-200 shadow-sm p-4"
              >
                <dt className="text-xs uppercase tracking-wide text-slate-500">{item.label}</dt>
                <dd className="mt-1 text-xl font-bold text-slate-900 flex items-center gap-2">
                  {item.label === 'Average score' && <TrendingUp className="h-4 w-4 text-blue-500" />}
                  {item.value}
                </dd>
              </div>
            ))}
          </dl>

          {inProgress.length > 0 && (
            <section className="mb-6">
              <h2 className="text-sm font-semibold uppercase tracking-wide text-slate-500 mb-3">
                In progress
              </h2>
              <div className="space-y-3">
                {inProgress.map((attempt) => (
                  <div
                    key={attempt.id}
                    className="bg-white rounded-xl border border-blue-200 shadow-sm p-5 flex flex-col sm:flex-row sm:items-center gap-4"
                  >
                    <div className="flex-1 min-w-0">
                      <p className="font-semibold text-slate-900">
                        {attempt.total ?? 0} questions · {formatDate(attempt.started_at)}
                      </p>
                      <p className="text-sm text-slate-500 mt-0.5">
                        {subjectLabel(attempt.config?.subject_slugs) || 'Mixed paper'} · not submitted
                        yet
                      </p>
                    </div>
                    <Link
                      to={`/exam/${attempt.id}`}
                      className="inline-flex items-center justify-center gap-2 px-4 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700"
                    >
                      <PlayCircle className="h-4 w-4" /> Resume
                    </Link>
                  </div>
                ))}
              </div>
            </section>
          )}

          {finished.length > 0 && (
            <section>
              <h2 className="text-sm font-semibold uppercase tracking-wide text-slate-500 mb-3">
                Completed papers
              </h2>
              <div className="space-y-3">
                {finished.map((attempt) => {
                  const percentage = attempt.total
                    ? (Number(attempt.score || 0) / (attempt.total * 2)) * 100
                    : 0;
                  return (
                    <div
                      key={attempt.id}
                      className="bg-white rounded-xl border border-slate-200 shadow-sm p-5 flex flex-col sm:flex-row sm:items-center gap-4"
                    >
                      <div className="flex-1 min-w-0">
                        <div className="flex flex-wrap items-center gap-2 mb-1">
                          <span className="font-semibold text-slate-900">
                            {attempt.total ?? 0} questions
                          </span>
                          <span className="text-xs px-2 py-0.5 rounded-full bg-slate-100 text-slate-600 capitalize">
                            {attempt.config?.difficulty || 'any difficulty'}
                          </span>
                          {attempt.config?.duration_minutes && (
                            <span className="text-xs px-2 py-0.5 rounded-full bg-slate-100 text-slate-600">
                              {attempt.config.duration_minutes} min
                            </span>
                          )}
                        </div>
                        <p className="text-sm text-slate-500 truncate">
                          {formatDate(attempt.started_at)}
                          {subjectLabel(attempt.config?.subject_slugs)
                            ? ` · ${subjectLabel(attempt.config.subject_slugs)}`
                            : ''}
                        </p>
                      </div>
                      <div className="flex items-center gap-5">
                        <div className="text-right">
                          <p className="text-xs uppercase tracking-wide text-slate-500">Score</p>
                          <p className="text-xl font-bold text-slate-900">
                            {attempt.score ?? '—'}
                            {attempt.total ? (
                              <span className="text-sm text-slate-400">/{attempt.total * 2}</span>
                            ) : null}
                          </p>
                          {attempt.total ? (
                            <p className="text-xs text-slate-500">{percentage.toFixed(1)}%</p>
                          ) : null}
                        </div>
                        <Link
                          to={`/result/${attempt.id}`}
                          className="px-4 py-2 rounded-lg border border-slate-200 text-sm font-medium text-slate-700 hover:bg-slate-50"
                        >
                          Review
                        </Link>
                      </div>
                    </div>
                  );
                })}
              </div>
            </section>
          )}
        </>
      )}
    </div>
  );
};

export default Attempts;
