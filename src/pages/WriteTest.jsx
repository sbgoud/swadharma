import React, { useState, useEffect } from 'react';
import Card from '../components/Card';
import { Clock, AlertCircle, CheckCircle } from 'lucide-react';
import { fetchAllTests } from '../services/supabaseService';

const WriteTest = () => {
  const [selectedTest, setSelectedTest] = useState(null);
  const [tests, setTests] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const loadTests = async () => {
      const allTests = await fetchAllTests();
      setTests(allTests);
      setLoading(false);
    };

    loadTests();
  }, []);

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
        <div className="max-w-7xl mx-auto text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
          <p className="text-gray-600">Loading tests...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-12">
          <h1 className="text-3xl font-bold text-gray-900 mb-4">Write a New Test</h1>
          <p className="text-lg text-gray-600">Choose a test to begin your assessment</p>
        </div>

        <div className="grid md:grid-cols-3 gap-8">
          {tests.map((test) => (
            <Card key={test.id} className="hover:shadow-lg transition-shadow">
              <div className="flex items-start justify-between mb-4">
                <div className="bg-amber-100 p-3 rounded-lg">
                  <Clock size={24} className="text-amber-600" />
                </div>
                <span className={`px-3 py-1 rounded-full text-sm font-medium ${
                  test.difficulty === 'Easy' ? 'bg-green-100 text-green-700' :
                  test.difficulty === 'Medium' ? 'bg-yellow-100 text-yellow-700' :
                  'bg-red-100 text-red-700'
                }`}>
                  {test.difficulty}
                </span>
              </div>
              
              <h3 className="text-xl font-bold text-gray-900 mb-2">{test.title}</h3>
              
              <div className="space-y-2 mb-6">
                <div className="flex items-center text-sm text-gray-600">
                  <Clock size={14} className="mr-2" />
                  <span>Duration: {Math.floor(test.duration / 60)} Hours {test.duration % 60} Minutes</span>
                </div>
                <div className="flex items-center text-sm text-gray-600">
                  <CheckCircle size={14} className="mr-2" />
                  <span>Questions: {test.total_questions}</span>
                </div>
                <div className="flex items-center text-sm text-gray-600">
                  <AlertCircle size={14} className="mr-2" />
                  <span>Subject: {test.subjects?.name}</span>
                </div>
              </div>
              
              <button 
                className="w-full bg-blue-600 text-white py-2 rounded-lg font-medium hover:bg-blue-700 transition-colors"
                onClick={() => setSelectedTest(test)}
              >
                Start Test
              </button>
            </Card>
          ))}
        </div>

        {selectedTest && (
          <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50">
            <Card className="max-w-md w-full">
              <div className="text-center">
                <h3 className="text-xl font-bold text-gray-900 mb-2">Start Test</h3>
                <p className="text-gray-600 mb-4">{selectedTest.title}</p>
                <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-4 mb-6">
                  <p className="text-sm text-yellow-700">
                    Once you start the test, you cannot pause or stop it. Please ensure you have enough time to complete the test.
                  </p>
                </div>
                <div className="flex space-x-3">
                  <button 
                    className="flex-1 bg-blue-600 text-white py-2 rounded-lg font-medium hover:bg-blue-700 transition-colors"
                    onClick={() => setSelectedTest(null)}
                  >
                    Cancel
                  </button>
                  <button 
                    className="flex-1 bg-green-600 text-white py-2 rounded-lg font-medium hover:bg-green-700 transition-colors"
                    onClick={() => {
                      setSelectedTest(null);
                      // Navigate to test page
                    }}
                  >
                    Start Now
                  </button>
                </div>
              </div>
            </Card>
          </div>
        )}
      </div>
    </div>
  );
};

export default WriteTest;
