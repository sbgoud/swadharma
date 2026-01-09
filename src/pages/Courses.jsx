import { useState } from 'react';
import { Link } from 'react-router-dom';
import { BookOpen, Clock, Users, Award, Play, CheckCircle } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';
import { placeholderImages } from '../utils/pexels';

const courses = [
  {
    id: 'foundation',
    title: 'Foundation Course',
    description: 'Complete preparation from basics to advanced level for freshers.',
    fullDescription: 'Our comprehensive Foundation Course is designed for beginners who want to build a strong foundation for UPSC preparation. This course covers the entire syllabus in a systematic manner with focus on understanding concepts, current affairs integration, and answer writing skills.',
    duration: '12 Months',
    classes: '500+ Hours',
    students: '500 Seats',
    price: '₹1,50,000',
    image: 'https://images.pexels.com/photos/159844/cellular-education-classroom-159844.jpeg?auto=compress&cs=tinysrgb&w=800',
    features: [
      'Complete coverage of GS Paper I, II, III, IV',
      'Current Affairs throughout the year',
      'Prelims Test Series (25 tests)',
      'Mains Answer Writing (100 questions)',
      'Interview Preparation',
      'Study materials and notes',
      'Doubt clearing sessions',
    ],
    highlighted: true,
  },
  {
    id: 'prelims',
    title: 'Prelims Test Series',
    description: 'Comprehensive test series with detailed analysis and revision.',
    fullDescription: 'Our Prelims Test Series is designed to help you assess your preparation and identify areas for improvement. With carefully crafted mock tests, detailed explanations, and performance analysis, you will be fully prepared to crack the Preliminary Examination.',
    duration: '6 Months',
    classes: '100+ Tests',
    students: 'Unlimited',
    price: '₹25,000',
    image: 'https://images.pexels.com/photos/356079/pexels-photo-356079.jpeg?auto=compress&cs=tinysrgb&w=800',
    features: [
      '25 Full-length mock tests',
      'Daily current affairs quizzes',
      'Detailed answer explanations',
      'Performance analysis reports',
      'Revision tests',
      'Discussion sessions',
      'All India ranking',
    ],
    highlighted: false,
  },
  {
    id: 'mains',
    title: 'Mains Answer Writing',
    description: 'Master the art of writing high-scoring answers for Mains.',
    fullDescription: 'The Mains Examination requires not just knowledge but also excellent answer writing skills. Our program focuses on developing your ability to write structured, comprehensive, and high-scoring answers that meet the UPSC expectations.',
    duration: '4 Months',
    classes: '200+ Questions',
    students: '300 Seats',
    price: '₹30,000',
    image: 'https://images.pexels.com/photos/210661/pexels-photo-210661.jpeg?auto=compress&cs=tinysrgb&w=800',
    features: [
      'Daily answer writing practice',
      'Personalized feedback on answers',
      'Model answer copies',
      'Essay writing practice',
      'Ethics case studies',
      'Current affairs integration',
      'Group discussions',
    ],
    highlighted: false,
  },
  {
    id: 'interview',
    title: 'Interview Preparation',
    description: 'Mock interviews with expert panel and personality development.',
    fullDescription: 'The Personality Test is the final hurdle in your UPSC journey. Our Interview Preparation program includes mock interviews with experienced panel members, personality development sessions, and guidance on handling various types of questions.',
    duration: '2 Months',
    classes: '10 Mock Interviews',
    students: '100 Seats',
    price: '₹20,000',
    image: 'https://images.pexels.com/photos/1181396/pexels-photo-1181396.jpeg?auto=compress&cs=tinysrgb&w=800',
    features: [
      '10 Mock interviews with ex-interviewers',
      'Detailed feedback and improvement tips',
      'Current affairs discussion',
      'Personality development sessions',
      'DAF-based preparation',
      'Communication skills training',
      'Confidence building exercises',
    ],
    highlighted: false,
  },
];

const features = [
  { icon: BookOpen, title: 'Expert Faculty', description: 'Learn from experienced educators and subject matter experts.' },
  { icon: Clock, title: 'Flexible Schedule', description: 'Choose batches that fit your availability and convenience.' },
  { icon: Users, title: 'Small Batch Size', description: 'Personal attention with limited students per batch.' },
  { icon: Award, title: 'Quality Material', description: 'Comprehensive study materials and updated content.' },
];

