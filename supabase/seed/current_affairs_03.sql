-- =============================================================================
-- current_affairs_03.sql — current_affairs question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The reserves crossed:',
    'The foreign exchange reserves of India crossed the $600 billion mark in 2022 and the reserves were a record high in the fiscal year 2022-23.',
    'medium',
    'RBI',
    2022,
    '8853124d44c5519a4bfe1e85d7912cfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8853124d44c5519a4bfe1e85d7912cfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the $600 billion mark'),
            ('B', 'over $200 billion'),
            ('C', 'over $1 trillion'),
            ('D', 'below $300 billion')
           ) as v(label, option_text)
 where q.question_hash = '8853124d44c5519a4bfe1e85d7912cfc'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Which of the following statements is/are correct in relation to the India?',
    'The rupee touched a record low of about 82.7 to the dollar in 2022, on the back of the widening of the current account deficit and the outflows.',
    'medium',
    'Standard Reference',
    2022,
    'c880c6eff10b5beafb50741f457b4e98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c880c6eff10b5beafb50741f457b4e98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rupee was stable at 65'),
            ('B', 'There was no depreciation'),
            ('C', 'The rupee depreciated to a record low of about 82 to the dollar'),
            ('D', 'The rupee appreciated to 60')
           ) as v(label, option_text)
 where q.question_hash = 'c880c6eff10b5beafb50741f457b4e98'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The General Anti-Avoidance Rules were introduced:',
    'The GAAR, the generalised anti-avoidance rules, were introduced in the Finance Act of 2016 with effect from 1 April 2017, and they target the arrangements that have the effect of avoiding the tax.',
    'hard',
    'Standard Reference',
    2016,
    '5691a67e5876973c3240e507df21af69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5691a67e5876973c3240e507df21af69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1995'),
            ('B', 'repealed in 2022'),
            ('C', 'to the domestic transactions only'),
            ('D', 'in the Finance Act of 2016')
           ) as v(label, option_text)
 where q.question_hash = '5691a67e5876973c3240e507df21af69'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Vivad se Vishwas Act of 2020 provided:',
    'The Vivad se Vishwas Act of 2020 provided for the direct tax dispute resolution scheme under which the taxpayers could settle the pending cases at a reduced tax with no interest and no penalty.',
    'hard',
    'Standard Reference',
    2020,
    'b785a41d5d5a8acd6c53508f6b4c51fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b785a41d5d5a8acd6c53508f6b4c51fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scheme for the export promotion'),
            ('B', 'for the direct tax dispute resolution scheme'),
            ('C', 'a scheme for the bank recapitalisation'),
            ('D', 'a scheme for the privatisation')
           ) as v(label, option_text)
 where q.question_hash = 'b785a41d5d5a8acd6c53508f6b4c51fe'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Consider the following statements. Which of them is correct with regard to the India became?',
    'With the coal production of over 850 million tonnes in 2022, India became the second largest coal producer in the world after China.',
    'medium',
    'Standard Reference',
    2022,
    '038d027aeab1462f66424bbe6fa56c46'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '038d027aeab1462f66424bbe6fa56c46'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India was the first'),
            ('B', 'India was the fourth'),
            ('C', 'India was the tenth'),
            ('D', 'India became the second largest coal producer in the world')
           ) as v(label, option_text)
 where q.question_hash = '038d027aeab1462f66424bbe6fa56c46'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The renewable energy capacity crossed:',
    'The installed renewable energy capacity of India crossed the 150 GW mark in 2022, and the 2030 target of 500 GW was on track.',
    'medium',
    'MNRE',
    2022,
    'c09a489432ca50787f00d79d625aafd9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c09a489432ca50787f00d79d625aafd9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 150 GW mark'),
            ('B', 'over 20 GW'),
            ('C', 'over 500 GW'),
            ('D', 'over 1 TW')
           ) as v(label, option_text)
 where q.question_hash = 'c09a489432ca50787f00d79d625aafd9'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The India Semiconductor Mission approved:',
    'The India Semiconductor Mission approved the two fab units, the one by the Micron in Sanand in Gujarat and the one by the Kaynes in the Dholera in 2022-23.',
    'hard',
    'PIB',
    2022,
    '56439f9b7a4f46da092691a9bf950db4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '56439f9b7a4f46da092691a9bf950db4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only for the design'),
            ('B', 'the first two fab units'),
            ('C', 'in 2020'),
            ('D', 'discontinued')
           ) as v(label, option_text)
 where q.question_hash = '56439f9b7a4f46da092691a9bf950db4'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The National Quantum Mission was:',
    'The National Quantum Mission, with an outlay of Rs. 6,003.25 crore, was approved in 2023 for the quantum computers, the communication and the sensing technologies.',
    'medium',
    'PIB',
    2023,
    '613c247c7ba839de95e2f636460dec04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '613c247c7ba839de95e2f636460dec04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approved in 2016'),
            ('B', 'a defence mission'),
            ('C', 'approved in 2023'),
            ('D', 'approved in 2018')
           ) as v(label, option_text)
 where q.question_hash = '613c247c7ba839de95e2f636460dec04'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The National Education Policy of 2020 was:',
    'The National Education Policy of 2020, which replaced the 30 year old National Education Policy of 1986, was approved by the Cabinet in July 2021.',
    'easy',
    'PIB',
    2021,
    '9f4ec908b20b861f20807e3d3a64b79a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f4ec908b20b861f20807e3d3a64b79a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approved in 2015'),
            ('B', 'approved in 2018'),
            ('C', 'approved in 2022'),
            ('D', 'approved in 2021')
           ) as v(label, option_text)
 where q.question_hash = '9f4ec908b20b861f20807e3d3a64b79a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Which of the following is correct in the case of the National Education Policy?',
    'The 5+3+3+4 structure of the NEP covers the foundational stage of three years, the preparatory of five to eight, the middle of eight to eleven, the secondary of eleven to fourteen and the higher secondary of fourteen to eighteen.',
    'hard',
    'PIB',
    2021,
    '3060b4d53bafc8b1605968c6f7ad45e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3060b4d53bafc8b1605968c6f7ad45e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The foundational stage of 3 years, the preparatory of 5 to 8 and the middle of 8 to 11 and the secondary of 11 to 14 and the higher of 14 to 18'),
            ('B', 'It is 5 years of the school and 3 years of the college'),
            ('C', 'It is 3+4+4'),
            ('D', 'It is only for the higher education')
           ) as v(label, option_text)
 where q.question_hash = '3060b4d53bafc8b1605968c6f7ad45e6'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The medium of instruction till the 5th standard will be:',
    'The NEP recommends that the medium of instruction till at least the 5th standard will be the mother tongue or the local or the regional language where possible, and the Sanskrit will be offered at the secondary level.',
    'medium',
    'PIB',
    2021,
    'ea0958bc482086db2c1e0d50a9199cfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ea0958bc482086db2c1e0d50a9199cfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the English'),
            ('B', 'the mother tongue where possible'),
            ('C', 'only for the higher secondary'),
            ('D', 'banned')
           ) as v(label, option_text)
 where q.question_hash = 'ea0958bc482086db2c1e0d50a9199cfb'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Which of the following statements regarding the It emphasises the vocational education is correct?',
    'The NEP emphasises the vocational education with the exposure from the middle school stage and the integration of the vocational education with the mainstream schooling.',
    'medium',
    'PIB',
    2021,
    '615ae775c6ffee1a3e63caadaf4cb82a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '615ae775c6ffee1a3e63caadaf4cb82a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It restricted the vocational education to the urban areas'),
            ('B', 'It made the vocational education optional only for the girls'),
            ('C', 'It emphasises the vocational education with the exposure from the middle school stage'),
            ('D', 'It abolished the vocational education')
           ) as v(label, option_text)
 where q.question_hash = '615ae775c6ffee1a3e63caadaf4cb82a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Which of the following statements regarding the It envisages the multidisciplinary is correct?',
    'The NEP envisages a multidisciplinary and holistic education with the flexible and multiple entry and exit points in the academic and the vocational courses.',
    'medium',
    'PIB',
    2021,
    '40e84ac0c749bac2fbd7739683199287'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '40e84ac0c749bac2fbd7739683199287'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It envisages only the research universities'),
            ('B', 'It abolishes the colleges'),
            ('C', 'It is only for the school education'),
            ('D', 'It envisages the multidisciplinary and the holistic education with the flexible and the multiple entry and exit points in the academic and the vocational courses')
           ) as v(label, option_text)
 where q.question_hash = '40e84ac0c749bac2fbd7739683199287'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The 75th Independence Day was:',
    'The 75th Independence Day was celebrated on 15 August 2022 under the theme of ''Azadi Ka Amrit Mahotsav'', and the year 2022 marked the 75th anniversary of the independence.',
    'easy',
    'PIB',
    2022,
    '5d239c6b931119bcd0028aabfd33eb17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5d239c6b931119bcd0028aabfd33eb17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'celebrated in 2020'),
            ('B', 'celebrated on 15 August 2022'),
            ('C', 'celebrated in 2021'),
            ('D', 'celebrated in 2023')
           ) as v(label, option_text)
 where q.question_hash = '5d239c6b931119bcd0028aabfd33eb17'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''The ''Azadi Ka Amrit Mahotsav'' of 2022-23:',
    'The Azadi Ka Amrit Mahotsav was the year-long commemoration of the 75 years of the independence with 75 events and a series of the thematic programmes.',
    'medium',
    'PIB',
    2022,
    '31285884f3712732be68e2b66741da21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '31285884f3712732be68e2b66741da21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a year-long celebration of the 75 years of the independence'),
            ('B', 'Was the celebration of the 50 years of the independence'),
            ('C', 'Was the celebration of the 60 years of the republic'),
            ('D', 'Was the celebration of the 100 years of the republic')
           ) as v(label, option_text)
 where q.question_hash = '31285884f3712732be68e2b66741da21'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The National Flag Code was:',
    'The National Flag Code was amended in July 2021, and it now specifies the day of the hoisting of the flag at the schools and the colleges.',
    'hard',
    'Standard Reference',
    2021,
    '1c0805868d4601d1e6451a76de60f0b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1c0805868d4601d1e6451a76de60f0b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'amended in 2000'),
            ('B', 'never been amended'),
            ('C', 'amended in 2021 to specify the day of the hoisting'),
            ('D', 'amended in 1995')
           ) as v(label, option_text)
 where q.question_hash = '1c0805868d4601d1e6451a76de60f0b5'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'It was adopted on 26 January 1950 and the Lion Capital of the Sarnath is:',
    'The State Emblem of India, the Lion Capital of Ashoka at Sanchi, was adopted on 26 January 1950, and the motto Satyameva Jayate comes from the Mundaka Upanishad.',
    'medium',
    'Standard Reference',
    null,
    '8be3f9783a941edb49889a8783276ad2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8be3f9783a941edb49889a8783276ad2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ashoka Chakra'),
            ('B', 'the State Emblem'),
            ('C', 'adopted in 1947'),
            ('D', 'designed by the Nandalal Bose')
           ) as v(label, option_text)
 where q.question_hash = '8be3f9783a941edb49889a8783276ad2'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Which of the following statements regarding the National Emblem is correct?',
    'The National Emblem of India, adopted on 26 January 1950, was designed by the Nandalal Bose, who was also the principal designer of the national flag.',
    'hard',
    'Standard Reference',
    null,
    'e946ab60ef45acc4301153c0de62b78f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e946ab60ef45acc4301153c0de62b78f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Nandalal Bose designed the National Emblem of India'),
            ('B', 'The Nandalal Bose designed the Ashoka Chakra'),
            ('C', 'The Nandalal Bose designed the Parliament logo'),
            ('D', 'The Nandalal Bose designed the national emblem of Nepal')
           ) as v(label, option_text)
 where q.question_hash = 'e946ab60ef45acc4301153c0de62b78f'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''The 15th Lok Sabha'' was constituted on:',
    'The 15th Lok Sabha was constituted on 20 May 2022 after the general election, and the first session began on 13 June 2022.',
    'medium',
    'Standard Reference',
    2022,
    '42cb6603cc1566f9606c3056805be166'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42cb6603cc1566f9606c3056805be166'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26 May 2014'),
            ('B', '13 May 2014'),
            ('C', '20 May 2022'),
            ('D', '16 May 2019')
           ) as v(label, option_text)
 where q.question_hash = '42cb6603cc1566f9606c3056805be166'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''The 17th Lok Sabha'' was constituted on:',
    'The 17th Lok Sabha was constituted on 16 June 2024 after the general election of 2024, and the new government was sworn in on 9 June 2024.',
    'medium',
    'Standard Reference',
    2024,
    'c22384c639223df489865db00752c4c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c22384c639223df489865db00752c4c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '20 May 2022'),
            ('B', '18 May 2019'),
            ('C', '4 June 2019'),
            ('D', '16 June 2024')
           ) as v(label, option_text)
 where q.question_hash = 'c22384c639223df489865db00752c4c2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The theme of the Economic Survey 2021-22 was:',
    'The Economic Survey 2021-22 with the theme of Time to Move was presented on 31 January 2022, and the theme of the budget was ''The Budget''s Fiscal Policy''.',
    'medium',
    'PIB',
    2022,
    '310620a8e023584a1032ea40ddb8c43d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '310620a8e023584a1032ea40ddb8c43d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Reimagining'),
            ('B', 'the We Build Together'),
            ('C', 'Time to Move'),
            ('D', 'the Grow More')
           ) as v(label, option_text)
 where q.question_hash = '310620a8e023584a1032ea40ddb8c43d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Five Action Areas included:',
    'The Five Action Areas of the UN Food Systems Summit were the food security, the nutritious diets, the sustainable diets, the agri-food innovation and the resilient food systems.',
    'hard',
    'UN',
    2021,
    '64e8a8dd6c47a6c52c84aabbba88e9b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '64e8a8dd6c47a6c52c84aabbba88e9b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'five of the agriculture only'),
            ('B', 'the trade only'),
            ('C', 'the five regions'),
            ('D', 'the food security, the nutrition, the sustainable diets, the agri-food innovation and the resilient food systems')
           ) as v(label, option_text)
 where q.question_hash = '64e8a8dd6c47a6c52c84aabbba88e9b5'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The India Tourism Statistics of 2021 showed:',
    'The India Tourism Statistics of 2021 released by the Ministry of Tourism showed a recovery in the domestic tourism with about 677 million visits, and the statistics of 2022 recorded about 1,731 million domestic visits.',
    'hard',
    'Ministry of Tourism',
    2022,
    'c522d5c6ffd0c090b13f79f1ef9d9528'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c522d5c6ffd0c090b13f79f1ef9d9528'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a recovery in the domestic tourism with about 677 million visits'),
            ('B', 'the highest ever number of the international arrivals in 2021'),
            ('C', 'that the tourism statistics were not published'),
            ('D', 'that the foreign tourist arrivals fell by half')
           ) as v(label, option_text)
 where q.question_hash = 'c522d5c6ffd0c090b13f79f1ef9d9528'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The oil and the gas exploration of the Assam was:',
    'The Assam oil and the gas exploration blocks were opened to the private players in 2021 through the bidding process, after the 2019 and the 2020 explorations.',
    'hard',
    'Standard Reference',
    2021,
    '496d5bd6097df2115b8524fbd101be17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '496d5bd6097df2115b8524fbd101be17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'opened in 2015'),
            ('B', 'opened up to the private players in 2021'),
            ('C', 'opened in 1990'),
            ('D', 'never opened')
           ) as v(label, option_text)
 where q.question_hash = '496d5bd6097df2115b8524fbd101be17'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The PLI schemes were announced:',
    'The government announced the production linked incentive schemes for 14 sectors with an outlay of about Rs. 1.97 lakh crore, and the mobile phones, the pharmaceuticals and the food processing were the prominent among them.',
    'medium',
    'PIB',
    2021,
    'e70c439081145cb537ed3291cd96541c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e70c439081145cb537ed3291cd96541c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the textiles'),
            ('B', 'for the services only'),
            ('C', 'discontinued in 2022'),
            ('D', 'for the 14 sectors including the mobile phones, the pharmaceuticals and the food processing')
           ) as v(label, option_text)
 where q.question_hash = 'e70c439081145cb537ed3291cd96541c'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Fund of Funds for Startups was:',
    'The Fund of Funds for Startups, set up in 2021 with a corpus of Rs. 10,000 crore, is administered by the SIDBI and it invests in the SEBI registered funds.',
    'hard',
    'Standard Reference',
    2021,
    '81a07604fe0fa7f85b48ba81641ef208'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '81a07604fe0fa7f85b48ba81641ef208'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'rs. 4,000 crore'),
            ('B', 'set up with a corpus of Rs. 10,000 crore'),
            ('C', 'rs. 1,000 crore'),
            ('D', 'rs. 60,000 crore')
           ) as v(label, option_text)
 where q.question_hash = '81a07604fe0fa7f85b48ba81641ef208'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The National Master Plan has:',
    'The PM Gati Shakti National Master Plan has 14 sectors with the 20 key multimodal corridors and about 100 projects to be implemented by 2024-25.',
    'hard',
    'PIB',
    2021,
    'c7ebc12359b7a2219d99d5d2c50d8f96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c7ebc12359b7a2219d99d5d2c50d8f96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '30 sectors'),
            ('B', '100 sectors'),
            ('C', '14 sectors with the 20 key corridors and the 100 projects'),
            ('D', '7 sectors')
           ) as v(label, option_text)
 where q.question_hash = 'c7ebc12359b7a2219d99d5d2c50d8f96'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Which of the following statements regarding the National Monetisation Pipeline is correct?',
    'The government announced the National Monetisation Pipeline and the National Fund for the strategic sectors in 2021 as a part of the fiscal consolidation and the infrastructure development.',
    'hard',
    'Standard Reference',
    2021,
    '45edaf42a426876fe2dbff26898ad2af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45edaf42a426876fe2dbff26898ad2af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Monetisation Pipeline and the National Fund for the strategic sectors'),
            ('B', 'It was the disinvestment of the shares of the PSUs only'),
            ('C', 'It was the privatisation of the airports only'),
            ('D', 'There was no such fund')
           ) as v(label, option_text)
 where q.question_hash = '45edaf42a426876fe2dbff26898ad2af'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In the context of the India, which of the following is correct?',
    'India hosted the G20 Leaders'' Summit in New Delhi on 9 and 10 September 2023 with the theme of One Earth, One Family, One Future.',
    'easy',
    'PIB',
    2023,
    '9ed151fa04f083c44ab4ea242246a743'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9ed151fa04f083c44ab4ea242246a743'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India hosted the G20 in Bengaluru in 2023'),
            ('B', 'India hosted the G20 in Mumbai in 2023'),
            ('C', 'India hosted the G20 Summit in New Delhi in September 2023'),
            ('D', 'India hosted the G20 in 2019')
           ) as v(label, option_text)
 where q.question_hash = '9ed151fa04f083c44ab4ea242246a743'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Which of the following is correct in the case of the India hosted?',
    'India hosted the Miss World 2023 in Goa, and the country had earlier hosted the Miss Universe 1994 and the Miss World 2017.',
    'medium',
    'Standard Reference',
    2023,
    'aa6ca28f45c96126485afce02da95612'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aa6ca28f45c96126485afce02da95612'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There was no such event'),
            ('B', 'India hosted the Miss World 2023 in Goa'),
            ('C', 'India hosted the Miss Universe 2023'),
            ('D', 'India hosted the Miss World 2017 in Goa')
           ) as v(label, option_text)
 where q.question_hash = 'aa6ca28f45c96126485afce02da95612'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Reliance Retail acquired:',
    'In 2022 the Reliance Retail acquired the Seven Dreams and the Metro brands, and the company announced a partnership with the Amazon for the pincode.',
    'hard',
    'Standard Reference',
    2022,
    'e8cf92d58ca721b32a2933ce3129804d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e8cf92d58ca721b32a2933ce3129804d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Seven Dreams and the Metro'),
            ('B', 'the Flipkart only'),
            ('C', 'sold to the Amazon'),
            ('D', 'no acquisition')
           ) as v(label, option_text)
 where q.question_hash = 'e8cf92d58ca721b32a2933ce3129804d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The e-rupee pilot for the wholesale payments started:',
    'The wholesale digital rupee pilot was launched in 2022-23 and the retail pilot was in 29 districts of the four states, and the e-rupee is at par with the physical rupee.',
    'medium',
    'RBI',
    2023,
    '2dc22b807ef6cb8c9d5105fcc3b2a408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2dc22b807ef6cb8c9d5105fcc3b2a408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 2019'),
            ('B', 'only in the retail'),
            ('C', 'discontinued'),
            ('D', 'in 2023')
           ) as v(label, option_text)
 where q.question_hash = '2dc22b807ef6cb8c9d5105fcc3b2a408'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In the context of the Quad, which of the following is correct?',
    'The Quad Leaders'' Summit in Bali in 2022 announced the food and the agriculture package with the India-led initiative for the resilient food systems.',
    'hard',
    'PIB',
    2022,
    'dc8af5904e2f3ebf4717b11f5deafd2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc8af5904e2f3ebf4717b11f5deafd2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Quad announced the trade pact with the EU'),
            ('B', 'The Quad announced the food and the agriculture package with the India-led initiative'),
            ('C', 'The Quad announced the nuclear deal'),
            ('D', 'The Quad was dissolved')
           ) as v(label, option_text)
 where q.question_hash = 'dc8af5904e2f3ebf4717b11f5deafd2b'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Water Action Agenda was:',
    'The UN Water Conference of 2023 was held in New York and it saw the launch of the Water Action Agenda and the Water Call to Action, and the UN Water Conference of 2016 was in Budapest.',
    'hard',
    'UN',
    2023,
    '576ec0e3ecb66e81a178276910382aa3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '576ec0e3ecb66e81a178276910382aa3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'announced at the UN Water Conference in New York in March 2023'),
            ('B', 'in 2015'),
            ('C', 'in Cairo'),
            ('D', 'in Delhi in 2023')
           ) as v(label, option_text)
 where q.question_hash = '576ec0e3ecb66e81a178276910382aa3'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The Santiniketan was:',
    'The Santiniketan, the ashram and the university campus of Rabindranath Tagore, was inscribed as a UNESCO World Heritage site in July 2023.',
    'medium',
    'UNESCO',
    2023,
    '8fba09585dadf0a095ad69c0425c9c36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8fba09585dadf0a095ad69c0425c9c36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 2003'),
            ('B', 'inscribed in 2013'),
            ('C', 'not a World Heritage site'),
            ('D', 'inscribed in 2023')
           ) as v(label, option_text)
 where q.question_hash = '8fba09585dadf0a095ad69c0425c9c36'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Which of the following statements regarding the ''Digital India'' is correct?',
    'The Digital India and the digital infrastructure were the key themes of the Digital India Week 2023 and of the Digital Infrastructure Transformation Mission.',
    'hard',
    'Standard Reference',
    2023,
    'dfcd75d7c32912c6e64dd883705d154e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dfcd75d7c32912c6e64dd883705d154e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ''Skill India'''),
            ('B', 'The ''Start Up India'''),
            ('C', 'The ''Digital India'' and the ''Digital Infrastructure'''),
            ('D', 'The ''Make in India''')
           ) as v(label, option_text)
 where q.question_hash = 'dfcd75d7c32912c6e64dd883705d154e'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The 2023 prize went:',
    'Claudia Goldin, a Harvard economist, was among the three laureates of the 2023 prize in Economic Sciences for their work on the inequality and the institutions.',
    'medium',
    'Nobel Foundation',
    2023,
    'cf93c440a954773a2de1acd1ec19d5dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cf93c440a954773a2de1acd1ec19d5dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'to Claudia Goldin, James Heckman and Michael Katz, and one of them was the Indian-American Claudia Goldin'),
            ('B', 'to Duflo, Banerjee and Kremer'),
            ('C', 'to Bernanke, Diamond and Dybvig'),
            ('D', 'to the IPCC')
           ) as v(label, option_text)
 where q.question_hash = 'cf93c440a954773a2de1acd1ec19d5dc'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Consider the following statements. Which of them is correct with regard to the India hosted?',
    'India hosted the Miss Universe 2021 in Goa, and the country hosted the Miss Universe 1994 in Bombay as well.',
    'medium',
    'Standard Reference',
    2021,
    'ec189a020f8552d6049df9ca9df6d818'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ec189a020f8552d6049df9ca9df6d818'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There was no event in 2021'),
            ('B', 'India hosted the Miss Universe 2021 in Goa'),
            ('C', 'India hosted the Miss Universe 1994 in Goa'),
            ('D', 'India hosted the Miss Universe 2017')
           ) as v(label, option_text)
 where q.question_hash = 'ec189a020f8552d6049df9ca9df6d818'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Which of the following statements regarding the 14th President is correct?',
    'Ram Nath Kovind, the 14th President of India from 2017 to 2022, was the first President from the Scheduled Castes and the second Dalit in the office after the K. R. Narayanan.',
    'medium',
    'Standard Reference',
    null,
    '7a777fd616fd39feb088f9d6f5444b7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7a777fd616fd39feb088f9d6f5444b7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was the 13th President'),
            ('B', 'He was the first from the BJP'),
            ('C', 'He served for two terms'),
            ('D', 'He was the 14th President of India and the first from the Dalit community')
           ) as v(label, option_text)
 where q.question_hash = '7a777fd616fd39feb088f9d6f5444b7e'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Which of the following statements regarding the 15th President is correct?',
    'Droupadi Murmu, the 15th President of India since 2022, is the first from the tribal community and the second woman President after Pratibha Patil.',
    'easy',
    'Standard Reference',
    null,
    'af6d6c3b0815ace14ac8734aa09db104'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af6d6c3b0815ace14ac8734aa09db104'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She is the first woman Chief Minister'),
            ('B', 'She is the Governor of Jharkhand'),
            ('C', 'She is the 15th President of India and the first from the tribal community'),
            ('D', 'She is the 14th President')
           ) as v(label, option_text)
 where q.question_hash = 'af6d6c3b0815ace14ac8734aa09db104'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The Sengol was the ancient Indian symbol of authority that the President used:',
    'The Sengol, the ancient Indian symbol of the authority and the sovereignty, was placed on the table of the President for the first time in the 2022 inauguration.',
    'medium',
    'Standard Reference',
    2022,
    '64207a9638924e539419513eec2d8e13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '64207a9638924e539419513eec2d8e13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the coin of the Maurya'),
            ('B', 'at the inauguration in 2022'),
            ('C', 'the emblem of the UN'),
            ('D', 'the symbol of the democracy')
           ) as v(label, option_text)
 where q.question_hash = '64207a9638924e539419513eec2d8e13'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The 1 rupee coin with the 250th birth anniversary of the Guru Nanak was:',
    'The commemorative 1 rupee coin marking the 250th birth anniversary of Guru Nanak was released in 2018, and the 350th anniversary of the Guru Tegh Bahadur was marked in 2016.',
    'hard',
    'Standard Reference',
    2018,
    'fd17d395b3b29899c771c9e91a7803e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd17d395b3b29899c771c9e91a7803e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'released in 1999'),
            ('B', 'released in 2011'),
            ('C', 'released in 2007'),
            ('D', 'released in 2018')
           ) as v(label, option_text)
 where q.question_hash = 'fd17d395b3b29899c771c9e91a7803e9'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''The ''Mann Ki Baat'' is:',
    'Mann Ki Baat, the monthly radio and the TV programme of the Prime Minister broadcast from the Akashvani studio in New Delhi, was first aired in October 2014.',
    'easy',
    'Standard Reference',
    null,
    '71717ba171ad6fc9cf21bfba15072e15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '71717ba171ad6fc9cf21bfba15072e15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The monthly radio programme of the Prime Minister that started in 2014'),
            ('B', 'The daily radio show of the President'),
            ('C', 'The monthly show of the Lok Sabha TV'),
            ('D', 'The annual address of the Finance Minister')
           ) as v(label, option_text)
 where q.question_hash = '71717ba171ad6fc9cf21bfba15072e15'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''The ''Arogya Setu'' app was launched in:',
    'The Aarogya Setu, the contact tracing app for the COVID-19, was launched in April 2020 by the Ministry of Health and Family Welfare.',
    'medium',
    'PIB',
    2020,
    'a666d87355cfaced9d31bfe301f12ac8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a666d87355cfaced9d31bfe301f12ac8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'a666d87355cfaced9d31bfe301f12ac8'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'In the context of the Odisha, which of the following is correct?',
    'Odisha was the first state to declare itself open defection free with the 100 per cent coverage of the households, and the verification of this was done in 2022.',
    'hard',
    'Standard Reference',
    2022,
    'c7b2bb1484246b0f337052cb55b31792'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c7b2bb1484246b0f337052cb55b31792'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kerala was the first to the ODF'),
            ('B', 'The Goa was the first to the ODF'),
            ('C', 'No state has achieved the ODF'),
            ('D', 'The Odisha was the first state to achieve the 100 per cent of the ODF status')
           ) as v(label, option_text)
 where q.question_hash = 'c7b2bb1484246b0f337052cb55b31792'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''The ''Statue of Unity'' and the ''2018:',
    'The Statue of Unity of Sardar Vallabhbhai Patel at Kevadia in Gujarat was inaugurated on 18 October 2018, the 146th birth anniversary of the Sardar.',
    'easy',
    'Standard Reference',
    2018,
    '1377e231df34d8099a2be03e071a80b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1377e231df34d8099a2be03e071a80b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was inaugurated on 2 October 2018'),
            ('B', 'The Statue of Unity was inaugurated on 18 October 2018'),
            ('C', 'It was inaugurated on 26 January 2018'),
            ('D', 'It was inaugurated in 2016')
           ) as v(label, option_text)
 where q.question_hash = '1377e231df34d8099a2be03e071a80b1'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''The ''Northeast Frontier Agency'' was renamed in:',
    'The North-East Frontier Agency was renamed the state of Arunachal Pradesh in 1972, and the state was formed on 20 February 1987.',
    'hard',
    'Standard Reference',
    null,
    '925ff0d013dc47d047d42d2bfd8ea2da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '925ff0d013dc47d047d42d2bfd8ea2da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1960'),
            ('B', '1987'),
            ('C', '1972'),
            ('D', '1954')
           ) as v(label, option_text)
 where q.question_hash = '925ff0d013dc47d047d42d2bfd8ea2da'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'In the context of the Trishul, which of the following is correct?',
    'Operation Shakti of 1999, the Pokhran-II test, was codenamed Trishul, and the 1974 test was the Smiling Buddha.',
    'hard',
    'Standard Reference',
    null,
    '4d5a4a25ffc603ff00b243c907fbc493'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4d5a4a25ffc603ff00b243c907fbc493'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Trishul was the 1999 Pokhran-II test'),
            ('B', 'The Trishul was the first satellite'),
            ('C', 'The Trishul was the SLV launch vehicle'),
            ('D', 'The Trishul was the 1974 test')
           ) as v(label, option_text)
 where q.question_hash = '4d5a4a25ffc603ff00b243c907fbc493'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The 2016 exercise was:',
    'Exercise Nagarjuna, the 2016 test of the missile systems of the Indian Army, was conducted in the Pokhran range.',
    'hard',
    'Standard Reference',
    2016,
    '678b94e599ac808e7f09cdbb3e5f7cc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '678b94e599ac808e7f09cdbb3e5f7cc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Pokhran test of the artillery and the missiles'),
            ('B', 'the nuclear test'),
            ('C', 'the space mission'),
            ('D', 'the first Indian satellite')
           ) as v(label, option_text)
 where q.question_hash = '678b94e599ac808e7f09cdbb3e5f7cc3'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Which of the following statements regarding the MMM of the ISRO is correct?',
    'The Moon Mineralogy Mapper of the ISRO and the NASA, on the Chandrayaan-1, confirmed the presence of the water molecules on the lunar surface in 2009.',
    'hard',
    'Standard Reference',
    2009,
    '454820931b394048b6e973a5d47e7d35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '454820931b394048b6e973a5d47e7d35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The MMM was of the China'),
            ('B', 'The MMM of the ISRO and the NASA confirmed the presence of the water in 2009'),
            ('C', 'The MMM was of the ESA only'),
            ('D', 'The MMM was launched in 2013')
           ) as v(label, option_text)
 where q.question_hash = '454820931b394048b6e973a5d47e7d35'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Economic Survey 2021-22'' was presented on:',
    'The Economic Survey 2021-22 was presented on 31 January 2022 by the Finance Minister and its theme was ''Time to Move''.',
    'easy',
    'Economic Survey 2021-22',
    2022,
    '214c19ace28346eca2155ee48326ad09'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '214c19ace28346eca2155ee48326ad09'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 February 2022'),
            ('B', '15 August 2021'),
            ('C', '26 January 2022'),
            ('D', '31 January 2022')
           ) as v(label, option_text)
 where q.question_hash = '214c19ace28346eca2155ee48326ad09'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Human Development Report 2021-22'' used the data of the year:',
    'The Human Development Report 2021-22 used the 2019 data because of the data gaps created by the Covid pandemic and India was ranked 131st.',
    'hard',
    'UNDP',
    2022,
    '826937597cd864320a47ee1af3c5329c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '826937597cd864320a47ee1af3c5329c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2018'),
            ('C', '2019'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '826937597cd864320a47ee1af3c5329c'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Environmental Performance Index 2022'' placed India at the rank of:',
    'In the Environmental Performance Index 2022 India was ranked 180th among the 180 countries covered and it scored the lowest in the air quality.',
    'medium',
    'Yale University',
    2022,
    'cf40a7e8fcb6d0902e24e296fcf23ddb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf40a7e8fcb6d0902e24e296fcf23ddb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '96th'),
            ('B', '150th'),
            ('C', '120th'),
            ('D', '180th')
           ) as v(label, option_text)
 where q.question_hash = 'cf40a7e8fcb6d0902e24e296fcf23ddb'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Gender Gap Report 2022'' of the World Economic Forum placed India at:',
    'In the Global Gender Gap Report 2022 India was ranked 129th and it was the only country in the bottom 150 with a negative score on the health and the education sub-index.',
    'medium',
    'World Economic Forum',
    2022,
    'f533632970a8186f92d48a7e57e34410'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f533632970a8186f92d48a7e57e34410'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '129th'),
            ('B', '135th'),
            ('C', '112th'),
            ('D', '143rd')
           ) as v(label, option_text)
 where q.question_hash = 'f533632970a8186f92d48a7e57e34410'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''SDG India Index 2021-22'' was prepared with the help of:',
    'The SDG India Index 2021-22 was prepared with the technical assistance of the Oxford Policy and Human Development Centre and it used the district data of 2018-19.',
    'hard',
    'NITI Aayog',
    2022,
    '1a40571716322709ad34c5473e1e5086'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1a40571716322709ad34c5473e1e5086'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The UNDP'),
            ('B', 'The NITI Aayog alone'),
            ('C', 'The Oxford Policy and Human Development Centre'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '1a40571716322709ad34c5473e1e5086'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''India State of Forest Report 2021'' reported the forest and tree cover of:',
    'The India State of Forest Report 2021 reported the forest and the tree cover of 21.76 per cent of the geographical area with an increase of 1.89 percentage points over 2019.',
    'medium',
    'Forest Survey of India',
    2021,
    '5639831d5eff0a1a57cecce2e830f8fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5639831d5eff0a1a57cecce2e830f8fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '29.48 per cent'),
            ('B', '21.76 per cent of the geographical area'),
            ('C', '19.47 per cent'),
            ('D', '25.17 per cent')
           ) as v(label, option_text)
 where q.question_hash = '5639831d5eff0a1a57cecce2e830f8fc'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Happiness Report 2022'' was based on the Gallup World Poll data of:',
    'The World Happiness Report 2022 used the 2021 Gallup World Poll data and India was ranked 140th.',
    'medium',
    'World Happiness Report',
    2022,
    '87b4933b6506d7893dd330c0623ed7d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '87b4933b6506d7893dd330c0623ed7d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2019'),
            ('C', '2021'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '87b4933b6506d7893dd330c0623ed7d2'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Competitiveness'' of India in the World Economic Forum''s index for 2021-22 was at the rank of:',
    'In the Global Competitiveness Report 2021-22 India was ranked 56th among the 140 economies and in 2022-23 it was 60th.',
    'medium',
    'World Economic Forum',
    2022,
    'f26ad86ce61cbc94b892b26b2e1820f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f26ad86ce61cbc94b892b26b2e1820f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '85th'),
            ('B', '56th'),
            ('C', '45th'),
            ('D', '72nd')
           ) as v(label, option_text)
 where q.question_hash = 'f26ad86ce61cbc94b892b26b2e1820f7'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Prize in Literature for 2021'' was awarded to:',
    'The 2021 Nobel Prize in Literature was awarded to the Tanzanian writer Abdulrazak Gurnah and the 2022 prize went to the Jon Fosse.',
    'easy',
    'Nobel Foundation',
    2021,
    '42c43fe7086fa795e235ce5b3b45dd68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '42c43fe7086fa795e235ce5b3b45dd68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abdulrazak Gurnah'),
            ('B', 'Jon Fosse'),
            ('C', 'Han Kang'),
            ('D', 'Kazuo Ishiguro')
           ) as v(label, option_text)
 where q.question_hash = '42c43fe7086fa795e235ce5b3b45dd68'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Peace Prize for 2021'' was awarded to:',
    'The 2021 Nobel Peace Prize was awarded to the Maria Ressa and the Dmitry Muratov for their fight for the freedom of expression and the 2022 prize went to the Ales Bialiatski and the Memorial.',
    'medium',
    'Nobel Foundation',
    2021,
    '5cf6ed1818acad3c27754a5850b62fce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5cf6ed1818acad3c27754a5850b62fce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ales Bialiatski and the Memorial'),
            ('B', 'Narges Mohammadi'),
            ('C', 'Volodymyr Zelenskyy'),
            ('D', 'Maria Ressa and Dmitry Muratov')
           ) as v(label, option_text)
 where q.question_hash = '5cf6ed1818acad3c27754a5850b62fce'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Prize in Economic Sciences for 2021'' was awarded to:',
    'The 2021 prize in Economic Sciences went to the David Card, the A. Michael Kremer and the Guido Imbens for their empirical work on the labour market.',
    'medium',
    'Nobel Foundation',
    2021,
    'a697dcc34bb268f93f80c8ca74467c7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a697dcc34bb268f93f80c8ca74467c7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'David Card and A. Michael Kremer and Guido Imbens'),
            ('B', 'Claudia Goldin and James Heckman'),
            ('C', 'Ben Bernanke and Douglas Diamond'),
            ('D', 'Esther Duflo and Abhijit Banerjee')
           ) as v(label, option_text)
 where q.question_hash = 'a697dcc34bb268f93f80c8ca74467c7d'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Prize in Chemistry for 2021'' was awarded to:',
    'The 2021 Chemistry prize was awarded to the Benjamin List and the David MacMillan for the development of the asymmetric organocatalysis.',
    'hard',
    'Nobel Foundation',
    2021,
    '9679c65a0f9a2b08ee74f988a1b23897'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9679c65a0f9a2b08ee74f988a1b23897'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carolyn Bertozzi and Morten Meldal'),
            ('B', 'Klaus Hasselmann and Syukuro Manabe'),
            ('C', 'Svante Pääbo'),
            ('D', 'Benjamin List and David MacMillan')
           ) as v(label, option_text)
 where q.question_hash = '9679c65a0f9a2b08ee74f988a1b23897'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Prize in Physics for 2021'' was awarded to:',
    'The 2021 Physics prize went to the Giorgio Parisi for the theories of the disordered systems and the Klaus Hasselmann and the Syukuro Manabe for the physical modelling of the climate.',
    'medium',
    'Nobel Foundation',
    2021,
    'b68527de541e4c589f0d2e2487afca37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b68527de541e4c589f0d2e2487afca37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Peter Ratcliffe and Gregg Semenza'),
            ('B', 'Svante Pääbo'),
            ('C', 'Giorgio Parisi and Klaus Hasselmann and Syukuro Manabe'),
            ('D', 'Alain Aspect and John Clauser')
           ) as v(label, option_text)
 where q.question_hash = 'b68527de541e4c589f0d2e2487afca37'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Prize in Physiology or Medicine for 2021'' was awarded to:',
    'The 2021 Medicine prize was awarded to the David Julius and the Ardem Patapoutian for the discovery of the receptors for the temperature and the touch.',
    'medium',
    'Nobel Foundation',
    2021,
    '1e70bfef76071f68e452accdea02b7c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e70bfef76071f68e452accdea02b7c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Svante Pääbo'),
            ('B', 'David Julius and Ardem Patapoutian'),
            ('C', 'Harvey Alter and Michael Houghton and Charles Rice'),
            ('D', 'Katalin Karikó and Drew Weissman')
           ) as v(label, option_text)
 where q.question_hash = '1e70bfef76071f68e452accdea02b7c8'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Nobel Prize in Literature for 2020'' was awarded to:',
    'The 2020 Nobel Prize in Literature was awarded to the American poet Louise Glück and the 2019 prize went to the Peter Handke.',
    'medium',
    'Nobel Foundation',
    2020,
    '6cb0058bb4d289b97b60a96c3a280347'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6cb0058bb4d289b97b60a96c3a280347'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Han Kang'),
            ('B', 'Jon Fosse'),
            ('C', 'Louise Glück'),
            ('D', 'Abdulrazak Gurnah')
           ) as v(label, option_text)
 where q.question_hash = '6cb0058bb4d289b97b60a96c3a280347'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'Which of the following statements regarding the World Food Programme is correct?',
    'The 2020 Nobel Peace Prize was awarded to the World Food Programme for its work in combatting hunger and for its contribution to the peace and the food security.',
    'medium',
    'Nobel Foundation',
    2020,
    '462f5c7a9fd1d1b172a6cbb004b07223'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '462f5c7a9fd1d1b172a6cbb004b07223'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Food Programme'),
            ('B', 'Abiy Ahmed and the Ales Bialiatski and the Memorial'),
            ('C', 'Maria Ressa and Dmitry Muratov'),
            ('D', 'Narges Mohammadi')
           ) as v(label, option_text)
 where q.question_hash = '462f5c7a9fd1d1b172a6cbb004b07223'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Abiy Ahmed'' won the Nobel Peace Prize in:',
    'The Abiy Ahmed, the Prime Minister of Ethiopia, won the Nobel Peace Prize in 2019 for his efforts to build peace and to end the Tigray conflict.',
    'medium',
    'Nobel Foundation',
    2019,
    'd7ce5f5b8603be4251ac1c0e803a76b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7ce5f5b8603be4251ac1c0e803a76b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2019'),
            ('C', '2018'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = 'd7ce5f5b8603be4251ac1c0e803a76b4'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''World Food Prize 2021'' was awarded to:',
    'The 2021 World Food Prize was awarded to the CYMcrare and the Modadugu Gupta for the work in the development of the quality wheat varieties.',
    'hard',
    'World Food Prize',
    2021,
    'ee59b1b37045ba4ba99afa2d0872e5f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ee59b1b37045ba4ba99afa2d0872e5f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bono and the Beast'),
            ('B', 'Ramesh Rajasingham and the Green Transformation Foundation'),
            ('C', 'Norman Borlaug'),
            ('D', 'Cymcrare and Modadugu Gupta')
           ) as v(label, option_text)
 where q.question_hash = 'ee59b1b37045ba4ba99afa2d0872e5f7'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Jnanpith Award for 2021'' was given to:',
    'The 2021 Jnanpith Award was given to the Nilamani Phookan for his poetry collection in the Assamese language.',
    'hard',
    'Jnanpith',
    2021,
    '8ac650417b08eddf124ec6dcb307afd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ac650417b08eddf124ec6dcb307afd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nilamani Phookan'),
            ('B', 'Girish Karnad'),
            ('C', 'Jagadguru Rambhadracharya and D. Murali'),
            ('D', 'Amit Chaudhuri')
           ) as v(label, option_text)
 where q.question_hash = '8ac650417b08eddf124ec6dcb307afd8'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Sahitya Akademi Award for 2021'' in English was given to:',
    'The Manilal H. Patel won the 2021 Sahitya Akademi Award for English for his collection of short stories Audition.',
    'hard',
    'Sahitya Akademi',
    2021,
    '8e5026ce6dcfe38e7073b786348ced95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8e5026ce6dcfe38e7073b786348ced95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jerry Pinto'),
            ('B', 'Manilal H. Patel'),
            ('C', 'Girish Karnad'),
            ('D', 'K. Satchidanandan')
           ) as v(label, option_text)
 where q.question_hash = '8e5026ce6dcfe38e7073b786348ced95'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Dadasaheb Phalke Award for 2021'' was given to:',
    'The 2021 Dadasaheb Phalke Award was given to the Rajkummar Rao for his contribution to the Indian cinema.',
    'easy',
    'Ministry of I&B',
    2021,
    '2ba847ce5a97b72008370c2f955e91d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ba847ce5a97b72008370c2f955e91d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shekhar Kapur'),
            ('B', 'Sanjay Leela Bhansali'),
            ('C', 'Rajkummar Rao'),
            ('D', 'Waheeda Rehman')
           ) as v(label, option_text)
 where q.question_hash = '2ba847ce5a97b72008370c2f955e91d7'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Bharat Ratna'' awardees of 2021 were:',
    'The 2021 Bharat Ratna awards went to the Pranab Mukherjee and the S. Padmanabhan and the Mulayam Singh and the Charanjit Singh.',
    'medium',
    'PIB',
    2021,
    'd9acc0bb3fad21d4b695b749fedc72b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd9acc0bb3fad21d4b695b749fedc72b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The S. Padmanabhan only'),
            ('B', 'The Lata Mangeshkar'),
            ('C', 'The Bismillah Khan'),
            ('D', 'The Pranab Mukherjee and the S. Padmanabhan and the Mulayam Singh and the Charanjit Singh')
           ) as v(label, option_text)
 where q.question_hash = 'd9acc0bb3fad21d4b695b749fedc72b4'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'Which of the following was among the recipients of the Padma Vibhushan in 2021?',
    'The Padma Vibhushan of 2021 included the classical vocalist K. S. Nissar Ahmed, Tarun Gogoi, R. M. Veerappa, D. K. Pattammal, Shyam Sunder Singh, Kantaben Vora and Ramachandra Guha.',
    'hard',
    'PIB',
    2021,
    'a0de29c63077618ba1de13636988b041'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a0de29c63077618ba1de13636988b041'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the classical vocalist K. S. Nissar Ahmed'),
            ('B', 'the classical dancer Kumudini Lakhia'),
            ('C', 'the playback singer Lata Mangeshkar'),
            ('D', 'the historian Romila Thapar')
           ) as v(label, option_text)
 where q.question_hash = 'a0de29c63077618ba1de13636988b041'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Arjuna Award for 2021'' was given in the discipline of:',
    'The 2021 Arjuna Awards were announced for the cricket, the athletics, the badminton, the boxing and the chess, among others.',
    'medium',
    'Sports Ministry of India',
    2021,
    'dd3a90866029adc6ed3269a479d24aa1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd3a90866029adc6ed3269a479d24aa1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the chess'),
            ('B', 'The wrestling and the boxing'),
            ('C', 'Cricket, the athletics, the badminton, the boxing and the chess'),
            ('D', 'Only the athletics')
           ) as v(label, option_text)
 where q.question_hash = 'dd3a90866029adc6ed3269a479d24aa1'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The ''Dronacharya Award for 2021'' was given to:',
    'The 2021 Dronacharya Awards were given to the B. B. Bhagwat, the S. M. Arif, the Dharmendra and the Sanjay Bhardwaj.',
    'hard',
    'Sports Ministry of India',
    2021,
    'c133948573c4564ad4507649c0bc5a78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c133948573c4564ad4507649c0bc5a78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the B. B. Bhagwat'),
            ('B', 'The Rahul Banerjee'),
            ('C', 'The Baldev Singh'),
            ('D', 'The B. B. Bhagwat and the S. M. Arif and the Dharmendra and the Sanjay Bhardwaj')
           ) as v(label, option_text)
 where q.question_hash = 'c133948573c4564ad4507649c0bc5a78'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Paris 2024 Olympic'' medals of India:',
    'At the Paris 2024 Games India won one silver in the men''s archery individual compound and five bronze medals for a total of six.',
    'medium',
    'Paris Olympics',
    2024,
    'a260c0536d419520684d33e1d0cc7783'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a260c0536d419520684d33e1d0cc7783'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No medals'),
            ('B', 'One silver and five bronze'),
            ('C', 'One gold and one silver'),
            ('D', 'Six gold medals')
           ) as v(label, option_text)
 where q.question_hash = 'a260c0536d419520684d33e1d0cc7783'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Major Dhyan Chand Khel Ratna'' was renamed in:',
    'The Rajiv Gandhi Khel Ratna Award was renamed the Major Dhyan Chand Khel Ratna Award in 2021 and it is the highest sporting honour in India.',
    'medium',
    'Sports Ministry of India',
    2021,
    '0fed2ed9dc355863b2a349ac8c8a1230'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0fed2ed9dc355863b2a349ac8c8a1230'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2019'),
            ('C', '2015'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '0fed2ed9dc355863b2a349ac8c8a1230'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The D.G. Gadgil Cup is:',
    'The D. G. Gadgil Cup, the Ranji Trophy, is India''s premier domestic cricket championship and it is named after the D. G. Gadgil.',
    'medium',
    'Standard Reference',
    null,
    '95c0bbde4834327f03e376027523a2bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95c0bbde4834327f03e376027523a2bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the badminton tournament of the Kerala'),
            ('B', 'the Ranji Trophy of the D. G. Gadgil and it is the premier domestic cricket tournament'),
            ('C', 'the football tournament of the Assam'),
            ('D', 'the hockey tournament of the Delhi')
           ) as v(label, option_text)
 where q.question_hash = '95c0bbde4834327f03e376027523a2bf'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Vijay Hazare Trophy'' is for:',
    'The Vijay Hazare Trophy is the first-class cricket tournament of India and the Irani Cup is the one that is played between the Ranji and the Rani of the Services.',
    'medium',
    'Standard Reference',
    null,
    '4495cf5f2fe3618076c29a93e472cb14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4495cf5f2fe3618076c29a93e472cb14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The limited overs cricket'),
            ('B', 'The hockey'),
            ('C', 'The badminton'),
            ('D', 'The first-class cricket')
           ) as v(label, option_text)
 where q.question_hash = '4495cf5f2fe3618076c29a93e472cb14'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Dronacharya Award is:',
    'The Dronacharya Award, instituted in 1985, is the highest national honour for the coaches in the sports.',
    'easy',
    'Standard Reference',
    null,
    '57a6e149a826d5993b571b8dec2351e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '57a6e149a826d5993b571b8dec2351e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the officials'),
            ('B', 'for the journalists'),
            ('C', 'the highest honour for the coaches in the sports'),
            ('D', 'for the players')
           ) as v(label, option_text)
 where q.question_hash = '57a6e149a826d5993b571b8dec2351e5'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Subroto Cup'' is associated with:',
    'The Subroto Cup is the oldest and the most prestigious international junior football tournament of Asia, instituted in memory of the Subroto Bagchi.',
    'medium',
    'Standard Reference',
    null,
    'fd09d3005713e8a2436db89731e0df42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd09d3005713e8a2436db89731e0df42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cricket'),
            ('B', 'Hockey'),
            ('C', 'Badminton'),
            ('D', 'Football')
           ) as v(label, option_text)
 where q.question_hash = 'fd09d3005713e8a2436db89731e0df42'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The '' Durand Cup'' is associated with:',
    'The Durand Cup, the oldest of the Indian football tournaments, was instituted in 1888 by the Sir Mortimer Durand.',
    'medium',
    'Standard Reference',
    null,
    '82500c0895ec86f11f81d2185b313e4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82500c0895ec86f11f81d2185b313e4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Football'),
            ('B', 'Hockey'),
            ('C', 'Cricket'),
            ('D', 'Tennis')
           ) as v(label, option_text)
 where q.question_hash = '82500c0895ec86f11f81d2185b313e4c'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''Nehru Cup'' of the hockey:',
    'The Nehru Cup, the junior hockey tournament of India, is also known as the Santosh Cup.',
    'hard',
    'Standard Reference',
    null,
    'd19a6de180c81dabfeaa81c235e69baa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd19a6de180c81dabfeaa81c235e69baa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a cricket tournament'),
            ('B', 'Is a badminton tournament'),
            ('C', 'Is a junior hockey tournament that is also called the Santosh Cup'),
            ('D', 'Is a football tournament')
           ) as v(label, option_text)
 where q.question_hash = 'd19a6de180c81dabfeaa81c235e69baa'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Vijay Amritraj was:',
    'The Vijay Amritraj was the first Indian tennis player to be ranked in the ATP top ten and he was also the first to be ranked among the world''s top eight.',
    'medium',
    'Standard Reference',
    null,
    '3f344c5403fc1458b63534d16a923ad8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f344c5403fc1458b63534d16a923ad8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cricketer'),
            ('B', 'the first Indian tennis player to be ranked in the top ten of the ATP'),
            ('C', 'the first Indian to win a Grand Slam'),
            ('D', 'the first to win the Davis Cup for India')
           ) as v(label, option_text)
 where q.question_hash = '3f344c5403fc1458b63534d16a923ad8'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Major Dhyan Chand was:',
    'The Major Dhyan Chand, the hockey wizard, won the three consecutive Olympic golds for India in 1928, 1932 and 1936 and the Trophy of the Hockey Wizard is named after him.',
    'easy',
    'Standard Reference',
    null,
    '493dceed54e6bd75304e88ef36a753fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '493dceed54e6bd75304e88ef36a753fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the hockey player who won three consecutive Olympic golds for India in 1928, 1932 and 1936'),
            ('B', 'a cricketer'),
            ('C', 'a footballer'),
            ('D', 'an Olympian of the 1952')
           ) as v(label, option_text)
 where q.question_hash = '493dceed54e6bd75304e88ef36a753fa'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The K. D. Jadhav was:',
    'The K. D. Jadhav, the first Indian to win an individual Olympic gold, won the gold in the freestyle wrestling in the 1952 Helsinki Games.',
    'medium',
    'Standard Reference',
    null,
    'b7e2732486e349c25bd8c4745f7479d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7e2732486e349c25bd8c4745f7479d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first Indian Olympic gold medallist in the athletics'),
            ('B', 'a hockey player'),
            ('C', 'he won a gold in the 1928 Olympics'),
            ('D', 'the first Indian to win an individual Olympic gold in 1952')
           ) as v(label, option_text)
 where q.question_hash = 'b7e2732486e349c25bd8c4745f7479d2'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'Which of the following statements is/are correct in relation to the Milkha Singh?',
    'The Milkha Singh, the Flying Sikh, won the 400 metres at the 1958 Asian Games in Tokyo and he was the first Indian to win a Commonwealth individual gold in 1958.',
    'easy',
    'Standard Reference',
    null,
    'c40df89dca38b7b8d13442a9473cf8e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c40df89dca38b7b8d13442a9473cf8e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a hockey player'),
            ('B', 'He won an Olympic gold'),
            ('C', 'Milkha Singh was the Flying Sikh and he won the 400 metres at the 1958 Asian Games'),
            ('D', 'He was a boxer')
           ) as v(label, option_text)
 where q.question_hash = 'c40df89dca38b7b8d13442a9473cf8e7'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ''P. T. Usha'' is:',
    'The P. T. Usha won the 400 metres hurdles gold at the 1986 Asian Track and Field Championships in Seoul and she missed the Olympic medal by a fraction of a second in 1984.',
    'medium',
    'Standard Reference',
    null,
    '46c27cf37653201f66ded710ecb705fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '46c27cf37653201f66ded710ecb705fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A hockey player'),
            ('B', 'The first Indian woman to win a gold medal at the Asian Track and Field Championships'),
            ('C', 'The first Indian woman to win an Olympic medal'),
            ('D', 'A badminton player')
           ) as v(label, option_text)
 where q.question_hash = '46c27cf37653201f66ded710ecb705fe'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'Which of the following is correct in the case of the Sita Sahu?',
    'The Sita Sahu, the wife of the Deepak Rao, and their daughters the Amita and the Ayesha are the prominent members of the Indian Idol family of the singers.',
    'hard',
    'Standard Reference',
    null,
    'a3c7f310d2e1b9c79418bf9a0ad24c77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a3c7f310d2e1b9c79418bf9a0ad24c77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sita Sahu is the wife of the Deepak and the Amita and the Ayesha are the daughters'),
            ('B', 'She is a sportswoman'),
            ('C', 'She is a classical dancer'),
            ('D', 'She is a novelist')
           ) as v(label, option_text)
 where q.question_hash = 'a3c7f310d2e1b9c79418bf9a0ad24c77'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Chandrayaan-3 landing was:',
    'The Chandrayaan-3, launched on 14 July 2023, landed on 23 August 2023 at a cost of about Rs. 450 crore, making it the most cost-effective lunar mission.',
    'easy',
    'ISRO',
    2023,
    '68460ecdfe17b9104ac82efefec32549'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '68460ecdfe17b9104ac82efefec32549'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a crewed mission'),
            ('B', 'in August 2023 and the mission cost was about Rs. 450 crore'),
            ('C', 'launched in 2019'),
            ('D', 'the first Indian Mars mission')
           ) as v(label, option_text)
 where q.question_hash = '68460ecdfe17b9104ac82efefec32549'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'In the context of the Gaganyaan, which of the following is correct?',
    'The Gaganyaan is the Indian human spaceflight programme, the four astronaut candidates were selected in 2022 and the uncrewed test flight was carried out in 2024.',
    'medium',
    'ISRO',
    2023,
    '973582f35f752c0e905d77deb8464dbe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '973582f35f752c0e905d77deb8464dbe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was launched in 2013'),
            ('B', 'It is a rover mission'),
            ('C', 'The Gaganyaan is the Indian human spaceflight programme and the four astronaut candidates were selected in 2022'),
            ('D', 'It is the first Indian Mars mission')
           ) as v(label, option_text)
 where q.question_hash = '973582f35f752c0e905d77deb8464dbe'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Mangalyaan'' was the cheapest Mars mission of the world at about:',
    'The Mangalyaan cost about Rs. 450 crore, about a tenth of the average of the other Mars missions, and India became the first country to reach Mars on the first attempt.',
    'medium',
    'ISRO',
    2014,
    '3da9be9e48c8c41877b59de432e128e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3da9be9e48c8c41877b59de432e128e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 1,500 crore'),
            ('B', 'Rs. 5,000 crore'),
            ('C', 'Rs. 100 crore'),
            ('D', 'Rs. 450 crore')
           ) as v(label, option_text)
 where q.question_hash = '3da9be9e48c8c41877b59de432e128e5'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'In the context of the Astra, which of the following is correct?',
    'The DRDO renamed its long range missile the Astra and it was test fired successfully in August 2023 from the Integrated Test Range in the Odisha.',
    'medium',
    'DRDO',
    2023,
    '8896d9efa509fe7cddcf34b06ac68b31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8896d9efa509fe7cddcf34b06ac68b31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the hypersonic weapon of the DRDO'),
            ('B', 'The Astra is the new name of the DRDO long range missile and it was test fired in 2023'),
            ('C', 'It is the cruise missile'),
            ('D', 'It is the anti-satellite weapon')
           ) as v(label, option_text)
 where q.question_hash = '8896d9efa509fe7cddcf34b06ac68b31'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Mission Shakti'' of 2019 was:',
    'The Mission Shakti of March 2019 was the ASAT test in which the DRDO destroyed the target satellite in the low earth orbit with the Microsat-R.',
    'medium',
    'DRDO',
    2019,
    '7fec89730f271c06aa71892022540349'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7fec89730f271c06aa71892022540349'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The anti-satellite test that destroyed a satellite in the low earth orbit'),
            ('B', 'The Chandrayaan-2'),
            ('C', 'The Gaganyaan'),
            ('D', 'The Mars mission')
           ) as v(label, option_text)
 where q.question_hash = '7fec89730f271c06aa71892022540349'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Which of the following statements is/are correct in relation to the Axiom-4?',
    'The Axiom-4 mission of 2025 carried the Shubhanshu Shukla, the second Indian in space, to the International Space Station.',
    'hard',
    'ISRO',
    2025,
    '4af8129fa9bb28e1bd1e46ebb77580f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4af8129fa9bb28e1bd1e46ebb77580f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a Mars mission'),
            ('B', 'It was a defence mission'),
            ('C', 'The Axiom-4 mission carried the Indian astronaut Shubhanshu Shukla to the International Space Station in 2025'),
            ('D', 'It was a Chandrayaan mission')
           ) as v(label, option_text)
 where q.question_hash = '4af8129fa9bb28e1bd1e46ebb77580f6'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Operation Sindoor'' of 2025 was:',
    'The Operation Sindoor of May 2025 was the military operation to neutralise the terrorist infrastructure in the Pakistan administered Kashmir following the Pahalgam terror attack.',
    'medium',
    'PIB',
    2025,
    '362b674a5760098fdcf4a2f1ae180bc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '362b674a5760098fdcf4a2f1ae180bc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a space mission'),
            ('B', 'It was a cyclone relief operation'),
            ('C', 'It was a border irrigation project'),
            ('D', 'The military operation to neutralise the terrorist infrastructure in the Pakistan administered Kashmir after the Pahalgam attack')
           ) as v(label, option_text)
 where q.question_hash = '362b674a5760098fdcf4a2f1ae180bc1'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Which of the following is correct in the case of the SPADEX?',
    'The SPADEX, the Space Docking Experiment, is the Indian plan to demonstrate the autonomous docking capability that the Gaganyaan requires.',
    'hard',
    'ISRO',
    null,
    '90a4d6c9642ee2649ed95b2ad65b298b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '90a4d6c9642ee2649ed95b2ad65b298b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Mars mission'),
            ('B', 'It is a weather satellite'),
            ('C', 'It is a defence missile'),
            ('D', 'The SPADEX is the Indian space docking experiment planned for the Gaganyaan')
           ) as v(label, option_text)
 where q.question_hash = '90a4d6c9642ee2649ed95b2ad65b298b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Which of the following is correct in the case of the Covaxin?',
    'The Covaxin, the inactivated whole virion vaccine against the SARS-CoV-2, was developed by the Bharat Biotech and the Covishield is the viral vector vaccine of the Serum Institute.',
    'easy',
    'PIB',
    null,
    '811ff9681e93117b992c4d24fb6bd8a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '811ff9681e93117b992c4d24fb6bd8a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the mRNA vaccine of the SII'),
            ('B', 'It is a protein subunit vaccine'),
            ('C', 'The Covaxin is the inactivated whole virion vaccine of the Bharat Biotech'),
            ('D', 'It is the Covishield')
           ) as v(label, option_text)
 where q.question_hash = '811ff9681e93117b992c4d24fb6bd8a5'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''CoWIN'' platform was used for:',
    'The CoWIN, the Co-Win Information Network, was the digital platform of the covid vaccination drive, the largest of its kind in the world.',
    'easy',
    'PIB',
    2021,
    'd8fc0da739a3c087cdbb78ad16e514ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd8fc0da739a3c087cdbb78ad16e514ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The land records'),
            ('B', 'The covid vaccination registration and the certificates'),
            ('C', 'The RTE admissions'),
            ('D', 'The GST filing')
           ) as v(label, option_text)
 where q.question_hash = 'd8fc0da739a3c087cdbb78ad16e514ee'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''IndiaAI Mission'' was approved with an outlay of:',
    'The IndiaAI Mission was approved in March 2024 with a fiscal outlay of about Rs. 10,372 crore for the compute, the datasets, the applications and the innovation.',
    'hard',
    'PIB',
    2024,
    'a8add0b1f12576f0f12f0370932904f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a8add0b1f12576f0f12f0370932904f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 10,372 crore'),
            ('B', 'Rs. 76,000 crore'),
            ('C', 'Rs. 19,744 crore'),
            ('D', 'Rs. 6,003 crore')
           ) as v(label, option_text)
 where q.question_hash = 'a8add0b1f12576f0f12f0370932904f6'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Quantum Mission'' was approved in 2023 with an outlay of:',
    'The National Quantum Mission, approved in 2023, has an outlay of Rs. 6,003.25 crore for the quantum computers, the communication and the sensing technologies.',
    'medium',
    'PIB',
    2023,
    '72e4f39e342522ca89f1e1ee8bfdeb4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '72e4f39e342522ca89f1e1ee8bfdeb4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 19,744 crore'),
            ('B', 'Rs. 1,000 crore'),
            ('C', 'Rs. 6,003 crore'),
            ('D', 'Rs. 10,372 crore')
           ) as v(label, option_text)
 where q.question_hash = '72e4f39e342522ca89f1e1ee8bfdeb4b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''first Indian semiconductor fab'' at the Sanand:',
    'The Micron''s semiconductor fabrication unit at the Sanand in the Gujarat was approved in 2022 with the support of about Rs. 30,000 crore of the modified semiconductor programme.',
    'medium',
    'PIB',
    2022,
    '187647dbab726ca50eea352adecfec97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '187647dbab726ca50eea352adecfec97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was approved in 2022 under the India Semiconductor Mission and the Micron is the partner'),
            ('B', 'Was approved in 1991'),
            ('C', 'Was of the 1960s'),
            ('D', 'It is in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '187647dbab726ca50eea352adecfec97'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Paris Agreement was:',
    'The Paris Agreement, adopted in December 2015, aims to hold the increase of the global average temperature well below 2 degrees Celsius above the pre-industrial level.',
    'easy',
    'UNFCCC',
    2015,
    '9db2552f9bf12bc3408145768509f161'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9db2552f9bf12bc3408145768509f161'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'adopted in 1997'),
            ('B', 'about the ozone'),
            ('C', 'adopted in 2012'),
            ('D', 'adopted in 2015 and it aims to hold the temperature rise well below 2 degrees C above the pre-industrial level')
           ) as v(label, option_text)
 where q.question_hash = '9db2552f9bf12bc3408145768509f161'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Completed the first Global Stocktake and called:',
    'The COP28 at the Dubai in December 2023 completed the first Global Stocktake and it called for the transition away from the fossil fuels in the energy systems.',
    'medium',
    'UNFCCC',
    2023,
    '198ae9a33b7fb35eb600e18e0e0a9d7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '198ae9a33b7fb35eb600e18e0e0a9d7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the 25th COP'),
            ('B', 'Completed the first Global Stocktake and called for the transition away from the fossil fuels'),
            ('C', 'Was the COP that agreed the Loss and Damage Fund'),
            ('D', 'Was the COP that created the NDC')
           ) as v(label, option_text)
 where q.question_hash = '198ae9a33b7fb35eb600e18e0e0a9d7a'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''COP29'' in the Baku in 2024 agreed:',
    'The COP29 in the Baku in November 2024 agreed the new collective quantified goal of at least USD 300 billion a year by 2035 for the developing countries.',
    'medium',
    'UNFCCC',
    2024,
    '3b0aeb57cf9d5c0564f39facd0a27852'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3b0aeb57cf9d5c0564f39facd0a27852'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A new collective quantified goal of at least USD 300 billion a year by 2035 for the climate finance'),
            ('B', 'The net zero by 2030'),
            ('C', 'The Loss and Damage Fund'),
            ('D', 'The Global Stocktake')
           ) as v(label, option_text)
 where q.question_hash = '3b0aeb57cf9d5c0564f39facd0a27852'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Loss and Damage Fund'' was agreed at the:',
    'The Loss and Damage Fund for the developing countries was agreed at the COP27 in the Sharm el-Sheikh in 2022 and it was operationalised at the COP28.',
    'medium',
    'UNFCCC',
    2022,
    '7ec7d3bd86dd4796c723661321299a25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7ec7d3bd86dd4796c723661321299a25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP28 in 2023'),
            ('B', 'COP25 in 2019'),
            ('C', 'COP27 in 2022'),
            ('D', 'COP26 in 2021')
           ) as v(label, option_text)
 where q.question_hash = '7ec7d3bd86dd4796c723661321299a25'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Kunming-Montreal Global Biodiversity Framework'' was adopted in:',
    'The Kunming-Montreal Global Biodiversity Framework was adopted at the COP15 of the Convention on Biological Diversity in December 2022 with the target of protecting the 30 per cent of the land and the sea by 2030.',
    'medium',
    'CBD',
    2022,
    'b80938d14f841e7a74c45024a9af342b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b80938d14f841e7a74c45024a9af342b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019 at the Bonn'),
            ('B', 'December 2022 at the COP15 of the CBD'),
            ('C', '2016 at the Paris'),
            ('D', '2015 at the Montreal')
           ) as v(label, option_text)
 where q.question_hash = 'b80938d14f841e7a74c45024a9af342b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''BBNJ Agreement'' on the high seas was adopted in:',
    'The Agreement on the Marine Biodiversity of the Areas Beyond National Jurisdiction was adopted in June 2023 to establish the marine protected areas in the high seas.',
    'hard',
    'UN',
    2023,
    '2f91b2d8646870092805e0f74be3d5e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2f91b2d8646870092805e0f74be3d5e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1993'),
            ('B', '1982'),
            ('C', '1995'),
            ('D', 'June 2023')
           ) as v(label, option_text)
 where q.question_hash = '2f91b2d8646870092805e0f74be3d5e3'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which of the following statements regarding the PM-Kusum is correct?',
    'The PM-KUSUM has the three components of the solar power for the farm pumps, the solar power plants of the 10,000 units and the solarisation of the grid-connected small rural plants.',
    'medium',
    'PIB',
    null,
    '8d5e23f3154d7812d74773ec27974c29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d5e23f3154d7812d74773ec27974c29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the rooftop solar scheme for the households'),
            ('B', 'Is the scheme of the solar pumps, the solar power plants and the solarisation of the farms'),
            ('C', 'Is the housing scheme'),
            ('D', 'Is the irrigation subsidy')
           ) as v(label, option_text)
 where q.question_hash = '8d5e23f3154d7812d74773ec27974c29'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''E-waste (Management) Rules, 2022'' came into force on:',
    'The E-waste (Management) Rules of 2022 came into force on 1 April 2023 and they extended the producer responsibility to the twenty-one categories of the electrical and the electronic equipment.',
    'hard',
    'PIB',
    2023,
    '6a69e76d54167082ac287b9115d6999f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a69e76d54167082ac287b9115d6999f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 2023'),
            ('B', '1 April 2022'),
            ('C', '1 April 2023'),
            ('D', '1 July 2022')
           ) as v(label, option_text)
 where q.question_hash = '6a69e76d54167082ac287b9115d6999f'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Single-use plastic ban'' came into effect in India on:',
    'The ban on the identified single-use plastic items came into effect on 1 July 2022 and the plastic waste management rules of 2016 had banned them earlier.',
    'medium',
    'PIB',
    2022,
    '9e09b241a1ae9629b5fa8e2d162cafbd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9e09b241a1ae9629b5fa8e2d162cafbd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 July 2022'),
            ('B', '1 April 2021'),
            ('C', '1 January 2022'),
            ('D', '15 August 2021')
           ) as v(label, option_text)
 where q.question_hash = '9e09b241a1ae9629b5fa8e2d162cafbd'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Mission on Natural Farming'' was launched in:',
    'The National Mission on Natural Farming was launched in 2023 with the objective of the promotion in about 10 lakh hectares across the 2,800 blocks of the country.',
    'hard',
    'PIB',
    2023,
    '377f3645a1203efbbfbfa24b736eed9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '377f3645a1203efbbfbfa24b736eed9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2015'),
            ('C', '2021'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '377f3645a1203efbbfbfa24b736eed9f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Swachh Bharat Mission was:',
    'The Swachh Bharat Mission, launched in October 2014, has the rural component with the ODF+ and the third phase of the urban component with the source segregation and the waste management.',
    'easy',
    'Standard Reference',
    null,
    'c462ae4830fb47d1c06c3cd0e2140baa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c462ae4830fb47d1c06c3cd0e2140baa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 1991'),
            ('B', 'a health mission'),
            ('C', 'a housing mission'),
            ('D', 'launched in 2014 and the third phase of the urban component focuses on the waste management')
           ) as v(label, option_text)
 where q.question_hash = 'c462ae4830fb47d1c06c3cd0e2140baa'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'PM Fasal Bima Yojana was:',
    'The PM Fasal Bima Yojana of 2016 provides the crop insurance with the premium of 2 per cent for the Kharif and 1.5 per cent for the Rabi and the technology-based yield assessment.',
    'medium',
    'Standard Reference',
    null,
    '344950715aa587888c77722094d27a43'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '344950715aa587888c77722094d27a43'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 2016 with the subsidised premium of 2 per cent for the Kharif'),
            ('B', 'launched in 2015'),
            ('C', 'launched in 2019'),
            ('D', 'a credit guarantee scheme')
           ) as v(label, option_text)
 where q.question_hash = '344950715aa587888c77722094d27a43'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Which of the following is correct in the case of the PM-KISAN?',
    'The PM-KISAN, launched in February 2019, provides the income support of Rs. 6,000 a year in three equal instalments through the direct benefit transfer.',
    'easy',
    'Standard Reference',
    null,
    '5f7a2c3ac52a69779a941d6adaf435fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5f7a2c3ac52a69779a941d6adaf435fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a crop insurance scheme'),
            ('B', 'It provides a pension of Rs. 6,000'),
            ('C', 'Provides Rs. 6,000 a year in three instalments to the landholding farmer families'),
            ('D', 'It provides a loan of Rs. 6,000')
           ) as v(label, option_text)
 where q.question_hash = '5f7a2c3ac52a69779a941d6adaf435fb'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Jal Jeevan Mission aims:',
    'The Jal Jeevan Mission, launched in 2019, aims at a functional household tap water connection to every rural household and the prescribed quality of 55 litres per person per day.',
    'easy',
    'Standard Reference',
    null,
    'e0ff84a94ea8822b05689f9e2d6f4ba6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e0ff84a94ea8822b05689f9e2d6f4ba6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a skill mission'),
            ('B', 'at a functional tap water connection to every rural household and 55 litres per person per day'),
            ('C', 'a sanitation mission'),
            ('D', 'a housing mission')
           ) as v(label, option_text)
 where q.question_hash = 'e0ff84a94ea8822b05689f9e2d6f4ba6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the PM-KUSUM, which of the following is correct?',
    'The PM-KUSUM has the three components of the 1.6 lakh solar pumps, the 10,000 solar power plants of 1 MW each and the solarisation of the 5.18 lakh small grid-connected plants.',
    'medium',
    'Standard Reference',
    null,
    '6228762495a2c229d7ef6f7b7a27afd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6228762495a2c229d7ef6f7b7a27afd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has the three components of the solar pumps, the solar plants and the small solar plants'),
            ('B', 'It is a rooftop scheme for the households'),
            ('C', 'It is a coal plant scheme'),
            ('D', 'It is a large hydro scheme')
           ) as v(label, option_text)
 where q.question_hash = '6228762495a2c229d7ef6f7b7a27afd8'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the PM-KMY, which of the following is correct?',
    'The PM Kisan Maandhan Yojana provides a monthly pension of Rs. 3,000 to the small and the marginal farmers on a voluntary contribution with the matching government contribution.',
    'medium',
    'Standard Reference',
    null,
    '9c309ab9276fe9126723404236ddadca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9c309ab9276fe9126723404236ddadca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a loan waiver'),
            ('B', 'Provides a monthly pension of Rs. 3,000 to the small and the marginal farmers'),
            ('C', 'It provides Rs. 6,000 a year'),
            ('D', 'It is a crop insurance')
           ) as v(label, option_text)
 where q.question_hash = '9c309ab9276fe9126723404236ddadca'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'PM SVANidhi provides:',
    'The PM SVANidhi, launched in June 2020, provides the collateral-free working capital loans of up to Rs. 20,000 to the street vendors.',
    'medium',
    'Standard Reference',
    null,
    '8a56349ec296ebf9b71eb9043eb959fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8a56349ec296ebf9b71eb9043eb959fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the housing loans'),
            ('B', 'the crop loans'),
            ('C', 'the insurance'),
            ('D', 'the collateral-free working capital loans to the street vendors')
           ) as v(label, option_text)
 where q.question_hash = '8a56349ec296ebf9b71eb9043eb959fc'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Consider the following statements. Which of them is correct with regard to the PMJANMAN?',
    'The PM-JANMAN, the Janjatiya Nagari Abhiyan, is the scheme for the Particularly Vulnerable Tribal Groups and the Van Dhan Vikas Kendras are the units.',
    'medium',
    'Standard Reference',
    null,
    'bcf72c860976f28dbd917ab92a7461b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bcf72c860976f28dbd917ab92a7461b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the fisheries'),
            ('B', 'It is a skill scheme'),
            ('C', 'Is the scheme for the Particularly Vulnerable Tribal Groups with the Van Dhan Vikas Kendras'),
            ('D', 'It is the scheme for the urban poor')
           ) as v(label, option_text)
 where q.question_hash = 'bcf72c860976f28dbd917ab92a7461b0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Which of the following is correct in the case of the Ujjwala 2.0?',
    'The PMUY 2.0, approved in 2021, extended the deposit-free the LPG connection to the additional beneficiaries and it provided the first refill subsidy.',
    'hard',
    'Standard Reference',
    null,
    '73572516ce6bf10394fcc2179fea3a1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '73572516ce6bf10394fcc2179fea3a1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the city development plan'),
            ('B', 'Extended the PMUY to the additional beneficiaries with the first refill subsidy'),
            ('C', 'It made the LPG free'),
            ('D', 'It was the housing scheme')
           ) as v(label, option_text)
 where q.question_hash = '73572516ce6bf10394fcc2179fea3a1e'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Which of the following statements is/are correct in relation to the PM-MKAND?',
    'The PM-MKAND, the market linkage of the coconut procurement, was launched with the support of the Coconut Development Board under the Ministry of Agriculture.',
    'hard',
    'Standard Reference',
    null,
    '0f8e4076b6c1b2e8220846a8e7756c51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f8e4076b6c1b2e8220846a8e7756c51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the mango export scheme'),
            ('B', 'It is the onion storage scheme'),
            ('C', 'It is a fisheries scheme'),
            ('D', 'Is the scheme of the coconut procurement with the support of the Coconut Development Board')
           ) as v(label, option_text)
 where q.question_hash = '0f8e4076b6c1b2e8220846a8e7756c51'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The POSHAN 2 Abhiyaan is:',
    'The POSHAN 2 Abhiyaan, the revised POSHAN, is the school nutrition programme of the hot cooked meals in the government and the government-aided schools.',
    'medium',
    'Standard Reference',
    null,
    '476244a6abb83380bdc46fd6c2851fd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '476244a6abb83380bdc46fd6c2851fd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the school nutrition programme of the hot cooked meals'),
            ('B', 'a nutrition scheme of the hospitals'),
            ('C', 'a mid-day meal of the private schools'),
            ('D', 'a food fortification scheme')
           ) as v(label, option_text)
 where q.question_hash = '476244a6abb83380bdc46fd6c2851fd8'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Consider the following statements. Which of them is correct with regard to the SAGARMALA?',
    'The Sagarmala is the port-led logistics development programme and it covers the ports, the coastal shipping, the inland waterways and the logistics parks.',
    'medium',
    'Standard Reference',
    null,
    '7a2aad5b8770015277343e55d1d244a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7a2aad5b8770015277343e55d1d244a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the inland waterway project'),
            ('B', 'It is the industrial corridor project'),
            ('C', 'Is the port-led logistics programme of the Ministry of Ports, Shipping and Waterways'),
            ('D', 'It is the highway project')
           ) as v(label, option_text)
 where q.question_hash = '7a2aad5b8770015277343e55d1d244a5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Logistics Policy'' was released in:',
    'The National Logistics Policy was released in 2022 and it is complemented by the PM Gati Shakti National Master Plan.',
    'medium',
    'Standard Reference',
    2022,
    '6a40fb366c9119e3f5a279948838bcf5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6a40fb366c9119e3f5a279948838bcf5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2022'),
            ('C', '2019'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '6a40fb366c9119e3f5a279948838bcf5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'IndiaAI Mission was:',
    'The IndiaAI Mission, approved in March 2024 with an outlay of about Rs. 10,372 crore, is the umbrella programme of the AI ecosystem.',
    'medium',
    'Standard Reference',
    2024,
    '1124d26a558be223cd677d15cae00229'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1124d26a558be223cd677d15cae00229'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approved in 1991'),
            ('B', 'discontinued'),
            ('C', 'approved in 2024 with an outlay of about Rs. 10,372 crore'),
            ('D', 'approved in 2021')
           ) as v(label, option_text)
 where q.question_hash = '1124d26a558be223cd677d15cae00229'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Provides the rooftop solar with a maximum of 300 units per household and it was launched:',
    'The PM Surya Ghar Muft Bijli Yojana, launched in February 2024 with an outlay of Rs. 75,021 crore, provides the rooftop solar of up to 300 units per household.',
    'easy',
    'Standard Reference',
    2024,
    'e10066b4f2b79e9ae83ca3da7999e2a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e10066b4f2b79e9ae83ca3da7999e2a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the free electricity to all'),
            ('B', 'a state scheme'),
            ('C', 'a smart meter scheme'),
            ('D', 'in 2024')
           ) as v(label, option_text)
 where q.question_hash = 'e10066b4f2b79e9ae83ca3da7999e2a4'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'PM Gati Shakti has:',
    'The PM Gati Shakti National Master Plan has the 14 sectors with the 20 key multimodal corridors and about 100 projects.',
    'medium',
    'Standard Reference',
    null,
    '2e6ecb72e5346aaa468986c8bd2602ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e6ecb72e5346aaa468986c8bd2602ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 14 sectors and the 20 key corridors'),
            ('B', 'a highway project'),
            ('C', 'a port project'),
            ('D', 'a telecom project')
           ) as v(label, option_text)
 where q.question_hash = '2e6ecb72e5346aaa468986c8bd2602ae'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'National Green Hydrogen Mission has:',
    'The National Green Hydrogen Mission has an outlay of Rs. 19,744 crore and the target of a minimum of 5 million tonnes of the annual green hydrogen production by 2030.',
    'medium',
    'Standard Reference',
    null,
    '0a5da8b376e06b3b01c4e5eab9bda982'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a5da8b376e06b3b01c4e5eab9bda982'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the nuclear energy'),
            ('B', 'a state scheme'),
            ('C', 'an outlay of Rs. 19,744 crore and a target of 5 million tonnes by 2030'),
            ('D', 'an outlay of Rs. 1,974 crore')
           ) as v(label, option_text)
 where q.question_hash = '0a5da8b376e06b3b01c4e5eab9bda982'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the Bhashini, which of the following is correct?',
    'The Bhashini mission, launched in 2022, builds the digital public infrastructure for the Indian languages with the translation, the transcription and the AI assistance.',
    'medium',
    'Standard Reference',
    null,
    '6632f5b8d7fe8828e130afab04c7e840'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6632f5b8d7fe8828e130afab04c7e840'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the ISRO'),
            ('B', 'Is the MeitY mission for the digital public infrastructure of the Indian languages'),
            ('C', 'It is a scheme of the education'),
            ('D', 'It is a digital payments scheme')
           ) as v(label, option_text)
 where q.question_hash = '6632f5b8d7fe8828e130afab04c7e840'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Which of the following statements regarding the PM-EG is correct?',
    'The Programme for the Electronics Manufacturing with a proposed investment of about Rs. 11,000 crore was approved in 2020 and it is in the PLI.',
    'hard',
    'Standard Reference',
    null,
    '803cc9807e8508edfe4a2137392e81c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '803cc9807e8508edfe4a2137392e81c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the scheme of the electronics manufacturing with the investment of about Rs. 11,000 crore'),
            ('B', 'It is the mobile phone scheme'),
            ('C', 'It is the IT hardware scheme'),
            ('D', 'It is the semiconductor fab scheme')
           ) as v(label, option_text)
 where q.question_hash = '803cc9807e8508edfe4a2137392e81c5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM E-DRIVE'' of 2022:',
    'The PM E-DRIVE, the Electric Mobility Transformation Scheme, was approved in September 2022 with a subsidy of about Rs. 10,900 crore.',
    'medium',
    'Standard Reference',
    2022,
    'a1d539d47cc315c200070816a5c3b7c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a1d539d47cc315c200070816a5c3b7c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a subsidy of the CNG vehicles only'),
            ('B', 'It is a scrappage policy'),
            ('C', 'It is a subsidy of the tractors'),
            ('D', 'Is the electric mobility scheme with a subsidy of about Rs. 10,900 crore')
           ) as v(label, option_text)
 where q.question_hash = 'a1d539d47cc315c200070816a5c3b7c3'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Consider the following statements. Which of them is correct with regard to the PM MITI?',
    'The Programme for the Electronics Manufacturing and the IT Hardware of the Ministry of Commerce and Industry was approved in 2020 as a part of the PLI.',
    'hard',
    'Standard Reference',
    null,
    '86e9bbfd3c9d72ce8f7af565d6e2f7e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '86e9bbfd3c9d72ce8f7af565d6e2f7e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the education'),
            ('B', 'Is the scheme of the electronics manufacturing and the IT hardware of the Ministry of Commerce and Industry'),
            ('C', 'It is a scheme of the IT services'),
            ('D', 'It is a scheme of the telecom')
           ) as v(label, option_text)
 where q.question_hash = '86e9bbfd3c9d72ce8f7af565d6e2f7e0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Aadhaar (Targeted Delivery of Benefits and Other Services) Act of 2016 made:',
    'The Aadhaar Act of 2016 made the UIDAI a statutory body and it also allowed the private sector to use the Aadhaar authentication.',
    'medium',
    'Standard Reference',
    2016,
    '4a36b17e3a5e1359d07b6c41356412a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a36b17e3a5e1359d07b6c41356412a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the UIDAI a statutory body'),
            ('B', 'of 2009'),
            ('C', 'of 1991'),
            ('D', 'of 2005')
           ) as v(label, option_text)
 where q.question_hash = '4a36b17e3a5e1359d07b6c41356412a5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the JAM, which of the following is correct?',
    'The JAM, the Joint Admission Matrix, is the common platform for the admissions to the central and the state institutions and it was launched in 2015.',
    'medium',
    'Standard Reference',
    null,
    'c88884d0ee47c91f9516cc6080600e9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c88884d0ee47c91f9516cc6080600e9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a digital literacy scheme'),
            ('B', 'It is a housing scheme'),
            ('C', 'Is the Joint Admission Matrix for the central and the state institutions'),
            ('D', 'It is a financial inclusion programme')
           ) as v(label, option_text)
 where q.question_hash = 'c88884d0ee47c91f9516cc6080600e9e'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the SWAYAM, which of the following is correct?',
    'The SWAYAM, the Study Webs of Active-Learning for Young Aspiring Minds, is the national portal of the free online courses of the Indian institutions.',
    'easy',
    'Standard Reference',
    null,
    '1f74eb7265a653922b06211c3f81cdb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1f74eb7265a653922b06211c3f81cdb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a skill development portal'),
            ('B', 'It is a digital payments portal'),
            ('C', 'It is a scholarship portal'),
            ('D', 'Is the national portal of the MOOCs of the Indian universities')
           ) as v(label, option_text)
 where q.question_hash = '1f74eb7265a653922b06211c3f81cdb2'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the DIKSHA, which of the following is correct?',
    'The DIKSHA, the Digital Infrastructure for Knowledge Sharing, is the national portal of the school education with the textbooks and the e-learning content.',
    'medium',
    'Standard Reference',
    null,
    '0a5b70f352699e3514cf4a656f80bc04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0a5b70f352699e3514cf4a656f80bc04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a skill portal'),
            ('B', 'Is the national portal of the school education with the e-content'),
            ('C', 'It is a digital payments portal'),
            ('D', 'It is a university education portal')
           ) as v(label, option_text)
 where q.question_hash = '0a5b70f352699e3514cf4a656f80bc04'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Consider the following statements. Which of them is correct with regard to the UMANG?',
    'The UMANG, the Unified Mobile Application for all the Government services, offers more than 2,000 services and it was launched in 2016.',
    'medium',
    'Standard Reference',
    null,
    '5ab344f99a106b2a5ef261c65ce86e01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5ab344f99a106b2a5ef261c65ce86e01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a learning platform'),
            ('B', 'It is a survey platform'),
            ('C', 'Is the platform of the government services for the citizens'),
            ('D', 'It is a payment platform')
           ) as v(label, option_text)
 where q.question_hash = '5ab344f99a106b2a5ef261c65ce86e01'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Consider the following statements. Which of them is correct with regard to the DigiLocker?',
    'The DigiLocker, launched in 2015, allows the citizens to access the government issued documents digitally and it is integrated with the Aadhaar and the mobile.',
    'medium',
    'Standard Reference',
    null,
    'b756d09142a1e0b35dbe0edeecae41cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b756d09142a1e0b35dbe0edeecae41cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the platform of the digital documents of the citizens'),
            ('B', 'It is a payments platform'),
            ('C', 'It is a survey platform'),
            ('D', 'It is a learning platform')
           ) as v(label, option_text)
 where q.question_hash = 'b756d09142a1e0b35dbe0edeecae41cd'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Consider the following statements. Which of them is correct with regard to the ONDC?',
    'The ONDC, the Open Network for Digital Commerce, is the initiative of the Department of Promotion of Industry and Internal Trade for the interoperability of the digital commerce.',
    'medium',
    'Standard Reference',
    null,
    '64fbf1a377815ce5068a1b2d529d0eac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '64fbf1a377815ce5068a1b2d529d0eac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a payments network'),
            ('B', 'It is a logistics scheme'),
            ('C', 'It is a telecommunications network'),
            ('D', 'Is the open network for the digital commerce with the interoperable protocols')
           ) as v(label, option_text)
 where q.question_hash = '64fbf1a377815ce5068a1b2d529d0eac'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Account Aggregator is:',
    'The Account Aggregator, with the Sahamati as the financial information repository, enables the consent-based sharing of the financial information of the citizens.',
    'medium',
    'Standard Reference',
    null,
    '99c47cd49b9a502987f6ccfb05c122a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '99c47cd49b9a502987f6ccfb05c122a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the consent-based financial data sharing system with the Sahamati as the repository'),
            ('B', 'a credit information company'),
            ('C', 'a digital identity provider'),
            ('D', 'a payments gateway')
           ) as v(label, option_text)
 where q.question_hash = '99c47cd49b9a502987f6ccfb05c122a5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Stand Up India'' of 2016:',
    'The Stand Up India provides the bank credit to the greenfield enterprises of the Scheduled Castes, the Scheduled Tribes and the women entrepreneurs.',
    'medium',
    'Standard Reference',
    2016,
    'a8dd79a760a570db7a6772bc8c02beef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8dd79a760a570db7a6772bc8c02beef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the farmland'),
            ('B', 'It is a skill scheme'),
            ('C', 'Provides the bank credit to the SC, the ST and the women entrepreneurs'),
            ('D', 'It is a credit guarantee for the MSMEs')
           ) as v(label, option_text)
 where q.question_hash = 'a8dd79a760a570db7a6772bc8c02beef'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the MUDRA, which of the following is correct?',
    'The MUDRA has the three categories of the Shishu for the new entrepreneurs, the Kishore for the growing and the Tarun for the established.',
    'medium',
    'Standard Reference',
    null,
    'd7c0601cd415c12a6f7faaab3e7254b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7c0601cd415c12a6f7faaab3e7254b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the NABARD for the agriculture'),
            ('B', 'Has the three categories of the Shishu, the Kishore and the Tarun'),
            ('C', 'It has only the Shishu category'),
            ('D', 'It is for the corporates')
           ) as v(label, option_text)
 where q.question_hash = 'd7c0601cd415c12a6f7faaab3e7254b5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Pradhan Mantri Mudra Yojana was:',
    'The PMMY, launched in April 2015, provides the loans to the micro units and the small enterprises and it is refinanced by the SIDBI.',
    'easy',
    'Standard Reference',
    null,
    'cf4b88919cfe78ad66cb1a1c472434d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf4b88919cfe78ad66cb1a1c472434d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 1991'),
            ('B', 'a crop loan scheme'),
            ('C', 'a housing scheme'),
            ('D', 'launched in 2015 to finance the micro units and the small enterprises')
           ) as v(label, option_text)
 where q.question_hash = 'cf4b88919cfe78ad66cb1a1c472434d8'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Startup India Seed Fund provides:',
    'The Startup India Seed Fund Scheme provides up to Rs. 50 lakh for the proof of concept and up to Rs. 20 crore for the scaling up of the startups.',
    'medium',
    'Standard Reference',
    null,
    '6534dccc0ca93e3943b2765878eefbcd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6534dccc0ca93e3943b2765878eefbcd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'up to Rs. 50 lakh for the proof of concept and up to Rs. 20 crore for the growth'),
            ('B', 'the loans of Rs. 1 crore only'),
            ('C', 'a fund of the states'),
            ('D', 'the tax exemptions')
           ) as v(label, option_text)
 where q.question_hash = '6534dccc0ca93e3943b2765878eefbcd'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Make in India was:',
    'The Make in India of 2014 has the three pillars of the Make in India, the Skill India and the Start Up India, and it was restructured with the National Manufacturing Mission in 2020.',
    'easy',
    'Standard Reference',
    null,
    '7d3d39d6ca3d23c3e5e35f774384cb49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7d3d39d6ca3d23c3e5e35f774384cb49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 1986'),
            ('B', 'a state initiative'),
            ('C', 'launched in 2014 with the three pillars of the Make in India, the Skill India and the Start Up India'),
            ('D', 'launched in 1991')
           ) as v(label, option_text)
 where q.question_hash = '7d3d39d6ca3d23c3e5e35f774384cb49'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'In the context of the Skill India, which of the following is correct?',
    'The Skill India, launched in 2015, is implemented through the National Skill Development Corporation with the target of the skilling of 400 million.',
    'medium',
    'Standard Reference',
    null,
    'ffee602c92c89234c565195e08a38a94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ffee602c92c89234c565195e08a38a94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was launched in 1991'),
            ('B', 'It is a scheme of the agriculture'),
            ('C', 'It is a housing scheme'),
            ('D', 'Was launched in 2015 with the NSDC and the National Skill Development Corporation')
           ) as v(label, option_text)
 where q.question_hash = 'ffee602c92c89234c565195e08a38a94'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Skill Development Corporation'' was set up in:',
    'The NSDC, a public limited company under the Ministry of Skill Development, was set up in 2009 and it is the apex for the skill development.',
    'hard',
    'Standard Reference',
    null,
    '01cf55eeeb4b5fd8fe79209e11d5b8b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '01cf55eeeb4b5fd8fe79209e11d5b8b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '2009'),
            ('C', '1991'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '01cf55eeeb4b5fd8fe79209e11d5b8b0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Jan Dhan Yojana was:',
    'The Pradhan Mantri Jan Dhan Yojana, launched in August 2014, has the largest number of the basic bank accounts in the world with the RuPay cards and the overdrafts.',
    'easy',
    'Standard Reference',
    null,
    '06a6130934e9fed594d53bd41803fabb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '06a6130934e9fed594d53bd41803fabb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an insurance scheme'),
            ('B', 'launched in 2014 and it has the largest number of the basic bank accounts in the world'),
            ('C', 'launched in 1991'),
            ('D', 'a housing scheme')
           ) as v(label, option_text)
 where q.question_hash = '06a6130934e9fed594d53bd41803fabb'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Krishi Sinchayee Yojana'' is:',
    'The PMKSY is the micro irrigation scheme of the per command area development with the objective of the enhanced water use efficiency and the area expansion of the irrigation.',
    'medium',
    'Standard Reference',
    null,
    '9f7b40da9f8c0c62fc1d327c98b0cd3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f7b40da9f8c0c62fc1d327c98b0cd3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The watershed development programme'),
            ('B', 'The river linking project'),
            ('C', 'The command area development of the CADP'),
            ('D', 'The micro irrigation scheme of the per command area development')
           ) as v(label, option_text)
 where q.question_hash = '9f7b40da9f8c0c62fc1d327c98b0cd3a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Per Drop More Crop'' is:',
    'The Per Drop More Crop is the micro irrigation component of the PMKSY and it promotes the water use efficiency with the subsidies for the drip and the sprinkler systems.',
    'medium',
    'Standard Reference',
    null,
    'e26a1060c9c4dfa33d64817f061d817f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e26a1060c9c4dfa33d64817f061d817f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A scheme of the NABARD'),
            ('B', 'A scheme of the state governments'),
            ('C', 'The micro irrigation component of the PMKSY'),
            ('D', 'The drip irrigation subsidy of the Telangana')
           ) as v(label, option_text)
 where q.question_hash = 'e26a1060c9c4dfa33d64817f061d817f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Integrated Watershed Management Programme'' is:',
    'The Integrated Watershed Management Programme of the Department of Rural Development is a watershed development programme with the 3,000 watersheds in the country.',
    'hard',
    'Standard Reference',
    null,
    '685684fa0a02d51f907868c08ce24142'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '685684fa0a02d51f907868c08ce24142'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A programme of the Department of Rural Development for the watershed development'),
            ('B', 'A programme of the Ministry of Water Resources'),
            ('C', 'A programme of the DRDA for the irrigation'),
            ('D', 'A scheme of the MGNREGA')
           ) as v(label, option_text)
 where q.question_hash = '685684fa0a02d51f907868c08ce24142'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Which of the following statements is/are correct in relation to the MGNREGA?',
    'The MGNREGA guarantees 100 days of the wage employment and it is the largest of the rural employment programmes of the world.',
    'easy',
    'Standard Reference',
    null,
    '3ac812da1792bba54703e1a377cf4911'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3ac812da1792bba54703e1a377cf4911'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It provides the crop insurance'),
            ('B', 'Provides a guarantee of 100 days of the wage employment and it is the largest of such programme'),
            ('C', 'It provides the rural housing'),
            ('D', 'It provides the social security pension')
           ) as v(label, option_text)
 where q.question_hash = '3ac812da1792bba54703e1a377cf4911'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Rural Livelihoods Mission'' is:',
    'The NRLM, the Deendayal Antyodaya Yojana, is the livelihood mission of the Ministry of Rural Development for the poor and it is the largest of the community-driven programmes.',
    'medium',
    'Standard Reference',
    null,
    'd2e4cd4ebf9ffa72ac0fe81f1e824544'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd2e4cd4ebf9ffa72ac0fe81f1e824544'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The mission of the Ministry of Rural Development for the livelihoods of the poor'),
            ('B', 'It is a housing scheme'),
            ('C', 'It is a nutrition scheme'),
            ('D', 'It is a skill scheme')
           ) as v(label, option_text)
 where q.question_hash = 'd2e4cd4ebf9ffa72ac0fe81f1e824544'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Pradhan Mantri Awas Yojana-Gramin provides:',
    'The PMAY-G provides the assistance of Rs. 1.20 lakh in the plains, Rs. 1.30 lakh in the hilly and the difficult areas and Rs. 1.50 lakh in the Ispir and the tribal areas.',
    'hard',
    'Standard Reference',
    null,
    '441761ae390da0e6c2b5d32522306fea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '441761ae390da0e6c2b5d32522306fea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the assistance of Rs. 50,000 only'),
            ('B', 'an urban scheme'),
            ('C', 'a rental housing scheme'),
            ('D', 'the assistance of Rs. 1.20 lakh in the plains and Rs. 1.30 lakh in the hilly areas')
           ) as v(label, option_text)
 where q.question_hash = '441761ae390da0e6c2b5d32522306fea'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-DAY'' of 2023:',
    'The PM-DAY, the Pradhan Mantri Divya Bazaar Yojana, was approved in 2023 to strengthen the rural livelihoods of the poorest families through the community infrastructure.',
    'hard',
    'Standard Reference',
    2023,
    'aa69035044e48e2bfb54e8881a33e5f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aa69035044e48e2bfb54e8881a33e5f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a nutrition scheme'),
            ('B', 'It is a digital literacy scheme'),
            ('C', 'Is the national mission to strengthen the rural livelihoods of the poorest families'),
            ('D', 'It is a housing scheme')
           ) as v(label, option_text)
 where q.question_hash = 'aa69035044e48e2bfb54e8881a33e5f8'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Ayushman Bharat Pradhan Mantri Jan Arogya Yojana provides health cover of:',
    'PM-JAY provides cashless hospital cover of Rs 5 lakh per family per year to about 55 crore people identified on the basis of deprivation criteria, and the entitlement is portable across the country.',
    'easy',
    'PIB',
    null,
    '9bf6377b86cec0d254052cb6e0888ff6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9bf6377b86cec0d254052cb6e0888ff6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 2 lakh per family per year on a reimbursement basis'),
            ('B', 'Rs 10 lakh for senior citizens and Rs 5 lakh for other families'),
            ('C', 'Rs 5 lakh per family per year, portable across all States and Union Territories'),
            ('D', 'Rs 5 lakh per individual for listed tertiary care packages')
           ) as v(label, option_text)
 where q.question_hash = '9bf6377b86cec0d254052cb6e0888ff6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Jal Jeevan Mission'' is implemented by:',
    'The Jal Jeevan Mission is implemented by the Department of Drinking Water and Sanitation in partnership with the States and the local bodies, with the Centre and the States sharing the cost in a 75:25 ratio.',
    'easy',
    'PIB',
    null,
    '74424ad26c6e2450db859f3a3543a136'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '74424ad26c6e2450db859f3a3543a136'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Department of Drinking Water and Sanitation with the States executing the works in rural areas'),
            ('B', 'the Ministry of Housing and Urban Affairs alone'),
            ('C', 'the National Water Development Agency'),
            ('D', 'the Central Water Commission')
           ) as v(label, option_text)
 where q.question_hash = '74424ad26c6e2450db859f3a3543a136'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-KISAN'' scheme excludes:',
    'Institutional landholders, landholding farmer families who pay income tax, and serving or retired government employees above a notified category, are excluded from PM-KISAN, as are the families covered under the Income Support Act of 2020.',
    'easy',
    'PIB',
    null,
    '1012a56538c6723d14bf14d5063e8154'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1012a56538c6723d14bf14d5063e8154'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'small and marginal farmers only'),
            ('B', 'landless agricultural labourers'),
            ('C', 'all the farmers of the North-Eastern States'),
            ('D', 'landholding farmer families who pay income tax, institutional landholders and the serving or retired government employees above the notified category')
           ) as v(label, option_text)
 where q.question_hash = '1012a56538c6723d14bf14d5063e8154'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Under the ''Pradhan Mantri Mudra Yojana'', loans are classified into which categories?',
    'MUDRA classifies loans as Shishu up to Rs 50,000, Kishore from Rs 50,000 to Rs 5 lakh and Tarun from Rs 5 lakh to Rs 10 lakh, and the loans are collateral free for the new categories.',
    'easy',
    'PIB',
    null,
    '40e4f9cc079d485deb5ce2d9f192209e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '40e4f9cc079d485deb5ce2d9f192209e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sakhi, Samarthya and Udyam'),
            ('B', 'Shishu, Kishore and Tarun'),
            ('C', 'Kanya, Kishor and Yuva'),
            ('D', 'Micro, Small and Medium')
           ) as v(label, option_text)
 where q.question_hash = '40e4f9cc079d485deb5ce2d9f192209e'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Under the ''PM SVANidhi'' scheme, the loan repayment guarantee is available for:',
    'The PM SVANidhi provides a cash credit of up to Rs 50,000 to street vendors with a 12-month loan repayment guarantee from the lending institution, and a booster of Rs 12,000 is available for the timely repayment and the digital transactions.',
    'easy',
    'PIB',
    null,
    '96ff7dd86605e10a73e7b3c07384d2de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96ff7dd86605e10a73e7b3c07384d2de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12 months from the date of the first disbursement'),
            ('B', '36 months from the date of the first disbursement'),
            ('C', '24 months from the date of the sanction'),
            ('D', '6 months from the date of the application')
           ) as v(label, option_text)
 where q.question_hash = '96ff7dd86605e10a73e7b3c07384d2de'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Jan Dhan Yojana'' accounts carry:',
    'The Jan Dhan accounts come with a free RuPay debit card, accident insurance of Rs 2 lakh and a overdraft of up to Rs 10,000 after six months of satisfactory operation, and they form the core of the national financial inclusion effort.',
    'easy',
    'PIB',
    null,
    '757cf4b0076fc390671c5778da503ea9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '757cf4b0076fc390671c5778da503ea9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a life insurance cover of Rs 2 lakh'),
            ('B', 'an accident insurance cover of Rs 1 lakh'),
            ('C', 'a Rs 1,000 annual credit card'),
            ('D', 'a free overdraft facility of up to Rs 10,000 after six months of satisfactory operation')
           ) as v(label, option_text)
 where q.question_hash = '757cf4b0076fc390671c5778da503ea9'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Under the restructured ''Pradhan Mantri Fasal Bima Yojana'':',
    'From the 2020 season the crop insurance scheme was restructured and made voluntary for all farmers, and the government continues to pay the entire premium for the notified crops, with the farmer paying a small share in the other cases.',
    'easy',
    'PIB',
    null,
    '5f69390e77f25d99f63934b676c512b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5f69390e77f25d99f63934b676c512b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the coverage has been restricted to the notified states'),
            ('B', 'the scheme has been made voluntary for all farmers, with the government paying the full premium for the notified crops'),
            ('C', 'the premium has been raised to 5 per cent for kharif crops'),
            ('D', 'the scheme now covers only commercial crops')
           ) as v(label, option_text)
 where q.question_hash = '5f69390e77f25d99f63934b676c512b2'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Under the ''PM Kisan Maandhan Yojana'', the farmer''s monthly contribution to the pension fund is:',
    'The farmer contributes between Rs 800 and Rs 1,200 a month and the Central Government matches that contribution in the corpus, and the accumulated sum at the age of sixty determines the monthly pension of Rs 3,000.',
    'hard',
    'PIB',
    null,
    '173b90b75481fbba587a0f7bbe602f7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '173b90b75481fbba587a0f7bbe602f7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'subsidised only for women farmers'),
            ('B', 'borne entirely by the State Governments'),
            ('C', 'matched by an equal contribution from the Central Government'),
            ('D', 'refunded to the farmer after retirement')
           ) as v(label, option_text)
 where q.question_hash = '173b90b75481fbba587a0f7bbe602f7c'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Atal Pension Yojana'' guarantees a pension of:',
    'Atal Pension Yojana offers a guaranteed minimum pension of Rs 1,000 to Rs 5,000 a month after the age of sixty, and the pension is managed by the Pension Fund Regulatory and Development Authority.',
    'easy',
    'PIB',
    null,
    '4bfb7c8f303132fb876a1152eea336ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4bfb7c8f303132fb876a1152eea336ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 1,000 to Rs 5,000 per month after the age of 60'),
            ('B', 'a variable pension determined by the market'),
            ('C', 'a fixed Rs 3,000 per month after the age of 60'),
            ('D', 'Rs 6,000 a year after the age of 65')
           ) as v(label, option_text)
 where q.question_hash = '4bfb7c8f303132fb876a1152eea336ad'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Vishwakarma'' scheme covers:',
    'The PM Vishwakarma scheme, launched in 2023 with 14 sub-schemes, covers 18 traditional trades and 5 artisan crafts and provides end-to-end support including credit at 5 per cent interest, skill training, toolkits, digital empowerment and market linkage.',
    'easy',
    'PIB',
    null,
    '32fbe4c7456583046c8439c1ac661546'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '32fbe4c7456583046c8439c1ac661546'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the handloom weavers of the North-East only'),
            ('B', '18 traditional trades and 5 artisan crafts, with 14 sub-schemes for credit, training, toolkits, digital empowerment and marketing'),
            ('C', 'only the tailoring and weaving trades'),
            ('D', 'all small manufacturers of electronics')
           ) as v(label, option_text)
 where q.question_hash = '32fbe4c7456583046c8439c1ac661546'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    '''Mission Shakti'' has two sub-schemes, namely:',
    'Mission Shakti has Sambal, which covers the One Stop Centre, the women''s helpline 181 and the Safe City project, and Samarthya, which covers the Beti Bachao Beti Padhao campaign, the Sukanya Samriddhi account and the Ujjwala scheme.',
    'easy',
    'PIB',
    null,
    '5b10cd445e1b871d22522674659ee2b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5b10cd445e1b871d22522674659ee2b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Suraksha and Samarthya'),
            ('B', 'Sambal and Suraksha'),
            ('C', 'Kalyan and Pragati'),
            ('D', 'Sambal and Samarthya')
           ) as v(label, option_text)
 where q.question_hash = '5b10cd445e1b871d22522674659ee2b2'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Under the ''Swachh Bharat Mission-U'', the responsibility for the solid waste management rests with:',
    'SBM-U was launched in 2019 with the urban local bodies responsible for the planning and implementation of the solid waste management and the States supporting them with the funding and the policy framework.',
    'hard',
    'PIB',
    null,
    'b3985586f5724e251dee935e5b5ebcc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b3985586f5724e251dee935e5b5ebcc6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Border Roads Organisation'),
            ('B', 'the Centre alone'),
            ('C', 'the urban local bodies, assisted by the States'),
            ('D', 'the Central Pollution Control Board')
           ) as v(label, option_text)
 where q.question_hash = 'b3985586f5724e251dee935e5b5ebcc6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    '''DAY-NRLM'' provides community funds through the:',
    'Under the Deendayal Antyodaya Yojana-National Rural Livelihoods Mission, the Community Investment Fund is provided to Gram Panchayats and the Community Development Fund to the Intermediate Panchayats or blocks for lending to the SHGs.',
    'easy',
    'PIB',
    null,
    'a492f9694f3faed7c0b79c8e6b402f4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a492f9694f3faed7c0b79c8e6b402f4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Community Investment Fund at the Gram Panchayat level and the Community Development Fund at the block level'),
            ('B', 'a bank credit line for the SHGs'),
            ('C', 'a revolving fund at the village level only'),
            ('D', 'a matching grant for the State Governments')
           ) as v(label, option_text)
 where q.question_hash = 'a492f9694f3faed7c0b79c8e6b402f4b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''AMRUT'' mission covers which five components?',
    'The Atal Mission for Rejuvenation and Urban Transformation covers water supply, sewerage and solid waste management, stormwater drainage, urban mobility and urban resilience, and it works through the State Urban Local Body Mission.',
    'medium',
    'PIB',
    null,
    'db7b90acd2c6ebb97773fb45b7f3a4e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db7b90acd2c6ebb97773fb45b7f3a4e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'housing, sanitation, drainage, lighting and waste management'),
            ('B', 'water supply, sewerage and solid waste, stormwater drainage, urban mobility and urban resilience'),
            ('C', 'water supply, sanitation, housing, health and education'),
            ('D', 'roads, transport, logistics, power and telecom')
           ) as v(label, option_text)
 where q.question_hash = 'db7b90acd2c6ebb97773fb45b7f3a4e4'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Green Hydrogen Mission'' targets the production of at least 5 million metric tonnes of green hydrogen per annum by:',
    'The National Green Hydrogen Mission seeks to replace the grey hydrogen used in refineries and fertiliser plants with green hydrogen produced from renewable energy, and the associated decarbonisation of the industrial sector is expected to create about 1.2 million jobs by 2030.',
    'hard',
    'PIB',
    null,
    '25097605908a1bd21ef2ffe8f5b5ee12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '25097605908a1bd21ef2ffe8f5b5ee12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2035'),
            ('B', '2047'),
            ('C', '2030'),
            ('D', '2025')
           ) as v(label, option_text)
 where q.question_hash = '25097605908a1bd21ef2ffe8f5b5ee12'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-KUSUM'' scheme is administered by:',
    'PM-KUSUM, launched in 2019, is administered by the Ministry of New and Renewable Energy, and it has three components, namely small solar power plants, solar pumps with subsidy and solar cold storage facilities.',
    'medium',
    'PIB',
    null,
    'eddeb4602ad88fa605c26470ec05ea1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eddeb4602ad88fa605c26470ec05ea1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Coal'),
            ('B', 'the Central Electricity Authority'),
            ('C', 'the Ministry of Agriculture and Farmers Welfare'),
            ('D', 'the Ministry of New and Renewable Energy')
           ) as v(label, option_text)
 where q.question_hash = 'eddeb4602ad88fa605c26470ec05ea1d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''POSHAN 2.0'' programme has five components, namely:',
    'POSHAN 2.0 integrates the Supplementary Nutrition Programme, POSHAN Abhiyaan, Vats for anganwadi centres, Poshan Vatika for the school level and Poshan Pakhwad, and it also incorporates the WASH components in anganwadi centres.',
    'medium',
    'PIB',
    null,
    'c462657eec4a5e265d29cf8fcba7df8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c462657eec4a5e265d29cf8fcba7df8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Supplementary Nutrition Programme, POSHAN Abhiyaan, Vats, Poshan Vatika and Poshan Pakhwad'),
            ('B', 'ICDS, WASH, Poshan Pakhwad, Vats and Poshan Vatika'),
            ('C', 'Mid-Day Meal, POSHAN Abhiyaan, Vats, Poshan Vatika and Saksham Anganwadi'),
            ('D', 'the Supplementary Nutrition Programme, Vats, Anganwadi, Poshan Vatika and Poshan Pakhwad')
           ) as v(label, option_text)
 where q.question_hash = 'c462657eec4a5e265d29cf8fcba7df8d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Legal Services Authority'' was reconstituted in 2020 to provide:',
    'The NALSA was reconstituted as a statutory body in 2020 under the Legal Services Authorities Act, extending free legal aid to all eligible persons regardless of gender and income, and it also runs the Nyaya Bandhu portal and the Tele-Law service.',
    'easy',
    'PIB',
    null,
    '37817f4ea93bd64aea9c4fbdb26f4e3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '37817f4ea93bd64aea9c4fbdb26f4e3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'legal aid only to women, children and senior citizens'),
            ('B', 'mediation services to commercial disputes only'),
            ('C', 'legal aid to the Central Government employees'),
            ('D', 'free legal aid to all eligible persons irrespective of gender and economic status')
           ) as v(label, option_text)
 where q.question_hash = '37817f4ea93bd64aea9c4fbdb26f4e3f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Accessible India Campaign'', or Sugamya Bharat Abhiyan, has how many key focus areas?',
    'The campaign works on twelve key focus areas, among them the building of barrier-free campuses, assistive technology, accessible transportation and the training of professionals in accessible construction, under the Rights of Persons with Disabilities Act, 2016.',
    'hard',
    'PIB',
    null,
    'eba7968e164893e9f41480892ac77469'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eba7968e164893e9f41480892ac77469'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eight'),
            ('B', 'Four'),
            ('C', 'Twelve'),
            ('D', 'Six')
           ) as v(label, option_text)
 where q.question_hash = 'eba7968e164893e9f41480892ac77469'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Rights of Persons with Disabilities Act, 2016'' recognises:',
    'The 2016 Act expanded the definition of disability from seven to 21 categories, including acid attack victims, autism, intellectual disability and multiple disabilities, and it is aligned with the Convention on the Rights of Persons with Disabilities.',
    'easy',
    'PIB',
    null,
    '4121fada6c980766122cf6a7676c647d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4121fada6c980766122cf6a7676c647d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12 categories of disability'),
            ('B', '21 categories of disability'),
            ('C', '7 categories of disability'),
            ('D', '18 categories of disability')
           ) as v(label, option_text)
 where q.question_hash = '4121fada6c980766122cf6a7676c647d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Shram Yogi Maandhan'' scheme provides:',
    'The Shram Yogi Maandhan national pension scheme for unorganised workers provides Rs 1,000 a month after the age of sixty, with the worker contributing between Rs 800 and Rs 1,200 a month and the Central Government matching the contribution.',
    'medium',
    'PIB',
    null,
    '5d5b111c45a258c394ba14a50f8088e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5d5b111c45a258c394ba14a50f8088e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'free skill training with a placement guarantee'),
            ('B', 'a matching contribution in the Employees'' Provident Fund'),
            ('C', 'a 12-month wage subsidy for hiring women'),
            ('D', 'a monthly pension of Rs 1,000 after the age of 60 on contribution by the worker and the Central Government')
           ) as v(label, option_text)
 where q.question_hash = '5d5b111c45a258c394ba14a50f8088e7'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Atal Beemit Vyakti Kalyan Yojana'' provides:',
    'The scheme, renamed from ADIP, provides a monthly cash transfer of Rs 1,000 to the identified beneficiaries with severe disabilities, along with convergence with other welfare schemes through the UDID portal.',
    'medium',
    'PIB',
    null,
    '2f1decfd55d5561b62ecd88ae3eebd67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f1decfd55d5561b62ecd88ae3eebd67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a scholarship for students with disabilities'),
            ('B', 'a skill training allowance for disabled persons'),
            ('C', 'a monthly assistance of Rs 1,000 to persons with severe disabilities in the age group of 18 to 59'),
            ('D', 'a pension of Rs 2,000 to all senior citizens')
           ) as v(label, option_text)
 where q.question_hash = '2f1decfd55d5561b62ecd88ae3eebd67'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Awas Yojana-Urban 2.0'' provides an interest subsidy of up to:',
    'PMAY-U 2.0 offers an interest subsidy of up to Rs 1.80 lakh on loans of up to Rs 25 lakh for four income categories, with a preference for women, the elderly, persons with disabilities and the differently abled, and the scheme is implemented through four verticals.',
    'hard',
    'PIB',
    null,
    'cefb2fb3928ac36a4cf132b7c0602258'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cefb2fb3928ac36a4cf132b7c0602258'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 70,000 for rental housing'),
            ('B', 'Rs 1.80 lakh for affordable housing in any of the four income categories'),
            ('C', 'Rs 1.20 lakh for housing for the Economically Weaker Section'),
            ('D', 'Rs 2.50 lakh for all beneficiaries')
           ) as v(label, option_text)
 where q.question_hash = 'cefb2fb3928ac36a4cf132b7c0602258'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Logistics Policy'' aims to:',
    'The National Logistics Policy of 2021 seeks to reduce the cost of logistics from about 14-15 per cent of GDP to 8 per cent, with an integrated network, a National Logistics Master Plan and the use of the PM Gati Shakti platform.',
    'medium',
    'PIB',
    null,
    '04eef526004d096b39f061e9f262df3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04eef526004d096b39f061e9f262df3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'reduce the logistics cost of the economy to about 8 per cent of GDP'),
            ('B', 'double the freight rail network within five years'),
            ('C', 'merge the Port Community Trust with the railways'),
            ('D', 'raise the logistics cost to 15 per cent of GDP')
           ) as v(label, option_text)
 where q.question_hash = '04eef526004d096b39f061e9f262df3d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Gati Shakti National Master Plan'' covers how many critical infrastructure sectors?',
    'The National Master Plan covers fourteen critical infrastructure sectors, including roads, railways, ports, airports, telecom, power, oil and gas, and the plan is anchored on the Gati Shakti portal for coordinated planning and faster approvals.',
    'hard',
    'PIB',
    null,
    'a52ee612e9de7cbf9a6d561b448825ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a52ee612e9de7cbf9a6d561b448825ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fourteen'),
            ('B', 'Eleven'),
            ('C', 'Eight'),
            ('D', 'Twenty')
           ) as v(label, option_text)
 where q.question_hash = 'a52ee612e9de7cbf9a6d561b448825ef'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Bharatmala Pariyojana'' envisages the development of:',
    'The Bharatmala Pariyojana envisages the development of about 6,000 km of access-controlled expressways, over 9,000 km of the national highway network and about 40,000 km of state roads, with the Sagarmala, NMP and the Inland Waterways forming the other components.',
    'medium',
    'PIB',
    null,
    '38116110651a17b807d3c5e97f4bf5ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '38116110651a17b807d3c5e97f4bf5ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the expressways and the ropeways only'),
            ('B', 'about 6,000 km of access-controlled expressways, over 9,000 km of national highways and about 40,000 km of state roads'),
            ('C', 'only the Golden Quadrilateral and the North-South East-West corridors'),
            ('D', 'the coastal roads and the border roads only')
           ) as v(label, option_text)
 where q.question_hash = '38116110651a17b807d3c5e97f4bf5ad'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''One Nation One Ration'' portability of foodgrain entitlements is implemented through:',
    'Under the National Grain Framework, beneficiaries of the National Food Security Act can draw their entitlements from any fair price shop in the country through the ePoS machines, which makes the ration card portable across States.',
    'medium',
    'PIB',
    null,
    '9605bd6d50633c1a19a79f40dec9ef64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9605bd6d50633c1a19a79f40dec9ef64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the UPI payment system'),
            ('B', 'a common e-commerce portal'),
            ('C', 'the GeM platform'),
            ('D', 'the National Grain Framework and the ePoS machines at the fair price shops')
           ) as v(label, option_text)
 where q.question_hash = '9605bd6d50633c1a19a79f40dec9ef64'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Garib Kalyan Anna Yojana'' provides:',
    'The PM Garib Kalyan Anna Yojana supplied free foodgrains to about 80 crore people through the fair price shops, and the Government has extended the scheme for several years beyond its original period.',
    'medium',
    'PIB',
    null,
    'd0bfa74d7bb0cd6527e5bbc8552c81e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd0bfa74d7bb0cd6527e5bbc8552c81e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'free foodgrains to the migrant workers only'),
            ('B', 'free foodgrains only to the Antyodaya Anna Yojana families'),
            ('C', 'free foodgrains to all the ration card holders, extended for several years'),
            ('D', 'a monthly food allowance of Rs 2,000 to every household')
           ) as v(label, option_text)
 where q.question_hash = 'd0bfa74d7bb0cd6527e5bbc8552c81e6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Ayushman Arogya Mandir'' component of the Ayushman Bharat programme envisages:',
    'The Ayushman Arogya Mandir, the health and wellness centre component, converts sub-centres and primary health centres into centres that provide the expanded package of services, and 1.72 lakh such centres are being operationalised.',
    'medium',
    'PIB',
    null,
    'bcbc18eaf9a080e6f4da9a06c803cf1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bcbc18eaf9a080e6f4da9a06c803cf1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about 1,72,500 health and wellness centres, one in every 5,000 people in the plains and 2,500 in hill and tribal areas'),
            ('B', 'one wellness centre in every village'),
            ('C', 'about 5,000 multi-specialty hospitals in the States'),
            ('D', 'one district hospital in every district of the country')
           ) as v(label, option_text)
 where q.question_hash = 'bcbc18eaf9a080e6f4da9a06c803cf1e'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-ABHIM'' (Ayushman Bharat Health and Wellness Infrastructure Mission) has an outlay of:',
    'The PM-ABHIM, announced in the Union Budget for 2021-22, has an outlay of Rs 64,180 crore for five years for the construction and upgradation of health and wellness infrastructure and for public health laboratories and critical care blocks.',
    'hard',
    'PIB',
    null,
    '143d449fbe63341bcbc921ad718c6ce6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '143d449fbe63341bcbc921ad718c6ce6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 21,000 crore for five years'),
            ('B', 'Rs 13,000 crore for five years'),
            ('C', 'Rs 1,00,000 crore for ten years'),
            ('D', 'Rs 64,180 crore for five years')
           ) as v(label, option_text)
 where q.question_hash = '143d449fbe63341bcbc921ad718c6ce6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Tele-MANAS'' helpline launched in 2022 is a:',
    'Tele-MANAS is the national mental health rehabilitation helpline of the Ministry of Health and Family Welfare, offering free tele-mental health services in 20 languages through a single 14416 number.',
    'easy',
    'PIB',
    null,
    '8847f170e9310c8add1a6b4d8a4f3816'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8847f170e9310c8add1a6b4d8a4f3816'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'child helpline for missing children'),
            ('B', 'national 24x7 mental health helpline'),
            ('C', 'tele-medicine service for general physicians'),
            ('D', 'helpline for senior citizens')
           ) as v(label, option_text)
 where q.question_hash = '8847f170e9310c8add1a6b4d8a4f3816'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Skill India'' umbrella programme includes:',
    'The five schemes that constitute Skill India are Rozgar Bharat, Kaushal Bharat, Skill India Digital, Apprenticeship India and the National Career Service, which together aim at skilling, apprenticeship and job matching.',
    'medium',
    'PIB',
    null,
    'f1cf6fe15d840ff315b1ca82fc2c4811'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1cf6fe15d840ff315b1ca82fc2c4811'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kaushal Bharat, DAY-NRLM and PMKVY'),
            ('B', 'Rozgar Bharat, Skill India Digital and PMKVY only'),
            ('C', 'Rozgar Bharat, Kaushal Bharat, Skill India Digital, Apprenticeship India and the National Career Service'),
            ('D', 'Apprenticeship India, PMKVY and the National Career Service')
           ) as v(label, option_text)
 where q.question_hash = 'f1cf6fe15d840ff315b1ca82fc2c4811'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Apprenticeship Enhancement Scheme'' provides:',
    'The scheme shares 25 per cent of the prescribed stipend, up to Rs 1,500 a month, with the employer engaging an apprentice under the Apprentices Act, 1961, and it is administered with the National Skill Development Corporation and the National Apprenticeship Board.',
    'medium',
    'PIB',
    null,
    '644249a120e2c20f1cb568df11477227'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '644249a120e2c20f1cb568df11477227'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a 50 per cent wage subsidy for hiring women'),
            ('B', 'free residential training for apprentices'),
            ('C', 'a 25 per cent wage stipend to the employer for the apprentice, capped at Rs 1,500 a month'),
            ('D', 'a loan of Rs 1 lakh for starting an apprenticeship')
           ) as v(label, option_text)
 where q.question_hash = '644249a120e2c20f1cb568df11477227'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-DAY'' (Development of Ageing: Alleviating Yojana) addresses the needs of:',
    'PM-DAY, announced in the Union Budget for 2021-22, addresses the needs of the elderly with a focus on the poor, the landless and women, combining community care, institutional care and the grant of assistive devices.',
    'medium',
    'PIB',
    null,
    '27dccd2a9a2b5ed0716c8e9a475209ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27dccd2a9a2b5ed0716c8e9a475209ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'children in the age group of 0 to six years'),
            ('B', 'young farmers in the drought prone districts'),
            ('C', 'the differently abled in the urban areas'),
            ('D', 'the elderly, particularly the poor and the women in rural and urban areas')
           ) as v(label, option_text)
 where q.question_hash = '27dccd2a9a2b5ed0716c8e9a475209ce'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Deendayal Antyodaya Yojana-National Urban Livelihoods Mission'' (DAY-NULM) is designed to:',
    'DAY-NULM addresses the vulnerability of the urban poor, especially the homeless and the destitute, through social protection, community organisations, skill training, self-employment, placement and access to the Urban Employment and Poverty Alleviation institutions.',
    'medium',
    'PIB',
    null,
    'dd0beaec10999a1357fa0c3a409b9e4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd0beaec10999a1357fa0c3a409b9e4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'reduce the vulnerability of the urban poor by enabling them to access self-employment and wage employment services'),
            ('B', 'provide housing to the urban poor'),
            ('C', 'sanitize the cities under the Swachh Bharat Mission'),
            ('D', 'build rural roads under the PM Gati Shakti')
           ) as v(label, option_text)
 where q.question_hash = 'dd0beaec10999a1357fa0c3a409b9e4f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Under the ''Pradhan Mantri Krishi Sinchayee Yojana'', the three components are:',
    'PMKSY has three components, namely the Accelerated Irrigation Benefit Programme for the command area development, the Watershed Development Programme for the rain-fed areas and the On-Farm Water Management Programme for the micro irrigation and water use efficiency.',
    'medium',
    'PIB',
    null,
    'ca942662ce9aadfac5b3a9bb295c37bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ca942662ce9aadfac5b3a9bb295c37bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'micro irrigation, canal renovation and rainwater harvesting'),
            ('B', 'accelerated irrigation benefit programme, watershed development and on-farm water management'),
            ('C', 'drip irrigation, sprinkler irrigation and farm ponds only'),
            ('D', 'watershed development, check dams and percolation tanks')
           ) as v(label, option_text)
 where q.question_hash = 'ca942662ce9aadfac5b3a9bb295c37bf'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Apprenticeship Training Scheme'' and the ''National Skill Development Corporation'' are concerned with:',
    'NSDC is a not-for-profit company set up by the Ministry of Skill Development and Entrepreneurship to catalyse skill building across the country, and it works with the National Skill Development Fund and the National Apprenticeship Board.',
    'hard',
    'PIB',
    null,
    '6ec0adc5cd119de121b82e4c754589ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6ec0adc5cd119de121b82e4c754589ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the certification of exports'),
            ('B', 'the training of artisans and the upgrading of industrial skills'),
            ('C', 'the financing of MSMEs'),
            ('D', 'the grading of agricultural produce')
           ) as v(label, option_text)
 where q.question_hash = '6ec0adc5cd119de121b82e4c754589ab'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Stand-Up India'' scheme provides bank credit to:',
    'Stand-Up India, launched in 2016, provides bank credit between Rs 10 lakh and Rs 1 crore to Scheduled Caste, Scheduled Tribe and woman entrepreneurs for setting up greenfield enterprises in manufacturing, services, trading and allied agriculture.',
    'medium',
    'PIB',
    null,
    'fc9eaf954382cc8400997c37d4eefb71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc9eaf954382cc8400997c37d4eefb71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SC-ST and woman entrepreneurs for setting up greenfield enterprises'),
            ('B', 'all small enterprises for working capital'),
            ('C', 'startups for market development'),
            ('D', 'artisans for the purchase of tools')
           ) as v(label, option_text)
 where q.question_hash = 'fc9eaf954382cc8400997c37d4eefb71'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM SVANidhi'' scheme is administered by the:',
    'PM SVANidhi is administered by the Ministry of Housing and Urban Affairs, with the Small Industries Development Bank of India as the nodal agency for the scheme and the State Urban Local Body Department and the ULB as the implementing agencies.',
    'medium',
    'PIB',
    null,
    '6c64a8887ad974e79b1b8278935e5f12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6c64a8887ad974e79b1b8278935e5f12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Micro, Small and Medium Enterprises'),
            ('B', 'Ministry of Agriculture and Farmers Welfare'),
            ('C', 'Ministry of Housing and Urban Affairs, with SIDBI as the nodal agency'),
            ('D', 'Ministry of Finance and the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '6c64a8887ad974e79b1b8278935e5f12'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Urban Sanitation Policy'' and the ''Swachh Bharat Mission-U'' seek to achieve:',
    'The SBM-U and the National Urban Sanitation Policy aim at achieving a city free of open defecation and of unmanaged municipal solid waste, with the waste safely disposed of in scientific landfills and the sewage treated to prevent contamination of the groundwater.',
    'hard',
    'PIB',
    null,
    '6e4032e5138f733125bf50d68d88975f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6e4032e5138f733125bf50d68d88975f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the supply of bottled water to every household'),
            ('B', 'the sewerage of every city before 2025'),
            ('C', 'the replacement of manual scavenging alone'),
            ('D', 'a city free of open defecation and of untreated municipal solid waste, with the waste safely disposed of')
           ) as v(label, option_text)
 where q.question_hash = '6e4032e5138f733125bf50d68d88975f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Beti Bachao Beti Padhao'' campaign focuses on:',
    'The campaign, launched in 2015 and now under Mission Shakti, addresses the issue of sex selection and seeks to ensure the survival, protection, education and empowerment of the girl child, with the District Action Plan and the Saksham Beti classes as its instruments.',
    'medium',
    'PIB',
    null,
    '3e9a00fa70e937e8c94435acb5961d1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e9a00fa70e937e8c94435acb5961d1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'preventing gender-biased sex selection, ensuring survival, protection, education and empowerment of the girl child'),
            ('B', 'the marriage of adolescent girls'),
            ('C', 'the financial inclusion of women'),
            ('D', 'the skilling of rural women')
           ) as v(label, option_text)
 where q.question_hash = '3e9a00fa70e937e8c94435acb5961d1d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Fasal Bima Yojana'' is administered by:',
    'The crop insurance scheme is administered by the Ministry of Agriculture and Farmers Welfare, and the Agriculture Insurance Company of India Limited is the implementing agency for both the crop and the livestock components.',
    'medium',
    'PIB',
    null,
    '96a068b99bad98ef8cbd454d0f40dc7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96a068b99bad98ef8cbd454d0f40dc7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Finance through the Reserve Bank of India'),
            ('B', 'the Ministry of Rural Development'),
            ('C', 'the Food Corporation of India'),
            ('D', 'the Ministry of Agriculture and Farmers Welfare, with the administrative agency being the Agriculture Insurance Company of India')
           ) as v(label, option_text)
 where q.question_hash = '96a068b99bad98ef8cbd454d0f40dc7c'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Sukanya Samriddhi Yojana'' account can be opened for a girl child who is:',
    'A Sukanya Samriddhi account can be opened for a girl child below the age of ten, and the account continues till she attains eighteen years of age or marries, whichever is earlier, with a maximum deposit of Rs 1.5 lakh a year.',
    'hard',
    'PIB',
    null,
    '8f4e2103755974d8a14eadcf9654c7da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8f4e2103755974d8a14eadcf9654c7da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'below eighteen years of age'),
            ('B', 'below twenty-one years of age'),
            ('C', 'below ten years of age'),
            ('D', 'below sixteen years of age')
           ) as v(label, option_text)
 where q.question_hash = '8f4e2103755974d8a14eadcf9654c7da'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Deen Dayal Upadhyaya Grameen Kaushalya Yojana'' focuses on:',
    'DDU-GKY is a placement-linked skilling scheme for rural youth in the non-farm sector, with a mandatory placement target of at least 70 per cent and a mandatory wage range linked to the notified average wage of the district.',
    'medium',
    'PIB',
    null,
    '8cebdafda107087513be8dd367913bbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8cebdafda107087513be8dd367913bbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the farm mechanisation of small holdings'),
            ('B', 'the skilling of rural youth and the placement of trained youth in the non-farm sector'),
            ('C', 'the digital literacy of farmers'),
            ('D', 'the housing of rural youth')
           ) as v(label, option_text)
 where q.question_hash = '8cebdafda107087513be8dd367913bbb'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''NIPUN Bharat'' programme is the national mission for:',
    'NIPUN Bharat, launched in 2021, is the national mission for foundational literacy and numeracy, and it is aligned with the National Curriculum Framework for School Education 2023, which is a five-stage structure.',
    'medium',
    'PIB',
    null,
    'd9859871330fc84d6a632e48c889b081'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd9859871330fc84d6a632e48c889b081'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'vocational training in the manufacturing sector'),
            ('B', 'higher education'),
            ('C', 'teacher training'),
            ('D', 'foundational literacy and numeracy')
           ) as v(label, option_text)
 where q.question_hash = 'd9859871330fc84d6a632e48c889b081'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pariksha'' recommended in the National Education Policy 2020 for the school education system is:',
    'The NEP recommends a streamlined and common assessment across the school system, with the reduction of the multiplicity of examinations and the development of a holistic assessment, and it also provides for a Pariksha in the higher education segment.',
    'easy',
    'PIB',
    null,
    '5ab8459e6a7cee6a75db86ff20b7a51d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ab8459e6a7cee6a75db86ff20b7a51d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a streamlined and common assessment across the classes, reducing the multiplicity of examinations'),
            ('B', 'an entrance examination for every class'),
            ('C', 'a national examination only for the secondary stage'),
            ('D', 'a continuous internal assessment with no external examination')
           ) as v(label, option_text)
 where q.question_hash = '5ab8459e6a7cee6a75db86ff20b7a51d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM e-Vidya'' and ''DIKSHA'' are:',
    'PM e-Vidya is a comprehensive digital education initiative with DIKSHA as its school education platform, while SWAYAM provides the online higher education courses, and the National Digital Library supports the learners.',
    'medium',
    'PIB',
    null,
    '1224a120b6e2dbc475f9c16cadb3e5b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1224a120b6e2dbc475f9c16cadb3e5b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'two satellite navigation systems'),
            ('B', 'two supercomputing projects'),
            ('C', 'digital education initiatives, with DIKSHA hosting the school and higher education content'),
            ('D', 'the names of two payment systems')
           ) as v(label, option_text)
 where q.question_hash = '1224a120b6e2dbc475f9c16cadb3e5b9'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Nari Shakti Vandan Adhiniyam'' provides for reservation of one-third of the seats:',
    'The 106th Amendment Act provides for one-third of the seats in the Lok Sabha and the State Legislative Assemblies, including the seats reserved for the Scheduled Castes and the Scheduled Tribes, to be filled by women, with effect after the next delimitation based on the first census after the law.',
    'hard',
    'PIB',
    null,
    '9040b6cadccd4f8d79ebc827c3195380'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9040b6cadccd4f8d79ebc827c3195380'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Rajya Sabha only'),
            ('B', 'in the Lok Sabha and the State Legislative Assemblies for women, including among the reserved seats'),
            ('C', 'in the Panchayats and Municipalities'),
            ('D', 'in the Central Government services')
           ) as v(label, option_text)
 where q.question_hash = '9040b6cadccd4f8d79ebc827c3195380'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Lakhpati Didi'' initiative under DAY-NRLM aims at:',
    'The Lakhpati Didi initiative under the DAY-NRLM enables SHG members to become ''Lakhpati Didi'' entrepreneurs with a sustainable annual household income of one lakh rupees, through community enterprise and the diversification of livelihoods.',
    'hard',
    'PIB',
    null,
    'ba0068b773f6fca180fa2423e28272b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba0068b773f6fca180fa2423e28272b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'providing every woman with a bank deposit of one lakh rupees'),
            ('B', 'helping SHG members become ''Lakhpati Didi'' entrepreneurs with an annual household income of one lakh rupees'),
            ('C', 'replacing the anchor SHGs with the State corporations'),
            ('D', 'training women in the manufacture of handicrafts only')
           ) as v(label, option_text)
 where q.question_hash = 'ba0068b773f6fca180fa2423e28272b6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Stand-Up India'' credit is routed through:',
    'Stand-Up India, launched in 2016, provides bank credit between Rs 10 lakh and Rs 1 crore to Scheduled Caste, Scheduled Tribe and woman entrepreneurs for setting up greenfield enterprises, and the portal of the SIDBI is used for the greenfield projects.',
    'hard',
    'PIB',
    null,
    '3745e5cd53734aca0f67b38c95ef5c07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3745e5cd53734aca0f67b38c95ef5c07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the scheduled commercial banks, with a SIDBI portal for the greenfield projects of SC-ST and woman entrepreneurs'),
            ('B', 'the micro finance institutions only'),
            ('C', 'the NABARD refinance window'),
            ('D', 'the State industrial corporations')
           ) as v(label, option_text)
 where q.question_hash = '3745e5cd53734aca0f67b38c95ef5c07'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Green Hydrogen Mission'' also promotes the production of:',
    'The mission encourages green ammonia production, which is expected to be a key low-carbon fuel for the shipping and fertiliser industries, and it provides incentives for the electrolyser manufacturing and the associated R and D.',
    'easy',
    'PIB',
    null,
    'f5ef3262c000a23b4f70ec77d4aeb9c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f5ef3262c000a23b4f70ec77d4aeb9c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'green steel exported to Europe'),
            ('B', 'green silicon for solar cells only'),
            ('C', 'green lithium from brines'),
            ('D', 'green ammonia, used as a fertiliser and as a shipping fuel')
           ) as v(label, option_text)
 where q.question_hash = 'f5ef3262c000a23b4f70ec77d4aeb9c0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM E-DRIVE'' scheme approved in 2024 is an incentive scheme for:',
    'PM E-DRIVE, with an outlay of Rs 10,900 crore for two years, offers demand incentives for electric vehicles, including e-2Ws, e-3Ws, e-4Ws, e-ambushers and e-trucks, along with the setting up of charging stations.',
    'easy',
    'PIB',
    null,
    '0670bcb1e1681e5e3d99e0e019c0e253'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0670bcb1e1681e5e3d99e0e019c0e253'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'charging stations in the highways'),
            ('B', 'battery manufacturing plants'),
            ('C', 'electric vehicles, with an outlay of Rs 10,900 crore for two years'),
            ('D', 'electric two-wheelers only')
           ) as v(label, option_text)
 where q.question_hash = '0670bcb1e1681e5e3d99e0e019c0e253'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-KUSUM'' scheme and the ''PM Surya Ghar'' together aim at:',
    'PM-KUSUM supports the decentralised generation of solar power for the farming community, while PM Surya Ghar promotes rooftop solar for households, and together they support the target of 500 GW of non-fossil capacity by 2030.',
    'easy',
    'PIB',
    null,
    'aac8d5ba5921ddc7e935f9d98ff95ea3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aac8d5ba5921ddc7e935f9d98ff95ea3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the export of solar modules'),
            ('B', 'the electrification of the railways'),
            ('C', 'decentralised renewable energy generation for farmers and for rooftop use in households'),
            ('D', 'the expansion of the coal capacity in the east')
           ) as v(label, option_text)
 where q.question_hash = 'aac8d5ba5921ddc7e935f9d98ff95ea3'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Swachh Bharat Mission-Gramin'' is implemented through:',
    'The rural component of the Swachh Bharat Mission is implemented by the Gram Panchayats, with the Centre and the States sharing the cost in the ratio of 60:40, and the focus is on the construction of individual household toilets and the management of solid and liquid waste.',
    'easy',
    'PIB',
    null,
    '071b6e55638046c105dbe2c3120c902b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '071b6e55638046c105dbe2c3120c902b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Gram Panchayats with a funding pattern of 60:40 between the Centre and the States'),
            ('B', 'the municipalities of the States'),
            ('C', 'the District Planning Committees'),
            ('D', 'the Central Sanitation Mission alone')
           ) as v(label, option_text)
 where q.question_hash = '071b6e55638046c105dbe2c3120c902b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Vishwakarma'' and the ''PM SVANidhi'' together belong to which broader programme?',
    'Both PM Vishwakarma and PM SVANidhi operate under the umbrella of Mission Shakti, whose Samarthya vertical covers the economic empowerment of women and the Sambal vertical covers the safety and support of women.',
    'medium',
    'PIB',
    null,
    'ba6db1d2babb36d7f21d8571dee62cfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ba6db1d2babb36d7f21d8571dee62cfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Jal Jeevan Mission'),
            ('B', 'the NIPUN Bharat mission'),
            ('C', 'the Aspirational Districts Programme'),
            ('D', 'Mission Shakti, which also covers the One Stop Centre and the women''s helpline 181')
           ) as v(label, option_text)
 where q.question_hash = 'ba6db1d2babb36d7f21d8571dee62cfe'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Mission for the Mentally Disabled'' is now a part of:',
    'The National Mission for the Mentally Disabled was merged with the two other national missions of the Department of Empowerment of Persons with Disabilities, which is under the Ministry of Social Justice and Empowerment.',
    'easy',
    'PIB',
    null,
    'edbdeff6ced41e7b04fb55faaa806cc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'edbdeff6ced41e7b04fb55faaa806cc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Education'),
            ('B', 'the Department of Empowerment of Persons with Disabilities under the Ministry of Social Justice and Empowerment'),
            ('C', 'the NITI Aayog'),
            ('D', 'the Ministry of Health and Family Welfare')
           ) as v(label, option_text)
 where q.question_hash = 'edbdeff6ced41e7b04fb55faaa806cc8'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Integrated Nutrition Programme'' and the ''POSHAN 2.0'' are implemented by:',
    'POSHAN 2.0 is implemented by the Ministry of Women and Child Development in partnership with the Ministry of Health and Family Welfare, the Ministry of Education, the Ministry of Tribal Affairs and the Ministry of Rural Development.',
    'easy',
    'PIB',
    null,
    'c019b1fb40f1e7d1b17c55c4b3d679e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c019b1fb40f1e7d1b17c55c4b3d679e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Agriculture alone'),
            ('B', 'the Ministry of Rural Development'),
            ('C', 'the NITI Aayog'),
            ('D', 'the Ministry of Women and Child Development in partnership with the Ministry of Health and Family Welfare and other departments')
           ) as v(label, option_text)
 where q.question_hash = 'c019b1fb40f1e7d1b17c55c4b3d679e2'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Bharthiya Jana Aushadhi Pariyojana'' was renamed as:',
    'The scheme was renamed the Jan Aushadhi scheme in 2022, and it sells quality generic medicines at 50 to 90 per cent below the branded alternatives, along with the Suvidha quality testing and the app for the chemists.',
    'easy',
    'PIB',
    null,
    '451ce4359a24d2f25baf47b532891618'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '451ce4359a24d2f25baf47b532891618'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Jan Aushadhi scheme, with the Generic medicines priced at 50 to 90 per cent below the branded medicines'),
            ('B', 'the e-Sanjeevani scheme'),
            ('C', 'the Ayushman Arogya Mandir'),
            ('D', 'the Arogya Seva Kendra')
           ) as v(label, option_text)
 where q.question_hash = '451ce4359a24d2f25baf47b532891618'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'Which of the following statements is/are correct in relation to the PM Fasal Bima?',
    'The restructured scheme moves to a technology-based crop insurance with the assessment of crop loss through satellite imagery, drones and smartphone pictures, along with the standardisation of the claims process and a faster settlement of claims for the farmers.',
    'medium',
    'PIB',
    null,
    'e2ad6b5f57d331a442cf8bfcf6c32329'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e2ad6b5f57d331a442cf8bfcf6c32329'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'voluntary insurance for commercial crops only'),
            ('B', 'a fixed state contribution of 50 per cent for all crops'),
            ('C', 'crop insurance on a technology basis with an assessment of the crop damage through satellite imagery and drones'),
            ('D', 'insurance linked to the purchase of inputs')
           ) as v(label, option_text)
 where q.question_hash = 'e2ad6b5f57d331a442cf8bfcf6c32329'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Judicial Data Grid'' seeks to:',
    'The NJDG, an initiative of the Supreme Court with the National Law University, aims to create a standard digital judicial data architecture for all the courts and to enable the monitoring of pendency, case status and the use of the data in policymaking.',
    'easy',
    'PIB',
    null,
    '8b29a0397775077dfc566916c7489372'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8b29a0397775077dfc566916c7489372'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'compile the pendency data of the lower courts only'),
            ('B', 'create a national judicial data platform with a standard digital data architecture for all the courts'),
            ('C', 'digitise only the Supreme Court records'),
            ('D', 'replace the e-courts services of the High Courts')
           ) as v(label, option_text)
 where q.question_hash = '8b29a0397775077dfc566916c7489372'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Jan Samarth'' portal launched in 2023 provides:',
    'Jan Samarth is a single national portal that gives information on more than 400 Central schemes and the eligibility criteria of the beneficiaries, so that a common man can know the scheme for which he can apply.',
    'easy',
    'PIB',
    null,
    '950f9555cc2ca8630c0ffe2ea7a50192'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '950f9555cc2ca8630c0ffe2ea7a50192'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the digital identity of the beneficiaries for the welfare schemes'),
            ('B', 'the grievance redressal mechanism of the States'),
            ('C', 'a single window of information on more than 400 government schemes and the eligibility criteria for the beneficiaries'),
            ('D', 'the payment of subsidies directly to the bank accounts')
           ) as v(label, option_text)
 where q.question_hash = '950f9555cc2ca8630c0ffe2ea7a50192'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Jeevan Jyoti Yojana'' provides:',
    'The PMJJY, launched in 2015, provides a life insurance cover of Rs 2 lakh per year to the poor households for the annual premium of Rs 436 that is shared between the government and the beneficiary.',
    'easy',
    'PIB',
    null,
    'e5c4144c40650895c74875fd60cac5f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e5c4144c40650895c74875fd60cac5f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a life insurance cover of Rs 2 lakh to the poor households through the annual premium of Rs 436'),
            ('B', 'a pension of Rs 3,000 to the senior citizens'),
            ('C', 'a crop insurance to the small farmers'),
            ('D', 'a health insurance of Rs 5 lakh to the rural households')
           ) as v(label, option_text)
 where q.question_hash = 'e5c4144c40650895c74875fd60cac5f5'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Vidyalaxmi'' scheme launched in 2023 provides:',
    'The PM Vidyalaxmi, launched in 2023, provides the financial support to the meritorious girls from the weaker sections for the admission in the top higher education institutions of the country.',
    'easy',
    'PIB',
    null,
    '71c388c1051b1b4a826a2125564b3f2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '71c388c1051b1b4a826a2125564b3f2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the scholarships for the research scholars only'),
            ('B', 'financial support to the girls from the weaker sections for the higher education in the top institutions'),
            ('C', 'the digital literacy of the students of the government schools'),
            ('D', 'the loans for the higher education abroad')
           ) as v(label, option_text)
 where q.question_hash = '71c388c1051b1b4a826a2125564b3f2b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM YUVA'' scheme launched in 2024 is designed to provide:',
    'The PM YUVA scheme of 2024 is a youth skilling and job placement programme for the youth between fifteen and twenty-nine years with the focus on the district level skilling and the apprenticeships.',
    'easy',
    'PIB',
    null,
    '9fbd5473d9d6a337e350d61cadb72ace'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9fbd5473d9d6a337e350d61cadb72ace'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the scholarships for the students of the classes 9 to 12'),
            ('B', 'the startup funding for the young entrepreneurs of the tier 2 cities'),
            ('C', 'the rural housing for the youth of the villages'),
            ('D', 'the skilling, the apprenticeships and the job placement assistance for the youth in the age group of 15 to 29 years')
           ) as v(label, option_text)
 where q.question_hash = '9fbd5473d9d6a337e350d61cadb72ace'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM MANDHIR'' scheme launched in 2024 aims at:',
    'The PM MANDHIR is a scheme of the Ministry of Rural Development for the skilling, the training and the incubation of the rural youth in the rural self employment hub and the entrepreneurship.',
    'easy',
    'PIB',
    null,
    '11f2cf4d32654478bfda916ade3f1556'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11f2cf4d32654478bfda916ade3f1556'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the marketing of the rural produce in the export markets'),
            ('B', 'the primary healthcare in the rural areas'),
            ('C', 'the skilling, the training and the incubation of the rural youth for the local self employment'),
            ('D', 'the urban housing for the migrant workers')
           ) as v(label, option_text)
 where q.question_hash = '11f2cf4d32654478bfda916ade3f1556'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Internship Scheme'' launched in 2024 provides:',
    'The PM Internship Scheme of 2024 engages the youth in the top companies with a monthly stipend, a one-time grant and the accident insurance under the PM Jeevan Jyoti Yojana for the interns.',
    'easy',
    'PIB',
    null,
    '8447f990ce601fb56efdbb265ebc63aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8447f990ce601fb56efdbb265ebc63aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the full time employment in the government for the graduates'),
            ('B', 'a monthly stipend, a one-time grant and the accident insurance cover to the interns in the top companies'),
            ('C', 'the repayment of the education loans of the students'),
            ('D', 'the sponsorship of the research of the students in the universities')
           ) as v(label, option_text)
 where q.question_hash = '8447f990ce601fb56efdbb265ebc63aa'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Rashtriya Uchchatar Shiksha Abhiyan'' (RUSA) is a scheme of the higher education for:',
    'RUSA was launched in 2013 for the reform of the higher education and it works on the projects of the education infrastructure, the innovation and the inclusion with the full participation of the States.',
    'medium',
    'Standard Reference',
    null,
    '1e84bce3a8fcf8d5eb182215694f4180'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1e84bce3a8fcf8d5eb182215694f4180'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the development of the universities, the colleges and the affiliated institutions with the participation of the States'),
            ('B', 'the adult literacy of the rural women'),
            ('C', 'the primary schools of the villages'),
            ('D', 'the vocational training of the industrial workers')
           ) as v(label, option_text)
 where q.question_hash = '1e84bce3a8fcf8d5eb182215694f4180'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Central Sector Scheme of Scholarship'' in India is meant for:',
    'The Central Sector Scheme of Scholarship provides the financial assistance to the meritorious students of the higher education who need it, and it is a centrally funded scheme with the State governments nominating the beneficiaries.',
    'easy',
    'Standard Reference',
    null,
    '3add2e3be387fee67fbae76c3a31114f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3add2e3be387fee67fbae76c3a31114f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the students of the government schools of the classes 6 to 8'),
            ('B', 'the research scholars of the universities only'),
            ('C', 'the students of the vocational training institutes'),
            ('D', 'the meritorious students of the colleges and the universities who need the financial assistance for the higher studies')
           ) as v(label, option_text)
 where q.question_hash = '3add2e3be387fee67fbae76c3a31114f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-SHRI'' scheme of the education ministry provides for:',
    'The PM SHRI scheme, which includes the Samagra Shiksha and the Vidya Lakshmi, provides the infrastructure support to the schools for the laboratories, the libraries, the toilets, the drinking water and the vocational training.',
    'easy',
    'PIB',
    null,
    '9a634a3cb44ab84023aa8fbaa49c24fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9a634a3cb44ab84023aa8fbaa49c24fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the digital university campuses'),
            ('B', 'the adult education of the rural women'),
            ('C', 'the development of the school infrastructure including the laboratories, the libraries and the vocational training in the schools'),
            ('D', 'the scholarship for the higher education students')
           ) as v(label, option_text)
 where q.question_hash = '9a634a3cb44ab84023aa8fbaa49c24fd'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Saksham'' scholarship in India is for the students with:',
    'The Saksham scholarship, a central sector scheme, provides the financial assistance to the students with the disabilities who are pursuing the higher education, with the assistance of the National Trust.',
    'medium',
    'Standard Reference',
    null,
    '6700fbe6ec3353bffa0ebb3b53048a30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6700fbe6ec3353bffa0ebb3b53048a30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'disabilities who are pursuing the higher education'),
            ('B', 'the special performance in the arts'),
            ('C', 'the children of the armed forces personnel'),
            ('D', 'the exceptional ability in the sports')
           ) as v(label, option_text)
 where q.question_hash = '6700fbe6ec3353bffa0ebb3b53048a30'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Means-cum-Merit Scholarship'' is for the students of the classes:',
    'The NMMS is a central sector scholarship for the students of the classes I to VIII of the government and the government aided schools, and it was revised in 2019 to include the classes VI to VIII.',
    'medium',
    'Standard Reference',
    null,
    '9ab0937d8792eafc2601514f4c98300a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ab0937d8792eafc2601514f4c98300a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the college students of the rural areas'),
            ('B', 'I to VIII of the government and the aided schools'),
            ('C', 'the research scholars of the universities'),
            ('D', 'IX to XII of the schools')
           ) as v(label, option_text)
 where q.question_hash = '9ab0937d8792eafc2601514f4c98300a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM Vande Bharat'' scheme relates to:',
    'The PM Vande Bharat scheme of the Ministry of Railways is for the restoration and the upgrade of the selected heritage railway stations to their original glory with the modern amenities.',
    'medium',
    'PIB',
    null,
    'f1b3c61da46dbb33a52c68c80c1a29d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f1b3c61da46dbb33a52c68c80c1a29d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the electrification of the last kilometre of the villages'),
            ('B', 'the manufacture of the railway coaches in the private sector'),
            ('C', 'the safety of the railway bridges'),
            ('D', 'the restoration and the upgrade of the heritage railway stations of India')
           ) as v(label, option_text)
 where q.question_hash = 'f1b3c61da46dbb33a52c68c80c1a29d0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Construction and Demolition Waste Management Rules, 2016'' require the local bodies to:',
    'The Rules require the waste to be segregated at the source by the waste generators and the local bodies to prepare the plans for the safe disposal and the reuse and the recycling of the material.',
    'easy',
    'MoEFCC',
    null,
    'e771b93635f4d32ca3c3b425cb7a17a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e771b93635f4d32ca3c3b425cb7a17a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'hand over the entire waste to the private concessionaires'),
            ('B', 'segregate the waste at the source and set up the material recovery facilities for the reuse and the recycling'),
            ('C', 'burn the waste in the open pits'),
            ('D', 'dump the waste in the rivers')
           ) as v(label, option_text)
 where q.question_hash = 'e771b93635f4d32ca3c3b425cb7a17a7'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Plastic Waste Management (Amendment) Rules, 2022'' introduced:',
    'The 2022 amendment introduced the plastic waste recycling certificates and the enhanced responsibility of the producers and the brand owners with the targets for the recycled content in the packaging.',
    'easy',
    'MoEFCC',
    null,
    '9ed56bffe988b8d5227ad97d03ba14e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9ed56bffe988b8d5227ad97d03ba14e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the tax on the manufacture of the plastic'),
            ('B', 'the state of the ban on the single use plastic in the cities'),
            ('C', 'the complete ban on the plastic packaging'),
            ('D', 'the certificates of the plastic waste recycling for the brand owners and the enhanced responsibility of the producers')
           ) as v(label, option_text)
 where q.question_hash = '9ed56bffe988b8d5227ad97d03ba14e4'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''One Stop Centre'' under the Mission Shakti provides:',
    'The One Stop Centre is a converging point of the services of the medical, the police, the legal and the psychological support for the women affected by the violence, and the centre is run with the support of the NGO.',
    'medium',
    'PIB',
    null,
    '98b8e4f2b384d9ea190a8659937d1f4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '98b8e4f2b384d9ea190a8659937d1f4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the financial support of the start-ups of the women'),
            ('B', 'the housing of the working women in the cities'),
            ('C', 'a single window of the integrated support to the women affected by the violence, including the medical, the legal, the police and the psychological help'),
            ('D', 'the training of the women in the traditional crafts')
           ) as v(label, option_text)
 where q.question_hash = '98b8e4f2b384d9ea190a8659937d1f4a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Sakhi'' helpline of 181 in India is for:',
    'The 181 Women Helpline provides the information and the support to the women affected by the violence and it operates with the support of the One Stop Centres across the country.',
    'medium',
    'PIB',
    null,
    'eb13c319f0966eb4816119dc7ae37c23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb13c319f0966eb4816119dc7ae37c23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the women affected by the violence'),
            ('B', 'the senior citizens'),
            ('C', 'the children in the conflict areas'),
            ('D', 'the migrant workers')
           ) as v(label, option_text)
 where q.question_hash = 'eb13c319f0966eb4816119dc7ae37c23'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Working Women Hostel Scheme'' provides:',
    'The Working Women Hostel Scheme provides the safe accommodation to the working women away from their homes along with the day care centres for the children, and it is implemented through the central assistance to the States and the UTs.',
    'medium',
    'Standard Reference',
    null,
    '987c32f9bb5a71d22339039bdc02a56f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '987c32f9bb5a71d22339039bdc02a56f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the maternity benefit of the women workers'),
            ('B', 'the training of the women in the handicrafts'),
            ('C', 'the social security of the women in the unorganised sector'),
            ('D', 'safe accommodation for the working women away from their homes with the day care facilities for the children')
           ) as v(label, option_text)
 where q.question_hash = '987c32f9bb5a71d22339039bdc02a56f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Women Entrepreneurship Platform'' of the NITI Aayog:',
    'The Women Entrepreneurship Platform works for the financial inclusion of the women in the SHGs, the market access and the capacity building, and it works with the Self Help Group Bank Linkage Programme.',
    'medium',
    'NITI Aayog',
    null,
    'b5721fcc132a5042bb230d43708cc1ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b5721fcc132a5042bb230d43708cc1ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provides the subsidised housing to the women of the cities'),
            ('B', 'promotes the financial inclusion of the women SHGs and the market linkages for their products'),
            ('C', 'conducts the free legal aid camps for the women'),
            ('D', 'runs the adult literacy programme in the rural areas')
           ) as v(label, option_text)
 where q.question_hash = 'b5721fcc132a5042bb230d43708cc1ef'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Bank Linkage Programme'' with the SHGs was started in:',
    'The SHG-Bank Linkage Programme was started in 1992 by the NABARD and it became the largest network of the microfinance in the world with the linkage of the poor women groups with the banks.',
    'medium',
    'Standard Reference',
    null,
    'ae4e95dbe984c7bec42febd343ca1910'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ae4e95dbe984c7bec42febd343ca1910'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992, by the NABARD and the State Cooperative Banks'),
            ('B', '1998, by the SIDBI'),
            ('C', '2005, by the Reserve Bank of India'),
            ('D', '2010, by the Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = 'ae4e95dbe984c7bec42febd343ca1910'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''MGNREGA guarantees to the rural households:',
    'The MGNREGA guarantees a hundred days of the unskilled manual work in a year to every rural household whose adult members are willing to do the unskilled manual work, with the women counting as the workers and the provision of the childcare.',
    'medium',
    'Standard Reference',
    null,
    '7e8645a54c090aeefbf64db5a388c44c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7e8645a54c090aeefbf64db5a388c44c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a house under the PMAY-G'),
            ('B', 'a pension after the age of sixty'),
            ('C', '100 days of the unskilled manual work in a year and the unskilled work for the women with the childcare'),
            ('D', 'a fixed wage of Rs 200 a day in every State')
           ) as v(label, option_text)
 where q.question_hash = '7e8645a54c090aeefbf64db5a388c44c'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Social audit'' of the MGNREGA works:',
    'The social audit of the MGNREGA is a mandatory part of the scheme and it is conducted by the Gram Sabha or by the social audit institutions of the State with the participation of the women, the SC and the ST communities.',
    'medium',
    'Standard Reference',
    null,
    '94ff5c3935f4619d1f8a74e96ab9aaa4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '94ff5c3935f4619d1f8a74e96ab9aaa4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is optional and is conducted only at the request of the workers'),
            ('B', 'is done by the District Collector of every district'),
            ('C', 'is conducted by the Gram Sabha or the recognised social audit institutions and is a mandatory part of the social audit of the scheme'),
            ('D', 'is done only by the CAG of the State')
           ) as v(label, option_text)
 where q.question_hash = '94ff5c3935f4619d1f8a74e96ab9aaa4'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Fasal Bima Yojana replaced:',
    'The PMFBY of 2016 replaced the National Agricultural Insurance Scheme of 1999 and the Modified Agricultural Insurance Scheme of 2013, with the objective of the coverage of the crop losses from the natural calamities.',
    'medium',
    'Standard Reference',
    null,
    'c331da8de9253f7b2f350d0d956a2bf6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c331da8de9253f7b2f350d0d956a2bf6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Agricultural Insurance Scheme of 1999'),
            ('B', 'the Rashtriya Krishi Bima Yojana only'),
            ('C', 'the weather based insurance of the states'),
            ('D', 'the crop insurance of the private insurers')
           ) as v(label, option_text)
 where q.question_hash = 'c331da8de9253f7b2f350d0d956a2bf6'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-KISAN scheme:',
    'PM-KISAN provides the income support of Rs 6,000 a year in three instalments of Rs 2,000 each to the landholding farmer families with the direct transfer in the bank account, and the beneficiaries have to opt in for the payment through the PM-KISAN portal.',
    'medium',
    'Standard Reference',
    null,
    '6c70255e164e00abec536aff5bc012fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6c70255e164e00abec536aff5bc012fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'covers the insurance of the crops of the notified states'),
            ('B', 'provides the income support of Rs 6,000 a year to the landholding farmer families in three instalments'),
            ('C', 'provides the minimum support price to the procurement agencies'),
            ('D', 'provides the subsidised credit of Rs 2 lakh to the small farmers')
           ) as v(label, option_text)
 where q.question_hash = '6c70255e164e00abec536aff5bc012fa'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''PM-KMY is a contributory pension scheme for:',
    'The PM-KMY provides a guaranteed monthly pension of Rs 3,000 after the age of sixty to the small and the marginal farmers, and the Government of India matches the monthly contribution of the farmer.',
    'medium',
    'Standard Reference',
    null,
    '9e0739001d1f2477f2ec72b604ca0926'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9e0739001d1f2477f2ec72b604ca0926'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the agricultural labourers of the States'),
            ('B', 'the women of the self help groups'),
            ('C', 'the tenant farmers of the land lease markets'),
            ('D', 'the small and the marginal farmers of the country')
           ) as v(label, option_text)
 where q.question_hash = '9e0739001d1f2477f2ec72b604ca0926'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''interest subvention of the short term crop credit:',
    'The Kisan Credit Card scheme provides the short term crop credit of up to Rs 3 lakh at 7 per cent with the 2 per cent subvention making the effective rate of 4 per cent for the timely repayment.',
    'medium',
    'Standard Reference',
    null,
    '575d67eeab448f82348fed678581006b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '575d67eeab448f82348fed678581006b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'has been discontinued with the 2024 budget'),
            ('B', 'is provided for the loans of up to Rs 3 lakh at the effective rate of 4 per cent with the 2 per cent subvention'),
            ('C', 'is available for the loans above Rs 10 lakh only'),
            ('D', 'is available only for the horticulture crops')
           ) as v(label, option_text)
 where q.question_hash = '575d67eeab448f82348fed678581006b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Agriculture Infrastructure Fund'' of Rs 1 lakh crore provides:',
    'The Agriculture Infrastructure Fund provides the interest subvention of 3 per cent on a loan of up to Rs 2 crore for a period of seven years for the post harvest management infrastructure and the community level assets.',
    'medium',
    'PIB',
    null,
    '8dfd84e0a56f88c9eadd74ed45a6837d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8dfd84e0a56f88c9eadd74ed45a6837d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the procurement of the farm produce by the central agencies'),
            ('B', 'the direct cash transfer of the income support to the farmers'),
            ('C', 'the medium and the long term finance for the post harvest infrastructure and the community assets of the farmers'),
            ('D', 'the interest free loans for the primary agriculture')
           ) as v(label, option_text)
 where q.question_hash = '8dfd84e0a56f88c9eadd74ed45a6837d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''three components of the PM-KUSUM scheme:',
    'The three components of the PM-KUSUM are the setting up of 10,000 small solar power plants of up to 2 kW, the installation of 1.5 lakh solar pumps with the subsidy for the farmers, and the solar cold storage and the other post harvest infrastructure.',
    'medium',
    'PIB',
    null,
    '1ad9cce4980f1ad99cc58a258fe807aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ad9cce4980f1ad99cc58a258fe807aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the solar street lights, the solar irrigation and the solar rooftops'),
            ('B', 'the rooftop solar, the solar parks and the wind turbines'),
            ('C', 'the biogas plants, the small hydro and the solar pumps'),
            ('D', 'the small solar plants, the solar pumps with the subsidy and the solar cold storage')
           ) as v(label, option_text)
 where q.question_hash = '1ad9cce4980f1ad99cc58a258fe807aa'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Suraksha Bima Yojana provides:',
    'The PM-SYM provides the accidental death and the disability cover of Rs 2 lakh to the subscribers of the government schemes like the Jan Dhan, the PM-JAY, the PM-KISAN and the PM-KMY.',
    'hard',
    'PIB',
    null,
    '82e1fba970d2cc185219fa2867987ec4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82e1fba970d2cc185219fa2867987ec4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the accidental death cover of Rs 2 lakh to the subscribers of the government schemes'),
            ('B', 'the life insurance of Rs 2 lakh to the elderly'),
            ('C', 'the health cover of Rs 5 lakh to the families'),
            ('D', 'the pension to the widow of the subscriber')
           ) as v(label, option_text)
 where q.question_hash = '82e1fba970d2cc185219fa2867987ec4'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Atal Pension Yojana'' is administered by the:',
    'The Atal Pension Yojana is administered by the PFRDA with the pension managers appointed by it, and the National Pension System for the government employees is also under the PFRDA.',
    'hard',
    'Standard Reference',
    null,
    '0b2dba56c85325e3a6a1da528034310a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0b2dba56c85325e3a6a1da528034310a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pension Fund Regulatory and Development Authority'),
            ('B', 'Ministry of Finance alone'),
            ('C', 'Employees'' Provident Fund Organisation'),
            ('D', 'Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '0b2dba56c85325e3a6a1da528034310a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Family Benefit Scheme'' provides:',
    'The National Family Benefit Scheme provides a benefit of Rs 3,000 to the widow or the widower of the family and it is a part of the social security net under the National Social Security Programme.',
    'medium',
    'Standard Reference',
    null,
    'c13b91fdf5f5a60368312b54455d8223'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c13b91fdf5f5a60368312b54455d8223'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a pension of Rs 1,000 to the senior citizens'),
            ('B', 'the insurance of the crops to the farmers'),
            ('C', 'a benefit of Rs 3,000 to the widow or the widower of the family on the death of the breadwinner'),
            ('D', 'the scholarship of the girls of the weaker sections')
           ) as v(label, option_text)
 where q.question_hash = 'c13b91fdf5f5a60368312b54455d8223'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Garib Kalyan Anna Yojana'' is administered through:',
    'The PMGKAY free foodgrains are distributed to the beneficiaries of the Antyodaya Anna Yojana and the Priority Households through the fair price shops under the TPDS, and the scheme also covers the beneficiaries of the PM POSHAN and the ICDS.',
    'hard',
    'PIB',
    null,
    '971ae6866e702576e6938eaed12b0375'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '971ae6866e702576e6938eaed12b0375'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Panchayati Raj institutions'),
            ('B', 'the public distribution system of the cooperative societies only'),
            ('C', 'the rural employment guarantee offices'),
            ('D', 'the fair price shops of the States and the Union Territories under the TPDS')
           ) as v(label, option_text)
 where q.question_hash = '971ae6866e702576e6938eaed12b0375'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''DAY-NRLM'' is implemented by:',
    'The DAY-NRLM is implemented by the Ministry of Rural Development in association with the States and it is carried out by the State Rural Development Agencies and the Block Mission Management Units.',
    'hard',
    'PIB',
    null,
    'f63edbaa6d0f17be3bf08196bd37079a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f63edbaa6d0f17be3bf08196bd37079a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the NITI Aayog'),
            ('B', 'the Ministry of Rural Development in association with the States'),
            ('C', 'the Ministry of Finance alone'),
            ('D', 'the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'f63edbaa6d0f17be3bf08196bd37079a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''National Urban Livelihoods Mission'' focuses on:',
    'The DAY-NULM addresses the livelihood vulnerability of the urban poor, the homeless and the destitute through the social protection, the community organisations, the training, the self employment and the placement through the Urban Employment and Poverty Alleviation institutions.',
    'hard',
    'Standard Reference',
    null,
    '33d3e0cd497236a3791d0fb922490166'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '33d3e0cd497236a3791d0fb922490166'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the construction of the houses for the urban poor'),
            ('B', 'the social protection of the urban poor through the community organisations and the skill training with the placement support'),
            ('C', 'the sanitation of the cities'),
            ('D', 'the primary healthcare in the slums')
           ) as v(label, option_text)
 where q.question_hash = '33d3e0cd497236a3791d0fb922490166'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Pradhan Mantri Awas Yojana-Urban 2.0'' has the four verticals:',
    'PMAY-U 2.0 has the four verticals, namely the Beneficiary Led Construction, the Affordable Rental Housing, the Affordable Housing in partnership with the eligible entities and the Enabling Infrastructure, with the interest subsidy of up to Rs 1.80 lakh.',
    'medium',
    'PIB',
    null,
    '8d34467be7677e1365ef2f5c110968b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d34467be7677e1365ef2f5c110968b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rural housing, the slum upgrading, the rental housing and the sanitation'),
            ('B', 'the rental housing, the social housing, the affordable housing and the infrastructure'),
            ('C', 'beneficiary Led Construction, Affordable Rental Housing, Affordable Housing through the Affordable Rental Housing Projects and the Enabling Infrastructure'),
            ('D', 'the credit linked subsidy, the beneficiary construction, the rental housing and the slum upgrading')
           ) as v(label, option_text)
 where q.question_hash = '8d34467be7677e1365ef2f5c110968b3'
on conflict (question_id, label) do nothing;

commit;
