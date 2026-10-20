-- =============================================================================
-- polity_01.sql — polity question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Indian Constitution was adopted by the Constituent Assembly on:',
    'The Constitution was adopted, signed and promulgated on 26 November 1949 and came into force on 26 January 1950.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'a5af8602e63777b75dfba8e7efd03fd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a5af8602e63777b75dfba8e7efd03fd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26 November 1949'),
            ('B', '26 January 1950'),
            ('C', '15 August 1947'),
            ('D', '24 January 1950')
           ) as v(label, option_text)
 where q.question_hash = 'a5af8602e63777b75dfba8e7efd03fd0'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Who was the President of the Constituent Assembly of India?',
    'Dr. Sachchidananda Sinha was the temporary President of the Constituent Assembly; Rajendra Prasad was its permanent President and later became the first President of India.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '7f27949b86babd7eccbac3c41fda52ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7f27949b86babd7eccbac3c41fda52ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jawaharlal Nehru'),
            ('B', 'Sardar Vallabhbhai Patel'),
            ('C', 'Dr. Sachchidananda Sinha'),
            ('D', 'Rajendra Prasad')
           ) as v(label, option_text)
 where q.question_hash = '7f27949b86babd7eccbac3c41fda52ae'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Who moved the objective resolution in the Constituent Assembly?',
    'Jawaharlal Nehru moved the objective resolution on 13 December 1946 and Jaivraj Mehta seconded it; it was adopted on 22 January 1947.',
    'hard',
    'Standard Reference',
    null,
    'f2c3c75109e68af75a0387187a98efe7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f2c3c75109e68af75a0387187a98efe7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jaivraj Mehta'),
            ('B', 'Dr. B.R. Ambedkar'),
            ('C', 'Vallabhbhai Patel'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = 'f2c3c75109e68af75a0387187a98efe7'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Chairman of the Drafting Committee of the Constituent Assembly was:',
    'Dr. B.R. Ambedkar chaired the Drafting Committee and was the principal architect of the Constitution of India.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd87a5ddb1eb968196dd1128d17fb938b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd87a5ddb1eb968196dd1128d17fb938b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.N. Rau'),
            ('B', 'Jawaharlal Nehru'),
            ('C', 'Dr. B.R. Ambedkar'),
            ('D', 'Sardar Patel')
           ) as v(label, option_text)
 where q.question_hash = 'd87a5ddb1eb968196dd1128d17fb938b'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'How many members from the British Indian provinces were elected to the Constituent Assembly?',
    'The Constituent Assembly had 389 members: 296 from the provinces, 93 representing princely states and 4 representing Chief Commissioners'' Provinces.',
    'medium',
    'Standard Reference',
    null,
    '636fff7a4c007c361ad340e839d77758'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '636fff7a4c007c361ad340e839d77758'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '145'),
            ('B', '296'),
            ('C', '389'),
            ('D', '200')
           ) as v(label, option_text)
 where q.question_hash = '636fff7a4c007c361ad340e839d77758'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution of India borrowed the concurrent list from:',
    'The concurrent list and the scheme of a federation with a strong centre borrowed from the Government of India Act, 1935.',
    'medium',
    'Standard Reference',
    null,
    'e9562fd917ac2fd3657ef1af60437acb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e9562fd917ac2fd3657ef1af60437acb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Constitution of the United States'),
            ('B', 'Constitution of Ireland'),
            ('C', 'Constitution of Australia'),
            ('D', 'Government of India Act 1935')
           ) as v(label, option_text)
 where q.question_hash = 'e9562fd917ac2fd3657ef1af60437acb'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The procedure of election to the Rajya Sabha was borrowed from:',
    'The method of election to the Rajya Sabha, with a special electoral college, was borrowed from the Constitution of the United States.',
    'medium',
    'Standard Reference',
    null,
    'b8d48fdb2c6829d5ec9506be5f019ada'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b8d48fdb2c6829d5ec9506be5f019ada'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ireland'),
            ('B', 'Canada'),
            ('C', 'United States'),
            ('D', 'British Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'b8d48fdb2c6829d5ec9506be5f019ada'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The idea of a concurrent list and the freedom of trade, commerce and intercourse were borrowed from:',
    'The Irish Constitution provided for a concurrent list, the freedom of trade, commerce and intercourse, and the method of presidential election.',
    'hard',
    'Standard Reference',
    null,
    'f6406df4546a8caf1ff3de4d1f4bab37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f6406df4546a8caf1ff3de4d1f4bab37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ireland'),
            ('B', 'Canada'),
            ('C', 'Australia'),
            ('D', 'United States')
           ) as v(label, option_text)
 where q.question_hash = 'f6406df4546a8caf1ff3de4d1f4bab37'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Concurrent List'' was first introduced in the Constitution of:',
    'The concurrent list and the freedom of trade and commerce were borrowed from the Irish Constitution.',
    'medium',
    'Standard Reference',
    null,
    'a2ac9bfed80192c469d7e66ef0f278e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2ac9bfed80192c469d7e66ef0f278e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Canada'),
            ('B', 'Australia'),
            ('C', 'Ireland'),
            ('D', 'United States')
           ) as v(label, option_text)
 where q.question_hash = 'a2ac9bfed80192c469d7e66ef0f278e0'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The provision of a ''Concurrent List'' in the Indian Constitution was borrowed from:',
    'The concurrent list, along with the freedom of trade, commerce and intercourse and the method of election to the upper house, was borrowed from Ireland.',
    'medium',
    'Standard Reference',
    null,
    '60b695d20d307b17e31d34cec115bd0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '60b695d20d307b17e31d34cec115bd0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'United States'),
            ('B', 'Canada'),
            ('C', 'Australia'),
            ('D', 'Ireland')
           ) as v(label, option_text)
 where q.question_hash = '60b695d20d307b17e31d34cec115bd0c'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The 42nd Amendment to the Constitution was enacted in:',
    'The 42nd Amendment of 1976 was enacted during the Emergency and is sometimes called the ''Mini-Constitution''.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd88a477a6016e78640ff1bc1cd4a0d5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd88a477a6016e78640ff1bc1cd4a0d5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1971'),
            ('B', '1976'),
            ('C', '1978'),
            ('D', '1980')
           ) as v(label, option_text)
 where q.question_hash = 'd88a477a6016e78640ff1bc1cd4a0d5f'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The words ''socialist'', ''secular'' and ''integrity'' were added to the Preamble by which amendment?',
    'The 42nd Amendment of 1976 added the words socialist, secular and integrity to the Preamble.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '28d167484d42b5e6f41404899357f91a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28d167484d42b5e6f41404899357f91a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '42nd Amendment'),
            ('B', '44th Amendment'),
            ('C', '52nd Amendment'),
            ('D', '7th Amendment')
           ) as v(label, option_text)
 where q.question_hash = '28d167484d42b5e6f41404899357f91a'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'Which Article of the Constitution declares India to be a ''Union of States''?',
    'Article 1(1) states that India, that is Bharat, shall be a Union of States, and Article 3 deals with the formation of new states.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '082c9069fdb65c6d8020e0886ecb02df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '082c9069fdb65c6d8020e0886ecb02df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 3'),
            ('B', 'Article 4'),
            ('C', 'Article 1'),
            ('D', 'Article 2')
           ) as v(label, option_text)
 where q.question_hash = '082c9069fdb65c6d8020e0886ecb02df'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The Preamble to the Constitution declares India to be:',
    'After the 42nd Amendment the Preamble declares India to be a Sovereign Socialist Secular Democratic Republic.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '52c489f2eef6cc89fc8850cbe49bc747'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '52c489f2eef6cc89fc8850cbe49bc747'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A federal unitary state'),
            ('B', 'A sovereign socialist republic'),
            ('C', 'A democratic republic'),
            ('D', 'A socialist, secular, democratic republic')
           ) as v(label, option_text)
 where q.question_hash = '52c489f2eef6cc89fc8850cbe49bc747'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'Rights conferred by the Citizenship Act, 1955 are:',
    'Rights conferred by the Citizenship Act, 1955 are legal rights, not fundamental rights; Parliament can change them by an ordinary law.',
    'hard',
    'Standard Reference',
    null,
    '05c20bb283f4da9a908c852be99d3d59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '05c20bb283f4da9a908c852be99d3d59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fundamental Rights'),
            ('B', 'Legal rights'),
            ('C', 'Natural rights'),
            ('D', 'Civil rights')
           ) as v(label, option_text)
 where q.question_hash = '05c20bb283f4da9a908c852be99d3d59'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which Article of the Constitution deals with the right to equality?',
    'Article 14 guarantees equality before law and equal protection of the laws to all citizens within the territory of India.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '8d2aa3a89a0acfc2a9af8ddb00fb08d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8d2aa3a89a0acfc2a9af8ddb00fb08d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 14'),
            ('B', 'Article 19'),
            ('C', 'Article 21'),
            ('D', 'Article 12')
           ) as v(label, option_text)
 where q.question_hash = '8d2aa3a89a0acfc2a9af8ddb00fb08d2'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to property was removed from the list of fundamental rights by which amendment?',
    'The 44th Amendment of 1978 removed the right to property from the list of fundamental rights and made it a legal right under Article 300A.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '3dcbfb644edfdd24a424475a7d3aa44d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3dcbfb644edfdd24a424475a7d3aa44d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '52nd Amendment'),
            ('B', '1st Amendment'),
            ('C', '42nd Amendment'),
            ('D', '44th Amendment')
           ) as v(label, option_text)
 where q.question_hash = '3dcbfb644edfdd24a424475a7d3aa44d'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The writ of ''Quo Warranto'' is issued to:',
    'Quo Warranto literally means ''by what authority'', and it is issued to prevent a person from holding a public office to which he is not entitled.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'f79c8899a09319f9daf426845ceac98c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f79c8899a09319f9daf426845ceac98c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Enforce a legal right'),
            ('B', 'Prevent a person from holding a public office he is not entitled to'),
            ('C', 'Bring a person to court to examine the legality of his claim'),
            ('D', 'Transfer a case from one court to another')
           ) as v(label, option_text)
 where q.question_hash = 'f79c8899a09319f9daf426845ceac98c'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to life and personal liberty under Article 21 was interpreted to include the right to:',
    'In K.S. Puttaswamy (2017) the Supreme Court held that the right to privacy is intrinsic to life and personal liberty under Article 21.',
    'medium',
    'Standard Reference',
    null,
    '6a36955ab88c3c7d4ce7b27a1673ad18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a36955ab88c3c7d4ce7b27a1673ad18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vote and election'),
            ('B', 'Education and employment'),
            ('C', 'Privacy and a clean environment'),
            ('D', 'Property and trade')
           ) as v(label, option_text)
 where q.question_hash = '6a36955ab88c3c7d4ce7b27a1673ad18'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In which case did the Supreme Court declare the right to privacy a fundamental right?',
    'In 2017, in the Puttaswamy case, a nine-judge bench held that privacy is a fundamental right protected under Article 21.',
    'medium',
    'Standard Reference',
    null,
    '167a432bbe2d0ed19c1cbc8ab9d62486'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '167a432bbe2d0ed19c1cbc8ab9d62486'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K.S. Puttaswamy v. Union of India'),
            ('B', 'S.R. Bommai v. Union of India'),
            ('C', 'Maneka Gandhi v. Union of India'),
            ('D', 'Kesavananda Bharati v. State of Kerala')
           ) as v(label, option_text)
 where q.question_hash = '167a432bbe2d0ed19c1cbc8ab9d62486'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 21A of the Constitution deals with:',
    'Article 21A, inserted by the 86th Amendment of 2002, provides that the state shall provide free and compulsory education to every child aged six to fourteen years.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '8f173c07b29376f3acdb2c49e2fae986'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8f173c07b29376f3acdb2c49e2fae986'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to freedom of religion'),
            ('B', 'Right to education'),
            ('C', 'Right to life'),
            ('D', 'Right to equality')
           ) as v(label, option_text)
 where q.question_hash = '8f173c07b29376f3acdb2c49e2fae986'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 32 of the Constitution was described by which leader as the ''heart and soul'' of the Constitution?',
    'Dr. B.R. Ambedkar called Article 32, which allows the enforcement of fundamental rights, the very heart and soul of the Constitution.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd1fb036716c4819fd0879e7a1477cf2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd1fb036716c4819fd0879e7a1477cf2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dr. Ambedkar and Jawaharlal Nehru'),
            ('B', 'Motilal Nehru'),
            ('C', 'Dr. B.R. Ambedkar'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = 'd1fb036716c4819fd0879e7a1477cf2c'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 20 of the Constitution provides protection against:',
    'Article 20 protects against ex-post facto criminal laws, double jeopardy and self-incrimination.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '51c7cf2d8a96ebe1094e88c46045afc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '51c7cf2d8a96ebe1094e88c46045afc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Double jeopardy and self-incrimination'),
            ('B', 'Arrest without warrant'),
            ('C', 'Conviction by special court'),
            ('D', 'Ex-post facto laws')
           ) as v(label, option_text)
 where q.question_hash = '51c7cf2d8a96ebe1094e88c46045afc2'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Constitution (First Amendment) Act, 1951 added which new category to the Constitution?',
    'The First Amendment added the Ninth Schedule in 1951 to protect the laws of land reform from judicial review.',
    'medium',
    'Standard Reference',
    null,
    '819c0c516ca38b880d96e6cb9699f0a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '819c0c516ca38b880d96e6cb9699f0a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tenth Schedule'),
            ('B', 'Eleventh Schedule'),
            ('C', 'Twelfth Schedule'),
            ('D', 'Ninth Schedule')
           ) as v(label, option_text)
 where q.question_hash = '819c0c516ca38b880d96e6cb9699f0a8'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 359 of the Constitution deals with:',
    'Article 359 allows the President to suspend the right to move courts for enforcement of specified fundamental rights during a national emergency.',
    'medium',
    'Standard Reference',
    null,
    '7c1b00ba5d1b8c294cf41c5fe8e6f3d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c1b00ba5d1b8c294cf41c5fe8e6f3d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Freedom of the press'),
            ('B', 'Right to education'),
            ('C', 'Suspension of fundamental rights during an emergency'),
            ('D', 'Right to equality')
           ) as v(label, option_text)
 where q.question_hash = '7c1b00ba5d1b8c294cf41c5fe8e6f3d5'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Fundamental Rights under Part III of the Constitution are enforceable through:',
    'Fundamental rights can be enforced through the Supreme Court under Article 32 and the High Courts under Article 226.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '354f7b6080a227961a4d60e232a40e8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '354f7b6080a227961a4d60e232a40e8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 32 and Article 226'),
            ('B', 'Article 368'),
            ('C', 'Article 280'),
            ('D', 'Administrative tribunals')
           ) as v(label, option_text)
 where q.question_hash = '354f7b6080a227961a4d60e232a40e8b'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Which Article of the Constitution contains the Directive Principles that promote the welfare of the individual?',
    'Article 38 directs the state to promote the welfare of the individual, secure a social order in which justice, social, economic and political justice shall inform all national institutions.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'd28221eea0509ed1ba0f87b541313104'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd28221eea0509ed1ba0f87b541313104'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 39'),
            ('B', 'Article 41'),
            ('C', 'Article 43'),
            ('D', 'Article 38')
           ) as v(label, option_text)
 where q.question_hash = 'd28221eea0509ed1ba0f87b541313104'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 44 of the Constitution directs the state to:',
    'Article 44 directs the state to endeavour to secure for the citizens a uniform civil code throughout the territory of India.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '0157a96060f6ba21b23bcedccf3951a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0157a96060f6ba21b23bcedccf3951a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide free education'),
            ('B', 'Secure a uniform civil code'),
            ('C', 'Promote cottage industries'),
            ('D', 'Protect monuments')
           ) as v(label, option_text)
 where q.question_hash = '0157a96060f6ba21b23bcedccf3951a8'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 48 directs the State to:',
    'Article 48 directs the state to endeavour to prevent the slaughter of cows and calves, and prohibit the slaughter of milch and draught cattle.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'fe9a89eb64d714f0d7ba145bbb4f322b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fe9a89eb64d714f0d7ba145bbb4f322b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promote the interests of scheduled tribes'),
            ('B', 'Prevent the slaughter of cows and calves'),
            ('C', 'Encourage the growth of scientific research'),
            ('D', 'Protect the environment')
           ) as v(label, option_text)
 where q.question_hash = 'fe9a89eb64d714f0d7ba145bbb4f322b'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 50 of the Constitution directs the state to:',
    'Article 50 directs the state to take steps to separate the judiciary from the executive in the public services of the state.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'f5c4d1fc7ab72e52364f7b07b5ced73d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f5c4d1fc7ab72e52364f7b07b5ced73d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Separate the judiciary from the executive'),
            ('B', 'Enforce the fundamental duties'),
            ('C', 'Provide uniform civil code'),
            ('D', 'Establish a welfare state')
           ) as v(label, option_text)
 where q.question_hash = 'f5c4d1fc7ab72e52364f7b07b5ced73d'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The Directive Principles of State Policy are contained in:',
    'The Directive Principles are contained in Part IV of the Constitution, Articles 36 to 51.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '3eca43460f7bd738368fe1ca2cb1e0fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3eca43460f7bd738368fe1ca2cb1e0fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Part VI'),
            ('B', 'Part III'),
            ('C', 'Part IV'),
            ('D', 'Part V')
           ) as v(label, option_text)
 where q.question_hash = '3eca43460f7bd738368fe1ca2cb1e0fc'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The liberal-intellectual Directive Principles are concerned with:',
    'Gandhian principles cover village panchayats, cottage industries, prohibition of intoxicating drinks, protection of monuments and the promotion of international peace.',
    'hard',
    'Standard Reference',
    null,
    'f348ccb7a804ce57d0f9f0ad4475d600'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f348ccb7a804ce57d0f9f0ad4475d600'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Protection of monuments and places of national importance'),
            ('B', 'Promotion of international peace'),
            ('C', 'Provision of education and economic security'),
            ('D', 'Equal justice and freedom of thought')
           ) as v(label, option_text)
 where q.question_hash = 'f348ccb7a804ce57d0f9f0ad4475d600'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The Directive Principles are non-justiciable. This was held by the Supreme Court in:',
    'In L. Chandra Kumar (1970) the Supreme Court held that the Directive Principles cannot be enforced by the courts but can guide the state in policy-making.',
    'medium',
    'Standard Reference',
    null,
    '2b9af478023d7a4c14be9ec6d7da4f75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2b9af478023d7a4c14be9ec6d7da4f75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kesavananda Bharati case'),
            ('B', 'L. Chandra Kumar v. Union of India'),
            ('C', 'Golaknath v. State of Punjab'),
            ('D', 'Maneka Gandhi case')
           ) as v(label, option_text)
 where q.question_hash = '2b9af478023d7a4c14be9ec6d7da4f75'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'Which Article of the Constitution contains the Fundamental Duties?',
    'Article 51A, added by the 42nd Amendment, lists the eleven fundamental duties of citizens.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'e6130ead6edad55d6d2d4073dfe9c994'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e6130ead6edad55d6d2d4073dfe9c994'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 52'),
            ('B', 'Article 48A'),
            ('C', 'Article 49'),
            ('D', 'Article 51A')
           ) as v(label, option_text)
 where q.question_hash = 'e6130ead6edad55d6d2d4073dfe9c994'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The Fundamental Duties were added to the Constitution on the recommendation of:',
    'The Swaran Singh Committee, appointed in 1976, recommended the inclusion of fundamental duties in the Constitution, which the 42nd Amendment did in 1976.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '4484bf6c24446f6c10e6e3ae5bae4517'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4484bf6c24446f6c10e6e3ae5bae4517'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Swaran Singh Committee'),
            ('B', 'Ashok Mehta Committee'),
            ('C', 'Balwant Rai Mehta Committee'),
            ('D', 'Sarkar Commission')
           ) as v(label, option_text)
 where q.question_hash = '4484bf6c24446f6c10e6e3ae5bae4517'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'How many fundamental duties are listed in Article 51A of the Constitution?',
    'Article 51A lists eleven fundamental duties, to which the 86th Amendment added the duty of parents to provide opportunities for education to children.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'c0817f20a37016bd716561c233f130ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c0817f20a37016bd716561c233f130ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nine'),
            ('B', 'Ten'),
            ('C', 'Eleven'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = 'c0817f20a37016bd716561c233f130ab'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'Which of the following is a fundamental duty of every citizen?',
    'The 42nd Amendment made it the duty of every citizen to protect and improve the natural environment and to have compassion for living creatures.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '2daf60ba8e19724eacb220b66efade72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2daf60ba8e19724eacb220b66efade72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To protect and improve the natural environment'),
            ('B', 'To vote in every election'),
            ('C', 'To serve in the armed forces'),
            ('D', 'To pay taxes')
           ) as v(label, option_text)
 where q.question_hash = '2daf60ba8e19724eacb220b66efade72'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The 86th Amendment of 2002 to the Constitution related to:',
    'The 86th Amendment inserted Article 21A and made education a fundamental right for children aged six to fourteen years.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '988ad31b63823a733a3d039370e47a16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '988ad31b63823a733a3d039370e47a16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation for women'),
            ('B', 'Panchayati Raj'),
            ('C', 'Right to education'),
            ('D', 'Right to information')
           ) as v(label, option_text)
 where q.question_hash = '988ad31b63823a733a3d039370e47a16'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The power to create new states in India is vested in:',
    'Article 3 vests the power to form new states, alter boundaries, merge or divide areas in Parliament, after consulting the state legislatures.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '752220f3291b0c4c4110fdb2b2c0f13a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '752220f3291b0c4c4110fdb2b2c0f13a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Supreme Court'),
            ('C', 'The President'),
            ('D', 'Parliament')
           ) as v(label, option_text)
 where q.question_hash = '752220f3291b0c4c4110fdb2b2c0f13a'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Residuary powers of the Union Parliament are provided under:',
    'Article 248 vests residuary powers of legislation, including taxation, in Parliament; Article 269A lists some exclusive powers of the Union.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'a5fd2d24e65f802bd506ff03ded14541'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a5fd2d24e65f802bd506ff03ded14541'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 245'),
            ('B', 'Article 248'),
            ('C', 'Article 254'),
            ('D', 'Article 263')
           ) as v(label, option_text)
 where q.question_hash = 'a5fd2d24e65f802bd506ff03ded14541'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'During a national emergency, Parliament may:',
    'Under Article 353 the Centre can assume powers of the states, alter the distribution of legislative powers and give executive directions to any state.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '299204e7a7ba3aeeeba35d1052fe205a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '299204e7a7ba3aeeeba35d1052fe205a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alter the distribution of legislative powers'),
            ('B', 'Increase the term of the Lok Sabha'),
            ('C', 'All of the above'),
            ('D', 'Dissolve state assemblies')
           ) as v(label, option_text)
 where q.question_hash = '299204e7a7ba3aeeeba35d1052fe205a'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'President''s Rule in a state is provided under which Article?',
    'Article 356 provides for President''s Rule when the constitutional machinery of a state fails, with the President''s assent or the Governor''s report.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '993c6fbd514587db28730b0e1fb78907'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '993c6fbd514587db28730b0e1fb78907'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 360'),
            ('B', 'Article 365'),
            ('C', 'Article 352'),
            ('D', 'Article 356')
           ) as v(label, option_text)
 where q.question_hash = '993c6fbd514587db28730b0e1fb78907'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The financial crisis of 2008 was considered a ''global financial crisis''. The Inter-State Council was created to:',
    'The Inter-State Council, established in 1990 under Article 263, investigates and advises on questions of mutual interest and coordination between the states.',
    'hard',
    'Standard Reference',
    null,
    '7b81e214438f3126f0d74e260e253398'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b81e214438f3126f0d74e260e253398'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Investigate disputes between the Centre and states'),
            ('B', 'Advise on interstate coordination and cooperation'),
            ('C', 'Conduct elections'),
            ('D', 'Resolve inter-state disputes')
           ) as v(label, option_text)
 where q.question_hash = '7b81e214438f3126f0d74e260e253398'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Zonal Councils are:',
    'Zonal Councils are non-statutory advisory bodies created by an executive resolution; they are not mentioned in the Constitution.',
    'hard',
    'Standard Reference',
    null,
    'c81bb246c7e1365ada49e83f028ad4ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c81bb246c7e1365ada49e83f028ad4ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Statutory bodies created by Parliament'),
            ('B', 'Constitutional bodies'),
            ('C', 'Non-statutory bodies'),
            ('D', 'Judicial bodies')
           ) as v(label, option_text)
 where q.question_hash = 'c81bb246c7e1365ada49e83f028ad4ec'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The GST Council is constituted under:',
    'Article 279A, inserted by the 101st Amendment, provides for the GST Council chaired by the Union Finance Minister with state finance ministers as members.',
    'medium',
    'Standard Reference',
    null,
    '13bb86a940759e832b4191df7b7a32c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '13bb86a940759e832b4191df7b7a32c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 280'),
            ('B', 'Article 263'),
            ('C', 'Article 269A'),
            ('D', 'Article 279A')
           ) as v(label, option_text)
 where q.question_hash = '13bb86a940759e832b4191df7b7a32c7'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'NITI Aayog replaced the:',
    'NITI Aayog was constituted in 2015 in place of the Planning Commission as a policy think-tank promoting cooperative federalism.',
    'easy',
    'Standard Reference',
    null,
    '4217ee92939d1c70fc971299feaa648c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4217ee92939d1c70fc971299feaa648c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Planning Commission'),
            ('B', 'Finance Commission'),
            ('C', 'Central Statistical Organisation'),
            ('D', 'Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '4217ee92939d1c70fc971299feaa648c'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Council of States is also known as:',
    'The Rajya Sabha is the upper house of Parliament and is often called the House of the States or the Council of States.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '2277bcd17406d73ce7922d726f0f8e10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2277bcd17406d73ce7922d726f0f8e10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'House of Provinces'),
            ('B', 'Upper House'),
            ('C', 'Senate'),
            ('D', 'Council of Elders')
           ) as v(label, option_text)
 where q.question_hash = '2277bcd17406d73ce7922d726f0f8e10'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The maximum strength of the Rajya Sabha is:',
    'The Rajya Sabha has a maximum strength of 250, of which 238 are elected by the state legislatures and 12 are nominated by the President.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '51172d109881ecca2e083752b18dc439'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '51172d109881ecca2e083752b18dc439'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '245'),
            ('B', '250'),
            ('C', '248'),
            ('D', '270')
           ) as v(label, option_text)
 where q.question_hash = '51172d109881ecca2e083752b18dc439'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A Money Bill can be introduced in the Rajya Sabha only on the recommendation of:',
    'A Money Bill can be introduced in the Rajya Sabha only if it is recommended by the President, and the Rajya Sabha can only make recommendations on it.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    'ad68cd6eeb92744b1748b36bb8bdefab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ad68cd6eeb92744b1748b36bb8bdefab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Finance Minister'),
            ('B', 'The President'),
            ('C', 'The Prime Minister'),
            ('D', 'The Speaker of the Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'ad68cd6eeb92744b1748b36bb8bdefab'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Speaker of the Lok Sabha submits his resignation to:',
    'The Speaker resigns to the President, and so does the Chairman of the Rajya Sabha.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '7acc49edf77c382208ab2215e9a7ac1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7acc49edf77c382208ab2215e9a7ac1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Speaker of the Rajya Sabha'),
            ('C', 'The Chief Justice of India'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = '7acc49edf77c382208ab2215e9a7ac1c'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The quorum in the Lok Sabha is:',
    'The quorum in the Lok Sabha is one-tenth of the total membership of the House, as provided in the Rules of Procedure.',
    'hard',
    'Standard Reference',
    null,
    '9eb7b018ad1b560faba91d1397646491'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9eb7b018ad1b560faba91d1397646491'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One-tenth of the total membership'),
            ('B', 'One-fifth of the total membership'),
            ('C', 'One-tenth of the total membership of the House'),
            ('D', 'A simple majority')
           ) as v(label, option_text)
 where q.question_hash = '9eb7b018ad1b560faba91d1397646491'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Public Accounts Committee'' of Parliament has how many members?',
    'The Public Accounts Committee has 22 members, 15 from the Lok Sabha and 7 from the Rajya Sabha, with the Chairman of the Committee of Estimates as chairman.',
    'medium',
    'Standard Reference',
    null,
    'ddbdede5e0934825e656a7efc9b5d462'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ddbdede5e0934825e656a7efc9b5d462'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15'),
            ('B', '31'),
            ('C', '22'),
            ('D', '30')
           ) as v(label, option_text)
 where q.question_hash = 'ddbdede5e0934825e656a7efc9b5d462'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Which Article of the Constitution deals with Parliamentary privileges?',
    'Article 105 deals with the privileges of the members of Parliament and Article 106 with those of the state legislatures.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'd91fe77bba1475b52f3d37b0b561f1a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd91fe77bba1475b52f3d37b0b561f1a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 105'),
            ('B', 'Article 106'),
            ('C', 'Article 100'),
            ('D', 'Article 122')
           ) as v(label, option_text)
 where q.question_hash = 'd91fe77bba1475b52f3d37b0b561f1a6'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A joint sitting of the two houses of Parliament is presided over by:',
    'A joint sitting under Article 108 is presided over by the Speaker of the Lok Sabha and, in his absence, by the Deputy Speaker.',
    'hard',
    'Standard Reference',
    null,
    '9d0b27229003a23289f6c4c4d05f7f9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9d0b27229003a23289f6c4c4d05f7f9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Speaker of the Lok Sabha'),
            ('C', 'The Vice-President'),
            ('D', 'The Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '9d0b27229003a23289f6c4c4d05f7f9d'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The zero hour in the Indian Parliament was first introduced in:',
    'The zero hour, starting in the 1990s, allows members to raise matters without notice immediately after the question hour and agenda is over.',
    'medium',
    'Standard Reference',
    null,
    'e94caa308cb829359e6cc5b24aea7e4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e94caa308cb829359e6cc5b24aea7e4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1980s'),
            ('B', '2000'),
            ('C', '1952'),
            ('D', '1990s')
           ) as v(label, option_text)
 where q.question_hash = 'e94caa308cb829359e6cc5b24aea7e4f'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The President''s ordinance-making power is provided under:',
    'Article 123 empowers the President to promulgate ordinances when either house of Parliament is not in session.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '90e8b9c8685cd6a86ab52c873ac42050'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '90e8b9c8685cd6a86ab52c873ac42050'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 356'),
            ('B', 'Article 360'),
            ('C', 'Article 123'),
            ('D', 'Article 213')
           ) as v(label, option_text)
 where q.question_hash = '90e8b9c8685cd6a86ab52c873ac42050'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The minimum quorum to elect the President of India is:',
    'The electoral college for the President consists of the elected members of both houses and the elected members of the state legislative assemblies, with a quorum of one-half of the elected members.',
    'hard',
    'Standard Reference',
    null,
    '3ed7a25590564e604d763330ca9fd977'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3ed7a25590564e604d763330ca9fd977'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One-third of the electoral college'),
            ('B', 'Two-thirds of the electoral college'),
            ('C', '50% of the electoral college'),
            ('D', 'One-half of the elected members of both houses')
           ) as v(label, option_text)
 where q.question_hash = '3ed7a25590564e604d763330ca9fd977'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Article 74 of the Constitution deals with:',
    'Article 74 provides for the composition of the two houses of Parliament and for the office of the Speaker of the Lok Sabha.',
    'medium',
    'Standard Reference',
    null,
    'eb81ff052a03b03f2cb7e70d1c7a7efb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eb81ff052a03b03f2cb7e70d1c7a7efb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Powers of Parliament'),
            ('B', 'Censure of ministers'),
            ('C', 'Composition of Parliament'),
            ('D', 'Sessions and prorogation of Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'eb81ff052a03b03f2cb7e70d1c7a7efb'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Which of the following is NOT a privilege of the members of Parliament?',
    'The right to vote in the presidential election is a general right of citizens, not a parliamentary privilege.',
    'medium',
    'Standard Reference',
    null,
    '8e60b28e1cd238a31071bd3aba775701'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8e60b28e1cd238a31071bd3aba775701'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to vote in the presidential election'),
            ('B', 'Freedom of speech in Parliament'),
            ('C', 'Freedom from arrest in certain cases'),
            ('D', 'Exemption from court jurisdiction for acts in Parliament')
           ) as v(label, option_text)
 where q.question_hash = '8e60b28e1cd238a31071bd3aba775701'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The advisory jurisdiction of the Supreme Court under Article 143 is exercised on a reference from:',
    'Article 143 empowers the President to refer any matter of importance or difficulty to the Supreme Court for its opinion.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '9918a3950401cb4f1a7d76cabb06c563'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9918a3950401cb4f1a7d76cabb06c563'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Governor'),
            ('B', 'The President'),
            ('C', 'The Prime Minister'),
            ('D', 'The Parliament')
           ) as v(label, option_text)
 where q.question_hash = '9918a3950401cb4f1a7d76cabb06c563'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The number of judges required to decide a constitutional bench of the Supreme Court under the collegium system is:',
    'Matters of constitutional importance are decided by a bench of at least five judges, as laid down in the Second Judges case of 1993.',
    'medium',
    'Standard Reference',
    null,
    '4518503d5441de0950921b2c920b3057'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4518503d5441de0950921b2c920b3057'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nine'),
            ('B', 'Three'),
            ('C', 'Five'),
            ('D', 'Seven')
           ) as v(label, option_text)
 where q.question_hash = '4518503d5441de0950921b2c920b3057'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The Supreme Court''s jurisdiction to transfer cases is provided under:',
    'Article 139A empowers the Supreme Court to withdraw and transfer cases involving the same substantial question of law pending before several High Courts.',
    'hard',
    'Standard Reference',
    null,
    '83f74f36afc2733db2cd228b754c9ebc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '83f74f36afc2733db2cd228b754c9ebc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 139A'),
            ('B', 'Article 141'),
            ('C', 'Article 143'),
            ('D', 'Article 137')
           ) as v(label, option_text)
 where q.question_hash = '83f74f36afc2733db2cd228b754c9ebc'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Judicial review in India was established by:',
    'Article 13, which declares that laws inconsistent with the fundamental rights are void, is the basis of the doctrine of judicial review.',
    'medium',
    'Standard Reference',
    null,
    'add00f1fe081aaeabb28ab6414414d79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'add00f1fe081aaeabb28ab6414414d79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 227'),
            ('B', 'Article 13'),
            ('C', 'Article 32'),
            ('D', 'Article 226')
           ) as v(label, option_text)
 where q.question_hash = 'add00f1fe081aaeabb28ab6414414d79'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The doctrine of ''basic structure'' of the Constitution was propounded in:',
    'In Kesavananda Bharati (1973) the Supreme Court held that Parliament cannot amend the basic structure of the Constitution.',
    'medium',
    'Standard Reference',
    null,
    'b1f487a91814c948f588dbc26c6818fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b1f487a91814c948f588dbc26c6818fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Minerva Mills v. Union of India'),
            ('B', 'Maneka Gandhi v. Union of India'),
            ('C', 'Golaknath v. State of Punjab'),
            ('D', 'Kesavananda Bharati v. State of Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'b1f487a91814c948f588dbc26c6818fd'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The collegium system for the appointment of judges was introduced in:',
    'In the Second Judges case (1993) the Supreme Court laid down the collegium system, which was later modified in the Third Judges case (1998).',
    'medium',
    'Standard Reference',
    null,
    'f009a7527776834ec298e6745f9bda1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f009a7527776834ec298e6745f9bda1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1986'),
            ('B', '1993'),
            ('C', '1997'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = 'f009a7527776834ec298e6745f9bda1d'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'A High Court can issue writs for which purposes under Article 226?',
    'Article 226 empowers a High Court to issue directions or orders or writs for the enforcement of fundamental rights and for any other purpose, which is wider than Article 32.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '53fe12cf55905ef14f88fd927488f192'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53fe12cf55905ef14f88fd927488f192'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the enforcement of fundamental rights and for any other purpose'),
            ('B', 'Only for habeas corpus'),
            ('C', 'Only for administrative purposes'),
            ('D', 'Any fundamental right')
           ) as v(label, option_text)
 where q.question_hash = '53fe12cf55905ef14f88fd927488f192'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which writ is issued to produce a detained person before the court?',
    'Habeas corpus literally means ''to have the body of'', and it is issued to inquire into the legality of a person''s detention.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '3b48fedacc1029fa131f10a735ce3820'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3b48fedacc1029fa131f10a735ce3820'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prohibition'),
            ('B', 'Mandamus'),
            ('C', 'Habeas corpus'),
            ('D', 'Certiorari')
           ) as v(label, option_text)
 where q.question_hash = '3b48fedacc1029fa131f10a735ce3820'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'In which case did the Supreme Court first assert the power of judicial review over constitutional amendments?',
    'In A.K. Gopalan (1950) the Court accepted preventive detention as valid, but in Shankari Prasad (1951) it asserted the power of judicial review over constitutional amendments.',
    'hard',
    'Standard Reference',
    null,
    '23e62450d7ae7a128f930a1942533b83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23e62450d7ae7a128f930a1942533b83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kesavananda Bharati v. State of Kerala'),
            ('B', 'Golaknath v. State of Punjab'),
            ('C', 'A.K. Gopalan v. State of Madras'),
            ('D', 'Shankari Prasad v. Union of India')
           ) as v(label, option_text)
 where q.question_hash = '23e62450d7ae7a128f930a1942533b83'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which case held that the Indian Constitution is federal in nature?',
    'In the S.R. Bommai case of 1994 the Supreme Court held that the Constitution is federal and described the Centre''s misuse of Article 356 as a breach of federalism.',
    'medium',
    'Standard Reference',
    null,
    'affb17f2eeb043e1fefe133a2abe7395'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'affb17f2eeb043e1fefe133a2abe7395'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Golaknath v. State of Punjab'),
            ('B', 'S.R. Bommai v. Union of India'),
            ('C', 'Kesavananda Bharati v. State of Kerala'),
            ('D', 'Bommai and others')
           ) as v(label, option_text)
 where q.question_hash = 'affb17f2eeb043e1fefe133a2abe7395'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Impeachment of a judge of the Supreme Court is provided under:',
    'Article 124 provides for the removal of a Supreme Court judge by impeachment by Parliament, while Article 125 deals with the qualifications of judges.',
    'medium',
    'Standard Reference',
    null,
    'd4930dffea11450c9394275a1760859e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd4930dffea11450c9394275a1760859e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 124'),
            ('B', 'Article 125'),
            ('C', 'Article 126'),
            ('D', 'Article 217')
           ) as v(label, option_text)
 where q.question_hash = 'd4930dffea11450c9394275a1760859e'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The Election Commission of India is a:',
    'The Election Commission is a statutory body under the Representation of the People Act, 1950, although Article 324 vests the superintendence and control of elections in it.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'b0e6c861e69b7d7c563c7eecb90a0ce6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b0e6c861e69b7d7c563c7eecb90a0ce6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Executive body'),
            ('B', 'Non-statutory body'),
            ('C', 'Constitutional body'),
            ('D', 'Statutory body')
           ) as v(label, option_text)
 where q.question_hash = 'b0e6c861e69b7d7c563c7eecb90a0ce6'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'Article 324 of the Constitution provides for:',
    'Article 324 vests in the Election Commission the superintendence, direction and control of the entire process of elections to Parliament, the state legislatures and the offices of President and Vice-President.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd55ad67cd2dcc646b8ad6c8bf90abf2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd55ad67cd2dcc646b8ad6c8bf90abf2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Voting by proxy'),
            ('B', 'The composition of the Election Commission'),
            ('C', 'The superintendence, direction and control of elections'),
            ('D', 'Reservation of seats for women')
           ) as v(label, option_text)
 where q.question_hash = 'd55ad67cd2dcc646b8ad6c8bf90abf2f'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The Chief Election Commissioner can be removed from office by:',
    'Under the 2023 law, the CEC can be removed like a Supreme Court judge, but the Election Commissioners can be removed on the CEC''s recommendation.',
    'hard',
    'Standard Reference',
    null,
    '10c79b3c8f25c50c6873878aa9af8430'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '10c79b3c8f25c50c6873878aa9af8430'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parliament by a special majority'),
            ('B', 'The Prime Minister'),
            ('C', 'The President on the recommendation of the Council of Ministers'),
            ('D', 'The President on the advice of the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '10c79b3c8f25c50c6873878aa9af8430'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'NOTA was introduced in India in:',
    'NOTA was introduced in general elections from 2013 after the Supreme Court directive of 2010 in the PUCL case.',
    'medium',
    'Standard Reference',
    null,
    'a8f9f3520f05e6fc62f39568c5166fc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a8f9f3520f05e6fc62f39568c5166fc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2015'),
            ('C', '2007'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'a8f9f3520f05e6fc62f39568c5166fc7'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The delimitation of constituencies was carried out by the:',
    'The Delimitation Commission, set up under Article 82, is chaired by a Supreme Court judge and its orders have the force of law.',
    'medium',
    'Standard Reference',
    null,
    '3426d719555be99d70ee973f58a5d3e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3426d719555be99d70ee973f58a5d3e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central Statistical Organisation'),
            ('B', 'Finance Commission'),
            ('C', 'Planning Commission'),
            ('D', 'Election Commission')
           ) as v(label, option_text)
 where q.question_hash = '3426d719555be99d70ee973f58a5d3e0'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The voting age in India was reduced from 21 to 18 years by which amendment?',
    'The 61st Amendment of 1989 reduced the voting age for elections to all local bodies, state assemblies and Parliament from 21 to 18 years.',
    'easy',
    'Standard Reference',
    null,
    '1427e6eec7c0875ecdefacc3aa7c76ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1427e6eec7c0875ecdefacc3aa7c76ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '52nd Amendment'),
            ('B', '61st Amendment'),
            ('C', '42nd Amendment'),
            ('D', '44th Amendment')
           ) as v(label, option_text)
 where q.question_hash = '1427e6eec7c0875ecdefacc3aa7c76ca'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The Model Code of Conduct for electioneering is enforced by:',
    'The Model Code of Conduct is enforced by the Election Commission and the state election commissions, with violations referred to them.',
    'hard',
    'Standard Reference',
    null,
    'c483e74b764711240fadc7916379cb66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c483e74b764711240fadc7916379cb66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Election Commission'),
            ('B', 'Supreme Court'),
            ('C', 'Election Commission and the states'),
            ('D', 'Central Bureau of Investigation')
           ) as v(label, option_text)
 where q.question_hash = 'c483e74b764711240fadc7916379cb66'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Comptroller and Auditor General of India is appointed under:',
    'Article 148 provides for an independent CAG appointed by the President, with the same removal procedure as a Supreme Court judge.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '8350aef695d2fe139d47fcb3fbe2c394'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8350aef695d2fe139d47fcb3fbe2c394'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 149'),
            ('B', 'Article 324'),
            ('C', 'Article 76'),
            ('D', 'Article 148')
           ) as v(label, option_text)
 where q.question_hash = '8350aef695d2fe139d47fcb3fbe2c394'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The CAG can audit:',
    'Under Article 149 the CAG audits the accounts of the Union and of the states, of any body or authority substantially financed from public revenues, and of bodies under the control of the government.',
    'hard',
    'Standard Reference',
    null,
    'd2f41ddc4970d5a19fff347f8c70ad98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd2f41ddc4970d5a19fff347f8c70ad98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The accounts of the Union and the states and of any body or authority financed substantially from Union or state revenues'),
            ('B', 'Only autonomous bodies'),
            ('C', 'Only the accounts of the Union government'),
            ('D', 'Only the accounts of states')
           ) as v(label, option_text)
 where q.question_hash = 'd2f41ddc4970d5a19fff347f8c70ad98'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Union Public Service Commission is provided for under:',
    'Article 315 provides for the constitution of the UPSC and the State Public Service Commissions, with Article 320 dealing with their functions.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'd2d0b3d3e81c64af92b3ea5948501f0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2d0b3d3e81c64af92b3ea5948501f0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 324'),
            ('B', 'Article 315'),
            ('C', 'Article 320'),
            ('D', 'Article 323')
           ) as v(label, option_text)
 where q.question_hash = 'd2d0b3d3e81c64af92b3ea5948501f0a'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The National Human Rights Commission is a:',
    'The NHRC is a statutory body set up under the Protection of Human Rights Act, 1993, chaired by a former CJI or a Supreme Court judge.',
    'medium',
    'Standard Reference',
    null,
    '42fc71b955518003f58f0f970671f210'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42fc71b955518003f58f0f970671f210'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial body'),
            ('B', 'Constitutional body'),
            ('C', 'Statutory body'),
            ('D', 'Executive body')
           ) as v(label, option_text)
 where q.question_hash = '42fc71b955518003f58f0f970671f210'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Right to Information Act in India was enacted in:',
    'The Right to Information Act, 2005 came into force on 21 October 2005 and gives every citizen the right to request information from public authorities.',
    'easy',
    'Standard Reference',
    null,
    '89c6b5aacf83d60ce663797998b0955f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '89c6b5aacf83d60ce663797998b0955f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '2006'),
            ('C', '2007'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = '89c6b5aacf83d60ce663797998b0955f'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Central Vigilance Commission is a:',
    'The CVC is a multi-member body under the executive control of the Department of Personnel and Public Grievances, headed by the Central Vigilance Commissioner.',
    'hard',
    'Standard Reference',
    null,
    'db46c1957ecca9ab880a97dce3f28d7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db46c1957ecca9ab880a97dce3f28d7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Independent body like the CAG'),
            ('B', 'Constitutional body'),
            ('C', 'Statutory body'),
            ('D', 'Multi-member body under executive control')
           ) as v(label, option_text)
 where q.question_hash = 'db46c1957ecca9ab880a97dce3f28d7f'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Lokpal was established under which Act?',
    'The Lokpal and Lokayuktas Act, 2013 gave statutory force to the Lokpal and the Lokayuktas, which had existed only as executive bodies.',
    'medium',
    'Standard Reference',
    null,
    'fd6694a7a2a430b09100c66c6156e792'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fd6694a7a2a430b09100c66c6156e792'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to Information Act, 2005'),
            ('B', 'Lokpal and Lokayuktas Act, 2013'),
            ('C', 'Prevention of Corruption Act, 1988'),
            ('D', 'Central Vigilance Commission Act, 2003')
           ) as v(label, option_text)
 where q.question_hash = 'fd6694a7a2a430b09100c66c6156e792'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Finance Commission is appointed by:',
    'Article 280 provides for a Finance Commission every fifth year or earlier if necessary, appointed by the President to recommend the distribution of net tax proceeds.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '44e599f43840640a7a95025587b39bd9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44e599f43840640a7a95025587b39bd9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Chief Justice of India'),
            ('C', 'The Parliament'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = '44e599f43840640a7a95025587b39bd9'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The National Green Tribunal was established under:',
    'The National Green Tribunal was established in 2010 under the Environment Protection Act, 1986, to deal with environmental disputes.',
    'hard',
    'Standard Reference',
    null,
    'd73337c4632cadac5f6502e34af442d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd73337c4632cadac5f6502e34af442d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Water Act, 1974'),
            ('B', 'Air Act, 1981'),
            ('C', 'Environment Protection Act, 1986'),
            ('D', 'Forest Conservation Act, 1980')
           ) as v(label, option_text)
 where q.question_hash = 'd73337c4632cadac5f6502e34af442d2'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The NCBC (National Commission for Backward Classes) was set up by an Act of:',
    'The National Commission for Backward Classes Act, 1993 gave statutory status to the NCBC, which had been set up by an executive resolution in 1993.',
    'hard',
    'Standard Reference',
    null,
    '09d9b7c9eea405b7c73334cc2185871e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '09d9b7c9eea405b7c73334cc2185871e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2008'),
            ('B', '1993'),
            ('C', '2000'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = '09d9b7c9eea405b7c73334cc2185871e'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Central Information Commission is a:',
    'The Central Information Commission is a statutory body under the RTI Act, 2005, with a Chief Information Commissioner and Information Commissioners.',
    'medium',
    'Standard Reference',
    null,
    'c8f760769e95baaa7f91a843d5ccf5f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8f760769e95baaa7f91a843d5ccf5f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Statutory body'),
            ('B', 'Executive body'),
            ('C', 'Judicial body'),
            ('D', 'Constitutional body')
           ) as v(label, option_text)
 where q.question_hash = 'c8f760769e95baaa7f91a843d5ccf5f8'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The 86th Amendment Act of 2002 added which provision to the Constitution?',
    'The 86th Amendment inserted Article 21A, making free and compulsory education a fundamental right for children aged six to fourteen years.',
    'medium',
    'Standard Reference',
    null,
    '8ab13e05cd57a6773e27bec9075135e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8ab13e05cd57a6773e27bec9075135e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 19A on the right to information'),
            ('B', 'Article 21 on the right to privacy'),
            ('C', 'Article 44 on a uniform civil code'),
            ('D', 'Article 21A on free and compulsory education')
           ) as v(label, option_text)
 where q.question_hash = '8ab13e05cd57a6773e27bec9075135e4'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The power to amend the Constitution of India is vested in:',
    'Article 368 vests the constituent power in Parliament, subject to the basic structure doctrine and the procedure laid down in the article.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '876071f0ef13f5412f19f2f0176bde29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '876071f0ef13f5412f19f2f0176bde29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parliament'),
            ('B', 'The Supreme Court'),
            ('C', 'The Prime Minister'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = '876071f0ef13f5412f19f2f0176bde29'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'An amendment of the Constitution requires:',
    'An amendment requires a special majority in each house, and for federal provisions ratification by the legislatures of half the states by a simple majority.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'd4cd2907a8e7f5e2a7a8084480c3164a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4cd2907a8e7f5e2a7a8084480c3164a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Presidential assent only'),
            ('B', 'A simple majority of Parliament'),
            ('C', 'A special majority in each house and ratification by half the states'),
            ('D', 'A two-thirds majority in each house')
           ) as v(label, option_text)
 where q.question_hash = 'd4cd2907a8e7f5e2a7a8084480c3164a'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 44th Amendment Act of 1978:',
    'The 44th Amendment restored the original Preamble provisions, made the written emergency more difficult, restored the Lok Sabha''s five-year term and removed the right to property from Part III.',
    'medium',
    'Standard Reference',
    null,
    '1cf3e040d999411224543dd49adc9fa9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cf3e040d999411224543dd49adc9fa9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Added the right to property to the Fundamental Rights'),
            ('B', 'Restored the original provisions on the Preamble and the duration of emergency'),
            ('C', 'Reduced the term of the Lok Sabha'),
            ('D', 'Introduced the Right to Information')
           ) as v(label, option_text)
 where q.question_hash = '1cf3e040d999411224543dd49adc9fa9'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 1st Amendment Act of 1951:',
    'The First Amendment added the Ninth Schedule, laid down the definition of ''State'' in Article 12 and provided for reasonable restrictions on the freedom of trade.',
    'medium',
    'Standard Reference',
    null,
    '5d6cd41a0002c9086b795894b6e7b32b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d6cd41a0002c9086b795894b6e7b32b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Added the Ninth Schedule'),
            ('B', 'Added the 11th Schedule'),
            ('C', 'Created the GST Council'),
            ('D', 'Gave constitutional status to the Right to Education')
           ) as v(label, option_text)
 where q.question_hash = '5d6cd41a0002c9086b795894b6e7b32b'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 73rd and 74th Amendments relate to:',
    'The 73rd and 74th Amendment Acts of 1992 constitutionalised the three-tier Panchayati Raj system and the urban local bodies.',
    'easy',
    'Standard Reference',
    null,
    '19c0dbb237da94f73b5557b4c0450b84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19c0dbb237da94f73b5557b4c0450b84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation for women'),
            ('B', 'Right to education'),
            ('C', 'Land reforms'),
            ('D', 'Panchayati Raj institutions and municipalities')
           ) as v(label, option_text)
 where q.question_hash = '19c0dbb237da94f73b5557b4c0450b84'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 101st Amendment Act relates to:',
    'The 101st Amendment of 2016 created the National Judicial Appointments Commission and the Article 359A was inserted to enable it.',
    'medium',
    'Standard Reference',
    null,
    '0c406d34b8da1509f31ef68d7dfd47b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0c406d34b8da1509f31ef68d7dfd47b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goods and Services Tax'),
            ('B', 'National Commission for Women'),
            ('C', 'National Judicial Appointments Commission'),
            ('D', 'National Commission for Backward Classes')
           ) as v(label, option_text)
 where q.question_hash = '0c406d34b8da1509f31ef68d7dfd47b1'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 103rd Amendment Act provided for:',
    'The 103rd Amendment of 2019 provided for a 10 per cent reservation for the economically weaker sections in addition to the existing 49.5 per cent reservation.',
    'medium',
    'Standard Reference',
    null,
    '074b303d477ed4d6f1a195c043d5b65a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '074b303d477ed4d6f1a195c043d5b65a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Extension of reservation for Anglo-Indians'),
            ('B', '10 per cent reservation for the EWS category'),
            ('C', 'Reservation for women in legislatures'),
            ('D', 'Right to Information')
           ) as v(label, option_text)
 where q.question_hash = '074b303d477ed4d6f1a195c043d5b65a'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 42nd Amendment was enacted during the period of:',
    'The 42nd Amendment was enacted by the Indira Gandhi government during the Emergency of 1975-1977 and is called the ''Mini-Constitution''.',
    'medium',
    'Standard Reference',
    null,
    'fc9eee286c8b3745a4f49977f4e25739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc9eee286c8b3745a4f49977f4e25739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Emergency of 1975-1977'),
            ('B', 'The Emergency of 1971'),
            ('C', 'The coalition of Janata Party'),
            ('D', 'The aftermath of the 1975 general election')
           ) as v(label, option_text)
 where q.question_hash = 'fc9eee286c8b3745a4f49977f4e25739'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'How many fundamental rights were originally available under the Constitution?',
    'The Constitution originally provided seven fundamental rights, which were reduced to six by the 44th Amendment when the right to property was removed.',
    'medium',
    'Standard Reference',
    null,
    'e4154df98fa9a6e00804bc2126e06737'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e4154df98fa9a6e00804bc2126e06737'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Six'),
            ('B', 'Nine'),
            ('C', 'Seven'),
            ('D', 'Eight')
           ) as v(label, option_text)
 where q.question_hash = 'e4154df98fa9a6e00804bc2126e06737'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The Panchayati Raj system in India is based on which report?',
    'The Balwant Rai Mehta Committee (1957) recommended a three-tier Panchayati Raj system, which the Kothari Commission (1985) later evaluated.',
    'medium',
    'Standard Reference',
    null,
    'd2664e35e620a6b4ff5811d3edfc80a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd2664e35e620a6b4ff5811d3edfc80a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarkar Commission'),
            ('B', 'Ashok Mehta Committee'),
            ('C', 'Balwant Rai Mehta Committee'),
            ('D', 'Kothari Commission')
           ) as v(label, option_text)
 where q.question_hash = 'd2664e35e620a6b4ff5811d3edfc80a6'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The Gram Sabha consists of:',
    'The Gram Sabha is a body consisting of all persons registered in the electoral rolls relating to a village comprised within the Panchayat area.',
    'hard',
    'Standard Reference',
    null,
    '953d83dd9d4c30ebae671687814b578b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '953d83dd9d4c30ebae671687814b578b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Elected members of the Gram Panchayat'),
            ('B', 'All registered voters of the village within the Gram Panchayat area'),
            ('C', 'Nominated members of the district administration'),
            ('D', 'Panchayat members and the sarpanch only')
           ) as v(label, option_text)
 where q.question_hash = '953d83dd9d4c30ebae671687814b578b'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Under the 73rd Amendment, what proportion of seats is reserved for women in Panchayats?',
    'Not less than one-third of the total seats and of the offices of chairpersons in Panchayats at every level are reserved for women.',
    'easy',
    'Standard Reference',
    null,
    'e95aba72fe3af18487c8755a83a5bef6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e95aba72fe3af18487c8755a83a5bef6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'One-third'),
            ('B', 'One-half'),
            ('C', 'One-fourth'),
            ('D', 'Two-thirds')
           ) as v(label, option_text)
 where q.question_hash = 'e95aba72fe3af18487c8755a83a5bef6'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The State Election Commission is provided for under:',
    'Article 243K provides for a State Election Commission to conduct elections to Panchayats and municipalities.',
    'medium',
    'Standard Reference',
    null,
    '9b4015eb48d66eb02e20b5cc709ad662'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9b4015eb48d66eb02e20b5cc709ad662'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 243D'),
            ('B', 'Article 243G'),
            ('C', 'Article 280'),
            ('D', 'Article 243K')
           ) as v(label, option_text)
 where q.question_hash = '9b4015eb48d66eb02e20b5cc709ad662'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The Finance Commission is required to recommend the devolution of tax revenues to:',
    'Article 280 requires the Finance Commission to recommend the distribution of net tax proceeds between the Union, the states and the local bodies.',
    'medium',
    'Standard Reference',
    null,
    'b51f5170db21712679675f2c76d6583e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b51f5170db21712679675f2c76d6583e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Centre and the states'),
            ('B', 'Only the rural local bodies'),
            ('C', 'The states and local bodies'),
            ('D', 'Only the urban local bodies')
           ) as v(label, option_text)
 where q.question_hash = 'b51f5170db21712679675f2c76d6583e'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The 74th Amendment Act of 1992 deals with:',
    'The 74th Amendment deals with urban local bodies, while the 73rd deals with rural local bodies.',
    'easy',
    'Standard Reference',
    null,
    '0a6808e0443b75074d3c40bde7e7e5db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0a6808e0443b75074d3c40bde7e7e5db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Panchayats'),
            ('B', 'Municipalities'),
            ('C', 'Both panchayats and municipalities'),
            ('D', 'Urban development authorities')
           ) as v(label, option_text)
 where q.question_hash = '0a6808e0443b75074d3c40bde7e7e5db'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Panchayati Raj institutions are a:',
    'After the 73rd and 74th Amendments, Panchayats and municipalities are constitutional bodies, with the three tiers in Part IX and Part IXA of the Constitution.',
    'medium',
    'Standard Reference',
    null,
    '5f313941fd65d11ab3b9835adcfdb045'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f313941fd65d11ab3b9835adcfdb045'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Statutory bodies'),
            ('B', 'Executive bodies'),
            ('C', 'Judicial bodies'),
            ('D', 'Constitutional bodies')
           ) as v(label, option_text)
 where q.question_hash = '5f313941fd65d11ab3b9835adcfdb045'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The District Planning Committee is provided for under:',
    'Article 243ZD provides for a District Planning Committee in each district to consolidate the plans of Panchayats and municipalities.',
    'hard',
    'Standard Reference',
    null,
    'ed486843e47e2fca3596fcfa0eb22207'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ed486843e47e2fca3596fcfa0eb22207'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 243ZG'),
            ('B', 'Article 243ZD'),
            ('C', 'Article 243ZJ'),
            ('D', 'Article 243ZE')
           ) as v(label, option_text)
 where q.question_hash = 'ed486843e47e2fca3596fcfa0eb22207'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which Article of the Constitution deals with the placement of the armed forces and the responsibility of the Union to ensure their integrity?',
    'Article 250 provides for the Union to protect the states from internal disturbance and to ensure that the integrity and sovereignty of India is respected.',
    'medium',
    'Standard Reference',
    null,
    '6ad71fcca587b1875db68b8c20273eb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6ad71fcca587b1875db68b8c20273eb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 262'),
            ('B', 'Article 245'),
            ('C', 'Article 250'),
            ('D', 'Article 253')
           ) as v(label, option_text)
 where q.question_hash = '6ad71fcca587b1875db68b8c20273eb7'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Article 262 of the Constitution provides for:',
    'Article 262 provides for the adjudication of any dispute relating to the waters of any interstate river or river valley, and for the creation of tribunals for that purpose.',
    'medium',
    'Standard Reference',
    null,
    'f3858cd0aaf5e21a0888fff1b6325394'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3858cd0aaf5e21a0888fff1b6325394'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inter-state water disputes'),
            ('B', 'International treaties'),
            ('C', 'Residuary powers'),
            ('D', 'The list of concurrent subjects')
           ) as v(label, option_text)
 where q.question_hash = 'f3858cd0aaf5e21a0888fff1b6325394'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The International Court of Justice is the principal judicial organ of:',
    'The International Court of Justice, established in 1946, is the principal judicial organ of the United Nations and has fifteen judges elected by the General Assembly and the Security Council.',
    'easy',
    'Standard Reference',
    null,
    '5a16136c542b636da34ca3f50058d224'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a16136c542b636da34ca3f50058d224'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The WTO'),
            ('B', 'The United Nations'),
            ('C', 'The League of Nations'),
            ('D', 'The Hague Conference')
           ) as v(label, option_text)
 where q.question_hash = '5a16136c542b636da34ca3f50058d224'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The headquarters of the World Trade Organization is at:',
    'The WTO is headquartered in Geneva, while the UN is in New York and the ILO and WIPO among others are also in Geneva.',
    'easy',
    'Standard Reference',
    null,
    '9ed3ffd76cd3c6c6a890a6f5dabc6d90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9ed3ffd76cd3c6c6a890a6f5dabc6d90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Paris'),
            ('B', 'Vienna'),
            ('C', 'New York'),
            ('D', 'Geneva')
           ) as v(label, option_text)
 where q.question_hash = '9ed3ffd76cd3c6c6a890a6f5dabc6d90'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Bretton Woods institutions are:',
    'The Bretton Woods conference of 1944 created the International Monetary Fund and the International Bank for Reconstruction and Development, later the World Bank.',
    'medium',
    'Standard Reference',
    null,
    'b63970563d93fe9c9585460543112a76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b63970563d93fe9c9585460543112a76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'IMF and UNCTAD'),
            ('B', 'ADB and IMF'),
            ('C', 'IMF and World Bank'),
            ('D', 'World Bank and WTO')
           ) as v(label, option_text)
 where q.question_hash = 'b63970563d93fe9c9585460543112a76'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The International Monetary Fund''s quota for India is decided by:',
    'IMF quotas are determined by the Board of Governors on the basis of a formula reflecting a country''s output, trade and international reserves, and the Indian quota is the eighth largest.',
    'hard',
    'Standard Reference',
    null,
    '063f7008f2fbf0a69cff8dbef7583771'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '063f7008f2fbf0a69cff8dbef7583771'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IMF Board of Governors'),
            ('B', 'The World Bank'),
            ('C', 'The G20'),
            ('D', 'The UN General Assembly')
           ) as v(label, option_text)
 where q.question_hash = '063f7008f2fbf0a69cff8dbef7583771'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'SAARC was founded in:',
    'The South Asian Association for Regional Cooperation was founded in Dhaka in 1985 with the charter signed by seven South Asian states.',
    'easy',
    'Standard Reference',
    null,
    'e221dec7d5edd5cb546bf8560b20b3fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e221dec7d5edd5cb546bf8560b20b3fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1995'),
            ('B', '1980'),
            ('C', '1985'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = 'e221dec7d5edd5cb546bf8560b20b3fc'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'BRICS was originally named:',
    'BRIC, the grouping of Brazil, Russia, India and China, was first used by Jim O''Neill in 2001; South Africa joined in 2010, making it BRICS.',
    'easy',
    'Standard Reference',
    null,
    '2c60a335de7d658dffc8380bb30fd11a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c60a335de7d658dffc8380bb30fd11a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'BRIC'),
            ('B', 'BRICS-2'),
            ('C', 'IBSA'),
            ('D', 'IBRD')
           ) as v(label, option_text)
 where q.question_hash = '2c60a335de7d658dffc8380bb30fd11a'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Indian Council of World Affairs is:',
    'The Indian Council of World Affairs, India''s oldest international affairs think tank, was founded in 1927 under the leadership of Lala Lajpat Rai and V.O. Chidambaram.',
    'hard',
    'Standard Reference',
    null,
    '0102e4a01239c0013156239121a8c902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0102e4a01239c0013156239121a8c902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A government body'),
            ('B', 'A UN agency'),
            ('C', 'A trade union federation'),
            ('D', 'A think tank founded in 1927')
           ) as v(label, option_text)
 where q.question_hash = '0102e4a01239c0013156239121a8c902'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'India''s ''GuLook'' doctrine of non-alignment is associated with:',
    'Nehru''s Panchsheel and the policy of non-alignment, described by the ''GuLook'' of K. Natwar Singh, defined India''s foreign policy of independence from the Cold War blocs.',
    'medium',
    'Standard Reference',
    null,
    '7acf8b4f923ec27031235acaa815683d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7acf8b4f923ec27031235acaa815683d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. Jaishankar'),
            ('B', 'Nehru'),
            ('C', 'Gandhi'),
            ('D', 'V.K. Krishna Menon')
           ) as v(label, option_text)
 where q.question_hash = '7acf8b4f923ec27031235acaa815683d'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Panchsheel principles of peaceful coexistence were first proposed between India and:',
    'The Panchsheel was first incorporated in the Agreement on Trade and Intercourse between Tibet Region of China and India signed in April 1954.',
    'medium',
    'Standard Reference',
    null,
    'f0ad3d342f98585069c3ba908965d050'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f0ad3d342f98585069c3ba908965d050'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Burma in 1950'),
            ('B', 'Sri Lanka in 1957'),
            ('C', 'China in 1954'),
            ('D', 'Nepal in 1950')
           ) as v(label, option_text)
 where q.question_hash = 'f0ad3d342f98585069c3ba908965d050'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which Article of the Constitution empowers Parliament to legislate to give effect to international treaties?',
    'Article 253 empowers Parliament to make laws to carry out the obligations of India under international treaties and agreements.',
    'medium',
    'Standard Reference',
    null,
    '7125ef48035676902621c498abc755b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7125ef48035676902621c498abc755b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 268'),
            ('B', 'Article 253'),
            ('C', 'Article 254'),
            ('D', 'Article 261')
           ) as v(label, option_text)
 where q.question_hash = '7125ef48035676902621c498abc755b6'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Indian Diaspora'' day is observed on:',
    'Pravasi Bharatiya Divas is observed on 1 January, commemorating the departure of Mahatma Gandhi to South Africa in 1915.',
    'easy',
    'Standard Reference',
    null,
    '10c8be4226227db139d76e0faf1e1b51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '10c8be4226227db139d76e0faf1e1b51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'January 2'),
            ('B', 'January 3'),
            ('C', 'December 25'),
            ('D', 'January 1')
           ) as v(label, option_text)
 where q.question_hash = '10c8be4226227db139d76e0faf1e1b51'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Shanghai Five, which later became the Shanghai Cooperation Organisation, was founded in:',
    'The Shanghai Five, comprising China, Kazakhstan, Kyrgyzstan, Russia and Tajikistan, was formed in 1996 and became the SCO in 2001.',
    'hard',
    'Standard Reference',
    null,
    'ce53dde3f793c394893014679367dfc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce53dde3f793c394893014679367dfc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1996'),
            ('B', '2001'),
            ('C', '2005'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = 'ce53dde3f793c394893014679367dfc7'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which international organisation promotes South-South cooperation and is headquartered in New Delhi?',
    'The United Nations Development Programme is headquartered in New York, while UNEP is in Nairobi, UNESCO in Paris and the UNFCCC secretariat in Bonn.',
    'medium',
    'Standard Reference',
    null,
    '266d1b899e70d385fa0a3ae2fc7cbbe2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '266d1b899e70d385fa0a3ae2fc7cbbe2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'UNFCCC'),
            ('B', 'UNEP'),
            ('C', 'UNDP'),
            ('D', 'UNESCO')
           ) as v(label, option_text)
 where q.question_hash = '266d1b899e70d385fa0a3ae2fc7cbbe2'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The headquarters of the World Health Organization is at:',
    'The WHO, established in 1948, has its headquarters in Geneva, Switzerland.',
    'easy',
    'Standard Reference',
    null,
    '7f994f1044fd15de887259e303c1318c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7f994f1044fd15de887259e303c1318c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New York'),
            ('B', 'Rome'),
            ('C', 'Vienna'),
            ('D', 'Geneva')
           ) as v(label, option_text)
 where q.question_hash = '7f994f1044fd15de887259e303c1318c'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Open Skies'' and aviation agreements of India relate to:',
    'India has signed bilateral air services agreements under the open skies policy with a large number of countries to expand international air connectivity.',
    'medium',
    'Standard Reference',
    null,
    'a51792b5fe1864ccfffbedd8b7515ef2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a51792b5fe1864ccfffbedd8b7515ef2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nuclear trade'),
            ('B', 'International air transport'),
            ('C', 'Maritime shipping'),
            ('D', 'Satellite communication')
           ) as v(label, option_text)
 where q.question_hash = 'a51792b5fe1864ccfffbedd8b7515ef2'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Asian Infrastructure Investment Bank is headquartered in:',
    'The AIIB, which began operations in January 2016, has its headquarters in Shanghai with India as a founding member and a significant shareholder.',
    'medium',
    'Standard Reference',
    null,
    '7f754487e98806696e825c1ab1d7fbfa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7f754487e98806696e825c1ab1d7fbfa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shanghai'),
            ('B', 'Beijing'),
            ('C', 'Singapore'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '7f754487e98806696e825c1ab1d7fbfa'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Treaty of Waitangi'' is associated with:',
    'The Treaty of Waitangi was signed in 1840 between the British Crown and Maori chiefs and is the founding document of New Zealand.',
    'easy',
    'Standard Reference',
    null,
    'db86f40f98033acac0b25d096de7d7a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'db86f40f98033acac0b25d096de7d7a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fiji'),
            ('B', 'Canada'),
            ('C', 'New Zealand'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = 'db86f40f98033acac0b25d096de7d7a0'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following is the headquarters of the International Labour Organization?',
    'The ILO, a specialised agency of the UN, has its headquarters in Geneva; its first conference was held in Washington in 1919 and it shifted to Geneva in 1920.',
    'medium',
    'Standard Reference',
    null,
    'a85361d39c7fd34f66f59a28cf5aab0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a85361d39c7fd34f66f59a28cf5aab0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New York'),
            ('B', 'Rome'),
            ('C', 'Paris'),
            ('D', 'Geneva')
           ) as v(label, option_text)
 where q.question_hash = 'a85361d39c7fd34f66f59a28cf5aab0d'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The headquarters of the International Organisation for Migration is at:',
    'The IOM, established in 1951, is an intergovernmental organisation with its headquarters in Geneva.',
    'medium',
    'Standard Reference',
    null,
    '8fe765da2a538408b35cd3156fc12918'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8fe765da2a538408b35cd3156fc12918'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva'),
            ('B', 'Vienna'),
            ('C', 'Rome'),
            ('D', 'Brussels')
           ) as v(label, option_text)
 where q.question_hash = '8fe765da2a538408b35cd3156fc12918'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which convention governs the prevention and punishment of the crime of genocide?',
    'The Genocide Convention was adopted in 1948 and entered into force in 1951; India acceded to it in 1950.',
    'hard',
    'Standard Reference',
    null,
    '2dc62a3b7e8e83ee23a9720e1e763bb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2dc62a3b7e8e83ee23a9720e1e763bb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Vienna Convention, 1961'),
            ('B', 'The Genocide Convention, 1948'),
            ('C', 'The Hague Convention, 1907'),
            ('D', 'The Refugee Convention, 1951')
           ) as v(label, option_text)
 where q.question_hash = '2dc62a3b7e8e83ee23a9720e1e763bb1'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Sagarmala'' project aims to:',
    'The Sagarmala programme seeks to accelerate port-led development by modernising ports, strengthening port connectivity through rail, road and inland waterways and promoting port-led industrialisation.',
    'medium',
    'Standard Reference',
    null,
    'b85898b727e37842669cbc789b609d72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b85898b727e37842669cbc789b609d72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promote inland waterways only'),
            ('B', 'Modernise the railways'),
            ('C', 'Develop port-led logistics'),
            ('D', 'Build a coastal highway')
           ) as v(label, option_text)
 where q.question_hash = 'b85898b727e37842669cbc789b609d72'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'India and which country signed the ''Declaration on the India-Pacific Oceans Initiative'' in 2016?',
    'The India-Pacific Oceans Initiative was announced by India and the United States in 2016, followed by the first India-Pacific Oceans Dialogue in 2017.',
    'hard',
    'Standard Reference',
    null,
    '53f5f89eec2b2df3fc8868555d591492'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '53f5f89eec2b2df3fc8868555d591492'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'France'),
            ('B', 'United States'),
            ('C', 'Japan'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = '53f5f89eec2b2df3fc8868555d591492'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The India-Brazil-South Africa (IBSA) Dialogue Forum was founded in:',
    'The IBSA Dialogue Forum was established in 1997 as a trilateral grouping of India, Brazil and South Africa.',
    'medium',
    'Standard Reference',
    null,
    'f51bfd0634431f8368eb8106fe47e87a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f51bfd0634431f8368eb8106fe47e87a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1997'),
            ('B', '2003'),
            ('C', '1992'),
            ('D', '1995')
           ) as v(label, option_text)
 where q.question_hash = 'f51bfd0634431f8368eb8106fe47e87a'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The QUAD grouping comprises India, the United States, Japan and:',
    'The Quadrilateral Security Dialogue, revived in 2017, comprises India, the United States, Japan and Australia.',
    'easy',
    'Standard Reference',
    null,
    'fa900e5d31c758ac665a5f7b4d3364ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fa900e5d31c758ac665a5f7b4d3364ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'South Korea'),
            ('B', 'United Kingdom'),
            ('C', 'France'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = 'fa900e5d31c758ac665a5f7b4d3364ff'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution of India came into force on:',
    'The Constitution was enacted on 26 November 1949 and came into force on 26 January 1950, celebrated as Republic Day.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '090313c682023638e866765f4012ad03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '090313c682023638e866765f4012ad03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26 January 1950'),
            ('B', '15 August 1950'),
            ('C', '15 August 1947'),
            ('D', '26 November 1949')
           ) as v(label, option_text)
 where q.question_hash = '090313c682023638e866765f4012ad03'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Who was the Vice-President of the Constituent Assembly when it framed the Constitution?',
    'H.C. Mukherjee was the Vice-President of the Constituent Assembly, and B.N. Rau was its Constitutional Adviser.',
    'medium',
    'Standard Reference',
    null,
    '9c2e77f0342f6a99fe327edf1e9ec725'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9c2e77f0342f6a99fe327edf1e9ec725'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. N. Mukherjee'),
            ('B', 'Sir B. P. Sinha'),
            ('C', 'H.C. Mukherjee'),
            ('D', 'B. N. Rau')
           ) as v(label, option_text)
 where q.question_hash = '9c2e77f0342f6a99fe327edf1e9ec725'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Union Powers Committee'', ''Union Constitution Committee'' and ''States Committee'' were part of the Constituent Assembly''s:',
    'In addition to the eight major committees, the Constituent Assembly had twenty-two minor committees, including these three.',
    'hard',
    'Standard Reference',
    null,
    'dde5470b632dcb0dba8fd1ea9522596a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dde5470b632dcb0dba8fd1ea9522596a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Drafting Committee'),
            ('B', 'Eight minor committees'),
            ('C', 'Six major committees'),
            ('D', 'Cabinet Mission')
           ) as v(label, option_text)
 where q.question_hash = 'dde5470b632dcb0dba8fd1ea9522596a'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Who presided over the Sessions of the Constituent Assembly as its permanent President?',
    'Dr. Rajendra Prasad was the permanent President of the Constituent Assembly, having been temporary president for a time.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '2c441bcd4207e568675927a5bfe20a99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c441bcd4207e568675927a5bfe20a99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jawaharlal Nehru'),
            ('B', 'B.N. Rau'),
            ('C', 'Dr. Sachchidananda Sinha'),
            ('D', 'Dr. Rajendra Prasad')
           ) as v(label, option_text)
 where q.question_hash = '2c441bcd4207e568675927a5bfe20a99'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constituent Assembly first met on:',
    'The Constituent Assembly held its first meeting on 9 December 1946 in the Constitution Hall of the Parliament House.',
    'easy',
    'Standard Reference',
    null,
    'd6496ff913984969c17531a944405a48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6496ff913984969c17531a944405a48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26 January 1950'),
            ('B', '9 December 1946'),
            ('C', '26 November 1949'),
            ('D', '15 August 1947')
           ) as v(label, option_text)
 where q.question_hash = 'd6496ff913984969c17531a944405a48'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution of India borrowed the idea of a ''Concurrent List'' and ''Freedom of trade'' from:',
    'The concurrent list and the freedom of trade, commerce and intercourse were borrowed from the Irish Constitution.',
    'medium',
    'Standard Reference',
    null,
    '5ce3f1edade675a0ce130fb683ba0a0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ce3f1edade675a0ce130fb683ba0a0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Irish Constitution'),
            ('B', 'The Canadian Constitution'),
            ('C', 'The Australian Constitution'),
            ('D', 'The US Constitution')
           ) as v(label, option_text)
 where q.question_hash = '5ce3f1edade675a0ce130fb683ba0a0e'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The procedure of election to the office of the President of India was borrowed from:',
    'The method of electing the President through an electoral college, with the electorates of states and union territories represented, was borrowed from the Irish Constitution.',
    'hard',
    'Standard Reference',
    null,
    'd093732e8d9880dd2ec536e58a557051'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd093732e8d9880dd2ec536e58a557051'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Australia'),
            ('B', 'United States'),
            ('C', 'Ireland'),
            ('D', 'Canada')
           ) as v(label, option_text)
 where q.question_hash = 'd093732e8d9880dd2ec536e58a557051'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The office of the Governor and the appointment of the Council of Ministers were borrowed from:',
    'The system of a Governor exercising powers on the advice of a Council of Ministers responsible to the legislature was borrowed from the Government of India Act, 1935.',
    'hard',
    'Standard Reference',
    null,
    '35613d853aa294c9edb8be5248b25e30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35613d853aa294c9edb8be5248b25e30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Irish Constitution'),
            ('B', 'The US Constitution'),
            ('C', 'The Canadian Constitution'),
            ('D', 'The Government of India Act, 1935')
           ) as v(label, option_text)
 where q.question_hash = '35613d853aa294c9edb8be5248b25e30'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Emergency provisions of the Constitution were inspired by the:',
    'The extraordinary emergency provisions of the Constitution were borrowed from the Government of India Act, 1935.',
    'hard',
    'Standard Reference',
    null,
    '5c1b2a697496f67af7e3475e00d0c587'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c1b2a697496f67af7e3475e00d0c587'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'US Constitution'),
            ('B', 'Irish Constitution'),
            ('C', 'Government of India Act, 1935'),
            ('D', 'Canadian Constitution')
           ) as v(label, option_text)
 where q.question_hash = '5c1b2a697496f67af7e3475e00d0c587'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Preamble'' of the Constitution was amended by which amendment to include the words ''socialist'' and ''secular''?',
    'The 42nd Amendment of 1976 added the words socialist and secular to the Preamble, and the 44th Amendment of 1978 restored the original position of the Preamble.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'ff2b248426bdc3469a347461450b0346'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ff2b248426bdc3469a347461450b0346'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '43rd'),
            ('B', '44th'),
            ('C', '41st'),
            ('D', '42nd')
           ) as v(label, option_text)
 where q.question_hash = 'ff2b248426bdc3469a347461450b0346'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The Preamble is not a part of the Constitution:',
    'The Preamble is not a part of the Constitution, but is a key to its interpretation, and the Supreme Court has held that it can be amended under Article 368.',
    'medium',
    'Standard Reference',
    null,
    '7040f909c8bbb95d53db42ac2907b61e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7040f909c8bbb95d53db42ac2907b61e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'True'),
            ('B', 'False'),
            ('C', 'Only after the 42nd Amendment'),
            ('D', 'Only after 1978')
           ) as v(label, option_text)
 where q.question_hash = '7040f909c8bbb95d53db42ac2907b61e'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The terms ''Sovereign'', ''Socialist'', ''Secular'', ''Democratic'' and ''Republic'' in the Preamble were inserted by:',
    'All these terms were added to the Preamble by the 42nd Amendment of 1976.',
    'medium',
    'Standard Reference',
    null,
    'f3a4a54a12f8186d82a03cd14ae7071b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3a4a54a12f8186d82a03cd14ae7071b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '7th Amendment'),
            ('B', '42nd Amendment'),
            ('C', '44th Amendment'),
            ('D', '52nd Amendment')
           ) as v(label, option_text)
 where q.question_hash = 'f3a4a54a12f8186d82a03cd14ae7071b'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'Article 1 of the Constitution describes India as:',
    'Article 1(1) declares that India, that is Bharat, shall be a Union of States, and the 29th Schedule lists the states and union territories.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'c677e3fcb0ae6bb3565c09b619b3eae8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c677e3fcb0ae6bb3565c09b619b3eae8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A democratic republic'),
            ('B', 'A sovereign state'),
            ('C', 'A Union of States'),
            ('D', 'A federal state')
           ) as v(label, option_text)
 where q.question_hash = 'c677e3fcb0ae6bb3565c09b619b3eae8'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'Which Article of the Constitution deals with citizenship?',
    'Articles 5 to 11 in Part II deal with the right to Indian citizenship, supplemented by the Citizenship Act, 1955.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '0c74da9ceb6e02b6d8acc7b6a72a22ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c74da9ceb6e02b6d8acc7b6a72a22ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 12 to 35'),
            ('B', 'Article 51 to 54'),
            ('C', 'Article 1 to 4'),
            ('D', 'Article 5 to 11')
           ) as v(label, option_text)
 where q.question_hash = '0c74da9ceb6e02b6d8acc7b6a72a22ca'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'Under the Citizenship Act, 1955, a person of Indian origin who migrated to a specific country can be a citizen of India:',
    'A person of Indian origin who has been resident in Fiji for at least five years may be registered as a citizen of India under the relevant provisions of the Citizenship Act.',
    'hard',
    'Standard Reference',
    null,
    '1875e01a699f28a85fc7b0203d2f6742'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1875e01a699f28a85fc7b0203d2f6742'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nepal'),
            ('B', 'Fiji'),
            ('C', 'Canada'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = '1875e01a699f28a85fc7b0203d2f6742'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Certificate of Naturalisation'' and ''Certificate of Citizenship'' under the Citizenship Act, 1955 are issued by:',
    'Both the Certificate of Naturalisation and the Certificate of Citizenship are issued by the President under the Citizenship Act, 1955.',
    'medium',
    'Standard Reference',
    null,
    '1c5b42dca4ff9452d3e89d5261053373'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c5b42dca4ff9452d3e89d5261053373'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Home Minister'),
            ('C', 'The Prime Minister'),
            ('D', 'The Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '1c5b42dca4ff9452d3e89d5261053373'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 15 of the Constitution prohibits:',
    'Article 15(1) prohibits discrimination on grounds of religion, race, caste, sex or place of birth, while Article 17 abolishes untouchability.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '3a084d3d1eb70186ddfa7e7fcdae1a93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3a084d3d1eb70186ddfa7e7fcdae1a93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Expropriation'),
            ('B', 'Double jeopardy'),
            ('C', 'Untouchability'),
            ('D', 'Discrimination on grounds of religion')
           ) as v(label, option_text)
 where q.question_hash = '3a084d3d1eb70186ddfa7e7fcdae1a93'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 17 of the Constitution abolishes:',
    'Article 17 abolishes untouchability and forbids its practice in any form, making the enforcement of any disability on grounds of untouchability a punishable offence.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'c70a90e80b28abbe2ba11a37fec97f51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c70a90e80b28abbe2ba11a37fec97f51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Feudalism'),
            ('B', 'Untouchability'),
            ('C', 'Slavery'),
            ('D', 'Child labour')
           ) as v(label, option_text)
 where q.question_hash = 'c70a90e80b28abbe2ba11a37fec97f51'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 23 of the Constitution:',
    'Article 23 prohibits the traffic in human beings and begar and forced labour, and the exemption of manual scavenging from its ambit came with the 103rd Amendment.',
    'medium',
    'Standard Reference',
    null,
    '9f5d7a40294877bc84adac56163e2066'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9f5d7a40294877bc84adac56163e2066'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prohibits traffic in human beings and forced labour'),
            ('B', 'Prohibits the right to vote'),
            ('C', 'Guarantees the right to constitutional remedies'),
            ('D', 'Deals with the abolition of slavery')
           ) as v(label, option_text)
 where q.question_hash = '9f5d7a40294877bc84adac56163e2066'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 24 of the Constitution:',
    'Article 24 prohibits the employment of children below the age of 14 years in any factory, mine or other hazardous activity.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '66d4809bb8dc004aad59287b94be1e84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '66d4809bb8dc004aad59287b94be1e84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guarantees the right to free education'),
            ('B', 'Abolishes untouchability'),
            ('C', 'Prohibits forced labour'),
            ('D', 'Protects children below 14 years from being employed in factories')
           ) as v(label, option_text)
 where q.question_hash = '66d4809bb8dc004aad59287b94be1e84'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 25 of the Constitution guarantees:',
    'Articles 25 to 28 guarantee the right to freedom of religion, including the freedom to profess, practise and propagate a religion.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '5e5205dcccd07187c9e4453b00ba0c6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5e5205dcccd07187c9e4453b00ba0c6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The right to freedom of religion'),
            ('B', 'The right to equality'),
            ('C', 'The right to life'),
            ('D', 'The right to property')
           ) as v(label, option_text)
 where q.question_hash = '5e5205dcccd07187c9e4453b00ba0c6f'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The 42nd Amendment added Article 25A, which provides for the protection of:',
    'Article 25A, inserted in 1976, provides for the protection of cows and other milch and draught cattle.',
    'medium',
    'Standard Reference',
    null,
    'd950068f359ece2ace1145acd6a94e25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd950068f359ece2ace1145acd6a94e25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to Information'),
            ('B', 'Cow slaughter'),
            ('C', 'Temples'),
            ('D', 'Caste')
           ) as v(label, option_text)
 where q.question_hash = 'd950068f359ece2ace1145acd6a94e25'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 29 and Article 30 of the Constitution relate to:',
    'Articles 29 and 30 protect the cultural and educational rights of minorities, including the right to establish and administer educational institutions.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'db7457dfdadcd9cb013855ad17fec2ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db7457dfdadcd9cb013855ad17fec2ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to freedom of trade'),
            ('B', 'Right to constitutional remedies'),
            ('C', 'Prevention of untouchability'),
            ('D', 'Cultural and educational rights of minorities')
           ) as v(label, option_text)
 where q.question_hash = 'db7457dfdadcd9cb013855ad17fec2ae'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to acquire and dispose of property is now contained in:',
    'Article 300A, inserted by the 44th Amendment, provides that no person shall be deprived of his property save by authority of law.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '9ac32e4a3255e994566da829684276e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9ac32e4a3255e994566da829684276e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 31'),
            ('B', 'Article 19(1)(g)'),
            ('C', 'Article 300A'),
            ('D', 'Article 21')
           ) as v(label, option_text)
 where q.question_hash = '9ac32e4a3255e994566da829684276e8'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 33 of the Constitution provides:',
    'Article 33 empowers Parliament to restrict the fundamental rights of the members of the armed forces, and Article 34 bars court-martial from certain fundamental rights.',
    'hard',
    'Standard Reference',
    null,
    'fd256e0b96b3dc0654d242ec5355dc41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fd256e0b96b3dc0654d242ec5355dc41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to protection of monuments'),
            ('B', 'Parliament may restrict the fundamental rights of members of the armed forces'),
            ('C', 'Martial law'),
            ('D', 'Restriction during emergency')
           ) as v(label, option_text)
 where q.question_hash = 'fd256e0b96b3dc0654d242ec5355dc41'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 35 of the Constitution empowers:',
    'Article 35 empowers Parliament alone to make laws to give effect to the rights conferred by Articles 14 to 31.',
    'medium',
    'Standard Reference',
    null,
    'a8f8da15d8c0a9011ee1eda2a7f1f595'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a8f8da15d8c0a9011ee1eda2a7f1f595'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President to promulgate ordinances'),
            ('B', 'The Supreme Court to issue writs'),
            ('C', 'The Governor to reserve bills'),
            ('D', 'Parliament to make laws to give effect to certain fundamental rights')
           ) as v(label, option_text)
 where q.question_hash = 'a8f8da15d8c0a9011ee1eda2a7f1f595'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 31A protects laws relating to:',
    'Article 31A, inserted by the First Amendment, protects laws relating to land reform and the regulation of the Scheduled Areas from judicial review.',
    'medium',
    'Standard Reference',
    null,
    'eedc49043cba6060e0af1c6531983051'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eedc49043cba6060e0af1c6531983051'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Land reform and tribal areas'),
            ('B', 'Reservation for women'),
            ('C', 'Right to education'),
            ('D', 'Right to Information')
           ) as v(label, option_text)
 where q.question_hash = 'eedc49043cba6060e0af1c6531983051'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In which case did the Supreme Court hold that the right to speedy trial is part of Article 21?',
    'In Hussainara Khatoon (1980) the Supreme Court recognised the right to a speedy trial as an integral part of the right to life under Article 21.',
    'medium',
    'Standard Reference',
    null,
    '0ea057e6340d042a479bda98dd2c83f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ea057e6340d042a479bda98dd2c83f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishaka v. State of Rajasthan'),
            ('B', 'Maneka Gandhi v. Union of India'),
            ('C', 'Hussainara Khatoon v. Home Secretary, State of Bihar'),
            ('D', 'K.S. Puttaswamy v. Union of India')
           ) as v(label, option_text)
 where q.question_hash = '0ea057e6340d042a479bda98dd2c83f9'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The case that established the ''absolute right to a clean environment'' under Article 21 was:',
    'In M.C. Mehta and Others v. Union of India the Supreme Court treated the right to a healthy environment and the right to enjoy it as part of the right to life under Article 21.',
    'medium',
    'Standard Reference',
    null,
    '35446b83505bc510860554d9767cfdcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '35446b83505bc510860554d9767cfdcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Golaknath v. State of Punjab'),
            ('B', 'ADM Jabalpur v. Shivkant Shukla'),
            ('C', 'M.C. Mehta v. Union of India'),
            ('D', 'Kesavananda Bharati v. State of Kerala')
           ) as v(label, option_text)
 where q.question_hash = '35446b83505bc510860554d9767cfdcc'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 19(1)(g) guarantees the right to:',
    'Article 19(1)(g) guarantees the right to practise any profession or to carry on any occupation, trade or business, subject to reasonable restrictions.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '15ed656ee4f63ec59c6f65e662145e87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '15ed656ee4f63ec59c6f65e662145e87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Form associations'),
            ('B', 'Practise any profession or carry on any occupation, trade or business'),
            ('C', 'Reside and move freely'),
            ('D', 'Hold a public office')
           ) as v(label, option_text)
 where q.question_hash = '15ed656ee4f63ec59c6f65e662145e87'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 20(3) guarantees:',
    'Article 20(3) says that no person accused of an offence shall be compelled to be a witness against himself.',
    'medium',
    'Standard Reference',
    null,
    '8906c9b7516fa7617e9db809e154804f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8906c9b7516fa7617e9db809e154804f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The right to a free trial'),
            ('B', 'The right to bail'),
            ('C', 'The right to a speedy trial'),
            ('D', 'The right against self-incrimination')
           ) as v(label, option_text)
 where q.question_hash = '8906c9b7516fa7617e9db809e154804f'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to die with dignity and the ''living will'' were upheld by the Supreme Court in:',
    'In Maruti Shripati Dubal (2018) the Supreme Court recognised the right to die with dignity and the validity of the living will.',
    'hard',
    'Standard Reference',
    null,
    '34d7cc8169e7bd42dfc2a42157681441'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '34d7cc8169e7bd42dfc2a42157681441'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maruti Shripati Dubal v. State of Maharashtra'),
            ('B', 'Kesavananda Bharati v. State of Kerala'),
            ('C', 'Maneka Gandhi v. Union of India'),
            ('D', 'Common Cause v. Union of India')
           ) as v(label, option_text)
 where q.question_hash = '34d7cc8169e7bd42dfc2a42157681441'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 16(4) permits reservation in:',
    'Article 16(4) allows reservation in appointments for backward classes of citizens which are not adequately represented in the services under the state.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '0c4b483cfee96107424fe35819378a32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c4b483cfee96107424fe35819378a32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All sectors of employment'),
            ('B', 'Public employment for backward classes not adequately represented'),
            ('C', 'Private sector jobs'),
            ('D', 'Educational institutions run by the state')
           ) as v(label, option_text)
 where q.question_hash = '0c4b483cfee96107424fe35819378a32'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Indra Sawhney case relates to:',
    'In Indra Sawhney (1992) the Supreme Court capped reservation in promotions at 50 per cent, which the 103rd Amendment later permitted to exceed for the EWS category.',
    'hard',
    'Standard Reference',
    null,
    'd366944603f804bf1099e7f4dbd922ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd366944603f804bf1099e7f4dbd922ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right to information'),
            ('B', 'Environmental protection'),
            ('C', 'Right to education'),
            ('D', 'Reservation in promotions')
           ) as v(label, option_text)
 where q.question_hash = 'd366944603f804bf1099e7f4dbd922ca'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 12 of the Constitution defines:',
    'Article 12 defines ''State'' to include the Government and Parliament of India, the Government and legislature of each state, and all local or other authorities within the territory of India or under the control of the Government of India.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'a4104bbf5c79679af580559280bbdc96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4104bbf5c79679af580559280bbdc96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fundamental rights'),
            ('B', 'Union of States'),
            ('C', 'The State'),
            ('D', 'Citizen')
           ) as v(label, option_text)
 where q.question_hash = 'a4104bbf5c79679af580559280bbdc96'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which writ is issued to command a public authority to perform its duty?',
    'Mandamus literally means ''we command'' and is issued to compel a public authority to perform a duty it has failed to perform.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '4caaf54d71c35bb0c1c3db089e3ffc2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4caaf54d71c35bb0c1c3db089e3ffc2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mandamus'),
            ('B', 'Certiorari'),
            ('C', 'Prohibition'),
            ('D', 'Habeas corpus')
           ) as v(label, option_text)
 where q.question_hash = '4caaf54d71c35bb0c1c3db089e3ffc2e'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Certiorari is issued by a higher court to:',
    'Certiorari is issued to quash or set aside the order of a lower court or tribunal acting outside its jurisdiction, and it can be issued for both legal and factual error.',
    'medium',
    'Standard Reference',
    null,
    'a5ac124851bc64829f2f1bfd3e314d69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a5ac124851bc64829f2f1bfd3e314d69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Quash the order of a lower court'),
            ('B', 'Produce a detained person'),
            ('C', 'Command a public authority'),
            ('D', 'Transfer a case')
           ) as v(label, option_text)
 where q.question_hash = 'a5ac124851bc64829f2f1bfd3e314d69'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Prohibition is issued to:',
    'Prohibition is issued by a higher court to a lower court to stop it from exceeding its jurisdiction or continuing with a proceedings already commenced.',
    'medium',
    'Standard Reference',
    null,
    '5152497ec035be376751cad6d894c946'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5152497ec035be376751cad6d894c946'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Command a public authority'),
            ('B', 'Produce a detained person'),
            ('C', 'Quash an order of a lower court'),
            ('D', 'Prevent a lower court from exceeding its jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = '5152497ec035be376751cad6d894c946'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 226 empowers the High Courts to issue writs:',
    'Article 226 is wider than Article 32: it allows writs for the enforcement of fundamental rights and for any other purpose, including for the benefit of the larger public interest.',
    'medium',
    'Standard Reference',
    null,
    '53806cf325901bffb2099b8dbca52c4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '53806cf325901bffb2099b8dbca52c4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only at the request of the State Government'),
            ('B', 'Only for the enforcement of fundamental rights'),
            ('C', 'For the enforcement of fundamental rights and for any other purpose'),
            ('D', 'Only against the Union Government')
           ) as v(label, option_text)
 where q.question_hash = '53806cf325901bffb2099b8dbca52c4e'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 32 cannot be suspended except:',
    'Article 32, the heart and soul of the Constitution, cannot be suspended except as provided by Article 359 during a national emergency.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '34fcb18de6abbd70c1b86db24c9f7e99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '34fcb18de6abbd70c1b86db24c9f7e99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'During a financial emergency'),
            ('B', 'Never'),
            ('C', 'During President''s Rule'),
            ('D', 'During a national emergency')
           ) as v(label, option_text)
 where q.question_hash = '34fcb18de6abbd70c1b86db24c9f7e99'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to education from 6 to 14 years was made a fundamental right in the year:',
    'The 86th Amendment of 2002, which came into effect in 2005-06 with the RTE Act, inserted Article 21A.',
    'easy',
    'Standard Reference',
    null,
    'a5e5a6c188be2963cef8de57cb3fe67d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a5e5a6c188be2963cef8de57cb3fe67d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2009'),
            ('B', '2000'),
            ('C', '2002'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = 'a5e5a6c188be2963cef8de57cb3fe67d'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 39A of the Constitution directs the state to secure:',
    'Article 39A, inserted by the 42nd Amendment, directs the state to secure that the operation of the legal system promotes justice on a basis of equal opportunity, and to provide free legal aid.',
    'medium',
    'Standard Reference',
    null,
    '790164ccc12ccfa0a76d6548bd4396fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '790164ccc12ccfa0a76d6548bd4396fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uniform civil code'),
            ('B', 'The right to work'),
            ('C', 'Protection of monuments'),
            ('D', 'Equal justice and free legal aid')
           ) as v(label, option_text)
 where q.question_hash = '790164ccc12ccfa0a76d6548bd4396fb'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 43 of the Constitution of India deals with:',
    'Article 43, added by the 42nd Amendment, directs the state to promote cottage industries in rural areas, individual and cottage industries and cooperative enterprises.',
    'medium',
    'Standard Reference',
    null,
    '41380b6dbaf267ea70e1641133002ecd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '41380b6dbaf267ea70e1641133002ecd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promotion of international peace'),
            ('B', 'Promotion of cottage industries in rural areas'),
            ('C', 'Organization of agriculture and animal husbandry'),
            ('D', 'Provision of free and compulsory education')
           ) as v(label, option_text)
 where q.question_hash = '41380b6dbaf267ea70e1641133002ecd'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 46 of the Constitution directs the state to:',
    'Article 46 directs the state to promote the educational and economic interests of the weaker sections of the people, particularly the Scheduled Castes, Scheduled Tribes and other disadvantaged sections.',
    'medium',
    'Standard Reference',
    null,
    '79ec73fa9ee5c69a2d4fc190feb6ab3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '79ec73fa9ee5c69a2d4fc190feb6ab3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promote the educational and economic interests of the weaker sections'),
            ('B', 'Secure a uniform civil code'),
            ('C', 'Protect monuments'),
            ('D', 'Encourage scientific research')
           ) as v(label, option_text)
 where q.question_hash = '79ec73fa9ee5c69a2d4fc190feb6ab3c'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 47 of the Constitution directs the state to:',
    'Article 47, amended in 1976, directs the state to raise the level of nutrition and improve standard of living and promote public health.',
    'medium',
    'Standard Reference',
    null,
    'ef12c541b16729432d26307357c4a06f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ef12c541b16729432d26307357c4a06f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Encourage the spirit of scientific inquiry'),
            ('B', 'Raise the level of nutrition and improve public health'),
            ('C', 'Protect monuments'),
            ('D', 'Promote cottage industries')
           ) as v(label, option_text)
 where q.question_hash = 'ef12c541b16729432d26307357c4a06f'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 49 of the Constitution directs the state to:',
    'Article 49 places on the state the duty to protect monuments and places of national importance, and Article 50 to separate the judiciary from the executive.',
    'easy',
    'Standard Reference',
    null,
    '28665c8fa30c81fbe770caa4bb7bc53d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '28665c8fa30c81fbe770caa4bb7bc53d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Encourage cottage industries in rural areas'),
            ('B', 'Provide for the care of the unborn child'),
            ('C', 'Promote the educational interests of the Scheduled Tribes'),
            ('D', 'Protect monuments and places of national importance')
           ) as v(label, option_text)
 where q.question_hash = '28665c8fa30c81fbe770caa4bb7bc53d'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 51 of the Constitution directs the state to:',
    'Article 51 directs the state to promote international peace and security, maintain just and honourable relations between nations, foster respect for international law and treaty obligations, and encourage settlement of international disputes by arbitration.',
    'medium',
    'Standard Reference',
    null,
    'fc45cdea9f9d5f0217fe7e903b1e66b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc45cdea9f9d5f0217fe7e903b1e66b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promote international peace and security'),
            ('B', 'Raise the level of nutrition'),
            ('C', 'Encourage cottage industries'),
            ('D', 'Protect monuments')
           ) as v(label, option_text)
 where q.question_hash = 'fc45cdea9f9d5f0217fe7e903b1e66b3'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The Directive Principles that promote the organisation of village panchayats are:',
    'Article 40 directs the state to organise village panchayats and endow them with such powers as may be necessary to enable them to function as units of self-government.',
    'easy',
    'Standard Reference',
    null,
    'c0b75c5177855e8494e08a690a9cdbef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c0b75c5177855e8494e08a690a9cdbef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 48'),
            ('B', 'Article 45'),
            ('C', 'Article 40'),
            ('D', 'Article 43')
           ) as v(label, option_text)
 where q.question_hash = 'c0b75c5177855e8494e08a690a9cdbef'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The Gandhian Directive Principles include:',
    'The Gandhian principles include the organisation of village panchayats, promotion of cottage industries, prohibition of intoxicating drinks and drugs, promotion of khadi and village industries, and the protection of cows and calves.',
    'medium',
    'Standard Reference',
    null,
    'ee8094345d6f41d32906e9306f67bf46'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee8094345d6f41d32906e9306f67bf46'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Equal justice and free legal aid'),
            ('B', 'Protection of the environment'),
            ('C', 'Prohibition of intoxicating drinks and drugs'),
            ('D', 'Promotion of science and education')
           ) as v(label, option_text)
 where q.question_hash = 'ee8094345d6f41d32906e9306f67bf46'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The liberal-intellectual Directive Principles include:',
    'The liberal-intellectual principles include secure equal justice and free legal aid, the promotion of the spirit of scientific inquiry, and the protection of monuments and places of national importance.',
    'hard',
    'Standard Reference',
    null,
    '48e7a1bdee8531826c3856d0f2d5dfbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '48e7a1bdee8531826c3856d0f2d5dfbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Equal justice and freedom of thought'),
            ('B', 'Village panchayats'),
            ('C', 'Protection of monuments'),
            ('D', 'The promotion of international peace')
           ) as v(label, option_text)
 where q.question_hash = '48e7a1bdee8531826c3856d0f2d5dfbc'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Which Article of the Constitution declares the harmony between Part III and Part IV a basic feature?',
    'Article 37 provides that the provisions of Part IV shall not be enforceable by any court, but the principles laid down shall be the basis of all legislation.',
    'hard',
    'Standard Reference',
    null,
    '8b451138322209ebbfbc605a9f9773ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8b451138322209ebbfbc605a9f9773ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 44'),
            ('B', 'Article 37'),
            ('C', 'Article 38'),
            ('D', 'Article 51')
           ) as v(label, option_text)
 where q.question_hash = '8b451138322209ebbfbc605a9f9773ec'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The Fundamental Duties were added to the Constitution by which Amendment Act?',
    'The 42nd Amendment of 1976 added Part IVA containing Article 51A with the eleven fundamental duties.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '044790072f18324fda5f15d30990e535'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '044790072f18324fda5f15d30990e535'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '43rd'),
            ('B', '44th'),
            ('C', '41st'),
            ('D', '42nd')
           ) as v(label, option_text)
 where q.question_hash = '044790072f18324fda5f15d30990e535'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The duty to pay taxes is:',
    'Paying taxes is a legal obligation, but it is not listed among the eleven fundamental duties in Article 51A.',
    'medium',
    'Standard Reference',
    null,
    '5df810bf90aef8dfd2289c4ac8bc00b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5df810bf90aef8dfd2289c4ac8bc00b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Directive Principle'),
            ('B', 'A fundamental duty'),
            ('C', 'A legal obligation but not a fundamental duty'),
            ('D', 'Not a duty at all')
           ) as v(label, option_text)
 where q.question_hash = '5df810bf90aef8dfd2289c4ac8bc00b5'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The duty of every citizen to protect and improve the natural environment was added by:',
    'The 42nd Amendment added the duty to protect and improve the natural environment, to have compassion for living creatures, and to develop the scientific temper.',
    'medium',
    'Standard Reference',
    null,
    '8f4e06a6d7febed5c8b1090bff5df785'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8f4e06a6d7febed5c8b1090bff5df785'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '42nd Amendment'),
            ('B', '48th Amendment'),
            ('C', '52nd Amendment'),
            ('D', '44th Amendment')
           ) as v(label, option_text)
 where q.question_hash = '8f4e06a6d7febed5c8b1090bff5df785'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'Which of the following is NOT included in the list of fundamental duties?',
    'Paying taxes is not one of the eleven fundamental duties, though it is a legal obligation under the taxation laws.',
    'medium',
    'Standard Reference',
    null,
    '3cdee0d7602f7433e2eba5eb6d470fe9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3cdee0d7602f7433e2eba5eb6d470fe9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To develop the scientific temper'),
            ('B', 'To pay taxes'),
            ('C', 'To safeguard public property and abjure violence'),
            ('D', 'To protect and improve the natural environment')
           ) as v(label, option_text)
 where q.question_hash = '3cdee0d7602f7433e2eba5eb6d470fe9'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The 11th Schedule of the Constitution contains:',
    'The 11th Schedule, added by the 42nd Amendment, lists the 21 fundamental duties of the Indian citizen.',
    'medium',
    'Standard Reference',
    null,
    'c773967564cb6cf441023392eb731479'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c773967564cb6cf441023392eb731479'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 8th Schedule'),
            ('B', 'The languages recognised as official'),
            ('C', 'The provisions of the 73rd Amendment'),
            ('D', 'The 21st fundamental duties')
           ) as v(label, option_text)
 where q.question_hash = 'c773967564cb6cf441023392eb731479'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 2 of the Constitution empowers Parliament to:',
    'Article 2 empowers Parliament to admit or establish new states into the Union and Article 3 to form new states and alter the boundaries and areas of existing states.',
    'medium',
    'Standard Reference',
    null,
    '11978e9963a2a906c7dd9a1f2f72ed5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '11978e9963a2a906c7dd9a1f2f72ed5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Admit new states into the Union'),
            ('B', 'Reorganize states on linguistic lines'),
            ('C', 'Change the names of states'),
            ('D', 'Form new states and alter the areas of existing states')
           ) as v(label, option_text)
 where q.question_hash = '11978e9963a2a906c7dd9a1f2f72ed5e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The procedure for the formation of a new state is laid down in:',
    'Article 3 deals with the formation of new states, alteration of boundaries and areas, and the increase or diminution of the area of a state.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd8449ce3883684089f3afa5a913e64c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd8449ce3883684089f3afa5a913e64c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 1'),
            ('B', 'Article 2'),
            ('C', 'Article 3'),
            ('D', 'Article 4')
           ) as v(label, option_text)
 where q.question_hash = 'd8449ce3883684089f3afa5a913e64c0'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 4 of the Constitution deals with:',
    'Article 4 provides for the redistribution of territories of existing states, which does not require a reference to the state legislature under Article 3.',
    'medium',
    'Standard Reference',
    null,
    'a738804085f3771ecdb3cfd2d9030756'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a738804085f3771ecdb3cfd2d9030756'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Formation of new states'),
            ('B', 'Redistribution of territories of existing states'),
            ('C', 'Distribution of legislative powers'),
            ('D', 'Emergency provisions')
           ) as v(label, option_text)
 where q.question_hash = 'a738804085f3771ecdb3cfd2d9030756'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 245 of the Constitution provides that:',
    'Article 245, read with the Seventh Schedule, lays down the distribution of legislative subjects between the Union and the states, with a three-list scheme.',
    'medium',
    'Standard Reference',
    null,
    'f6f172a9c5bb03a6b0daad0e38e74cf1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f6f172a9c5bb03a6b0daad0e38e74cf1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Union and the state legislatures have concurrent powers in certain subjects'),
            ('B', 'The residuary powers of legislation'),
            ('C', 'Emergency provisions'),
            ('D', 'The distribution of taxes')
           ) as v(label, option_text)
 where q.question_hash = 'f6f172a9c5bb03a6b0daad0e38e74cf1'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 249 enables Parliament to legislate on a state subject when:',
    'Article 249 allows Parliament to legislate on a state subject if two or more states make a request, and Article 250 allows it during a national emergency or when the interests of the Union require it.',
    'hard',
    'Standard Reference',
    null,
    '2445bc6a8ef0430a4727eb091c805c35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2445bc6a8ef0430a4727eb091c805c35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President certifies national interest'),
            ('B', 'The Governor requests it'),
            ('C', 'A state legislature requests it'),
            ('D', 'Two or more states make a request')
           ) as v(label, option_text)
 where q.question_hash = '2445bc6a8ef0430a4727eb091c805c35'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 252 of the Constitution provides for:',
    'Article 252 empowers Parliament to legislate for the purpose of implementing any treaty or agreement with any foreign state, even if it is a state subject.',
    'medium',
    'Standard Reference',
    null,
    'b86046f72fdd738283e8ba5c59fb2e2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b86046f72fdd738283e8ba5c59fb2e2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Legislation by Parliament to implement international treaties'),
            ('B', 'The residuary powers of Parliament'),
            ('C', 'Emergency in the states'),
            ('D', 'Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = 'b86046f72fdd738283e8ba5c59fb2e2f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 254 of the Constitution deals with:',
    'Article 254 provides that the law made by Parliament shall prevail in case of a conflict with a state law, subject to the proviso about repugnancy.',
    'medium',
    'Standard Reference',
    null,
    '020d39ce8d6b3d9b4c7ac2cdf2390e3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '020d39ce8d6b3d9b4c7ac2cdf2390e3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Residuary powers'),
            ('B', 'Distribution of legislative powers'),
            ('C', 'Conflict between Union and state laws'),
            ('D', 'Emergency provisions')
           ) as v(label, option_text)
 where q.question_hash = '020d39ce8d6b3d9b4c7ac2cdf2390e3e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 263 provides for:',
    'Article 263 empowers the President to establish an Inter-State Council to inquire into and advise upon disputes between states, investigate subjects of common interest, and make recommendations for better coordination of policy.',
    'medium',
    'Standard Reference',
    null,
    '37c8436957f3b635bd61ee4551c00a42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '37c8436957f3b635bd61ee4551c00a42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Planning Commission'),
            ('B', 'The Inter-State Council'),
            ('C', 'The Finance Commission'),
            ('D', 'The NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = '37c8436957f3b635bd61ee4551c00a42'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Zonal councils were set up to:',
    'The zonal councils, created in 1956, are non-statutory bodies that promote cooperative federalism among the states of a zone.',
    'medium',
    'Standard Reference',
    null,
    '3209254c1874c355151f43675543b9ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3209254c1874c355151f43675543b9ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conduct elections'),
            ('B', 'Adjudicate water disputes'),
            ('C', 'Appoint governors'),
            ('D', 'Promote cooperative federalism')
           ) as v(label, option_text)
 where q.question_hash = '3209254c1874c355151f43675543b9ea'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The GST Council''s decisions are taken with the consent of:',
    'The GST Council is a joint forum of the Union and the state governments, and decisions need a three-fourths majority of the weighted votes of the states and a simple majority of the central government.',
    'hard',
    'Standard Reference',
    null,
    '045606d6e39cc1e96263f061b990ff37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '045606d6e39cc1e96263f061b990ff37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The central government alone'),
            ('B', 'The Centre and all states'),
            ('C', 'Three-fourths of the states'),
            ('D', 'All the states only')
           ) as v(label, option_text)
 where q.question_hash = '045606d6e39cc1e96263f061b990ff37'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The 101st Amendment introduced:',
    'The 101st Amendment of 2016 created the GST Council (Article 279A) and the NJAC, and enabled the Central GST and the GST Compensation Act.',
    'medium',
    'Standard Reference',
    null,
    '8566e57835d5691e849a086b9ab67941'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8566e57835d5691e849a086b9ab67941'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Right to Education'),
            ('B', 'The National Commission for Women'),
            ('C', 'The GST Council and the National Judicial Appointments Commission'),
            ('D', 'The Goods and Services Tax')
           ) as v(label, option_text)
 where q.question_hash = '8566e57835d5691e849a086b9ab67941'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The NITI Aayog was constituted on:',
    'NITI Aayog was established on 1 January 2015 by an executive resolution replacing the Planning Commission.',
    'medium',
    'Standard Reference',
    null,
    'daeeea25758b4871d5782c677e32fe69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'daeeea25758b4871d5782c677e32fe69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 2015'),
            ('B', '26 January 2015'),
            ('C', '15 August 2014'),
            ('D', '1 April 2015')
           ) as v(label, option_text)
 where q.question_hash = 'daeeea25758b4871d5782c677e32fe69'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Chairman of the NITI Aayog is:',
    'The Prime Minister chairs the NITI Aayog, which has a Vice-Chairperson appointed by the Prime Minister and full-time members.',
    'easy',
    'Standard Reference',
    null,
    'fffb2f5875f47387430f7e424ac6758f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fffb2f5875f47387430f7e424ac6758f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Prime Minister'),
            ('C', 'The Finance Minister'),
            ('D', 'The Chief Secretary')
           ) as v(label, option_text)
 where q.question_hash = 'fffb2f5875f47387430f7e424ac6758f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Finance Commission is constituted every:',
    'Article 280 provides for a Finance Commission every fifth year or earlier if necessary, appointed by the President.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'baa7d12930b059e63c0cc14aa6ee90f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'baa7d12930b059e63c0cc14aa6ee90f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tenth year'),
            ('B', 'Second year'),
            ('C', 'Third year'),
            ('D', 'Fifth year or earlier if necessary')
           ) as v(label, option_text)
 where q.question_hash = 'baa7d12930b059e63c0cc14aa6ee90f9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The recommendations of the Finance Commission are:',
    'Finance Commission recommendations are advisory in nature, though successive governments have generally implemented them.',
    'medium',
    'Standard Reference',
    null,
    '704a72bfecbb0b8dbc4d3e31f09eabc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '704a72bfecbb0b8dbc4d3e31f09eabc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Issued as ordinances'),
            ('B', 'Mandatory'),
            ('C', 'Advisory'),
            ('D', 'Binding on states only')
           ) as v(label, option_text)
 where q.question_hash = '704a72bfecbb0b8dbc4d3e31f09eabc7'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Council of States represents:',
    'The Rajya Sabha is the house of the states, in which the elected members of the state legislatures and the elected members of the Delhi and Puducherry legislative assemblies are represented.',
    'medium',
    'Standard Reference',
    null,
    '95dc535cad57d7f3d8b405e2b9a0901c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '95dc535cad57d7f3d8b405e2b9a0901c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Union and the states'),
            ('B', 'Only the states'),
            ('C', 'Only the Union territories'),
            ('D', 'The districts')
           ) as v(label, option_text)
 where q.question_hash = '95dc535cad57d7f3d8b405e2b9a0901c'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The maximum strength of the Lok Sabha as provided in the Constitution is:',
    'The Constitution provides for a maximum strength of 552 members for the Lok Sabha, of whom 530 represent the states and 12 the union territories.',
    'hard',
    'Standard Reference',
    null,
    '1d8daeb8988b33a218692cd1483d8718'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d8daeb8988b33a218692cd1483d8718'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '552'),
            ('B', '560'),
            ('C', '500'),
            ('D', '545')
           ) as v(label, option_text)
 where q.question_hash = '1d8daeb8988b33a218692cd1483d8718'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The minimum age for membership of the Lok Sabha is:',
    'Article 84 requires a member of either house to be at least 25 years of age and a member of the Rajya Sabha to be at least 30 years old.',
    'easy',
    'Standard Reference',
    null,
    '0a708f5e1ceea18ce279a36a40885c61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0a708f5e1ceea18ce279a36a40885c61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '30 years'),
            ('B', '18 years'),
            ('C', '21 years'),
            ('D', '25 years')
           ) as v(label, option_text)
 where q.question_hash = '0a708f5e1ceea18ce279a36a40885c61'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Rajya Sabha''s term of membership is:',
    'A member of the Rajya Sabha is elected for six years, with one-third of the members retiring every second year.',
    'medium',
    'Standard Reference',
    null,
    'fc900725a9da1f0cc01cbd0b0281e974'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc900725a9da1f0cc01cbd0b0281e974'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4 years'),
            ('B', '5 years'),
            ('C', '6 years'),
            ('D', 'Permanent')
           ) as v(label, option_text)
 where q.question_hash = 'fc900725a9da1f0cc01cbd0b0281e974'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The nominated members of the Rajya Sabha represent:',
    'Twelve members are nominated by the President to represent different walks of life and expertise, including art, literature, science and social work.',
    'medium',
    'Standard Reference',
    null,
    'd582d98e654fee096ab49dae6229838f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd582d98e654fee096ab49dae6229838f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The state legislatures'),
            ('B', 'The President'),
            ('C', 'The union territories'),
            ('D', 'The Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'd582d98e654fee096ab49dae6229838f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Deputy Chairman of the Rajya Sabha is:',
    'The Deputy Chairman of the Rajya Sabha is elected by its members, and in his absence the Deputy Speaker of the Lok Sabha presides.',
    'hard',
    'Standard Reference',
    null,
    'f9ce006cb8d3f5d796634457d1451902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f9ce006cb8d3f5d796634457d1451902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ex-officio the Leader of the House'),
            ('B', 'Elected by the members of the Rajya Sabha'),
            ('C', 'Appointed by the President'),
            ('D', 'Nominated by the PM')
           ) as v(label, option_text)
 where q.question_hash = 'f9ce006cb8d3f5d796634457d1451902'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The quorum of the Rajya Sabha is:',
    'The quorum in the Rajya Sabha is one-tenth of the total membership of the House.',
    'hard',
    'Standard Reference',
    null,
    'd23490d2ae8c7e6ceaf06c8df535b78b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd23490d2ae8c7e6ceaf06c8df535b78b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifty members'),
            ('B', 'One-fourth of the total membership'),
            ('C', 'One-tenth of the total membership'),
            ('D', 'One-fifth of the total membership')
           ) as v(label, option_text)
 where q.question_hash = 'd23490d2ae8c7e6ceaf06c8df535b78b'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A money bill can be introduced only in the Lok Sabha on the recommendation of:',
    'Only the President can recommend the introduction of a money bill in the Lok Sabha, and the Speaker decides whether a bill is a money bill.',
    'medium',
    'Standard Reference',
    null,
    '09117032584d47e5f7b90d96627e3b79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '09117032584d47e5f7b90d96627e3b79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Finance Minister'),
            ('C', 'The Speaker'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = '09117032584d47e5f7b90d96627e3b79'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Speaker of the Lok Sabha decides whether a bill is a money bill under:',
    'Article 110 defines a money bill and Article 199 defines a money bill for the state legislatures; the Speaker of the Lok Sabha certifies its classification.',
    'medium',
    'Standard Reference',
    null,
    'ac2498585318a21d08de59c44b2185be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ac2498585318a21d08de59c44b2185be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 110'),
            ('B', 'Article 199'),
            ('C', 'Article 100'),
            ('D', 'Article 109')
           ) as v(label, option_text)
 where q.question_hash = 'ac2498585318a21d08de59c44b2185be'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Estimates Committee'' of Parliament consists of:',
    'The Estimates Committee has 30 members, all elected from the Lok Sabha, and is headed by the Chairman of the Committee of Estimates.',
    'hard',
    'Standard Reference',
    null,
    'fa089bf003dd7ff5342942ee63fd554c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fa089bf003dd7ff5342942ee63fd554c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '31 members'),
            ('B', '30 members'),
            ('C', '22 members'),
            ('D', '15 members')
           ) as v(label, option_text)
 where q.question_hash = 'fa089bf003dd7ff5342942ee63fd554c'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Committee on Public Undertakings'' has how many members?',
    'The Committee on Public Undertakings has 22 members, 15 from the Lok Sabha and 7 from the Rajya Sabha.',
    'hard',
    'Standard Reference',
    null,
    '3bfb057fe47731993f3bdd87c6eb1480'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3bfb057fe47731993f3bdd87c6eb1480'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '30'),
            ('B', '31'),
            ('C', '22'),
            ('D', '15')
           ) as v(label, option_text)
 where q.question_hash = '3bfb057fe47731993f3bdd87c6eb1480'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Committee on Petitions'' of Parliament:',
    'The Committee on Petitions, headed by the Speaker or a member nominated by him, examines the petitions of citizens on grievances and reports its findings to the House.',
    'medium',
    'Standard Reference',
    null,
    '8c2cfc68153be56417c8c0fd5634846d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8c2cfc68153be56417c8c0fd5634846d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Approves the budget'),
            ('B', 'Recommends the CAG''s report'),
            ('C', 'Appoints committee members'),
            ('D', 'Examines the petitions of the people')
           ) as v(label, option_text)
 where q.question_hash = '8c2cfc68153be56417c8c0fd5634846d'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Censure motion'' can be moved against:',
    'A censure motion, which can only be moved in the Lok Sabha and not in the Rajya Sabha, is moved against a minister for his actions and omissions.',
    'medium',
    'Standard Reference',
    null,
    '2251f8afbc0087032993e1e103aa54a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2251f8afbc0087032993e1e103aa54a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'A minister'),
            ('C', 'The President'),
            ('D', 'The Governor')
           ) as v(label, option_text)
 where q.question_hash = '2251f8afbc0087032993e1e103aa54a9'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''No-confidence motion'' can be moved only in the:',
    'A no-confidence motion can be moved only in the Lok Sabha and not in the Rajya Sabha, which has no ministerial responsibility.',
    'easy',
    'Standard Reference',
    null,
    '5354f759bfe1dd6c58e96f964b191902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5354f759bfe1dd6c58e96f964b191902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State assemblies'),
            ('B', 'Rajya Sabha'),
            ('C', 'Lok Sabha'),
            ('D', 'Both houses')
           ) as v(label, option_text)
 where q.question_hash = '5354f759bfe1dd6c58e96f964b191902'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Motion of Thanks'' is:',
    'The Motion of Thanks, which follows the President''s address, can be moved only if it is supported by the opposition as well as the ruling party.',
    'medium',
    'Standard Reference',
    null,
    'ecf53fb960d652f92275929e3239f4ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ecf53fb960d652f92275929e3239f4ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A motion to adjourn the House'),
            ('B', 'A motion of adjournment sine die'),
            ('C', 'A motion to censure the government'),
            ('D', 'A motion supported by the opposition after the address of the President')
           ) as v(label, option_text)
 where q.question_hash = 'ecf53fb960d652f92275929e3239f4ec'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A ''Money Bill'' can be introduced in a state legislature only on the recommendation of:',
    'Under Article 199, a money bill can be introduced in a state legislature only if it is recommended by the Governor.',
    'hard',
    'Standard Reference',
    null,
    '784518e5c0a12938117ee20e3428f46f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '784518e5c0a12938117ee20e3428f46f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Governor'),
            ('B', 'The President'),
            ('C', 'The Chief Minister'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '784518e5c0a12938117ee20e3428f46f'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Financial Bill'' is:',
    'A financial bill is any bill that provides for taxation, borrowing or the appropriation of money and related matters, and it is a subset of money bills.',
    'hard',
    'Standard Reference',
    null,
    '4f61656c94c9d022956784c55a9ecb6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f61656c94c9d022956784c55a9ecb6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A money bill of the states'),
            ('B', 'A bill relating to finance and taxation'),
            ('C', 'A bill concerning the appropriation of money'),
            ('D', 'A bill that requires a joint sitting')
           ) as v(label, option_text)
 where q.question_hash = '4f61656c94c9d022956784c55a9ecb6e'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Parliament''s ''first day'' of each session is marked by:',
    'The President''s address, which is a part of the Constitution, marks the beginning of each session of Parliament.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd77fa0bfc3e2b804c35a7b26106d5092'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd77fa0bfc3e2b804c35a7b26106d5092'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President''s address'),
            ('B', 'The Speaker''s address'),
            ('C', 'The PM''s statement'),
            ('D', 'The President''s address only in the first session')
           ) as v(label, option_text)
 where q.question_hash = 'd77fa0bfc3e2b804c35a7b26106d5092'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Protem Speaker'' of the Lok Sabha is:',
    'When neither the Speaker nor the Deputy Speaker is present, the senior-most member present presides over the House, and if no such member is present the Chairman of the Legislative Assembly acts as Speaker.',
    'hard',
    'Standard Reference',
    null,
    'bf8b6fafbacbcec305ae63dc4c5051ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bf8b6fafbacbcec305ae63dc4c5051ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Deputy Speaker'),
            ('B', 'The senior-most member present'),
            ('C', 'The Leader of the Opposition'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = 'bf8b6fafbacbcec305ae63dc4c5051ae'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Leader of the House'' in the Lok Sabha is generally:',
    'The Prime Minister is the Leader of the House in the Lok Sabha, while the Leader of the Opposition leads the opposition.',
    'medium',
    'Standard Reference',
    null,
    '612103cbaf2bfb4a48f7a2cff42dc537'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '612103cbaf2bfb4a48f7a2cff42dc537'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Deputy Speaker'),
            ('B', 'The Leader of the Opposition'),
            ('C', 'The Prime Minister'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '612103cbaf2bfb4a48f7a2cff42dc537'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A ''Finance Bill'' requires the President''s prior recommendation under:',
    'Under Article 109, a Finance Bill can be introduced in the Lok Sabha only with the prior recommendation of the President.',
    'hard',
    'Standard Reference',
    null,
    '4444204cc1a4d34458cd652cee1df29f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4444204cc1a4d34458cd652cee1df29f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 199'),
            ('B', 'Article 280'),
            ('C', 'Article 112'),
            ('D', 'Article 110')
           ) as v(label, option_text)
 where q.question_hash = '4444204cc1a4d34458cd652cee1df29f'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'An Appropriation Bill is:',
    'An Appropriation Bill authorises the government to make expenditure from the Consolidated Fund of India, the Public Account and the Contingency Fund of India.',
    'medium',
    'Standard Reference',
    null,
    '66bc3b1be3e674d50f30b0f1739f4629'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '66bc3b1be3e674d50f30b0f1739f4629'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A bill to raise money by taxation'),
            ('B', 'A bill to amend the Constitution'),
            ('C', 'A bill to divide the states'),
            ('D', 'A bill to authorise expenditure from the Consolidated Fund of India')
           ) as v(label, option_text)
 where q.question_hash = '66bc3b1be3e674d50f30b0f1739f4629'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Rajya Sabha cannot:',
    'A money bill can be introduced in the Rajya Sabha only on the recommendation of the President, and the Rajya Sabha can only make recommendations on it within fourteen days.',
    'hard',
    'Standard Reference',
    null,
    '33aa38141eea53521e290c7a5205cb74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '33aa38141eea53521e290c7a5205cb74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Consider a money bill'),
            ('B', 'Pass a private member''s bill'),
            ('C', 'Appoint its Deputy Chairman'),
            ('D', 'Elect its own members')
           ) as v(label, option_text)
 where q.question_hash = '33aa38141eea53521e290c7a5205cb74'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Constitution of India originally provided for a bicameral legislature with the upper house having:',
    'The Constitution provided for an upper house of 238 elected and 12 nominated members, with a maximum strength of 250.',
    'hard',
    'Standard Reference',
    null,
    '65e104a6e8e171365f5dbc61fb52b646'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '65e104a6e8e171365f5dbc61fb52b646'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '245 members'),
            ('B', '250 members'),
            ('C', '248 members'),
            ('D', '238 members')
           ) as v(label, option_text)
 where q.question_hash = '65e104a6e8e171365f5dbc61fb52b646'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A ''Private Member''s Bill'' is one that:',
    'A private member''s bill is introduced by a member of the house who is not a minister, while a public bill is introduced by a minister.',
    'easy',
    'Standard Reference',
    null,
    'ea4d891246acf7ed694515671e79b570'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ea4d891246acf7ed694515671e79b570'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is introduced by a minister'),
            ('B', 'Is introduced by a member who is not a minister'),
            ('C', 'Deals with money only'),
            ('D', 'Must be passed in the same session')
           ) as v(label, option_text)
 where q.question_hash = 'ea4d891246acf7ed694515671e79b570'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The President of India is elected by:',
    'The President is elected by an electoral college consisting of the elected members of both houses of Parliament, the elected members of the state legislative assemblies, and the elected members of the Delhi and Puducherry assemblies.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'ccd1b47d2e21129563607e07b0d0c406'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ccd1b47d2e21129563607e07b0d0c406'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Justice'),
            ('B', 'The Parliament'),
            ('C', 'An electoral college of elected MPs and state legislature members'),
            ('D', 'The Prime Minister and the opposition')
           ) as v(label, option_text)
 where q.question_hash = 'ccd1b47d2e21129563607e07b0d0c406'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Vice-President of India is the ex-officio Chairman of:',
    'The Vice-President is the ex-officio Chairman of the Rajya Sabha, as provided in Article 64.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '2ce16e3f1e0734a72d11b505887f0fa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2ce16e3f1e0734a72d11b505887f0fa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Lok Sabha'),
            ('B', 'The Rajya Sabha'),
            ('C', 'The Planning Commission'),
            ('D', 'The Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '2ce16e3f1e0734a72d11b505887f0fa5'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The certification by the Speaker of the Lok Sabha that a bill is a money bill is provided under:',
    'Article 110 defines what a money bill is and the Speaker of the Lok Sabha certifies that a bill is a money bill, which cannot be challenged in court.',
    'medium',
    'Standard Reference',
    null,
    'c6f11d109db863f9e19780d878ef4dae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c6f11d109db863f9e19780d878ef4dae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 199'),
            ('B', 'Article 112'),
            ('C', 'Article 100'),
            ('D', 'Article 110')
           ) as v(label, option_text)
 where q.question_hash = 'c6f11d109db863f9e19780d878ef4dae'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Rights of the Opposition'' in the Parliament were incorporated in the Constitution through:',
    'The 52nd Amendment of 1985 added the Tenth Schedule to the Constitution, giving effect to the anti-defection law and recognising the right of political parties to whip their members.',
    'medium',
    'Standard Reference',
    null,
    'cb314b75f77f9ce8a5102b5b354f0450'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cb314b75f77f9ce8a5102b5b354f0450'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 52nd Amendment'),
            ('B', 'The 44th Amendment'),
            ('C', 'The 42nd Amendment'),
            ('D', 'The 1st Amendment')
           ) as v(label, option_text)
 where q.question_hash = 'cb314b75f77f9ce8a5102b5b354f0450'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Speaker and Deputy Speaker of the Lok Sabha'' are elected from amongst the members by:',
    'The Speaker and the Deputy Speaker are elected by the members of the Lok Sabha from amongst themselves.',
    'easy',
    'Standard Reference',
    null,
    '31ab4a37b1870edb972e2b74df0bb312'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31ab4a37b1870edb972e2b74df0bb312'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The members of the House'),
            ('C', 'The Prime Minister'),
            ('D', 'The Chief Justice')
           ) as v(label, option_text)
 where q.question_hash = '31ab4a37b1870edb972e2b74df0bb312'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Sessions of Parliament'' are ordered by:',
    'Article 85 provides that the President shall summon the Parliament to meet, and the Chairman of the Rajya Sabha presides over the Rajya Sabha when the President addresses it.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'c90b9e25a18ff0c8eabfa8d1b7958686'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c90b9e25a18ff0c8eabfa8d1b7958686'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Chairman of the Rajya Sabha'),
            ('C', 'The Speaker of the Lok Sabha'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = 'c90b9e25a18ff0c8eabfa8d1b7958686'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Supreme Court'' of India was inaugurated on:',
    'The Supreme Court of India was inaugurated on 28 January 1950, two days after the Constitution came into force.',
    'medium',
    'Standard Reference',
    null,
    'ca77c3b10f6ad4b90ad0b91d5437097a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ca77c3b10f6ad4b90ad0b91d5437097a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '28 January 1950'),
            ('B', '26 November 1949'),
            ('C', '15 August 1947'),
            ('D', '26 January 1950')
           ) as v(label, option_text)
 where q.question_hash = 'ca77c3b10f6ad4b90ad0b91d5437097a'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The number of judges of the Supreme Court of India, including the Chief Justice, is:',
    'Article 127 provides for a Supreme Court of 34 judges, including the Chief Justice of India.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '1cbd7d4d5a6f98adf4fcee845c55deb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1cbd7d4d5a6f98adf4fcee845c55deb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '30'),
            ('B', '25'),
            ('C', '21'),
            ('D', '34')
           ) as v(label, option_text)
 where q.question_hash = '1cbd7d4d5a6f98adf4fcee845c55deb1'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The retirement age of a Supreme Court judge is:',
    'A Supreme Court judge holds office until the age of 65 years, and a High Court judge until the age of 62.',
    'easy',
    'Standard Reference',
    null,
    'c360baab7c0c536d80546ff65a7782f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c360baab7c0c536d80546ff65a7782f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '65 years'),
            ('B', '70 years'),
            ('C', '62 years'),
            ('D', '60 years')
           ) as v(label, option_text)
 where q.question_hash = 'c360baab7c0c536d80546ff65a7782f6'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The number of judges of a High Court is:',
    'Article 216 provides for a High Court for each state with a minimum of three judges, and the CJI may authorise additional judges in the metropolitan areas.',
    'medium',
    'Standard Reference',
    null,
    '871308d2fec61443e458e096d028bc14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '871308d2fec61443e458e096d028bc14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A minimum of nine'),
            ('B', 'A minimum of three'),
            ('C', 'A minimum of five'),
            ('D', 'A minimum of seven')
           ) as v(label, option_text)
 where q.question_hash = '871308d2fec61443e458e096d028bc14'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Article 141 makes the law declared by the Supreme Court binding on:',
    'Article 141 provides that the law declared by the Supreme Court shall be binding on all courts within the territory of India.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '48b921eb58b05029191b0fa9c03b5f87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '48b921eb58b05029191b0fa9c03b5f87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the High Courts'),
            ('B', 'Only the Central Government'),
            ('C', 'The President'),
            ('D', 'All courts within the territory of India')
           ) as v(label, option_text)
 where q.question_hash = '48b921eb58b05029191b0fa9c03b5f87'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Article 144 requires the President to:',
    'Article 144 provides that the President shall act in accordance with the advice tendered by the Council of Ministers, except in the cases specified in Article 163.',
    'medium',
    'Standard Reference',
    null,
    '6d193ee61db9f742abc4fa47977b587c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6d193ee61db9f742abc4fa47977b587c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Appoint the Attorney General'),
            ('B', 'Take an oath of office'),
            ('C', 'Act in accordance with the advice of the Council of Ministers'),
            ('D', 'Consult the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '6d193ee61db9f742abc4fa47977b587c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Attorney General of India'' is appointed under:',
    'Article 76 provides for the Attorney General of India, appointed by the President from among persons qualified to be a Supreme Court judge.',
    'easy',
    'Standard Reference',
    null,
    '9dbf9b8b6366d16fe56a797dfc01e28f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9dbf9b8b6366d16fe56a797dfc01e28f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 148'),
            ('B', 'Article 165'),
            ('C', 'Article 74'),
            ('D', 'Article 76')
           ) as v(label, option_text)
 where q.question_hash = '9dbf9b8b6366d16fe56a797dfc01e28f'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Advocate General'' of a state is appointed under:',
    'Article 165 provides for the Advocate General of a state, appointed by the Governor, who is the highest law officer of the state.',
    'medium',
    'Standard Reference',
    null,
    '752a3ac0e052ac5d3ffa9d2b388cbee4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '752a3ac0e052ac5d3ffa9d2b388cbee4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 148'),
            ('B', 'Article 165'),
            ('C', 'Article 315'),
            ('D', 'Article 76')
           ) as v(label, option_text)
 where q.question_hash = '752a3ac0e052ac5d3ffa9d2b388cbee4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The jurisdiction of the Supreme Court under Article 131 (original) does NOT include:',
    'Article 131 covers disputes between the Centre and the states, between the Centre and some states, between states or between the Centre and some states on the matters specified, and other disputes referred by the President.',
    'hard',
    'Standard Reference',
    null,
    'ccd98796cd1a18a5e803436932d0992e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ccd98796cd1a18a5e803436932d0992e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Disputes relating to the election of the President'),
            ('B', 'Federal criminal cases'),
            ('C', 'Disputes between the Centre and the states'),
            ('D', 'Disputes between two or more states')
           ) as v(label, option_text)
 where q.question_hash = 'ccd98796cd1a18a5e803436932d0992e'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Public Interest Litigation'' in India was pioneered in the case of:',
    'PIL was pioneered in the 1960s and 1970s, notably in the case of S.P. Gupta v. State of West Bengal, when a letter was written to the Supreme Court by a journalist.',
    'hard',
    'Standard Reference',
    null,
    '9421e78980fdc2198dc6ecbe3bf2f482'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9421e78980fdc2198dc6ecbe3bf2f482'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kesavananda Bharati'),
            ('B', 'Hussainara Khatoon'),
            ('C', 'S.P. Gupta v. State of West Bengal'),
            ('D', 'Maneka Gandhi')
           ) as v(label, option_text)
 where q.question_hash = '9421e78980fdc2198dc6ecbe3bf2f482'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Judicial activism'' in India is best described as:',
    'Judicial activism denotes the proactive role of the judiciary in expanding and enforcing rights and in filling gaps left by the legislature, while judicial restraint is the opposite approach.',
    'medium',
    'Standard Reference',
    null,
    'da49bcf91faef809c6792aa2a8e573cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'da49bcf91faef809c6792aa2a8e573cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The proactive use of judicial power to protect rights and fill legislative gaps'),
            ('B', 'The non-use of judicial power'),
            ('C', 'The transfer of cases to the High Courts'),
            ('D', 'Judicial restraint and strict interpretation')
           ) as v(label, option_text)
 where q.question_hash = 'da49bcf91faef809c6792aa2a8e573cf'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Doctrine of Eclipse'' means:',
    'In the Golaknath case the Supreme Court said that an unconstitutional law is dormant but not dead, and a competent authority can revive it by amending it.',
    'medium',
    'Standard Reference',
    null,
    'cc0ef5ceb27292b44ab9f6d1b5fd50b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cc0ef5ceb27292b44ab9f6d1b5fd50b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judicial review is not available'),
            ('B', 'Fundamental rights are suspended'),
            ('C', 'A law inconsistent with the fundamental rights is dormant but not dead'),
            ('D', 'The Constitution can be amended by simple majority')
           ) as v(label, option_text)
 where q.question_hash = 'cc0ef5ceb27292b44ab9f6d1b5fd50b3'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Doctrine of Severability'' was propounded in the case of:',
    'The doctrine of severability was propounded in Shankari Prasad (1951) and was applied in Kesavananda Bharati (1973) and Minerva Mills (1980).',
    'hard',
    'Standard Reference',
    null,
    'dc5639b22131af8827adb8f0ac6765ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dc5639b22131af8827adb8f0ac6765ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kesavananda Bharati v. State of Kerala'),
            ('B', 'Minerva Mills v. Union of India'),
            ('C', 'Golaknath v. State of Punjab'),
            ('D', 'Shankari Prasad v. Union of India')
           ) as v(label, option_text)
 where q.question_hash = 'dc5639b22131af8827adb8f0ac6765ac'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Doctrine of Stare Decisis'' in Indian law means:',
    'Stare decisis means the Supreme Court is bound by its own decisions and the High Courts are bound by the decisions of the Supreme Court, subject to the power to review.',
    'medium',
    'Standard Reference',
    null,
    '6d0913a8ca44af1a63bb399e675c27c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6d0913a8ca44af1a63bb399e675c27c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Each court is free to decide'),
            ('B', 'The decisions of the Supreme Court are binding on lower courts'),
            ('C', 'The court may depart from its own decisions'),
            ('D', 'Higher courts may overrule lower courts')
           ) as v(label, option_text)
 where q.question_hash = '6d0913a8ca44af1a63bb399e675c27c4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''doctrine of prospective overruling'' means:',
    'Under prospective overruling, a decision of the Supreme Court applies to cases arising after the date of the judgment, saving the operation of the earlier decision in the pending matters.',
    'hard',
    'Standard Reference',
    null,
    'f2b980db83252528aa7d601adb87ff92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f2b980db83252528aa7d601adb87ff92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Past judgments are reopened'),
            ('B', 'No ruling can be overruled'),
            ('C', 'The new ruling applies to the case in which it is given'),
            ('D', 'The new ruling applies only to future cases')
           ) as v(label, option_text)
 where q.question_hash = 'f2b980db83252528aa7d601adb87ff92'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Chief Justice of India'' is appointed:',
    'Article 124 provides that the President appoints the CJI and other judges after consulting the CJI, the senior-most Supreme Court judge, the Law Minister and the Chief Justice of the High Court of the concerned state.',
    'medium',
    'Standard Reference',
    null,
    '9258ae8acc7870fbaec0e2b7505707d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9258ae8acc7870fbaec0e2b7505707d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'By Parliament'),
            ('B', 'By the collegium alone'),
            ('C', 'By the President after consultation with the judiciary'),
            ('D', 'By the President alone')
           ) as v(label, option_text)
 where q.question_hash = '9258ae8acc7870fbaec0e2b7505707d8'
on conflict (question_id, label) do nothing;

commit;
