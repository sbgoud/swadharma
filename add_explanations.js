eimport { createClient } from '@supabase/supabase-js';

// Initialize Supabase client
const supabaseUrl = 'https://dpaokhpqhchmfsuuwfmy.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwYW9raHBxaGNobWZzdXV3Zm15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Njc5NzY0NzgsImV4cCI6MjA4MzU1MjQ3OH0.aHPnm25Xu28uqhBUbl2SilROT3OJ4gpinmLX9-DtEQE';

const supabase = createClient(supabaseUrl, supabaseKey);

// Function to generate explanation based on question and subject
function generateExplanation(question, subject, options, correctAnswer) {
  const correctOptionText = options[correctAnswer] || correctAnswer;

  const explanations = {
    'History': `This question relates to historical events and figures. The correct answer is ${correctOptionText}, which is a well-documented historical fact.`,
    'Geography': `This question tests geographical knowledge. The correct answer is ${correctOptionText}, based on established geographical data.`,
    'Polity': `This question pertains to the Indian Constitution and political system. The correct answer is ${correctOptionText}, as per constitutional provisions.`,
    'Economy': `This question covers economic concepts and policies. The correct answer is ${correctOptionText}, reflecting economic principles and planning.`,
    'Environment': `This question deals with environmental science and ecology. The correct answer is ${correctOptionText}, based on scientific understanding of environmental processes.`,
    'Science': `This question tests general science knowledge. The correct answer is ${correctOptionText}, as established by scientific research.`,
    'Current Affairs': `This question relates to recent events and developments. The correct answer is ${correctOptionText}, based on current information.`
  };

  return explanations[subject] || `The correct answer is ${correctOptionText}. This question tests knowledge in ${subject}.`;
}

async function addExplanations() {
  try {
    console.log('Fetching questions...');
    const { data: questions, error } = await supabase
      .from('questions')
      .select('id, question_text, subject_name, options, correct_answer');

    if (error) {
      console.error('Error fetching questions:', error);
      return;
    }

    console.log(`Found ${questions.length} questions`);

    for (const question of questions) {
      const explanation = generateExplanation(
        question.question_text,
        question.subject_name,
        question.options,
        question.correct_answer
      );

      const { error: updateError } = await supabase
        .from('questions')
        .update({ explanation })
        .eq('id', question.id);

      if (updateError) {
        console.error(`Error updating question ${question.id}:`, updateError);
      } else {
        console.log(`✓ Updated question ${question.id}`);
      }
    }

    console.log('All explanations added successfully!');
  } catch (error) {
    console.error('Error:', error);
  }
}

addExplanations();
