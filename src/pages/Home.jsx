import { Link } from 'react-router-dom';
import { ArrowRight, BookOpen, Users, Trophy, Target, Star, CheckCircle } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';

const Home = () => {
  return (
    <div className="flex flex-col min-h-screen">

      {/* Hero Section */}
      <section className="relative pt-32 pb-20 lg:pt-40 lg:pb-32 overflow-hidden bg-white">
        <div className="container mx-auto px-4 max-w-7xl relative z-10">
          <div className="grid lg:grid-cols-2 gap-12 lg:gap-8 items-center">

            {/* Left Content */}
            <div className="text-left">
              <div className="inline-flex items-center px-3 py-1 rounded-full bg-blue-50 text-blue-700 text-sm font-semibold mb-6 border border-blue-100">
                <span className="flex h-2 w-2 rounded-full bg-blue-600 mr-2"></span>
                Admissions Open for 2026 Batch
              </div>

              <h1 className="text-5xl lg:text-7xl font-bold tracking-tight text-gray-900 mb-6 leading-[1.1]">
                Master the Art of <br />
                <span className="text-blue-600">Civil Services</span>
              </h1>

              <p className="text-lg text-gray-600 mb-8 max-w-lg leading-relaxed">
                Swadharma IAS Academy provides the strategic guidance and mentorship you need to crack India's toughest examination.
              </p>

              <div className="flex flex-col sm:flex-row gap-4 mb-12">
                <Button to="/courses" size="lg" className="shadow-lg shadow-blue-600/20">
                  Browse Courses <ArrowRight className="ml-2 h-5 w-5" />
                </Button>
                <Button to="/contact" variant="secondary" size="lg">
                  Book Counseling
                </Button>
              </div>

              <div className="flex items-center gap-8 border-t border-gray-100 pt-8">
                <div>
                  <p className="text-3xl font-bold text-gray-900">1.5k+</p>
                  <p className="text-sm text-gray-500 font-medium">Students Enrolled</p>
                </div>
                <div>
                  <p className="text-3xl font-bold text-gray-900">95%</p>
                  <p className="text-sm text-gray-500 font-medium">Success Rate</p>
                </div>
                <div>
                  <p className="text-3xl font-bold text-gray-900">50+</p>
                  <p className="text-sm text-gray-500 font-medium">Expert Faculty</p>
                </div>
              </div>
            </div>

            {/* Right Image */}
            <div className="relative lg:h-[600px] w-full">
              <div className="relative z-10 rounded-2xl overflow-hidden shadow-2xl border-4 border-white">
                <img
                  src="https://images.pexels.com/photos/1438081/pexels-photo-1438081.jpeg?auto=compress&cs=tinysrgb&w=800"
                  alt="Student studying"
                  className="w-full h-full object-cover"
                />
              </div>
              {/* Decorative Background Blob */}
              <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[120%] h-[120%] bg-blue-50/50 rounded-full blur-3xl -z-10"></div>
            </div>
          </div>
        </div>
      </section>

      {/* Features Grid */}
      <section className="py-24 bg-gray-50/50">
        <div className="container mx-auto px-4 max-w-7xl">
          <div className="text-center max-w-3xl mx-auto mb-16">
            <h2 className="text-3xl font-bold text-gray-900 mb-4">Why Choose Swadharma?</h2>
            <p className="text-lg text-gray-600">We don't just teach syllabus; we build character, discipline, and the right aptitude for administration.</p>
          </div>

          <div className="grid md:grid-cols-3 gap-8">
            {[
              {
                icon: <Target className="h-8 w-8 text-blue-600" />,
                title: "Strategic Approach",
                desc: "Focused preparation based on the changing trends of the UPSC examination pattern."
              },
              {
                icon: <Users className="h-8 w-8 text-amber-500" />,
                title: "Personal Mentorship",
                desc: "One-on-one sessions with mentors to track progress and identify improvement areas."
              },
              {
                icon: <Trophy className="h-8 w-8 text-green-600" />,
                title: "Consistent Results",
                desc: "A legacy of producing top rankers in Civil Services Examination every year."
              }
            ].map((item, i) => (
              <Card key={i} className="hover:-translate-y-1 transition-transform">
                <div className="h-14 w-14 rounded-xl bg-gray-50 flex items-center justify-center mb-6">
                  {item.icon}
                </div>
                <h3 className="text-xl font-bold text-gray-900 mb-3">{item.title}</h3>
                <p className="text-gray-600 leading-relaxed">
                  {item.desc}
                </p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Programs Preview */}
      <section className="py-24 bg-white">
        <div className="container mx-auto px-4 max-w-7xl">
          <div className="flex flex-col md:flex-row justify-between items-end mb-12 gap-6">
            <div>
              <h2 className="text-3xl font-bold text-gray-900 mb-4">Our Premium Courses</h2>
              <p className="text-lg text-gray-600 max-w-xl">Designed for aspirants at different stages of their preparation journey.</p>
            </div>
            <Button to="/courses" variant="secondary">View All Programs</Button>
          </div>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            {[
              {
                title: "GS Foundation Course",
                badge: "Most Popular",
                desc: "Comprehensive coverage of Prelims and Mains syllabus with integrated test series.",
                duration: "12 Months"
              },
              {
                title: "Prelims Crash Course",
                badge: "New Batch",
                desc: "Intensive revision program targeting high-yield areas for upcoming Prelims.",
                duration: "3 Months"
              },
              {
                title: "Optional Subjects",
                badge: "Weekend Batch",
                desc: "Specialized guidance for Pol. Science, Sociology, Geography and History.",
                duration: "5 Months"
              }
            ].map((course, i) => (
              <Card key={i} noPadding className="group">
                <div className="h-48 bg-gray-100 overflow-hidden relative">
                  <img
                    src={`https://images.pexels.com/photos/${i === 0 ? '1181675' : i === 1 ? '590493' : '207662'}/pexels-photo-${i === 0 ? '1181675' : i === 1 ? '590493' : '207662'}.jpeg?auto=compress&cs=tinysrgb&w=800`}
                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                    alt="Course"
                  />
                  <div className="absolute top-4 right-4 bg-white/90 backdrop-blur px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wide">
                    {course.badge}
                  </div>
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-bold text-gray-900 mb-2">{course.title}</h3>
                  <p className="text-sm text-gray-500 mb-4 font-medium flex items-center gap-2">
                    <span className="w-1.5 h-1.5 rounded-full bg-blue-500"></span> {course.duration}
                  </p>
                  <p className="text-gray-600 mb-6 text-sm leading-relaxed">{course.desc}</p>
                  <Link to="/courses" className="text-blue-600 font-semibold text-sm hover:text-blue-700 flex items-center">
                    Learn More <ArrowRight className="h-4 w-4 ml-1" />
                  </Link>
                </div>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-24 bg-blue-900 text-white relative overflow-hidden">
        {/* Background pattern */}
        <div className="absolute inset-0 opacity-10"
          style={{ backgroundImage: 'radial-gradient(#ffffff 2px, transparent 2px)', backgroundSize: '32px 32px' }}>
        </div>

        <div className="container mx-auto px-4 max-w-4xl text-center relative z-10">
          <h2 className="text-3xl md:text-5xl font-bold mb-6">Ready to Start Your Journey?</h2>
          <p className="text-xl text-blue-100 mb-10 leading-relaxed">
            Join thousands of successful aspirants who chose Swadharma IAS for their preparation.
          </p>
          <div className="flex flex-col sm:flex-row justify-center gap-4">
            <Button to="/login" variant="cta" size="lg">Apply for Admission</Button>
            <Button to="/contact" variant="secondary" size="lg" className="bg-transparent border-white/20 text-white hover:bg-white/10 hover:text-white">
              Request Call Back
            </Button>
          </div>
        </div>
      </section>

    </div>
  );
};

export default Home;