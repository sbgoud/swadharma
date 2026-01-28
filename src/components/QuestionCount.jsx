import React, { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';

const QuestionCount = () => {
  const [count, setCount] = useState(0);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchCount = async () => {
      try {
        const { data, error } = await supabase
          .from('questions')
          .select('id', { count: 'exact' });
        if (error) {
          throw error;
        }
        setCount(data.length);
      } catch (error) {
        console.error('Error fetching question count:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchCount();
  }, []);

  return (
    <div className="mb-8">
      <h2 className="text-2xl font-bold text-gray-900 mb-4">Question Count</h2>
      {loading ? (
        <div className="animate-pulse">
          <div className="h-8 w-32 bg-gray-200 rounded"></div>
        </div>
      ) : (
        <div className="text-4xl font-bold text-blue-600">{count} questions in the database</div>
      )}
    </div>
  );
};

export default QuestionCount;
