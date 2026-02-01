import { useState } from 'react';
import { insertQuestions } from '../services/supabaseService';
import { useToast } from '../components/Toast';

const AddQuestions = () => {
  const [questionsJson, setQuestionsJson] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [result, setResult] = useState(null);
  const toast = useToast();

  // Sample question object structure
  const sampleQuestions = {
    subject_id: 8,
    subject_name: "upsc_Ancient_Indian_History",
    questions: [
      {
        question_text: "The Indus Valley Civilization was primarily located in which modern-day region?",
        options: {
          "A": "Punjab",
          "B": "Sindh and Punjab",
          "C": "Gujarat",
          "D": "Rajasthan"
        },
        correct_answer: "B",
        question_type: "MCQ",
        difficulty: 25,
        is_published: 0,
        explanation: "The Indus Valley Civilization was primarily located in the Sindh and Punjab regions of modern-day Pakistan, with major sites like Harappa and Mohenjo-daro."
      },
      {
        question_text: "Which metal was first used by humans during the Chalcolithic period?",
        options: {
          "A": "Iron",
          "B": "Copper",
          "C": "Gold",
          "D": "Silver"
        },
        correct_answer: "B",
        question_type: "MCQ",
        difficulty: 30,
        is_published: 0,
        explanation: "Copper was the first metal used by humans during the Chalcolithic period, marking the transition from stone to metal tools around 7000 BCE."
      }
    ]
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsSubmitting(true);
    setResult(null);

    try {
      // Validate input is not empty
      if (!questionsJson.trim()) {
        toast.error('Please enter questions JSON.');
        setResult({
          success: false,
          error: 'Input is empty',
          details: 'Please provide a JSON object with questions.'
        });
        setIsSubmitting(false);
        return;
      }

      // Parse JSON
      let parsedData;
      try {
        parsedData = JSON.parse(questionsJson);
      } catch (parseError) {
        console.error('JSON Parse Error:', parseError);
        const errorMessage = parseError.message || 'Invalid JSON syntax';
        toast.error(`Invalid JSON: ${errorMessage}`);
        setResult({
          success: false,
          error: 'JSON Parse Error',
          details: errorMessage,
          suggestion: 'Check for missing commas, quotes, or brackets.'
        });
        setIsSubmitting(false);
        return;
      }

      // Validate top-level structure
      if (!parsedData || typeof parsedData !== 'object') {
        toast.error('Invalid data format. Expected an object.');
        setResult({
          success: false,
          error: 'Invalid Data Format',
          details: 'Root element must be a JSON object.'
        });
        setIsSubmitting(false);
        return;
      }

      if (!parsedData.subject_id) {
        toast.error('Missing subject_id field.');
        setResult({
          success: false,
          error: 'Missing Required Field',
          details: 'subject_id is required.',
          suggestion: 'Add "subject_id": <number> to your JSON object.'
        });
        setIsSubmitting(false);
        return;
      }

      if (typeof parsedData.subject_id !== 'number') {
        toast.error('subject_id must be a number.');
        setResult({
          success: false,
          error: 'Invalid Field Type',
          details: 'subject_id must be a number.',
          suggestion: 'Example: "subject_id": 8'
        });
        setIsSubmitting(false);
        return;
      }

      if (!parsedData.subject_name || typeof parsedData.subject_name !== 'string') {
        toast.error('Missing or invalid subject_name field.');
        setResult({
          success: false,
          error: 'Missing or Invalid Field',
          details: 'subject_name is required and must be a string.',
          suggestion: 'Example: "subject_name": "upsc_Ancient_Indian_History"'
        });
        setIsSubmitting(false);
        return;
      }

      if (!parsedData.questions) {
        toast.error('Missing questions array.');
        setResult({
          success: false,
          error: 'Missing Required Field',
          details: 'questions array is required.',
          suggestion: 'Add "questions": [] to your JSON object.'
        });
        setIsSubmitting(false);
        return;
      }

      if (!Array.isArray(parsedData.questions)) {
        toast.error('questions must be an array.');
        setResult({
          success: false,
          error: 'Invalid Field Type',
          details: 'questions must be an array.',
          suggestion: 'Example: "questions": [{...}, {...}]'
        });
        setIsSubmitting(false);
        return;
      }

      if (parsedData.questions.length === 0) {
        toast.error('Questions array cannot be empty.');
        setResult({
          success: false,
          error: 'Empty Questions Array',
          details: 'At least one question is required.'
        });
        setIsSubmitting(false);
        return;
      }

      // Validate each question
      const validationErrors = [];
      for (let i = 0; i < parsedData.questions.length; i++) {
        const q = parsedData.questions[i];
        const questionNum = i + 1;

        if (!q || typeof q !== 'object') {
          validationErrors.push(`Question ${questionNum}: Invalid question object`);
          continue;
        }

        if (!q.question_text || typeof q.question_text !== 'string') {
          validationErrors.push(`Question ${questionNum}: Missing or invalid question_text`);
        }

        if (!q.options || typeof q.options !== 'object') {
          validationErrors.push(`Question ${questionNum}: Missing or invalid options object`);
        } else {
          const requiredOptions = ['A', 'B', 'C', 'D'];
          for (const opt of requiredOptions) {
            if (!q.options[opt] || typeof q.options[opt] !== 'string') {
              validationErrors.push(`Question ${questionNum}: Missing or invalid option ${opt}`);
            }
          }
        }

        if (!q.correct_answer || typeof q.correct_answer !== 'string') {
          validationErrors.push(`Question ${questionNum}: Missing or invalid correct_answer`);
        } else if (!['A', 'B', 'C', 'D'].includes(q.correct_answer)) {
          validationErrors.push(`Question ${questionNum}: correct_answer must be A, B, C, or D (got: ${q.correct_answer})`);
        }

        if (q.question_type && typeof q.question_type !== 'string') {
          validationErrors.push(`Question ${questionNum}: question_type must be a string`);
        }

        if (q.difficulty !== undefined && (typeof q.difficulty !== 'number' || q.difficulty < 1 || q.difficulty > 100)) {
          validationErrors.push(`Question ${questionNum}: difficulty must be a number between 1 and 100`);
        }

        if (q.is_published !== undefined && typeof q.is_published !== 'number') {
          validationErrors.push(`Question ${questionNum}: is_published must be a number (0 or 1)`);
        }

        if (!q.explanation || typeof q.explanation !== 'string') {
          validationErrors.push(`Question ${questionNum}: Missing or invalid explanation`);
        }
      }

      if (validationErrors.length > 0) {
        const errorSummary = validationErrors.slice(0, 5).join('\n');
        const moreErrors = validationErrors.length > 5 ? `\n... and ${validationErrors.length - 5} more errors` : '';
        toast.error(`Validation failed. Check details.`);
        setResult({
          success: false,
          error: 'Validation Errors',
          details: errorSummary + moreErrors,
          validationErrors: validationErrors
        });
        setIsSubmitting(false);
        return;
      }

      // Insert questions
      const response = await insertQuestions(parsedData);

      if (response.error) {
        console.error('Database Error:', response.error);
        
        // Handle specific database errors
        let errorMessage = response.error.message || 'Unknown database error';
        let suggestion = 'Please check your data and try again.';

        // Check for foreign key constraint violations
        if (errorMessage.includes('foreign key constraint') || errorMessage.includes('subjects')) {
          errorMessage = 'Subject not found';
          suggestion = `Make sure subject_id ${parsedData.subject_id} exists in the subjects table.`;
        }
        
        // Check for unique constraint violations
        if (errorMessage.includes('unique constraint') || errorMessage.includes('duplicate')) {
          errorMessage = 'Duplicate question detected';
          suggestion = 'A question with the same explanation already exists.';
        }

        // Check for connection errors
        if (errorMessage.includes('network') || errorMessage.includes('connection') || errorMessage.includes('timeout')) {
          errorMessage = 'Network error';
          suggestion = 'Check your internet connection and try again.';
        }

        // Check for RLS policy violations
        if (errorMessage.includes('row-level security policy') || response.error.code === '42501') {
          errorMessage = 'Permission Denied';
          suggestion = 'You do not have permission to add questions. Please contact an administrator or check your authentication status.';
        }

        toast.error(`Error: ${errorMessage}`);
        setResult({
          success: false,
          error: errorMessage,
          details: response.error.message,
          suggestion: suggestion,
          code: response.error.code
        });
      } else {
        toast.success(`Successfully added ${response.count} questions!`);
        setResult({
          success: true,
          count: response.count,
          data: response.data,
          message: `Successfully inserted ${response.count} questions into the database.`
        });
        setQuestionsJson(''); // Clear the input
      }

    } catch (error) {
      console.error('Unexpected Error:', error);
      toast.error('An unexpected error occurred.');
      setResult({
        success: false,
        error: 'Unexpected Error',
        details: error.message || 'An unknown error occurred',
        stack: process.env.NODE_ENV === 'development' ? error.stack : undefined
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  const loadSample = () => {
    setQuestionsJson(JSON.stringify(sampleQuestions, null, 2));
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-4xl mx-auto">
        <div className="text-center mb-8">
          <h1 className="text-4xl font-bold text-white mb-2">Add Questions</h1>
          <p className="text-slate-400">Paste your questions JSON object below to add them to the database</p>
        </div>

        {/* Sample Object Structure */}
        <div className="bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 mb-6 border border-slate-700">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-xl font-semibold text-white">Sample Object Structure</h2>
            <button
              onClick={loadSample}
              className="px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-lg transition-colors text-sm font-medium"
            >
              Load Sample
            </button>
          </div>
          <pre className="bg-slate-900 rounded-lg p-4 overflow-x-auto text-sm text-slate-300">
            <code>{JSON.stringify(sampleQuestions, null, 2)}</code>
          </pre>
        </div>

        {/* JSON Input Form */}
        <div className="bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 border border-slate-700">
          <form onSubmit={handleSubmit}>
            <div className="mb-4">
              <label htmlFor="questionsJson" className="block text-sm font-medium text-slate-300 mb-2">
                Questions JSON
              </label>
              <textarea
                id="questionsJson"
                value={questionsJson}
                onChange={(e) => setQuestionsJson(e.target.value)}
                placeholder="Paste your questions JSON object here..."
                className="w-full h-96 px-4 py-3 bg-slate-900 border border-slate-600 rounded-lg text-slate-100 placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent font-mono text-sm resize-none"
                required
              />
            </div>

            <button
              type="submit"
              disabled={isSubmitting || !questionsJson.trim()}
              className="w-full px-6 py-3 bg-blue-600 hover:bg-blue-700 disabled:bg-slate-600 disabled:cursor-not-allowed text-white font-semibold rounded-lg transition-colors"
            >
              {isSubmitting ? 'Adding Questions...' : 'Add Questions to Database'}
            </button>
          </form>
        </div>

        {/* Result Display */}
        {result && (
          <div className={`mt-6 rounded-xl p-6 border ${
            result.success
              ? 'bg-green-900/30 border-green-700'
              : 'bg-red-900/30 border-red-700'
          }`}>
            <h3 className={`text-lg font-semibold mb-3 ${
              result.success ? 'text-green-400' : 'text-red-400'
            }`}>
              {result.success ? '✓ Success!' : '✗ Error'}
            </h3>
            
            {result.success ? (
              <div className="space-y-2">
                <p className="text-slate-300">
                  Successfully added <span className="font-bold text-green-400">{result.count}</span> questions to the database.
                </p>
                {result.message && (
                  <p className="text-slate-400 text-sm">{result.message}</p>
                )}
              </div>
            ) : (
              <div className="space-y-3">
                <div>
                  <p className="text-red-300 font-medium">{result.error}</p>
                  {result.details && (
                    <p className="text-slate-400 text-sm mt-1 whitespace-pre-wrap">{result.details}</p>
                  )}
                </div>
                
                {result.suggestion && (
                  <div className="bg-slate-800/50 rounded-lg p-3 border border-slate-600">
                    <p className="text-blue-300 text-sm font-medium mb-1">💡 Suggestion:</p>
                    <p className="text-slate-300 text-sm">{result.suggestion}</p>
                  </div>
                )}
                
                {result.validationErrors && result.validationErrors.length > 0 && (
                  <div className="bg-slate-800/50 rounded-lg p-3 border border-slate-600 max-h-64 overflow-y-auto">
                    <p className="text-yellow-300 text-sm font-medium mb-2">
                      ⚠️ Validation Errors ({result.validationErrors.length}):
                    </p>
                    <ul className="space-y-1">
                      {result.validationErrors.map((error, index) => (
                        <li key={index} className="text-slate-300 text-sm flex items-start">
                          <span className="text-red-400 mr-2">•</span>
                          <span>{error}</span>
                        </li>
                      ))}
                    </ul>
                  </div>
                )}
                
                {result.code && (
                  <p className="text-slate-500 text-xs">Error Code: {result.code}</p>
                )}
                
                {result.stack && process.env.NODE_ENV === 'development' && (
                  <details className="mt-2">
                    <summary className="text-slate-500 text-xs cursor-pointer hover:text-slate-400">
                      View Stack Trace (Development Only)
                    </summary>
                    <pre className="mt-2 text-xs text-slate-600 overflow-x-auto bg-slate-900/50 p-2 rounded">
                      {result.stack}
                    </pre>
                  </details>
                )}
              </div>
            )}
          </div>
        )}

        {/* Instructions */}
        <div className="mt-6 bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 border border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Instructions</h3>
          <ul className="space-y-2 text-slate-300 text-sm">
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>The JSON object must include <code className="bg-slate-900 px-2 py-1 rounded">subject_id</code>, <code className="bg-slate-900 px-2 py-1 rounded">subject_name</code>, and <code className="bg-slate-900 px-2 py-1 rounded">questions</code> array.</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Each question must have <code className="bg-slate-900 px-2 py-1 rounded">question_text</code>, <code className="bg-slate-900 px-2 py-1 rounded">options</code> (A, B, C, D), <code className="bg-slate-900 px-2 py-1 rounded">correct_answer</code>, <code className="bg-slate-900 px-2 py-1 rounded">question_type</code>, <code className="bg-slate-900 px-2 py-1 rounded">difficulty</code>, <code className="bg-slate-900 px-2 py-1 rounded">is_published</code>, and <code className="bg-slate-900 px-2 py-1 rounded">explanation</code>.</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded">correct_answer</code> must be one of: A, B, C, or D.</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded">difficulty</code> should be a number between 1-100.</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded">is_published</code> should be 0 (unpublished) or 1 (published).</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Click "Load Sample" to see a properly formatted example.</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  );
};

export default AddQuestions;
