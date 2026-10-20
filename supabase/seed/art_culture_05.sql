-- =============================================================================
-- art_culture_05.sql — art_culture question pack, part 05
-- 11 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Diwali festival of the lights is:',
    'The Diwali commemorates the return of the Lord Rama to the Ayodhya after the fourteen years of the exile, and the Jai Vilas of the lamps and the Rangoli are a part of it.',
    'easy',
    'Standard Reference',
    null,
    'ca41619a0abb417563644607a305a105'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ca41619a0abb417563644607a305a105'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the festival of the lights that marks the return of the Rama to the Ayodhya'),
            ('B', 'It marks the birth of the Krishna'),
            ('C', 'It is the harvest festival of the Assam'),
            ('D', 'It marks the death of the Buddha')
           ) as v(label, option_text)
 where q.question_hash = 'ca41619a0abb417563644607a305a105'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Republic Day is:',
    'The Republic Day, celebrated on the 26th of January, marks the adoption of the Constitution of India in 1950.',
    'easy',
    'Standard Reference',
    null,
    'e34e04959757354445ea758c3967294e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e34e04959757354445ea758c3967294e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is celebrated on the 14th of November'),
            ('B', 'Is celebrated on the 26th of January and it marks the adoption of the Constitution in 1950'),
            ('C', 'It is celebrated on the 15th of August'),
            ('D', 'It is celebrated on the 2nd of October')
           ) as v(label, option_text)
 where q.question_hash = 'e34e04959757354445ea758c3967294e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Independence Day'' of India:',
    'The Independence Day, celebrated on the 15th of August, marks the end of the British rule in 1947 and it is a national holiday.',
    'easy',
    'Standard Reference',
    null,
    'c168ae767b1fc37fe233f57bd261b785'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c168ae767b1fc37fe233f57bd261b785'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is celebrated on the 2nd of October'),
            ('B', 'It is celebrated on the 14th of November'),
            ('C', 'Is celebrated on the 15th of August and it marks the freedom from the British rule in 1947'),
            ('D', 'It is celebrated on the 26th of January')
           ) as v(label, option_text)
 where q.question_hash = 'c168ae767b1fc37fe233f57bd261b785'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Gandhi Jayanti'' is celebrated on:',
    'The Gandhi Jayanti, celebrated on the 2nd of October, marks the birth of the Mahatma Gandhi in 1869 and the day is also the National Unity Day.',
    'easy',
    'Standard Reference',
    null,
    'f62ef3c093f3bd7a7f341f4b3537e57f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f62ef3c093f3bd7a7f341f4b3537e57f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15th August'),
            ('B', '26th January'),
            ('C', '14th November'),
            ('D', '2nd October, the birth anniversary of the Mahatma Gandhi')
           ) as v(label, option_text)
 where q.question_hash = 'f62ef3c093f3bd7a7f341f4b3537e57f'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The National Unity Day is:',
    'The National Unity Day is observed on the 31st of October, the birth anniversary of the Sardar Vallabhbhai Patel, in memory of the integration of the princely states.',
    'medium',
    'Standard Reference',
    null,
    '24727f98066d554352e72ae7ee5ff592'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24727f98066d554352e72ae7ee5ff592'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'celebrated on the 31st of October, the birth anniversary of the Sardar Patel'),
            ('B', 'celebrated on the 15th of August'),
            ('C', 'celebrated on the 2nd of October'),
            ('D', 'celebrated on the 26th of January')
           ) as v(label, option_text)
 where q.question_hash = '24727f98066d554352e72ae7ee5ff592'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Children''s Day'' in India is celebrated on:',
    'The Children''s Day is celebrated in India on the 14th of November, the birth anniversary of the first Prime Minister, the Jawaharlal Nehru.',
    'easy',
    'Standard Reference',
    null,
    '9e6951caf3898acf2073e956ac36fe88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9e6951caf3898acf2073e956ac36fe88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5th of September'),
            ('B', '15th of August'),
            ('C', '14th of November, the birth anniversary of the Jawaharlal Nehru'),
            ('D', '2nd of October')
           ) as v(label, option_text)
 where q.question_hash = '9e6951caf3898acf2073e956ac36fe88'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Teachers'' Day'' in India is celebrated on:',
    'The Teachers'' Day is celebrated in India on the 5th of September, the birth anniversary of the Sarvepalli Radhakrishnan, the second President of India.',
    'easy',
    'Standard Reference',
    null,
    '0e9bab5af9b9b47e6707b6e965260fc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e9bab5af9b9b47e6707b6e965260fc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '14th of November'),
            ('B', '2nd of October'),
            ('C', '15th of August'),
            ('D', '5th of September, the birth anniversary of the S. Radhakrishnan')
           ) as v(label, option_text)
 where q.question_hash = '0e9bab5af9b9b47e6707b6e965260fc8'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''National Science Day'' of India:',
    'The National Science Day is celebrated on the 28th of February to commemorate the discovery of the Raman effect by the C.V. Raman in 1928.',
    'medium',
    'Standard Reference',
    null,
    '5d5b0637c77a69d19f4ba947074b7bc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5d5b0637c77a69d19f4ba947074b7bc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is celebrated on the 8th of October'),
            ('B', 'Is celebrated on the 28th of February, the discovery of the Raman effect in 1928'),
            ('C', 'It is celebrated on the 14th of November'),
            ('D', 'It is celebrated on the 5th of September')
           ) as v(label, option_text)
 where q.question_hash = '5d5b0637c77a69d19f4ba947074b7bc3'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Saraswati Puja'' is celebrated on:',
    'The Saraswati Puja falls on the Vasant Panchami, the fifth day of the Magha, and it marks the beginning of the spring and the school season.',
    'medium',
    'Standard Reference',
    null,
    'aba1d7f0aa762dbfc2c7982279d062cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aba1d7f0aa762dbfc2c7982279d062cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kartika Purnima'),
            ('B', 'Vasant Panchami, the fifth day of the Magha'),
            ('C', 'Ashadha Purnima'),
            ('D', 'Chaitra Shukla Ekadashi')
           ) as v(label, option_text)
 where q.question_hash = 'aba1d7f0aa762dbfc2c7982279d062cb'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kumbh Mela'' of the Nashik is also called:',
    'The Kumbh Mela of the Nashik on the Godavari is the Simhastha and it is held every twelve years, while the Prayagraj one is the Maha Kumbh.',
    'medium',
    'Standard Reference',
    null,
    '2e465a9f3e3c158aa31d27e33bec86a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e465a9f3e3c158aa31d27e33bec86a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Simhastha'),
            ('B', 'The Maha Kumbh'),
            ('C', 'The Ardh Kumbh'),
            ('D', 'The Kumbhayan')
           ) as v(label, option_text)
 where q.question_hash = '2e465a9f3e3c158aa31d27e33bec86a4'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Kumbh Mela at the Prayagraj is:',
    'The Kumbh Mela at the Prayagraj, the largest of the human gatherings on the earth, is centred on the Ganga and the Yamuna.',
    'easy',
    'Standard Reference',
    null,
    '7d85bb9394e90084b08796cc7d59cd87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7d85bb9394e90084b08796cc7d59cd87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no religious significance'),
            ('B', 'held in the Tamil Nadu'),
            ('C', 'the largest of the human gatherings and the Ganga is central to it'),
            ('D', 'only for the Muslims')
           ) as v(label, option_text)
 where q.question_hash = '7d85bb9394e90084b08796cc7d59cd87'
on conflict (question_id, label) do nothing;

commit;
