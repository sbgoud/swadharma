import { useState, useRef } from 'react';
import { insertQuestionsBulk } from '../services/supabaseService';
import { useToast } from '../components/Toast';
import { BookOpen, CheckCircle, AlertCircle, Loader2, ClipboardCopy } from 'lucide-react';

const AddQuestionsBulk = () => {
  const [questionsJson, setQuestionsJson] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [result, setResult] = useState(null);
  const [parsedPreview, setParsedPreview] = useState(null);
  const textareaRef = useRef(null);
  const toast = useToast();

  // Sample question format
  const sampleQuestions = [
    {
      subject_id: 21,
      subject_name: "upsc_Biodiversity_and_Climate_Change",
      question_text: "Dummy question 1: What is the correct answer?",
      options: "{\"A\":\"Dummy Option A\",\"B\":\"Dummy Option B\",\"C\":\"Dummy Option C\",\"D\":\"Dummy Option D\"}",
      correct_answer: "B",
      difficulty: 72,
      is_published: 0,
      explanation: "This is a dummy explanation for question 1."
    },
    {
      subject_id: 182,
      subject_name: "tgpsc_g4p1_General_Science_in_Everyday_Life",
      question_text: "Dummy question 2: What is the correct answer?",
      options: "{\"A\":\"Dummy Option A\",\"B\":\"Dummy Option B\",\"C\":\"Dummy Option C\",\"D\":\"Dummy Option D\"}",
      correct_answer: "C",
      difficulty: 40,
      is_published: 0,
      explanation: "This is a dummy explanation for question 2."
    },
    {
      subject_id: 173,
      subject_name: "tgpsc_g3p1_Logical_Reasoning_Analytical_Ability_Data_Interpretation",
      question_text: "Dummy question 3: What is the correct answer?",
      options: "{\"A\":\"Dummy Option A\",\"B\":\"Dummy Option B\",\"C\":\"Dummy Option C\",\"D\":\"Dummy Option D\"}",
      correct_answer: "C",
      difficulty: 45,
      is_published: 0,
      explanation: "This is a dummy explanation for question 3."
    }
  ];

  // Parse JSON and show preview
  const handleJsonChange = (value) => {
    setQuestionsJson(value);
    
    if (!value.trim()) {
      setParsedPreview(null);
      return;
    }

    try {
      const parsed = JSON.parse(value);
      if (Array.isArray(parsed)) {
        setParsedPreview({
          valid: true,
          count: parsed.length,
          subjects: [...new Set(parsed.map(q => q.subject_name))],
          firstFew: parsed.slice(0, 3)
        });
      } else {
        setParsedPreview({
          valid: false,
          error: 'JSON must be an array of questions'
        });
      }
    } catch (parseError) {
      setParsedPreview({
        valid: false,
        error: 'Invalid JSON syntax'
      });
    }
  };

  const loadSample = () => {
    setQuestionsJson(JSON.stringify(sampleQuestions, null, 2));
    setParsedPreview({
      valid: true,
      count: sampleQuestions.length,
      subjects: [...new Set(sampleQuestions.map(q => q.subject_name))],
      firstFew: sampleQuestions.slice(0, 3)
    });
  };

  const handlePaste = async () => {
    try {
      const text = await navigator.clipboard.readText();
      handleJsonChange(text);
      toast.success('Pasted from clipboard!');
    } catch (err) {
      toast.error('Failed to read clipboard. Please use Ctrl+V.');
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsSubmitting(true);
    setResult(null);

    try {
      // Validate input is not empty
      if (!questionsJson.trim()) {
        toast.error('Please enter questions JSON.');
        setIsSubmitting(false);
        return;
      }

      // Parse JSON
      let parsedData;
      try {
        parsedData = JSON.parse(questionsJson);
      } catch (parseError) {
        toast.error(`Invalid JSON: ${parseError.message}`);
        setIsSubmitting(false);
        return;
      }

      // Validate it's an array
      if (!Array.isArray(parsedData)) {
        toast.error('JSON must be an array of questions.');
        setIsSubmitting(false);
        return;
      }

      if (parsedData.length === 0) {
        toast.error('Questions array cannot be empty.');
        setIsSubmitting(false);
        return;
      }

      // Validate each question has required fields
      const validationErrors = [];
      const requiredFields = ['subject_id', 'subject_name', 'question_text', 'options', 'correct_answer', 'difficulty', 'is_published', 'explanation'];
      
      for (let i = 0; i < parsedData.length; i++) {
        const q = parsedData[i];
        const questionNum = i + 1;
        
        for (const field of requiredFields) {
          if (q[field] === undefined) {
            validationErrors.push(`Question ${questionNum}: Missing required field "${field}"`);
          }
        }
        
        // Validate correct_answer is A, B, C, or D
        if (q.correct_answer && !['A', 'B', 'C', 'D'].includes(q.correct_answer)) {
          validationErrors.push(`Question ${questionNum}: correct_answer must be A, B, C, or D`);
        }
      }

      if (validationErrors.length > 0) {
        toast.error(`Validation failed. Check details.`);
        setResult({
          success: false,
          error: 'Validation Errors',
          details: validationErrors.slice(0, 10).join('\n'),
          validationErrors: validationErrors
        });
        setIsSubmitting(false);
        return;
      }

      // Insert questions
      const response = await insertQuestionsBulk(parsedData);

      if (response.error) {
        console.error('Database Error:', response.error);
        
        let errorMessage = response.error.message || 'Unknown database error';
        let suggestion = 'Please check your data and try again.';

        if (errorMessage.includes('foreign key constraint') || errorMessage.includes('subjects')) {
          errorMessage = 'Subject not found';
          suggestion = 'One or more subject_id values do not exist in the subjects table.';
        }
        
        if (errorMessage.includes('unique constraint') || errorMessage.includes('duplicate')) {
          errorMessage = 'Duplicate question detected';
          suggestion = 'A question with the same explanation already exists.';
        }

        if (errorMessage.includes('row-level security policy') || response.error.code === '42501') {
          errorMessage = 'Permission Denied';
          suggestion = 'You do not have permission to add questions.';
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
        setParsedPreview(null);
      }

    } catch (error) {
      console.error('Unexpected Error:', error);
      toast.error('An unexpected error occurred.');
      setResult({
        success: false,
        error: 'Unexpected Error',
        details: error.message || 'An unknown error occurred'
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 px-4 sm:px-6 lg:px-8 pt-24 pb-12">
      <div className="max-w-6xl mx-auto">
        <div className="text-center mb-8">
          <div className="inline-flex items-center justify-center w-16 h-16 bg-blue-600 rounded-2xl mb-4">
            <BookOpen className="w-8 h-8 text-white" />
          </div>
          <h1 className="text-4xl font-bold text-white mb-2">Add Questions (Bulk)</h1>
          <p className="text-slate-400">Paste your questions JSON array below to add them to the database</p>
        </div>

        {/* JSON Input Form - Now at top */}
        <div className="bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 border border-slate-700 mb-6">
          <form onSubmit={handleSubmit}>
            <div className="mb-4">
              <div className="flex items-center justify-between mb-2">
                <label htmlFor="questionsJson" className="block text-sm font-medium text-slate-300">
                  Questions JSON Array
                </label>
                <div className="flex gap-2">
                  <button
                    type="button"
                    onClick={handlePaste}
                    className="px-3 py-1.5 bg-slate-700 hover:bg-slate-600 text-slate-300 rounded-lg transition-colors text-sm font-medium flex items-center gap-2"
                  >
                    <ClipboardCopy className="w-4 h-4" />
                    Paste
                  </button>
                  <button
                    type="button"
                    onClick={loadSample}
                    className="px-3 py-1.5 bg-blue-600 hover:bg-blue-700 text-white rounded-lg transition-colors text-sm font-medium flex items-center gap-2"
                  >
                    <Loader2 className="w-4 h-4" />
                    Load Sample
                  </button>
                </div>
              </div>
              <textarea
                ref={textareaRef}
                id="questionsJson"
                value={questionsJson}
                onChange={(e) => handleJsonChange(e.target.value)}
                placeholder='Paste your JSON array here, e.g.: [{"subject_id": 1, "subject_name": "...", ...}]'
                className="w-full h-80 px-4 py-3 bg-slate-900 border border-slate-600 rounded-lg text-slate-100 placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent font-mono text-sm resize-none"
                required
              />
            </div>

            {/* JSON Preview */}
            {parsedPreview && (
              <div className={`mb-4 rounded-lg p-4 ${
                parsedPreview.valid 
                  ? 'bg-green-900/20 border border-green-700' 
                  : 'bg-red-900/20 border border-red-700'
              }`}>
                {parsedPreview.valid ? (
                  <div className="flex items-center gap-2 text-green-400 mb-2">
                    <CheckCircle className="w-5 h-5" />
                    <span className="font-medium">Valid JSON with {parsedPreview.count} questions</span>
                  </div>
                ) : (
                  <div className="flex items-center gap-2 text-red-400 mb-2">
                    <AlertCircle className="w-5 h-5" />
                    <span className="font-medium">{parsedPreview.error}</span>
                  </div>
                )}
                {parsedPreview.subjects && (
                  <p className="text-slate-400 text-sm">
                    Subjects: {parsedPreview.subjects.join(', ')}
                  </p>
                )}
              </div>
            )}

            <button
              type="submit"
              disabled={isSubmitting || !questionsJson.trim() || (parsedPreview && !parsedPreview.valid)}
              className="w-full px-6 py-3 bg-blue-600 hover:bg-blue-700 disabled:bg-slate-600 disabled:cursor-not-allowed text-white font-semibold rounded-lg transition-colors flex items-center justify-center gap-2"
            >
              {isSubmitting ? (
                <>
                  <Loader2 className="w-5 h-5 animate-spin" />
                  Adding Questions...
                </>
              ) : (
                <>
                  <CheckCircle className="w-5 h-5" />
                  Add Questions to Database
                </>
              )}
            </button>
          </form>
        </div>

        {/* Result Display */}
        {result && (
          <div className={`mb-6 rounded-xl p-6 border ${
            result.success
              ? 'bg-green-900/30 border-green-700'
              : 'bg-red-900/30 border-red-700'
          }`}>
            <h3 className={`text-lg font-semibold mb-3 flex items-center gap-2 ${
              result.success ? 'text-green-400' : 'text-red-400'
            }`}>
              {result.success ? (
                <>
                  <CheckCircle className="w-5 h-5" />
                  Success!
                </>
              ) : (
                <>
                  <AlertCircle className="w-5 h-5" />
                  Error
                </>
              )}
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
              </div>
            )}
          </div>
        )}

        {/* JSON Format Guide - Now at bottom */}
        <div className="bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 border border-slate-700 mb-6">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-xl font-semibold text-white">JSON Format Guide</h2>
          </div>
          <div className="bg-slate-900 rounded-lg p-4 overflow-x-auto">
            <pre className="text-sm text-slate-300 font-mono">
{`[
  {
    "subject_id": 21,
    "subject_name": "upsc_Biodiversity_and_Climate_Change",
    "question_text": "Your question here?",
    "options": "{\"A\":\"Option A\",\"B\":\"Option B\",\"C\":\"Option C\",\"D\":\"Option D\"}",
    "correct_answer": "B",
    "difficulty": 72,
    "is_published": 0,
    "explanation": "Explanation for the correct answer."
  }
]`}
            </pre>
          </div>
          <div className="mt-4 grid grid-cols-2 md:grid-cols-4 gap-4 text-sm">
            <div className="bg-slate-900/50 rounded-lg p-3">
              <p className="text-slate-500 mb-1">subject_id</p>
              <p className="text-slate-300 font-mono">number</p>
            </div>
            <div className="bg-slate-900/50 rounded-lg p-3">
              <p className="text-slate-500 mb-1">correct_answer</p>
              <p className="text-slate-300 font-mono">"A" | "B" | "C" | "D"</p>
            </div>
            <div className="bg-slate-900/50 rounded-lg p-3">
              <p className="text-slate-500 mb-1">difficulty</p>
              <p className="text-slate-300 font-mono">1-100</p>
            </div>
            <div className="bg-slate-900/50 rounded-lg p-3">
              <p className="text-slate-500 mb-1">is_published</p>
              <p className="text-slate-300 font-mono">0 or 1</p>
            </div>
          </div>
        </div>

        {/* Instructions */}
        <div className="bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 border border-slate-700">
          <h3 className="text-lg font-semibold text-white mb-4">Instructions</h3>
          <ul className="space-y-2 text-slate-300 text-sm">
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>The JSON must be an <strong>array</strong> of question objects (use <code className="bg-slate-900 px-2 py-1 rounded mx-1">[...]</code>)</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Each question must have all required fields: <code className="bg-slate-900 px-2 py-1 rounded mx-1">subject_id</code>, <code className="bg-slate-900 px-2 py-1 rounded mx-1">subject_name</code>, <code className="bg-slate-900 px-2 py-1 rounded mx-1">question_text</code>, <code className="bg-slate-900 px-2 py-1 rounded mx-1">options</code> (JSON string), <code className="bg-slate-900 px-2 py-1 rounded mx-1">correct_answer</code>, <code className="bg-slate-900 px-2 py-1 rounded mx-1">difficulty</code>, <code className="bg-slate-900 px-2 py-1 rounded mx-1">is_published</code>, <code className="bg-slate-900 px-2 py-1 rounded mx-1">explanation</code></span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded mx-1">options</code> must be a JSON string (escape quotes), e.g., <code className="bg-slate-900 px-2 py-1 rounded mx-1">{"{\"A\":\"Option A\",\"B\":\"Option B\"}"}</code></span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded mx-1">correct_answer</code> must be one of: A, B, C, or D</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded mx-1">difficulty</code> should be a number between 1-100</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span><code className="bg-slate-900 px-2 py-1 rounded mx-1">is_published</code> should be 0 (unpublished) or 1 (published)</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Use the <strong>Paste</strong> button or Ctrl+V to paste JSON from clipboard</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  );
};

export default AddQuestionsBulk;
