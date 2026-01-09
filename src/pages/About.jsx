import { Link } from 'react-router-dom';
import { BookOpen, Award, Users, Target, CheckCircle, Lightbulb, Rocket } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';

const About = () => {
  return (
    <div className="min-h-screen pt-20 bg-white">
      {/* Hero Section */}
      <section className="relative py-24 bg-[#003366] overflow-hidden">
        {/* Background Elements */}
        <div className="absolute top-0 right-0 w-96 h-96 bg-white/5 rounded-full blur-3xl translate-x-1/2 -translate-y-1/2"></div>
        <div className="absolute bottom-0 left-0 w-72 h-72 bg-amber-500/10 rounded-full blur-3xl -translate-x-1/2 translate-y-1/2"></div>

        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
          <h1 className="text-4xl md:text-6xl font-bold text-white mb-6 font-serif">
            Redefining Civil Services Prep
          </h1>
          <p className="text-xl text-blue-100 max-w-3xl mx-auto leading-relaxed">
            Welcome to Swadharma IAS Academy. We are a new-age institute driven by a singular mission: to simplify the complex journey of UPSC preparation with scientific pedagogy and personalized mentorship.
          </p>
        </div>
      </section>

      {/* Our Philosophy (The New Approach) */}
      <section className="py-20">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
            <div>
              <div className="inline-block py-1 px-3 rounded-lg bg-blue-50 text-blue-600 text-xs font-bold uppercase tracking-widest mb-4">
                Our Philosophy
              </div>
              <h2 className="text-3xl font-bold text-gray-900 mb-6 font-serif">Why Swadharma?</h2>
              <p className="text-lg text-gray-600 mb-6 leading-relaxed">
                The landscape of the Civil Services Examination has evolved, and so must the preparation strategy. At Swadharma, we believe that success is not just about hoarding information, but about building the right <strong>administrative aptitude</strong>.
              </p>
              <p className="text-lg text-gray-600 mb-8 leading-relaxed">
                We are moving away from the "factory model" of coaching. Instead, we are building a <strong>gurukul-style ecosystem</strong> in the heart of Hyderabad, where every aspirant is personally mentored to discover their own unique strengths ('Swadharma') and apply them to the exam.
              </p>
              <Link to="/courses">
                <Button size="lg" className="shadow-lg shadow-blue-600/20">Explore Our Methodology</Button>
              </Link>
            </div>
            <div className="relative">
              <div className="absolute inset-0 bg-gradient-to-tr from-blue-600 to-amber-500 rounded-2xl transform rotate-3 scale-105 opacity-20"></div>
              <img
                src="https://images.pexels.com/photos/3184291/pexels-photo-3184291.jpeg?auto=compress&cs=tinysrgb&w=800"
                alt="Mentorship Session"
                className="relative rounded-2xl shadow-xl border-4 border-white w-full h-auto object-cover"
              />
            </div>
          </div>
        </div>
      </section>

      {/* Core Values */}
      <section className="py-20 bg-gray-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4 font-serif">Core Values</h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              The pillars upon which we are building this institution.
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            {[
              {
                icon: Lightbulb,
                title: "Conceptual Clarity",
                desc: "We prioritize deep understanding over rote memorization. We teach you 'how to think', not just 'what to think'."
              },
              {
                icon: Rocket,
                title: "Strategic Agility",
                desc: "The exam is dynamic. Our curriculum is agile, constantly updated to reflect the latest trends of UPSC."
              },
              {
                icon: Users,
                title: "Integrity & Empathy",
                desc: "We aim to mold not just successful candidates, but officers with a strong moral compass and empathy for the nation."
              }
            ].map((value, index) => (
              <Card key={index} hover className="text-center p-8 border-t-4 border-t-amber-500">
                <div className="h-16 w-16 bg-blue-50 rounded-full flex items-center justify-center mx-auto mb-6">
                  <value.icon className="h-8 w-8 text-blue-600" />
                </div>
                <h3 className="text-xl font-bold text-gray-900 mb-3">{value.title}</h3>
                <p className="text-gray-600 leading-relaxed">{value.desc}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Director's Note */}
      <section className="py-24">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-bold text-gray-900 mb-8 font-serif">A Note from the Founder</h2>
          <div className="relative bg-white p-8 md:p-12 rounded-2xl border border-gray-100 shadow-xl">
            <div className="absolute -top-6 left-1/2 -translate-x-1/2 bg-blue-600 text-white rounded-full p-3 shadow-lg">
              <Award className="w-8 h-8" />
            </div>
            <blockquote className="text-xl text-gray-600 italic leading-relaxed mb-8">
              "Swadharma was born out of a desire to fix the gaps in the current coaching ecosystem. We noticed that students were getting lost in the crowd, inundated with materials but lacking direction. We are here to bring the focus back to the individual. To the student. To you. Join us, and let's write your success story together."
            </blockquote>
            <div className="font-bold text-gray-900 text-lg">Director</div>
            <div className="text-sm text-blue-600 font-medium">Swadharma IAS Academy</div>
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="py-20 bg-[#003366] relative overflow-hidden">
        <div className="absolute inset-0 opacity-10"
          style={{ backgroundImage: 'radial-gradient(#ffffff 2px, transparent 2px)', backgroundSize: '32px 32px' }}>
        </div>

        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
          <h2 className="text-3xl md:text-5xl font-bold text-white mb-6 font-serif">
            Be Part of Our Founding Batch
          </h2>
          <p className="text-xl text-blue-100 mb-10 max-w-2xl mx-auto">
            Admissions are now open for the Prelims Test Series 2026. Experience the difference of personalized mentorship.
          </p>
          <div className="flex flex-col sm:flex-row justify-center gap-4">
            <Link to="/contact">
              <Button variant="secondary" size="lg">
                Visit Campus
              </Button>
            </Link>
            <Link to="/contact">
              <Button variant="outline" size="lg" className="text-white border-white bg-transparent hover:bg-white hover:text-blue-900">
                Contact Us
              </Button>
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
};

export default About;