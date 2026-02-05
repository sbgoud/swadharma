import { useState } from 'react';
import { CheckCircle2, ChevronRight, ChevronLeft } from 'lucide-react';
import Button from '../components/Button';
import Card from '../components/Card';
import { motion, AnimatePresence } from 'framer-motion';
import { useNavigate } from 'react-router-dom';
import { useApp } from '../context/AppContext';

const Courses = () => {
  const [selectedExam, setSelectedExam] = useState(null);
  const navigate = useNavigate();
  const { user } = useApp();

  const exams = [
    {
      id: 'upsc',
      name: 'UPSC',
      image: 'https://images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&w=800',
      description: 'Comprehensive preparation for the UPSC Civil Services Exam with expertly crafted test series',
      courses: [
        {
          name: 'UPSC Prelims Test Series 2026',
          amount: '₹8,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'UPRE'
        }
      ]
    },
    {
      id: 'tgpsc',
      name: 'TGPSC',
      image: 'https://images.pexels.com/photos/3861972/pexels-photo-3861972.jpeg?auto=compress&cs=tinysrgb&w=800',
      description: 'Complete test series for all Telangana State Public Service Commission exams',
      courses: [
        {
          name: 'TGPSC Group 1 Test Series',
          amount: '₹12,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'TGR1'
        },
        {
          name: 'TGPSC Group 2 Test Series',
          amount: '₹10,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'TGR2'
        },
        {
          name: 'TGPSC Group 3 Test Series',
          amount: '₹8,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'TGR3'
        },
        {
          name: 'TGPSC Group 4 Test Series',
          amount: '₹6,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'TGR4'
        }
      ]
    },
    {
      id: 'appsc',
      name: 'APPSC',
      image: 'https://images.pexels.com/photos/416405/pexels-photo-416405.jpeg?auto=compress&cs=tinysrgb&w=800',
      description: 'Specialized test series for Andhra Pradesh Public Service Commission examinations',
      courses: [
        {
          name: 'APPSC Group 1 Test Series',
          amount: '₹12,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'AGR1'
        },
        {
          name: 'APPSC Group 2 Test Series',
          amount: '₹10,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'AGR2'
        },
        {
          name: 'APPSC Group 3 Test Series',
          amount: '₹8,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'AGR3'
        },
        {
          name: 'APPSC Group 4 Test Series',
          amount: '₹6,000',
          features: [
            'Unlimited Full Test Series',
            'Unlimited Sectional Test Series',
            '15 Grand Tests',
            'Free Study Resources',
            'Detailed Performance Analysis',
            'Question Explanations'
          ],
          planPrefix: 'AGR4'
        }
      ]
    }
  ];

  const handleEnroll = (course) => {
    if (!user) {
      navigate('/login');
    } else {
      navigate('/checkout', { state: { course } });
    }
  };

  return (
    <div className="bg-white min-h-screen pt-20">
      <div className="bg-[#003366] py-12 relative overflow-hidden">
        <div className="absolute top-0 right-0 w-48 h-48 bg-white/5 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2"></div>
        <div className="absolute bottom-0 left-0 w-36 h-36 bg-amber-500/10 rounded-full blur-2xl translate-y-1/2 -translate-x-1/2"></div>

        <div className="container-width text-center relative z-10">
          <span className="inline-block py-1 px-3 rounded-full bg-blue-800/50 border border-blue-400/30 text-blue-200 text-xs font-bold tracking-widest uppercase mb-3">
            Academic Year 2026-27
          </span>
          <h1 className="text-3xl md:text-4xl font-black text-white mb-4 font-serif">
            Our Courses
          </h1>
          <p className="text-lg text-blue-100 max-w-2xl mx-auto leading-relaxed">
            Expertly crafted test series for various competitive exams
          </p>
        </div>
      </div>

      <div className="container-width py-12">
        <AnimatePresence mode="wait">
          {!selectedExam ? (
            <motion.div
              key="exam-list"
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, y: -20 }}
              transition={{ duration: 0.3 }}
            >
              <div className="flex items-center gap-4 mb-8">
                <div className="h-8 w-1 bg-amber-500 rounded-full"></div>
                <h2 className="text-2xl font-bold text-gray-900">Select Exam</h2>
              </div>

              <div className="grid md:grid-cols-3 gap-8">
                {exams.map((exam) => (
                  <motion.div
                    key={exam.id}
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.3, delay: exams.indexOf(exam) * 0.1 }}
                    className="cursor-pointer rounded-2xl overflow-hidden border border-gray-200 shadow-lg hover:shadow-xl transition-all duration-300"
                    onClick={() => setSelectedExam(exam.id)}
                  >
                    <div className="relative h-64">
                      <img
                        src={exam.image}
                        alt={exam.name}
                        className="w-full h-full object-cover"
                      />
                      <div className="absolute inset-0 bg-gradient-to-t from-[#003366]/90 via-transparent to-transparent"></div>
                    </div>
                    <div className="p-6">
                      <h3 className="text-2xl font-bold text-[#003366] mb-3 font-serif">{exam.name}</h3>
                      <p className="text-gray-600 mb-4 leading-relaxed">{exam.description}</p>
                      <div className="flex items-center gap-2 text-gray-500 mb-6">
                        <span className="text-sm font-medium">{exam.courses.length} test series available</span>
                      </div>
                      <Button variant="primary" className="w-full" size="lg">
                        View Courses <ChevronRight size={16} className="ml-2" />
                      </Button>
                    </div>
                  </motion.div>
                ))}
              </div>
            </motion.div>
          ) : (
            <motion.div
              key="course-details"
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -20 }}
              transition={{ duration: 0.3 }}
              className="flex flex-col md:flex-row gap-8"
            >
              <div className="md:w-1/4">
                <motion.button
                  initial={{ opacity: 0, x: -10 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ delay: 0.1 }}
                  onClick={() => setSelectedExam(null)}
                  className="flex items-center gap-2 text-gray-600 hover:text-[#003366] mb-6 transition-colors"
                >
                  <ChevronLeft size={20} />
                  <span className="text-lg font-medium">Back to Exams</span>
                </motion.button>

                <h2 className="text-2xl font-bold text-gray-900 mb-6">Select Exam</h2>
                <div className="space-y-4">
                  {exams.map((exam) => (
                    <motion.div
                      key={exam.id}
                      initial={{ opacity: 0, x: -10 }}
                      animate={{ opacity: 1, x: 0 }}
                      transition={{ delay: 0.2 + exams.indexOf(exam) * 0.05 }}
                      className={`cursor-pointer rounded-xl overflow-hidden transition-all duration-300 ${
                        selectedExam === exam.id
                          ? 'ring-2 ring-amber-500 shadow-lg'
                          : 'border border-gray-200 shadow-sm hover:shadow-md'
                      }`}
                      onClick={() => setSelectedExam(exam.id)}
                    >
                      <div className="relative h-32">
                        <img
                          src={exam.image}
                          alt={exam.name}
                          className="w-full h-full object-cover"
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-[#003366]/90 via-transparent to-transparent"></div>
                      </div>
                      <div className="bg-white p-4">
                        <h3 className="text-xl font-bold text-[#003366] font-serif">{exam.name}</h3>
                        <p className="text-sm text-gray-500 mt-1">
                          {exam.courses.length} test series
                        </p>
                      </div>
                    </motion.div>
                  ))}
                </div>
              </div>

              <div className="md:w-3/4">
                <motion.div
                  initial={{ opacity: 0, y: 20 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: 0.3 }}
                >
                  <div className="flex items-center gap-4 mb-8">
                    <div className="h-8 w-1 bg-blue-500 rounded-full"></div>
                    <h2 className="text-2xl font-bold text-gray-900">
                      {exams.find(exam => exam.id === selectedExam)?.name} Test Series
                    </h2>
                  </div>

                  <div className="grid md:grid-cols-2 gap-6">
                    {exams.find(exam => exam.id === selectedExam)?.courses.map((course, index) => (
                      <motion.div
                        key={index}
                        initial={{ opacity: 0, scale: 0.9 }}
                        animate={{ opacity: 1, scale: 1 }}
                        transition={{ delay: 0.4 + index * 0.1 }}
                      >
                        <Card noPadding className="border border-gray-200 shadow-lg">
                          <div className="p-6">
                            <h3 className="text-xl font-bold text-gray-800 mb-3">{course.name}</h3>
                            <div className="text-3xl font-bold text-amber-600 mb-4">
                              {course.amount}
                            </div>
                            <div className="space-y-2 mb-6 bg-gray-50 p-4 rounded-xl">
                              {course.features.map((feature, idx) => (
                                <div key={idx} className="flex items-center gap-2">
                                  <CheckCircle2 className="w-4 h-4 text-green-600" />
                                  <span className="text-sm text-gray-600">{feature}</span>
                                </div>
                              ))}
                            </div>
                            <Button variant="primary" className="w-full" onClick={() => handleEnroll(course)}>
                              Enroll Now
                            </Button>
                          </div>
                        </Card>
                      </motion.div>
                    ))}
                  </div>
                </motion.div>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  );
};

export default Courses;
