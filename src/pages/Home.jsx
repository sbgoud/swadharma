import { Link } from 'react-router-dom';
import { ArrowRight, BookOpen, Target, Sparkles, CheckCircle } from 'lucide-react';
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
                <span className="flex h-2 w-2 rounded-full bg-blue-600 mr-2 animate-pulse"></span>
                <span>Admissions Open for Prelims Test Series 2026</span>
              </div>

              <h1 className="text-5xl lg:text-7xl font-bold tracking-tight text-gray-900 mb-6 leading-[1.1]">
                A New Era of <br />
                <span className="text-blue-600">Civil Services</span> guidance
              </h1>

              <p className="text-lg text-gray-600 mb-8 max-w-lg leading-relaxed">
                Swadharma IAS Academy brings a fresh, scientific approach to UPSC preparation. We differ by design, focusing on individual aptitude and strategic clarity.
              </p>

              <div className="flex flex-col sm:flex-row gap-4 mb-12">
                <Button to="/courses" size="lg" className="shadow-lg shadow-blue-600/20">
                  Explore Test Series <ArrowRight className="ml-2 h-5 w-5" />
                </Button>
                <Button to="/contact" variant="secondary" size="lg">
                  Enquire Now
                </Button>
              </div>

              <div className="flex items-center gap-6 border-t border-gray-100 pt-8">
                <div className="flex items-center gap-2">
                  <div className="bg-green-100 p-2 rounded-full">
                    <CheckCircle className="h-5 w-5 text-green-600" />
                  </div>
                  <p className="text-sm text-gray-600 font-medium">Expert Faculty</p>
                </div>
                <div className="flex items-center gap-2">
                  <div className="bg-blue-100 p-2 rounded-full">
                    <Target className="h-5 w-5 text-blue-600" />
                  </div>
                  <p className="text-sm text-gray-600 font-medium">Focused Approach</p>
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
            <h2 className="text-3xl font-bold text-gray-900 mb-4">Why Start With Swadharma?</h2>
            <p className="text-lg text-gray-600">We are building a community of serious aspirants with a mentorship-first model.</p>
          </div>

          <div className="grid md:grid-cols-3 gap-8">
            {[
              {
                icon: <Target className="h-8 w-8 text-blue-600" />,
                title: "Precision & Focus",
                desc: "Our test series is curated to match the evolving dynamic nature of the UPSC Prelims, ensuring you study what matters."
              },
              {
                icon: <BookOpen className="h-8 w-8 text-amber-500" />,
                title: "Curated by Experts",
                desc: "Content designed by educators who understand the pulse of the examination."
              },
              {
                icon: <Sparkles className="h-8 w-8 text-green-600" />,
                title: "Foundational Clarity",
                desc: "We prioritize conceptual clarity over rote learning, preparing you for the long haul."
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
              <h2 className="text-3xl font-bold text-gray-900 mb-4">Our Programs</h2>
              <p className="text-lg text-gray-600 max-w-xl">Admissions open for Prelims Test Series. Other comprehensive courses launching soon.</p>
            </div>
            <Button to="/courses" variant="secondary">View Details</Button>
          </div>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            {/* Active Course */}
            <Card noPadding className="group border-blue-200 shadow-md">
              <div className="h-48 bg-blue-50 overflow-hidden relative">
                <img
                  src="https://images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&w=800"
                  className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                  alt="Test Series"
                />
                <div className="absolute top-4 right-4 bg-green-500 text-white px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wide shadow-sm">
                  Admissions Open
                </div>
              </div>
              <div className="p-6">
                <h3 className="text-xl font-bold text-gray-900 mb-2">Prelims Test Series 2026</h3>
                <p className="text-sm text-gray-500 mb-4 font-medium flex items-center gap-2">
                  <span className="w-1.5 h-1.5 rounded-full bg-blue-500"></span> Starts Feb 15
                </p>
                <p className="text-gray-600 mb-6 text-sm leading-relaxed">Comprehensive mock tests designed to simulate the real exam environment with detailed performance analysis.</p>
                <Link to="/contact" className="w-full block text-center bg-blue-600 text-white py-2 rounded-lg font-semibold text-sm hover:bg-blue-700 transition-colors">
                  Enroll Now
                </Link>
              </div>
            </Card>

            {/* Coming Soon Courses */}
            {[
              {
                title: "GS Foundation Course",
                desc: "Complete coverage of Prelims and Mains syllabus for freshers.",
              },
              {
                title: "Optional Subjects",
                desc: "Specialized guidance for Pol. Science, Sociology, and Geography.",
              }
            ].map((course, i) => (
              <Card key={i} noPadding className="group opacity-75 hover:opacity-100 transition-opacity">
                <div className="h-48 bg-gray-100 overflow-hidden relative grayscale">
                  <img
                    src={`https://images.pexels.com/photos/${i === 0 ? '1181675' : '207662'}/pexels-photo-${i === 0 ? '1181675' : '207662'}.jpeg?auto=compress&cs=tinysrgb&w=800`}
                    className="w-full h-full object-cover"
                    alt="Course"
                  />
                  <div className="absolute top-4 right-4 bg-gray-600 text-white px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wide">
                    Coming Soon
                  </div>
                </div>
                <div className="p-6">
                  <h3 className="text-xl font-bold text-gray-900 mb-2">{course.title}</h3>
                  <p className="text-gray-600 mb-6 text-sm leading-relaxed">{course.desc}</p>
                  <Button variant="secondary" disabled className="w-full">
                    Launching Soon
                  </Button>
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
            The first step towards your dream service starts here. Join our Prelims Test Series today.
          </p>
          <div className="flex flex-col sm:flex-row justify-center gap-4">
            <Button to="/contact" variant="cta" size="lg">Enroll Now</Button>
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