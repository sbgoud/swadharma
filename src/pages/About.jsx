import { Link } from 'react-router-dom';
import { Award, BookOpen, Clock, ShieldCheck } from 'lucide-react';
import { useAuth } from '../context/AuthContext';

const About = () => {
  const { user } = useAuth();

  return (
    <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
      <h1 className="text-4xl font-bold text-slate-900 mb-4">About Swadharma IAS</h1>
      <p className="text-lg text-slate-600 leading-relaxed mb-10">
        A free UPSC Prelims test series built around one idea: an aspirant should be able to attempt as
        many real, timed papers as they want, for free. No subscriptions, no coupons, no paywalls.
      </p>

      <div className="grid sm:grid-cols-2 gap-5 mb-12">
        {[
          {
            icon: <BookOpen className="h-6 w-6 text-blue-600" />,
            title: 'Large, original question bank',
            desc: 'Thousands of questions across eight General Studies subjects, written from NCERT and standard sources, with previous-year UPSC questions where they are known.',
          },
          {
            icon: <Clock className="h-6 w-6 text-amber-500" />,
            title: 'Exam-like conditions',
            desc: 'Papers are sampled fresh on the server for every attempt, with the UPSC timing of 100 questions in 120 minutes and a 1.2 minute per question ratio for shorter papers.',
          },
          {
            icon: <Award className="h-6 w-6 text-emerald-600" />,
            title: 'Correct UPSC marking',
            desc: '+2 for a correct answer, −0.66 for a wrong answer and 0 for an unattempted question, calculated on the server so the score can never be tampered with.',
          },
          {
            icon: <ShieldCheck className="h-6 w-6 text-slate-700" />,
            title: 'Fair practice',
            desc: 'The answer key is never sent to the browser before an attempt is submitted — every explanation is revealed only after you finish.',
          },
        ].map((item) => (
          <div key={item.title} className="bg-white rounded-xl border border-slate-200 p-6">
            <div className="mb-3">{item.icon}</div>
            <h2 className="font-semibold text-slate-900 mb-2">{item.title}</h2>
            <p className="text-sm text-slate-600 leading-relaxed">{item.desc}</p>
          </div>
        ))}
      </div>

      <section className="bg-[#0b1220] rounded-2xl px-8 py-10 text-center">
        <h2 className="text-2xl font-bold text-[#f8fafc] mb-3">Ready when you are</h2>
        <p className="text-[#cbd5e1] mb-6 max-w-lg mx-auto">
          Create a free account and attempt your first paper in under a minute.
        </p>
        <Link
          to={user ? '/dashboard' : '/login'}
          className="inline-block px-6 py-3 rounded-lg bg-blue-600 text-white font-semibold hover:bg-blue-700 transition"
        >
          {user ? 'Go to dashboard' : 'Create free account'}
        </Link>
      </section>
    </div>
  );
};

export default About;
