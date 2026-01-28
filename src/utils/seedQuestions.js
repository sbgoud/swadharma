import { supabase } from '../lib/supabase';

// SQL script to seed 100 questions
const SEED_QUESTIONS_SQL = `
-- Insert 100 sample questions from various subjects
INSERT INTO public.questions (test_id, subject_id, question_text, options, correct_answer, marks, question_type) VALUES 
-- History (10 questions)
(1, 1, 'Who was the first Mughal emperor of India?', '{"A": "Akbar", "B": "Babur", "C": "Humayun", "D": "Jahangir"}', 'B', 2, 'MCQ'),
(1, 1, 'The Indian National Congress was founded in which year?', '{"A": "1885", "B": "1905", "C": "1919", "D": "1947"}', 'A', 2, 'MCQ'),
(1, 1, 'Who was the leader of the Non-Cooperation Movement?', '{"A": "Mahatma Gandhi", "B": "Jawaharlal Nehru", "C": "Sardar Vallabhbhai Patel", "D": "Bal Gangadhar Tilak"}', 'A', 2, 'MCQ'),
(1, 1, 'The Quit India Movement was launched in which year?', '{"A": "1920", "B": "1930", "C": "1942", "D": "1947"}', 'C', 2, 'MCQ'),
(1, 1, 'Who wrote the book "Discovery of India"?', '{"A": "Mahatma Gandhi", "B": "Jawaharlal Nehru", "C": "B.R. Ambedkar", "D": "Rabindranath Tagore"}', 'B', 2, 'MCQ'),
(1, 1, 'Which battle marked the end of the Mughal Empire in India?', '{"A": "Battle of Plassey", "B": "Battle of Buxar", "C": "Battle of Panipat (1761)", "D": "Battle of Haldighati"}', 'C', 2, 'MCQ'),
(1, 1, 'Who was the first female Prime Minister of India?', '{"A": "Indira Gandhi", "B": "Pratibha Patil", "C": "Sonia Gandhi", "D": "Mamata Banerjee"}', 'A', 2, 'MCQ'),
(1, 1, 'The Constitution of India was adopted on which date?', '{"A": "26 January 1950", "B": "15 August 1947", "C": "26 November 1949", "D": "1 January 1950"}', 'C', 2, 'MCQ'),
(1, 1, 'Who is known as the "Father of the Indian Constitution"?', '{"A": "Mahatma Gandhi", "B": "Jawaharlal Nehru", "C": "B.R. Ambedkar", "D": "Sardar Vallabhbhai Patel"}', 'C', 2, 'MCQ'),
(1, 1, 'Which year did India become a republic?', '{"A": "1947", "B": "1948", "C": "1950", "D": "1952"}', 'C', 2, 'MCQ'),

-- Geography (10 questions)
(1, 2, 'Which is the highest mountain peak in India?', '{"A": "Mount Everest", "B": "K2", "C": "Kanchenjunga", "D": "Nanda Devi"}', 'C', 2, 'MCQ'),
(1, 2, 'Which river is known as the "Ganga of the South"?', '{"A": "Godavari", "B": "Krishna", "C": "Cauvery", "D": "Mahanadi"}', 'A', 2, 'MCQ'),
(1, 2, 'Which is the largest desert in India?', '{"A": "Thar Desert", "B": "Rann of Kutch", "C": "Ladakh Desert", "D": "Sahara Desert"}', 'A', 2, 'MCQ'),
(1, 2, 'Which state in India has the longest coastline?', '{"A": "Maharashtra", "B": "Gujarat", "C": "Andhra Pradesh", "D": "Tamil Nadu"}', 'B', 2, 'MCQ'),
(1, 2, 'Which is the largest lake in India?', '{"A": "Vembanad Lake", "B": "Chilika Lake", "C": "Wular Lake", "D": "Dal Lake"}', 'C', 2, 'MCQ'),
(1, 2, 'Which mountain range separates India from Pakistan?', '{"A": "Himalayas", "B": "Vindhyas", "C": "Aravallis", "D": "Karakoram"}', 'D', 2, 'MCQ'),
(1, 2, 'Which is the most populous city in India?', '{"A": "Mumbai", "B": "Delhi", "C": "Bangalore", "D": "Kolkata"}', 'B', 2, 'MCQ'),
(1, 2, 'Which state in India has the highest literacy rate?', '{"A": "Kerala", "B": "Goa", "C": "Maharashtra", "D": "Tamil Nadu"}', 'A', 2, 'MCQ'),
(1, 2, 'Which is the smallest state in India by area?', '{"A": "Goa", "B": "Sikkim", "C": "Tripura", "D": "Nagaland"}', 'A', 2, 'MCQ'),
(1, 2, 'Which river forms the boundary between India and Bangladesh?', '{"A": "Ganga", "B": "Brahmaputra", "C": "Meghna", "D": "Padma"}', 'D', 2, 'MCQ'),

-- Polity (10 questions)
(1, 3, 'How many fundamental rights are guaranteed by the Indian Constitution?', '{"A": "6", "B": "7", "C": "8", "D": "9"}', 'A', 2, 'MCQ'),
(1, 3, 'Which article of the Constitution guarantees freedom of speech and expression?', '{"A": "Article 14", "B": "Article 19", "C": "Article 21", "D": "Article 32"}', 'B', 2, 'MCQ'),
(1, 3, 'Who is the head of the executive in the Indian Constitution?', '{"A": "President", "B": "Prime Minister", "C": "Governor", "D": "Chief Minister"}', 'B', 2, 'MCQ'),
(1, 3, 'Which is the upper house of the Indian Parliament?', '{"A": "Lok Sabha", "B": "Rajya Sabha", "C": "Vidhan Sabha", "D": "Vidhan Parishad"}', 'B', 2, 'MCQ'),
(1, 3, 'How many seats are there in the Lok Sabha?', '{"A": "543", "B": "545", "C": "250", "D": "552"}', 'D', 2, 'MCQ'),
(1, 3, 'Who appoints the Chief Justice of India?', '{"A": "President", "B": "Prime Minister", "C": "Law Minister", "D": "Supreme Court Collegium"}', 'A', 2, 'MCQ'),
(1, 3, 'Which schedule of the Constitution lists the Union List, State List, and Concurrent List?', '{"A": "7th Schedule", "B": "8th Schedule", "C": "9th Schedule", "D": "10th Schedule"}', 'A', 2, 'MCQ'),
(1, 3, 'What is the minimum age requirement to become a member of Lok Sabha?', '{"A": "21", "B": "25", "C": "30", "D": "35"}', 'B', 2, 'MCQ'),
(1, 3, 'Which article of the Constitution deals with the right to education?', '{"A": "Article 21", "B": "Article 21A", "C": "Article 22", "D": "Article 23"}', 'B', 2, 'MCQ'),
(1, 3, 'Who is the ex-officio Chairman of Rajya Sabha?', '{"A": "President", "B": "Vice President", "C": "Prime Minister", "D": "Speaker of Lok Sabha"}', 'B', 2, 'MCQ'),

-- Economics (10 questions)
(1, 4, 'Which Five Year Plan focused on poverty alleviation?', '{"A": "First Five Year Plan", "B": "Fifth Five Year Plan", "C": "Ninth Five Year Plan", "D": "Eleventh Five Year Plan"}', 'B', 2, 'MCQ'),
(1, 4, 'Which organization is responsible for issuing currency in India?', '{"A": "Reserve Bank of India", "B": "State Bank of India", "C": "Ministry of Finance", "D": "Securities and Exchange Board of India"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the current inflation target range set by the RBI?', '{"A": "2-4%", "B": "3-5%", "C": "4-6%", "D": "5-7%"}', 'C', 2, 'MCQ'),
(1, 4, 'Which is the largest source of revenue for the Indian government?', '{"A": "Direct Taxes", "B": "Indirect Taxes", "C": "Non-Tax Revenue", "D": "Borrowings"}', 'B', 2, 'MCQ'),
(1, 4, 'What is the minimum age requirement for opening a savings bank account in India?', '{"A": "10", "B": "12", "C": "14", "D": "18"}', 'A', 2, 'MCQ'),
(1, 4, 'Which sector contributes the most to India''s GDP?', '{"A": "Agriculture", "B": "Industry", "C": "Services", "D": "Manufacturing"}', 'C', 2, 'MCQ'),
(1, 4, 'What is the current repo rate set by the RBI?', '{"A": "4.00%", "B": "4.25%", "C": "4.50%", "D": "4.75%"}', 'C', 2, 'MCQ'),
(1, 4, 'Which scheme provides financial assistance to small and medium enterprises?', '{"A": "Pradhan Mantri Mudra Yojana", "B": "Pradhan Mantri Jan Dhan Yojana", "C": "Pradhan Mantri Kaushal Vikas Yojana", "D": "Pradhan Mantri Awas Yojana"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the full form of GST?', '{"A": "Goods and Services Tax", "B": "General Sales Tax", "C": "Gross Sales Tax", "D": "Government Sales Tax"}', 'A', 2, 'MCQ'),
(1, 4, 'Which organization regulates the insurance sector in India?', '{"A": "IRDAI", "B": "SEBI", "C": "RBI", "D": "NABARD"}', 'A', 2, 'MCQ'),

-- Environment (10 questions)
(1, 5, 'Which of the following is a greenhouse gas?', '{"A": "Nitrogen", "B": "Oxygen", "C": "Carbon Dioxide", "D": "Argon"}', 'C', 2, 'MCQ'),
(1, 5, 'What is the theme for World Environment Day 2024?', '{"A": "Beat Plastic Pollution", "B": "Only One Earth", "C": "Ecosystem Restoration", "D": "Our Planet, Our Future"}', 'A', 2, 'MCQ'),
(1, 5, 'Which country has the highest forest cover in India?', '{"A": "Madhya Pradesh", "B": "Arunachal Pradesh", "C": "Chhattisgarh", "D": "Odisha"}', 'A', 2, 'MCQ'),
(1, 5, 'Which act is responsible for the protection of wildlife in India?', '{"A": "Wildlife Protection Act, 1972", "B": "Forest Conservation Act, 1980", "C": "Environment Protection Act, 1986", "D": "Biological Diversity Act, 2002"}', 'A', 2, 'MCQ'),
(1, 5, 'Which is the most endangered species in India?', '{"A": "Bengal Tiger", "B": "Asiatic Lion", "C": "Ganges River Dolphin", "D": "Snow Leopard"}', 'C', 2, 'MCQ'),
(1, 5, 'What is the full form of WWF?', '{"A": "World Wildlife Fund", "B": "World Wetlands Forum", "C": "World Water Federation", "D": "World Wind Energy Association"}', 'A', 2, 'MCQ'),
(1, 5, 'Which day is celebrated as World Wildlife Day?', '{"A": "March 1", "B": "March 3", "C": "March 5", "D": "March 8"}', 'B', 2, 'MCQ'),
(1, 5, 'Which is the largest mangrove forest in India?', '{"A": "Sundarbans", "B": "Pichavaram", "C": "Bhitar Kanika", "D": "Coondapur"}', 'A', 2, 'MCQ'),
(1, 5, 'Which pollutant is responsible for acid rain?', '{"A": "Carbon Monoxide", "B": "Sulfur Dioxide", "C": "Nitrogen Oxide", "D": "Particulate Matter"}', 'B', 2, 'MCQ'),
(1, 5, 'Which country is the largest emitter of greenhouse gases?', '{"A": "China", "B": "United States", "C": "India", "D": "Russia"}', 'A', 2, 'MCQ'),

-- Science & Technology (10 questions)
(1, 6, 'What is the full form of DNA?', '{"A": "Deoxyribonucleic Acid", "B": "Deoxyribose Nucleic Acid", "C": "Ribonucleic Acid", "D": "Ribose Nucleic Acid"}', 'A', 2, 'MCQ'),
(1, 6, 'Which planet is known as the Red Planet?', '{"A": "Venus", "B": "Mars", "C": "Jupiter", "D": "Saturn"}', 'B', 2, 'MCQ'),
(1, 6, 'Which scientist is known as the "Father of India''s Nuclear Program"?', '{"A": "Homi Bhabha", "B": "Vikram Sarabhai", "C": "A.P.J. Abdul Kalam", "D": "C.V. Raman"}', 'A', 2, 'MCQ'),
(1, 6, 'What is the speed of light in a vacuum?', '{"A": "299,792 km/s", "B": "186,282 miles/s", "C": "300,000 km/s", "D": "Both A and B"}', 'D', 2, 'MCQ'),
(1, 6, 'Which is the smallest unit of life?', '{"A": "Cell", "B": "Molecule", "C": "Atom", "D": "Proton"}', 'A', 2, 'MCQ'),
(1, 6, 'Which organ is responsible for filtering blood in the human body?', '{"A": "Heart", "B": "Lungs", "C": "Kidneys", "D": "Liver"}', 'C', 2, 'MCQ'),
(1, 6, 'Which metal is the best conductor of electricity?', '{"A": "Copper", "B": "Silver", "C": "Gold", "D": "Aluminum"}', 'B', 2, 'MCQ'),
(1, 6, 'Which vitamin is essential for blood clotting?', '{"A": "Vitamin A", "B": "Vitamin B", "C": "Vitamin C", "D": "Vitamin K"}', 'D', 2, 'MCQ'),
(1, 6, 'Which gas is most abundant in the Earth''s atmosphere?', '{"A": "Oxygen", "B": "Nitrogen", "C": "Carbon Dioxide", "D": "Argon"}', 'B', 2, 'MCQ'),
(1, 6, 'Which disease is caused by the deficiency of Vitamin D?', '{"A": "Rickets", "B": "Scurvy", "C": "Beriberi", "D": "Pellagra"}', 'A', 2, 'MCQ'),

-- Current Affairs (10 questions)
(1, 7, 'Which country won the FIFA World Cup 2022?', '{"A": "Brazil", "B": "Argentina", "C": "France", "D": "Portugal"}', 'B', 2, 'MCQ'),
(1, 7, 'Who is the current Prime Minister of India (2024)?', '{"A": "Narendra Modi", "B": "Rahul Gandhi", "C": "Amit Shah", "D": "Arvind Kejriwal"}', 'A', 2, 'MCQ'),
(1, 7, 'Which city hosted the G20 Summit in 2023?', '{"A": "New Delhi", "B": "Mumbai", "C": "Bangalore", "D": "Hyderabad"}', 'A', 2, 'MCQ'),
(1, 7, 'Who won the Nobel Peace Prize in 2023?', '{"A": "Narges Mohammadi", "B": "Malala Yousafzai", "C": "Kailash Satyarthi", "D": "Barack Obama"}', 'A', 2, 'MCQ'),
(1, 7, 'Which country is the largest economy in the world (2024)?', '{"A": "United States", "B": "China", "C": "Japan", "D": "Germany"}', 'A', 2, 'MCQ'),
(1, 7, 'Who is the current President of India (2024)?', '{"A": "Droupadi Murmu", "B": "Ram Nath Kovind", "C": "Pranab Mukherjee", "D": "Pratibha Patil"}', 'A', 2, 'MCQ'),
(1, 7, 'Which Indian state has the highest GDP (2024)?', '{"A": "Maharashtra", "B": "Tamil Nadu", "C": "Gujarat", "D": "Karnataka"}', 'A', 2, 'MCQ'),
(1, 7, 'Who won the ICC Men''s Cricket World Cup in 2023?', '{"A": "India", "B": "Australia", "C": "England", "D": "South Africa"}', 'B', 2, 'MCQ'),
(1, 7, 'Which country launched the first artificial satellite?', '{"A": "United States", "B": "Russia", "C": "China", "D": "India"}', 'B', 2, 'MCQ'),
(1, 7, 'Who is the current Chief Justice of India (2024)?', '{"A": "Dhananjaya Y. Chandrachud", "B": "U.U. Lalit", "C": "N.V. Ramana", "D": "Ranjan Gogoi"}', 'A', 2, 'MCQ'),

-- Additional questions (40 more)
-- History
(1, 1, 'Which king built the Red Fort in Delhi?', '{"A": "Akbar", "B": "Shah Jahan", "C": "Aurangzeb", "D": "Jahangir"}', 'B', 2, 'MCQ'),
(1, 1, 'Who was the last Mughal emperor of India?', '{"A": "Bahadur Shah Zafar", "B": "Aurangzeb", "C": "Shah Alam II", "D": "Farrukhsiyar"}', 'A', 2, 'MCQ'),
(1, 1, 'Which battle was fought between the British East India Company and the Nawab of Bengal?', '{"A": "Battle of Plassey", "B": "Battle of Buxar", "C": "Battle of Panipat", "D": "Battle of Haldighati"}', 'A', 2, 'MCQ'),
(1, 1, 'Who founded the Arya Samaj?', '{"A": "Swami Vivekananda", "B": "Swami Dayanand Saraswati", "C": "Ramakrishna Paramahamsa", "D": "Ishwar Chandra Vidyasagar"}', 'B', 2, 'MCQ'),
(1, 1, 'Which year did the Jallianwala Bagh massacre take place?', '{"A": "1919", "B": "1920", "C": "1921", "D": "1922"}', 'A', 2, 'MCQ'),
(1, 1, 'Who was the first Indian to win the Nobel Prize?', '{"A": "Rabindranath Tagore", "B": "C.V. Raman", "C": "Mother Teresa", "D": "Hargobind Khorana"}', 'A', 2, 'MCQ'),
(1, 1, 'Which movement was launched by Mahatma Gandhi in 1930?', '{"A": "Non-Cooperation Movement", "B": "Civil Disobedience Movement", "C": "Quit India Movement", "D": "Swadeshi Movement"}', 'B', 2, 'MCQ'),
(1, 1, 'Who is known as the "Iron Man of India"?', '{"A": "Mahatma Gandhi", "B": "Jawaharlal Nehru", "C": "Sardar Vallabhbhai Patel", "D": "Subhas Chandra Bose"}', 'C', 2, 'MCQ'),
(1, 1, 'Which year did the partition of India take place?', '{"A": "1945", "B": "1946", "C": "1947", "D": "1948"}', 'C', 2, 'MCQ'),
(1, 1, 'Who was the first Indian to become the President of the United Nations General Assembly?', '{"A": "V.K. Krishna Menon", "B": "Jawaharlal Nehru", "C": "Rajendra Prasad", "D": "Vijaya Lakshmi Pandit"}', 'D', 2, 'MCQ'),

-- Geography
(1, 2, 'Which is the longest river in India?', '{"A": "Ganga", "B": "Yamuna", "C": "Brahmaputra", "D": "Godavari"}', 'A', 2, 'MCQ'),
(1, 2, 'Which state is known as the "Rice Bowl of India"?', '{"A": "Andhra Pradesh", "B": "Tamil Nadu", "C": "West Bengal", "D": "Odisha"}', 'C', 2, 'MCQ'),
(1, 2, 'Which is the driest place in India?', '{"A": "Jaisalmer", "B": "Leh", "C": "Kutch", "D": "Bikaner"}', 'A', 2, 'MCQ'),
(1, 2, 'Which mountain range is known as the "Backbone of India"?', '{"A": "Himalayas", "B": "Vindhyas", "C": "Aravallis", "D": "Satpuras"}', 'B', 2, 'MCQ'),
(1, 2, 'Which is the largest delta in India?', '{"A": "Sundarbans Delta", "B": "Godavari Delta", "C": "Krishna Delta", "D": "Cauvery Delta"}', 'A', 2, 'MCQ'),
(1, 2, 'Which state has the highest population density in India?', '{"A": "Bihar", "B": "West Bengal", "C": "Uttar Pradesh", "D": "Maharashtra"}', 'B', 2, 'MCQ'),
(1, 2, 'Which is the largest plateau in India?', '{"A": "Deccan Plateau", "B": "Malwa Plateau", "C": "Chota Nagpur Plateau", "D": "Ladakh Plateau"}', 'A', 2, 'MCQ'),
(1, 2, 'Which river forms the famous "Sonepur Mela"?', '{"A": "Ganga", "B": "Yamuna", "C": "Sone", "D": "Kosi"}', 'A', 2, 'MCQ'),
(1, 2, 'Which state is known as the "Spice Garden of India"?', '{"A": "Kerala", "B": "Karnataka", "C": "Tamil Nadu", "D": "Goa"}', 'A', 2, 'MCQ'),
(1, 2, 'Which is the largest island in India?', '{"A": "Andaman Islands", "B": "Nicobar Islands", "C": "Lakshadweep Islands", "D": "Diu"}', 'A', 2, 'MCQ'),

-- Polity
(1, 3, 'Which article of the Constitution deals with emergency provisions?', '{"A": "Article 352", "B": "Article 356", "C": "Article 360", "D": "All of the above"}', 'D', 2, 'MCQ'),
(1, 3, 'Who is the current Speaker of Lok Sabha (2024)?', '{"A": "Om Birla", "B": "Sumitra Mahajan", "C": "Meira Kumar", "D": "Somanath Chatterjee"}', 'A', 2, 'MCQ'),
(1, 3, 'Which state has the most number of Lok Sabha seats?', '{"A": "Uttar Pradesh", "B": "Maharashtra", "C": "Bihar", "D": "West Bengal"}', 'A', 2, 'MCQ'),
(1, 3, 'What is the term of office for a member of Rajya Sabha?', '{"A": "3 years", "B": "5 years", "C": "6 years", "D": "4 years"}', 'C', 2, 'MCQ'),
(1, 3, 'Which article of the Constitution deals with the removal of President?', '{"A": "Article 61", "B": "Article 62", "C": "Article 63", "D": "Article 64"}', 'A', 2, 'MCQ'),
(1, 3, 'Who appoints the Governors of Indian states?', '{"A": "President", "B": "Prime Minister", "C": "Chief Minister", "D": "Supreme Court"}', 'A', 2, 'MCQ'),
(1, 3, 'Which is the first state to be formed on linguistic basis?', '{"A": "Andhra Pradesh", "B": "Tamil Nadu", "C": "Karnataka", "D": "Maharashtra"}', 'A', 2, 'MCQ'),
(1, 3, 'What is the minimum age requirement to become President of India?', '{"A": "30", "B": "35", "C": "40", "D": "45"}', 'B', 2, 'MCQ'),
(1, 3, 'Which article of the Constitution deals with the right to constitutional remedies?', '{"A": "Article 32", "B": "Article 35", "C": "Article 36", "D": "Article 37"}', 'A', 2, 'MCQ'),
(1, 3, 'Who is the current Vice President of India (2024)?', '{"A": "Jagdeep Dhankhar", "B": "Venkaiah Naidu", "C": "M. Venkaiah Naidu", "D": "Hamid Ansari"}', 'A', 2, 'MCQ'),

-- Economics
(1, 4, 'Which organization is responsible for regulating the banking sector in India?', '{"A": "Reserve Bank of India", "B": "State Bank of India", "C": "Ministry of Finance", "D": "Securities and Exchange Board of India"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the current rate of interest on savings bank accounts in India?', '{"A": "2.50%", "B": "3.00%", "C": "3.50%", "D": "4.00%"}', 'A', 2, 'MCQ'),
(1, 4, 'Which is the largest public sector bank in India?', '{"A": "State Bank of India", "B": "Bank of Baroda", "C": "Punjab National Bank", "D": "Canara Bank"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the full form of FDI?', '{"A": "Foreign Direct Investment", "B": "Foreign Domestic Investment", "C": "Federal Direct Investment", "D": "Financial Direct Investment"}', 'A', 2, 'MCQ'),
(1, 4, 'Which sector contributes the most to India''s employment?', '{"A": "Agriculture", "B": "Industry", "C": "Services", "D": "Manufacturing"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the current Cash Reserve Ratio (CRR) set by the RBI?', '{"A": "3.00%", "B": "3.50%", "C": "4.00%", "D": "4.50%"}', 'C', 2, 'MCQ'),
(1, 4, 'Which scheme provides free LPG cylinders to women from below poverty line families?', '{"A": "Pradhan Mantri Ujjwala Yojana", "B": "Pradhan Mantri Jan Dhan Yojana", "C": "Pradhan Mantri Kaushal Vikas Yojana", "D": "Pradhan Mantri Awas Yojana"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the full form of SEBI?', '{"A": "Securities and Exchange Board of India", "B": "State Bank of India", "C": "Small and Medium Enterprises", "D": "Service Tax Department"}', 'A', 2, 'MCQ'),
(1, 4, 'Which country is India''s largest trading partner?', '{"A": "United States", "B": "China", "C": "United Arab Emirates", "D": "Saudi Arabia"}', 'A', 2, 'MCQ'),
(1, 4, 'What is the current Statutory Liquidity Ratio (SLR) set by the RBI?', '{"A": "18.00%", "B": "18.50%", "C": "19.00%", "D": "19.50%"}', 'A', 2, 'MCQ')
ON CONFLICT DO NOTHING;
`;

export const seedQuestions = async () => {
  try {
    // Since we're using a single INSERT statement, we can run it directly
    const { error } = await supabase.rpc('run_sql', { sql: SEED_QUESTIONS_SQL });
    
    if (error) {
      console.error('Error seeding questions:', error);
      return false;
    }
    
    console.log('Successfully seeded 100 questions');
    return true;
  } catch (error) {
    console.error('Error seeding questions:', error);
    return false;
  }
};
