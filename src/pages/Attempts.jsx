import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { History, Loader2 } from 'lucide-react';
import { fetchMyAttempts } from '../services/examService';

const Attempts = () => {
  const [attempts, setAttempts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    let active = true;
    fetchMyAttempts()
      .then((data) => active && setAttempts(data))
      .catch((err) => active && setError(err.message || 'Could not load your attempts.'))
      .finally(() => active && setLoading(false));
    return () => {
      active = false;
    };
  }, []);

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
        <div className="space-y-3">
          {attempts.map((attempt) => {
            const subjects = attempt.config?.subject_slugs || [];
            const percentage = attempt.total ? (attempt.score / (attempt.total * 2)) * 100 : 0;
            return (
              <div
                key={attempt.id}
                className="bg-white rounded-xl border border-slate-200 shadow-sm p-5 flex flex-col sm:flex-row sm:items-center gap-4"
              >
                <div className="flex-1">
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
                  <p className="text-sm text-slate-500">
                    {new Date(attempt.started_at).toLocaleString('en-IN')}
                    {subjects.length ? ` · ${subjects.length} subject${subjects.length > 1 ? 's' : ''}` : ''}
                  </p>
                </div>
                <div className="flex items-center gap-5">
                  <div className="text-right">
                    <p className="text-xs uppercase tracking-wide text-slate-500">Score</p>
                    <p className="text-xl font-bold text-slate-900">
                      {attempt.score ?? '—'}
                      {attempt.total ? <span className="text-sm text-slate-400">/{attempt.total * 2}</span> : null}
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
      )}
    </div>
  );
};

export default Attempts;
