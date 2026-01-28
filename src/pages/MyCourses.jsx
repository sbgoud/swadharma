import React from 'react';
import Card from '../components/Card';
import { BookOpen, Clock, CheckCircle } from 'lucide-react';

const MyCourses = () => {
  const courses = [
    {
      title: 'Prelims Test Series 2026',
      description: 'Comprehensive mock tests designed to simulate the real exam environment',
      progress: 75,
      nextTest: 'Tomorrow at 10:00 AM',
    },
    {
      title: 'GS Foundation Course',
      description: 'Complete coverage of Prelims and Mains syllabus',
      progress: 30,
      nextTest: 'Next week',
    },
  ];

  return (
    <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-12">
          <h1 className="text-3xl font-bold text-gray-900 mb-4">My Courses</h1>
          <p className="text-lg text-gray-600">Track your progress and continue learning</p>
        </div>

        <div className="grid md:grid-cols-2 gap-8">
          {courses.map((course, index) => (
            <Card key={index} className="hover:shadow-lg transition-shadow">
              <div className="flex items-start justify-between mb-4">
                <div className="bg-blue-100 p-3 rounded-lg">
                  <BookOpen size={24} className="text-blue-600" />
                </div>
                <span className="bg-green-100 text-green-700 px-3 py-1 rounded-full text-sm font-medium">
                  Active
                </span>
              </div>
              
              <h3 className="text-xl font-bold text-gray-900 mb-2">{course.title}</h3>
              <p className="text-gray-600 mb-4">{course.description}</p>
              
              <div className="mb-4">
                <div className="flex justify-between text-sm text-gray-600 mb-1">
                  <span>Progress</span>
                  <span>{course.progress}%</span>
                </div>
                <div className="w-full bg-gray-200 rounded-full h-2">
                  <div 
                    className="bg-blue-600 h-2 rounded-full"
                    style={{ width: `${course.progress}%` }}
                  ></div>
                </div>
              </div>
              
              <div className="flex items-center text-sm text-gray-600 mb-6">
                <Clock size={16} className="mr-2" />
                <span>Next test: {course.nextTest}</span>
              </div>
              
              <button className="w-full bg-blue-600 text-white py-2 rounded-lg font-medium hover:bg-blue-700 transition-colors">
                Continue Learning
              </button>
            </Card>
          ))}
        </div>

        {courses.length === 0 && (
          <div className="text-center py-16 bg-white rounded-lg shadow">
            <BookOpen size={64} className="text-gray-400 mx-auto mb-4" />
            <h3 className="text-xl font-semibold text-gray-900 mb-2">No courses enrolled</h3>
            <p className="text-gray-600 mb-6">Browse our courses to get started</p>
            <button className="bg-blue-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-blue-700 transition-colors">
              Browse Courses
            </button>
          </div>
        )}
      </div>
    </div>
  );
};

export default MyCourses;
