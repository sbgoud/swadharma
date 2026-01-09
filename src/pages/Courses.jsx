import { useState } from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, Clock, Users, ArrowRight, CheckCircle2, Calendar, Download, Sparkles } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';

const Courses = () => {
  return (
    <div className="bg-white min-h-screen pt-20">
      {/* Header */}
      <div className="bg-[#003366] py-20 relative overflow-hidden">
        {/* Abstract background elements */}
        <div className="absolute top-0 right-0 w-64 h-64 bg-white/5 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2"></div>
        <div className="absolute bottom-0 left-0 w-48 h-48 bg-amber-500/10 rounded-full blur-2xl translate-y-1/2 -translate-x-1/2"></div>

        <div className="container-width text-center relative z-10">
          <span className="inline-block py-1 px-3 rounded-full bg-blue-800/50 border border-blue-400/30 text-blue-200 text-xs font-bold tracking-widest uppercase mb-4">
            Academic Year 2026-27
          </span>
          <h1 className="text-4xl md:text-6xl font-black text-white mb-6 font-serif">
            Our Programs
          </h1>
          <p className="text-xl text-blue-100 max-w-2xl mx-auto leading-relaxed">
            Expertly crafted courses designed to streamline your preparation and maximize your potential.
          </p>
        </div>
      </div>

      <div className="container-width py-16 space-y-20">

        {/* Active Course Section */}
        <section>
          <div className="flex items-center gap-4 mb-8">
            <div className="h-8 w-1 bg-amber-500 rounded-full"></div>
            <h2 className="text-2xl font-bold text-gray-900">Admissions Open</h2>
          </div>

          <div className="bg-white rounded-2xl border border-gray-200 shadow-xl overflow-hidden flex flex-col md:flex-row">
            <div className="md:w-2/5 relative min-h-[300px] md:min-h-0">
              <img
                src="https://images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&w=800"
                alt="Prelims Test Series"
                className="w-full h-full object-cover"
              />
              <div className="absolute inset-0 bg-gradient-to-t from-[#003366]/90 via-transparent to-transparent md:bg-gradient-to-r md:from-transparent md:to-[#003366]/10"></div>
              <div className="absolute top-4 left-4 bg-green-600 text-white text-xs font-bold px-3 py-1.5 rounded-full uppercase tracking-wide shadow-sm flex items-center gap-1">
                <span className="w-2 h-2 bg-white rounded-full animate-pulse"></span> Live Now
              </div>
            </div>

            <div className="md:w-3/5 p-8 md:p-10 flex flex-col">
              <div className="mb-6">
                <h3 className="text-3xl font-bold text-[#003366] mb-2 font-serif">Prelims Test Series 2026</h3>
                <p className="text-lg text-amber-600 font-medium mb-4">Target 120+ in GS Paper 1</p>
                <p className="text-gray-600 leading-relaxed mb-6">
                  A scientific approach to Prelims preparation. Our test series is designed not just to test your knowledge, but to improve your test-taking aptitude, intelligent guessing, and time management.
                </p>

                <div className="grid grid-cols-2 md:grid-cols-3 gap-6 mb-8">
                  <div className="flex flex-col">
                    <span className="text-xs text-gray-500 uppercase font-bold tracking-wider">Start Date</span>
                    <span className="font-semibold text-gray-900 flex items-center gap-2">
                      <Calendar className="w-4 h-4 text-blue-600" /> Feb 15, 2026
                    </span>
                  </div>
                  <div className="flex flex-col">
                    <span className="text-xs text-gray-500 uppercase font-bold tracking-wider">Format</span>
                    <span className="font-semibold text-gray-900 flex items-center gap-2">
                      <Users className="w-4 h-4 text-blue-600" /> Offline & Online
                    </span>
                  </div>
                  <div className="flex flex-col">
                    <span className="text-xs text-gray-500 uppercase font-bold tracking-wider">Fees</span>
                    <span className="font-semibold text-gray-900 text-lg">₹8,000</span>
                  </div>
                </div>

                <div className="space-y-3 mb-8 bg-gray-50 p-6 rounded-xl border border-gray-100">
                  {[
                    "25 General Studies Tests (Sectional + Full Length)",
                    "10 CSAT Tests with detailed solutions",
                    "Detailed performance analysis & heatmap",
                    "One-on-One mentorship session after every 5 tests"
                  ].map((feat, i) => (
                    <div key={i} className="flex items-start gap-3">
                      <CheckCircle2 className="w-5 h-5 text-green-600 mt-0.5 flex-shrink-0" />
                      <span className="text-gray-700 text-sm">{feat}</span>
                    </div>
                  ))}
                </div>
              </div>

              <div className="mt-auto flex flex-col sm:flex-row gap-4">
                <Button to="/contact" size="lg" className="w-full sm:w-auto shadow-lg shadow-blue-900/10">
                  Enroll Now
                </Button>
                <Button variant="outline" size="lg" className="w-full sm:w-auto">
                  <Download className="w-4 h-4 mr-2" /> Download Schedule
                </Button>
              </div>
            </div>
          </div>
        </section>

        {/* Upcoming Courses Section */}
        <section>
          <div className="flex items-center gap-4 mb-8">
            <div className="h-8 w-1 bg-gray-300 rounded-full"></div>
            <h2 className="text-2xl font-bold text-gray-900">Coming Soon</h2>
          </div>

          <div className="grid md:grid-cols-3 gap-8">
            {[
              {
                title: "GS Foundation 2027",
                subtitle: "Comprehensive Batch",
                desc: "Holistic coverage of Prelims & Mains syllabus for absolute beginners.",
                image: "1181675"
              },
              {
                title: "Mains Mentorship",
                subtitle: "Answer Writing",
                desc: "Intensive answer writing program with evaluation by selected officers.",
                image: "210661"
              },
              {
                title: "Optional Subjects",
                subtitle: "Pol. Science & Sociology",
                desc: "Specialized batches for optional subjects with detailed notes.",
                image: "207662"
              }
            ].map((item, i) => (
              <Card key={i} noPadding className="group opacity-80 hover:opacity-100 transition-all border-dashed border-2 bg-gray-50/50">
                <div className="h-48 relative overflow-hidden bg-gray-200">
                  <img
                    src={`https://images.pexels.com/photos/${item.image}/pexels-photo-${item.image}.jpeg?auto=compress&cs=tinysrgb&w=800`}
                    alt={item.title}
                    className="w-full h-full object-cover grayscale group-hover:grayscale-0 transition-all duration-500"
                  />
                  <div className="absolute inset-0 bg-black/10"></div>
                  <div className="absolute top-4 right-4 bg-gray-900/80 backdrop-blur text-white text-[10px] font-bold px-2 py-1 rounded uppercase tracking-wider">
                    Launching Soon
                  </div>
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-bold text-gray-800 mb-1">{item.title}</h3>
                  <p className="text-sm font-medium text-blue-600 mb-3">{item.subtitle}</p>
                  <p className="text-sm text-gray-500 mb-6 leading-relaxed">
                    {item.desc}
                  </p>
                  <Button variant="secondary" size="sm" disabled className="w-full border-gray-300 text-gray-400">
                    Join Waitlist
                  </Button>
                </div>
              </Card>
            ))}
          </div>
        </section>
      </div>

      {/* Counseling CTA */}
      <div className="bg-blue-50 py-16 border-t border-blue-100">
        <div className="container-width text-center">
          <Sparkles className="w-12 h-12 text-blue-600 mx-auto mb-4" />
          <h2 className="text-3xl font-bold text-[#003366] mb-4">Unsure where to start?</h2>
          <p className="text-gray-600 mb-8 max-w-xl mx-auto">
            Civil Services preparation can be overwhelming. Schedule a free 30-minute session with our academic director to plan your roadmap.
          </p>
          <Button to="/contact" variant="primary">
            Schedule Free Counseling
          </Button>
        </div>
      </div>
    </div>
  );
};

export default Courses;