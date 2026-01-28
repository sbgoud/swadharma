import React, { useState, useEffect } from 'react';
import Card from '../components/Card';
import { BarChart3, Clock, CheckCircle, XCircle } from 'lucide-react';
import { useApp } from '../context/AppContext';
import { fetchUserTestAttempts } from '../services/supabaseService';

const TestResults = () => {
  const { user } = useApp();
  const [results, setResults] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const loadResults = async () => {
      if (user) {
        const testAttempts = await fetchUserTestAttempts(user.id);
        setResults(testAttempts);
      }
      setLoading(false);
    };

    loadResults();
  }, [user]);

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
        <div className="max-w-7xl mx-auto text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
          <p className="text-gray-600">Loading test results...</p>
        </div>
      </div>
    );
  }

  // Calculate statistics
  const totalTests = results.length;
  const averageScore = totalTests > 0 
    ? Math.round(results.reduce((sum, attempt) => sum + (attempt.score / attempt.total_marks) * 100, 0) / totalTests) 
    : 0;
  const topPercentile = totalTests > 0 
    ? Math.max(...results.map(attempt => Math.round((attempt.score / attempt.total_marks) * 100))) 
    : 0;

  return (
    <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-12">
          <h1 className="text-3xl font-bold text-gray-900 mb-4">Test Results</h1>
          <p className="text-lg text-gray-600">View your performance and analyze your progress</p>
        </div>

        <div className="grid md:grid-cols-3 gap-8 mb-12">
          <Card className="bg-blue-600 text-white">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-blue-100 text-sm mb-1">Total Tests Taken</p>
                <p className="text-3xl font-bold">{totalTests}</p>
              </div>
              <BarChart3 size={32} className="text-blue-200" />
            </div>
          </Card>

          <Card className="bg-green-600 text-white">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-green-100 text-sm mb-1">Average Score</p>
                <p className="text-3xl font-bold">{averageScore}%</p>
              </div>
              <CheckCircle size={32} className="text-green-200" />
            </div>
          </Card>

          <Card className="bg-amber-600 text-white">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-amber-100 text-sm mb-1">Top Percentile</p>
                <p className="text-3xl font-bold">{topPercentile}%</p>
              </div>
              <Clock size={32} className="text-amber-200" />
            </div>
          </Card>
        </div>

        <div className="space-y-6">
          {results.map((attempt) => (
            <Card key={attempt.id} className="hover:shadow-lg transition-shadow">
              <div className="flex items-start justify-between">
                <div className="flex-1">
                  <div className="flex items-center mb-2">
                    <h3 className="text-xl font-bold text-gray-900">{attempt.tests.title}</h3>
                    <span className={`ml-3 px-3 py-1 rounded-full text-sm font-medium ${
                      attempt.score >= attempt.total_marks * 0.6 ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700'
                    }`}>
                      {attempt.score >= attempt.total_marks * 0.6 ? 'Pass' : 'Fail'}
                    </span>
                  </div>
                  
                  <p className="text-gray-600 text-sm mb-4">{new Date(attempt.created_at).toLocaleDateString()}</p>
                  
                  <div className="flex items-center space-x-6 mb-4">
                    <div>
                      <p className="text-sm text-gray-600">Score</p>
                      <p className="text-2xl font-bold text-gray-900">
                        {attempt.score}/{attempt.total_marks}
                      </p>
                    </div>
                    <div>
                      <p className="text-sm text-gray-600">Percentage</p>
                      <p className="text-2xl font-bold text-gray-900">
                        {Math.round((attempt.score / attempt.total_marks) * 100)}%
                      </p>
                    </div>
                    <div>
                      <p className="text-sm text-gray-600">Percentile</p>
                      <p className="text-2xl font-bold text-gray-900">{Math.round((attempt.score / attempt.total_marks) * 100)}%</p>
                    </div>
                  </div>
                </div>
              </div>
              
              <div className="flex justify-end">
                <button className="bg-blue-600 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-blue-700 transition-colors">
                  View Detailed Analysis
                </button>
              </div>
            </Card>
          ))}
        </div>

        {results.length === 0 && (
          <div className="text-center py-16 bg-white rounded-lg shadow">
            <BarChart3 size={64} className="text-gray-400 mx-auto mb-4" />
            <h3 className="text-xl font-semibold text-gray-900 mb-2">No test results available</h3>
            <p className="text-gray-600 mb-6">Take your first test to see your results</p>
            <button className="bg-blue-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-blue-700 transition-colors">
              Start First Test
            </button>
          </div>
        )}
      </div>
    </div>
  );
};

export default TestResults;
