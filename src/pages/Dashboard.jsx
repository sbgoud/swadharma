import { useEffect, useMemo, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import {
  AlertCircle,
  CheckCircle2,
  Clock,
  History,
  PlayCircle,
  Settings2,
  TrendingUp,
} from 'lucide-react';
import { fetchMyAttempts, fetchSubjectCounts, startExam } from '../services/examService';
import { appConfig } from '../config/env';
import Button from '../components/Button';

const QUESTION_PRESETS = [10, 20, 50, 100, 150];
const DIFFICULTIES = [
  { value: '', label: 'Any difficulty' },
  { value: 'easy', label: 'Easy' },
  { value: 'medium', label: 'Medium' },
  { value: 'hard', label: 'Hard' },
];

const durationFor = (count) => Math.max(10, Math.min(120, Math.round(count * 1.2)));

const Dashboard = () => {
  const navigate = useNavigate();
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

  const effectiveQuestions = Math.min(numQuestions, Math.max(appConfig.minQuestions, totalAvailable));
  const duration = durationFor(effectiveQuestions);

  const stats = useMemo(() => {
    const done = attempts.filter((attempt) => attempt.submitted_at && attempt.total);
    if (!done.length) return { count: 0, average: 0, best: 0 };
    const percentages = done.map(
      (attempt) => (Number(attempt.score || 0) / (attempt.total * 2)) * 100
    );
    return {
      count: done.length,
      average: percentages.reduce((sum, value) => sum + value, 0) / percentages.length,
      best: Math.max(...percentages),
    };
  }, [attempts]);

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
    const available = subject.question_count || 0;
    const count = Math.min(appConfig.defaultQuestions, available);
    setSelected([subject.slug]);
    setNumQuestions(count);
    setDifficulty('');
    return startWith({
      subjectSlugs: [subject.slug],
      numQuestions: count,
      difficulty: null,
    });
  };

  const startFullPaper = () => {
    setSelected(subjects.map((item) => item.slug));
    setNumQuestions(appConfig.defaultQuestions);
    setDifficulty('');
    return startWith({
      subjectSlugs: subjects.map((item) => item.slug),
      numQuestions: appConfig.defaultQuestions,
      difficulty: null,
    });
  };

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10">
      <header className="mb-8 flex flex-wrap items-end justify-between gap-4">
        <div>
          <h1 className="text-3xl font-bold text-slate-900">Dashboard</h1>
          <p className="text-slate-600 mt-1">
            Configure a prelims paper and start. Every attempt is timed and scored on the server.
          </p>
        </div>
        <Link
          to="/attempts"
          className="inline-flex items-center gap-2 text-sm font-medium text-blue-600 hover:underline"
        >
          <History className="h-4 w-4" /> Attempt history
        </Link>
      </header>

      {error && (
        <div className="mb-6 p-4 rounded-lg bg-rose-50 text-rose-700 text-sm flex items-start gap-2">
          <AlertCircle className="h-5 w-5 mt-0.5 flex-shrink-0" />
          <span>{error}</span>
        </div>
      )}

      {inProgress && (
        <div className="mb-6 p-4 rounded-xl bg-blue-50 border border-blue-100 flex flex-wrap items-center justify-between gap-3">
          <p className="text-sm text-blue-900">
            You have a paper in progress ({inProgress.total} questions). Continue where you left off?
          </p>
          <Link
            to={`/exam/${inProgress.id}`}
            className="px-4 py-2 rounded-lg bg-blue-600 text-white text-sm font-semibold hover:bg-blue-700"
          >
            Resume paper
          </Link>
        </div>
      )}

      {/* Quick stats */}
      <dl className="grid grid-cols-3 gap-4 mb-6">
        {[
          { label: 'Papers attempted', value: stats.count, icon: <CheckCircle2 className="h-4 w-4" /> },
          { label: 'Average score', value: `${stats.average.toFixed(1)}%`, icon: <TrendingUp className="h-4 w-4" /> },
          { label: 'Best score', value: `${stats.best.toFixed(1)}%`, icon: <TrendingUp className="h-4 w-4" /> },
        ].map((item) => (
          <div
            key={item.label}
            className="bg-white rounded-xl border border-slate-200 shadow-sm p-4 flex items-center gap-3"
          >
            <span className="h-9 w-9 rounded-lg bg-blue-50 text-blue-600 flex items-center justify-center flex-shrink-0">
              {item.icon}
            </span>
            <span className="min-w-0">
              <span className="block text-xs uppercase tracking-wide text-slate-500">
                {item.label}
              </span>
              <span className="block text-lg font-bold text-slate-900">{item.value}</span>
            </span>
          </div>
        ))}
      </dl>

      {/* Quick starts */}
      <div className="grid sm:grid-cols-2 gap-4 mb-6">
        <button
          type="button"
          onClick={startFullPaper}
          disabled={starting || !subjects.length}
          className="text-left rounded-2xl border border-blue-200 bg-blue-50/60 p-5 hover:border-blue-400 hover:bg-blue-50 transition disabled:opacity-60"
        >
          <span className="flex items-center gap-2 font-semibold text-slate-900">
            <PlayCircle className="h-5 w-5 text-blue-600" /> Full mixed paper
          </span>
          <span className="mt-1 block text-sm text-slate-600">
            All eight GS subjects, 100 questions in 120 minutes — exactly the UPSC prelims format.
          </span>
        </button>
        <div className="rounded-2xl border border-slate-200 bg-white p-5">
          <p className="font-semibold text-slate-900">Subject-wise test</p>
          <p className="mt-1 text-sm text-slate-600">
            Pick a subject below to run a focused paper on that theme alone.
          </p>
        </div>
      </div>

      <div className="grid lg:grid-cols-3 gap-6">
        {/* Subjects */}
        <section className="lg:col-span-2 bg-white rounded-2xl border border-slate-200 shadow-sm p-6">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-lg font-semibold text-slate-900 flex items-center gap-2">
              <Settings2 className="h-5 w-5 text-blue-600" /> Subjects
            </h2>
            <div className="flex gap-2 text-xs">
              <button
                type="button"
                onClick={() => setSelected(subjects.map((s) => s.slug))}
                className="px-3 py-1 rounded-md border border-slate-200 text-slate-600 hover:bg-slate-50"
              >
                Select all
              </button>
              <button
                type="button"
                onClick={() => setSelected([])}
                className="px-3 py-1 rounded-md border border-slate-200 text-slate-600 hover:bg-slate-50"
              >
                Clear
              </button>
            </div>
          </div>

          {loading ? (
            <div className="grid sm:grid-cols-2 gap-3">
              {Array.from({ length: 8 }).map((_, index) => (
                <div key={index} className="h-16 rounded-lg bg-slate-100 animate-pulse" />
              ))}
            </div>
          ) : (
            <div className="grid sm:grid-cols-2 gap-3">
              {subjects.map((subject) => {
                const active = selected.includes(subject.slug);
                return (
                  <div
                    key={subject.slug}
                    className={`flex items-start gap-3 rounded-xl border p-4 transition ${
                      active
                        ? 'border-blue-500 bg-blue-50/60 ring-1 ring-blue-500'
                        : 'border-slate-200 hover:border-slate-300 hover:bg-slate-50'
                    }`}
                  >
                    <button
                      type="button"
                      onClick={() => toggleSubject(subject.slug)}
                      className="flex items-start gap-3 text-left flex-1 min-w-0"
                    >
                      <span
                        className={`mt-0.5 h-5 w-5 rounded border flex items-center justify-center flex-shrink-0 ${
                          active ? 'bg-blue-600 border-blue-600' : 'border-slate-300 bg-white'
                        }`}
                      >
                        {active && <CheckCircle2 className="h-4 w-4 text-white" />}
                      </span>
                      <span className="flex-1 min-w-0">
                        <span className="block font-medium text-slate-900">{subject.name}</span>
                        <span className="block text-xs text-slate-500 mt-0.5">
                          {subject.question_count} questions available
                        </span>
                      </span>
                    </button>
                    <button
                      type="button"
                      onClick={() => startSubjectTest(subject)}
                      disabled={starting || !subject.question_count}
                      className="self-center px-2.5 py-1 rounded-md text-xs font-semibold text-blue-600 border border-blue-200 hover:bg-blue-50 disabled:opacity-40 whitespace-nowrap"
                    >
                      Test
                    </button>
                  </div>
                );
              })}
            </div>
          )}
        </section>

        {/* Paper settings */}
        <section className="bg-white rounded-2xl border border-slate-200 shadow-sm p-6 h-fit">
          <h2 className="text-lg font-semibold text-slate-900 mb-4">Paper settings</h2>

          <label className="block text-sm font-medium text-slate-700 mb-2" htmlFor="num-questions">
            Number of questions
          </label>
          <input
            id="num-questions"
            type="number"
            min={appConfig.minQuestions}
            max={appConfig.maxQuestions}
            value={numQuestions}
            onChange={(e) => setNumQuestions(Number(e.target.value) || appConfig.minQuestions)}
            className="w-full px-3 py-2.5 border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
          />
          <div className="flex flex-wrap gap-2 mt-3">
            {QUESTION_PRESETS.map((preset) => (
              <button
                key={preset}
                type="button"
                onClick={() => setNumQuestions(preset)}
                className={`px-3 py-1.5 rounded-md text-xs font-medium border transition ${
                  numQuestions === preset
                    ? 'border-blue-600 bg-blue-600 text-white'
                    : 'border-slate-200 text-slate-600 hover:bg-slate-50'
                }`}
              >
                {preset}
              </button>
            ))}
          </div>

          <label className="block text-sm font-medium text-slate-700 mt-6 mb-2" htmlFor="difficulty">
            Difficulty
          </label>
          <select
            id="difficulty"
            value={difficulty}
            onChange={(e) => setDifficulty(e.target.value)}
            className="w-full px-3 py-2.5 border border-slate-300 rounded-lg bg-white focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
          >
            {DIFFICULTIES.map((option) => (
              <option key={option.value} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>

          <dl className="mt-6 space-y-2 text-sm border-t border-slate-100 pt-4">
            <div className="flex justify-between">
              <dt className="text-slate-500">Questions in this paper</dt>
              <dd className="font-semibold text-slate-900">{effectiveQuestions}</dd>
            </div>
            <div className="flex justify-between">
              <dt className="text-slate-500">Subjects</dt>
              <dd className="font-semibold text-slate-900">{selected.length}</dd>
            </div>
            <div className="flex justify-between">
              <dt className="text-slate-500">Pool available</dt>
              <dd className="font-semibold text-slate-900">{totalAvailable}</dd>
            </div>
            <div className="flex justify-between">
              <dt className="text-slate-500 flex items-center gap-1">
                <Clock className="h-4 w-4" /> Time limit
              </dt>
              <dd className="font-semibold text-slate-900">{duration} min</dd>
            </div>
            <div className="flex justify-between">
              <dt className="text-slate-500">Maximum score</dt>
              <dd className="font-semibold text-slate-900">{effectiveQuestions * 2}</dd>
            </div>
          </dl>

          <Button
            onClick={handleStart}
            loading={starting}
            className="w-full justify-center py-3 mt-6"
            disabled={!selected.length || !totalAvailable}
          >
            <PlayCircle className="mr-2 h-5 w-5" /> Start exam
          </Button>
          <p className="mt-3 text-xs text-slate-500 text-center">
            The timer starts immediately. +2 correct, −0.66 wrong, 0 unanswered.
          </p>
        </section>
      </div>
    </div>
  );
};

export default Dashboard;
