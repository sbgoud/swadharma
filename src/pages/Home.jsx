import React from 'react';
import { motion } from 'framer-motion';
import { ArrowRight, BookOpen, Award, Users, CheckCircle } from 'lucide-react';
import { Link } from 'react-router-dom';

const Home = () => {
  const containerVariants = {
    hidden: { opacity: 0 },
    visible: {
      opacity: 1,
      transition: { staggerChildren: 0.2 }
    }
  };

  const itemVariants = {
    hidden: { opacity: 0, y: 20 },
    visible: { opacity: 1, y: 0 }
  };

  return (
    <div className="relative min-h-screen">
      {/* Background Elements */}
      <div className="absolute inset-0 bg-slate-900 pointer-events-none overflow-hidden">
        <div className="absolute top-0 right-0 w-[800px] h-[800px] bg-blue-600/10 rounded-full blur-[120px] translate-x-1/2 -translate-y-1/2" />
        <div className="absolute bottom-0 left-0 w-[600px] h-[600px] bg-amber-600/5 rounded-full blur-[100px] -translate-x-1/3 translate-y-1/3" />
      </div>

      {/* Hero Section */}
      <section className="relative pt-32 pb-20 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto">
        <motion.div
          variants={containerVariants}
          initial="hidden"
          animate="visible"
          className="text-center max-w-4xl mx-auto"
        >
          <motion.div variants={itemVariants} className="mb-6 inline-flex items-center px-4 py-2 rounded-full border border-blue-500/30 bg-blue-500/10 backdrop-blur-sm">
            <span className="flex h-2 w-2 rounded-full bg-amber-400 mr-2 animate-pulse"></span>
            <span className="text-sm text-blue-200 font-medium">New Batch Starting Soon</span>
          </motion.div>

          <motion.h1 variants={itemVariants} className="text-5xl md:text-7xl font-extrabold tracking-tight mb-8 text-white">
            Shape Your Legacy with <br />
            <span className="text-gradient-gold">Swadharma IAS</span>
          </motion.h1>

          <motion.p variants={itemVariants} className="text-xl text-slate-400 mb-10 max-w-2xl mx-auto leading-relaxed">
            India's premier institute for civil services preparation. We don't just teach; we mentor the next generation of nation builders.
          </motion.p>

          <motion.div variants={itemVariants} className="flex flex-col sm:flex-row items-center justify-center gap-4">
            <Link to="/courses" className="w-full sm:w-auto px-8 py-4 rounded-full bg-blue-600 hover:bg-blue-700 text-white font-bold text-lg transition-all duration-300 shadow-lg shadow-blue-600/30 flex items-center justify-center">
              Explore Courses <ArrowRight className="ml-2 h-5 w-5" />
            </Link>
            <Link to="/about" className="w-full sm:w-auto px-8 py-4 rounded-full bg-slate-800 hover:bg-slate-700 text-white border border-slate-700 font-medium text-lg transition-all duration-300 flex items-center justify-center">
              Learn More
            </Link>
          </motion.div>
        </motion.div>
      </section>

      {/* Features Grid */}
      <section className="py-20 bg-slate-900/50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            {[
              {
                icon: <BookOpen className="h-8 w-8 text-blue-400" />,
                title: "Expert Faculty",
                description: "Learn from India's top educators and former civil servants."
              },
              {
                icon: <Award className="h-8 w-8 text-amber-400" />,
                title: "Proven Track Record",
                description: "Consistently producing top rankers in UPSC and State PSC exams."
              },
              {
                icon: <Users className="h-8 w-8 text-teal-400" />,
                title: "Personalized Mentorship",
                description: "One-on-one guidance to help you navigate your unique preparation journey."
              }
            ].map((feature, index) => (
              <motion.div
                key={index}
                initial={{ opacity: 0, y: 20 }}
                whileInView={{ opacity: 1, y: 0 }}
                viewport={{ once: true }}
                transition={{ delay: index * 0.1 }}
                className="glass-card p-8 rounded-2xl hover:border-blue-500/30 transition-colors"
              >
                <div className="mb-6 p-4 bg-slate-800/50 rounded-xl inline-block">
                  {feature.icon}
                </div>
                <h3 className="text-xl font-bold text-white mb-3">{feature.title}</h3>
                <p className="text-slate-400 leading-relaxed">
                  {feature.description}
                </p>
              </motion.div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-20 relative overflow-hidden">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10">
          <div className="glass-card rounded-3xl p-12 md:p-16 text-center border border-amber-500/20 bg-gradient-to-b from-slate-800/80 to-slate-900/90 relative overflow-hidden">
            <div className="absolute top-0 left-0 w-full h-1 bg-gradient-to-r from-transparent via-amber-500 to-transparent opacity-50"></div>

            <h2 className="text-3xl md:text-4xl font-bold text-white mb-6">Ready to Start Your Journey?</h2>
            <p className="text-lg text-slate-300 mb-8 max-w-2xl mx-auto">
              Join thousands of aspirants who have trusted Swadharma IAS for their preparation.
            </p>
            <Link to="/login" className="inline-flex items-center px-8 py-4 rounded-full bg-gradient-to-r from-amber-500 to-orange-600 hover:from-amber-600 hover:to-orange-700 text-white font-bold text-lg shadow-lg shadow-amber-900/20 transition-all duration-300">
              Get Started Now
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Home;