import { ArrowRight, BookOpen, Award, Users, CheckCircle } from 'lucide-react';
import { Link } from 'react-router-dom';
import Button from '../components/Button';
import Card from '../components/Card';
import { motion } from 'framer-motion';

const Home = () => {
  return (
    <div className="flex flex-col min-h-screen">
      {/* Hero Section - Split layout for professional look */}
      <section className="relative pt-24 pb-16 md:pt-32 md:pb-24 bg-[#003366] text-white overflow-hidden">
        {/* Abstract Pattern Overlay */}
        <div className="absolute inset-0 opacity-10" style={{ backgroundImage: 'radial-gradient(#ffffff 1px, transparent 1px)', backgroundSize: '30px 30px' }}></div>

        <div className="container-width relative z-10 grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
          <motion.div
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.6 }}
          >
            <div className="inline-block px-4 py-1.5 rounded-full bg-blue-800 text-blue-100 text-sm font-bold tracking-wide mb-6 border border-blue-700">
              ADMISSIONS OPEN 2026-27
            </div>
            <h1 className="text-4xl md:text-6xl font-black mb-6 leading-tight font-serif text-white">
              Forging the <br />
              <span className="text-amber-400">Steel Frame</span> of India
            </h1>
            <p className="text-blue-100 text-lg md:text-xl mb-8 leading-relaxed max-w-lg">
              Swadharma IAS Academy provides uncompromising quality in civil services preparation with personalized mentorship and proven strategies.
            </p>
            <div className="flex flex-col sm:flex-row gap-4">
              <Button to="/courses" variant="secondary" size="lg" className="shadow-amber-900/20">
                Explore Courses
              </Button>
              <Button to="/about" variant="outline" size="lg" className="border-white text-white hover:bg-white hover:text-[#003366]">
                About The Academy
              </Button>
            </div>

            <div className="mt-12 flex items-center gap-8 text-blue-200">
              <div>
                <p className="text-3xl font-bold text-white">1500+</p>
                <p className="text-sm">Selections</p>
              </div>
              <div className="h-8 w-px bg-blue-700"></div>
              <div>
                <p className="text-3xl font-bold text-white">25+</p>
                <p className="text-sm">Years Legacy</p>
              </div>
              <div className="h-8 w-px bg-blue-700"></div>
              <div>
                <p className="text-3xl font-bold text-white">Top 10</p>
                <p className="text-sm">AIR Ranks</p>
              </div>
            </div>
          </motion.div>

          <motion.div
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 0.6, delay: 0.2 }}
            className="relative hidden md:block"
          >
            <div className="relative rounded-2xl overflow-hidden shadow-2xl border-4 border-white/10">
              <img
                src="https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=800"
                alt="Students studying in library"
                className="w-full h-auto object-cover transform hover:scale-105 transition-transform duration-700"
              />
              <div className="absolute inset-0 bg-gradient-to-t from-[#003366]/80 to-transparent"></div>
              <div className="absolute bottom-6 left-6 right-6">
                <p className="text-white text-lg font-medium italic">"Education is the most powerful weapon which you can use to change the world."</p>
              </div>
            </div>
            {/* Decorative Elements */}
            <div className="absolute -z-10 top-10 -right-10 w-full h-full bg-amber-500 rounded-2xl"></div>
          </motion.div>
        </div>
      </section>

      {/* Features Section */}
      <section className="section-padding bg-white">
        <div className="container-width">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-bold text-[#003366] mb-4">Why Choose Swadharma?</h2>
            <div className="w-24 h-1 bg-amber-500 mx-auto rounded-full"></div>
            <p className="mt-6 text-xl text-gray-600 max-w-2xl mx-auto">
              We believe in a holistic approach to UPSC preparation that goes beyond just syllabus coverage.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            {[
              {
                icon: <BookOpen className="h-8 w-8 text-[#003366]" />,
                title: "Academic Excellence",
                description: "Curriculum designed by former civil servants and subject matter experts aligned with the latest UPSC trends."
              },
              {
                icon: <Users className="h-8 w-8 text-[#003366]" />,
                title: "Personalized Mentorship",
                description: "One-on-one guidance to identify strengths and weaknesses, ensuring a tailored preparation strategy for every student."
              },
              {
                icon: <Award className="h-8 w-8 text-[#003366]" />,
                title: "Proven Results",
                description: "Consistent track record of producing toppers in UPSC Civil Services Examination year after year."
              }
            ].map((feature, index) => (
              <Card key={index} className="text-center p-8 border-t-4 border-t-[#003366] hover:border-t-amber-500">
                <div className="inline-flex items-center justify-center w-16 h-16 rounded-full bg-blue-50 mb-6">
                  {feature.icon}
                </div>
                <h3 className="text-xl font-bold mb-3">{feature.title}</h3>
                <p className="text-gray-600 leading-relaxed">
                  {feature.description}
                </p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Programs Preview / CTA */}
      <section className="section-padding bg-gray-50">
        <div className="container-width">
          <div className="flex flex-col md:flex-row items-center justify-between gap-12">
            <div className="md:w-1/2">
              <h2 className="text-3xl md:text-4xl font-bold mb-6">Comprehensive Classroom Programs</h2>
              <p className="text-lg text-gray-600 mb-8">
                Whether you are a college student starting early or a graduate looking for intensive preparation, we have a course structure designed for your success.
              </p>
              <ul className="space-y-4 mb-8">
                {[
                  "Foundation Course (General Studies + CSAT)",
                  "Optional Subject Guidance",
                  "Test Series & Answer Writing",
                  "Interview Guidance Program"
                ].map((item, i) => (
                  <li key={i} className="flex items-center space-x-3">
                    <CheckCircle className="h-5 w-5 text-green-600" />
                    <span className="text-gray-700 font-medium">{item}</span>
                  </li>
                ))}
              </ul>
              <Button to="/courses" variant="primary">View All Courses</Button>
            </div>
            <div className="md:w-1/2 relative">
              <div className="grid grid-cols-2 gap-4">
                <img src="https://images.pexels.com/photos/1181675/pexels-photo-1181675.jpeg?auto=compress&cs=tinysrgb&w=600" className="rounded-lg shadow-lg" alt="Classroom" />
                <img src="https://images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&w=600" className="rounded-lg shadow-lg mt-8" alt="Library" />
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Newsletter / Final CTA */}
      <section className="py-20 bg-[#003366] text-white">
        <div className="container-width text-center">
          <h2 className="text-3xl font-bold mb-6 font-serif">Begin Your Journey to LBSNAA</h2>
          <p className="text-blue-100 mb-8 max-w-2xl mx-auto">
            Join the league of extraordinary officers who started their journey with Swadharma IAS Academy.
          </p>
          <div className="flex flex-col sm:flex-row justify-center items-center gap-4">
            <Button to="/login" variant="secondary" size="lg">Apply Now</Button>
            <Button to="/contact" variant="outline" size="lg" className="border-white text-white hover:bg-white hover:text-[#003366]">Request Callback</Button>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Home;