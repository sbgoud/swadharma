-- =============================================================================
-- current_affairs_05.sql — current_affairs question pack, part 05
-- 60 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Treaty on the Prohibition of Nuclear Weapons'' entered into force in:',
    'The TPNW entered into force on 22 January 2021 after the ratification by the required number of the states parties, and it is the first legally binding international treaty to prohibit the nuclear weapons.',
    'hard',
    'Standard Reference',
    null,
    '4362be35a4b6701d3f4f2b3578ec984f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4362be35a4b6701d3f4f2b3578ec984f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2022'),
            ('C', '2021'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '4362be35a4b6701d3f4f2b3578ec984f'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following statements regarding the World Health Organization is correct?',
    'The World Health Organization certified India as malaria free in October 2023 after the country reported zero indigenous cases for three consecutive years, and the certification is valid for the next five years.',
    'medium',
    'WHO',
    2023,
    '47f99d9363e88212b6f59fd8cd57970e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '47f99d9363e88212b6f59fd8cd57970e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'UNICEF'),
            ('B', 'the World Bank'),
            ('C', 'the Global Fund'),
            ('D', 'World Health Organization')
           ) as v(label, option_text)
 where q.question_hash = '47f99d9363e88212b6f59fd8cd57970e'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following statements regarding the COP23 in Bonn is correct?',
    'The framework agreement of the International Solar Alliance was opened for signature on the sidelines of the COP23 in Bonn in November 2017, and the organisation was formally launched at the COP24 in Katowice in 2018.',
    'hard',
    'Ministry of External Affairs',
    null,
    '4d18bc21ebf451423cf266f5765392b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d18bc21ebf451423cf266f5765392b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP24 in Katowice'),
            ('B', 'COP23 in Bonn'),
            ('C', 'COP21 in Paris'),
            ('D', 'COP26 in Glasgow')
           ) as v(label, option_text)
 where q.question_hash = '4d18bc21ebf451423cf266f5765392b1'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following statements regarding the 2016 is correct?',
    'The contract for the thirty-six Rafale fighter jets was signed in September 2016, and the first squadron of the Rafale was formally inducted into the Indian Air Force at the Ambala air base in September 2020.',
    'medium',
    'Ministry of Defence',
    2016,
    '59a7843b509a36c1f97e5528db304558'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '59a7843b509a36c1f97e5528db304558'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2012'),
            ('C', '2019'),
            ('D', '2005')
           ) as v(label, option_text)
 where q.question_hash = '59a7843b509a36c1f97e5528db304558'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''Israel'' — The ''India-Israel'' strategic partnership was elevated to a ''strategic partnership'' in:',
    'The India-Israel relations were elevated to a strategic partnership in 2017 during the visit of the Israeli Prime Minister to India, and the two countries have a defence cooperation agreement and a space cooperation framework.',
    'hard',
    'Ministry of External Affairs',
    2017,
    'ac0ef50c1e300be04b3f20e56269771e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ac0ef50c1e300be04b3f20e56269771e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2015'),
            ('C', '2017'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = 'ac0ef50c1e300be04b3f20e56269771e'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''Vietnam'' — The ''defence partnership'' between India and Vietnam was upgraded to a ''strategic partnership'' in:',
    'The India-Vietnam defence partnership was upgraded to a strategic partnership in 2016, and the two countries also signed an agreement on the credit line and the defence equipment for the United States, which was the first such defence credit line for Vietnam.',
    'hard',
    'Ministry of External Affairs',
    2016,
    '172e7ac3c97c9c040aaf3f22c87b30b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '172e7ac3c97c9c040aaf3f22c87b30b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2007'),
            ('C', '2010'),
            ('D', '2013')
           ) as v(label, option_text)
 where q.question_hash = '172e7ac3c97c9c040aaf3f22c87b30b3'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''Indonesia'' — The ''India and Indonesia'' strategic partnership was elevated to a ''strategic partnership'' and the defence cooperation agreement was signed in:',
    'During the visit of the Indonesian President to India in December 2018, the two countries signed a defence cooperation agreement and the agreement on the sharing of the maritime surveillance information.',
    'hard',
    'Ministry of External Affairs',
    2018,
    '4f1fe05fda2087400a523e56cddeaa75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4f1fe05fda2087400a523e56cddeaa75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2003'),
            ('B', '2010'),
            ('C', '2015'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '4f1fe05fda2087400a523e56cddeaa75'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following is correct in the case of the navies India?',
    'Exercise Malabar, which began as a bilateral exercise between India and the United States in 2004, is now conducted by the navies of India, the United States and Japan, and it was the first of its kind in 2020.',
    'medium',
    'Indian Navy',
    null,
    'cd49a4a963ebff56c90810a038aa0f4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd49a4a963ebff56c90810a038aa0f4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the navies of India and Japan with the United Kingdom'),
            ('B', 'the navies of India, the United States and Japan'),
            ('C', 'the navies of India, the United States and Australia'),
            ('D', 'the Indian Navy alone with the coast guard')
           ) as v(label, option_text)
 where q.question_hash = 'cd49a4a963ebff56c90810a038aa0f4e'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Integrated Guided Missile Development Programme'' was approved in:',
    'The IGMDP was approved in 1997 and it covered the Prithvi, the Akash, the Trishul and the Agni series and later the BrahMos, with the programme managed by the Defence Research and Development Organisation.',
    'easy',
    'DRDO',
    null,
    '6d1281cd85fd650fcd995ef6f9ff0a82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6d1281cd85fd650fcd995ef6f9ff0a82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1997'),
            ('B', '2003'),
            ('C', '1983'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = '6d1281cd85fd650fcd995ef6f9ff0a82'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Agni-P'' ballistic missile was first test-fired in:',
    'The Agni-P, with the Canopy configuration, was test-fired in July 2023 and it is a canisterised system with a range of about 1,000 to 2,000 kilometres, designed for the tactical use by the armed forces.',
    'easy',
    'DRDO',
    2023,
    '38dc217bb7ece6db3478992963f57478'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '38dc217bb7ece6db3478992963f57478'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2023'),
            ('C', '2018'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '38dc217bb7ece6db3478992963f57478'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Pinaka'' missile system is an indigenous:',
    'The Pinaka is a canisterised, truck based, 122 mm, solid propellant tactical surface-to-surface missile system developed by the DRDO and inducted into the Indian Army for the field artillery.',
    'easy',
    'DRDO',
    null,
    '7777310f74ade6eefadf9910b87b4b9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7777310f74ade6eefadf9910b87b4b9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'air defence missile'),
            ('B', 'cruise missile'),
            ('C', 'anti-submarine missile'),
            ('D', 'tactical surface-to-surface missile system for the artillery')
           ) as v(label, option_text)
 where q.question_hash = '7777310f74ade6eefadf9910b87b4b9f'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Prahaar'' is an indigenous:',
    'The Prahaar is a solid propellant, road mobile, tactical ballistic missile developed by the DRDO for the strike of the operational targets in the tactical battle, and it is in the service with the Indian Army.',
    'easy',
    'DRDO',
    null,
    '9712a83db232806116ca75010c4a236d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9712a83db232806116ca75010c4a236d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'surface to air missile'),
            ('B', 'anti-tank guided missile'),
            ('C', 'tactical ballistic missile for the strike of the operational targets'),
            ('D', 'submarine launched cruise missile')
           ) as v(label, option_text)
 where q.question_hash = '9712a83db232806116ca75010c4a236d'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Nirbhay'' is an indigenous:',
    'The Nirbhay is a subsonic, long range, three stage cruise missile developed by the DRDO, and it is similar to the Russian 3M-14 missile and is operated by the Indian Navy and the Air Force.',
    'easy',
    'DRDO',
    null,
    '4cd4fcee083fabd242118b7dd7127193'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4cd4fcee083fabd242118b7dd7127193'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'air defence missile'),
            ('B', 'long range subsonic cruise missile'),
            ('C', 'anti-tank missile'),
            ('D', 'hypersonic ballistic missile')
           ) as v(label, option_text)
 where q.question_hash = '4cd4fcee083fabd242118b7dd7127193'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''QRSAM'' developed by the DRDO is a:',
    'The QRSAM, developed by the DRDO with the private industry, is a single stage, point defence short range air defence missile for the protection of the critical assets, and it was inducted into the Indian Air Force in 2021.',
    'easy',
    'DRDO',
    null,
    '4c0340d9e4476d387d6b6a88c03ffbb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4c0340d9e4476d387d6b6a88c03ffbb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'quick reaction short range surface-to-air missile'),
            ('B', 'anti-ballistic missile'),
            ('C', 'cruise missile'),
            ('D', 'torpedo')
           ) as v(label, option_text)
 where q.question_hash = '4c0340d9e4476d387d6b6a88c03ffbb8'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Barak-8'' long range surface-to-air missile system is a:',
    'The Barak-8 is developed jointly by the Israel Aerospace Industries and the Indian Defence Research and Development Organisation, and two systems were inducted into the Indian Air Force in 2023.',
    'easy',
    'DRDO',
    2023,
    '22f949a011501172858aa648a809116a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '22f949a011501172858aa648a809116a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'French system procured from Europe'),
            ('B', 'American system supplied under the COMET sale'),
            ('C', 'joint India-Israel system inducted in 2023'),
            ('D', 'Russian system acquired in 2021')
           ) as v(label, option_text)
 where q.question_hash = '22f949a011501172858aa648a809116a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''S-400'' air defence system:',
    'India contracted the S-400 Triumf system from Russia in 2021, and the systems are to be supplied in several tranches with the first squadron reported to have been formed in 2024.',
    'easy',
    'Ministry of Defence',
    2021,
    '09281b29a333f14ba8b9e0f88e42f336'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '09281b29a333f14ba8b9e0f88e42f336'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is an indigenous system developed by the DRDO'),
            ('B', 'was procured from France under the Rafale contract'),
            ('C', 'was supplied by the United States under the COMET sale'),
            ('D', 'was contracted from Russia in 2021 for the Indian Air Force')
           ) as v(label, option_text)
 where q.question_hash = '09281b29a333f14ba8b9e0f88e42f336'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Maitri'' missile is an indigenous:',
    'The Maitri is a solid propellant, ship-to-ship missile developed by the DRDO for the naval forces, and the first test firing took place in 2019.',
    'easy',
    'DRDO',
    null,
    'b08af4f455a332b9f0f1cdc26cc0f77f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b08af4f455a332b9f0f1cdc26cc0f77f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'cruise missile'),
            ('B', 'ship-to-ship missile developed by the DRDO'),
            ('C', 'surface-to-air missile'),
            ('D', 'air defence missile')
           ) as v(label, option_text)
 where q.question_hash = 'b08af4f455a332b9f0f1cdc26cc0f77f'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Project 15B'' refers to the indigenously designed:',
    'Project 15B is the class of the stealth guided missile destroyers of the Indian Navy with a reduced radar cross section, and the lead ship, INS Imphal, was commissioned in August 2023.',
    'easy',
    'Indian Navy',
    null,
    '5cb2ccb6d0ee15cdab587b05c16bddca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5cb2ccb6d0ee15cdab587b05c16bddca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'stealth guided missile destroyers'),
            ('B', 'submarines'),
            ('C', 'frigates'),
            ('D', 'aircraft carriers')
           ) as v(label, option_text)
 where q.question_hash = '5cb2ccb6d0ee15cdab587b05c16bddca'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Project 17A'' is the class of:',
    'Project 17A is the class of the stealth guided missile frigates, of which INS Nilgiri was the first ship to be commissioned, in 2022, and the class has a displacement of about 6,700 tonnes.',
    'easy',
    'Indian Navy',
    null,
    '0ff6b9d8b53ac1ca7eb4aaeb8770d03a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0ff6b9d8b53ac1ca7eb4aaeb8770d03a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'submarines'),
            ('B', 'destroyers'),
            ('C', 'landing craft'),
            ('D', 'guided missile frigates of the Indian Navy')
           ) as v(label, option_text)
 where q.question_hash = '0ff6b9d8b53ac1ca7eb4aaeb8770d03a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Project 18A'' class of aircraft carriers, approved in 2022, is notable because it will have:',
    'The Project 18A carriers, to be built by the Mazagon Dock Shipbuilders with the support of the American firms, will use the electromagnetic aircraft launch system, and the first of the two is to be commissioned by about 2030.',
    'easy',
    'Ministry of Defence',
    2022,
    'b3a91454e8e9315c8fd410ce0a398774'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b3a91454e8e9315c8fd410ce0a398774'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no hangar deck for the aircraft'),
            ('B', 'a nuclear reactor for the propulsion'),
            ('C', 'electromagnetic aircraft launch systems instead of a ski-jump'),
            ('D', 'a catapult assisted take-off with steam catapults')
           ) as v(label, option_text)
 where q.question_hash = 'b3a91454e8e9315c8fd410ce0a398774'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Kamandhat'' class programme relates to the development of:',
    'The Kamandhat programme is the indigenous design of the conventional submarines for the Indian Navy, and the project has been progressing with the design and the technology transfer for the long term self reliance in the ship building.',
    'easy',
    'Ministry of Defence',
    null,
    '7cffa84661e8fc54a6e24887d65bfcd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7cffa84661e8fc54a6e24887d65bfcd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'surface combatants'),
            ('B', 'conventional diesel electric submarines for the Indian Navy'),
            ('C', 'nuclear powered submarines'),
            ('D', 'aircraft carriers')
           ) as v(label, option_text)
 where q.question_hash = '7cffa84661e8fc54a6e24887d65bfcd0'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The INS Viraat, the second aircraft carrier of India, was acquired from:',
    'INS Viraat was the HMS Centaur of the Royal Navy and it was acquired by India in 2015 and commissioned as INS Viraat in 2021, after the decommissioning of the INS Vikramaditya.',
    'medium',
    'Indian Navy',
    null,
    'cc73439b4ef44da8b609e6a3b7339bda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cc73439b4ef44da8b609e6a3b7339bda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russia'),
            ('B', 'Italy'),
            ('C', 'the United Kingdom'),
            ('D', 'the United States')
           ) as v(label, option_text)
 where q.question_hash = 'cc73439b4ef44da8b609e6a3b7339bda'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The series of nuclear tests of May 1998, conducted at Pokhran, was named:',
    'Operation Shakti of May 1998 was conducted by the DRDO with about fifty scientists, and it was preceded by Operation Vajra in 1994 and followed by Operation Meghdoot, the series of the tests of 1998.',
    'easy',
    'DRDO',
    1998,
    '3743b605e25bafe87d1216fe22c67d69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3743b605e25bafe87d1216fe22c67d69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Operation Shakti'),
            ('B', 'Operation Vajra'),
            ('C', 'Operation Brahma'),
            ('D', 'Operation Meghdoot')
           ) as v(label, option_text)
 where q.question_hash = '3743b605e25bafe87d1216fe22c67d69'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The first Nuclear Security Summit was held in:',
    'The first Nuclear Security Summit was hosted by the United States at Washington in March 2016, and the summits have been held biennially since, with India participating in all of them.',
    'medium',
    'Ministry of External Affairs',
    2016,
    '5cb8b1cb75c33c49c0af3716242f714f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5cb8b1cb75c33c49c0af3716242f714f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Moscow in 2016'),
            ('B', 'Paris in 2008'),
            ('C', 'Seoul in 2018'),
            ('D', 'Washington DC in 2016')
           ) as v(label, option_text)
 where q.question_hash = '5cb8b1cb75c33c49c0af3716242f714f'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Atomic Energy Regulatory Board'' in India:',
    'The AERB was constituted in 1986 under the Atomic Energy Act, 1962 and it is under the Department of Atomic Energy, and it is responsible for the safety regulation of the nuclear and the radiation facilities.',
    'medium',
    'DAE',
    null,
    '382e032f9a29764b9c9307d144357623'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '382e032f9a29764b9c9307d144357623'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a statutory body under the Electricity Act'),
            ('B', 'was constituted in 1986 under the Atomic Energy Act and is under the Department of Atomic Energy'),
            ('C', 'functions under the Ministry of Heavy Industries'),
            ('D', 'is an autonomous body under the Ministry of Environment')
           ) as v(label, option_text)
 where q.question_hash = '382e032f9a29764b9c9307d144357623'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Nuclear Power Corporation of India Limited'':',
    'The NPCIL, a public sector undertaking under the Department of Atomic Energy, operates the nuclear power stations of the country, while the Bhabha Atomic Research Centre does the research and the AERB does the regulation.',
    'medium',
    'DAE',
    null,
    '3d59c2a6f7afd7593e19f487230c78fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d59c2a6f7afd7593e19f487230c78fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'conducts the atomic research at Kalpakkam'),
            ('B', 'mines the uranium for the reactors'),
            ('C', 'regulates the safety of the reactors'),
            ('D', 'is the operating company of the nuclear power stations in the country')
           ) as v(label, option_text)
 where q.question_hash = '3d59c2a6f7afd7593e19f487230c78fd'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Bhabha Atomic Research Centre'' is located at:',
    'The BARC, the premier research organisation of the Department of Atomic Energy, is located at Kalpakkam in Tamil Nadu, and it operates the nuclear research reactor and the facilities of the nuclear fuel cycle.',
    'medium',
    'DAE',
    null,
    '259d41311f6997b755344550a4b69b1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '259d41311f6997b755344550a4b69b1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Bhopal'),
            ('C', 'Kalpakkam, Tamil Nadu'),
            ('D', 'Mumbai')
           ) as v(label, option_text)
 where q.question_hash = '259d41311f6997b755344550a4b69b1c'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''ITER'' project, of which India is a member, is a:',
    'The ITER is an international thermonuclear fusion project at Cadarache in France, and India participates through the DAE with its own Domestic Accelerator and the involvement of the private industry in the engineering partnership.',
    'medium',
    'DAE',
    null,
    '435db448f9f984002de7a39c57a65ae2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '435db448f9f984002de7a39c57a65ae2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'thermonuclear fusion reactor being built at Cadarache in France'),
            ('B', 'heavy water reactor being built at Narora'),
            ('C', 'experimental fusion device in Russia'),
            ('D', 'fast breeder reactor being built at Kalpakkam')
           ) as v(label, option_text)
 where q.question_hash = '435db448f9f984002de7a39c57a65ae2'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''AstroSat'' mission of India is:',
    'AstroSat, launched in September 2015, is a multi wavelength observatory that observes the different bands of the electromagnetic spectrum from X-rays to the optical and the infrared, and it is the first dedicated astronomy satellite of India.',
    'medium',
    'ISRO',
    null,
    'f74f769e007ed9f151afb3909a4cd7ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f74f769e007ed9f151afb3909a4cd7ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first navigation satellite of India'),
            ('B', 'the first dedicated astronomy satellite of India, launched in 2015'),
            ('C', 'the first weather satellite of India'),
            ('D', 'the first communication satellite of India')
           ) as v(label, option_text)
 where q.question_hash = 'f74f769e007ed9f151afb3909a4cd7ba'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Augmented Satellite Launch Vehicle'' (ASLV) was:',
    'The ASLV was an expendable launch vehicle developed by the ISRO and flown in the mid-eighties, and it was later replaced by the PSLV which became the workhorse launcher of the country.',
    'medium',
    'ISRO',
    null,
    '64baa0bd65d9db082459237b55c61c42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '64baa0bd65d9db082459237b55c61c42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the launch vehicle of the Chandrayaan missions'),
            ('B', 'the launcher of the Mangalyaan mission'),
            ('C', 'a re-usable launch vehicle of the DRDO'),
            ('D', 'an expendable launch vehicle of the ISRO used in the 1980s')
           ) as v(label, option_text)
 where q.question_hash = '64baa0bd65d9db082459237b55c61c42'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''INSAT-3D'' satellite of India provides:',
    'INSAT-3D is an advanced communication and meteorology satellite that also serves as a data relay satellite for the vessels in the Indian Ocean region, and it is stationed at 82 degrees East.',
    'medium',
    'ISRO',
    null,
    '45a323e7182caf90db0c9a4986e6e7ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45a323e7182caf90db0c9a4986e6e7ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the meteorology, the data relay and the communication services for the Indian Ocean region'),
            ('B', 'only the television and the communication services'),
            ('C', 'the navigation and the timing services'),
            ('D', 'the earth observation data for the agriculture')
           ) as v(label, option_text)
 where q.question_hash = '45a323e7182caf90db0c9a4986e6e7ad'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Innovations for Defence Excellence'' (iDEX) programme of the DRDO:',
    'The iDEX, launched in 2018, is the flagship initiative of the DRDO to foster the innovation and the technology development in the defence domain by bringing together the startups, the MSMEs, the academia and the industry with the funds for the development and the procurement.',
    'medium',
    'DRDO',
    null,
    'f1a69af99660cb8b40ee0f0cad2142a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1a69af99660cb8b40ee0f0cad2142a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'maintains the defence warehouses'),
            ('B', 'procures the foreign systems for the Indian armed forces'),
            ('C', 'promotes the indigenous defence innovation through the startups and the MSMEs and theacademia'),
            ('D', 'trains the personnel of the defence forces')
           ) as v(label, option_text)
 where q.question_hash = 'f1a69af99660cb8b40ee0f0cad2142a0'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Technologisation Fund'' of the DRDO:',
    'The Technologisation Fund, operated through the Technology Development Fund scheme and the partner industry, supports the projects in the critical and the emerging technologies for the defence, with the DRDO retaining the intellectual property rights.',
    'medium',
    'DRDO',
    null,
    'd9b41c306673c2ad28035b5022afa86a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd9b41c306673c2ad28035b5022afa86a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'funds the procurement from abroad'),
            ('B', 'supports the indigenous technology development for the strategic sectors with the industry and the academia'),
            ('C', 'finances the infrastructure of the laboratories'),
            ('D', 'provides the scholarships to the research scholars')
           ) as v(label, option_text)
 where q.question_hash = 'd9b41c306673c2ad28035b5022afa86a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Agniveer'' scheme of 2022 relates to:',
    'The Agniveer scheme, introduced in 2022, provides for the enrolment of the Agniveers into the Indian Armed Forces on a four-year term, after which they can be regularised, and it is open to the candidates between the ages of seventeen and twenty-one.',
    'easy',
    'Ministry of Defence',
    null,
    '294e723f271a898e426e36ee55fb326a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '294e723f271a898e426e36ee55fb326a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the corporatisation of the defence factories'),
            ('B', 'the induction of the women in the combat roles'),
            ('C', 'the unified theatre command'),
            ('D', 'the new scheme for the recruitment to the armed forces, with a four-year term for the Agniveers')
           ) as v(label, option_text)
 where q.question_hash = '294e723f271a898e426e36ee55fb326a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Coastal Security Scheme'' of the Indian Navy:',
    'The Coastal Security Scheme is a joint programme of the Indian Navy, the Indian Coast Guard and the State police and the home ministries, under which the coastal police stations and the marine police stations are set up along the coastline.',
    'medium',
    'Indian Navy',
    null,
    'ba82040c4f54bce4749d10e0748d6bae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba82040c4f54bce4749d10e0748d6bae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provides for the setting up of the coastal police stations and the marine police stations along the coastline'),
            ('B', 'relates to the protection of the offshore oil platforms'),
            ('C', 'concerns the training of the marine commandos'),
            ('D', 'is the scheme for the modernisation of the fishing harbours')
           ) as v(label, option_text)
 where q.question_hash = 'ba82040c4f54bce4749d10e0748d6bae'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Andaman and Nicobar Command'' of the Indian Navy:',
    'The Andaman and Nicobar Command is the only tri-service theatre command in India and it operates under the Chief of Defence Staff, and the other theatre commands are under their respective service chiefs.',
    'medium',
    'Indian Navy',
    null,
    'a8c707f32ca7ef497cac01a9b33732c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8c707f32ca7ef497cac01a9b33732c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'was formed after the creation of the Southern Command'),
            ('B', 'is an independent naval command under the Eastern Naval Command'),
            ('C', 'is the tri-service theatre command under the Chief of Defence Staff'),
            ('D', 'is a joint command with the Coast Guard only')
           ) as v(label, option_text)
 where q.question_hash = 'a8c707f32ca7ef497cac01a9b33732c4'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Institute of Biomedical Genomics'' is located at:',
    'The NIBMG at Gandhinagar in Gujarat, an autonomous institute of the Ministry of Health and Family Welfare, is the premier Indian institution for the biomedical genomics and the genomic medicine.',
    'medium',
    'Ministry of Health and Family Welfare',
    null,
    '693572dafd7e4c1d84fd3dfbda6c07fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '693572dafd7e4c1d84fd3dfbda6c07fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengaluru'),
            ('B', 'Gandhinagar, Gujarat'),
            ('C', 'Chennai'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '693572dafd7e4c1d84fd3dfbda6c07fd'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Ayushman Bharat Health Account'' (ABHA) is:',
    'The ABHA, a 14-digit number created under the National Digital Health Mission, is the digital health identity of a citizen and it is portable across the States and the health facilities, and it is linked with the Ayushman Bharat PM-JAY benefits.',
    'medium',
    'Ministry of Health and Family Welfare',
    null,
    '00863989f390dcdacfadfb6e5056c219'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '00863989f390dcdacfadfb6e5056c219'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the health insurance card issued by the private insurers'),
            ('B', 'the identifier of the health facilities for the empanellment'),
            ('C', 'the record of the vaccination in the CoWIN system'),
            ('D', 'a digital health identification number that allows the beneficiaries to access the healthcare services anywhere in the country')
           ) as v(label, option_text)
 where q.question_hash = '00863989f390dcdacfadfb6e5056c219'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Covishield'' vaccine against COVID-19 was developed by:',
    'Covishield was developed by the Serum Institute of India with the Oxford University and AstraZeneca, while Covaxin was developed by Bharat Biotech with the ICMR, and the Serum Institute was also the world''s largest vaccine maker by the doses supplied.',
    'medium',
    'Ministry of Health and Family Welfare',
    null,
    '28d21fc4180a8b20ade4a463a1d86e99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28d21fc4180a8b20ade4a463a1d86e99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Serum Institute of India, in partnership with the Oxford University and AstraZeneca'),
            ('B', 'the Bharat Biotech'),
            ('C', 'the Biological E'),
            ('D', 'the Indian Council of Medical Research')
           ) as v(label, option_text)
 where q.question_hash = '28d21fc4180a8b20ade4a463a1d86e99'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Sickle Cell Disease'' elimination initiative of India was launched in:',
    'The Sickle Cell Disease elimination was launched in 2021 with the aim of eliminating the birth of the children with the disease by 2030, and it involves the screening, the counselling, the testing of the reproductive age population and the prevention of the transmission.',
    'medium',
    'Ministry of Health and Family Welfare',
    null,
    'ba016031e8254eeec331a89a8f533d7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ba016031e8254eeec331a89a8f533d7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2024'),
            ('B', '2018'),
            ('C', '2021'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'ba016031e8254eeec331a89a8f533d7f'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Measles and Rubella'' elimination goal of India is to achieve:',
    'India has adopted the goal of the interruption of the indigenous transmission of the measles and the rubella by 2027, and it is supported by the routine immunisation with the MR vaccine in the large parts of the country.',
    'medium',
    'Ministry of Health and Family Welfare',
    null,
    '69af81f8163703eb268552427fcb020d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '69af81f8163703eb268552427fcb020d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the complete eradication of the measles by 2030'),
            ('B', 'the introduction of the rubella vaccine in the private sector only'),
            ('C', 'the interruption of the indigenous transmission of the measles and the rubella by 2027'),
            ('D', 'the reduction of the rubella incidence by half')
           ) as v(label, option_text)
 where q.question_hash = '69af81f8163703eb268552427fcb020d'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''IndiaAI Mission'' approved in 2024 has an outlay of:',
    'The IndiaAI Mission, with an outlay of Rs 10,372 crore, has four components, namely the AI Innovation Centres, the IndiaAI Datasets Platform, the AI Compute Grid and the AI Application Development, and it is implemented by the MeitY in partnership with the industry.',
    'easy',
    'MeitY',
    2024,
    '59901f46d929634f39c2eba02df0e51a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '59901f46d929634f39c2eba02df0e51a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 25,000 crore'),
            ('B', 'Rs 10,372 crore for the AI innovation centres, the datasets, the compute and the applications'),
            ('C', 'Rs 1,000 crore'),
            ('D', 'Rs 4,000 crore')
           ) as v(label, option_text)
 where q.question_hash = '59901f46d929634f39c2eba02df0e51a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Language Mission for the mother tongue'' was launched by:',
    'The National Language Mission for the mother tongue was launched by the NITI Aayog in 2024 with the aim of providing the mother tongue based education in the early grades, and the mission is to be implemented with the State governments.',
    'medium',
    'NITI Aayog',
    null,
    'fc556a8c585841ea32b2c423f743ba44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc556a8c585841ea32b2c423f743ba44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the NITI Aayog'),
            ('B', 'the Ministry of Education'),
            ('C', 'the Ministry of Culture'),
            ('D', 'the Election Commission of India')
           ) as v(label, option_text)
 where q.question_hash = 'fc556a8c585841ea32b2c423f743ba44'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''India Semiconductor Mission'' provides for:',
    'The India Semiconductor Mission offers a fiscal support of about 50,000 crore rupees for the setting up of the semiconductor fabs, the display fabs and the compound semiconductor and the ATMP units, with the design incentive of the Modified Electronics Manufacturing Programme.',
    'medium',
    'MeitY',
    null,
    '9c2658a0d436d9c9fe0ade2f7c09d34e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c2658a0d436d9c9fe0ade2f7c09d34e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the setting up of the semiconductor design parks in the States'),
            ('B', 'the mandatory local sourcing of the electronics'),
            ('C', 'the subsidised import of the mobile handsets'),
            ('D', 'the fiscal support of about 50,000 crore rupees for the semiconductor fabrication and the ATMP units')
           ) as v(label, option_text)
 where q.question_hash = '9c2658a0d436d9c9fe0ade2f7c09d34e'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Optical Fibre'' project of the government:',
    'The National Optical Fibre or NOF project, taken up under the BharatNet programme with the involvement of the BBNL, aims to provide a fibre connection to every gram panchayat and to strengthen the digital infrastructure of the country.',
    'medium',
    'MeitY',
    null,
    'bab4b7d7d052f212ed3c09a5278d57f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bab4b7d7d052f212ed3c09a5278d57f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'aims to connect every gram panchayat with a high speed internet connection'),
            ('B', 'is the rural electrification programme'),
            ('C', 'is the scheme for the undersea cable network'),
            ('D', 'relates to the laying of the optical fibre on the national highways only')
           ) as v(label, option_text)
 where q.question_hash = 'bab4b7d7d052f212ed3c09a5278d57f0'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Nuclear Power Plant at Kakrapar'' is in:',
    'The Kakrapar Atomic Power Station in Gujarat houses the indigenously developed PHWR reactors and the VVER-1000 units, and it is operated by the NPCIL, and the Narora and the Rawatbhata stations are the other indigenously built plants.',
    'medium',
    'NPCIL',
    null,
    '4a10a06229fc6aba23f98ec4e562eebf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a10a06229fc6aba23f98ec4e562eebf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Kerala'),
            ('C', 'Rajasthan'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '4a10a06229fc6aba23f98ec4e562eebf'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Uranium Corporation of India Limited'' is:',
    'The UCIL, a public sector undertaking of the Department of Atomic Energy, is engaged in the exploration, the mining and the processing of the uranium and it operates the mines at Jaduguda, the Turamdih and the Baghmara.',
    'hard',
    'DAE',
    null,
    'e68c00968e9da2e8e3bbb45a4d314a5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e68c00968e9da2e8e3bbb45a4d314a5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the regulator of the radiation safety'),
            ('B', 'a joint venture with the Russia for the uranium supply'),
            ('C', 'a public sector undertaking of the Department of Atomic Energy engaged in the uranium mining and the processing'),
            ('D', 'the body that operates the nuclear power stations')
           ) as v(label, option_text)
 where q.question_hash = 'e68c00968e9da2e8e3bbb45a4d314a5a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Indian Rare Earths Limited'' is:',
    'The IREL, a public sector undertaking of the Department of Atomic Energy, operates the monazite sand mining in the Kerala, the Tamil Nadu and the Odisha coasts and the monazite separation plants at IREL, and it supplies the thorium and the rare earths.',
    'hard',
    'DAE',
    null,
    '0bd633dd711204e264d85b826b14552b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0bd633dd711204e264d85b826b14552b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a unit of the Geological Survey of India for the mineral exploration'),
            ('B', 'a public sector undertaking of the Department of Atomic Energy that operates the monazite sand mines and the separation plants'),
            ('C', 'the body that conducts the beach sand mining in the States'),
            ('D', 'a joint venture with the Russia for the rare earth supply')
           ) as v(label, option_text)
 where q.question_hash = '0bd633dd711204e264d85b826b14552b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''GSLV Mk-III'' or the LVM3 has been developed with the cryogenic engine from:',
    'The LVM3 uses a cryogenic upper stage with the help of the Russian firms, and it was developed by the ISRO after the failed GSLV Mk-III attempt of 2017, and the first successful flight of the LVM3 carried the Chandrayaan-2 in 2019.',
    'hard',
    'ISRO',
    null,
    'ac25964ea61aaea7210038ad497f8d36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ac25964ea61aaea7210038ad497f8d36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the DRDO alone'),
            ('B', 'the ISRO and the European Space Agency'),
            ('C', 'the ISRO with the help of the Russian firms'),
            ('D', 'the private industry of Bengaluru only')
           ) as v(label, option_text)
 where q.question_hash = 'ac25964ea61aaea7210038ad497f8d36'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Defence Acquisition Council'' is:',
    'The Defence Acquisition Council, chaired by the Chief of Defence Staff, reviews and sanctions the major acquisition proposals and it works with the Defence Acquisition Authority, the Services and the Financial Management bodies.',
    'hard',
    'Ministry of Defence',
    null,
    '02061187595de87142a4c85f4393c002'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02061187595de87142a4c85f4393c002'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the body that reviews and sanctions the major acquisition proposals of the Ministry of Defence'),
            ('B', 'the body that certifies the defence equipment for the export'),
            ('C', 'the body that trains the defence personnel'),
            ('D', 'the body that audits the defence expenditure')
           ) as v(label, option_text)
 where q.question_hash = '02061187595de87142a4c85f4393c002'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Integrated Theatre Commands'' proposal of the Indian military aims at:',
    'The proposal is to integrate the land, the air and the maritime assets under an integrated theatre command for each theatre so that the operations are conducted with a joint approach and the inter-service issues are resolved at the theatre level itself.',
    'hard',
    'Ministry of Defence',
    null,
    '1fcfd3c8788771117db9022155fbff60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1fcfd3c8788771117db9022155fbff60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the merger of the Coast Guard with the Navy'),
            ('B', 'the creation of a joint R and D centre'),
            ('C', 'the unification of the recruitment of the officers'),
            ('D', 'the integration of the services under a joint command for each theatre')
           ) as v(label, option_text)
 where q.question_hash = '1fcfd3c8788771117db9022155fbff60'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Cyber Security Index'' of India is published by:',
    'The National Cyber Security Index, prepared by the Indian Computer Emergency Response Team and the National Cyber Security Coordinator, measures the maturity of the cyber security ecosystem of the country.',
    'hard',
    'MeitY',
    null,
    'c06a31dd906c7efd336cdf4c420b0389'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c06a31dd906c7efd336cdf4c420b0389'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Security Council'),
            ('B', 'the National Cyber Security Coordinator under the Ministry of Electronics and Information Technology'),
            ('C', 'the CERT-In of the MeitY'),
            ('D', 'the National Cybercrime Reporting Agency')
           ) as v(label, option_text)
 where q.question_hash = 'c06a31dd906c7efd336cdf4c420b0389'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Supercomputing Mission'' of India involves:',
    'The National Supercomputing Mission, with an outlay of Rs 15,000 crore, is aimed at building a national grid of the supercomputers across the institutions of science and the academia so that the Indian researchers get the high performance computing resources.',
    'hard',
    'MeitY',
    null,
    '3db19f880184abc3bd5643588849ec48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3db19f880184abc3bd5643588849ec48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the standardisation of the AI models'),
            ('B', 'the development of the exascale computer for the defence'),
            ('C', 'the setting up of the data centres for the UPI'),
            ('D', 'the building of a grid of the supercomputers at the institutions of science and the academia')
           ) as v(label, option_text)
 where q.question_hash = '3db19f880184abc3bd5643588849ec48'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Defence Research and Development Organisation'' was set up in:',
    'The DRDO was set up in 1958 with the merger of the Defence Research and Development Organisation of the DRDL and the Technical and Development Division of the Indian Army, and it is headed by the Director General with its headquarters in New Delhi.',
    'hard',
    'DRDO',
    null,
    '5bb70614fa3c2ff495a79edcf9810d4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5bb70614fa3c2ff495a79edcf9810d4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1958'),
            ('B', '1975'),
            ('C', '1950'),
            ('D', '1999')
           ) as v(label, option_text)
 where q.question_hash = '5bb70614fa3c2ff495a79edcf9810d4b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Indian Space Research Organisation'' was founded in:',
    'The ISRO was founded in August 1969 and the Vikram Sarabhai Space Centre at Thumba was the first major establishment, and the organisation became the Department of Space in 1972.',
    'hard',
    'ISRO',
    null,
    '95cc371bdacbcf5a1989629b9d36a48e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '95cc371bdacbcf5a1989629b9d36a48e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1963'),
            ('B', '1975'),
            ('C', '1969'),
            ('D', '1972')
           ) as v(label, option_text)
 where q.question_hash = '95cc371bdacbcf5a1989629b9d36a48e'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Bharati'' research station in Antarctica was commissioned in:',
    'The Bharati station, the second Indian permanent research station in Antarctica after Dakshin Gangotri, was commissioned in March 2024 in the Larsemann Hills and it can host about forty scientists at a time.',
    'hard',
    'NCPOR',
    2024,
    '3189048732a3305a817a1c380c73a556'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3189048732a3305a817a1c380c73a556'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2024'),
            ('C', '1984'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '3189048732a3305a817a1c380c73a556'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''Information Technology (Intermediary Guidelines and Digital Media Ethics Code) Rules, 2021'' require:',
    'The Rules of 2021 require the intermediaries to publish the rules of privacy and the user grievance redressal, the grievance officer and the process for the complaints, and the due diligence for the content received and the removal of the prohibited content within 36 hours.',
    'easy',
    'MeitY',
    null,
    'c619b544b64644165b9f62c4d28049c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c619b544b64644165b9f62c4d28049c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the social media platforms to be located in India'),
            ('B', 'the removal of the content within 24 hours of the notice'),
            ('C', 'the intermediaries to publish the rules of privacy, the grievance officer and the process for the complaints'),
            ('D', 'the intermediaries to be registered with the MeitY')
           ) as v(label, option_text)
 where q.question_hash = 'c619b544b64644165b9f62c4d28049c2'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Cybersecurity Policy'' of India was released in:',
    'The National Cybersecurity Policy, released in February 2020, lays out the objectives, the security principles and the roadmap for the development of the cyber ecosystem of the country.',
    'hard',
    'MeitY',
    null,
    '5ffd2fff2bdd3d34b9e6eede07a61217'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5ffd2fff2bdd3d34b9e6eede07a61217'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2020'),
            ('C', '2015'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '5ffd2fff2bdd3d34b9e6eede07a61217'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''CERT-In'' of India:',
    'The CERT-In, established in 1998 under the Ministry of Electronics and Information Technology, is the national nodal agency for the computer emergency response and it coordinates the incident response and the vulnerability disclosure.',
    'hard',
    'MeitY',
    null,
    '799570b5fd2ad9acb07bf72fcebc91c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '799570b5fd2ad9acb07bf72fcebc91c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'certifies the hardware for the secure networks'),
            ('B', 'operates the national cyber crime portal'),
            ('C', 'is the agency for the encryption of the defence communications'),
            ('D', 'is the national nodal agency for the computer emergency response, established in 1998')
           ) as v(label, option_text)
 where q.question_hash = '799570b5fd2ad9acb07bf72fcebc91c5'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The ''National Crime Records Bureau'' in India:',
    'The NCRB, set up in 1972 and located in New Delhi, is a wing of the Ministry of Home Affairs and it maintains the data on the crimes, the criminal justice system and the prisons, and it publishes the annual reports.',
    'hard',
    'MHA',
    null,
    'b86e8ed4061fe689826292e89b3394df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b86e8ed4061fe689826292e89b3394df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a wing of the Ministry of Home Affairs that maintains the data on the crimes and the criminal justice system'),
            ('B', 'is a unit of the Research and Analysis Wing'),
            ('C', 'is under the Ministry of Law and Justice'),
            ('D', 'is a statutory body of the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = 'b86e8ed4061fe689826292e89b3394df'
on conflict (question_id, label) do nothing;

commit;
