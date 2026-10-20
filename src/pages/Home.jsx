import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { ArrowRight, BookOpen, Clock, GraduationCap, ShieldCheck, Sparkles, Target } from 'lucide-react';
import { fetchSubjectCounts } from '../services/examService';
import { useAuth } from '../context/AuthContext';

const Home = () => {
  const { user } = useAuth();
  const [subjects, setSubjects] = useState([]);
  const [total, setTotal] = useState(0);
  const [status, setStatus] = useState('loading');

  useEffect(() => {
    let active = true;
    fetchSubjectCounts()
      .then((data) => {
        if (!active) return;
        setSubjects(data);
        setTotal(data.reduce((sum, item) => sum + (item.question_count || 0), 0));
        setStatus('ready');
      })
      .catch(() => {
        if (active) setStatus('error');
      });
    return () => {
      active = false;
    };
  }, []);

  return (
    <div className="bg-white">
      {/* Hero */}
      <section className="relative pt-28 pb-16 lg:pt-36 lg:pb-24 overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-b from-blue-50 via-white to-white" />
        <div className="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="max-w-3xl">
            <div className="inline-flex items-center px-3 py-1 rounded-full bg-blue-50 text-blue-700 text-sm font-semibold mb-6 border border-blue-100">
              <Sparkles className="h-4 w-4 mr-2" />
              Free UPSC Prelims test series — no payment, no limits
            </div>
            <h1 className="text-4xl lg:text-6xl font-extrabold tracking-tight text-slate-900 mb-6 leading-[1.08]">
              Practise the UPSC Prelims
              <span className="block text-blue-600">the way the exam works.</span>
            </h1>
            <p className="text-lg text-slate-600 mb-8 max-w-2xl leading-relaxed">
              Server-sampled papers, UPSC marking scheme, detailed explanations for every answer and a
              full attempt history. Everything is free for every aspirant.
            </p>
            <div className="flex flex-col sm:flex-row gap-4">
              <Link
                to={user ? '/dashboard' : '/login'}
                className="inline-flex items-center justify-center px-6 py-3.5 rounded-lg bg-blue-600 text-white font-semibold shadow-lg shadow-blue-600/20 hover:bg-blue-700 transition"
              >
                {user ? 'Go to dashboard' : 'Start practising free'}
                <ArrowRight className="ml-2 h-5 w-5" />
              </Link>
              <Link
                to="/about"
                className="inline-flex items-center justify-center px-6 py-3.5 rounded-lg bg-white text-slate-900 border border-slate-200 font-semibold hover:bg-slate-50 transition"
              >
                How it works
              </Link>
            </div>

            <dl className="mt-12 grid grid-cols-3 gap-6 max-w-xl">
              <div>
                <dt className="text-sm text-slate-500">Questions</dt>
                <dd className="text-2xl font-bold text-slate-900">{total ? total.toLocaleString('en-IN') : '—'}</dd>
              </div>
              <div>
                <dt className="text-sm text-slate-500">Subjects</dt>
                <dd className="text-2xl font-bold text-slate-900">{subjects.length || '—'}</dd>
              </div>
              <div>
                <dt className="text-sm text-slate-500">Cost</dt>
                <dd className="text-2xl font-bold text-slate-900">Free</dd>
              </div>
            </dl>
          </div>
        </div>
      </section>

      {/* Subjects */}
      <section className="py-16 bg-slate-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-3xl font-bold text-slate-900 mb-3">Eight GS subjects</h2>
            <p className="text-slate-600">
              Build a paper from one subject or mix several — the sampler keeps every subject balanced.
            </p>
          </div>
          <div className="grid sm:grid-cols-2 lg:grid-cols-4 gap-5">
            {subjects.map((subject) => (
              <div
                key={subject.slug}
                className="bg-white rounded-xl border border-slate-200 p-5 shadow-sm hover:shadow-md transition"
              >
                <div className="flex items-start justify-between gap-3">
                  <h3 className="font-semibold text-slate-900">{subject.name}</h3>
                  <span className="text-xs font-semibold text-blue-600 bg-blue-50 px-2 py-1 rounded-full whitespace-nowrap">
                    {subject.question_count} Q
                  </span>
                </div>
                {subject.description && (
                  <p className="mt-2 text-sm text-slate-500 leading-relaxed">{subject.description}</p>
                )}
              </div>
            ))}
            {status === 'loading' && !subjects.length && (
              <div className="col-span-full text-center text-sm text-slate-500 py-8">
                Question bank is being loaded…
              </div>
            )}
            {status === 'error' && !subjects.length && (
              <div className="col-span-full text-center text-sm text-slate-500 py-8">
                The question bank is not reachable right now. Please refresh in a moment — the
                subjects and their question counts appear here as soon as the database is ready.
              </div>
            )}
          </div>
        </div>
      </section>

      {/* Features */}
      <section className="py-16">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <h2 className="text-3xl font-bold text-slate-900 text-center mb-12">Built for serious practice</h2>
          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
            {[
              {
                icon: <Target className="h-6 w-6 text-blue-600" />,
                title: 'Real sampling',
                desc: 'Questions are drawn at random on the server for every single attempt.',
              },
              {
                icon: <Clock className="h-6 w-6 text-amber-500" />,
                title: 'UPSC timing',
                desc: '100 questions in 120 minutes by default, scaled automatically for shorter papers.',
              },
              {
                icon: <GraduationCap className="h-6 w-6 text-emerald-600" />,
                title: 'Explanations',
                desc: 'Every question is explained, with the correct option and the source.',
              },
              {
                icon: <ShieldCheck className="h-6 w-6 text-slate-700" />,
                title: 'Fair scoring',
                desc: '+2 for correct, -0.66 for wrong, 0 for blank — exactly the UPSC scheme.',
              },
            ].map((feature) => (
              <div key={feature.title} className="rounded-xl border border-slate-200 p-6 bg-white">
                <div className="mb-4">{feature.icon}</div>
                <h3 className="font-semibold text-slate-900 mb-2">{feature.title}</h3>
                <p className="text-sm text-slate-600 leading-relaxed">{feature.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="pb-20">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="rounded-2xl bg-slate-900 px-8 py-12 text-center">
            <BookOpen className="h-10 w-10 text-blue-400 mx-auto mb-4" />
            <h2 className="text-3xl font-bold text-white mb-3">Your first paper is two clicks away</h2>
            <p className="text-slate-300 mb-8 max-w-xl mx-auto">
              Create an account, pick your subjects and start. No payment details, no trial limits.
            </p>
            <Link
              to={user ? '/dashboard' : '/login'}
              className="inline-flex items-center justify-center px-7 py-3.5 rounded-lg bg-blue-600 text-white font-semibold hover:bg-blue-700 transition"
            >
              {user ? 'Open dashboard' : 'Create free account'}
              <ArrowRight className="ml-2 h-5 w-5" />
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Home;