const Courses = () => {
  const [activeCourse, setActiveCourse] = useState(null);

  return (
    <div className="min-h-screen pt-20">
      {/* Hero Section */}
      <section
        className="relative py-20 bg-cover bg-center bg-no-repeat"
        style={{
          backgroundImage: `linear-gradient(rgba(15, 23, 42, 0.9), rgba(15, 23, 42, 0.9)), url(https://images.pexels.com/photos/159844/cellular-education-classroom-159844.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)`,
        }}
      >
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
          <h1 className="text-4xl md:text-5xl font-bold text-white mb-4">
            Our Courses
          </h1>
          <p className="text-xl text-slate-300 max-w-3xl mx-auto">
            Choose from our carefully designed courses that cater to every stage of your UPSC preparation journey.
          </p>
        </div>
      </section>

      {/* Features */}
      <section className="py-12 bg-transparent">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-2 md:grid-cols-4 gap-6">
            {features.map((feature, index) => (
              <div key={index} className="text-center p-4 rounded-xl hover:bg-white/5 transition-colors">
                <feature.icon className="h-10 w-10 text-blue-500 mx-auto mb-3" />
                <h3 className="font-semibold text-white">{feature.title}</h3>
                <p className="text-sm text-slate-400">{feature.description}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Courses Grid */}
      <section className="py-20">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="space-y-12">
            {courses.map((course, index) => (
              <Card
                key={course.id}
                className={`overflow-hidden ${course.highlighted ? 'ring-2 ring-blue-500' : ''}`}
              >
                <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                  {/* Course Image */}
                  <div className="lg:col-span-1">
                    <img
                      src={course.image || 'https://via.placeholder.com/800x600'}
                      alt={course.title}
                      className="w-full h-64 lg:h-full object-cover rounded-lg"
                    />
                  </div>

                  {/* Course Details */}
                  <div className="lg:col-span-2">
                    <div className="flex flex-wrap items-center gap-4 mb-4">
                      {course.highlighted && (
                        <span className="bg-blue-600 text-white px-3 py-1 rounded-full text-sm font-medium shadow-md shadow-blue-900/20">
                          Most Popular
                        </span>
                      )}
                      <span className="bg-slate-700 text-slate-200 px-3 py-1 rounded-full text-sm border border-slate-600">
                        {course.duration}
                      </span>
                    </div>

                    <h3 className="text-2xl font-bold text-white mb-2">{course.title}</h3>
                    <p className="text-slate-300 mb-4">{course.fullDescription}</p>

                    <div className="grid grid-cols-3 gap-4 mb-6">
                      <div className="text-center p-2 rounded-lg bg-slate-800/50">
                        <div className="text-lg font-semibold text-blue-400">{course.classes}</div>
                        <div className="text-sm text-slate-500">Classes</div>
                      </div>
                      <div className="text-center p-2 rounded-lg bg-slate-800/50">
                        <div className="text-lg font-semibold text-blue-400">{course.students}</div>
                        <div className="text-sm text-slate-500">Capacity</div>
                      </div>
                      <div className="text-center p-2 rounded-lg bg-slate-800/50">
                        <div className="text-lg font-semibold text-amber-400">{course.price}</div>
                        <div className="text-sm text-slate-500">Fee</div>
                      </div>
                    </div>

                    <div className="border-t border-white/10 pt-6">
                      <h4 className="font-semibold text-white mb-3">Key Features:</h4>
                      <div className="grid grid-cols-1 md:grid-cols-2 gap-2 mb-6">
                        {course.features.map((feature, idx) => (
                          <div key={idx} className="flex items-center space-x-2">
                            <CheckCircle className="h-5 w-5 text-green-500 flex-shrink-0" />
                            <span className="text-sm text-slate-400">{feature}</span>
                          </div>
                        ))}
                      </div>
                    </div>

                    <div className="flex flex-wrap gap-4">
                      <Link to="/contact">
                        <Button>Enroll Now</Button>
                      </Link>
                      <Button variant="outline" onClick={() => setActiveCourse(activeCourse === course.id ? null : course.id)}>
                        {activeCourse === course.id ? 'Hide Details' : 'View Details'}
                      </Button>
                    </div>
                  </div>
                </div>

                {/* Expanded Details */}
                {activeCourse === course.id && (
                  <div className="mt-8 pt-8 border-t border-white/10">
                    <h4 className="font-semibold text-lg text-white mb-4">Detailed Syllabus</h4>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                      <ul className="space-y-2">
                        <li className="flex items-center space-x-2">
                          <Play className="h-4 w-4 text-blue-500" />
                          <span className="text-slate-300">GS Paper I - Indian Heritage & Culture</span>
                        </li>
                        <li className="flex items-center space-x-2">
                          <Play className="h-4 w-4 text-blue-500" />
                          <span className="text-slate-300">GS Paper II - Governance & Constitution</span>
                        </li>
                        <li className="flex items-center space-x-2">
                          <Play className="h-4 w-4 text-blue-500" />
                          <span className="text-slate-300">GS Paper III - Economy & Security</span>
                        </li>
                      </ul>
                      <ul className="space-y-2">
                        <li className="flex items-center space-x-2">
                          <Play className="h-4 w-4 text-blue-500" />
                          <span className="text-slate-300">GS Paper IV - Ethics & Integrity</span>
                        </li>
                        <li className="flex items-center space-x-2">
                          <Play className="h-4 w-4 text-blue-500" />
                          <span className="text-slate-300">Optional Subject Coverage</span>
                        </li>
                        <li className="flex items-center space-x-2">
                          <Play className="h-4 w-4 text-blue-500" />
                          <span className="text-slate-300">Current Affairs Integration</span>
                        </li>
                      </ul>
                    </div>
                  </div>
                )}
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* FAQ Section */}
      <section className="py-20 bg-transparent">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="text-center mb-16">
            <h2 className="text-3xl md:text-4xl font-bold text-white mb-4">
              Frequently Asked Questions
            </h2>
            <p className="text-lg text-slate-400 max-w-2xl mx-auto">
              Get answers to common questions about our courses and admission process.
            </p>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {[
              {
                q: 'What is the eligibility criteria for the courses?',
                a: 'Any graduate can enroll in our courses. There are no specific eligibility criteria other than a graduation degree.',
              },
              {
                q: 'Do you provide study materials?',
                a: 'Yes, comprehensive study materials, notes, and current affairs compilations are included in all our courses.',
              },
              {
                q: 'Can I join online if I cannot attend physically?',
                a: 'Yes, we offer online classes and recorded sessions for all our courses. You can opt for the online mode during enrollment.',
              },
              {
                q: 'What is the refund policy?',
                a: 'We have a transparent refund policy. Please refer to our terms and conditions or contact us for detailed information.',
              },
              {
                q: 'Do you provide installment options for fees?',
                a: 'Yes, we offer flexible payment options including EMI and installment facilities. Contact us for more details.',
              },
              {
                q: 'What is the batch timing?',
                a: 'We have multiple batches including morning (6 AM - 9 AM), evening (4 PM - 7 PM), and weekend batches to suit different schedules.',
              },
            ].map((faq, index) => (
              <Card key={index} className="hover:border-amber-500/30">
                <h3 className="font-semibold text-white mb-2 text-lg">{faq.q}</h3>
                <p className="text-slate-400">{faq.a}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>

      {/* CTA */}
      <section className="py-20 bg-slate-900">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
          <div className="glass-card p-12 rounded-3xl relative overflow-hidden">
            <div className="absolute top-0 right-0 w-64 h-64 bg-amber-500/10 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2"></div>
            <h2 className="text-3xl md:text-4xl font-bold text-white mb-4 relative z-10">
              Still Have Questions?
            </h2>
            <p className="text-xl text-slate-300 mb-8 max-w-2xl mx-auto relative z-10">
              Our counseling team is here to help you choose the right course and guide you through the admission process.
            </p>
            <Link to="/contact" className="relative z-10">
              <Button variant="secondary" size="lg">
                Get Free Counseling
              </Button>
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
};

export default Courses;