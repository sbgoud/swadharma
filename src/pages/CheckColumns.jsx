import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';

const CheckColumns = () => {
  const [columns, setColumns] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const getColumns = async () => {
      try {
        // Get all column names from questions table
        const { data, error } = await supabase
          .from('questions')
          .select('*')
          .limit(1);

        if (error) {
          console.error('Error fetching questions:', error);
          return;
        }

        if (data.length > 0) {
          const columnNames = Object.keys(data[0]);
          setColumns(columnNames);
        }
      } catch (error) {
        console.error('Error:', error);
      } finally {
        setLoading(false);
      }
    };

    getColumns();
  }, []);

  return (
    <div className="container mx-auto px-4 py-8">
      <h1 className="text-3xl font-bold mb-6 text-center">Check Questions Table Columns</h1>
      
      {loading ? (
        <div className="text-center py-10">Loading...</div>
      ) : (
        <div className="max-w-2xl mx-auto">
          <h2 className="text-xl font-semibold mb-4">Questions Table Columns:</h2>
          <ul className="grid grid-cols-2 md:grid-cols-3 gap-3">
            {columns.map((column) => (
              <li key={column} className="bg-blue-100 text-blue-800 px-3 py-2 rounded-md font-medium">
                {column}
              </li>
            ))}
          </ul>

          <div className="mt-6 p-4 bg-yellow-100 rounded-md">
            <h3 className="font-semibold mb-2">Expected Columns:</h3>
            <ul className="grid grid-cols-2 md:grid-cols-3 gap-2">
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">id</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">test_id</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">subject_id</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">question_text</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">options</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">correct_answer</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">marks</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">question_type</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">difficulty</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">is_published</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">created_at</li>
              <li className="px-2 py-1 bg-yellow-200 rounded text-sm">updated_at</li>
            </ul>
          </div>

          <div className="mt-6 flex flex-col gap-3">
            <div className={`p-3 rounded ${columns.includes('difficulty') && columns.includes('is_published') ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'}`}>
              {columns.includes('difficulty') && columns.includes('is_published') ? (
                '✅ Success: Both difficulty and is_published columns are present'
              ) : (
                '❌ Error: Missing one or both columns'
              )}
            </div>
            
            <div className="bg-blue-100 text-blue-800 p-3 rounded">
              <p className="font-semibold">Note:</p>
              <p className="text-sm mt-1">
                If the columns are not present, you need to run the migration manually from the Supabase Dashboard.
              </p>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default CheckColumns;
