import { useState } from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, Clock, Users, ArrowRight, CheckCircle, FileText, Bell } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';

const courses = [
  {
    id: 'prelims-test-series',
    title: 'Prelims Test Series 2026',
    subtitle: 'High Yield Mock Tests',
    description: 'A scientifically designed test series to bridge the gap between preparation and execution. Bridges the gap between static knowledge and dynamic application.',
    duration: '4 Months',
    mode: 'Online / Offline',
    batchStarts: 'Feb 15, 2026',
    fees: '₹8,000',
    features: [
      '25 GS + 10 CSAT Tests',
      'Detailed Explanations & Discussion',
      'All India Ranking',
      'Personal Mentorship Session',
      'Current Affairs Integration'
    ],
    status: 'open',
    highlight: true,
  },
  {
    id: 'foundation',
    title: 'Foundation Course 2027',
    subtitle: 'Prelims + Mains + Interview',
    description: 'Our flagship comprehensive program for beginners. Covers the entire syllabus with integrated answer writing and interview guidance.',
    duration: '12 Months',
    mode: 'Offline / Online',
    batchStarts: 'Coming Soon',
    fees: '₹1,50,000',
    features: [
      '1000+ Hours of Teaching',
      'Complete Study Material',
      'Weekly Tests & mentorship',
      'Current Affairs Classes',
      'Library Access'
    ],
    status: 'coming_soon',
    highlight: false,
  },
  {
    id: 'mains-test',
    title: 'Mains Test Series',
    subtitle: 'Answer Writing Focus',
    description: 'Rigorous answer writing practice with evaluation by experts. Focus on structure, presentation and content enrichment.',
    duration: '3 Months',
    mode: 'Online / Offline',
    batchStarts: 'Coming Soon',
    fees: '₹18,000',
    features: [
      '12 Sectional + 4 Full Length Tests',
      'Evaluation within 72 hours',
      'One-on-One Feedback',
      'Model Answers'
    ],
    status: 'coming_soon',
    highlight: false,
  },
  {
    id: 'optional-pol-sci',
    title: 'Optional Subjects',
    subtitle: 'Pol. Science / Sociology / Geography',
    description: 'Specialized classroom program for optional subjects. Deep dive into concepts with previous year question analysis.',
    duration: '5 Months',
    mode: 'Offline / Online',
    batchStarts: 'Coming Soon',
    fees: '₹45,000',
    features: [
      'Complete Syllabus Coverage',
      'PYQ Analysis & Discussion',
      'Test Series Included',
      'Printed Notes'
    ],
    status: 'coming_soon',
    highlight: false,
  }
];

const Courses = () => {
  return (
    <div className="bg-gray-50 min-h-screen">
      {/* Header */}
      <div className="bg-blue-900 text-white py-20">
        <div className="container-width text-center">
          <h1 className="text-4xl md:text-5xl font-bold font-serif mb-4">Our Programs</h1>
          <p className="text-xl text-blue-100 max-w-2xl mx-auto">
            Precision-engineered courses for serious aspirants.
          </p>
        </div>
      </div>

      {/* Courses List */}
      <div className="container-width py-16">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
          {courses.map((course) => (
            <Card key={course.id} className={`flex flex-col h-full ${course.highlight ? 'border-2 border-green-500 shadow-xl relative' : 'opacity-90'}`}>
              {course.highlight && (
                <div className="absolute top-0 right-0 bg-green-600 text-white text-xs font-bold px-3 py-1 rounded-bl-lg uppercase tracking-wider shadow-sm">
                  Admissions Open
                </div>
              )}
              {course.status === 'coming_soon' && (
                <div className="absolute top-0 right-0 bg-gray-600 text-white text-xs font-bold px-3 py-1 rounded-bl-lg uppercase tracking-wider">
                  Coming Soon
                </div>
              )}

              <div className="mb-6">
                <h3 className="text-2xl font-bold text-gray-900 mb-1">{course.title}</h3>
                <p className="text-blue-600 font-medium mb-4">{course.subtitle}</p>
                <p className="text-gray-600 mb-6">{course.description}</p>

                <div className="flex flex-wrap gap-4 text-sm text-gray-500 border-t border-gray-100 pt-4">
                  <div className="flex items-center">
                    <Clock className="h-4 w-4 mr-2" /> {course.duration}
                  </div>
                  <div className="flex items-center">
                    <Users className="h-4 w-4 mr-2" /> {course.mode}
                  </div>
                  <div className="flex items-center">
                    <FileText className="h-4 w-4 mr-2" />
                    {course.batchStarts === 'Coming Soon' ? 'Launching Soon' : `Starts ${course.batchStarts}`}
                  </div>
                </div>
              </div>

              <div className="mt-auto bg-gray-50 -mx-6 -mb-6 p-6">
                <h4 className="font-bold text-gray-800 mb-4 text-sm uppercase tracking-wide">Course Highlights</h4>
                <ul className="space-y-2 mb-6">
                  {course.features.map((feature, i) => (
                    <li key={i} className="flex items-start text-sm text-gray-700">
                      <CheckCircle className="h-4 w-4 text-green-600 mr-2 mt-0.5 flex-shrink-0" />
                      <span>{feature}</span>
                    </li>
                  ))}
                </ul>
                <div className="flex items-center justify-between mt-6 pt-4 border-t border-gray-200">
                  <div>
                    <p className="text-xs text-gray-500">Course Fee</p>
                    <p className="text-2xl font-bold text-gray-900">{course.fees}</p>
                  </div>
                  {course.status === 'open' ? (
                    <Button to="/contact" variant="primary" size="sm" className="shadow-lg shadow-green-900/10">
                      Enroll Now
                    </Button>
                  ) : (
                    <Button variant="secondary" size="sm" disabled className="bg-gray-100 text-gray-400 border-gray-200">
                      <Bell className="w-4 h-4 mr-2" /> Notify Me
                    </Button>
                  )}
                </div>
              </div>
            </Card>
          ))}
        </div>
      </div>

      {/* Additional Info */}
      <div className="bg-white py-16">
        <div className="container-width text-center">
          <h2 className="text-3xl font-bold text-gray-900 mb-8">Need Guidance?</h2>
          <p className="text-gray-600 mb-8 max-w-2xl mx-auto">
            Not sure where to begin? Our mentors can help you understand the exam and plan your preparation.
          </p>
          <Button to="/contact" variant="secondary" size="lg">Book Free Counseling</Button>
        </div>
      </div>
    </div>
  );
};

export default Courses;