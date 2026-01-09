import { useState } from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, Clock, Users, ArrowRight, CheckCircle, FileText } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';

const courses = [
  {
    id: 'foundation',
    title: 'Foundation Course 2026',
    subtitle: 'Prelims + Mains + Interview',
    description: 'A comprehensive 12-month program covering the entire UPSC syllabus from basics to advanced level. Integrated preparation approach.',
    duration: '12 Months',
    mode: 'Offline / Online',
    batchStarts: 'June 15, 2025',
    fees: '₹1,50,000',
    features: [
      '1000+ Hours of Classroom Teaching',
      'Comprehensive Study Material (25+ Books)',
      'Prelims & Mains Test Series Included',
      'Weekly Current Affairs Classes',
      'Personal Mentorship'
    ],
    highlight: true,
  },
  {
    id: 'prelims-crash',
    title: 'Prelims Crash Course',
    subtitle: 'Target Prelims 2026',
    description: 'Intensive 3-month revision program focusing on high-yield topics, current affairs and test-taking strategies.',
    duration: '3 Months',
    mode: 'Offline / Online',
    batchStarts: 'Feb 10, 2026',
    fees: '₹25,000',
    features: [
      '200+ Hours of Revision Classes',
      'Topic-wise & Full Length Tests',
      'Current Affairs Annual Compilation',
      'CSAT Special Classes'
    ],
    highlight: false,
  },
  {
    id: 'mains-test',
    title: 'Mains Test Series',
    subtitle: 'Answer Writing Focus',
    description: 'Rigorous answer writing practice with detailed evaluation and feedback from former civil servants.',
    duration: '4 Months',
    mode: 'Online / Offline',
    batchStarts: 'Flexible',
    fees: '₹18,000',
    features: [
      '12 Sectional + 8 Full Length Tests',
      'Detailed Evaluation within 72 hours',
      'One-on-One Feedback Session',
      'Model Answers & Discussion'
    ],
    highlight: false,
  },
  {
    id: 'optional-pol-sci',
    title: 'Pol. Science & IR',
    subtitle: 'Optional Subject',
    description: 'Specialized classroom program for Political Science and International Relations optional subject.',
    duration: '5 Months',
    mode: 'Offline / Online',
    batchStarts: 'July 01, 2025',
    fees: '₹45,000',
    features: [
      'Complete Syllabus Coverage',
      'Previous Year Questions Analysis',
      'Paper-wise Test Series',
      'Printed Notes & Dictation'
    ],
    highlight: false,
  }
];

const Courses = () => {
  return (
    <div className="bg-gray-50 min-h-screen">
      {/* Header */}
      <div className="bg-[#003366] text-white py-20">
        <div className="container-width text-center">
          <h1 className="text-4xl md:text-5xl font-bold font-serif mb-4">Our Programs</h1>
          <p className="text-xl text-blue-100 max-w-2xl mx-auto">
            Meticulously designed courses to guide you through every stage of the Civil Services Examination.
          </p>
        </div>
      </div>

      {/* Courses List */}
      <div className="container-width py-16">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
          {courses.map((course) => (
            <Card key={course.id} className={`flex flex-col h-full ${course.highlight ? 'border-2 border-amber-500 shadow-xl relative' : ''}`}>
              {course.highlight && (
                <div className="absolute top-0 right-0 bg-amber-500 text-white text-xs font-bold px-3 py-1 rounded-bl-lg uppercase tracking-wider">
                  Most Recommended
                </div>
              )}
              <div className="mb-6">
                <h3 className="text-2xl font-bold text-[#003366] mb-1">{course.title}</h3>
                <p className="text-amber-600 font-medium mb-4">{course.subtitle}</p>
                <p className="text-gray-600 mb-6">{course.description}</p>

                <div className="flex flex-wrap gap-4 text-sm text-gray-500 border-t border-gray-100 pt-4">
                  <div className="flex items-center">
                    <Clock className="h-4 w-4 mr-2" /> {course.duration}
                  </div>
                  <div className="flex items-center">
                    <Users className="h-4 w-4 mr-2" /> {course.mode}
                  </div>
                  <div className="flex items-center">
                    <FileText className="h-4 w-4 mr-2" /> Starts {course.batchStarts}
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
                    <p className="text-2xl font-bold text-[#003366]">{course.fees}</p>
                  </div>
                  <Button to="/contact" variant={course.highlight ? "primary" : "outline"} size="sm">
                    Enroll Now
                  </Button>
                </div>
              </div>
            </Card>
          ))}
        </div>
      </div>

      {/* Additional Info */}
      <div className="bg-white py-16">
        <div className="container-width text-center">
          <h2 className="text-3xl font-bold text-[#003366] mb-8">Need Guidance on Choosing a Course?</h2>
          <p className="text-gray-600 mb-8 max-w-2xl mx-auto">
            Schedule a free counseling session with our academic mentors to understand the exam pattern and choose the program that best fits your needs.
          </p>
          <Button to="/contact" variant="secondary" size="lg">Book Counseling Session</Button>
        </div>
      </div>
    </div>
  );
};

export default Courses;