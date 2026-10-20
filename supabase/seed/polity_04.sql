-- =============================================================================
-- polity_04.sql — polity question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 282'' of the Constitution:',
    'Article 282 empowers the Union to enter into the agreements with the international organisations and the financial institutions like the IMF and the World Bank and to guarantee the loans.',
    'hard',
    'Standard Reference',
    null,
    'e301ea623f6832e9be280492095bda12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e301ea623f6832e9be280492095bda12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the international treaties'),
            ('B', 'Deals with the emergency'),
            ('C', 'Deals with the defence'),
            ('D', 'Empowers the Union to enter into the agreements with the international financial institutions')
           ) as v(label, option_text)
 where q.question_hash = 'e301ea623f6832e9be280492095bda12'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following statements is/are correct in relation to the G4?',
    'The G4, with India, Brazil, Germany and Japan, campaigns for a permanent seat and a greater representation in the Security Council and it is supported by the Uniting for Consensus group.',
    'medium',
    'Standard Reference',
    null,
    'b26ef6e45824cf27eb5fde5c7e27a99b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b26ef6e45824cf27eb5fde5c7e27a99b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The G4 is a military alliance'),
            ('B', 'The G4 comprises the permanent members'),
            ('C', 'The G4 nations are India, Brazil, Germany and Japan and they campaign for the reform of the Security Council'),
            ('D', 'The G4 is a trade bloc')
           ) as v(label, option_text)
 where q.question_hash = 'b26ef6e45824cf27eb5fde5c7e27a99b'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following is correct in the case of the BRICS?',
    'The BRICS was the Brazil, Russia, India, China and South Africa and the term was first used by the Jim O''Neill in 2001 and South Africa joined in 2010.',
    'easy',
    'Standard Reference',
    null,
    '052e00c333cdaeefa538705d20dd5e92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '052e00c333cdaeefa538705d20dd5e92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a military alliance'),
            ('B', 'The BRICS was the acronym of Brazil, Russia, India, China and South Africa'),
            ('C', 'It was the Brazil, Russia, Indonesia, China and South Africa'),
            ('D', 'It was the Britain, Russia, India, China and Spain')
           ) as v(label, option_text)
 where q.question_hash = '052e00c333cdaeefa538705d20dd5e92'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Panchsheel was:',
    'The Panchsheel was first incorporated in the Agreement on Trade and Intercourse between the Tibet Region of China and India in 1954 and it was adopted in the Agreement of 1954 with China.',
    'medium',
    'Standard Reference',
    null,
    'a7ae9e3be567311db4b00d1e2bf09584'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a7ae9e3be567311db4b00d1e2bf09584'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the 1950 Agreement with China'),
            ('B', 'in the 1962 agreement'),
            ('C', 'in the 1947 agreement'),
            ('D', 'first incorporated in the 1954 Agreement on Trade and Intercourse between Tibet and India')
           ) as v(label, option_text)
 where q.question_hash = 'a7ae9e3be567311db4b00d1e2bf09584'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following statements regarding the The NAM is correct?',
    'The Non-Aligned Movement was the largest of the three groups at the Bandung Conference of 1955 and it was formally initiated at the first summit of the heads of state at Belgrade in September 1961.',
    'medium',
    'Standard Reference',
    null,
    '01752af89395b2cd563cb88289b265f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '01752af89395b2cd563cb88289b265f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NAM is the largest of the three at the Bandung of 1955 and it was formally initiated at the Belgrade of 1961'),
            ('B', 'It was started at the Belgrade in 1961 with 120 members'),
            ('C', 'It was a military alliance'),
            ('D', 'It was the group of the non-communist states')
           ) as v(label, option_text)
 where q.question_hash = '01752af89395b2cd563cb88289b265f9'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The SAARC was founded in 1985 with the charter signed:',
    'The South Asian Association for Regional Cooperation was founded with the charter signed in Dhaka on 8 December 1985 and it has its Secretariat in Kathmandu.',
    'medium',
    'Standard Reference',
    null,
    'e9355c85ad8afdb4262b203c8a16074a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e9355c85ad8afdb4262b203c8a16074a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'founded in 1995 in the Kathmandu'),
            ('B', 'founded in 1965 in the Karachi'),
            ('C', 'in the Dhaka'),
            ('D', 'founded in 1975 in the Colombo')
           ) as v(label, option_text)
 where q.question_hash = 'e9355c85ad8afdb4262b203c8a16074a'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The modern Commonwealth was:',
    'The modern Commonwealth was created by the London Declaration of 1949 and it is a voluntary association of the sovereign states with the British monarch as the head.',
    'medium',
    'Standard Reference',
    null,
    'dd01034b75d15162e5a6f144568630fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dd01034b75d15162e5a6f144568630fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'created in 1947'),
            ('B', 'created by the London Declaration of 1949'),
            ('C', 'created by the Balfour Declaration of 1919'),
            ('D', 'created by the 1931 Statute of Westminster')
           ) as v(label, option_text)
 where q.question_hash = 'dd01034b75d15162e5a6f144568630fb'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 367'' of the Constitution:',
    'Article 367 defines the expressions of the Government of India and the State and the Supreme Court and the High Courts and it was amended by the 24th Amendment to remove the Government of India Act of 1935 as the source.',
    'hard',
    'Standard Reference',
    null,
    'f23cbffec8649961ad02615d4fda5493'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f23cbffec8649961ad02615d4fda5493'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Defines the terms of the Government of India and the State'),
            ('B', 'Deals with the emergency'),
            ('C', 'Deals with the amendments'),
            ('D', 'Deals with the judiciary')
           ) as v(label, option_text)
 where q.question_hash = 'f23cbffec8649961ad02615d4fda5493'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution of India came:',
    'The Constitution of India is the longest written constitution in the world and it came into force on 26 January 1950, and the original text had 395 Articles, 22 Parts and 8 Schedules.',
    'easy',
    'Standard Reference',
    null,
    'fd95ff141443f2ade3af536a5452706b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd95ff141443f2ade3af536a5452706b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the shortest written constitution'),
            ('B', 'into force in 1947'),
            ('C', 'the second longest after the USA'),
            ('D', 'into force on 26 January 1950 and it is the longest written constitution')
           ) as v(label, option_text)
 where q.question_hash = 'fd95ff141443f2ade3af536a5452706b'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 18'' of the Constitution:',
    'Article 18 abolishes the titles and it permits the military and the academic distinctions, and the National awards were held to be the titles until the 18th Amendment of 1997.',
    'easy',
    'Standard Reference',
    null,
    '61ccdf35b2baae26dc9c60962af50808'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '61ccdf35b2baae26dc9c60962af50808'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the right to freedom of religion'),
            ('B', 'Deals with the abolition of the untouchability'),
            ('C', 'Abolishes the titles'),
            ('D', 'Guarantees the right to equality')
           ) as v(label, option_text)
 where q.question_hash = '61ccdf35b2baae26dc9c60962af50808'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The National awards were held:',
    'The Supreme Court held in the 1995 case that the Bharat Ratna, the Padma awards and the other national honours were the titles, and the 18th Amendment of 1997 excluded the awards from Article 18.',
    'hard',
    'Standard Reference',
    null,
    '8b5838edf3246611bf4243b466e32b17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b5838edf3246611bf4243b466e32b17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'to be the titles until the 18th Amendment of 1997'),
            ('B', 'never the awards'),
            ('C', 'inserted in 1950'),
            ('D', 'only to the states')
           ) as v(label, option_text)
 where q.question_hash = '8b5838edf3246611bf4243b466e32b17'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 17'' of the Constitution:',
    'Article 17 abolishes untouchability and forbids its practice in any form, and it is the only article that has been amended.',
    'easy',
    'Standard Reference',
    null,
    'e2c3d1c6a68598de4cde72cb58526e47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e2c3d1c6a68598de4cde72cb58526e47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the right to education'),
            ('B', 'Abolishes untouchability'),
            ('C', 'Prohibits the trafficking in the human beings'),
            ('D', 'Protects the monuments')
           ) as v(label, option_text)
 where q.question_hash = 'e2c3d1c6a68598de4cde72cb58526e47'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 16(3)'' was inserted by the:',
    'The Article 16(3), enabling the special provisions for the women, was inserted by the 42nd Amendment of 1976 and the 93rd Amendment of 2005 added the Article 16(4A) for the EWS.',
    'hard',
    'Standard Reference',
    null,
    'e92c3ea9e1cd14c36368b18b9dd700ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e92c3ea9e1cd14c36368b18b9dd700ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '44th Amendment of 1978'),
            ('B', '93rd Amendment of 2005'),
            ('C', '103rd Amendment of 2019'),
            ('D', '42nd Amendment of 1976')
           ) as v(label, option_text)
 where q.question_hash = 'e92c3ea9e1cd14c36368b18b9dd700ab'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 46'' of the Constitution:',
    'Article 46 directs the state to promote the educational and the economic interests of the weaker sections, the Scheduled Castes, the Scheduled Tribes and other disadvantaged groups.',
    'medium',
    'Standard Reference',
    null,
    '49632a41da93443080311431c84292de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '49632a41da93443080311431c84292de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the organisation of the panchayats'),
            ('B', 'Deals with the protection of the environment'),
            ('C', 'Directs the state to promote the educational and the economic interests of the weaker sections'),
            ('D', 'Deals with the equal justice and the free legal aid')
           ) as v(label, option_text)
 where q.question_hash = '49632a41da93443080311431c84292de'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 39(b)'' of the Constitution:',
    'Article 39(b) directs the state to secure a distribution of the ownership of the material resources of the community in the interest of the people.',
    'medium',
    'Standard Reference',
    null,
    '5c8293d5767818368b12095e8e0998ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c8293d5767818368b12095e8e0998ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the cottage industries'),
            ('B', 'Deals with the protection of the monuments'),
            ('C', 'Directs the state to secure a distribution of the ownership of the material resources in the interest of the people'),
            ('D', 'Deals with the free legal aid')
           ) as v(label, option_text)
 where q.question_hash = '5c8293d5767818368b12095e8e0998ef'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'In the context of the Article 43, which of the following is correct?',
    'The 42nd Amendment of 1976 added the promotion of the cottage industries in the rural areas to the Article 43.',
    'hard',
    'Standard Reference',
    null,
    'dbf945a00bc95ec243f1fbda29d04ccc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dbf945a00bc95ec243f1fbda29d04ccc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was amended by the 42nd Amendment to add the cottage industries in the rural areas'),
            ('B', 'Was amended by the 44th Amendment'),
            ('C', 'It deals with the free and compulsory education'),
            ('D', 'It deals with the uniform civil code')
           ) as v(label, option_text)
 where q.question_hash = 'dbf945a00bc95ec243f1fbda29d04ccc'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'In the context of the Article 48, which of the following is correct?',
    'The Article 48 directs the state to organise the agriculture and the animal husbandry on the modern lines and the prohibition of the slaughter of the cows was added by the 42nd Amendment.',
    'medium',
    'Standard Reference',
    null,
    '54279d7923c185d62674b46d9efdf134'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '54279d7923c185d62674b46d9efdf134'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the scientific research'),
            ('B', 'Deals with the cottage industries'),
            ('C', 'Deals with the education'),
            ('D', 'Directs the state to organise the agriculture and the animal husbandry on the modern lines')
           ) as v(label, option_text)
 where q.question_hash = '54279d7923c185d62674b46d9efdf134'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 41'' of the Constitution:',
    'Article 41 directs the state to secure the right to work, to education and to public assistance in certain cases and the right to a living wage and the right to the public assistance in the 42nd Amendment.',
    'medium',
    'Standard Reference',
    null,
    '5f83acb2942161e356a1672cd117892a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5f83acb2942161e356a1672cd117892a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the public health'),
            ('B', 'Directs the state to secure the right to work, to education and to public assistance in certain cases'),
            ('C', 'Deals with the living wage'),
            ('D', 'Deals with the cottage industries')
           ) as v(label, option_text)
 where q.question_hash = '5f83acb2942161e356a1672cd117892a'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 42'' of the Constitution:',
    'Article 42, added by the 42nd Amendment, directs the state to provide for the maternity relief and it was a significant advance for the women workers.',
    'medium',
    'Standard Reference',
    null,
    'e38e82ed70d6ce689fad387537fc7af1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e38e82ed70d6ce689fad387537fc7af1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the living wage'),
            ('B', 'Deals with the free legal aid'),
            ('C', 'Deals with the cottage industries'),
            ('D', 'Directs the state to provide for the maternity relief')
           ) as v(label, option_text)
 where q.question_hash = 'e38e82ed70d6ce689fad387537fc7af1'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Originally provided:',
    'The original Article 45 directed the state to provide for the free and compulsory education of the children up to the age of 14 and the 86th Amendment of 2002 replaced it with the early childhood care.',
    'medium',
    'Standard Reference',
    null,
    '4c0ada23a6dddf8691e619456b405ff3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c0ada23a6dddf8691e619456b405ff3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the uniform civil code'),
            ('B', 'for the free and compulsory education of the children up to the age of 14'),
            ('C', 'the cottage industries'),
            ('D', 'the environment')
           ) as v(label, option_text)
 where q.question_hash = '4c0ada23a6dddf8691e619456b405ff3'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Which of the following is correct in the case of the Article 47?',
    'The Article 47, amended by the 42nd Amendment, directs the state to raise the level of nutrition and improve the standard of living and to promote the public health.',
    'easy',
    'Standard Reference',
    null,
    '485805ff263fbe5e5543c11fdcc67efe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '485805ff263fbe5e5543c11fdcc67efe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It deals with the environment'),
            ('B', 'It deals with the uniform civil code'),
            ('C', 'Directs the state to raise the level of nutrition and improve the standard of living'),
            ('D', 'It deals with the free education')
           ) as v(label, option_text)
 where q.question_hash = '485805ff263fbe5e5543c11fdcc67efe'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''Article 21A'' was inserted by the:',
    'The Article 21A, providing for the free and compulsory education of the children of the age of six to fourteen, was inserted by the 86th Amendment of 2002.',
    'easy',
    'Standard Reference',
    null,
    'ef42492de49c647fb9c87cd4230b1a88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ef42492de49c647fb9c87cd4230b1a88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '86th Amendment of 2002'),
            ('B', '42nd Amendment of 1976'),
            ('C', '44th Amendment of 1978'),
            ('D', '93rd Amendment of 2005')
           ) as v(label, option_text)
 where q.question_hash = 'ef42492de49c647fb9c87cd4230b1a88'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''right to education'' in India became a fundamental right in:',
    'The right to education became a fundamental right with the 86th Amendment of 2002 and the RTE Act of 2009 gave it the operational shape from 1 April 2010.',
    'easy',
    'Standard Reference',
    null,
    'a41a73e059bc6a185d5dc844aff53178'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a41a73e059bc6a185d5dc844aff53178'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010 with the 44th Amendment'),
            ('B', '2015 with the 104th Amendment'),
            ('C', '2002 with the 86th Amendment'),
            ('D', '1993 with the 93rd Amendment')
           ) as v(label, option_text)
 where q.question_hash = 'a41a73e059bc6a185d5dc844aff53178'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'Which of the following statements regarding the The 21 fundamental duties is correct?',
    'The Eleventh Schedule, added by the 42nd Amendment of 1976, lists the twenty-one fundamental duties of the citizen.',
    'medium',
    'Standard Reference',
    null,
    '1b197574e627b4074d08da07f2ab06b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1b197574e627b4074d08da07f2ab06b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 21 fundamental duties'),
            ('B', 'The 12 recognised languages'),
            ('C', 'The 29 subjects of the Union List'),
            ('D', 'The 9 powers of the Parliament')
           ) as v(label, option_text)
 where q.question_hash = '1b197574e627b4074d08da07f2ab06b2'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 52'' of the Constitution:',
    'The Article 52 provides that the executive of the Union shall be exercised by the President and it vests the supreme command of the defence forces in him.',
    'easy',
    'Standard Reference',
    null,
    '80afcf60b93e462781a34d85213d4581'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '80afcf60b93e462781a34d85213d4581'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President is the head of the legislature'),
            ('B', 'The President of India is the head of the Union executive'),
            ('C', 'The Prime Minister is the head of the State'),
            ('D', 'The President is the head of the judiciary')
           ) as v(label, option_text)
 where q.question_hash = '80afcf60b93e462781a34d85213d4581'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 53'' of the Constitution:',
    'The Article 53 provides that the term of the President shall be five years from the date on which he enters into office and the Article 62 provides the same.',
    'medium',
    'Standard Reference',
    null,
    'cf50e03e8ae8e23e142cf5628b0a6b62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf50e03e8ae8e23e142cf5628b0a6b62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President is elected by the electoral college'),
            ('B', 'The President is the head of the Union executive'),
            ('C', 'The President''s oath is in the Third Schedule'),
            ('D', 'The term of the President is five years')
           ) as v(label, option_text)
 where q.question_hash = 'cf50e03e8ae8e23e142cf5628b0a6b62'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 74(2)'' of the Constitution:',
    'The Article 74(2) makes the advice of the Council of Ministers binding on the President, except in the cases specified in Article 163, and the 42nd and the 44th Amendments modified it.',
    'medium',
    'Standard Reference',
    null,
    'ffbced9d568129c134747f7f831c8252'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ffbced9d568129c134747f7f831c8252'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides that the Council of Ministers shall aid and advise the President who shall act in accordance with that advice'),
            ('B', 'It is about the oath of the ministers'),
            ('C', 'It is about the impeachment of the President'),
            ('D', 'It is about the qualifications of the President')
           ) as v(label, option_text)
 where q.question_hash = 'ffbced9d568129c134747f7f831c8252'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 163'' of the Constitution:',
    'The Article 163 provides that the Council of Ministers shall aid and advise the Governor and the Governor shall act in accordance with that advice, except as specified.',
    'medium',
    'Standard Reference',
    null,
    '7f45edc0520a57d57b48e03808ceb5af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7f45edc0520a57d57b48e03808ceb5af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is about the Union government'),
            ('B', 'It is about the judiciary'),
            ('C', 'Provides that the Council of Ministers shall aid and advise the Governor who shall act in accordance with that advice'),
            ('D', 'It is about the President')
           ) as v(label, option_text)
 where q.question_hash = '7f45edc0520a57d57b48e03808ceb5af'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 200'' of the Constitution:',
    'The Article 200 provides that the expenditure of the state shall be subject to the provisions of the proviso to Article 256 and the annual statement of the estimates and it is presented before the legislature.',
    'hard',
    'Standard Reference',
    null,
    '69b5f487ea15be7f7ae655187229d8d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '69b5f487ea15be7f7ae655187229d8d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is about the Public Account'),
            ('B', 'The expenditure of the state is subject to the proviso of Article 256 and the annual statement of the estimates'),
            ('C', 'It deals with the revenue expenditure'),
            ('D', 'It is about the Consolidated Fund')
           ) as v(label, option_text)
 where q.question_hash = '69b5f487ea15be7f7ae655187229d8d2'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 280'' of the Constitution deals with:',
    'The Article 280 provides for the constitution of a Finance Commission by the President every fifth year or earlier if necessary.',
    'easy',
    'Standard Reference',
    null,
    'e1112ba3c82caf6dde13bd430da0a857'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e1112ba3c82caf6dde13bd430da0a857'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Election Commission'),
            ('B', 'The Public Service Commissions'),
            ('C', 'The CAG'),
            ('D', 'The Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = 'e1112ba3c82caf6dde13bd430da0a857'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 263'' of the Constitution deals with:',
    'The Article 263 empowers the President to establish an Inter-State Council to inquire into and advise upon the disputes between the states and the subjects of the common interest.',
    'easy',
    'Standard Reference',
    null,
    '080950f08aa7d32d8dd498608671472d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '080950f08aa7d32d8dd498608671472d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GST Council'),
            ('B', 'The Planning Commission'),
            ('C', 'The Inter-State Council'),
            ('D', 'The Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '080950f08aa7d32d8dd498608671472d'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 262'' of the Constitution deals with:',
    'The Article 262 provides for the adjudication of the disputes relating to the waters of the inter-state rivers and for the creation of the tribunals for that purpose.',
    'medium',
    'Standard Reference',
    null,
    '14452ecac0e17b2056842287024cc447'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '14452ecac0e17b2056842287024cc447'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The adjudication of the inter-state water disputes'),
            ('B', 'The GST'),
            ('C', 'The election disputes'),
            ('D', 'The fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '14452ecac0e17b2056842287024cc447'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 269'' of the Constitution deals with:',
    'The Article 269 provides for the taxes levied by the Union but collected and appropriated by the states and the Article 269A for the inter-state trade of the goods and the services.',
    'hard',
    'Standard Reference',
    null,
    '65e13a239ddeed193e6d386e23c4cb4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65e13a239ddeed193e6d386e23c4cb4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The taxes levied by the states'),
            ('B', 'The GST'),
            ('C', 'The customs duties'),
            ('D', 'The taxes levied by the Union but collected and appropriated by the states')
           ) as v(label, option_text)
 where q.question_hash = '65e13a239ddeed193e6d386e23c4cb4a'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 268'' of the Constitution deals with:',
    'The Article 268 provides for the taxes levied by the Union but assigned to the states and the stamp duties are the important ones under it.',
    'medium',
    'Standard Reference',
    null,
    '11f871552861976a8d86458de302d3e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '11f871552861976a8d86458de302d3e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The excise duty'),
            ('B', 'The taxes levied by the Union but assigned to the states'),
            ('C', 'The taxes levied by the states'),
            ('D', 'The customs duty')
           ) as v(label, option_text)
 where q.question_hash = '11f871552861976a8d86458de302d3e9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Which of the following statements regarding the Article 356 is correct?',
    'In the S.R. Bommai case the Supreme Court laid down the guidelines for the floor test and the judicial review of the proclamation of the President''s Rule.',
    'medium',
    'Standard Reference',
    null,
    'e088157fc422c0244195b8a9c870d7ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e088157fc422c0244195b8a9c870d7ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The presidential pardon'),
            ('B', 'The emergency proclamation of the national emergency'),
            ('C', 'The ordinance'),
            ('D', 'The S.R. Bommai guidelines of the floor test and the judicial review of the proclamation')
           ) as v(label, option_text)
 where q.question_hash = 'e088157fc422c0244195b8a9c870d7ee'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''National Emergency'' under the Article 352 requires the approval of:',
    'The proclamation of the national emergency must be approved by both the houses of the Parliament by a special majority and it can be revoked at any time by a simple majority.',
    'medium',
    'Standard Reference',
    null,
    '2689f5e73db1c6052b01fc9d4890e04d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2689f5e73db1c6052b01fc9d4890e04d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A two-thirds majority of the Lok Sabha'),
            ('B', 'Both the houses of the Parliament by a special majority'),
            ('C', 'A simple majority of the Lok Sabha'),
            ('D', 'The President alone')
           ) as v(label, option_text)
 where q.question_hash = '2689f5e73db1c6052b01fc9d4890e04d'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 360'' of the Constitution provides for the financial emergency and it has never been:',
    'The financial emergency under the Article 360 has never been invoked in India and it is a much-restrained power than the national emergency.',
    'easy',
    'Standard Reference',
    null,
    'b61af127493f1a78186fc1686a585dee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b61af127493f1a78186fc1686a585dee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Invoked in 1991'),
            ('B', 'Invoked after the pandemic'),
            ('C', 'Invoked in India'),
            ('D', 'Invoked in 1971')
           ) as v(label, option_text)
 where q.question_hash = 'b61af127493f1a78186fc1686a585dee'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 359'' of the Constitution:',
    'The Article 359 allows the President to suspend the right to move the courts for the enforcement of the specified fundamental rights during a national emergency and the 44th Amendment limited the scope.',
    'hard',
    'Standard Reference',
    null,
    'f725c6664a3dc9ef6e1899e081b03553'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f725c6664a3dc9ef6e1899e081b03553'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Allows the suspension of the right to move the courts for the enforcement of the specified fundamental rights during a national emergency'),
            ('B', 'Allows the suspension of all the fundamental rights'),
            ('C', 'Deals with the financial emergency'),
            ('D', 'Deals with the President''s Rule')
           ) as v(label, option_text)
 where q.question_hash = 'f725c6664a3dc9ef6e1899e081b03553'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 365'' of the Constitution:',
    'The Article 365 provides that whenever a state is under the President''s Rule, the governance of the state shall vest in the President.',
    'medium',
    'Standard Reference',
    null,
    '0f32f3010eca55d3b8435520a6aa0788'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f32f3010eca55d3b8435520a6aa0788'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides that the governance of a state under the President''s Rule vests in the President'),
            ('B', 'Deals with the emergency'),
            ('C', 'Deals with the ordinance'),
            ('D', 'Deals with the budget')
           ) as v(label, option_text)
 where q.question_hash = '0f32f3010eca55d3b8435520a6aa0788'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 366'' of the Constitution:',
    'The Article 366 defines the expressions of the Government of India, the State, the public servant and the legal authority and it was amended by the 42nd Amendment.',
    'hard',
    'Standard Reference',
    null,
    'bc3f8c12f56644ffb713b1cff182cb28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bc3f8c12f56644ffb713b1cff182cb28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the emergency'),
            ('B', 'Deals with the judiciary'),
            ('C', 'Defines the terms of the Government of India and the State and the public servant'),
            ('D', 'Deals with the election of the President')
           ) as v(label, option_text)
 where q.question_hash = 'bc3f8c12f56644ffb713b1cff182cb28'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''42nd Amendment'' of 1976:',
    'The 42nd Amendment added the Articles 47A, 48A and 51A and the Tenth Schedule and it was the most sweeping amendment until the 44th.',
    'hard',
    'Standard Reference',
    null,
    'ecee84c68136eb1d4dd0a08ac4adf014'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ecee84c68136eb1d4dd0a08ac4adf014'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the GST Council'),
            ('B', 'Added the Articles 48A, 51A and the Tenth Schedule and the 14th, 15th, 16th, 17th and 18th Schedules'),
            ('C', 'It created the Tenth Schedule only'),
            ('D', 'It abolished the Legislative Council')
           ) as v(label, option_text)
 where q.question_hash = 'ecee84c68136eb1d4dd0a08ac4adf014'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''43rd Amendment'' of 1978:',
    'The 43rd Amendment of 1978 restored the power of the Parliament and the states in the Eighth Schedule of the Official Languages Act and it was done by the Janata government.',
    'hard',
    'Standard Reference',
    null,
    '7874a3cc1a7ad25100b2a8dbde050f45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7874a3cc1a7ad25100b2a8dbde050f45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the Tenth Schedule'),
            ('B', 'It removed the right to property'),
            ('C', 'It created the GST Council'),
            ('D', 'Restored the power of the Parliament and the states in the Eighth Schedule of the Official Languages Act')
           ) as v(label, option_text)
 where q.question_hash = '7874a3cc1a7ad25100b2a8dbde050f45'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''86th Amendment'' of 2002:',
    'The 86th Amendment of 2002 inserted the Article 21A for the free and compulsory education of the children of the age of six to fourteen and it also changed the Article 45.',
    'medium',
    'Standard Reference',
    null,
    'e84dca1283ba49a182b41c4da29dcdfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e84dca1283ba49a182b41c4da29dcdfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the GST Council'),
            ('B', 'Inserted the Article 21A for the right to education'),
            ('C', 'It created the Tenth Schedule'),
            ('D', 'It added the Ninth Schedule')
           ) as v(label, option_text)
 where q.question_hash = 'e84dca1283ba49a182b41c4da29dcdfc'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''91st Amendment'' of 2003:',
    'The 91st Amendment of 2003 read down the 84th Amendment and froze the allocation of the seats until the first census after 2026, and it was challenged in the 2008 case that was struck down in 2020.',
    'hard',
    'Standard Reference',
    null,
    '500b41c183b5c83c61bd0a3482c7924e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '500b41c183b5c83c61bd0a3482c7924e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It lowered the voting age'),
            ('B', 'It created the NITI Aayog'),
            ('C', 'Froze the allocation of the seats in the Lok Sabha and the assemblies until the census of 2026'),
            ('D', 'It added the Tenth Schedule')
           ) as v(label, option_text)
 where q.question_hash = '500b41c183b5c83c61bd0a3482c7924e'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''97th Amendment'' of 2011:',
    'The 97th Amendment of 2011 gave the constitutional status to the cooperative societies and created the Part IXB in the Constitution.',
    'medium',
    'Standard Reference',
    null,
    '39e995a204aaf1debfedd94319ddf60d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '39e995a204aaf1debfedd94319ddf60d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the Tenth Schedule'),
            ('B', 'It added the Article 21A'),
            ('C', 'It created the GST Council'),
            ('D', 'Gave the constitutional status to the cooperative societies')
           ) as v(label, option_text)
 where q.question_hash = '39e995a204aaf1debfedd94319ddf60d'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''103rd Amendment'' of 2019:',
    'The 103rd Amendment of 2019 provided for the 10 per cent reservation for the economically weaker sections beyond the existing 49.5 per cent and the 77th and the 81st Amendments were also challenged.',
    'medium',
    'Standard Reference',
    null,
    'c7e8efc64a93bc5cad08e48b567e0ed5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c7e8efc64a93bc5cad08e48b567e0ed5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provided for the 10 per cent reservation for the EWS'),
            ('B', 'It created the Tenth Schedule'),
            ('C', 'It amended the 91st Amendment'),
            ('D', 'It created the GST Council')
           ) as v(label, option_text)
 where q.question_hash = 'c7e8efc64a93bc5cad08e48b567e0ed5'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements regarding the May examine the annual plan is correct?',
    'The Gram Sabha may examine the annual plan and the prepared budget of the Panchayat and the elected members of the ward and it may make the recommendations on the allocation of the funds.',
    'medium',
    'Standard Reference',
    null,
    '11e5424cb4df9d7b6104fae3242f307d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11e5424cb4df9d7b6104fae3242f307d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It approves the master plan of the district'),
            ('B', 'It imposes the taxes'),
            ('C', 'May examine the annual plan and the budget of the Gram Panchayat and the elected members of the ward'),
            ('D', 'It elects the Sarpanch')
           ) as v(label, option_text)
 where q.question_hash = '11e5424cb4df9d7b6104fae3242f307d'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243F'' of the Constitution deals with:',
    'The Article 243F provides for the composition of the Panchayats consisting of the Panch, the members of the ward and the Sarpanch elected directly by the people.',
    'medium',
    'Standard Reference',
    null,
    'fa30d8a66e9c97a821dc1e937f68bb50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fa30d8a66e9c97a821dc1e937f68bb50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The District Planning Committee'),
            ('B', 'The composition of the Panchayats'),
            ('C', 'The Gram Sabha'),
            ('D', 'The State Election Commission')
           ) as v(label, option_text)
 where q.question_hash = 'fa30d8a66e9c97a821dc1e937f68bb50'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Consider the following statements. Which of them is correct with regard to the Article 243G?',
    'The Article 243G lists the powers and the responsibilities of the Panchayats and the Article 243H does the same for the municipalities.',
    'easy',
    'Standard Reference',
    null,
    '865bcabbe70a0fbdca39c246cd68aa63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '865bcabbe70a0fbdca39c246cd68aa63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lists the powers and the responsibilities of the Panchayats'),
            ('B', 'Deals with the Gram Sabha'),
            ('C', 'Deals with the composition'),
            ('D', 'Deals with the State Election Commission')
           ) as v(label, option_text)
 where q.question_hash = '865bcabbe70a0fbdca39c246cd68aa63'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243H'' of the Constitution:',
    'The Article 243H lists the powers and the responsibilities of the municipalities and it mirrors the Article 243G of the Panchayats.',
    'medium',
    'Standard Reference',
    null,
    '9c4b76f7f1e7c6bb4a41f076b23c23ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c4b76f7f1e7c6bb4a41f076b23c23ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the Gram Sabha'),
            ('B', 'Deals with the composition of the Panchayats'),
            ('C', 'Deals with the State Election Commission'),
            ('D', 'Lists the powers and the responsibilities of the municipalities')
           ) as v(label, option_text)
 where q.question_hash = '9c4b76f7f1e7c6bb4a41f076b23c23ae'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243ZD'' of the Constitution:',
    'The Article 243ZD provides for a District Planning Committee in every district to consolidate the plans of the Panchayats and the municipalities.',
    'medium',
    'Standard Reference',
    null,
    '66c78dc1dd62fee84f8a8d1e586dc90c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '66c78dc1dd62fee84f8a8d1e586dc90c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the State Election Commission'),
            ('B', 'Provides for the Ward Committee'),
            ('C', 'Provides for the District Planning Committee'),
            ('D', 'Provides for the Gram Sabha')
           ) as v(label, option_text)
 where q.question_hash = '66c78dc1dd62fee84f8a8d1e586dc90c'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243ZE'' of the Constitution:',
    'The Article 243ZE provides for the constitution of the Metropolitan Committees in the metropolitan areas and the Article 243ZC for the metropolitan districts.',
    'hard',
    'Standard Reference',
    null,
    '52a1ce4702b4a32f7be4e595ee146798'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '52a1ce4702b4a32f7be4e595ee146798'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the Ward Committee'),
            ('B', 'Provides for the Metropolitan Committees'),
            ('C', 'Provides for the District Planning Committee'),
            ('D', 'Provides for the Gram Sabha')
           ) as v(label, option_text)
 where q.question_hash = '52a1ce4702b4a32f7be4e595ee146798'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    '73rd Amendment came:',
    'The 73rd and the 74th Amendments came into force on 24 April 1993 and they gave the Panchayats and the municipalities a fixed five-year term and the constitutional status.',
    'easy',
    'Standard Reference',
    null,
    'a770e5d670acbd812f0ed524054d9045'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a770e5d670acbd812f0ed524054d9045'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'into force in 1992 with the three-year term'),
            ('B', 'of the urban local bodies'),
            ('C', 'the Gram Sabha'),
            ('D', 'into force on 24 April 1993 with the Panchayats having a five-year term')
           ) as v(label, option_text)
 where q.question_hash = 'a770e5d670acbd812f0ed524054d9045'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Ward Committee'' in a municipality:',
    'The 74th Amendment makes the constitution of the Ward Committees compulsory for every municipality with more than three wards and they consist of the elected members of the municipality and of the ward.',
    'hard',
    'Standard Reference',
    null,
    '7b1b72c3bc96bbe3b8d723cdfacbf3f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7b1b72c3bc96bbe3b8d723cdfacbf3f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Consists of the elected members of the municipality and of the wards within its jurisdiction'),
            ('B', 'Consists of the officials of the district administration'),
            ('C', 'Consists of the nominees of the state government'),
            ('D', 'Is optional for the municipalities with fewer than three wards')
           ) as v(label, option_text)
 where q.question_hash = '7b1b72c3bc96bbe3b8d723cdfacbf3f0'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''municipal corporations'' are the local bodies for the areas with a population of:',
    'A municipal corporation is constituted for the areas with a population of one lakh and above, and the 74th Amendment raised the threshold of the metropolitan areas to ten lakh.',
    'medium',
    'Standard Reference',
    null,
    '69cfa955b57506c78a5506652b0e48e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '69cfa955b57506c78a5506652b0e48e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Any area'),
            ('B', 'More than one lakh'),
            ('C', 'More than ten lakh'),
            ('D', 'More than two lakh')
           ) as v(label, option_text)
 where q.question_hash = '69cfa955b57506c78a5506652b0e48e0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'the NITI Aayog is correct is:',
    'The NITI Aayog, which replaced the Planning Commission in 2015, is chaired by the Prime Minister and it has the three-tier structure and it does not allocate the funds.',
    'easy',
    'Standard Reference',
    null,
    'e5637c27bbd9d4f932f87364bf2bfd09'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e5637c27bbd9d4f932f87364bf2bfd09'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is chaired by the President'),
            ('B', 'It allocates the plan funds'),
            ('C', 'It is a statutory body'),
            ('D', 'Is chaired by the Prime Minister and it has the three-tier structure')
           ) as v(label, option_text)
 where q.question_hash = 'e5637c27bbd9d4f932f87364bf2bfd09'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Is appointed by the President and can be:',
    'The CAG is a constitutional body under the Article 148, is appointed by the President and can be removed only in the manner of a Supreme Court judge.',
    'easy',
    'Standard Reference',
    null,
    'f2f4c023e6d42d319865922190b892c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f2f4c023e6d42d319865922190b892c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'removed only like a Supreme Court judge'),
            ('B', 'appointed by the Parliament'),
            ('C', 'a statutory body of the CAG Act of 1971 only'),
            ('D', 'the auditor of the states only')
           ) as v(label, option_text)
 where q.question_hash = 'f2f4c023e6d42d319865922190b892c4'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'the UPSC is correct is:',
    'The UPSC is a constitutional body under the Article 315 and its chairman and the members hold office for six years or up to the age of 65.',
    'medium',
    'Standard Reference',
    null,
    '73604c4b696afe152bfb4a5e728cbf83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '73604c4b696afe152bfb4a5e728cbf83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its members hold office for five years'),
            ('B', 'It is an executive body'),
            ('C', 'Is a constitutional body and its chairman and the members hold office for six years'),
            ('D', 'Is a statutory body')
           ) as v(label, option_text)
 where q.question_hash = '73604c4b696afe152bfb4a5e728cbf83'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 320'' of the Constitution:',
    'The Article 320 lists the specific functions of the Public Service Commissions and the Article 315 provides for their constitution.',
    'medium',
    'Standard Reference',
    null,
    'ea26791e99017a58be190ca80dea8c6d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ea26791e99017a58be190ca80dea8c6d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lists the specific functions of the UPSC'),
            ('B', 'Provides for the composition of the UPSC'),
            ('C', 'Provides for the tenure'),
            ('D', 'Deals with the State PSCs')
           ) as v(label, option_text)
 where q.question_hash = 'ea26791e99017a58be190ca80dea8c6d'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Article 316'' of the Constitution:',
    'The Article 316 provides for the tenure of the Chief Election Commissioner and the Election Commissioners and the Article 317 for their removal.',
    'hard',
    'Standard Reference',
    null,
    '571985be8802a89212acc0d752af6833'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '571985be8802a89212acc0d752af6833'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for their removal'),
            ('B', 'Provides for their appointment'),
            ('C', 'Deals with the functions'),
            ('D', 'Provides for the tenure of the Election Commissioners')
           ) as v(label, option_text)
 where q.question_hash = '571985be8802a89212acc0d752af6833'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The CEC and the ECs are appointed by the President and they can be:',
    'After the 2023 amendment the CEC has the status of a Supreme Court judge and the other commissioners are removable on the CEC''s recommendation.',
    'medium',
    'Standard Reference',
    null,
    'd370cf6769e8e9a8d72bad3ff0c6dc6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd370cf6769e8e9a8d72bad3ff0c6dc6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'removable at will'),
            ('B', 'elected'),
            ('C', 'removed only like a Supreme Court judge after the 2023 law'),
            ('D', 'appointed by the Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'd370cf6769e8e9a8d72bad3ff0c6dc6e'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''NCW'' was set up under:',
    'The National Commission for Women was set up in 1990 under the NCW Act of 1990 and it was the outcome of the recommendations of the Committee on the Status of Women in India.',
    'medium',
    'Standard Reference',
    null,
    'd4111f4a253d7381d0020228e7ee95eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd4111f4a253d7381d0020228e7ee95eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Protection of Civil Rights Act, 1955'),
            ('B', 'The National Commission for Women Act, 1990'),
            ('C', 'The National Commission for Backward Classes Act, 1993'),
            ('D', 'The National Human Rights Commission Act, 1993')
           ) as v(label, option_text)
 where q.question_hash = 'd4111f4a253d7381d0020228e7ee95eb'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''NCBC'' has the powers of the:',
    'The National Commission for Backward Classes has the powers of a civil court in the matters of the discrimination and the 1993 Act gave it that status.',
    'medium',
    'Standard Reference',
    null,
    'b6d5bb157201268b67864c503d2c48c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6d5bb157201268b67864c503d2c48c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tribunal'),
            ('B', 'Civil court for the matters of the discrimination'),
            ('C', 'Supreme Court'),
            ('D', 'High Court')
           ) as v(label, option_text)
 where q.question_hash = 'b6d5bb157201268b67864c503d2c48c0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''NHRC'' can inquire into:',
    'The NHRC can inquire into the violations of the human rights that have occurred within one year of the occurrence and it can also take up the cases of the armed forces.',
    'hard',
    'Standard Reference',
    null,
    'a56d0d3e064e2d605da9bba13c22bb51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a56d0d3e064e2d605da9bba13c22bb51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Any violation at any time'),
            ('B', 'Only the violations in the armed forces'),
            ('C', 'Only the civil cases'),
            ('D', 'The violations of the human rights within one year of the occurrence')
           ) as v(label, option_text)
 where q.question_hash = 'a56d0d3e064e2d605da9bba13c22bb51'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''CVC Act'' of 2003 gave the CVC:',
    'The Central Vigilance Commission (DPC) Act of 2003 gave the statutory status to the CVC, its establishment and the general superintendence of the Government servants.',
    'medium',
    'Standard Reference',
    null,
    'a7a4c437c82e7aee10fc66c68e3358c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a7a4c437c82e7aee10fc66c68e3358c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The statutory status'),
            ('B', 'The constitutional status'),
            ('C', 'The judicial status'),
            ('D', 'The financial autonomy')
           ) as v(label, option_text)
 where q.question_hash = 'a7a4c437c82e7aee10fc66c68e3358c6'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Consider the following statements. Which of them is correct with regard to the Article 148?',
    'Only the CAG is a constitutional body under the Article 148 and the UPSC and the CVC are the statutory bodies.',
    'medium',
    'Standard Reference',
    null,
    '2c02eaaba29dfb6b22ce6be098d1214e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c02eaaba29dfb6b22ce6be098d1214e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All the three are statutory'),
            ('B', 'All the three are executive'),
            ('C', 'The CAG is a constitutional body and the CVC and the UPSC are the statutory bodies'),
            ('D', 'All the three are constitutional')
           ) as v(label, option_text)
 where q.question_hash = '2c02eaaba29dfb6b22ce6be098d1214e'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Lokpal and the Lokayuktas Act of 2013 gave:',
    'The Lokpal and Lokayuktas Act of 2013 gave the statutory basis to the Lokpal and the Lokayuktas, which had existed only as the executive bodies.',
    'medium',
    'Standard Reference',
    null,
    'a66f457713211c16e090671664f696f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a66f457713211c16e090671664f696f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the statutory basis to the two ombudsmen'),
            ('B', 'of 1998'),
            ('C', 'a constitutional body'),
            ('D', 'under the NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = 'a66f457713211c16e090671664f696f0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''RTI Act'' was passed in:',
    'The Right to Information Act was passed in 2005 and it came into force on 21 October 2005 with the Central Information Commission in 2005.',
    'easy',
    'Standard Reference',
    null,
    'f068994681bc01020c2fd1b10d50929e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f068994681bc01020c2fd1b10d50929e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1999'),
            ('B', '2002'),
            ('C', '2008'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = 'f068994681bc01020c2fd1b10d50929e'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Which of the following is correct in the case of the Section 8(1)?',
    'The Section 8(1) of the RTI Act gives the citizens the right to the information from the public authorities and the Section 8(3) for the life and the liberty of the information.',
    'medium',
    'Standard Reference',
    null,
    '16f07c755417c2f2e1abdba319597cd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '16f07c755417c2f2e1abdba319597cd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the CIC'),
            ('B', 'Deals with the penalties'),
            ('C', 'Gives the citizens the right to the information from the public authorities'),
            ('D', 'Deals with the disqualification of the members of the legislature')
           ) as v(label, option_text)
 where q.question_hash = '16f07c755417c2f2e1abdba319597cd5'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Which of the following is correct in the case of the CIC?',
    'The Central Information Commission was constituted in 2005 and the first Chief Information Commissioner was the S. P. Gupta.',
    'hard',
    'Standard Reference',
    null,
    'f1044421143302962c5d2a1491ec0571'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f1044421143302962c5d2a1491ec0571'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a ministry'),
            ('B', 'Was constituted in 2005 and the first information commissioner was the S.P. Gupta'),
            ('C', 'It was constituted in 1997'),
            ('D', 'It was constituted in 2009')
           ) as v(label, option_text)
 where q.question_hash = 'f1044421143302962c5d2a1491ec0571'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In the context of the Article 19(1)(a), which of the following is correct?',
    'The freedom of speech and expression under the Article 19(1)(a) is subject to the reasonable restrictions of the Article 19(2) and the Supreme Court has read it expansively in the media and the art cases.',
    'medium',
    'Standard Reference',
    null,
    'd1500d4c6ed97d125e58be29c889ab13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd1500d4c6ed97d125e58be29c889ab13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guarantees the freedom of speech and expression subject to the reasonable restrictions'),
            ('B', 'It is absolute'),
            ('C', 'It applies only to the press'),
            ('D', 'It was repealed in 2020')
           ) as v(label, option_text)
 where q.question_hash = 'd1500d4c6ed97d125e58be29c889ab13'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The freedom of the press have:',
    'The freedom of the press is a part of the freedom of speech and expression under the Article 19(1)(a) and it is subject only to the reasonable restrictions of the Article 19(2).',
    'medium',
    'Standard Reference',
    null,
    'e26ce992fb52e72b0402cabb28384d0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e26ce992fb52e72b0402cabb28384d0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Article 19(2) does not apply to the press'),
            ('B', 'a part of the freedom of speech and expression and the restrictions are the reasonable ones'),
            ('C', 'an absolute right under the Article 19(1)(a)'),
            ('D', 'not a fundamental right')
           ) as v(label, option_text)
 where q.question_hash = 'e26ce992fb52e72b0402cabb28384d0c'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 19(2)'' of the Constitution lists eight reasonable restrictions, of which:',
    'Of the eight restrictions in the Article 19(2), four relate to the sovereignty and the integrity of India, the friendly relations with the foreign states, the public order and the incitement to an offence and the rest to the contempt of the court, the defamation, the morality and the decency and the incitement to a religious offence.',
    'hard',
    'Standard Reference',
    null,
    'd7286c340c9f687ea34acc823ec762e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7286c340c9f687ea34acc823ec762e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'All relate to the morality and the decency'),
            ('B', 'All relate to the contempt of the court and the the the'),
            ('C', 'None of the restrictions are on the speech'),
            ('D', 'Four relate to the sovereignty and the integrity of India, the friendly relations with the foreign states and the public order and the incitement to an offence')
           ) as v(label, option_text)
 where q.question_hash = 'd7286c340c9f687ea34acc823ec762e8'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 20(1)'' of the Constitution:',
    'The Article 20(1) says that no person shall be convicted of an offence in respect of any act or omission which was not in force at the time when the act or omission was committed.',
    'easy',
    'Standard Reference',
    null,
    '8f7b64d1278f56b5e392c4b097242354'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f7b64d1278f56b5e392c4b097242354'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prohibits the self-incrimination'),
            ('B', 'Deals with the writs'),
            ('C', 'Prohibits the ex-post facto criminal laws'),
            ('D', 'Prohibits the double jeopardy')
           ) as v(label, option_text)
 where q.question_hash = '8f7b64d1278f56b5e392c4b097242354'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following statements regarding the Article 20(2) is correct?',
    'The Article 20(2) says that no person shall be prosecuted and punished for the same offence more than once, and the narrower interpretation was given in the Sajjan Singh case.',
    'medium',
    'Standard Reference',
    null,
    '0467cb2a25f5913bb30126d546f6b9bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0467cb2a25f5913bb30126d546f6b9bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the preventive detention'),
            ('B', 'Prohibits the double jeopardy'),
            ('C', 'Prohibits the self-incrimination'),
            ('D', 'Prohibits the ex-post facto laws')
           ) as v(label, option_text)
 where q.question_hash = '0467cb2a25f5913bb30126d546f6b9bd'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 20(3)'' of the Constitution:',
    'The Article 20(3) says that no person accused of an offence shall be compelled to be a witness against himself.',
    'easy',
    'Standard Reference',
    null,
    '32d5da953acc452730746bef15a87030'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '32d5da953acc452730746bef15a87030'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prohibits the ex-post facto laws'),
            ('B', 'Prohibits the double jeopardy'),
            ('C', 'Deals with the preventive detention'),
            ('D', 'Protects against the self-incrimination')
           ) as v(label, option_text)
 where q.question_hash = '32d5da953acc452730746bef15a87030'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Protects the life and the personal liberty and it has been:',
    'The Article 21, the right to life and the personal liberty, has been read expansively by the Supreme Court to include the privacy, the clean environment, the livelihood, the health, the shelter and the speedy trial.',
    'easy',
    'Standard Reference',
    null,
    'cce8825f40d722f41f7377fa2133471b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cce8825f40d722f41f7377fa2133471b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only to the citizens'),
            ('B', 'not enforceable'),
            ('C', 'read expansively by the Supreme Court'),
            ('D', 'absolute')
           ) as v(label, option_text)
 where q.question_hash = 'cce8825f40d722f41f7377fa2133471b'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In the context of the Article 14, which of the following is correct?',
    'The Article 14 guarantees the equality before the law and the equal protection of the laws and the judicial review of the differential treatment is possible.',
    'easy',
    'Standard Reference',
    null,
    'd5127116c82cbaf1f4e8e03c0048fb2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd5127116c82cbaf1f4e8e03c0048fb2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The equality before the law and the equal protection of the laws'),
            ('B', 'The freedom of the religion'),
            ('C', 'The right to the property'),
            ('D', 'The right to the education')
           ) as v(label, option_text)
 where q.question_hash = 'd5127116c82cbaf1f4e8e03c0048fb2a'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following statements is/are correct in relation to the Article 15?',
    'The Article 15 prohibits the discrimination on the specified grounds and it permits the special provisions for the women, the children and the socially and the educationally backward classes.',
    'easy',
    'Standard Reference',
    null,
    '0feaca9b019fac4525dec08ece00c868'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0feaca9b019fac4525dec08ece00c868'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prohibits the discrimination on the grounds of the religion, the race, the caste, the sex or the place of birth and it permits the special provisions for the socially backward'),
            ('B', 'It is absolute'),
            ('C', 'It applies only to the private citizens'),
            ('D', 'It was repealed in 2020')
           ) as v(label, option_text)
 where q.question_hash = '0feaca9b019fac4525dec08ece00c868'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 15(4)'' permits:',
    'The Article 15(4) permits the reservation for the socially and the educationally backward classes and the Article 15(5) for the admission of the SC and the ST in the private institutions.',
    'medium',
    'Standard Reference',
    null,
    'cfdb2a3d29a8062bb006ab9231220fbf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cfdb2a3d29a8062bb006ab9231220fbf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reservation for the minorities'),
            ('B', 'The reservation for the socially and the educationally backward classes'),
            ('C', 'The reservation for the EWS'),
            ('D', 'The reservation for the women only')
           ) as v(label, option_text)
 where q.question_hash = 'cfdb2a3d29a8062bb006ab9231220fbf'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 16(4)'' permits:',
    'The Article 16(4) permits the reservation in the appointments for the backward classes that are not adequately represented in the services of the Union and the states.',
    'medium',
    'Standard Reference',
    null,
    '665f59d668e6ad5c7a28a359f6202e70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '665f59d668e6ad5c7a28a359f6202e70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reservation for the EWS'),
            ('B', 'The reservation for the women'),
            ('C', 'The reservation in the promotions'),
            ('D', 'The reservation in the appointments for the backward classes not adequately represented')
           ) as v(label, option_text)
 where q.question_hash = '665f59d668e6ad5c7a28a359f6202e70'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 29'' of the Constitution:',
    'The Article 29 protects the interests of the minorities and the Article 30 guarantees the right of the minorities to establish the educational institutions of their choice.',
    'easy',
    'Standard Reference',
    null,
    'efbf3a6bf36010665a4ba85ce45cafe1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'efbf3a6bf36010665a4ba85ce45cafe1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the freedom of the religion'),
            ('B', 'Deals with the equality'),
            ('C', 'Protects the interests of the minorities and the cultural and the educational rights'),
            ('D', 'Protects the property')
           ) as v(label, option_text)
 where q.question_hash = 'efbf3a6bf36010665a4ba85ce45cafe1'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 30'' of the Constitution:',
    'The Article 30(1) guarantees to all the minorities, whether religious or linguistic, the right to establish and administer the educational institutions of their choice.',
    'easy',
    'Standard Reference',
    null,
    'c4520a043c7baadb991bbd33d973c8dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c4520a043c7baadb991bbd33d973c8dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guarantees the right of the minorities to establish and administer the educational institutions of their choice'),
            ('B', 'Deals with the right to the property'),
            ('C', 'Deals with the freedom of the religion'),
            ('D', 'Deals with the special provisions')
           ) as v(label, option_text)
 where q.question_hash = 'c4520a043c7baadb991bbd33d973c8dc'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following statements regarding the Prohibits traffic is correct?',
    'The Article 23 prohibits the traffic in the human beings and the begar and the forced labour and the 103rd Amendment took the manual scavenging out of its ambit.',
    'medium',
    'Standard Reference',
    null,
    '975d36b54c9ad4cd87e47fba93d8459e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '975d36b54c9ad4cd87e47fba93d8459e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the child labour'),
            ('B', 'Deals with the garment factories'),
            ('C', 'Prohibits the traffic in the human beings and the forced labour'),
            ('D', 'Prohibits the untouchability')
           ) as v(label, option_text)
 where q.question_hash = '975d36b54c9ad4cd87e47fba93d8459e'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 25(1)'' of the Constitution:',
    'The Article 25(1) guarantees the freedom of conscience and the religion and it is subject to the public order, the morality, the health and the other provisions of the Part III.',
    'easy',
    'Standard Reference',
    null,
    'f7eb8107f72ad58f2734997f4caaaf0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f7eb8107f72ad58f2734997f4caaaf0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the freedom of the speech'),
            ('B', 'Deals with the equality'),
            ('C', 'Deals with the education'),
            ('D', 'Guarantees the freedom of conscience and the religion')
           ) as v(label, option_text)
 where q.question_hash = 'f7eb8107f72ad58f2734997f4caaaf0f'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 26'' of the Constitution:',
    'The Article 26 guarantees the freedom to manage the religious affairs of the religious denominations in the matters of religion, the worship and the maintenance of the institutions.',
    'medium',
    'Standard Reference',
    null,
    '867c2953ebab4ef3dbb4289b1bbd59d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '867c2953ebab4ef3dbb4289b1bbd59d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the property'),
            ('B', 'Guarantees the freedom to manage the religious affairs of the religious communities'),
            ('C', 'Deals with the freedom of the speech'),
            ('D', 'Deals with the equality')
           ) as v(label, option_text)
 where q.question_hash = '867c2953ebab4ef3dbb4289b1bbd59d8'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 27'' of the Constitution:',
    'The Article 27 guarantees the freedom of the religion and the worship and it was inserted by the 42nd Amendment.',
    'easy',
    'Standard Reference',
    null,
    '1fd03e169fc879c177293493e072461e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1fd03e169fc879c177293493e072461e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guarantees the freedom of the religion and the worship'),
            ('B', 'Prohibits the untouchability'),
            ('C', 'Deals with the property'),
            ('D', 'Deals with the speech')
           ) as v(label, option_text)
 where q.question_hash = '1fd03e169fc879c177293493e072461e'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 28'' of the Constitution:',
    'The Article 28, added by the 42nd Amendment, guarantees the freedom of the religion and the worship and the freedom to profess and practise the religion.',
    'medium',
    'Standard Reference',
    null,
    'bfd864305e109f4b4d736e2ac8ecb489'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bfd864305e109f4b4d736e2ac8ecb489'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the education'),
            ('B', 'Guarantees the freedom of the religion and the worship and the freedom to profess and practise the religion'),
            ('C', 'Prohibits the untouchability'),
            ('D', 'Deals with the speech')
           ) as v(label, option_text)
 where q.question_hash = 'bfd864305e109f4b4d736e2ac8ecb489'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 19(1)(f)'' of the Constitution:',
    'The Article 19(1)(c) guarantees the freedom of the association and the Article 19(1)(f) the freedom of the movement.',
    'medium',
    'Standard Reference',
    null,
    '86cebffa0715d7189e2ffa9c812dba56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86cebffa0715d7189e2ffa9c812dba56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is about the movement'),
            ('B', 'It is about the speech'),
            ('C', 'It is about the residence'),
            ('D', 'Guarantees the freedom to form the associations or the unions')
           ) as v(label, option_text)
 where q.question_hash = '86cebffa0715d7189e2ffa9c812dba56'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following statements is/are correct in relation to the Article 32?',
    'The Article 32 is the right to move the Supreme Court for the enforcement of the fundamental rights and the Article 226 is the corresponding right before the High Courts.',
    'easy',
    'Standard Reference',
    null,
    '0a70e24d85acf2166fcaddac737efbeb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a70e24d85acf2166fcaddac737efbeb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the right to the information'),
            ('B', 'It is the right to the petition'),
            ('C', 'It is the right to the enforcement of the fundamental rights by the Supreme Court'),
            ('D', 'It is the right to the writs in the High Court')
           ) as v(label, option_text)
 where q.question_hash = '0a70e24d85acf2166fcaddac737efbeb'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In the context of the Article 226, which of the following is correct?',
    'The Article 226 empowers the High Courts to issue the directions or the orders or the writs for the enforcement of the fundamental rights and for any other purpose, which is wider than the Article 32.',
    'easy',
    'Standard Reference',
    null,
    '914480a05831717ee36379777b892fa0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '914480a05831717ee36379777b892fa0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is about the finance commission'),
            ('B', 'Empowers the High Courts to issue the writs for the enforcement of the fundamental rights and for any other purpose'),
            ('C', 'It is the same as the Article 32'),
            ('D', 'It is about the CAG')
           ) as v(label, option_text)
 where q.question_hash = '914480a05831717ee36379777b892fa0'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which of the following statements regarding the The special leave to appeal is correct?',
    'The Article 136 empowers the Supreme Court to grant the special leave to appeal from the judgment of any court or tribunal in India and it is an extraordinary discretionary power.',
    'medium',
    'Standard Reference',
    null,
    'cfec290bdcf45001cc71220efc0033f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cfec290bdcf45001cc71220efc0033f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The special leave to appeal to the Supreme Court from any court or tribunal in India'),
            ('B', 'The appellate jurisdiction in the criminal cases'),
            ('C', 'The advisory jurisdiction'),
            ('D', 'The original jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = 'cfec290bdcf45001cc71220efc0033f3'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 141'' of the Constitution:',
    'The Article 141 provides that the law declared by the Supreme Court shall be binding on all the courts within the territory of India.',
    'easy',
    'Standard Reference',
    null,
    'a7c138768b9164cd4259df955f7b0764'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a7c138768b9164cd4259df955f7b0764'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the advisory jurisdiction'),
            ('B', 'Deals with the writs'),
            ('C', 'Makes the law declared by the Supreme Court binding on all the courts in India'),
            ('D', 'Provides for the appellate jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = 'a7c138768b9164cd4259df955f7b0764'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 144'' of the Constitution:',
    'The Article 144 binds the President to the advice of the Council of Ministers, except in the cases specified in the Article 163.',
    'medium',
    'Standard Reference',
    null,
    'cc4117634eff81680c2f222f3b17a168'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cc4117634eff81680c2f222f3b17a168'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President may act on his own discretion'),
            ('B', 'The President appoints the Council of Ministers'),
            ('C', 'The President is bound by the judiciary'),
            ('D', 'The President shall act in accordance with the advice of the Council of Ministers')
           ) as v(label, option_text)
 where q.question_hash = 'cc4117634eff81680c2f222f3b17a168'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 227'' of the Constitution:',
    'The Article 227 empowers the High Court to supervise all the courts and the tribunals in its jurisdiction and to issue the directions to them.',
    'medium',
    'Standard Reference',
    null,
    'dc064b30027c0202bd46950f61bfc35d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dc064b30027c0202bd46950f61bfc35d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Empowers the High Court to supervise all the courts and the tribunals in its jurisdiction'),
            ('B', 'Empowers the Supreme Court to supervise the High Courts'),
            ('C', 'Empowers the President to appoint the judges'),
            ('D', 'Empowers the CAG to audit the courts')
           ) as v(label, option_text)
 where q.question_hash = 'dc064b30027c0202bd46950f61bfc35d'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 235'' of the Constitution:',
    'The Article 235 gives the High Court the control of the district and the subordinate courts in its jurisdiction.',
    'medium',
    'Standard Reference',
    null,
    'c702e8a1305d449e965e7cf300e04ebe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c702e8a1305d449e965e7cf300e04ebe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gives the CAG the audit of the courts'),
            ('B', 'Gives the High Court the control of the district and the subordinate courts'),
            ('C', 'Gives the Supreme Court the control of the High Courts'),
            ('D', 'Gives the President the power to appoint the judges')
           ) as v(label, option_text)
 where q.question_hash = 'c702e8a1305d449e965e7cf300e04ebe'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 233'' of the Constitution:',
    'The Article 233 provides for the appointment of the district judges by the Governor in consultation with the High Court and the Article 234 for the High Court judges.',
    'medium',
    'Standard Reference',
    null,
    'd30580bdc6d03dcb45f5871b16f0d0d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd30580bdc6d03dcb45f5871b16f0d0d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the appointment of the High Court judges'),
            ('B', 'Provides for the tenure of the judges'),
            ('C', 'Deals with the impeachment'),
            ('D', 'Provides for the appointment of the district judges by the Governor in consultation with the High Court')
           ) as v(label, option_text)
 where q.question_hash = 'd30580bdc6d03dcb45f5871b16f0d0d5'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 217'' of the Constitution:',
    'The Article 217 provides for the removal of a High Court judge by the address of the legislature of the state concerned and the Article 124 for a Supreme Court judge.',
    'medium',
    'Standard Reference',
    null,
    'f1b06de500e5e5e6709ee05a00800e8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1b06de500e5e5e6709ee05a00800e8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the appointment'),
            ('B', 'Deals with the oath'),
            ('C', 'Provides for the removal of a High Court judge by the address of the state legislature'),
            ('D', 'Provides for the removal of a Supreme Court judge')
           ) as v(label, option_text)
 where q.question_hash = 'f1b06de500e5e5e6709ee05a00800e8a'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 124(4)'' of the Constitution:',
    'The Article 124(4) provides for the impeachment of a Supreme Court judge by an address passed in each house by a two-thirds majority of the total membership and by a majority of the total membership of the house.',
    'hard',
    'Standard Reference',
    null,
    '19d8e6a2c9c9796ee12c782ee087f422'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19d8e6a2c9c9796ee12c782ee087f422'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the removal of a High Court judge'),
            ('B', 'Provides for the appointment of the judges'),
            ('C', 'Deals with the qualifications'),
            ('D', 'Provides for the impeachment of a Supreme Court judge by a two-thirds majority of each house')
           ) as v(label, option_text)
 where q.question_hash = '19d8e6a2c9c9796ee12c782ee087f422'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 126'' of the Constitution:',
    'The Article 126 empowers the Supreme Court to make the laws and to lay down the procedure and the rules of the same nature as the rules of the Parliament.',
    'hard',
    'Standard Reference',
    null,
    '4ee8c115fde2926e9a2408b23b862ff9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4ee8c115fde2926e9a2408b23b862ff9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the review'),
            ('B', 'Empowers the Supreme Court to make the laws and to lay down the procedure'),
            ('C', 'Provides for the appointment of the judges'),
            ('D', 'Deals with the advisory jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = '4ee8c115fde2926e9a2408b23b862ff9'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 139A'' of the Constitution:',
    'The Article 139A, inserted in 1987, empowers the Supreme Court to withdraw and transfer the cases involving the same substantial question of law that are pending before several High Courts.',
    'hard',
    'Standard Reference',
    null,
    '252ddb179e6d290458799b5322e193da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '252ddb179e6d290458799b5322e193da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the review of the judgments'),
            ('B', 'Deals with the advisory jurisdiction'),
            ('C', 'Empowers the Supreme Court to withdraw and transfer the cases involving the same substantial question of law'),
            ('D', 'Provides for the special leave to appeal')
           ) as v(label, option_text)
 where q.question_hash = '252ddb179e6d290458799b5322e193da'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 145'' of the Constitution:',
    'The Article 145 provides for the appointment of the judges of the Supreme Court by the President after consulting the CJI and the senior-most judge and the state Chief Justice.',
    'medium',
    'Standard Reference',
    null,
    '84c6ad8031248e4b4467a1392bf18129'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '84c6ad8031248e4b4467a1392bf18129'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the appointment of the judges of the Supreme Court'),
            ('B', 'Deals with the salaries'),
            ('C', 'Deals with the oath'),
            ('D', 'Deals with the retirement')
           ) as v(label, option_text)
 where q.question_hash = '84c6ad8031248e4b4467a1392bf18129'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 146'' of the Constitution:',
    'The Article 146 provides that the salaries, the allowances and the pensions of the Supreme Court judges shall be charged on the Consolidated Fund and shall not be varied to their disadvantage after the appointment.',
    'medium',
    'Standard Reference',
    null,
    'd797573dbefa43f7946b6b17f03ae8f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd797573dbefa43f7946b6b17f03ae8f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the retirement'),
            ('B', 'Deals with the salaries and the allowances of the Supreme Court judges'),
            ('C', 'Deals with the appointment'),
            ('D', 'Deals with the oath')
           ) as v(label, option_text)
 where q.question_hash = 'd797573dbefa43f7946b6b17f03ae8f6'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 132'' of the Constitution:',
    'The Article 132 vests the appellate jurisdiction in the Supreme Court in the criminal cases and the Article 134 in the civil cases.',
    'medium',
    'Standard Reference',
    null,
    '67a02f796ab580d80e09e46673a4476f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '67a02f796ab580d80e09e46673a4476f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the appellate jurisdiction of the Supreme Court in the criminal cases'),
            ('B', 'Provides for the civil cases'),
            ('C', 'Deals with the advisory jurisdiction'),
            ('D', 'Deals with the review')
           ) as v(label, option_text)
 where q.question_hash = '67a02f796ab580d80e09e46673a4476f'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 131'' of the Constitution:',
    'The Article 131 vests the original jurisdiction in the Supreme Court in the specified federal disputes and the rest is exercised by the High Courts under the Article 226.',
    'medium',
    'Standard Reference',
    null,
    '1b26cb1738e2735f73eb6548866ed355'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b26cb1738e2735f73eb6548866ed355'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the appellate jurisdiction'),
            ('B', 'Deals with the advisory jurisdiction'),
            ('C', 'Deals with the writs'),
            ('D', 'Provides for the original jurisdiction of the Supreme Court in the specified federal disputes')
           ) as v(label, option_text)
 where q.question_hash = '1b26cb1738e2735f73eb6548866ed355'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 143'' of the Constitution:',
    'The Article 143 empowers the President to refer any matter of importance or difficulty to the Supreme Court for its opinion and the opinion is not binding but is authoritative.',
    'easy',
    'Standard Reference',
    null,
    '7cb5ae313f74c183b009a710c953fa79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7cb5ae313f74c183b009a710c953fa79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the review'),
            ('B', 'Deals with the writs'),
            ('C', 'Empowers the President to refer the matters of the importance or the difficulty to the Supreme Court for its opinion'),
            ('D', 'Deals with the appellate jurisdiction')
           ) as v(label, option_text)
 where q.question_hash = '7cb5ae313f74c183b009a710c953fa79'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Kesavananda Bharati'' case of 1973:',
    'The Kesavananda Bharati case of 1973, by a 7-6 majority, laid down the basic structure doctrine and the Minerva Mills case of 1980 harmonised it with the judicial review.',
    'medium',
    'Standard Reference',
    null,
    '78ee9cc9fa06b4bd3f3178576ae14290'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '78ee9cc9fa06b4bd3f3178576ae14290'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Laid down the basic structure doctrine'),
            ('B', 'Established the absolute liability'),
            ('C', 'Upheld the President''s Rule'),
            ('D', 'Gave the right to privacy')
           ) as v(label, option_text)
 where q.question_hash = '78ee9cc9fa06b4bd3f3178576ae14290'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Golaknath'' case of 1967:',
    'In the Golaknath case the Supreme Court held that the Parliament could not amend the fundamental rights, and it introduced the doctrine of the eclipse.',
    'hard',
    'Standard Reference',
    null,
    'bf5c87de47ef474bf8821fb6e09490f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bf5c87de47ef474bf8821fb6e09490f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Laid down the basic structure doctrine'),
            ('B', 'Upheld the President''s Rule'),
            ('C', 'Recognised the right to privacy'),
            ('D', 'Held that the fundamental rights could not be amended by the Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'bf5c87de47ef474bf8821fb6e09490f4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Maneka Gandhi'' case of 1978:',
    'In the Maneka Gandhi case the Supreme Court held that the Article 21 has the procedural and the substantive dimensions and that the procedure must be right, just and fair.',
    'hard',
    'Standard Reference',
    null,
    '392259141faa42a1d23879c793ff66c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '392259141faa42a1d23879c793ff66c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Upheld the President''s Rule'),
            ('B', 'Recognised the right to privacy'),
            ('C', 'Held that the Article 21 has the procedural and the substantive dimensions'),
            ('D', 'Laid down the basic structure doctrine')
           ) as v(label, option_text)
 where q.question_hash = '392259141faa42a1d23879c793ff66c0'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''S.R. Bommai'' case of 1994:',
    'In the S.R. Bommai case the Supreme Court laid down the guidelines for the floor test and held that the proclamation of the President''s Rule is subject to the judicial review.',
    'medium',
    'Standard Reference',
    null,
    'c9d88de180c5898a6703ce31743f1806'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9d88de180c5898a6703ce31743f1806'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Upheld the presidential election'),
            ('B', 'Held that the President''s Rule is subject to the judicial review'),
            ('C', 'Laid down the basic structure doctrine'),
            ('D', 'Recognised the right to privacy')
           ) as v(label, option_text)
 where q.question_hash = 'c9d88de180c5898a6703ce31743f1806'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which of the following is correct in the case of the Kesavananda?',
    'In the Minerva Mills case of 1980 the Supreme Court held that the harmony and the balance between the parts of the Constitution is a basic feature and that both the judicial review and the basic structure doctrine are complementary.',
    'hard',
    'Standard Reference',
    null,
    '426da3f6d1e2119ae2ed6b9b5705c5b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '426da3f6d1e2119ae2ed6b9b5705c5b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Minerva Mills case of 1980 created the NJAC'),
            ('B', 'The Minerva Mills case of 1980 made the right to property fundamental'),
            ('C', 'The Minerva Mills case of 1980 harmonised the basic structure and the judicial review'),
            ('D', 'The Minerva Mills case of 1980 abolished the judicial review')
           ) as v(label, option_text)
 where q.question_hash = '426da3f6d1e2119ae2ed6b9b5705c5b6'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Bureau of Indian Standards, the national standards body of India, functions under the:',
    'The Bureau of Indian Standards is the national standards body of India and it works under the Bureau of Indian Standards Act, 1986, which replaced the Indian Standards Act of 1947 and took effect on 1 April 1987.',
    'medium',
    'Standard Reference',
    null,
    '470eda55a8036fb0d7a286c31a6e970d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '470eda55a8036fb0d7a286c31a6e970d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bureau of Indian Standards Act, 1986'),
            ('B', 'Indian Standards Act, 1947'),
            ('C', 'Weights and Measures Act, 1950'),
            ('D', 'Trade Marks Act, 1999')
           ) as v(label, option_text)
 where q.question_hash = '470eda55a8036fb0d7a286c31a6e970d'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A ''Special Mention'' in the Parliament of India refers to:',
    'A Special Mention is a matter of sufficient public importance that a member raises outside the normal agenda of the House and that the Speaker permits to be made, but it is not answered in the House.',
    'medium',
    'Standard Reference',
    null,
    '5448e7e6e3ea15ca1bfc48172fdd590c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5448e7e6e3ea15ca1bfc48172fdd590c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A discussion on a matter of urgent public importance following a statement in the House'),
            ('B', 'A motion for the removal of the Speaker'),
            ('C', 'A motion of no confidence against the Council of Ministers'),
            ('D', 'A matter of sufficient public importance that is raised outside the normal agenda of the House and is not answered')
           ) as v(label, option_text)
 where q.question_hash = '5448e7e6e3ea15ca1bfc48172fdd590c'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Question Hour'' in the Lok Sabha is the time allotted for:',
    'The Question Hour is the first hour of every sitting of the Lok Sabha in which the members ask questions and the ministers answer them on the floor of the House. Starred questions are answered orally, while unstarred ones are answered on the same day in writing.',
    'easy',
    'Standard Reference',
    null,
    '63e5eebf4837f8c7f6c2af549e3724a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '63e5eebf4837f8c7f6c2af549e3724a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The discussion on the Budget and the Finance Bill'),
            ('B', 'The asking of questions and the answering of them by the ministers'),
            ('C', 'The motions of thanks and the no-confidence motions'),
            ('D', 'The introduction of the private members'' bills')
           ) as v(label, option_text)
 where q.question_hash = '63e5eebf4837f8c7f6c2af549e3724a6'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Under the Unlawful Activities (Prevention) Act, 1967, the notification of a terrorist organisation is issued by:',
    'Under Section 35 of the Unlawful Activities (Prevention) Act, 1967, the Central Government notifies an organisation as a terrorist organisation after consultation with the State Government, and the organisation may appeal to the newly created Terrorism Appeal Tribunal.',
    'hard',
    'Standard Reference',
    null,
    'f4a36286b436b17564c65e187e30f97e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f4a36286b436b17564c65e187e30f97e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State Government on the recommendation of the State Police'),
            ('B', 'The Central Government after consultation with the State Government'),
            ('C', 'The Central Bureau of Investigation on its own motion'),
            ('D', 'The National Investigation Agency')
           ) as v(label, option_text)
 where q.question_hash = 'f4a36286b436b17564c65e187e30f97e'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Section 124A of the Indian Penal Code deals with:',
    'Section 124A of the Indian Penal Code punishes sedition, that is the act of bringing or attempting to bring disaffection towards the Government established by law in India, and the Court of Session tries the offence under the law.',
    'medium',
    'Standard Reference',
    null,
    'ae2dd43fe4a70cfac43a69b0e6e9bde0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ae2dd43fe4a70cfac43a69b0e6e9bde0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The offence of being a member of an unlawful organization'),
            ('B', 'The punishment for the murder of a public servant'),
            ('C', 'Sedition, that is the act of bringing or attempting to bring disaffection towards the Government established by law in India'),
            ('D', 'The unlawful assembly of more than twenty persons')
           ) as v(label, option_text)
 where q.question_hash = 'ae2dd43fe4a70cfac43a69b0e6e9bde0'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Foreigners Act, 1946 provides for the detention of a foreigner in the interest of:',
    'Section 3 of the Foreigners Act, 1946 empowers the Central Government to detain a foreigner, or to direct that a foreigner be detained, in the interest of the sovereignty, security and the friendly relations of India.',
    'hard',
    'Standard Reference',
    null,
    '861b8ea14f9b051c35e748693a6c2711'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '861b8ea14f9b051c35e748693a6c2711'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sovereignty, security and the friendly relations of India'),
            ('B', 'The prevention of the illegal migration of the labour'),
            ('C', 'The enforcement of the foreign exchange regulations'),
            ('D', 'The economic interests of the State')
           ) as v(label, option_text)
 where q.question_hash = '861b8ea14f9b051c35e748693a6c2711'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The proclamation of a National Emergency under Article 352 can be issued by the President:',
    'Article 352 allows the President to proclaim a National Emergency on the advice of the Union Cabinet when the security of India or any part of it is threatened by war, external aggression or armed rebellion. The proclamation must be approved by both Houses within one month by a special majority.',
    'medium',
    'Standard Reference',
    null,
    '108ac5d75c8d13460f8faba1050aedd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '108ac5d75c8d13460f8faba1050aedd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'On the advice of the Chief Minister of the state concerned'),
            ('B', 'On the recommendation of the Lok Sabha alone'),
            ('C', 'On the recommendation of the Election Commission'),
            ('D', 'On the advice of the Union Cabinet')
           ) as v(label, option_text)
 where q.question_hash = '108ac5d75c8d13460f8faba1050aedd7'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The North-Eastern Council was set up under the:',
    'The North-Eastern Council was set up under the North-Eastern Council Act, 1971 to promote the cooperative action and the coordinated development of the north-eastern region. It is not a constitutional body and the Sixth Schedule deals with the administration of the tribal areas.',
    'hard',
    'Standard Reference',
    null,
    '99a480b37bfb52c33041df60c9902b16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '99a480b37bfb52c33041df60c9902b16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sixth Schedule of the Constitution'),
            ('B', 'North-Eastern Council Act, 1971'),
            ('C', 'North-Eastern Areas (Reorganisation) Act, 1971'),
            ('D', 'States Reorganisation Act, 1956')
           ) as v(label, option_text)
 where q.question_hash = '99a480b37bfb52c33041df60c9902b16'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Unique Identification Authority of India became a statutory body under the:',
    'The Aadhaar (Unique Identification Authority of India) Act, 2009, later renamed as the Unique Identification Authority of India Act, 2016, made the UIDAI a statutory body, replacing the earlier set up of the Authority as an executive body of the Government of India.',
    'hard',
    'Standard Reference',
    null,
    '746f3a377614244d989975eff242377c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '746f3a377614244d989975eff242377c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aadhaar (Unique Identification Authority of India) Act, 2009'),
            ('B', 'Digital Personal Data Protection Act, 2023'),
            ('C', 'Information Technology Act, 2000'),
            ('D', 'Passport (Entry into India) Act, 1920')
           ) as v(label, option_text)
 where q.question_hash = '746f3a377614244d989975eff242377c'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A censure motion can be moved in the Lok Sabha against:',
    'A censure motion can be moved against a minister and it is used to express the disapproval of the policies and the conduct of a minister. A motion of no confidence can be moved against the Council of Ministers as a whole.',
    'medium',
    'Standard Reference',
    null,
    '3e52ae8f3f83743a95fc749bfa2d3b00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e52ae8f3f83743a95fc749bfa2d3b00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Comptroller and Auditor General'),
            ('B', 'The Speaker of the House'),
            ('C', 'A minister'),
            ('D', 'The Deputy Speaker')
           ) as v(label, option_text)
 where q.question_hash = '3e52ae8f3f83743a95fc749bfa2d3b00'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'An ordinance can be promulgated by the President only when:',
    'Under Article 123, the President can promulgate an ordinance only when either House of Parliament is not in session, and every ordinance must be laid before Parliament and ceases to operate six weeks after Parliament reassembles, unless approved earlier.',
    'medium',
    'Standard Reference',
    null,
    '85543a8c4c0e9c3a6e40506cd0715eb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '85543a8c4c0e9c3a6e40506cd0715eb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Parliament has been dissolved'),
            ('B', 'The Lok Sabha has adjourned sine die'),
            ('C', 'The Council of States has not passed the Bill'),
            ('D', 'Both the Houses of Parliament are not in session')
           ) as v(label, option_text)
 where q.question_hash = '85543a8c4c0e9c3a6e40506cd0715eb9'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The First Amendment Act of 1951, besides adding the Ninth Schedule, also:',
    'The First Amendment Act of 1951 inserted the Ninth Schedule, enlarged the Eighth Schedule from eight to fourteen languages, added the words ''Sovereign'' and ''Democratic'' to the Preamble and set out the procedure for amending the Constitution in Article 368.',
    'easy',
    'Standard Reference',
    null,
    '844ccd8bfff53cbb1d43425e474a7361'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '844ccd8bfff53cbb1d43425e474a7361'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'added the words ''Sovereign'' and ''Democratic'' to the Preamble and expanded the Eighth Schedule to fourteen languages'),
            ('B', 'created the office of the Deputy Prime Minister'),
            ('C', 'abolished the Part IV of the Constitution'),
            ('D', 'introduced the anti-defection law in the Tenth Schedule')
           ) as v(label, option_text)
 where q.question_hash = '844ccd8bfff53cbb1d43425e474a7361'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Seventh Amendment Act, 1956'' is notable for:',
    'The States Reorganisation Act of 1956 was given constitutional status by the Seventh Amendment, which abolished the four-fold classification of the States and recast the First Schedule in terms of the new linguistic States.',
    'easy',
    'Standard Reference',
    null,
    '7d6593fa39dffbe6a5e7e65aa5fe0f52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7d6593fa39dffbe6a5e7e65aa5fe0f52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'creating the office of the Vice-President of India'),
            ('B', 'abolishing the Part A, B, C and D classification of the States and revising the First Schedule'),
            ('C', 'introducing the Goods and Services Tax'),
            ('D', 'abolishing the privy purses of the princely states')
           ) as v(label, option_text)
 where q.question_hash = '7d6593fa39dffbe6a5e7e65aa5fe0f52'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Sixth Amendment Act, 1956'' provided for:',
    'The Sixth Amendment divided the Seventh Schedule into the Union List, the State List and the Concurrent List, and the Third Amendment of 1952 had already added the Fifth and Sixth Schedules for tribal areas.',
    'easy',
    'Standard Reference',
    null,
    '3be0a1f80da3f7dd064c97bb5169ece9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3be0a1f80da3f7dd064c97bb5169ece9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the office of the Governor-General'),
            ('B', 'the introduction of the collegium system'),
            ('C', 'the division of the Seventh Schedule into three lists'),
            ('D', 'the creation of the Eleventh Schedule')
           ) as v(label, option_text)
 where q.question_hash = '3be0a1f80da3f7dd064c97bb5169ece9'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Third Amendment Act, 1952'' provided for:',
    'The Third Amendment of 1952 added the Fifth and Sixth Schedules for the administration of tribal areas, and the Fourteenth Amendment later replaced these two with the present Fourth Schedule.',
    'easy',
    'Standard Reference',
    null,
    '54d0f7914cc82f4431e0ac487da8d9db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '54d0f7914cc82f4431e0ac487da8d9db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the extension of voting rights to all adults'),
            ('B', 'the introduction of the Goods and Services Tax'),
            ('C', 'the creation of the Tenth Schedule'),
            ('D', 'the addition of the Fifth and Sixth Schedules dealing with tribal areas')
           ) as v(label, option_text)
 where q.question_hash = '54d0f7914cc82f4431e0ac487da8d9db'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Ninth Amendment Act, 1960'' provided for:',
    'The Ninth Amendment provided for a separate electoral college for the President and the Vice-President and made provision for the election of the Deputy Speaker as Speaker when the vacancy is caused by death or otherwise.',
    'easy',
    'Standard Reference',
    null,
    '70e35d6c44df1543a34de9919e5cbd29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '70e35d6c44df1543a34de9919e5cbd29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the introduction of the National Judicial Appointments Commission'),
            ('B', 'the abolition of the Council of Ministers'),
            ('C', 'the creation of the Planning Commission'),
            ('D', 'a separate elector for the election of the President and of the Vice-President')
           ) as v(label, option_text)
 where q.question_hash = '70e35d6c44df1543a34de9919e5cbd29'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Tenth Amendment Act, 1961'' added:',
    'The Tenth Amendment added the Eleventh Schedule with twenty-nine items that may be devolved to Panchayats, and the Twelfth Schedule with similar items for municipalities was added by the Seventy-Fourth Amendment of 1992.',
    'easy',
    'Standard Reference',
    null,
    '1282403dc1d856942ba232374a6f8e8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1282403dc1d856942ba232374a6f8e8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Eleventh Schedule containing twenty-nine subjects relating to Panchayats'),
            ('B', 'the Twelfth Schedule relating to municipalities'),
            ('C', 'the Tenth Schedule on defection'),
            ('D', 'the Ninth Schedule of laws protected from judicial review')
           ) as v(label, option_text)
 where q.question_hash = '1282403dc1d856942ba232374a6f8e8d'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Twelfth Amendment Act, 1962'' provided for:',
    'The Twelfth Amendment of 1962 extended the Fifth Schedule to the tribal areas of Assam, and the Fourteenth Amendment of 1963 then created the Fourth Schedule of seats for the Union Territories in the Lok Sabha.',
    'easy',
    'Standard Reference',
    null,
    '7e917aa590d025b0a64da0a635bf2cc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7e917aa590d025b0a64da0a635bf2cc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the introduction of the National Commission for Backward Classes'),
            ('B', 'the extension of the Fifth Schedule provisions to the tribal areas of Assam'),
            ('C', 'the creation of the Second Schedule'),
            ('D', 'the abolition of Part VI of the Constitution')
           ) as v(label, option_text)
 where q.question_hash = '7e917aa590d025b0a64da0a635bf2cc4'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Thirteenth Amendment Act, 1962'' provided for:',
    'The Thirteenth Amendment inserted Part IX and the Eleventh Schedule for Panchayats, and the Seventy-Third Amendment of 1992 later gave the three-tier Panchayati Raj system constitutional status.',
    'easy',
    'Standard Reference',
    null,
    '1c27ccd0613c35b8b263bae04db2ac23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1c27ccd0613c35b8b263bae04db2ac23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the creation of the office of the Lokpal'),
            ('B', 'the Second Schedule of emoluments'),
            ('C', 'Part IX containing the Panchayats and the Eleventh Schedule'),
            ('D', 'the abolition of the office of the Governor-General')
           ) as v(label, option_text)
 where q.question_hash = '1c27ccd0613c35b8b263bae04db2ac23'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Sixteenth Amendment Act, 1963'' concerned:',
    'The Sixteenth Amendment added the Third Schedule setting out the oaths and affirmations for the President, ministers, judges and legislators, and the Seventeenth and Twentieth Amendments also touched this Schedule.',
    'easy',
    'Standard Reference',
    null,
    '421a970a26a89191354f99cf87f653bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '421a970a26a89191354f99cf87f653bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Eighth Schedule of languages'),
            ('B', 'the Second Schedule of emoluments'),
            ('C', 'the Fourth Schedule of seats for the Union Territories'),
            ('D', 'the Third Schedule of forms of oaths and affirmations for the members of the executive, legislature and judiciary')
           ) as v(label, option_text)
 where q.question_hash = '421a970a26a89191354f99cf87f653bf'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Nineteenth Amendment Act, 1966'':',
    'The Nineteenth Amendment of 1966 abolished Part IV, which contained the Directive Principles, on the argument that they were more appropriately placed in the Fundamental Rights chapter, and it also amended Part III and the Seventh Schedule.',
    'easy',
    'Standard Reference',
    null,
    '30de2fb8b46c658aa0f35943ac5d878c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '30de2fb8b46c658aa0f35943ac5d878c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'abolished Part IV of the Constitution and made consequential changes'),
            ('B', 'created the office of the Speaker of the Lok Sabha'),
            ('C', 'introduced the Tenth Schedule'),
            ('D', 'abolished the Legislative Councils of the States')
           ) as v(label, option_text)
 where q.question_hash = '30de2fb8b46c658aa0f35943ac5d878c'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Twenty-First Amendment Act, 1967'' provided for:',
    'The Twenty-First Amendment of 1967 added the Tenth Schedule, which insulated the anti-defection provisions of the Tenth Schedule from the scrutiny of the courts, and the Fifty-Second Amendment of 1985 added the detailed provisions on the Tenth Schedule.',
    'easy',
    'Standard Reference',
    null,
    '8581cdc004e11522f7cdd255e8538294'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8581cdc004e11522f7cdd255e8538294'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Seventh Schedule of distribution of powers'),
            ('B', 'the Third Schedule of oaths'),
            ('C', 'the Tenth Schedule containing the provisions about the disqualification of members on the ground of defection'),
            ('D', 'the Eighth Schedule of languages')
           ) as v(label, option_text)
 where q.question_hash = '8581cdc004e11522f7cdd255e8538294'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Twenty-Third Amendment Act, 1969'' inserted:',
    'The Twenty-Third Amendment of 1969 added Article 39A on equal justice and free legal aid, Article 44 on a uniform civil code and Article 48A on the protection and improvement of the environment.',
    'easy',
    'Standard Reference',
    null,
    'c9ccb1360270dc3a70bb33b6f6645930'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9ccb1360270dc3a70bb33b6f6645930'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 21A and Article 45'),
            ('B', 'Articles 39A, 44 and 48A'),
            ('C', 'Article 32A'),
            ('D', 'Article 300A')
           ) as v(label, option_text)
 where q.question_hash = 'c9ccb1360270dc3a70bb33b6f6645930'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Twenty-Fourth Amendment Act, 1971'':',
    'The Twenty-Fourth Amendment of 1971 added the proviso to Article 13(4) and explained the proviso to Article 368(3) so that Parliament''s power to amend the Constitution is beyond challenge in a court on the ground that it abridges a fundamental right.',
    'easy',
    'Standard Reference',
    null,
    '3e80c7b0b043b379f12436dc423b3431'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e80c7b0b043b379f12436dc423b3431'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'declared that no law amending the Constitution shall be subject to Part III and clarified the power of Parliament to amend the federal provisions'),
            ('B', 'reduced the voting age to eighteen years'),
            ('C', 'abolished the privy purses of the princely states'),
            ('D', 'introduced the concept of a national emergency')
           ) as v(label, option_text)
 where q.question_hash = '3e80c7b0b043b379f12436dc423b3431'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Twenty-Sixth Amendment Act, 1971'' provided for:',
    'The Twenty-Sixth Amendment of 1971 added Articles 395 and 396 abolishing the Privy Council''s jurisdiction and the privy purses of the erstwhile princely rulers, and it also inserted the proviso to Article 361.',
    'easy',
    'Standard Reference',
    null,
    '910bd1cb9671a6258edbf827110a4e48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '910bd1cb9671a6258edbf827110a4e48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the creation of the National Judicial Data Grid'),
            ('B', 'the abolition of the Council of Ministers'),
            ('C', 'the abolition of privy purses and of the jurisdiction of the Privy Council in India'),
            ('D', 'the introduction of the collegium system')
           ) as v(label, option_text)
 where q.question_hash = '910bd1cb9671a6258edbf827110a4e48'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Thirty-Eighth Amendment Act, 1975'' and the ''Thirty-Ninth Amendment Act, 1975'':',
    'The Thirty-Eighth and Thirty-Ninth Amendments of 1975 altered Articles 352, 356, 359 and 360 and declared that the forty-fourth Amendment''s safeguards were not binding on Parliament, and much of this was undone by the Forty-Fourth Amendment of 1978.',
    'easy',
    'Standard Reference',
    null,
    '1ebb9c8096b8648134d8a0bf96bb144a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ebb9c8096b8648134d8a0bf96bb144a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'abolished the Lok Sabha'),
            ('B', 'introduced the Tenth Schedule'),
            ('C', 'reduced the term of Parliament'),
            ('D', 'made sweeping changes to the emergency provisions so as to reduce the power of the courts')
           ) as v(label, option_text)
 where q.question_hash = '1ebb9c8096b8648134d8a0bf96bb144a'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Forty-Third Amendment Act, 1977'':',
    'The Forty-Third Amendment of 1977 restored Article 20 and Article 21 as safeguards against preventive detention, gave constitutional status to the Directive Principles inserted by the Forty-Second Amendment and added the Panchayati Raj items to the Eleventh Schedule.',
    'easy',
    'Standard Reference',
    null,
    'c4b14021dd3d15726c8980e205299a7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c4b14021dd3d15726c8980e205299a7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'introduced the Goods and Services Tax'),
            ('B', 'restored the safeguards for preventive detention, inserted Articles 39A, 43A, 44 and 48A and added the Panchayats to the Eleventh Schedule'),
            ('C', 'created the National Commission for Women'),
            ('D', 'abolished the office of the Speaker')
           ) as v(label, option_text)
 where q.question_hash = 'c4b14021dd3d15726c8980e205299a7f'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Forty-Fourth Amendment Act, 1978'':',
    'The Forty-Fourth Amendment of 1978 undid much of the Thirty-Eighth and Thirty-Ninth Amendments, restored the five-year term of the House and the State Assemblies, required a special majority of Parliament to extend a national emergency and made the proclamation subject to judicial review.',
    'easy',
    'Standard Reference',
    null,
    '4ab940f22b5ed1227b38448af0974aae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4ab940f22b5ed1227b38448af0974aae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'restored the five-year term of the Lok Sabha and the State Assemblies, renamed the Internal Emergency as the National Emergency and restored the courts'' power to review an emergency proclamation'),
            ('B', 'introduced the concept of cooperative federalism'),
            ('C', 'abolished the Tenth Schedule'),
            ('D', 'created the planning commission')
           ) as v(label, option_text)
 where q.question_hash = '4ab940f22b5ed1227b38448af0974aae'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Fifty-Eighth Amendment Act, 1988'':',
    'The Fifty-Eighth Amendment of 1988 deleted the right to property from Article 19 and Article 31 and inserted Article 300A, which provides that no person shall be deprived of property save by authority of law, with a proviso for compulsory acquisition for public purposes.',
    'easy',
    'Standard Reference',
    null,
    '4bc2d60233df2a8fbeb0ad8f6298bc18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4bc2d60233df2a8fbeb0ad8f6298bc18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'introduced the Tenth Schedule'),
            ('B', 'created the National Human Rights Commission'),
            ('C', 'removed the right to property from the list of Fundamental Rights and inserted Article 300A'),
            ('D', 'reduced the voting age to eighteen years')
           ) as v(label, option_text)
 where q.question_hash = '4bc2d60233df2a8fbeb0ad8f6298bc18'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Sixty-Second Amendment Act, 1989'' provided for:',
    'The Sixty-Second Amendment of 1989 added Article 320A, which provided for the Mandal Commission and for a commission to investigate the conditions of the backward classes, and the Sixty-Fourth Amendment of 1990 gave the OBCs their constitutional status.',
    'medium',
    'Standard Reference',
    null,
    '007d046ba5180ddbcce72777f6c52e88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '007d046ba5180ddbcce72777f6c52e88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the introduction of the Goods and Services Tax'),
            ('B', 'the creation of the National Judicial Appointments Commission'),
            ('C', 'the extension of the freeze on delimitation'),
            ('D', 'the insertion of Article 320A providing for a commission to consider the claims of the backward classes')
           ) as v(label, option_text)
 where q.question_hash = '007d046ba5180ddbcce72777f6c52e88'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Sixty-Fourth Amendment Act, 1990'':',
    'The Sixty-Fourth Amendment of 1990 created the statutory commission for backward classes under Article 320B and inserted the provisions that allowed additional seats to be reserved for the backward classes in the Lok Sabha and the State Assemblies.',
    'medium',
    'Standard Reference',
    null,
    'e74aea1472d31b80601a8c0ee75c702e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e74aea1472d31b80601a8c0ee75c702e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'abolished the Part IV of the Constitution'),
            ('B', 'inserted Article 320B creating a commission for the backward classes and Articles 330A, 332A and 334A providing for reserved seats'),
            ('C', 'introduced the anti-defection law'),
            ('D', 'reduced the term of the State Assemblies')
           ) as v(label, option_text)
 where q.question_hash = 'e74aea1472d31b80601a8c0ee75c702e'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Sixty-Ninth Amendment Act, 1992'' inserted:',
    'The Sixty-Ninth Amendment of 1992 inserted Article 164A requiring each State to establish District Planning Committees to consolidate the plans prepared by the Panchayats and the Municipalities.',
    'medium',
    'Standard Reference',
    null,
    '4353d25df827a8473b801c4ec20bf874'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4353d25df827a8473b801c4ec20bf874'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 300A on the right to property'),
            ('B', 'Article 21A on the right to education'),
            ('C', 'Article 32A on national security'),
            ('D', 'Article 164A providing for District Planning Committees')
           ) as v(label, option_text)
 where q.question_hash = '4353d25df827a8473b801c4ec20bf874'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Seventy-Third and Seventy-Fourth Amendment Acts, 1992'' also:',
    'The two amendments of 1992 provided for the State Election Commission under Article 243K and 243ZA and for the District Planning Committee under Article 243ZD, apart from giving constitutional status to the three-tier Panchayati Raj and to the municipalities.',
    'medium',
    'Standard Reference',
    null,
    'cbebe19bb4aba9e7e4499e26590e3383'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cbebe19bb4aba9e7e4499e26590e3383'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provided for the creation of the State Election Commissions and the District Planning Committees'),
            ('B', 'created the National Judicial Appointments Commission'),
            ('C', 'introduced the Goods and Services Tax'),
            ('D', 'abolished the Legislative Councils')
           ) as v(label, option_text)
 where q.question_hash = 'cbebe19bb4aba9e7e4499e26590e3383'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Eighty-Fifth Amendment Act, 2004'' concerned:',
    'The Eighty-Fifth Amendment of 2004 amended Articles 243D and 243-I and the Eleventh and Twelfth Schedules to provide for reservation of seats for the Scheduled Castes and Scheduled Tribes in Panchayats and municipalities.',
    'medium',
    'Standard Reference',
    null,
    '4c1eb869d4c815300fcf98a0d7e33b83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c1eb869d4c815300fcf98a0d7e33b83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the creation of the Special Economic Zones'),
            ('B', 'the representation of the Scheduled Castes and Scheduled Tribes in the municipalities'),
            ('C', 'the voting age'),
            ('D', 'the abolition of the Legislative Council of a State')
           ) as v(label, option_text)
 where q.question_hash = '4c1eb869d4c815300fcf98a0d7e33b83'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Eighty-Sixth Amendment Act, 2002'':',
    'The Eighty-Sixth Amendment of 2002 made the right to free and compulsory education a fundamental right under Article 21A and replaced Article 45 with a duty of the State to provide early childhood care and to secure elementary education.',
    'medium',
    'Standard Reference',
    null,
    '230207fc8078ba9b0f0d4c1f692fb7f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '230207fc8078ba9b0f0d4c1f692fb7f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'abolished the office of the Deputy Speaker'),
            ('B', 'introduced the Goods and Services Tax'),
            ('C', 'inserted Article 21A on the right to education, substituted a new Article 45 and amended Articles 46, 47, 48 and 49A'),
            ('D', 'created the National Commission for Backward Classes')
           ) as v(label, option_text)
 where q.question_hash = '230207fc8078ba9b0f0d4c1f692fb7f7'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Ninety-First Amendment Act, 2003'':',
    'The Ninety-First Amendment of 2003 amended Articles 255(1), 256 and 263 so as to place restrictions on the States'' power to levy taxes on the sale of petroleum products, in order to protect the interests of the Union.',
    'medium',
    'Standard Reference',
    null,
    '3750c66a0cbe22351dd2382cfffaa4e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3750c66a0cbe22351dd2382cfffaa4e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'limited the power of the States to impose taxes on the sale of petroleum products'),
            ('B', 'created the National Judicial Appointments Commission'),
            ('C', 'introduced the Goods and Services Tax'),
            ('D', 'raised the period of reservation for the Anglo-Indian members')
           ) as v(label, option_text)
 where q.question_hash = '3750c66a0cbe22351dd2382cfffaa4e1'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Eighty-Third Amendment Act, 2000'' provided for:',
    'The Eighty-Third Amendment of 2000 inserted provisions enabling the States to delimit wards and requiring the constitution of District Planning Committees in relation to municipalities.',
    'medium',
    'Standard Reference',
    null,
    'b92aa97a1faa8f32487cf2a6e5e42fc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b92aa97a1faa8f32487cf2a6e5e42fc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the extension of the freeze on the population basis of delimitation'),
            ('B', 'the delimitation of wards and the constitution of District Planning Committees for municipalities'),
            ('C', 'the abolition of the Tenth Schedule'),
            ('D', 'the creation of the National Commission for Women')
           ) as v(label, option_text)
 where q.question_hash = 'b92aa97a1faa8f32487cf2a6e5e42fc5'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundredth Amendment Act, 2018'':',
    'The Hundredth Amendment of 2018 introduced Article 280A on cooperative federalism and added the proviso to Article 19(1)(g) guaranteeing the right of a citizen to move freely through the territory of India to reside and earn.',
    'medium',
    'Standard Reference',
    null,
    '8178126d303419e619d644a2800b6cbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8178126d303419e619d644a2800b6cbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'introduced the Goods and Services Tax'),
            ('B', 'created the National Judicial Appointments Commission'),
            ('C', 'extended the freeze on the delimitation of seats'),
            ('D', 'gave constitutional status to cooperative federalism through Article 280A and recognised the right to reside and earn in any part of India')
           ) as v(label, option_text)
 where q.question_hash = '8178126d303419e619d644a2800b6cbc'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundred-Second Amendment Act, 2018'':',
    'The Hundred-Second Amendment of 2018 inserted Article 338B creating the National Commission for Backward Classes and amended Articles 342A and 342B, which was a long-standing demand of the Dalit leaders.',
    'medium',
    'Standard Reference',
    null,
    '932bc499886ba442d80746e4902bce31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '932bc499886ba442d80746e4902bce31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'extended the reservation of seats for the Scheduled Tribes'),
            ('B', 'introduced the Goods and Services Tax'),
            ('C', 'constitutionalised the National Commission for Backward Classes'),
            ('D', 'created the office of the Chief Election Commissioner as a three-member commission')
           ) as v(label, option_text)
 where q.question_hash = '932bc499886ba442d80746e4902bce31'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundred-Third Amendment Act, 2019'':',
    'The Hundred-Third Amendment of 2019 inserted Article 330A and amended Articles 332A and 334A to provide for a maximum of ten per cent additional reservation for the economically weaker sections among the Scheduled Castes and Scheduled Tribes.',
    'medium',
    'Standard Reference',
    null,
    '58daf55dc67945abadb318cf084df440'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '58daf55dc67945abadb318cf084df440'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provided for reservation of up to ten per cent of seats in the Lok Sabha and State Assemblies for the economically weaker sections'),
            ('B', 'introduced the Goods and Services Tax'),
            ('C', 'abolished the reservation for the Scheduled Castes'),
            ('D', 'reduced the voting age')
           ) as v(label, option_text)
 where q.question_hash = '58daf55dc67945abadb318cf084df440'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundred-Fourth Amendment Act, 2019'' provided for:',
    'The Hundred-Fourth Amendment of 2019 extended the reservation of seats for the Scheduled Castes and Scheduled Tribes beyond 2020, ended the provision for nomination of Anglo-Indian members to the Lok Sabha and allowed a member of the Anglo-Indian community to contest a general election seat.',
    'medium',
    'Standard Reference',
    null,
    'b355698813aaabc6638aa12291a8b0ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b355698813aaabc6638aa12291a8b0ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the Legislative Councils of the States'),
            ('B', 'the extension of the reservation of seats for the Scheduled Castes and Scheduled Tribes and the ending of the nomination of Anglo-Indian members'),
            ('C', 'the introduction of the Goods and Services Tax'),
            ('D', 'the creation of the National Commission for Women')
           ) as v(label, option_text)
 where q.question_hash = 'b355698813aaabc6638aa12291a8b0ad'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundred-Ninth Amendment Act, 2024'' deals with:',
    'The Hundred-Ninth Amendment of 2024 provides for a collegium comprising the Chief Justice of India and two senior-most judges of the Supreme Court for the appointment of judges of the Supreme Court and of the High Courts, and it also provides for a collegium for High Court Chief Justices.',
    'medium',
    'Standard Reference',
    2024,
    '95b2d41b5415cc13c60693029d1cafb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '95b2d41b5415cc13c60693029d1cafb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the Legislative Council of a State'),
            ('B', 'the creation of a National Judicial Appointments Commission'),
            ('C', 'the collegium system for the appointment of judges of the higher judiciary'),
            ('D', 'the reservation of seats for women')
           ) as v(label, option_text)
 where q.question_hash = '95b2d41b5415cc13c60693029d1cafb1'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundred-Tenth Amendment Act, 2024'' relates to:',
    'The Hundred-Tenth Amendment of 2024 amended Article 80 to raise the maximum strength of the Rajya Sabha from 238 to 250, with the additional members representing the Scheduled Castes and Scheduled Tribes and the Anglo-Indian community.',
    'medium',
    'Standard Reference',
    2024,
    'f95b47d9a7650b56fea8ea68192f3f96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f95b47d9a7650b56fea8ea68192f3f96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the uniform civil code'),
            ('B', 'the extension of the freeze on delimitation'),
            ('C', 'the reservation of one-third of seats for women'),
            ('D', 'the increase in the maximum strength of the Council of States from 238 to 250 members')
           ) as v(label, option_text)
 where q.question_hash = 'f95b47d9a7650b56fea8ea68192f3f96'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Hundred-Sixth Amendment Act, 2023'' provided for:',
    'The Nari Shakti Vandan Adhiniyam of 2023 provides for one-third of the seats in the Lok Sabha and the State Legislative Assemblies, including the reserved seats, to be filled by women, with the provision to take effect after the next delimitation based on the first census after the amendment.',
    'medium',
    'Standard Reference',
    2023,
    'c7a1a1f4570cd778c1d3fae7d5db7ae9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c7a1a1f4570cd778c1d3fae7d5db7ae9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'reservation of one-third of the seats in the Lok Sabha and the State Legislative Assemblies for women'),
            ('B', 'the extension of the delimitation freeze'),
            ('C', 'a uniform civil code'),
            ('D', 'the reservation of seats for the Scheduled Tribes in the State Legislatures')
           ) as v(label, option_text)
 where q.question_hash = 'c7a1a1f4570cd778c1d3fae7d5db7ae9'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'Under the Constitution, the power to amend:',
    'Article 368 vests the constituent power in Parliament, and although the courts examine the validity of an amendment, the Supreme Court itself cannot add to or abridge the Constitution.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '885734c39c95c044dee212f8f6d6f9b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '885734c39c95c044dee212f8f6d6f9b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is vested in the Supreme Court'),
            ('B', 'is vested in the President'),
            ('C', 'can be exercised by any State legislature on a subject in the State List'),
            ('D', 'is vested in Parliament and is exercised in the manner prescribed by Article 368')
           ) as v(label, option_text)
 where q.question_hash = '885734c39c95c044dee212f8f6d6f9b9'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''basic structure doctrine'' propounded in the Kesavananda Bharati case holds that:',
    'The majority opinion in Kesavananda Bharati (1973) held that Article 368 confers a wide power of amendment but that certain basic features, including supremacy of the Constitution, secularism, judicial review and free and fair elections, cannot be abrogated.',
    'medium',
    'Standard Reference',
    null,
    '111ec5969fa26a03e831d3b76254a792'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '111ec5969fa26a03e831d3b76254a792'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Directive Principles have a higher status than the Fundamental Rights'),
            ('B', 'Parliament''s power to amend the Constitution is wide but not unlimited and cannot alter the basic structure'),
            ('C', 'the Fundamental Rights can be abridged by Parliament by a simple majority'),
            ('D', 'only the President can amend the Constitution')
           ) as v(label, option_text)
 where q.question_hash = '111ec5969fa26a03e831d3b76254a792'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Shankara Prasad'' case (1951) is significant because it held that:',
    'In Shankara Prasad the Supreme Court held that the power to amend the Constitution is wide but not unlimited and is subject to Part III, and the view was later qualified by Kesavananda Bharati and Minerva Mills.',
    'medium',
    'Standard Reference',
    null,
    'ee5fcab0f7869d390126e548db33f317'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee5fcab0f7869d390126e548db33f317'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the courts may add to the Constitution'),
            ('B', 'Parliament may amend the Fundamental Rights by a simple majority'),
            ('C', 'Parliament''s power to amend the Constitution is subject to the limitations of Part III'),
            ('D', 'amendments made after 1950 are void')
           ) as v(label, option_text)
 where q.question_hash = 'ee5fcab0f7869d390126e548db33f317'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Sajjan Singh v. State of Punjab'' case (1965) is significant because it held that:',
    'The Court distinguished constituent legislation from ordinary legislation, holding that the wider constituent power could be exercised only in the manner prescribed by Article 368, and this principle was reaffirmed in Minerva Mills.',
    'medium',
    'Standard Reference',
    null,
    'b8530786d004641cbc1905fe44900acb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b8530786d004641cbc1905fe44900acb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the President alone may amend the Constitution'),
            ('B', 'Parliament cannot amend the Fundamental Rights'),
            ('C', 'the courts may strike down any amendment'),
            ('D', 'the power to amend the Constitution under Article 368 is wider than the power of the legislature to make ordinary law')
           ) as v(label, option_text)
 where q.question_hash = 'b8530786d004641cbc1905fe44900acb'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''Golak Nath v. State of Punjab'' case (1967) is important because it:',
    'Golak Nath held that the Fundamental Rights have a transcendental and immutable position, and this led Parliament to enact the Twenty-Fourth Amendment of 1971, which was partly undone by the Forty-Third Amendment of 1977.',
    'medium',
    'Standard Reference',
    null,
    '9776c1e80072c2bb66fe9bb2a3252362'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9776c1e80072c2bb66fe9bb2a3252362'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'held that Parliament cannot abridge the Fundamental Rights by ordinary legislation'),
            ('B', 'declared the basic structure doctrine'),
            ('C', 'declared the right to privacy a fundamental right'),
            ('D', 'held that the Directive Principles are justiciable')
           ) as v(label, option_text)
 where q.question_hash = '9776c1e80072c2bb66fe9bb2a3252362'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution of India is divided into how many Schedules?',
    'The Constitution has twelve Schedules, beginning with the First on States and Union Territories and the Eighth on languages and ending with the Twelfth on the subjects for municipalities.',
    'hard',
    'Standard Reference',
    null,
    '32073ca9f4911404cc8b97438d9dd8fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '32073ca9f4911404cc8b97438d9dd8fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fourteen'),
            ('B', 'Twelve'),
            ('C', 'Eight'),
            ('D', 'Ten')
           ) as v(label, option_text)
 where q.question_hash = '32073ca9f4911404cc8b97438d9dd8fd'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''doctrine of eclipse'' applies to a:',
    'Under the doctrine of eclipse, a pre-existing law inconsistent with a later constitutional amendment is not void ab initio but is eclipsed to the extent of the inconsistency, and the position was restated by the Supreme Court in the Shankara Prasad case.',
    'medium',
    'Standard Reference',
    null,
    '2012d7df2ff38d81e31f9f738173d679'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2012d7df2ff38d81e31f9f738173d679'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'rule made by a subordinate authority'),
            ('B', 'law enacted by a State legislature exceeding its powers'),
            ('C', 'pre-existing law inconsistent with a subsequent amendment of the Constitution'),
            ('D', 'ordinance issued by the President')
           ) as v(label, option_text)
 where q.question_hash = '2012d7df2ff38d81e31f9f738173d679'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution was enacted on:',
    'The Constitution was enacted on 26 November 1949 but came into force on 26 January 1950, the date chosen as the date of the adoption of the Constitution at the time of the first session of the Constituent Assembly.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '491ba076b4e1f16db0089c52255b2c1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '491ba076b4e1f16db0089c52255b2c1f'
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
 where q.question_hash = '491ba076b4e1f16db0089c52255b2c1f'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution was signed by:',
    'The members of the Constituent Assembly signed the Constitution on 24 January 1950 and it came into force two days later on 26 January 1950, and no person in India has ever been born a citizen of India.',
    'hard',
    'Standard Reference',
    null,
    '507b6e99d2518a7d57ac9b80fd747883'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '507b6e99d2518a7d57ac9b80fd747883'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the President of India on 26 January 1950'),
            ('B', 'the Prime Minister on 26 November 1949'),
            ('C', 'the Chief Justice of India on 26 January 1950'),
            ('D', 'the members of the Constituent Assembly on 24 January 1950')
           ) as v(label, option_text)
 where q.question_hash = '507b6e99d2518a7d57ac9b80fd747883'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Preamble'' to the Constitution was first amended to add the words ''Sovereign'' and ''Democratic'' by the:',
    'The First Amendment Act of 1951 added ''Sovereign'' and ''Democratic'', the Forty-Second Amendment added ''Socialist'', ''Secular'' and ''Integrity'', and the Fifty-Second Amendment added the words ''integrity'' and ''fraternity'' to Article 19 and to the Constitution.',
    'hard',
    'Standard Reference',
    null,
    'dabb128863913a066def1ef813f51dfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dabb128863913a066def1ef813f51dfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifty-Second Amendment Act, 1985'),
            ('B', 'First Amendment Act, 1951'),
            ('C', 'Seventh Amendment Act, 1956'),
            ('D', 'Forty-Second Amendment Act, 1976')
           ) as v(label, option_text)
 where q.question_hash = 'dabb128863913a066def1ef813f51dfe'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The Constitution of India is divided into:',
    'The Constitution is divided into twenty-five Parts and twelve Schedules, and the Part IVA on Directive Principles was inserted by the Forty-Third Amendment and the Part IXA on municipalities by the Seventy-Fourth Amendment.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '4e6624bfacf06dee87b6781018561c51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e6624bfacf06dee87b6781018561c51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'twenty-five Parts'),
            ('B', 'eighteen Parts'),
            ('C', 'twenty Parts'),
            ('D', 'twenty-two Parts')
           ) as v(label, option_text)
 where q.question_hash = '4e6624bfacf06dee87b6781018561c51'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Under Article 56 of the Constitution, the President of India holds office for:',
    'Article 56 fixes the term of the President at five years, and the President may hold office beyond that period if the election to the next office is not completed, though he then cannot hold the office of profit.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    'c230089ca53984504b40a33605791c31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c230089ca53984504b40a33605791c31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'seven years'),
            ('B', 'five years'),
            ('C', 'six years'),
            ('D', 'four years')
           ) as v(label, option_text)
 where q.question_hash = 'c230089ca53984504b40a33605791c31'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Ninth Schedule'' of the Constitution was inserted by the:',
    'The Ninth Schedule was inserted by the First Amendment Act of 1951 to protect certain laws from judicial review under Article 13, and the Kesavananda Bharati judgment established that the power to add laws to it is limited by the basic structure.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    'be8b40de2693bb243da974a94add44f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'be8b40de2693bb243da974a94add44f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seventh Amendment Act, 1956'),
            ('B', 'Twenty-Fourth Amendment Act, 1971'),
            ('C', 'First Amendment Act, 1951'),
            ('D', 'Forty-Second Amendment Act, 1976')
           ) as v(label, option_text)
 where q.question_hash = 'be8b40de2693bb243da974a94add44f6'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Speaker of the Lok Sabha may be removed from his office only by:',
    'Under the rules, the Speaker can be removed only by a resolution of the House passed by an effective majority and after fourteen days'' notice, a procedure that protects the office from being destabilised by the ruling party.',
    'hard',
    'Standard Reference',
    null,
    '5e59b6fc4970b5f196c5366838de52ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5e59b6fc4970b5f196c5366838de52ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a resolution of the House passed by an effective majority after fourteen days'' notice'),
            ('B', 'an order of the President'),
            ('C', 'a two-thirds majority vote of the House'),
            ('D', 'a resolution passed by a simple majority of the members present')
           ) as v(label, option_text)
 where q.question_hash = '5e59b6fc4970b5f196c5366838de52ff'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''President of India'' — The President is a:',
    'Article 74 vests the executive power of the Union in the President, but the Council of Ministers headed by the Prime Minister exercises the real power, and the President acts on the advice of the Council, save in a few specified cases.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    'b0c764b3694812ec9dbd3559cefd5e1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b0c764b3694812ec9dbd3559cefd5e1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a ceremonial head with no constitutional role'),
            ('B', 'supreme head of the executive with the real power of government'),
            ('C', 'an elective monarch with absolute powers'),
            ('D', 'nominal head of the executive, with the real power vested in the Council of Ministers')
           ) as v(label, option_text)
 where q.question_hash = 'b0c764b3694812ec9dbd3559cefd5e1f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The President can be impeached for:',
    'Article 61 provides a single ground for impeachment, namely violation of the Constitution, and the procedure requires a two-thirds majority in each House and a two-thirds majority of the total membership of each House.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '071e1c85ad5c674ef44c8aa4e5935278'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '071e1c85ad5c674ef44c8aa4e5935278'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'appointing a Governor of a State'),
            ('B', 'violation of the Constitution'),
            ('C', 'owning a particular political ideology'),
            ('D', 'refusing to sign a bill')
           ) as v(label, option_text)
 where q.question_hash = '071e1c85ad5c674ef44c8aa4e5935278'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''pardon'' power of the President under Article 72:',
    'Article 72 allows the President to pardon, reprieve, respite, remission of punishment or suspension of sentence in all cases, and the power is wider than that of the Governor under Article 161.',
    'easy',
    'Standard Reference',
    null,
    'cb22e2f67107fea3028d788d496b99e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cb22e2f67107fea3028d788d496b99e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is exercised only after the Supreme Court''s advice'),
            ('B', 'is available only for offences punishable with death'),
            ('C', 'cannot be exercised in respect of a court-martial sentence'),
            ('D', 'extends to offences against the law of the State and to all proceedings, civil or criminal, in which the person is convicted')
           ) as v(label, option_text)
 where q.question_hash = 'cb22e2f67107fea3028d788d496b99e9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''ordinance'' power of the President under Article 123:',
    'Article 123 permits the President to promulgate an ordinance when either House is not in session, and every ordinance must be laid before Parliament and ceases to operate six weeks after Parliament reassembles unless approved.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '9d501571fff2e17071fac1a28ee78762'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9d501571fff2e17071fac1a28ee78762'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'can be promulgated only in the last session of Parliament'),
            ('B', 'requires the prior recommendation of the Deputy Prime Minister'),
            ('C', 'can be promulgated only when both Houses of Parliament are not in session, and must be laid before Parliament within six weeks of reassembly'),
            ('D', 'can be promulgated at any time and must be laid before Parliament within six months')
           ) as v(label, option_text)
 where q.question_hash = '9d501571fff2e17071fac1a28ee78762'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'When a Bill is passed by a State legislature and presented to the Governor, the Governor may:',
    'Under Article 200 the Governor has three options, namely to assent, to withhold assent, or to reserve the Bill for the consideration of the President, and the Court has held that the Governor should exercise discretion in favour of assent.',
    'medium',
    'Standard Reference',
    null,
    '4e99a84f67e9bcb8a838b76122cf7f52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e99a84f67e9bcb8a838b76122cf7f52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'assent, withhold assent, or reserve the Bill for the consideration of the President'),
            ('B', 'only assent or withhold assent'),
            ('C', 'send the Bill back for reconsideration only once'),
            ('D', 'refer the Bill to the High Court')
           ) as v(label, option_text)
 where q.question_hash = '4e99a84f67e9bcb8a838b76122cf7f52'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The pocket veto of the President:',
    'Under the 24th Amendment of 1971, if the President neither approves, rejects nor returns a Bill, it is deemed to have been assented to, which is why the instrument is called the pocket veto and is widely criticised.',
    'easy',
    'Standard Reference',
    null,
    '2e20d8c6dc0810588c393a7ef8f9bdfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e20d8c6dc0810588c393a7ef8f9bdfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'operates when the President rejects a private member''s Bill'),
            ('B', 'operates when the President assents to an amendment of a Money Bill'),
            ('C', 'operates when the President returns a Money Bill'),
            ('D', 'operates when the President neither approves, rejects nor returns a Bill passed by Parliament')
           ) as v(label, option_text)
 where q.question_hash = '2e20d8c6dc0810588c393a7ef8f9bdfe'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 75(3) of the Constitution provides that a minister:',
    'Article 75(3) makes the Council of Ministers collectively responsible to the Lok Sabha, and a minister who loses a no-confidence motion must vacate office, which is the basis of the doctrine of ministerial responsibility.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'e41f122a5b99529e271f0e3b2d5dcbdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e41f122a5b99529e271f0e3b2d5dcbdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is not to remain in office if a no-confidence motion is passed against him'),
            ('B', 'holds office during the pleasure of the Governor'),
            ('C', 'may be dismissed by the President at any time'),
            ('D', 'must consult the President on all matters')
           ) as v(label, option_text)
 where q.question_hash = 'e41f122a5b99529e271f0e3b2d5dcbdb'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Chief Minister of a State is appointed by:',
    'Article 164 provides that the Chief Minister shall be appointed by the Governor and other Ministers by the Chief Minister, and the Council of Ministers is collectively responsible to the Legislative Assembly.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'b951ff5a7999a94629a9ff7b83534b30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b951ff5a7999a94629a9ff7b83534b30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Prime Minister'),
            ('B', 'the Chief Justice of the High Court'),
            ('C', 'the Governor'),
            ('D', 'the President')
           ) as v(label, option_text)
 where q.question_hash = 'b951ff5a7999a94629a9ff7b83534b30'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A ''Money Bill'' under Article 110 is a Bill which contains only provisions dealing with:',
    'Article 110 lists the six heads of a Money Bill, namely taxation, government borrowing, the Consolidated or Contingency Fund of India, appropriation, and expenditure charged on the Consolidated Fund, and a Bill containing any other provision is not a Money Bill.',
    'medium',
    'Standard Reference',
    null,
    '6879457b79df12f0c4d512153b2c9fce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6879457b79df12f0c4d512153b2c9fce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the election of the President'),
            ('B', 'taxation, government borrowing, the Consolidated Fund and appropriation of money'),
            ('C', 'the administration of the States'),
            ('D', 'the public service of the Union')
           ) as v(label, option_text)
 where q.question_hash = '6879457b79df12f0c4d512153b2c9fce'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'After the Speaker certifies a Bill as a Money Bill:',
    'Once a Bill is certified as a Money Bill, it can be amended only in the Rajya Sabha, and the Rajya Sabha may only recommend changes within fourteen days, and failure to pass the Bill within that time does not cause it to lapse.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'a1ae73b2c5fb0dd34f2968b653e10968'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a1ae73b2c5fb0dd34f2968b653e10968'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Bill can be amended only in the Rajya Sabha and cannot be amended in the Lok Sabha'),
            ('B', 'the Bill must be sent to the Rajya Sabha for reconsideration'),
            ('C', 'the Bill lapses if the Rajya Sabha rejects it within fourteen days'),
            ('D', 'the Bill can be amended in either House')
           ) as v(label, option_text)
 where q.question_hash = 'a1ae73b2c5fb0dd34f2968b653e10968'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''joint sitting'' of the two Houses of Parliament is provided for under Article:',
    'Article 108 provides for a joint sitting of the two Houses in specified cases, and such a sitting is presided over by the Speaker of the Lok Sabha with the Deputy Chairman of the Rajya Sabha in the chair.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '0f119288f5382ab3dd7d27421e1108cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f119288f5382ab3dd7d27421e1108cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '117'),
            ('B', '110'),
            ('C', '113'),
            ('D', '108')
           ) as v(label, option_text)
 where q.question_hash = '0f119288f5382ab3dd7d27421e1108cc'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A Financial Bill, other than a Money Bill, can be introduced in the Rajya Sabha:',
    'A Financial Bill other than a Money Bill can be introduced only in the Lok Sabha on the President''s recommendation, but once passed by that House it goes to the Rajya Sabha, which must pass or reject it within fourteen days.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '95a99e0838bc04cdf51def6ded83bc1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95a99e0838bc04cdf51def6ded83bc1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only if the Speaker certifies it'),
            ('B', 'on the recommendation of the President, and the Rajya Sabha must pass it within fourteen days'),
            ('C', 'without any recommendation'),
            ('D', 'only during the first session')
           ) as v(label, option_text)
 where q.question_hash = '95a99e0838bc04cdf51def6ded83bc1e'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The minimum age for membership of the Rajya Sabha is:',
    'Article 84 prescribes the qualifications for both Houses, and the minimum age is thirty years for the Rajya Sabha and twenty-five years for the Lok Sabha.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '0b44590a9056c3b9e770770f6981bc08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b44590a9056c3b9e770770f6981bc08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '35 years'),
            ('B', '21 years'),
            ('C', '30 years'),
            ('D', '25 years')
           ) as v(label, option_text)
 where q.question_hash = '0b44590a9056c3b9e770770f6981bc08'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Whip'' of the ruling party in the Lok Sabha is responsible for:',
    'The Whip is a senior member of the ruling party in the House who is responsible for the attendance of the party members and for maintaining discipline, and the office is not mentioned in the Rules of Procedure but is a convention of the House.',
    'hard',
    'Standard Reference',
    null,
    'ae92f8215ec94889f4a99c2b78d75254'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ae92f8215ec94889f4a99c2b78d75254'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ensuring the presence of the party''s members for the votes of the government and maintaining party discipline'),
            ('B', 'chairing the Public Accounts Committee'),
            ('C', 'certifying whether a Bill is a Money Bill'),
            ('D', 'preparing the list of business for the House')
           ) as v(label, option_text)
 where q.question_hash = 'ae92f8215ec94889f4a99c2b78d75254'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Freedom of speech'' in Parliament and its immunities are provided under Article:',
    'Article 105 gives freedom of speech in Parliament and prohibits any proceedings against a member for anything said in Parliament or any committee, while Article 122 provides a similar immunity in the State legislatures.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '2cf8ba42a0f4c83ec80a5207aed25679'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cf8ba42a0f4c83ec80a5207aed25679'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '122'),
            ('B', '106'),
            ('C', '108'),
            ('D', '105')
           ) as v(label, option_text)
 where q.question_hash = '2cf8ba42a0f4c83ec80a5207aed25679'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The collegium for the appointment of judges of the Supreme Court consists of:',
    'Under the 109th Amendment of 2024, the collegium for the Supreme Court consists of the Chief Justice of India and two senior-most judges, and for the High Courts a separate collegium headed by the Chief Justice of the concerned High Court recommends appointments.',
    'hard',
    'Standard Reference',
    null,
    '9c99f16f93c12196e16da7124495d8d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9c99f16f93c12196e16da7124495d8d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the President and the two senior-most judges of the Supreme Court'),
            ('B', 'the Chief Justice of India and the two senior-most judges of the Supreme Court'),
            ('C', 'the President, the Chief Justice and the Law Minister'),
            ('D', 'the Chief Justice and the senior-most judges of the High Courts')
           ) as v(label, option_text)
 where q.question_hash = '9c99f16f93c12196e16da7124495d8d8'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'A criminal appeal to the Supreme Court under Article 136A is heard by a bench of:',
    'Article 136A requires that a criminal appeal under Article 136 involving a question of law be heard by a bench of at least three judges, which was inserted by the Fifteenth Amendment Act of 1963.',
    'hard',
    'Standard Reference',
    null,
    '2d4596264a44bf09e4f25770dbfaea8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2d4596264a44bf09e4f25770dbfaea8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'at least two judges'),
            ('B', 'a single judge'),
            ('C', 'at least three judges'),
            ('D', 'at least five judges')
           ) as v(label, option_text)
 where q.question_hash = '2d4596264a44bf09e4f25770dbfaea8a'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The power of the Supreme Court to grant special leave to appeal from any court is under Article:',
    'Article 136 empowers the Supreme Court to grant special leave to appeal from any court, tribunal or other authority, and the court exercises this discretion sparingly, usually in matters of public importance.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '8571e11b1a62d7331aa8ffc9a8d4b0c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8571e11b1a62d7331aa8ffc9a8d4b0c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '137'),
            ('B', '134'),
            ('C', '136'),
            ('D', '132')
           ) as v(label, option_text)
 where q.question_hash = '8571e11b1a62d7331aa8ffc9a8d4b0c6'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The power of the Supreme Court to do ''complete justice'' is under Article:',
    'Article 142 enables the Supreme Court to pass such decree or order as is necessary for doing complete justice in any cause or matter before it, and the Court has used this power to remedy the injustice of delayed compensation and of excessive delays.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '11b4c7a82e9a17a08ba4f7a7c5bd1717'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '11b4c7a82e9a17a08ba4f7a7c5bd1717'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '137'),
            ('B', '142'),
            ('C', '144'),
            ('D', '141')
           ) as v(label, option_text)
 where q.question_hash = '11b4c7a82e9a17a08ba4f7a7c5bd1717'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''National Judicial Data Grid'' in India was launched in:',
    'The NJDG, an initiative of the Supreme Court with the National Judicial Data Grid portal of the National Law University, was launched in 2015 to bring together the databases of the courts and to provide a national judicial data platform.',
    'medium',
    'Standard Reference',
    null,
    '558cb442737a83450804d5558a678f84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '558cb442737a83450804d5558a678f84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2009'),
            ('C', '2010'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '558cb442737a83450804d5558a678f84'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The administrative supervision of the subordinate courts in a State is vested in the:',
    'Article 235 vests the administrative supervision of all subordinate courts in the High Court, while Article 233 provides for the appointment of district judges by the Governor in consultation with the High Court.',
    'hard',
    'Standard Reference',
    null,
    '404f0dde9b3702b3738b85225d823e98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '404f0dde9b3702b3738b85225d823e98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State Government'),
            ('B', 'District Collector'),
            ('C', 'Supreme Court'),
            ('D', 'High Court')
           ) as v(label, option_text)
 where q.question_hash = '404f0dde9b3702b3738b85225d823e98'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The decision of a constitutional bench of the Supreme Court requires the opinion of:',
    'A judgment of a constitutional bench is delivered with the concurrence of at least five judges, and before the Third Judges case of 1998 a majority of the bench was also required for the conclusion but not for the reasoning.',
    'hard',
    'Standard Reference',
    null,
    '498dad2e8d9d08700baed22bd2a73c72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '498dad2e8d9d08700baed22bd2a73c72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'at least seven judges'),
            ('B', 'at least five judges'),
            ('C', 'the Chief Justice alone'),
            ('D', 'at least three judges')
           ) as v(label, option_text)
 where q.question_hash = '498dad2e8d9d08700baed22bd2a73c72'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'A judge of the Supreme Court holds office until he attains the age of:',
    'Article 124 provides that a Supreme Court judge holds office until he attains the age of sixty-five years, and a judge of a High Court until he attains the age of sixty-two years.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    'bca89989dbe061ce8c3f86cf061a522d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bca89989dbe061ce8c3f86cf061a522d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '65 years'),
            ('B', '62 years'),
            ('C', '60 years'),
            ('D', '70 years')
           ) as v(label, option_text)
 where q.question_hash = 'bca89989dbe061ce8c3f86cf061a522d'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Mediation Act, 2023'' designates the Supreme Court and the High Courts as:',
    'The Mediation Act, 2023 which came into force in 2024, makes the Supreme Court and the High Courts mediation centres and provides for the appointment of mediators, with the aim of easing the burden of the courts.',
    'easy',
    'Standard Reference',
    null,
    '379207976ac6bbd21661849083eeb59a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '379207976ac6bbd21661849083eeb59a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'pre-trial settlement forums for commercial disputes'),
            ('B', 'consumer dispute redressal commissions'),
            ('C', 'mediation centres'),
            ('D', 'arbitration tribunals')
           ) as v(label, option_text)
 where q.question_hash = '379207976ac6bbd21661849083eeb59a'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The power of the Supreme Court to punish for contempt is under Article:',
    'Article 215 gives the Supreme Court the power to punish for contempt of the Court, which the High Courts exercise under Article 227, and the contempt power in the Constitution itself is distinct from the statutory Contempt of Courts Act, 1971.',
    'hard',
    'Standard Reference',
    null,
    '4b6327be7a10f1941356e74af07390e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4b6327be7a10f1941356e74af07390e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '227'),
            ('B', '136'),
            ('C', '226'),
            ('D', '215')
           ) as v(label, option_text)
 where q.question_hash = '4b6327be7a10f1941356e74af07390e6'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The concept of ''public interest litigation'' in India is associated with:',
    'In Hussainara Khatoon (1979) the Supreme Court relaxed the rule of locus standi and directed the release of undertrioted prisoners, and later decisions such as Bandhua Mukti Morcha and Vishaka extended the practice of petitions in the public interest.',
    'medium',
    'Standard Reference',
    null,
    'f58a2bd6e9b4f70aba4556fba7664d0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f58a2bd6e9b4f70aba4556fba7664d0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kesavananda Bharati v. State of Kerala'),
            ('B', 'Maneka Gandhi v. Union of India'),
            ('C', 'Hussainara Khatoon v. Home Secretary, State of Delhi'),
            ('D', 'Golak Nath v. State of Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'f58a2bd6e9b4f70aba4556fba7664d0f'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''VVPAT'' (voter verifiable paper audited trail) in the electronic voting:',
    'The VVPAT is a paper trail of the votes recorded on the EVM, and after the polling the paper trail of a sample of the voting machines is counted and matched with the electronic count as a check on the tampering of the machines.',
    'easy',
    'Election Commission of India',
    null,
    'd7e417c04f0eefb0d5570982a2408055'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7e417c04f0eefb0d5570982a2408055'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is used only in the assembly elections of the smaller States'),
            ('B', 'replaces the electronic voting machine completely'),
            ('C', 'is the mechanism for the counting of the postal ballots'),
            ('D', 'records the votes cast on the EVM for the count of the votes in the polling stations, of which the count of the paper trail is a sample')
           ) as v(label, option_text)
 where q.question_hash = 'd7e417c04f0eefb0d5570982a2408055'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''NOTA'' (none of the above) option in the electronic voting machines:',
    'The NOTA was introduced in 2013 following the Supreme Court judgment, and while it allows the electors to reject all the candidates, the votes cast for it are not counted for any candidate and the winning candidate must still secure the required majority of the valid votes.',
    'easy',
    'Election Commission of India',
    null,
    'aa10c837233b8e4a68d6bec378c4c4ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aa10c837233b8e4a68d6bec378c4c4ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is counted in the total polled and added to the winning candidate''s tally'),
            ('B', 'allows the electors to indicate that they reject all the candidates, and it is not counted as a vote for any candidate'),
            ('C', 'is treated as a vote for the candidate with the least votes'),
            ('D', 'is the option to be used for the postal ballots only')
           ) as v(label, option_text)
 where q.question_hash = 'aa10c837233b8e4a68d6bec378c4c4ca'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The expenditure limit of a candidate for the Lok Sabha:',
    'The candidates of the Lok Sabha can spend up to Rs 95 lakh in the larger States and Rs 75 lakh in the smaller States and the Union Territories, and the corresponding limits for the assembly elections are Rs 40 lakh and Rs 25 lakh.',
    'easy',
    'Election Commission of India',
    null,
    '45c912745204a52dd0fd4c9af2c185ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45c912745204a52dd0fd4c9af2c185ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is Rs 95 lakh in the larger States and Rs 75 lakh in the smaller States and the Union Territories'),
            ('B', 'is Rs 75 lakh everywhere'),
            ('C', 'is Rs 95 lakh in the larger States and Rs 40 lakh in the smaller States'),
            ('D', 'is fixed at Rs 2 crore for every constituency')
           ) as v(label, option_text)
 where q.question_hash = '45c912745204a52dd0fd4c9af2c185ae'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''tender of votes'' of the Election Commission is done under Article:',
    'Article 329 provides that the polls and the counting of the votes shall not be disturbed by any judicial intervention, and the Election Commission has the power to tender the votes of a polling station to the returning officer when it is satisfied that the poll was not fair.',
    'easy',
    'Standard Reference',
    null,
    '01e9ed216589934e41e8ac83d90c20b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '01e9ed216589934e41e8ac83d90c20b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '324'),
            ('B', '329'),
            ('C', '320'),
            ('D', '330')
           ) as v(label, option_text)
 where q.question_hash = '01e9ed216589934e41e8ac83d90c20b7'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'Consider the following statements. Which of them is correct with regard to the Criminal Law Amendment?',
    'Section 126 of the Representation of the People Act, 1951 makes the undue influence, the bribery and the intimidation at the election punishable, and it was substituted in 2017 through the amendments made by the Supreme Court in the Lok Pravasi Mandal case.',
    'hard',
    'Standard Reference',
    null,
    'a4c09d773643eae20751ae52bd833f87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4c09d773643eae20751ae52bd833f87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the disqualification of the candidates'),
            ('B', 'the accounting of the election expenses'),
            ('C', 'the offence of the undue influence and the bribery at the election'),
            ('D', 'the nomination of the candidates')
           ) as v(label, option_text)
 where q.question_hash = 'a4c09d773643eae20751ae52bd833f87'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Model Code of Conduct'' of the Election Commission:',
    'The Model Code of Conduct comes into force with the announcement of the schedule and ceases with the declaration of the results, and it binds the political parties, the candidates, the ministers and the officials with the ban on the visit to the State by the other leaders and the use of the official machinery.',
    'easy',
    'Election Commission of India',
    null,
    '19e2fc065cc41af998868fda76a7b0e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19e2fc065cc41af998868fda76a7b0e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is applicable only to the period of the campaign'),
            ('B', 'is a legal statute with the force of law'),
            ('C', 'applies only to the ruling party of the State'),
            ('D', 'comes into force with the announcement of the schedule of the elections and ceases with the declaration of the results')
           ) as v(label, option_text)
 where q.question_hash = '19e2fc065cc41af998868fda76a7b0e5'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''overseas electors'' in the Indian electoral system:',
    'The overseas electors, registered under the Representation of the People Act, 1950 and the rules of 2013, vote by the postal ballot through the Indian missions abroad, and the registration facility was made available in more than one hundred and fifty countries.',
    'easy',
    'Election Commission of India',
    null,
    '569106bbd07315ea7098bb34618650d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '569106bbd07315ea7098bb34618650d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'are the Indian citizens registered as overseas voters in their constituency of origin and they vote by the postal ballot at the Indian missions abroad'),
            ('B', 'vote at the Indian embassies through the electronic voting machines'),
            ('C', 'are the non-resident Indians who vote in the constituency of their choice'),
            ('D', 'have been discontinued since 2019')
           ) as v(label, option_text)
 where q.question_hash = '569106bbd07315ea7098bb34618650d9'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''proxy voting'' by the electors:',
    'The proxy voting was permitted in the past but the 2019 amendments to the Representation of the People Act and the rules of procedure disallowed the voting by proxy with effect from the general elections of 2019, and the overseas electors are now required to use the postal ballot.',
    'easy',
    'Standard Reference',
    null,
    '0b6e98b0ae61ecca82e22e92edf3022f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0b6e98b0ae61ecca82e22e92edf3022f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'was permitted in the elections up to 2018 and has been disallowed with effect from 2019'),
            ('B', 'is permitted for the overseas electors only'),
            ('C', 'has always been permitted in the parliamentary elections'),
            ('D', 'is permitted only in the panchayat elections')
           ) as v(label, option_text)
 where q.question_hash = '0b6e98b0ae61ecca82e22e92edf3022f'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Chief Electoral Officer'' of a State:',
    'The Chief Electoral Officer, appointed by the Election Commission, is responsible for the conduct of the elections in the State and for the enforcement of the Model Code of Conduct, and the District Election Officer performs the similar function in the district.',
    'easy',
    'Election Commission of India',
    null,
    'ded25ab54d5cd758f184806e559ca62c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ded25ab54d5cd758f184806e559ca62c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the Chief Secretary of the State'),
            ('B', 'is appointed by the Election Commission and controls the conduct of the elections in the State'),
            ('C', 'is appointed by the Governor on the advice of the Commission'),
            ('D', 'is the Governor of the State')
           ) as v(label, option_text)
 where q.question_hash = 'ded25ab54d5cd758f184806e559ca62c'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Election Commission of India'' publishes annually the:',
    'The Commission publishes the statistical reports with the turnout, the number of the electors, the polling stations and the other data for each election, along with the ''All India Parties'' statistics of the recognised parties and the expenditure.',
    'easy',
    'Election Commission of India',
    null,
    'f48cebd9cb9f2d8105db772daf7836ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f48cebd9cb9f2d8105db772daf7836ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the list of the voters of every constituency'),
            ('B', 'the audited accounts of the political parties'),
            ('C', 'the delimitation orders of the constituencies'),
            ('D', 'statistical reports on the turnout and the other aspects of the elections and the ''Statistical Report'' of the general elections')
           ) as v(label, option_text)
 where q.question_hash = 'f48cebd9cb9f2d8105db772daf7836ed'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Political Parties'' — A party is recognised as a ''State Party'' by the Election Commission if it secures at least:',
    'The Election Symbols (Reservation and Allotment) Order, 1968 provides for the recognition of a State party on the securing of six per cent of the total valid votes polled in the State in the last election, and a national party on the securing of six per cent of the total valid votes polled in the country.',
    'hard',
    'Standard Reference',
    null,
    '8f225ea8d74ac371694d6f8c3cee1866'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f225ea8d74ac371694d6f8c3cee1866'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ten per cent of the total valid votes polled in the country'),
            ('B', 'twenty per cent of the total valid votes polled in the State'),
            ('C', 'six per cent of the total valid votes polled in the State in the last election'),
            ('D', 'twelve per cent of the total valid votes polled in the State')
           ) as v(label, option_text)
 where q.question_hash = '8f225ea8d74ac371694d6f8c3cee1866'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'Which of the following statements is/are correct in relation to the Affidavit of the assets and the liabilities?',
    'The Supreme Court in Lok Pravasi Mandal v. Union of India, 2020 directed the filing of the affidavit of the assets, the liabilities, the educational qualifications and the criminal cases in the revised format and the rejection of the nomination papers of the candidates who do not comply with it.',
    'hard',
    'Supreme Court judgment',
    2020,
    '0e1a287ec3fdfa95554380c196627a95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0e1a287ec3fdfa95554380c196627a95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the affidavit is optional for the independents'),
            ('B', 'the candidates need not disclose the criminal cases before the election'),
            ('C', 'the candidates must file the affidavit of the assets, the liabilities and the educational qualifications in the format prescribed by the Commission'),
            ('D', 'only the candidates for the Lok Sabha must file the affidavit')
           ) as v(label, option_text)
 where q.question_hash = '0e1a287ec3fdfa95554380c196627a95'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', introduced the three-tier Panchayati Raj structure:',
    'The Central Information Commission is a statutory body under the Right to Information Act, 2005 with its own commissioners appointed by the President, and it hears the second appeals and the complaints against the State Information Commissions.',
    'easy',
    'Standard Reference',
    null,
    '40b054e309cb9119aa3425ae91f14b79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '40b054e309cb9119aa3425ae91f14b79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'constitutional body created by an amendment'),
            ('B', 'statutory body under the Right to Information Act, 2005, with the Information Commissioners appointed by the President'),
            ('C', 'wing of the Supreme Court'),
            ('D', 'non-statutory body of the Ministry of Home Affairs')
           ) as v(label, option_text)
 where q.question_hash = '40b054e309cb9119aa3425ae91f14b79'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Law Commission'' of India:',
    'The National Law Commission is a statutory body under the Legal Services Authorities Act, 1987, chaired by the Law Minister, and it works on the examination of the laws and the identification of the areas of the law that need the reform and the codification.',
    'medium',
    'Standard Reference',
    null,
    '82b9ca2aa848e8eb9d7cdae761bf8623'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82b9ca2aa848e8eb9d7cdae761bf8623'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a non-statutory body of the Ministry of Law and Justice chaired by the Law Minister'),
            ('B', 'is a judicial body of the Supreme Court'),
            ('C', 'is a body of the Legislative Department'),
            ('D', 'is a statutory body under the Legal Services Authorities Act that examines the laws and proposes the reforms')
           ) as v(label, option_text)
 where q.question_hash = '82b9ca2aa848e8eb9d7cdae761bf8623'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Central Vigilance Commission'' of India:',
    'The CVC is a non-statutory, multi-member body that functions under the executive control of the Central Government, and the Supreme Court in 2011 gave the directives about the appointment of the commissioners, the procedure and the limitations of the inquiry.',
    'medium',
    'Standard Reference',
    null,
    '65e0443ec5eac8948ca15b046e3ff709'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '65e0443ec5eac8948ca15b046e3ff709'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a non-statutory multi-member body that functions under the supervision of the Central Government'),
            ('B', 'is a statutory body created by an Act of Parliament in 2003'),
            ('C', 'is a judicial body of the Supreme Court'),
            ('D', 'is a body of the Comptroller and Auditor General')
           ) as v(label, option_text)
 where q.question_hash = '65e0443ec5eac8948ca15b046e3ff709'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Lokayukta'' in the States:',
    'The Lokayuktas are the State anti-corruption ombudsmen set up under the various State laws, and the Central Lokpal and Lokayuktas Act, 2013 provides for the establishment of the Lokayuktas in the States that do not have their own laws and the High Court can appoint the Lokayukta of such a State.',
    'medium',
    'Standard Reference',
    null,
    'ee08e1bd5bc44cd6a32b7673a6a6ae24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ee08e1bd5bc44cd6a32b7673a6a6ae24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a judicial body of the High Court'),
            ('B', 'is a part of the Election Commission'),
            ('C', 'is a central appointment of the President'),
            ('D', 'is the anti-corruption ombudsman set up under the respective State laws')
           ) as v(label, option_text)
 where q.question_hash = 'ee08e1bd5bc44cd6a32b7673a6a6ae24'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Commission for Backward Classes'' was created through the:',
    'The 102nd Amendment of 2018 created the National Commission for Backward Classes on the lines of the National Commission for the Scheduled Castes and the Scheduled Tribes, and it also strengthened the powers of the State commissions.',
    'medium',
    'Standard Reference',
    null,
    'ad9f41e7d000302d1abf104dcdedfd5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ad9f41e7d000302d1abf104dcdedfd5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '103rd Constitutional Amendment Act, 2019'),
            ('B', '101st Constitutional Amendment Act, 2016'),
            ('C', '102nd Constitutional Amendment Act, 2018'),
            ('D', '105th Constitutional Amendment Act, 2021')
           ) as v(label, option_text)
 where q.question_hash = 'ad9f41e7d000302d1abf104dcdedfd5f'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Consumer Protection Act, 2019'' provides for the product liability of the:',
    'The 2019 Act extends the product liability to the services and provides for the claim for the deficiency in the defects, the deficiencies in the services, the misleading advertisements and the unfair contractual terms, and the liability of the e-commerce platforms is also provided for.',
    'easy',
    'Standard Reference',
    null,
    '1cc2675d20c3f9351862c2fd26952ec8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cc2675d20c3f9351862c2fd26952ec8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the sellers of the defective goods only'),
            ('B', 'goods and the services for the deficiency in the defect or the service'),
            ('C', 'only the goods for the manufacturing defects'),
            ('D', 'only the services for the negligence')
           ) as v(label, option_text)
 where q.question_hash = '1cc2675d20c3f9351862c2fd26952ec8'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Administrative Tribunals'' in India:',
    'The administrative tribunals were set up under the various statutes, for example the Central Administrative Tribunal, the NCLT, the NCLAT, the ITAT and the CAT, and the Tribunals Reforms Act, 2021 abolished the three-tier structure and gave a single appellate body for each category.',
    'medium',
    'Standard Reference',
    null,
    '4c52f97dd29efc609892bce182713c30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4c52f97dd29efc609892bce182713c30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'were set up under the relevant statutes for the adjudication of the disputes in the specialised domains'),
            ('B', 'are the appellate wings of the High Courts for the administrative cases'),
            ('C', 'are the tribunals of the Revenue Ministry'),
            ('D', 'were abolished by the Tribunals Reforms Act, 2021')
           ) as v(label, option_text)
 where q.question_hash = '4c52f97dd29efc609892bce182713c30'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Central Adjudicating Authority'' under the Prevention of Money Laundering Act:',
    'The Central Adjudicating Authority, chaired by the Finance Minister with the Revenue and the Law Secretaries as the members, decides the applications for the confirmation of the attachment and the forfeiture of the assets made by the Reporting Officers under the PMLA.',
    'medium',
    'Standard Reference',
    null,
    '62e0c46de037386f0ba6b763586a528d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '62e0c46de037386f0ba6b763586a528d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is chaired by the Governor of the RBI'),
            ('B', 'is a judicial body of the Supreme Court'),
            ('C', 'is chaired by the Finance Minister and decides the applications of the provisional attachment of the assets'),
            ('D', 'is the body that reviews the orders of the Financial Intelligence Unit')
           ) as v(label, option_text)
 where q.question_hash = '62e0c46de037386f0ba6b763586a528d'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Financial Intelligence Unit'' of India:',
    'The FIU-IND, set up under the PMLA, is the central agency for the receipt, the analysis and the dissemination of the financial intelligence and the reports of the suspicious transactions received from the reporting entities.',
    'medium',
    'Standard Reference',
    null,
    '882aabcfa8219e9049d64596a794eddd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '882aabcfa8219e9049d64596a794eddd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the central agency for the receipt and the analysis of the reports of the transactions suspected to be related to the money laundering'),
            ('B', 'is the agency for the recovery of the bad assets'),
            ('C', 'is the agency that conducts the financial audits of the banks'),
            ('D', 'is the body that supervises the capital markets')
           ) as v(label, option_text)
 where q.question_hash = '882aabcfa8219e9049d64596a794eddd'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Enforcement Directorate is:',
    'The DRI is the intelligence arm of the Department of Revenue that detects and investigates the tax evasion and the money laundering and the cases are prosecuted in the designated courts, and the DRI Act of 2001 provides for its officers to be treated as the officers of the income tax.',
    'medium',
    'Standard Reference',
    null,
    '83a3e53849fdde68e7d5c2cac61ea859'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '83a3e53849fdde68e7d5c2cac61ea859'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a statutory body of the GST Council'),
            ('B', 'the intelligence arm of the tax department for the detection of the tax evasion'),
            ('C', 'the body that conducts the customs audits'),
            ('D', 'the agency for the enforcement of the corporate laws')
           ) as v(label, option_text)
 where q.question_hash = '83a3e53849fdde68e7d5c2cac61ea859'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Vice-Chairman of the NITI Aayog:',
    'The Vice-Chairman of the NITI Aayog is appointed by the Central Government and is a Union Minister of State, while the Chairperson is the Prime Minister, and the full-time Chairman of the NITI Aayog is a Union Minister of Cabinet rank.',
    'medium',
    'NITI Aayog',
    null,
    'f0f7c8b94dacbdf9ad9ccfd996f2b7a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f0f7c8b94dacbdf9ad9ccfd996f2b7a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the Leader of the Opposition in the Lok Sabha'),
            ('B', 'is the Governor of the State with the highest population'),
            ('C', 'is elected by the Governing Council'),
            ('D', 'is appointed by the Central Government and is a Union Minister of State')
           ) as v(label, option_text)
 where q.question_hash = 'f0f7c8b94dacbdf9ad9ccfd996f2b7a4'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 311'' of the Constitution:',
    'Article 311(1) provides that no civil servant shall be dismissed, removed or reduced in rank except in accordance with the procedure and the inquiry and the opportunity of the hearing, and the 42nd Amendment inserted the proviso for the conduct of the inquiry by the authority prescribed in the service rules.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '173efa6b415669008f4f5a070fe1ba96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '173efa6b415669008f4f5a070fe1ba96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provides for the transfer of the officers of the All India Services'),
            ('B', 'provides the safeguards for a civil servant against the arbitrary removal or the reduction in rank, and the inquiry and the opportunity of the hearing before the disciplinary action'),
            ('C', 'lays down the conditions of the service of the civil servants of the Union'),
            ('D', 'provides the procedure of the impeachment of the President')
           ) as v(label, option_text)
 where q.question_hash = '173efa6b415669008f4f5a070fe1ba96'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 312'' of the Constitution provides for:',
    'Article 312 empowers Parliament to provide for the All India Services common to the Union and the States, and the Indian Administrative Service, the Indian Police Service and the Indian Forest Service have been constituted under it with the All India Services Act, 1951.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'fa42bf6b926f93f61d7e5764e5f4ce1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fa42bf6b926f93f61d7e5764e5f4ce1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the All India Services common to the Union and the States'),
            ('B', 'the continuance in force of the Union armed forces'),
            ('C', 'the creation of the additional judges of the High Courts'),
            ('D', 'the transfer of the officers of the State services')
           ) as v(label, option_text)
 where q.question_hash = 'fa42bf6b926f93f61d7e5764e5f4ce1d'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 320'' of the Constitution deals with:',
    'Article 320 provides that the public service commissions shall make the rules for the conduct of the service of the persons appointed to the public services of the Union and the States, and it also provides for the collective consideration of the claims for the conditions of service.',
    'medium',
    'Standard Reference',
    null,
    '3b54437d21ce6e62f6de0293ec82c50f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3b54437d21ce6e62f6de0293ec82c50f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the permanent commissions'),
            ('B', 'the appointment of the commission members'),
            ('C', 'the power of the public service commissions to make the rules for the conduct of the service'),
            ('D', 'the right of the civil servants to the constitutional remedies')
           ) as v(label, option_text)
 where q.question_hash = '3b54437d21ce6e62f6de0293ec82c50f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'the disciplinary inquiry of a public servant shall not be conducted:',
    'Article 320(2), inserted by the 42nd Amendment of 1976, provides that the disciplinary inquiry shall not be conducted by a person who is in the service of the Union or a State and is junior in rank to the person who is the subject of the inquiry.',
    'hard',
    'Standard Reference',
    null,
    '800b39180901f70b340e14f0573619df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '800b39180901f70b340e14f0573619df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only by the High Court'),
            ('B', 'by the Election Commission'),
            ('C', 'after the retirement of the public servant'),
            ('D', 'by a person who is a public servant of a lower rank')
           ) as v(label, option_text)
 where q.question_hash = '800b39180901f70b340e14f0573619df'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'are adjudicated by the tribunals constituted:',
    'Article 262 provides that Parliament may by law provide for the adjudication of any dispute relating to the waters of the inter-State rivers or the river valleys, and the tribunals have been constituted for the Krishna, the Godavari, the Narmada, the Ravi-Beas, the Vansadhara, the Mahadayi, the Mahi and the Periyar basins.',
    'hard',
    'Standard Reference',
    null,
    '97bb6c3dbf64d3d216d4d2b8fbbd7197'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '97bb6c3dbf64d3d216d4d2b8fbbd7197'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'by the Supreme Court alone'),
            ('B', 'by the Parliament under the Inter-State River Water Disputes Act, 1956'),
            ('C', 'resolved by the Interstate Council'),
            ('D', 'left to the adjudication of the High Courts')
           ) as v(label, option_text)
 where q.question_hash = '97bb6c3dbf64d3d216d4d2b8fbbd7197'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The GST Council in the Constitution is provided for under Article:',
    'The GST Council, chaired by the Union Finance Minister with the State finance ministers as the members, is the apex body for the administration of the GST and it recommends the rates, the design and the structure of the tax and the settlement of the disputes between the Centre and the States.',
    'medium',
    'Standard Reference',
    null,
    '9f329afacd82326fcad9738db7db9492'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9f329afacd82326fcad9738db7db9492'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a body of the Ministry of Finance alone'),
            ('B', 'a constitutional body created by an amendment'),
            ('C', 'joint forum of the Centre and the States that recommends the GST rates and the structure and the settlement of the disputes'),
            ('D', 'the apex body of the taxation administration')
           ) as v(label, option_text)
 where q.question_hash = '9f329afacd82326fcad9738db7db9492'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', reduced the term of the Lok Sabha and the State Assemblies to four years:',
    'Article 371-I was inserted by the 2019 Reorganisation Act, which also substituted Article 35A with a provision in the Jammu and Kashmir Reorganisation Act of 2019, and it was held by the Supreme Court in December 2023 to be subsumed in Article 370.',
    'easy',
    'Standard Reference',
    null,
    'c22d437ff0337fa8433c29fb4f88beab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c22d437ff0337fa8433c29fb4f88beab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'were inserted by the Constitution (Jammu and Kashmir) Reorganisation Act, 2019'),
            ('B', 'were inserted by the 35th Amendment of 1974'),
            ('C', 'remain as Article 370 and continue to apply'),
            ('D', 'were inserted by the 101st Amendment of 2016')
           ) as v(label, option_text)
 where q.question_hash = 'c22d437ff0337fa8433c29fb4f88beab'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Doctrine of the ''Separation of Powers'' in India was propounded by:',
    'Justice M. Patanjali Sastri in Gwalior Raj Kamal case in 1950 explained the doctrine of the separation of powers in the Indian context and held that the Constitution does not establish a rigid separation of the three organs of the State.',
    'medium',
    'Standard Reference',
    null,
    'd0ae8cf0518cec44538c5d7a2b353a98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd0ae8cf0518cec44538c5d7a2b353a98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Justice B. K. Mukherjea'),
            ('B', 'Justice S. R. Das'),
            ('C', 'Justice Hansa Kelsen'),
            ('D', 'Justice M. Patanjali Sastri in the Gwalior case')
           ) as v(label, option_text)
 where q.question_hash = 'd0ae8cf0518cec44538c5d7a2b353a98'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', curtailed the powers of the judiciary and the legislatures:',
    'Under Article 252 and the repugnancy doctrine, the central law prevails over the State law to the extent of the conflict, while the doctrine of eclipse makes a pre-existing law inoperative to the extent of the inconsistency with a later amendment.',
    'easy',
    'Standard Reference',
    null,
    'dd8ddc73aaf08eb57e4d50f6a7ee068c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dd8ddc73aaf08eb57e4d50f6a7ee068c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'holds that the President has the power to override the laws'),
            ('B', 'holds that the pre-existing law is wholly void from the beginning'),
            ('C', 'holds that the judiciary can strike down the laws of the legislature'),
            ('D', 'holds that where a law made by the State legislature conflicts with a central law on the same subject, the central law prevails to the extent of the conflict')
           ) as v(label, option_text)
 where q.question_hash = 'dd8ddc73aaf08eb57e4d50f6a7ee068c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Article 13 of the Constitution provides for the doctrine of the:',
    'Article 13 provides that the laws inconsistent with the Fundamental Rights are void, and this is the basis of the judicial review, which the Kesavananda Bharati judgment has qualified by holding that the Parliament''s amending power is wide but not unlimited.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '38b9ad7036a90b8a957caaf4e0680221'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '38b9ad7036a90b8a957caaf4e0680221'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is exercised by the legislature'),
            ('B', 'has been abolished by the 44th Amendment'),
            ('C', 'keeps the Constitution supreme and allows the courts to strike down the laws that violate the Fundamental Rights'),
            ('D', 'is exercised by the President')
           ) as v(label, option_text)
 where q.question_hash = '38b9ad7036a90b8a957caaf4e0680221'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', added the Fundamental Duties to the Constitution:',
    'Article 13(4) declares that nothing in Article 13 shall be deemed to affect the power of Parliament to make any law to give effect to the provisions of Article 368, and it was inserted by the Twenty-Fourth Amendment of 1971.',
    'easy',
    'Standard Reference',
    null,
    '07e9b91bd306c3c6439717a582af163b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '07e9b91bd306c3c6439717a582af163b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seventh Amendment Act, 1956'),
            ('B', 'Twenty-Fourth Amendment Act, 1971'),
            ('C', 'First Amendment Act, 1951'),
            ('D', 'Forty-Third Amendment Act, 1977')
           ) as v(label, option_text)
 where q.question_hash = '07e9b91bd306c3c6439717a582af163b'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', extended the term of the Lok Sabha to five years:',
    'Article 359 provides that during the operation of a national emergency the right to move the courts for the enforcement of the specified Fundamental Rights can be suspended by a Presidential order, and the right under Article 32 is one of them, and the forty-fourth Amendment provides that the order can be revoked if the emergency is ended.',
    'easy',
    'Standard Reference',
    null,
    '1318d1e9945843067117eb038d16ab5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1318d1e9945843067117eb038d16ab5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'cannot be suspended except as provided by Article 359 during the operation of a national emergency'),
            ('B', 'is available only against the Central Government'),
            ('C', 'is available only after the exhaustion of the other remedies'),
            ('D', 'can be suspended by the President during the President''s rule')
           ) as v(label, option_text)
 where q.question_hash = '1318d1e9945843067117eb038d16ab5d'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', made the Directive Principles enforceable by the courts:',
    'The Supreme Court has held that the rights to life and personal liberty under Article 21 cannot be suspended even during a national emergency, and the twenty-fourth Amendment made the suspension of the specified rights subject to the requirement that the emergency operations be consistent with the basic structure.',
    'easy',
    'Standard Reference',
    null,
    'bcaa3a9836a21f08047eb3dc9fffe576'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bcaa3a9836a21f08047eb3dc9fffe576'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'it can be suspended by the Parliament only'),
            ('B', 'the twenty-fourth Amendment and the jurisprudence of the courts place the rights to life and personal liberty beyond the reach of the emergency'),
            ('C', 'it is enforceable only in the High Courts'),
            ('D', 'it is not a fundamental right')
           ) as v(label, option_text)
 where q.question_hash = 'bcaa3a9836a21f08047eb3dc9fffe576'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', removed the right to the property from the Fundamental Rights:',
    'The President''s Rule can continue for one year and then for successive periods of one year with the approval of both Houses of Parliament, but it cannot exceed three years in all, and the S. R. Bommai judgment held that the proclamation is subject to the judicial review.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '6eb96dd8d47cb9eef5fd27f4cd641a64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6eb96dd8d47cb9eef5fd27f4cd641a64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is one year without the approval of Parliament'),
            ('B', 'is two years with the approval of the Lok Sabha alone'),
            ('C', 'is six months in all'),
            ('D', 'is three years in all, with the approval of both Houses of Parliament')
           ) as v(label, option_text)
 where q.question_hash = '6eb96dd8d47cb9eef5fd27f4cd641a64'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'when a State government is unable to function:',
    'Article 365 provides the enabling provision for the exercise of the authority of the Union in the event of the failure of the constitutional machinery in a State, and it is read with Article 356 for the President''s rule.',
    'medium',
    'Standard Reference',
    null,
    '19c953d172fae6e9258ba3dd97ca8ca8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19c953d172fae6e9258ba3dd97ca8ca8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'when a State government is unable to function in accordance with the Constitution, the authority of the Union Government is to be exercised so as to secure the Government of the State in conformity with the Constitution'),
            ('B', 'the Parliament can dissolve the State Assembly'),
            ('C', 'the Comptroller and Auditor General takes over the accounts of the State'),
            ('D', 'the President can dismiss the Governor of a State')
           ) as v(label, option_text)
 where q.question_hash = '19c953d172fae6e9258ba3dd97ca8ca8'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Article 367'' of the Constitution deals with:',
    'Article 367 defines the expressions such as the Government of India, the State, the British territory and the public, and the First Amendment of 1951 added the definitions of the State and the taxes on the sale of goods.',
    'medium',
    'Standard Reference',
    null,
    '0035dbfe6b4f747c5d1041612408af78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0035dbfe6b4f747c5d1041612408af78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the repeal of the laws of the British colonial era'),
            ('B', 'the power of the legislature to make the laws'),
            ('C', 'the definitions of the expressions used in the Constitution, and it was amended by the First Amendment'),
            ('D', 'the determination of the boundaries of the States')
           ) as v(label, option_text)
 where q.question_hash = '0035dbfe6b4f747c5d1041612408af78'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Which of the following statements regarding the Schedule is correct?',
    'The Concurrent List has 52 subjects after the transfer of the education, the environment and the forest subjects to it by the Forty-Second Amendment of 1976, and the Banking was transferred to it by the Hundred and First Amendment of 2016, and the lists have 97 and 66 subjects in the Union and the State Lists.',
    'hard',
    'Standard Reference',
    null,
    '45aef811458d6f0fe24a466c4906d9cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '45aef811458d6f0fe24a466c4906d9cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '47'),
            ('B', '52'),
            ('C', '66'),
            ('D', '97')
           ) as v(label, option_text)
 where q.question_hash = '45aef811458d6f0fe24a466c4906d9cb'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''First Schedule'' of the Constitution contains:',
    'The First Schedule contains the names and the territories of the States and the Union Territories, and it was recast by the Seventh Amendment of 1956 with the States Reorganisation Act, and the territories have been added from time to time by the parliamentary statutes.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'da807a70d68866001443bce0c1d6ddce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'da807a70d68866001443bce0c1d6ddce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the emoluments of the high offices'),
            ('B', 'the list of the languages'),
            ('C', 'the forms of the oaths'),
            ('D', 'the list of the States and the Union Territories with their territories')
           ) as v(label, option_text)
 where q.question_hash = 'da807a70d68866001443bce0c1d6ddce'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', inserted the Article 39A on the equal justice and the free legal aid:',
    'Article 1(3) provides that Parliament may form new States and alter the areas, the boundaries and the names of the existing States, and the State legislature can also form a new State within its own territory with the concurrence of the President, and Article 3 lays down the procedure for it.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '12b226bd2135758c1db2d417fb391276'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12b226bd2135758c1db2d417fb391276'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is vested in the Election Commission'),
            ('B', 'is vested only in the President'),
            ('C', 'is vested in Parliament and the States can also form the new States with the concurrence of the President'),
            ('D', 'is vested in the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '12b226bd2135758c1db2d417fb391276'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Article 3'' of the Constitution deals with:',
    'Article 3 provides for the formation of the new States and the alteration of the areas, the boundaries and the names of the existing States, and the views of the State legislature are to be ascertained before the bill is introduced and the bill refers to the President for the assent with the recommendations of the State.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'f3f557e7efce193e875341e22f522fa3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3f557e7efce193e875341e22f522fa3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the formation of the new States and the alteration of the areas and the boundaries and the names of the existing States'),
            ('B', 'the merger of the Union Territories'),
            ('C', 'the reorganisation of the States in 1956'),
            ('D', 'the creation of the Union Territories')
           ) as v(label, option_text)
 where q.question_hash = 'f3f557e7efce193e875341e22f522fa3'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Article 2'' of the Constitution deals with:',
    'Article 2 provides that Parliament may by law admit into the Union or establish the new States on such terms and conditions as it thinks fit, and the new States referred to in Article 3 are the States formed in the Union as distinguished from those referred to in Article 2.',
    'medium',
    'Standard Reference',
    null,
    '363ddbec724763fe55947a6a7be28703'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '363ddbec724763fe55947a6a7be28703'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the formation of the new States'),
            ('B', 'the alteration of the boundaries of the States'),
            ('C', 'the certification of the Scheduled Areas'),
            ('D', 'the admission of the new States into the Union or the establishment of the new States in the Union by Parliament')
           ) as v(label, option_text)
 where q.question_hash = '363ddbec724763fe55947a6a7be28703'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 6'' of the Constitution deals with:',
    'Article 6 provides that all the persons who have come to the State of India from the territory of Pakistan and have been ordinarily resident in India, or the persons of any of the communities specified in the first column of the First Schedule, are deemed to be citizens of India, and it was replaced by the Citizens (Amendment) Act, 2003.',
    'medium',
    'Standard Reference',
    null,
    'decb2774af1096d626df1ac9c90bdf55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'decb2774af1096d626df1ac9c90bdf55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the citizenship of the persons of Indian origin residing outside India'),
            ('B', 'the deprivation of the citizenship'),
            ('C', 'the citizenship of the persons migrating from Pakistan to India'),
            ('D', 'the citizenship of the persons born in India')
           ) as v(label, option_text)
 where q.question_hash = 'decb2774af1096d626df1ac9c90bdf55'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In the context of the Article 15(4), which of the following is correct?',
    'Article 15(4) and 15(5) permit the special provisions for the advancement of the backward classes and the Scheduled Tribes in the education and in the public employment, and Article 15(6), inserted by the Ninety-Third Amendment of 2005, extends the protection to the economically weaker sections.',
    'hard',
    'Standard Reference',
    null,
    'a704bdb1b845ff2e8a72e629bded7498'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a704bdb1b845ff2e8a72e629bded7498'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the reservation of the seats in the legislatures'),
            ('B', 'the special provisions for the advancement of the socially and the educationally backward classes or the Scheduled Tribes in the matters of the admission to the educational institutions'),
            ('C', 'the abolition of the discrimination on the ground of religion'),
            ('D', 'the special provisions for the women in the public employment')
           ) as v(label, option_text)
 where q.question_hash = 'a704bdb1b845ff2e8a72e629bded7498'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 16(4A)'' of the Constitution provides for:',
    'Article 16(4A), inserted by the Seventy-Seventh Amendment of 1995, permits the reservation of posts in the services for the backward classes which are not adequately represented, and it has been the basis of the Mandal Commission implementation.',
    'medium',
    'Standard Reference',
    null,
    'ff1a9a895379da0e676c7cb040f95963'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ff1a9a895379da0e676c7cb040f95963'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the reservation of posts in the public employment for the backward classes not adequately represented'),
            ('B', 'the abolition of the civil services examination'),
            ('C', 'the abolition of the distinction between the civil and the military services'),
            ('D', 'the abolition of the titles')
           ) as v(label, option_text)
 where q.question_hash = 'ff1a9a895379da0e676c7cb040f95963'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 18(1)'' of the Constitution abolishes:',
    'Article 18(1) abolishes the titles, and Article 18(2) provides that a citizen of India cannot accept any title from a foreign State without the consent of the President, and the honours and the awards of the military and the academic distinction are not covered.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    'a0b7cc8ccfd056bc5040e0d7473c9974'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a0b7cc8ccfd056bc5040e0d7473c9974'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the privy purses'),
            ('B', 'titles'),
            ('C', 'the feudal privileges'),
            ('D', 'the honours of the nobility')
           ) as v(label, option_text)
 where q.question_hash = 'a0b7cc8ccfd056bc5040e0d7473c9974'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'In the context of the Article 25, which of the following is correct?',
    'The freedoms of religion under Articles 25 to 28 are subject to the public order, the morality, the health and the other provisions of Part III, and the secular and the democratic State guarantees the freedom of the profession and the practice of any religion.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '2af9299518a287d5db48aaa757674a41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2af9299518a287d5db48aaa757674a41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is available only to the Hindus'),
            ('B', 'is an absolute right without any restriction'),
            ('C', 'is available only to the citizens of India'),
            ('D', 'is subject to the public order, the morality, the health and the other provisions of Part III')
           ) as v(label, option_text)
 where q.question_hash = '2af9299518a287d5db48aaa757674a41'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following is correct in the case of the Article 29?',
    'Article 29 provides that the interests of the minorities and the right to the conservation of the distinctive languages and the cultures shall be protected, and Article 30 gives the minorities the right to establish and administer the educational institutions of their choice.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '2266eef734e9a936d12ceb6c3f4adac3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2266eef734e9a936d12ceb6c3f4adac3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the right to the equality before the law'),
            ('B', 'the right to the freedom of speech'),
            ('C', 'the interests of the minorities, in the matter of the educational institutions'),
            ('D', 'the right to the freedom of the religion')
           ) as v(label, option_text)
 where q.question_hash = '2266eef734e9a936d12ceb6c3f4adac3'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to education in India is a fundamental right under Article:',
    'Article 21A, inserted by the Eighty-Sixth Amendment of 2002, provides that the State shall provide free and compulsory education to all the children of the age of six to fourteen years in such manner as the State may by law determine, and the Right of Children to Free and Compulsory Education Act, 2009 gives effect to it.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '8db2656afafdfd57799c79c4fbbedae4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8db2656afafdfd57799c79c4fbbedae4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provides for the free and compulsory education to the children of the age of six to fourteen years in the neighbourhood schools'),
            ('B', 'provides for the adult education in the rural areas'),
            ('C', 'provides for the vocational training in the schools'),
            ('D', 'provides for the higher education to be free for all')
           ) as v(label, option_text)
 where q.question_hash = '8db2656afafdfd57799c79c4fbbedae4'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 23(1)'' of the Constitution prohibits:',
    'Article 23(1) prohibits the traffic in the human beings and the forced labour, and Article 24 prohibits the employment of the children below the age of fourteen years in any factory or in any other hazardous employment.',
    'hard',
    'NCERT Class XII (Polity)',
    null,
    '3e7a9bd696d4bb502e7feedac8f12095'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3e7a9bd696d4bb502e7feedac8f12095'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the exploitation of the women in the factories'),
            ('B', 'the traffic in the human beings and the forced labour'),
            ('C', 'the import of the bonded labour'),
            ('D', 'the employment of the children below fourteen years')
           ) as v(label, option_text)
 where q.question_hash = '3e7a9bd696d4bb502e7feedac8f12095'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 39'' of the Constitution contains the Directive Principles that direct the State to secure:',
    'Article 39(d) directs the State to secure the equal pay for the equal work, 39(e) the living wage and a decent standard of life, 39(g) the promotion of the cottage industries and 39(h) the promotion of the cooperative societies, and 39(a) the prevention of the concentration of the wealth.',
    'hard',
    'Standard Reference',
    null,
    '15f14fc58cf62a686a8e07075d8ffc4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '15f14fc58cf62a686a8e07075d8ffc4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the right to the work and the education'),
            ('B', 'the promotion of the peace and the international cooperation'),
            ('C', 'a living wage and a decent standard of life to the workers, the promotion of the cottage industries and the co-operative enterprises, and the education of the children'),
            ('D', 'the equal pay for the men and the women')
           ) as v(label, option_text)
 where q.question_hash = '15f14fc58cf62a686a8e07075d8ffc4b'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The Forty-Second Amendment Act of 1976, often called the ''Mini-Constitution'', abolished the distinction between the Executive and the Legislature:',
    'Article 40 was added by the Forty-Third Amendment of 1977 and it became the foundation of the Panchayati Raj, and the Seventy-Third Amendment of 1992 gave the three-tier system its constitutional status.',
    'easy',
    'Standard Reference',
    null,
    'fbb5a3b1e6011d2c4ad7f7cc2056f0e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fbb5a3b1e6011d2c4ad7f7cc2056f0e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Forty-Third Amendment Act, 1977'),
            ('B', 'Ninety-Third Amendment Act, 2005'),
            ('C', 'First Amendment Act, 1951'),
            ('D', 'Seventh Amendment Act, 1956')
           ) as v(label, option_text)
 where q.question_hash = 'fbb5a3b1e6011d2c4ad7f7cc2056f0e1'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The Article 43A inserted by the Forty-Second Amendment Act, 1976 deals with:',
    'The Forty-Second Amendment of 1976, the so-called Mini-Constitution, made sweeping changes including the addition of the Article 39A on the equal justice and the free legal aid, the Article 44 on the uniform civil code, the Article 48A on the environment and the Article 43A on the workers'' participation, and it also reduced the term of the Lok Sabha to four years.',
    'easy',
    'Standard Reference',
    null,
    '081643caafa25fb328449197acd1b523'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '081643caafa25fb328449197acd1b523'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'introduced the three-tier Panchayati Raj'),
            ('B', 'abolished the Fundamental Rights of the property'),
            ('C', 'reduced the term of the Lok Sabha to four years'),
            ('D', 'inserted the Article 39A on the equal justice and the Article 44 on the uniform civil code and the Article 48A on the environment')
           ) as v(label, option_text)
 where q.question_hash = '081643caafa25fb328449197acd1b523'
on conflict (question_id, label) do nothing;

commit;
