import React, { useState } from 'react';
import Card from '../components/Card';
import { Database, RefreshCw, CheckCircle, XCircle, ExternalLink, BookOpen } from 'lucide-react';
import { initializeDatabase } from '../utils/initializeDatabase';
import { seedQuestions } from '../utils/seedQuestions';
import QuestionCount from '../components/QuestionCount';

const InitializeDb = () => {
  const [loading, setLoading] = useState(false);
  const [result, setResult] = useState(null);
  const [error, setError] = useState(null);

  const [seeding, setSeeding] = useState(false);
  const [questionsSeeded, setQuestionsSeeded] = useState(false);

  const handleInitialize = async () => {
    setLoading(true);
    setResult(null);
    setError(null);

    try {
      const success = await initializeDatabase();
      
      if (success) {
        setResult('Database initialized successfully! Tables created and dummy data inserted.');
      } else {
        setError('The run_sql RPC function is not available in the remote Supabase database. Please run the SQL script directly from the Supabase Dashboard SQL editor.');
      }
    } catch (err) {
      setError(`Error: ${err.message}`);
    } finally {
      setLoading(false);
    }
  };

  const handleSeedQuestions = async () => {
    setSeeding(true);
    setResult(null);
    setError(null);

    try {
      const success = await seedQuestions();
      
      if (success) {
        setQuestionsSeeded(true);
        setResult('Successfully seeded 100 questions from various subjects!');
      } else {
        setError('The run_sql RPC function is not available in the remote Supabase database. Please run the SQL script directly from the Supabase Dashboard SQL editor.');
      }
    } catch (err) {
      setError(`Error: ${err.message}`);
    } finally {
      setSeeding(false);
    }
  };

  return (
    <div className="min-h-screen bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-2xl mx-auto">
        <Card className="p-8">
          <div className="text-center mb-8">
            <div className="bg-blue-100 p-4 rounded-full inline-block mb-4">
              <Database size={48} className="text-blue-600" />
            </div>
            <h1 className="text-3xl font-bold text-gray-900 mb-2">Initialize Database</h1>
            <p className="text-gray-600">Create tables and seed initial data for the Swadharma IAS Academy</p>
          </div>

          <div className="mb-6">
            <p className="text-gray-600 mb-4">
              This will create all necessary tables for the application and insert sample data for testing.
            </p>
            <p className="text-sm text-gray-500">
              <strong>Note:</strong> The run_sql RPC function is not available in the remote Supabase database. You need to run the SQL script manually.
            </p>
          </div>

          <QuestionCount />
          <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-6 mb-8">
            <h3 className="text-lg font-semibold text-yellow-800 mb-3">
              Manual Database Initialization
            </h3>
            <ol className="list-decimal list-inside text-yellow-700 space-y-2 text-sm">
              <li>
                <a 
                  href="https://app.supabase.com"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="text-yellow-800 font-medium hover:underline"
                >
                  Open the Supabase Dashboard
                </a>
              </li>
              <li>Select your project (swadharma)</li>
              <li>Go to the SQL Editor section</li>
              <li>Copy and paste the SQL from <code className="bg-yellow-200 px-1 rounded">supabase/sql/seed_questions.sql</code></li>
              <li>Click "Run" to execute the SQL script</li>
            </ol>
          </div>

          <div className="flex justify-center space-x-4">
            <button
              onClick={handleInitialize}
              disabled={loading}
              className="bg-blue-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-blue-700 disabled:opacity-50 disabled:cursor-not-allowed flex items-center space-x-2"
            >
              {loading ? (
                <RefreshCw className="animate-spin" size={20} />
              ) : (
                <Database size={20} />
              )}
              <span>{loading ? 'Checking Database...' : 'Check Database'}</span>
            </button>
            
            <button
              onClick={handleSeedQuestions}
              disabled={seeding || questionsSeeded}
              className="bg-green-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-green-700 disabled:opacity-50 disabled:cursor-not-allowed flex items-center space-x-2"
            >
              {seeding ? (
                <RefreshCw className="animate-spin" size={20} />
              ) : (
                <BookOpen size={20} />
              )}
              <span>{seeding ? 'Seeding Questions...' : 'Seed 100 Questions'}</span>
            </button>
          </div>

          {result && (
            <div className="mt-6 p-4 bg-green-50 rounded-lg flex items-center space-x-3">
              <CheckCircle size={24} className="text-green-600" />
              <p className="text-green-700">{result}</p>
            </div>
          )}

          {error && (
            <div className="mt-6 p-4 bg-red-50 rounded-lg flex items-center space-x-3">
              <XCircle size={24} className="text-red-600" />
              <p className="text-red-700">{error}</p>
            </div>
          )}
        </Card>
      </div>
    </div>
  );
};

export default InitializeDb;
