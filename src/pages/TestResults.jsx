import React from 'react';
import Card from '../components/Card';
import { BarChart3, Clock, CheckCircle, XCircle } from 'lucide-react';

const TestResults = () => {
  const results = [
    {
      id: 1,
      title: 'General Studies Paper 1',
      date: '2024-01-25',
      score: 75,
      total: 100,
      percentile: 92,
      status: 'Pass',
    },
    {
      id: 2,
      title: 'CSAT Paper 2',
      date: '2024-01-20',
      score: 68,
      total: 80,
      percentile: 85,
      status: 'Pass',
    },
    {
      id: 3,
      title: 'Current Affairs - January',
      date: '2024-01-15',
      score: 42,
      total: 50,
      percentile: 78,
      status: 'Pass',
    },
  ];

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
                <p className="text-3xl font-bold">{results.length}</p>
              </div>
              <BarChart3 size={32} className="text-blue-200" />
            </div>
          </Card>

          <Card className="bg-green-600 text-white">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-green-100 text-sm mb-1">Average Score</p>
                <p className="text-3xl font-bold">75%</p>
              </div>
              <CheckCircle size={32} className="text-green-200" />
            </div>
          </Card>

          <Card className="bg-amber-600 text-white">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-amber-100 text-sm mb-1">Top Percentile</p>
                <p className="text-3xl font-bold">92%</p>
              </div>
              <Clock size={32} className="text-amber-200" />
            </div>
          </Card>
        </div>

        <div className="space-y-6">
          {results.map((result) => (
            <Card key={result.id} className="hover:shadow-lg transition-shadow">
              <div className="flex items-start justify-between">
                <div className="flex-1">
                  <div className="flex items-center mb-2">
                    <h3 className="text-xl font-bold text-gray-900">{result.title}</h3>
                    <span className={`ml-3 px-3 py-1 rounded-full text-sm font-medium ${
                      result.status === 'Pass' ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700'
                    }`}>
                      {result.status}
                    </span>
                  </div>
                  
                  <p className="text-gray-600 text-sm mb-4">{result.date}</p>
                  
                  <div className="flex items-center space-x-6 mb-4">
                    <div>
                      <p className="text-sm text-gray-600">Score</p>
                      <p className="text-2xl font-bold text-gray-900">
                        {result.score}/{result.total}
                      </p>
                    </div>
                    <div>
                      <p className="text-sm text-gray-600">Percentage</p>
                      <p className="text-2xl font-bold text-gray-900">
                        {Math.round((result.score / result.total) * 100)}%
                      </p>
                    </div>
                    <div>
                      <p className="text-sm text-gray-600">Percentile</p>
                      <p className="text-2xl font-bold text-gray-900">{result.percentile}%</p>
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
