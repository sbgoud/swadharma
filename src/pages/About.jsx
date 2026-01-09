import { Link } from 'react-router-dom';
import { BookOpen, Award, Users, Target, CheckCircle } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';
import { placeholderImages } from '../utils/pexels';

const milestones = [
  { year: '2008', title: 'Foundation', description: 'Swadharma IAS Academy was established with a vision to transform UPSC preparation.' },
  { year: '2012', title: 'First Batch Success', description: 'Our first batch produced 25 successful candidates in UPSC.' },
  { year: '2018', title: '500+ Selections', description: 'Achieved a milestone of 500+ selections across all services.' },
  { year: '2024', title: 'Expanding Horizons', description: 'Launched online courses and expanded to multiple cities.' },
];

const values = [
  {
    icon: Target,
    title: 'Excellence',
    description: 'We strive for excellence in every aspect of our teaching and guidance.',
  },
  {
    icon: Users,
    title: 'Student-Centric',
    description: 'Every decision we make is focused on our students\' success and growth.',
  },
  {
    icon: Award,
    title: 'Integrity',
    description: 'We maintain the highest standards of academic integrity and ethics.',
  },
];

const team = [
  {
    name: 'Dr. Rajesh Kumar',
    position: 'Director & Founder',
    qualification: 'IAS (Retd.), IIT Delhi',
    image: placeholderImages.faculty,
  },
  {
    name: 'Prof. Priya Sharma',
    position: 'Head of GS Division',
    qualification: 'PhD, Political Science, JNU',
    image: placeholderImages.faculty,
  },
  {
    name: 'Dr. Amit Patel',
    position: 'Head of Geography',
    qualification: 'Geographer, BHU',
    image: placeholderImages.faculty,
  },
  {
    name: 'Smt. Meera Reddy',
    position: 'Current Affairs Head',
    qualification: 'Ex-Journalist, CNN-IBN',
    image: placeholderImages.faculty,
  },
];

const About = () => {
  return (
    <div className="min-h-screen pt-20">
      {/* Hero Section */}
      <section
        className="relative py-20 bg-cover bg-center bg-no-repeat"
        style={{
          backgroundImage: `linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(${placeholderImages.about})`,
        }}
      >
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h1 className="text-4xl md:text-5xl font-bold text-white mb-4">
            About Swadharma IAS Academy
          </h1>
          <p className="text-xl text-gray-200 max-w-3xl mx-auto">
            Empowering aspirants to achieve their dream of becoming civil servants since 2008.
          </p>
        </div>
      </section>

      {/* Mission & Vision */}
      <section className="py-20">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-12">
            <div>
              <h2 className="text-3xl font-bold text-gray-900 mb-6">Our Mission</h2>
              <p className="text-lg text-gray-600 mb-6">
                To provide the highest quality education and guidance to UPSC aspirants, helping them
                realize their potential and achieve their dreams of serving the nation as civil
                servants.
              </p>
              <p className="text-lg text-gray-600 mb-6">
                We believe that with the right guidance, dedication, and hard work, anyone can crack
                the UPSC examination and make a positive impact on society.
              </p>
              <Link to="/contact">
                <Button>Join Our Mission</Button>
              </Link>
            </div>
            <div>
              <h2 className="text-3xl font-bold text-gray-900 mb-6">Our Vision</h2>
              <p className="text-lg text-gray-600 mb-6">
                To be the most trusted and preferred destination for UPSC preparation, producing
                ethical, capable, and responsible civil servants who can lead India towards progress.
              </p>
              <ul className="space-y-4">
                {[
                  'Create a supportive learning environment',
                  'Maintain academic excellence',
                  'Build character and integrity',
                  'Foster critical thinking',
                ].map((item, index) => (
                  <li key={index} className="flex items-center space-x-3">
                    <CheckCircle className="h-6 w-6 text-primary-600 flex-shrink-0" />
                    <span className="text-gray-700">{item}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* Our Values */}
      <section className="py-20 bg-gray-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">Our Core Values</h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              These values guide everything we do at Swadharma IAS Academy.
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            {values.map((value, index) => (
              <Card key={index} hover className="text-center">
                <value.icon className="h-12 w-12 text-primary-600 mx-auto mb-4" />
                <h3 className="text-xl font-semibold text-gray-900 mb-2">{value.title}</h3>
                <p className="text-gray-600">{value.description}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* Timeline */}
      <section className="py-20">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">Our Journey</h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              From a small beginning to becoming one of the most trusted names in UPSC preparation.
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            {milestones.map((milestone, index) => (
              <div key={index} className="relative">
                <div className="bg-primary-600 text-white rounded-lg p-6 h-full">
                  <div className="text-4xl font-bold mb-2">{milestone.year}</div>
                  <h3 className="text-xl font-semibold mb-2">{milestone.title}</h3>
                  <p className="text-primary-100 text-sm">{milestone.description}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Faculty */}
      <section className="py-20 bg-gray-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-bold text-gray-900 mb-4">Our Expert Faculty</h2>
            <p className="text-lg text-gray-600 max-w-2xl mx-auto">
              Learn from experienced educators and experts who have guided thousands of successful candidates.
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            {team.map((member, index) => (
              <Card key={index} padding={false} className="overflow-hidden">
                <img
                  src={member.image}
                  alt={member.name}
                  className="w-full h-64 object-cover object-center"
                />
                <div className="p-4">
                  <h3 className="text-lg font-semibold text-gray-900">{member.name}</h3>
                  <p className="text-primary-600 text-sm mb-1">{member.position}</p>
                  <p className="text-gray-500 text-xs">{member.qualification}</p>
                </div>
              </Card>
            ))}
          </div>
          <div className="text-center mt-12">
            <Link to="/contact">
              <Button variant="outline">
                Meet All Faculty Members
              </Button>
            </Link>
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="py-20 bg-primary-600">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl md:text-4xl font-bold text-white mb-4">
            Ready to Start Your Journey?
          </h2>
          <p className="text-xl text-primary-100 mb-8 max-w-2xl mx-auto">
            Join Swadharma IAS Academy today and take the first step towards your dream career.
          </p>
          <Link to="/contact">
            <Button variant="secondary" size="lg">
              Enroll Now
            </Button>
          </Link>
        </div>
      </section>
    </div>
  );
};

export default About;