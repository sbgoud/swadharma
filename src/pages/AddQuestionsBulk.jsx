import { useState } from 'react';
import { insertQuestionsBulkBatched } from '../services/supabaseService';
import { useToast } from '../components/Toast';
import { 
  BookOpen, CheckCircle, AlertCircle, Loader2, ClipboardCopy, 
  Clock, BarChart, Settings, Play, Send, RefreshCw 
} from 'lucide-react';

const AddQuestionsBulk = () => {
  const [questionsJson, setQuestionsJson] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isGenerating, setIsGenerating] = useState(false);
  const [result, setResult] = useState(null);
  const [parsedPreview, setParsedPreview] = useState(null);
  const [progress, setProgress] = useState(null);
  const [generateCount, setGenerateCount] = useState(1000);
  const toast = useToast();

  // Subject list
  const subjects = [
    {id:8,name:"upsc_Ancient_Indian_History"},
    {id:9,name:"upsc_Medieval_Indian_History"},
    {id:10,name:"upsc_Modern_Indian_History"},
    {id:11,name:"upsc_Indian_Art_and_Culture"},
    {id:12,name:"upsc_Indian_Geography"},
    {id:13,name:"upsc_World_Geography"},
    {id:14,name:"upsc_Physical_Geography"},
    {id:15,name:"upsc_Human_and_Economic_Geography"},
    {id:16,name:"upsc_Indian_Polity_and_Constitution"},
    {id:17,name:"upsc_Governance_and_Public_Policy"},
    {id:18,name:"upsc_Indian_Economy"},
    {id:19,name:"upsc_Social_Development_and_Demographics"},
    {id:20,name:"upsc_Environment_and_Ecology"},
    {id:21,name:"upsc_Biodiversity_and_Climate_Change"},
    {id:22,name:"upsc_General_Science_Physics"},
    {id:23,name:"upsc_General_Science_Chemistry"},
    {id:24,name:"upsc_General_Science_Biology"},
    {id:25,name:"upsc_Science_and_Technology"},
    {id:26,name:"upsc_Current_Events_National"},
    {id:27,name:"upsc_Current_Events_International"},
    {id:121,name:"upscp2_Reading_Comprehension"},
    {id:122,name:"upscp2_Interpersonal_Skills_and_Communication"},
    {id:123,name:"upscp2_Logical_Reasoning"},
    {id:124,name:"upscp2_Analytical_Ability"},
    {id:125,name:"upscp2_Decision_Making_and_Problem_Solving"},
    {id:126,name:"upscp2_General_Mental_Ability"},
    {id:127,name:"upscp2_Basic_Numeracy"},
    {id:128,name:"upscp2_Data_Interpretation"},
    {id:129,name:"tgpsc_g1_pre_Current_Affairs_Regional_National_International"},
    {id:130,name:"tgpsc_g1_pre_International_Relations_and_Events"},
    {id:131,name:"tgpsc_g1_pre_General_Science_and_Tech_Achievements"},
    {id:132,name:"tgpsc_g1_pre_Environmental_Issues_and_Disaster_Management"},
    {id:133,name:"tgpsc_g1_pre_Economic_and_Social_Development_of_India"},
    {id:134,name:"tgpsc_g1_pre_World_Geography"},
    {id:135,name:"tgpsc_g1_pre_Indian_Geography"},
    {id:136,name:"tgpsc_g1_pre_Telangana_Geography"},
    {id:137,name:"tgpsc_g1_pre_History_and_Cultural_Heritage_of_India"},
    {id:138,name:"tgpsc_g1_pre_Indian_Constitution_and_Polity"},
    {id:139,name:"tgpsc_g1_pre_Governance_and_Public_Policy_in_India"},
    {id:140,name:"tgpsc_g1_pre_Policies_of_Telangana_State"},
    {id:141,name:"tgpsc_g1_pre_Telangana_Society_Culture_Heritage_Arts_Literature"},
    {id:142,name:"tgpsc_g1_pre_Social_Exclusion_Rights_Issues_and_Policies"},
    {id:143,name:"tgpsc_g1_pre_Logical_Reasoning_Analytical_Ability_Data_Interpretation"},
    {id:144,name:"tgpsc_g2p1_Current_Affairs_Regional_National_International"},
    {id:145,name:"tgpsc_g2p1_International_Relations_and_Events"},
    {id:146,name:"tgpsc_g2p1_General_Science_and_Tech_Achievements"},
    {id:147,name:"tgpsc_g2p1_Environmental_Issues_and_Disaster_Management"},
    {id:148,name:"tgpsc_g2p1_World_Geography_Indian_Geography_Telangana_Geography"},
    {id:149,name:"tgpsc_g2p1_History_and_Cultural_Heritage_of_India"},
    {id:150,name:"tgpsc_g2p1_Telangana_Society_Culture_Heritage_Arts_Literature"},
    {id:151,name:"tgpsc_g2p1_Policies_of_Telangana_State"},
    {id:152,name:"tgpsc_g2p1_Social_Exclusion_Rights_Issues_and_Policies"},
    {id:153,name:"tgpsc_g2p1_Logical_Reasoning_Analytical_Ability_Data_Interpretation"},
    {id:154,name:"tgpsc_g2p1_Basic_English_10th_Class_Standard"},
    {id:155,name:"tgpsc_g2p2_Socio_Cultural_History_of_India_and_Telangana"},
    {id:156,name:"tgpsc_g2p2_Overview_of_Indian_Constitution_and_Politics"},
    {id:157,name:"tgpsc_g2p2_Social_Structure_Issues_and_Public_Policies"},
    {id:158,name:"tgpsc_g2p3_Indian_Economy_Issues_and_Challenges"},
    {id:159,name:"tgpsc_g2p3_Economy_and_Development_of_Telangana"},
    {id:160,name:"tgpsc_g2p3_Issues_of_Development_and_Change"},
    {id:161,name:"tgpsc_g2p4_The_Idea_of_Telangana_1948_to_1970"},
    {id:162,name:"tgpsc_g2p4_Mobilisational_Phase_1971_to_1990"},
    {id:163,name:"tgpsc_g2p4_Towards_Formation_of_Telangana_State_1991_to_2014"},
    {id:164,name:"tgpsc_g3p1_Current_Affairs_Regional_National_International"},
    {id:165,name:"tgpsc_g3p1_International_Relations_and_Events"},
    {id:166,name:"tgpsc_g3p1_General_Science_and_Tech_Achievements"},
    {id:167,name:"tgpsc_g3p1_Environmental_Issues_and_Disaster_Management"},
    {id:168,name:"tgpsc_g3p1_World_Geography_Indian_Geography_Telangana_Geography"},
    {id:169,name:"tgpsc_g3p1_History_and_Cultural_Heritage_of_India"},
    {id:170,name:"tgpsc_g3p1_Telangana_Society_Culture_Heritage_Arts_Literature"},
    {id:171,name:"tgpsc_g3p1_Policies_of_Telangana_State"},
    {id:172,name:"tgpsc_g3p1_Social_Exclusion_Rights_Issues_and_Policies"},
    {id:173,name:"tgpsc_g3p1_Logical_Reasoning_Analytical_Ability_Data_Interpretation"},
    {id:174,name:"tgpsc_g3p2_Socio_Cultural_History_of_Telangana_and_Formation_of_Telangana_State"},
    {id:175,name:"tgpsc_g3p2_Overview_of_Indian_Constitution_and_Politics"},
    {id:176,name:"tgpsc_g3p2_Social_Structure_Issues_and_Public_Policies"},
    {id:177,name:"tgpsc_g3p3_Indian_Economy_Issues_and_Challenges"},
    {id:178,name:"tgpsc_g3p3_Economy_and_Development_of_Telangana"},
    {id:179,name:"tgpsc_g3p3_Issues_of_Development_and_Change"},
    {id:180,name:"tgpsc_g4p1_Current_Affairs"},
    {id:181,name:"tgpsc_g4p1_International_Relations_and_Events"},
    {id:182,name:"tgpsc_g4p1_General_Science_in_Everyday_Life"},
    {id:183,name:"tgpsc_g4p1_Environmental_Issues_and_Disaster_Management"},
    {id:184,name:"tgpsc_g4p1_Geography_and_Economy_of_India_and_Telangana"},
    {id:185,name:"tgpsc_g4p1_Indian_Constitution_Salient_Features"},
    {id:186,name:"tgpsc_g4p1_Indian_Political_System_and_Government"},
    {id:187,name:"tgpsc_g4p1_Modern_Indian_History_and_National_Movement"},
    {id:188,name:"tgpsc_g4p1_History_of_Telangana_and_Telangana_Movement"},
    {id:189,name:"tgpsc_g4p1_Society_Culture_Heritage_Arts_and_Literature_of_Telangana"},
    {id:190,name:"tgpsc_g4p1_Policies_of_Telangana_State"},
    {id:191,name:"tgpsc_g4p2_Mental_Ability_Verbal_and_Non_Verbal"},
    {id:192,name:"tgpsc_g4p2_Logical_Reasoning"},
    {id:193,name:"tgpsc_g4p2_Comprehension"},
    {id:194,name:"tgpsc_g4p2_Rearrangement_of_Sentences"},
    {id:195,name:"tgpsc_g4p2_Numerical_and_Arithmetical_Abilities"},
    {id:196,name:"appsc_g1_pre_p1_History_and_Culture_of_India"},
    {id:197,name:"appsc_g1_pre_p1_History_and_Culture_of_Andhra_Pradesh"},
    {id:198,name:"appsc_g1_pre_p1_Indian_Constitution_and_Polity"},
    {id:199,name:"appsc_g1_pre_p1_Social_Justice_and_Rights_Issues"},
    {id:200,name:"appsc_g1_pre_p1_International_Relations_and_Foreign_Policy"},
    {id:201,name:"appsc_g1_pre_p1_Indian_Economy_and_Planning"},
    {id:202,name:"appsc_g1_pre_p1_Economy_of_Andhra_Pradesh"},
    {id:203,name:"appsc_g1_pre_p1_General_Geography_and_Physical_Geography"},
    {id:204,name:"appsc_g1_pre_p1_Geography_of_India_and_Andhra_Pradesh"},
    {id:205,name:"appsc_g1_pre_p2_General_Mental_and_Psychological_Abilities"},
    {id:206,name:"appsc_g1_pre_p2_Science_and_Technology_Information_Technology"},
    {id:207,name:"appsc_g1_pre_p2_Current_Events_Regional_National_International"},
    {id:208,name:"appsc_g2_pre_Indian_History_Ancient_Medieval_Modern"},
    {id:209,name:"appsc_g2_pre_Geography_India_and_Andhra_Pradesh"},
    {id:210,name:"appsc_g2_pre_Indian_Society_Structure_Issues_Welfare"},
    {id:211,name:"appsc_g2_pre_Current_Affairs"},
    {id:212,name:"appsc_g2_pre_Mental_Ability"},
    {id:213,name:"appsc_g2_mains_p1_Social_and_Cultural_History_of_Andhra_Pradesh"},
    {id:214,name:"appsc_g2_mains_p1_Indian_Constitution"},
    {id:215,name:"appsc_g2_mains_p2_Indian_and_AP_Economy_Planning"},
    {id:216,name:"appsc_g2_mains_p2_Science_and_Technology"},
    {id:217,name:"appsc_g3_p1_General_Studies_and_Mental_Ability"},
    {id:218,name:"appsc_g3_p2_Rural_Development_Schemes_and_History"},
    {id:219,name:"appsc_g3_p2_Rural_Economy_of_Andhra_Pradesh"},
    {id:220,name:"appsc_g3_p2_Panchayat_Raj_System_Evolution_and_Laws"},
    {id:221,name:"appsc_g3_p2_Roles_and_Responsibilities_of_Panchayat_Secretary"},
    {id:222,name:"appsc_g4_p1_General_Studies_and_Mental_Ability"},
    {id:223,name:"appsc_g4_p2_General_English_Comprehension_and_Grammar"},
    {id:224,name:"appsc_g4_p2_General_Telugu_Comprehension_and_Grammar"}
  ];

  // Helper functions
  const rand = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
  
  const random9Digit = () => Math.floor(100000000 + Math.random() * 900000000);

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

  // Generate questions
  const generateQuestions = (count) => {
    const data = [];
    const base = random9Digit();
    const now = new Date().toISOString();

    for (let i = 0; i < count; i++) {
      const qNum = base + i;
      const subject = subjects[rand(0, subjects.length - 1)];

      data.push({
        subject_id: subject.id,
        subject_name: subject.name,
        question_text: `Question ${qNum}: What is the correct answer?`,
        options: JSON.stringify({
          A: "Dummy Option A",
          B: "Dummy Option B",
          C: "Dummy Option C",
          D: "Dummy Option D"
        }),
        correct_answer: ["A","B","C","D"][rand(0,3)],
        question_type: "MCQ",
        created_at: now,
        updated_at: now,
        difficulty: rand(35,95),
        is_published: 0,
        explanation: `This is a dummy explanation for question ${qNum}.`
      });
    }

    return data;
  };

  // Parse JSON and show preview
  const handleJsonChange = (value) => {
    setQuestionsJson(value);
    setProgress(null);
    setResult(null);
    
    if (!value.trim()) {
      setParsedPreview(null);
      return;
    }

    try {
      const parsed = JSON.parse(value);
      if (Array.isArray(parsed)) {
        const batchCount = Math.ceil(parsed.length / 10000);
        setParsedPreview({
          valid: true,
          count: parsed.length,
          batchCount,
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
      batchCount: 1,
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

  const handleGenerate = () => {
    if (!generateCount || generateCount <= 0) {
      toast.error('Please enter a valid number');
      return;
    }

    setIsGenerating(true);
    
    // Use setTimeout to allow UI to update
    setTimeout(() => {
      const generated = generateQuestions(generateCount);
      setQuestionsJson(JSON.stringify(generated, null, 2));
      setParsedPreview({
        valid: true,
        count: generated.length,
        batchCount: Math.ceil(generated.length / 10000),
        subjects: [...new Set(generated.map(q => q.subject_name))],
        firstFew: generated.slice(0, 3)
      });
      setIsGenerating(false);
      toast.success(`Generated ${generateCount.toLocaleString()} questions!`);
    }, 100);
  };

  const handleGenerateAndSubmit = async () => {
    if (!generateCount || generateCount <= 0) {
      toast.error('Please enter a valid number');
      return;
    }

    // First generate, then submit
    setIsGenerating(true);
    
    setTimeout(() => {
      const generated = generateQuestions(generateCount);
      const jsonString = JSON.stringify(generated, null, 2);
      setQuestionsJson(jsonString);
      setParsedPreview({
        valid: true,
        count: generated.length,
        batchCount: Math.ceil(generated.length / 10000),
        subjects: [...new Set(generated.map(q => q.subject_name))],
        firstFew: generated.slice(0, 3)
      });
      setIsGenerating(false);
      toast.success(`Generated ${generateCount.toLocaleString()} questions! Submitting...`);
      
      // Trigger submit after a short delay
      setTimeout(() => {
        document.getElementById('submit-btn').click();
      }, 100);
    }, 100);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsSubmitting(true);
    setResult(null);
    setProgress(null);

    try {
      // Validate input is not empty
      if (!questionsJson.trim()) {
        toast.error('Please enter or generate questions JSON.');
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

      // Process in batches with progress tracking
      const response = await insertQuestionsBulkBatched(parsedData, (progressData) => {
        setProgress(progressData);
      });

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
        toast.success(`Successfully added ${response.totalInserted} questions!`);
        setResult({
          success: true,
          totalInserted: response.totalInserted,
          failed: response.failed,
          batches: response.batches,
          message: response.summary
        });
        setQuestionsJson('');
        setParsedPreview(null);
        setProgress(null);
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
          <p className="text-slate-400">Generate or paste questions JSON array to add them to the database</p>
        </div>

        {/* Question Generator Section */}
        <div className="bg-slate-800/50 backdrop-blur-sm rounded-xl p-6 border border-slate-700 mb-6">
          <div className="flex items-center gap-2 mb-4">
            <Settings className="w-5 h-5 text-blue-400" />
            <h2 className="text-xl font-semibold text-white">Question Generator</h2>
          </div>
          
          <div className="grid md:grid-cols-4 gap-4 items-end">
            <div>
              <label className="block text-sm font-medium text-slate-300 mb-2">
                Number of Questions
              </label>
              <input
                type="number"
                value={generateCount}
                onChange={(e) => setGenerateCount(parseInt(e.target.value) || 0)}
                min="1"
                max="100000"
                className="w-full px-4 py-3 bg-slate-900 border border-slate-600 rounded-lg text-slate-100 placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                placeholder="Enter count"
                disabled={isGenerating || isSubmitting}
              />
            </div>
            
            <button
              onClick={handleGenerate}
              disabled={isGenerating || isSubmitting}
              className="px-4 py-3 bg-green-600 hover:bg-green-700 disabled:bg-slate-600 disabled:cursor-not-allowed text-white font-semibold rounded-lg transition-colors flex items-center justify-center gap-2"
            >
              {isGenerating ? (
                <Loader2 className="w-5 h-5 animate-spin" />
              ) : (
                <Play className="w-5 h-5" />
              )}
              Generate
            </button>
            
            <button
              onClick={handleGenerateAndSubmit}
              disabled={isGenerating || isSubmitting}
              className="px-4 py-3 bg-purple-600 hover:bg-purple-700 disabled:bg-slate-600 disabled:cursor-not-allowed text-white font-semibold rounded-lg transition-colors flex items-center justify-center gap-2"
            >
              {isGenerating ? (
                <Loader2 className="w-5 h-5 animate-spin" />
              ) : (
                <Send className="w-5 h-5" />
              )}
              Generate & Submit
            </button>
            
            <button
              onClick={loadSample}
              disabled={isGenerating || isSubmitting}
              className="px-4 py-3 bg-slate-600 hover:bg-slate-500 disabled:bg-slate-700 text-white font-semibold rounded-lg transition-colors flex items-center justify-center gap-2"
            >
              <RefreshCw className="w-5 h-5" />
              Load Sample
            </button>
          </div>
          
          <p className="text-slate-400 text-sm mt-3">
            💡 Enter the number of questions to generate. Questions will be randomly assigned from {subjects.length} subjects.
          </p>
        </div>

        {/* JSON Input Form */}
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
                    disabled={isSubmitting}
                    className="px-3 py-1.5 bg-slate-700 hover:bg-slate-600 disabled:bg-slate-800 text-slate-300 rounded-lg transition-colors text-sm font-medium flex items-center gap-2"
                  >
                    <ClipboardCopy className="w-4 h-4" />
                    Paste
                  </button>
                </div>
              </div>
              <textarea
                id="questionsJson"
                value={questionsJson}
                onChange={(e) => handleJsonChange(e.target.value)}
                placeholder='Generate questions above or paste JSON array here...'
                className="w-full h-80 px-4 py-3 bg-slate-900 border border-slate-600 rounded-lg text-slate-100 placeholder-slate-500 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent font-mono text-sm resize-none"
                required
                disabled={isSubmitting}
              />
            </div>

            {/* JSON Preview */}
            {parsedPreview && !progress && (
              <div className={`mb-4 rounded-lg p-4 ${
                parsedPreview.valid 
                  ? 'bg-green-900/20 border border-green-700' 
                  : 'bg-red-900/20 border border-red-700'
              }`}>
                {parsedPreview.valid ? (
                  <div className="flex items-center gap-2 text-green-400 mb-2">
                    <CheckCircle className="w-5 h-5" />
                    <span className="font-medium">{parsedPreview.count.toLocaleString()} questions ready</span>
                  </div>
                ) : (
                  <div className="flex items-center gap-2 text-red-400 mb-2">
                    <AlertCircle className="w-5 h-5" />
                    <span className="font-medium">{parsedPreview.error}</span>
                  </div>
                )}
                {parsedPreview.valid && (
                  <>
                    <p className="text-slate-400 text-sm">
                      Will be processed in <span className="text-blue-400 font-semibold">{parsedPreview.batchCount}</span> batches of 10,000
                    </p>
                    {parsedPreview.subjects && (
                      <p className="text-slate-400 text-sm mt-1">
                        Subjects: {parsedPreview.subjects.slice(0, 5).join(', ')}
                        {parsedPreview.subjects.length > 5 && ` +${parsedPreview.subjects.length - 5} more`}
                      </p>
                    )}
                  </>
                )}
              </div>
            )}

            {/* Progress Display */}
            {progress && (
              <div className="mb-4 rounded-lg p-4 bg-blue-900/20 border border-blue-700">
                <div className="flex items-center gap-2 text-blue-400 mb-3">
                  <Clock className="w-5 h-5" />
                  <span className="font-medium">Processing Batch {progress.currentBatch} of {progress.totalBatches}</span>
                </div>
                
                {/* Overall Progress Bar */}
                <div className="mb-4">
                  <div className="flex justify-between text-sm text-slate-300 mb-1">
                    <span>Overall Progress</span>
                    <span>{Math.round((progress.processed / progress.totalQuestions) * 100)}%</span>
                  </div>
                  <div className="w-full bg-slate-700 rounded-full h-3">
                    <div 
                      className="bg-blue-500 h-3 rounded-full transition-all duration-300"
                      style={{ width: `${(progress.processed / progress.totalQuestions) * 100}%` }}
                    />
                  </div>
                  <p className="text-slate-400 text-xs mt-1">
                    {progress.processed.toLocaleString()} / {progress.totalQuestions.toLocaleString()} questions processed
                  </p>
                </div>

                {/* Batch Progress */}
                <div className="grid grid-cols-2 gap-4 text-sm">
                  <div className="bg-slate-800/50 rounded-lg p-2">
                    <p className="text-slate-400">Inserted</p>
                    <p className="text-green-400 font-semibold">{progress.totalInserted.toLocaleString()}</p>
                  </div>
                  <div className="bg-slate-800/50 rounded-lg p-2">
                    <p className="text-slate-400">Failed</p>
                    <p className="text-red-400 font-semibold">{progress.failed.toLocaleString()}</p>
                  </div>
                </div>
              </div>
            )}

            <button
              id="submit-btn"
              type="submit"
              disabled={isSubmitting || !questionsJson.trim() || (parsedPreview && !parsedPreview.valid)}
              className="w-full px-6 py-3 bg-blue-600 hover:bg-blue-700 disabled:bg-slate-600 disabled:cursor-not-allowed text-white font-semibold rounded-lg transition-colors flex items-center justify-center gap-2"
            >
              {isSubmitting ? (
                <>
                  <Loader2 className="w-5 h-5 animate-spin" />
                  {progress ? `Processing Batch ${progress.currentBatch} of ${progress.totalBatches}...` : 'Adding Questions...'}
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
                  Completed!
                </>
              ) : (
                <>
                  <AlertCircle className="w-5 h-5" />
                  Error
                </>
              )}
            </h3>
            
            {result.success ? (
              <div className="space-y-4">
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                  <div className="bg-slate-800/50 rounded-lg p-4 text-center">
                    <p className="text-slate-400 text-sm">Total Questions</p>
                    <p className="text-2xl font-bold text-white">{result.totalInserted.toLocaleString()}</p>
                  </div>
                  <div className="bg-slate-800/50 rounded-lg p-4 text-center">
                    <p className="text-slate-400 text-sm">Inserted</p>
                    <p className="text-2xl font-bold text-green-400">{result.totalInserted.toLocaleString()}</p>
                  </div>
                  <div className="bg-slate-800/50 rounded-lg p-4 text-center">
                    <p className="text-slate-400 text-sm">Failed</p>
                    <p className="text-2xl font-bold text-red-400">{result.failed.toLocaleString()}</p>
                  </div>
                  <div className="bg-slate-800/50 rounded-lg p-4 text-center">
                    <p className="text-slate-400 text-sm">Batches</p>
                    <p className="text-2xl font-bold text-blue-400">{result.batches?.length || 0}</p>
                  </div>
                </div>
                
                {result.message && (
                  <p className="text-slate-300 text-sm">{result.message}</p>
                )}
                
                {/* Batch Summary */}
                {result.batches && result.batches.length > 0 && (
                  <div className="mt-4">
                    <h4 className="text-white font-medium mb-2 flex items-center gap-2">
                      <BarChart className="w-4 h-4" />
                      Batch Summary
                    </h4>
                    <div className="bg-slate-800/30 rounded-lg p-3 max-h-48 overflow-y-auto">
                      <table className="w-full text-sm">
                        <thead>
                          <tr className="text-slate-400">
                            <th className="text-left py-2">Batch</th>
                            <th className="text-left py-2">Status</th>
                            <th className="text-right py-2">Inserted</th>
                            <th className="text-right py-2">Failed</th>
                          </tr>
                        </thead>
                        <tbody>
                          {result.batches.map((batch, index) => (
                            <tr key={index} className="border-t border-slate-700">
                              <td className="py-2 text-slate-300">Batch {batch.batchNum}</td>
                              <td className="py-2">
                                <span className={`px-2 py-1 rounded text-xs ${
                                  batch.status === 'success' 
                                    ? 'bg-green-900/50 text-green-400' 
                                    : 'bg-red-900/50 text-red-400'
                                }`}>
                                  {batch.status === 'success' ? '✓ Success' : '✗ Failed'}
                                </span>
                              </td>
                              <td className="py-2 text-right text-green-400">{batch.inserted.toLocaleString()}</td>
                              <td className="py-2 text-right text-red-400">{batch.failed.toLocaleString()}</td>
                            </tr>
                          ))}
                        </tbody>
                      </table>
                    </div>
                  </div>
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
              </div>
            )}
          </div>
        )}

        {/* JSON Format Guide */}
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
              <span><strong>Enter a number</strong> and click <strong>Generate</strong> to create dummy questions automatically</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Use <strong>Generate & Submit</strong> to generate and upload in one click</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Questions are processed in <strong>batches of 10,000</strong> to prevent browser hang</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Progress is shown in real-time with batch-by-batch results</span>
            </li>
            <li className="flex items-start">
              <span className="text-blue-400 mr-2">•</span>
              <span>Questions are randomly assigned from <strong>{subjects.length} subjects</strong> with unique question IDs</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  );
};

export default AddQuestionsBulk;
