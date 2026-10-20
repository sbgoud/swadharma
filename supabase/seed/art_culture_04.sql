-- =============================================================================
-- art_culture_04.sql — art_culture question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Holi festival is:',
    'The Holi, the festival of the colours, marks the arrival of spring and it celebrates the destruction of the demon Puthana by the child Krishna.',
    'easy',
    'Standard Reference',
    null,
    'a3e06e5a3664ddcd838a3d3cb064d5cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a3e06e5a3664ddcd838a3d3cb064d5cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Holi marks the arrival of spring and the colours celebrate the destruction of the evil Puthana'),
            ('B', 'It marks the harvest'),
            ('C', 'It marks the winter solstice'),
            ('D', 'It marks the death of the Buddha')
           ) as v(label, option_text)
 where q.question_hash = 'a3e06e5a3664ddcd838a3d3cb064d5cc'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Eid ul-Fitr and the Eid al-Adha are:',
    'The Eid ul-Fitr marks the end of the Ramadan and the Eid al-Adha, the festival of the sacrifice, the end of the Hajj.',
    'easy',
    'Standard Reference',
    null,
    'fdf5aa3438fedf767e967f1f98d644bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fdf5aa3438fedf767e967f1f98d644bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They mark the Hindu new year'),
            ('B', 'They mark the birth of the Prophet'),
            ('C', 'The Eid ul-Fitr marks the end of the Ramadan and the Eid al-Adha the end of the Hajj'),
            ('D', 'Both are the same festival')
           ) as v(label, option_text)
 where q.question_hash = 'fdf5aa3438fedf767e967f1f98d644bf'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Mahavir Jayanti is:',
    'The Mahavir Jayanti marks the birth of the Mahavira, the 24th and the last of the Jain tirthankaras, and it is also the Mahavir Nirvan Kalyanak.',
    'medium',
    'Standard Reference',
    null,
    '26c2f5a48cbc8196374789dc0ff33d8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '26c2f5a48cbc8196374789dc0ff33d8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mahavir Jayanti marks the birth of the Mahavira, the last tirthankara, and the Mahavira was the 24th'),
            ('B', 'It marks the birth of the Buddha'),
            ('C', 'It marks the Nirvana of the Mahavira'),
            ('D', 'It marks the first sermon of the Buddha')
           ) as v(label, option_text)
 where q.question_hash = '26c2f5a48cbc8196374789dc0ff33d8b'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Pongal'' is a four-day harvest festival of:',
    'The Pongal, the harvest festival of the Tamil Nadu, celebrates the end of the winter season and the beginning of the harvest and the sun, the cattle and the agriculture are thanked.',
    'easy',
    'Standard Reference',
    null,
    '3cdadf21d6bc48f8d5e022da0f221cce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3cdadf21d6bc48f8d5e022da0f221cce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Karnataka'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '3cdadf21d6bc48f8d5e022da0f221cce'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Bihu'' is the festival of:',
    'The Bihu, the Assamese festival of the spring, the new year and the harvest, marks the arrival of the spring season and the start of the agricultural year.',
    'easy',
    'Standard Reference',
    null,
    'a4ef82fcdf07a19c3b1db3a3940a118a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a4ef82fcdf07a19c3b1db3a3940a118a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Assam'),
            ('C', 'West Bengal'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'a4ef82fcdf07a19c3b1db3a3940a118a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Onam festival is:',
    'The Onam, the harvest festival of the Kerala, is marked by the Pookalam, the flower carpet, the Vallam Kali, the snake boat race, and the display of the Onapottan.',
    'medium',
    'Standard Reference',
    null,
    '091c6bad7d372c7c261cb73fa2ec30c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '091c6bad7d372c7c261cb73fa2ec30c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the harvest festival of the Assam'),
            ('B', 'It is the festival of the Bengal'),
            ('C', 'The Onam is the harvest festival of Kerala with the Pookalam and the Vallam Kali'),
            ('D', 'It is the festival of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '091c6bad7d372c7c261cb73fa2ec30c3'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Chhath'' is a festival of:',
    'The Chhath, the sun worship festival, is celebrated in the Bihar and the eastern Uttar Pradesh with the devotees standing in the water to offer the arghya to the setting and the rising sun.',
    'medium',
    'Standard Reference',
    null,
    'c14de561d00ac3333af9cde101a1e3ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c14de561d00ac3333af9cde101a1e3ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bihar and the eastern Uttar Pradesh'),
            ('B', 'Punjab'),
            ('C', 'Rajasthan'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'c14de561d00ac3333af9cde101a1e3ad'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Guru Nanak Jayanti is:',
    'The Guru Nanak Jayanti, the birth anniversary of the first Sikh Guru, is celebrated on the full moon of the Kartika and it is also the Gurpurab.',
    'medium',
    'Standard Reference',
    null,
    '17a9350829155b3923fe19e7330db50a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '17a9350829155b3923fe19e7330db50a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is celebrated in the Baisakhi'),
            ('B', 'It is celebrated in the Magha'),
            ('C', 'It marks the death of the Guru'),
            ('D', 'The birth anniversary of the first Sikh Guru is celebrated in the Kartika and it is the Gurpurab')
           ) as v(label, option_text)
 where q.question_hash = '17a9350829155b3923fe19e7330db50a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Vaisakhi'' is:',
    'The Vaisakhi, celebrated on 13 or 14 April, is the harvest festival of the Punjab and it marks the founding of the Khalsa by the Guru Gobind Singh in 1699.',
    'easy',
    'Standard Reference',
    null,
    '041dc85bedd1c08e63a61d7a4dae1933'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '041dc85bedd1c08e63a61d7a4dae1933'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The harvest festival of the Assam'),
            ('B', 'The festival of the temple'),
            ('C', 'The harvest festival of the Punjab and the day of the formation of the Khalsa in 1699'),
            ('D', 'The festival of the lights')
           ) as v(label, option_text)
 where q.question_hash = '041dc85bedd1c08e63a61d7a4dae1933'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Gudi Padwa'' is the:',
    'The Gudi Padwa, the Marathi new year, is celebrated on the first day of the Chaitra and the Uttarakhand and the Gudi flags are hoisted.',
    'medium',
    'Standard Reference',
    null,
    'e723fa1f805d131584ee0af281f3bb00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e723fa1f805d131584ee0af281f3bb00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Telugu new year'),
            ('B', 'Marathi new year and the celebration of the hindu Maharashtra'),
            ('C', 'The Bengali new year'),
            ('D', 'The Tamil new year')
           ) as v(label, option_text)
 where q.question_hash = 'e723fa1f805d131584ee0af281f3bb00'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Puthandu'' is the:',
    'The Puthandu, the Tamil new year, falls on the first day of the Tamil month of Chithirai, usually in the middle of April.',
    'medium',
    'Standard Reference',
    null,
    'fe2d76c97e3b9b5014ad87e8a33b5d8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fe2d76c97e3b9b5014ad87e8a33b5d8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Assamese new year'),
            ('B', 'Tamil new year on the first day of the Tamil month of Chithirai'),
            ('C', 'The Marathi new year'),
            ('D', 'The Bengali new year')
           ) as v(label, option_text)
 where q.question_hash = 'fe2d76c97e3b9b5014ad87e8a33b5d8e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Bihu of Assam and the Baisakhi of the Punjab are:',
    'The Bihu of the Assam and the Baisakhi of the Punjab are the harvest festivals that mark the new year and the agricultural cycle of the region.',
    'medium',
    'Standard Reference',
    null,
    '62a8b8c2334b5ace49a4445515ff9292'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '62a8b8c2334b5ace49a4445515ff9292'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the religious festivals of the temples'),
            ('B', 'the national festivals'),
            ('C', 'the harvest festivals'),
            ('D', 'the new year festivals')
           ) as v(label, option_text)
 where q.question_hash = '62a8b8c2334b5ace49a4445515ff9292'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Ganesh Chaturthi'' marks the:',
    'The Ganesh Chaturthi, in the Bhadrapada, marks the birth of the Lord Ganesha and it was made a public holiday in 1893 by the British.',
    'easy',
    'Standard Reference',
    null,
    '7eb7b0bd769637c2045417202de0533f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7eb7b0bd769637c2045417202de0533f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Birth of the Lord Ganesha'),
            ('B', 'The victory of the Durga'),
            ('C', 'The birth of the Krishna'),
            ('D', 'The Mahaparinirvana')
           ) as v(label, option_text)
 where q.question_hash = '7eb7b0bd769637c2045417202de0533f'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Janmashtami festival is:',
    'The Janmashtami, the birth day of the Krishna, is celebrated in the Bhadrapada and the Dahi Handi and the Janmashtami of the Mathura and the Vrindavan are the famous ones.',
    'easy',
    'Standard Reference',
    null,
    'c6397d2cba3e32c657b060fab1e1403c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c6397d2cba3e32c657b060fab1e1403c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the birth of the Rama'),
            ('B', 'It marks the death of the Krishna'),
            ('C', 'It marks the coronation of the Rama'),
            ('D', 'Janmashtami marks the birth of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'c6397d2cba3e32c657b060fab1e1403c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Raksha Bandhan is:',
    'The Raksha Bandhan, on the full moon of the Shravana, is the festival of the brother and the sister in which the sister ties a rakhi on the wrist of the brother.',
    'easy',
    'Standard Reference',
    null,
    '22f16166befd15bf808b99651d595cbf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '22f16166befd15bf808b99651d595cbf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a festival of the brother and the sister'),
            ('B', 'the festival of the harvest'),
            ('C', 'the festival of the lamps'),
            ('D', 'the festival of the bath')
           ) as v(label, option_text)
 where q.question_hash = '22f16166befd15bf808b99651d595cbf'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Yajnavalkya and the Nirank are:',
    'The Yajnavalkya Samhita and the Nirukta are the Vedic texts of the ritual and the exegesis and the Vedas, the Brahmanas, the Aranyakas and the Upanishads are the four Vedas.',
    'hard',
    'Standard Reference',
    null,
    'dab0f518a169086abff3d6f7021d8c8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dab0f518a169086abff3d6f7021d8c8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Puranic texts'),
            ('B', 'the mathematical texts'),
            ('C', 'the Vedic sacrificial texts'),
            ('D', 'the Buddhist texts')
           ) as v(label, option_text)
 where q.question_hash = 'dab0f518a169086abff3d6f7021d8c8c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Ram Navami festival is:',
    'The Ram Navami, on the ninth day of the Chaitra, marks the birth of the Rama and it is celebrated with the processions and the kirtans.',
    'medium',
    'Standard Reference',
    null,
    '0df9cca3564d654b84071a51520bf373'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0df9cca3564d654b84071a51520bf373'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the birth of the Krishna'),
            ('B', 'It marks the death of the Rama'),
            ('C', 'It is celebrated in the Kartika'),
            ('D', 'The Ram Navami marks the birth of the Rama and the Chaitra is the month')
           ) as v(label, option_text)
 where q.question_hash = '0df9cca3564d654b84071a51520bf373'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Buddha Purnima is:',
    'The Buddha Purnima, on the full moon of the Vaisakha, marks the birth, the enlightenment and the death of the Buddha.',
    'medium',
    'Standard Reference',
    null,
    '8f3a96ec2cf5effd2c3e90cb4dd4eb11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8f3a96ec2cf5effd2c3e90cb4dd4eb11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the death of the Guru Nanak'),
            ('B', 'The Buddha Purnima marks the birth, the enlightenment and the death of the Buddha'),
            ('C', 'It marks the birth of the Mahavira'),
            ('D', 'It marks the first sermon of the Buddha')
           ) as v(label, option_text)
 where q.question_hash = '8f3a96ec2cf5effd2c3e90cb4dd4eb11'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Asalha Puja'' marks the:',
    'The Asalha Puja, on the full moon of the Ashadha, commemorates the first sermon of the Buddha at the Sarnath, the Dhamma and the Noble Eightfold Path.',
    'medium',
    'Standard Reference',
    null,
    '750e86df890cf8eedd5f0fa1dae6814d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '750e86df890cf8eedd5f0fa1dae6814d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The birth of the Buddha'),
            ('B', 'The Mahaparinirvana'),
            ('C', 'The birth of the Mahavira'),
            ('D', 'The first sermon of the Buddha at the Sarnath')
           ) as v(label, option_text)
 where q.question_hash = '750e86df890cf8eedd5f0fa1dae6814d'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Navroz'' is the:',
    'The Navroz, falling on 21 March, is the Persian new year and it is celebrated by the Parsis in India and by the Kashmiri Muslims.',
    'medium',
    'Standard Reference',
    null,
    'ac553e93b8674ce86e15f3e0053f9dad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ac553e93b8674ce86e15f3e0053f9dad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The harvest of the Punjab'),
            ('B', 'The festival of the lights'),
            ('C', 'Persian new year and the spring festival of the Parsis and the Kashmiri Muslims'),
            ('D', 'The new year of the Tamils')
           ) as v(label, option_text)
 where q.question_hash = 'ac553e93b8674ce86e15f3e0053f9dad'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kumbh Mela'' at the Prayagraj is held every:',
    'The Kumbh Mela at the Prayagraj, the Nashik and the Ujjain and the Haridwar is held every twelve years and it is the largest of the human gatherings on the earth.',
    'easy',
    'Standard Reference',
    null,
    'db09cc8d022c7438fea148f2bf5c1a1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db09cc8d022c7438fea148f2bf5c1a1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ten years'),
            ('B', 'Twelve years'),
            ('C', 'Six years'),
            ('D', 'Three years')
           ) as v(label, option_text)
 where q.question_hash = 'db09cc8d022c7438fea148f2bf5c1a1f'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kumbh Mela'' was inscribed as the intangible heritage of the humanity in:',
    'The Kumbh Mela was inscribed on the Representative List of the Intangible Cultural Heritage of Humanity by UNESCO in 2017.',
    'medium',
    'Standard Reference',
    2017,
    'aaa56807d757ecaa95aa13266bd4ac2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aaa56807d757ecaa95aa13266bd4ac2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2003'),
            ('C', '2005'),
            ('D', '2011')
           ) as v(label, option_text)
 where q.question_hash = 'aaa56807d757ecaa95aa13266bd4ac2f'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kumbh Mela'' at the Nashik is also known as:',
    'The Kumbh Mela at the Nashik is the Simhastha and it is held every twelve years on the Godavari, while the Prayagraj one is the Maha Kumbh.',
    'medium',
    'Standard Reference',
    null,
    'ee2e3c32bc937187ee6ff1b829cb4125'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee2e3c32bc937187ee6ff1b829cb4125'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ardh Kumbh'),
            ('B', 'The Kumbhayan'),
            ('C', 'The Simhastha or the Kumbha'),
            ('D', 'The Maha Kumbh')
           ) as v(label, option_text)
 where q.question_hash = 'ee2e3c32bc937187ee6ff1b829cb4125'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''World Heritage List'' of the UNESCO started in:',
    'The World Heritage List was inscribed for the first time in 1978 with the Convention of 1972 and India has the sites of the Ajanta, the Ellora, the Sanchi and the Agra from the first batch.',
    'medium',
    'Standard Reference',
    null,
    'a85c7a3de8abb8b236789965ae3e54d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a85c7a3de8abb8b236789965ae3e54d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1984'),
            ('C', '2000'),
            ('D', '1978 with the Convention of 1972')
           ) as v(label, option_text)
 where q.question_hash = 'a85c7a3de8abb8b236789965ae3e54d1'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Indian elements on the UNESCO intangible heritage list include:',
    'The Indian elements on the Representative List include the Yoga, the Kumbh Mela, the Kutiyattam, the Ramlila, the Chhau, the Kalbelia, the Vedic chanting and the Budhya Stree Mela.',
    'medium',
    'Standard Reference',
    null,
    '243a3a909bf59d98d21ba70efb097b90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '243a3a909bf59d98d21ba70efb097b90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian elements include the Yoga, the Kumbh Mela, the Kutiyattam, the Ramlila, the Chhau, the Kalbelia and the Kumbh'),
            ('B', 'Only the Yoga is from India'),
            ('C', 'There are no Indian elements'),
            ('D', 'Only the Kumbh Mela is from India')
           ) as v(label, option_text)
 where q.question_hash = '243a3a909bf59d98d21ba70efb097b90'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''UNESCO Creative Cities'' of India:',
    'Jaipur was inscribed as a UNESCO Creative City for the Crafts and the Folk Art in 2014 and Varanasi for the Creative Crafts in 2015.',
    'medium',
    'Standard Reference',
    null,
    '95221fbc960c9719fafaf27bbecc4be9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95221fbc960c9719fafaf27bbecc4be9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengaluru and Hyderabad'),
            ('B', 'Jaipur for the crafts and the folk art and Varanasi for the crafts'),
            ('C', 'Mumbai and Delhi'),
            ('D', 'Chennai and Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '95221fbc960c9719fafaf27bbecc4be9'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Kaziranga, the Manas and the Periyar are:',
    'The Project Elephant reserves include the Kaziranga, the Manas, the Periyar, the Bhadra, the Nagarhole, the Similipal and the Parambikulam.',
    'medium',
    'Standard Reference',
    null,
    '5dc753b39aecbb9793e417744826c153'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5dc753b39aecbb9793e417744826c153'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the elephant reserves'),
            ('B', 'the tiger reserves'),
            ('C', 'the Rhino reserves'),
            ('D', 'the Biosphere reserves')
           ) as v(label, option_text)
 where q.question_hash = '5dc753b39aecbb9793e417744826c153'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Madras Naturalists Society was:',
    'The Madras Naturalists'' Society, founded in 1877, had the Madras Museum in 1851 as its antecedent and the museum is one of the oldest of its kind in the country.',
    'hard',
    'Standard Reference',
    null,
    '3de0b2888f3dfca57368259f56ed4566'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3de0b2888f3dfca57368259f56ed4566'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'founded in 1877'),
            ('B', 'founded in 1851'),
            ('C', 'the same body'),
            ('D', 'founded in 1877 and the Madras Museum in 1851')
           ) as v(label, option_text)
 where q.question_hash = '3de0b2888f3dfca57368259f56ed4566'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Archaeological Survey of India was founded in 1861 and it is:',
    'The Archaeological Survey of India, founded in 1861 under the Alexander Cunningham, functions under the Ministry of Culture and it protects more than 3,500 monuments.',
    'easy',
    'Standard Reference',
    null,
    '49a5255f2d660d70e2b88dc445ecb798'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49a5255f2d660d70e2b88dc445ecb798'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'under the Ministry of Education'),
            ('B', 'under the Ministry of Culture'),
            ('C', 'founded in 1901'),
            ('D', 'a private body')
           ) as v(label, option_text)
 where q.question_hash = '49a5255f2d660d70e2b88dc445ecb798'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''National Museum'' of India was founded in:',
    'The National Museum was founded in 1949 in the erstwhile Prince of Wales'' Museum at Delhi and it has one of the largest collections of the Indian art.',
    'medium',
    'Standard Reference',
    null,
    'e3415d022bd31e0b48b1d0343a7eb7ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e3415d022bd31e0b48b1d0343a7eb7ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1851'),
            ('B', '1877'),
            ('C', '1949'),
            ('D', '1911')
           ) as v(label, option_text)
 where q.question_hash = 'e3415d022bd31e0b48b1d0343a7eb7ea'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Calico Museum'' of the Textiles is at:',
    'The Calico Museum of the Textiles, with one of the world''s largest collections of the textiles, is at Ahmedabad and it is a national museum of the textiles.',
    'hard',
    'Standard Reference',
    null,
    'caf0bd64972781ede4f7d4775bee121a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'caf0bd64972781ede4f7d4775bee121a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mumbai'),
            ('B', 'Ahmedabad'),
            ('C', 'Delhi'),
            ('D', 'Jaipur')
           ) as v(label, option_text)
 where q.question_hash = 'caf0bd64972781ede4f7d4775bee121a'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Chhatrapati Shivaji Maharaj Vastu Sangrahalaya'' was earlier known as:',
    'The Prince of Wales Museum in Mumbai was renamed the Chhatrapati Shivaji Maharaj Vastu Sangrahalaya and it houses one of the finest collections of the decorative arts.',
    'medium',
    'Standard Reference',
    null,
    'e025ec4a5cd02dc6cf861ec2a9918ae8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e025ec4a5cd02dc6cf861ec2a9918ae8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Lalit Kala Museum'),
            ('B', 'The Chawla Art Gallery'),
            ('C', 'The Prince of Wales Museum'),
            ('D', 'The Salarjung Museum')
           ) as v(label, option_text)
 where q.question_hash = 'e025ec4a5cd02dc6cf861ec2a9918ae8'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Salarjung Museum'' is at:',
    'The Salarjung Museum at Hyderabad, with a collection of over 40,000 objects, is one of the largest museums in the world.',
    'easy',
    'Standard Reference',
    null,
    '6b9657f5caf61bd7e2c047aa57d304e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6b9657f5caf61bd7e2c047aa57d304e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aurangabad'),
            ('B', 'Jaipur'),
            ('C', 'Bhopal'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '6b9657f5caf61bd7e2c047aa57d304e8'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Great Stupa at Sanchi is:',
    'The Great Stupa at Sanchi was commissioned by the Ashoka and the elaborately carved gateways were added in the subsequent centuries, mainly in the Satavahana and the Gupta periods.',
    'medium',
    'Standard Reference',
    null,
    'be33a4ebab98b4513bb08dd88ee4c632'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'be33a4ebab98b4513bb08dd88ee4c632'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sanchi was built by the Ashoka and the gateways were added later'),
            ('B', 'The Sanchi was built by the Ashoka and the gateways are of the Gupta period'),
            ('C', 'It was built by the Kanishka'),
            ('D', 'It was built by the Satavahanas')
           ) as v(label, option_text)
 where q.question_hash = 'be33a4ebab98b4513bb08dd88ee4c632'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Bateshwar temples in the Madhya Pradesh are:',
    'The Bateshwar group of the 51 Shaiva temples in the Madhya Pradesh was built by the Paramara king Bhoja and it is one of the finest examples of the Central Indian temple architecture.',
    'hard',
    'Standard Reference',
    null,
    '0ce030e37b27ebcc130bcdfbb2b3b329'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0ce030e37b27ebcc130bcdfbb2b3b329'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Vijayanagara monuments'),
            ('B', 'a group of the 51 Shaiva temples of the Paramara dynasty'),
            ('C', 'the Buddhist caves'),
            ('D', 'the Jain temples')
           ) as v(label, option_text)
 where q.question_hash = '0ce030e37b27ebcc130bcdfbb2b3b329'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Chausath Yogini temple of the 9th century is:',
    'The Chausath Yogini temple at the Morena in the Madhya Pradesh is a circular shrine of the 9th century with 64 cells and it is a unique structure.',
    'hard',
    'Standard Reference',
    null,
    'ca56bb3eea2969e385fc7777a9aebce3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ca56bb3eea2969e385fc7777a9aebce3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cave temple'),
            ('B', 'in the Assam'),
            ('C', 'in the Madhya Pradesh and is a circular shrine with 64 cells'),
            ('D', 'in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'ca56bb3eea2969e385fc7777a9aebce3'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Rani ki Vav'' at Patan was built in the:',
    'The Rani ki Vav, the stepwell of the Solanki king Bhima I, was built in the 11th century at Patan in the Gujarat and it was inscribed as a World Heritage site in 2014.',
    'medium',
    'Standard Reference',
    null,
    'b2e0cccadd40a02b374bf9497f243452'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b2e0cccadd40a02b374bf9497f243452'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '11th century and it is a UNESCO World Heritage site'),
            ('B', '13th century'),
            ('C', '8th century'),
            ('D', '16th century')
           ) as v(label, option_text)
 where q.question_hash = 'b2e0cccadd40a02b374bf9497f243452'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Konark temple of the Odisha is:',
    'The Konark temple, the chariot of the sun god, was built by the Narasimhadeva I of the Eastern Ganga dynasty in the 13th century and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    '6b60b480cecaeeb48f8f0f29a1cbfa7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6b60b480cecaeeb48f8f0f29a1cbfa7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'built by the Cholas'),
            ('B', 'built by the Mughals'),
            ('C', 'built by the Vijayanagara'),
            ('D', 'a chariot of the Surya and it was built by the Narasimhadeva I of the Eastern Ganga')
           ) as v(label, option_text)
 where q.question_hash = '6b60b480cecaeeb48f8f0f29a1cbfa7f'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Khangchendzonga National Park is:',
    'The Khangchendzonga National Park, inscribed as a mixed cultural and natural World Heritage site in 2016, protects the snow leopard, the red panda and the Himalayan tiger.',
    'medium',
    'Standard Reference',
    2016,
    'fc3ba432f29b48345ebc5b370c3e2fc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc3ba432f29b48345ebc5b370c3e2fc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Khangchendzonga National Park in the Sikkim was inscribed in 2016 and it protects the snow leopard'),
            ('B', 'It was inscribed in 1983'),
            ('C', 'It is in the Ladakh'),
            ('D', 'It protects the Asiatic lion')
           ) as v(label, option_text)
 where q.question_hash = 'fc3ba432f29b48345ebc5b370c3e2fc3'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Chhatrapati Shivaji Terminus of the Mumbai was:',
    'The Chhatrapati Shivaji Terminus, the Victorian Gothic and Art Deco ensemble of the Mumbai, was inscribed as a World Heritage site in 2004.',
    'medium',
    'Standard Reference',
    null,
    'af80b08356219bf9ef20843aaead4560'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'af80b08356219bf9ef20843aaead4560'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 1993'),
            ('B', 'inscribed in 2016'),
            ('C', 'inscribed in 1983'),
            ('D', 'inscribed in 2004')
           ) as v(label, option_text)
 where q.question_hash = 'af80b08356219bf9ef20843aaead4560'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Agra Fort was:',
    'The Agra Fort was inscribed in 1983 in the first batch and the Red Fort Complex of Delhi in 1993.',
    'medium',
    'Standard Reference',
    null,
    '8fa5cf2a919d21e49f04b64afcfb05ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8fa5cf2a919d21e49f04b64afcfb05ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 2004'),
            ('B', 'inscribed in 1983 and the Red Fort in 1993'),
            ('C', 'inscribed in 1983'),
            ('D', 'inscribed in 1993')
           ) as v(label, option_text)
 where q.question_hash = '8fa5cf2a919d21e49f04b64afcfb05ad'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Martand temple is:',
    'The Martand or the Martand temple of the sun, of the 8th century, is in the Kashmir and it is one of the finest of the Hindu temples of the early period.',
    'hard',
    'Standard Reference',
    null,
    'cf2b5f8bf057c741ddd858adeaed42b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cf2b5f8bf057c741ddd858adeaed42b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Buddhist monastery'),
            ('B', 'in the Himachal Pradesh'),
            ('C', 'the 8th century temple of the sun god in the Kashmir'),
            ('D', 'built by the Mughals')
           ) as v(label, option_text)
 where q.question_hash = 'cf2b5f8bf057c741ddd858adeaed42b2'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Ellora caves are:',
    'The Ellora caves, cut between the 6th and the 10th centuries, contain the Buddhist, the Hindu and the Jain monuments and they were inscribed in 1983.',
    'medium',
    'Standard Reference',
    null,
    'c91cc4cb9f38346234e304182edbfaf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c91cc4cb9f38346234e304182edbfaf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are only the Buddhist caves'),
            ('B', 'They were built in the 18th century'),
            ('C', 'They are the structural temples'),
            ('D', 'The Ellora caves, of the 1st to the 10th century, show the Buddhist, the Hindu and the Jain rock-cut architecture')
           ) as v(label, option_text)
 where q.question_hash = 'c91cc4cb9f38346234e304182edbfaf7'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Hampi group of monuments, the ruins of the Vijayanagara was:',
    'The Group of Monuments at Hampi, the ruins of the Vijayanagara capital, was inscribed as a World Heritage site in 1986.',
    'medium',
    'Standard Reference',
    null,
    '720978d508534b6ed58edf4778530a2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '720978d508534b6ed58edf4778530a2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 2004'),
            ('B', 'in the Rajasthan'),
            ('C', 'inscribed in 1986'),
            ('D', 'inscribed in 1993')
           ) as v(label, option_text)
 where q.question_hash = '720978d508534b6ed58edf4778530a2e'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Rock-Hewn Churches'' of the Goa were inscribed in:',
    'The Churches and the Convents of the Goa, with the Rock-Hewn Churches, were inscribed as a World Heritage site in 1986.',
    'medium',
    'Standard Reference',
    null,
    '7607e4e7fafee6b8126ab179845101b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7607e4e7fafee6b8126ab179845101b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004'),
            ('B', '1986'),
            ('C', '1993'),
            ('D', '1983')
           ) as v(label, option_text)
 where q.question_hash = '7607e4e7fafee6b8126ab179845101b4'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'Great Himalayan National Park was:',
    'The Great Himalayan National Park in the Himachal Pradesh was inscribed in 2014 and it is a biosphere reserve as well.',
    'medium',
    'Standard Reference',
    2014,
    '46b61a7229c3b40933bb91400ea9535b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '46b61a7229c3b40933bb91400ea9535b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 2014 for the outstanding natural beauty and the diverse habitats'),
            ('B', 'inscribed in 1983'),
            ('C', 'inscribed in 2005'),
            ('D', 'inscribed in 1993')
           ) as v(label, option_text)
 where q.question_hash = '46b61a7229c3b40933bb91400ea9535b'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'They were inscribed in 1984 and they are:',
    'The Group of Monuments at Mahabalipuram, the rock-cut caves and the Shore Temple of the Pallava period, was inscribed in 1984.',
    'medium',
    'Standard Reference',
    null,
    'a9323f5ed6aeb5f23a531d683eaaedcd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a9323f5ed6aeb5f23a531d683eaaedcd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 1993'),
            ('B', 'of the Vijayanagara period'),
            ('C', 'of the Pallava period'),
            ('D', 'of the Chola period')
           ) as v(label, option_text)
 where q.question_hash = 'a9323f5ed6aeb5f23a531d683eaaedcd'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Rani ki Vav at Patan is:',
    'The Rani ki Vav, the stepwell of the 11th century at Patan, was inscribed as a World Heritage site in 2014.',
    'medium',
    'Standard Reference',
    null,
    'ea9a9ace91ad8b66d8c7d71741c7a3ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ea9a9ace91ad8b66d8c7d71741c7a3ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a stepwell and it was inscribed in 2014'),
            ('B', 'a temple at the Konark'),
            ('C', 'a mosque at the Ahmedabad'),
            ('D', 'a cave at the Ajanta')
           ) as v(label, option_text)
 where q.question_hash = 'ea9a9ace91ad8b66d8c7d71741c7a3ce'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Dhol Vikram is:',
    'The Dhol Vikram, a Neolithic settlement of the 3rd millennium BCE in the Gujarat, was inscribed as a World Heritage site in 2021.',
    'hard',
    'Standard Reference',
    2021,
    '552602397fa493af3f703ce40d8a4b8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '552602397fa493af3f703ce40d8a4b8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Buddhist stupa of the Bihar'),
            ('B', 'a temple of the Tamil Nadu'),
            ('C', 'a fort of the Rajasthan'),
            ('D', 'a Neolithic site in the Gujarat and it was inscribed in 2021')
           ) as v(label, option_text)
 where q.question_hash = '552602397fa493af3f703ce40d8a4b8c'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'Consider the following statements. Which of them is correct with regard to the inscribed 2023?',
    'The Santiniketan, the ashram and the university campus of the Rabindranath Tagore, was inscribed as a World Heritage cultural site in 2023.',
    'medium',
    'Standard Reference',
    2023,
    'd1c47afd8b8ce27cbb87db46d8a0fba6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd1c47afd8b8ce27cbb87db46d8a0fba6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a natural site'),
            ('B', 'inscribed in 2023 for the ashram and the university campus of the Tagore'),
            ('C', 'inscribed in 1983'),
            ('D', 'inscribed in 2016')
           ) as v(label, option_text)
 where q.question_hash = 'd1c47afd8b8ce27cbb87db46d8a0fba6'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Jhansi Fort is:',
    'The Jhansi Fort, built by the Orchha ruler Bir Singh Deo, was inscribed in 2013 as a part of the Hill Forts of Rajasthan group.',
    'hard',
    'Standard Reference',
    null,
    '4a9dc7b43f417c02e80a68dfa8c2a6fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4a9dc7b43f417c02e80a68dfa8c2a6fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'not a World Heritage site'),
            ('B', 'a UNESCO World Heritage site as a part of the Hill Forts of Rajasthan'),
            ('C', 'a Buddhist site'),
            ('D', 'a marine site')
           ) as v(label, option_text)
 where q.question_hash = '4a9dc7b43f417c02e80a68dfa8c2a6fc'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Sanchi stupa''s original core brick structure was built under which ruler?',
    'The original brick stupa at Sanchi was built by Ashoka and later enlarged and faced with stone.',
    'easy',
    'NCERT Class XI',
    null,
    'd3a16de89a14b9cbc12f457a8f15e228'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd3a16de89a14b9cbc12f457a8f15e228'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ashoka'),
            ('B', 'Kanishka'),
            ('C', 'Samudragupta'),
            ('D', 'Harsha')
           ) as v(label, option_text)
 where q.question_hash = 'd3a16de89a14b9cbc12f457a8f15e228'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The chaitya hall at Karle was excavated mainly under the patronage of which dynasty?',
    'The great rock-cut chaitya hall at Karle was excavated chiefly under Satavahana patronage.',
    'medium',
    'NCERT Class XI',
    null,
    '29abb2ce72bbf9fcc189b4daf25f1603'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '29abb2ce72bbf9fcc189b4daf25f1603'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta'),
            ('B', 'Chola'),
            ('C', 'Satavahana'),
            ('D', 'Maurya')
           ) as v(label, option_text)
 where q.question_hash = '29abb2ce72bbf9fcc189b4daf25f1603'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Lomas Rishi cave facade imitates which architectural feature?',
    'The Lomas Rishi cave in the Barabar hills has a facade that imitates a wooden chaitya arch.',
    'medium',
    'NCERT Class XI',
    null,
    '390728174d8e00a23b7eec902de14b9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '390728174d8e00a23b7eec902de14b9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'wooden chaitya arch'),
            ('B', 'stupa dome'),
            ('C', 'torana gateway'),
            ('D', 'vimana tower')
           ) as v(label, option_text)
 where q.question_hash = '390728174d8e00a23b7eec902de14b9f'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'Which material was chiefly used for carving the Gandhara school Buddha images?',
    'Gandhara school Buddha images were typically carved in grey schist, reflecting Greco-Roman influence.',
    'medium',
    'NCERT Class XI',
    null,
    '1ef2b9ae3b513cc526f5f552ea305e86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1ef2b9ae3b513cc526f5f552ea305e86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Marble'),
            ('B', 'Bronze'),
            ('C', 'Grey schist'),
            ('D', 'Sandstone')
           ) as v(label, option_text)
 where q.question_hash = '1ef2b9ae3b513cc526f5f552ea305e86'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Didarganj Yakshi sculpture belongs to which period?',
    'The Didarganj Yakshi, with its highly polished surface and chauri, is a Mauryan period sculpture.',
    'medium',
    'NCERT Class XI',
    null,
    '23caf49e694d98f02de2526578d5c678'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '23caf49e694d98f02de2526578d5c678'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mauryan'),
            ('B', 'Gupta'),
            ('C', 'Chola'),
            ('D', 'Pala')
           ) as v(label, option_text)
 where q.question_hash = '23caf49e694d98f02de2526578d5c678'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Chola bronze images were cast using which technique?',
    'The Chola bronze images were cast using the lost-wax casting technique.',
    'medium',
    'NCERT Class XI',
    null,
    'c51c215e773ba037d1c709abdc733fd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c51c215e773ba037d1c709abdc733fd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Repousse'),
            ('B', 'Chiselling'),
            ('C', 'Lost-wax casting'),
            ('D', 'Sand casting')
           ) as v(label, option_text)
 where q.question_hash = 'c51c215e773ba037d1c709abdc733fd0'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Who wrote the collection of poems ''Gitanjali''?',
    'The collection of poems ''Gitanjali'' was written by Rabindranath Tagore.',
    'easy',
    'NCERT Class XI',
    null,
    '6b2e32d3b78d076392446c69bf210026'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b2e32d3b78d076392446c69bf210026'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Premchand'),
            ('B', 'Rabindranath Tagore'),
            ('C', 'Bankim Chandra'),
            ('D', 'Sarojini Naidu')
           ) as v(label, option_text)
 where q.question_hash = '6b2e32d3b78d076392446c69bf210026'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Diwali is celebrated on the new moon day of which lunar month?',
    'Diwali is celebrated on the new moon day (amavasya) of the lunar month Kartika.',
    'easy',
    'NCERT Class XI',
    null,
    '86092ff20fc50392bbe64ae2cc4f2a7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86092ff20fc50392bbe64ae2cc4f2a7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vaishakha'),
            ('B', 'Kartika'),
            ('C', 'Ashvina'),
            ('D', 'Chaitra')
           ) as v(label, option_text)
 where q.question_hash = '86092ff20fc50392bbe64ae2cc4f2a7f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the novel ''Godan''?',
    'The novel ''Godan'' was written by Munshi Premchand.',
    'easy',
    'NCERT Class XI',
    null,
    '23dee6895b81173a37110b34128279bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23dee6895b81173a37110b34128279bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bankim Chandra'),
            ('B', 'Sharatchandra'),
            ('C', 'Premchand'),
            ('D', 'Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '23dee6895b81173a37110b34128279bc'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Nataraja of Chidambaram is a famous example of which art form?',
    'The Nataraja of Chidambaram is a famous example of Chola bronze sculpture.',
    'easy',
    'NCERT Class XI',
    null,
    '6e2a5e70ffc776d5c8755958256658ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6e2a5e70ffc776d5c8755958256658ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pala bronze'),
            ('B', 'Terracotta'),
            ('C', 'Chola bronze sculpture'),
            ('D', 'Gupta stone sculpture')
           ) as v(label, option_text)
 where q.question_hash = '6e2a5e70ffc776d5c8755958256658ee'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Kailasa temple at Ellora was built by which dynasty?',
    'The Kailasa temple at Ellora was built by the Rashtrakuta king Krishna I in the 8th century.',
    'medium',
    'NCERT Class XI',
    null,
    'aa6c11080592c5cc8766bec5832d72da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aa6c11080592c5cc8766bec5832d72da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rashtrakuta'),
            ('B', 'Chalukya'),
            ('C', 'Pallava'),
            ('D', 'Chola')
           ) as v(label, option_text)
 where q.question_hash = 'aa6c11080592c5cc8766bec5832d72da'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Ramappa temple (Kakatiya) at Warangal was inscribed as a UNESCO World Heritage site in which year?',
    'The Ramappa temple was inscribed as a UNESCO World Heritage site in 2021.',
    'medium',
    'NCERT Class XII',
    null,
    'cae623086932c6718d72c35f1e997191'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cae623086932c6718d72c35f1e997191'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2021'),
            ('C', '2019'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = 'cae623086932c6718d72c35f1e997191'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Kangra school of painting flourished in which region?',
    'The Kangra school of painting flourished in Himachal Pradesh under Raja Sansar Chand.',
    'medium',
    'NCERT Class XI',
    null,
    'a38a1c8570476749b51288a40edae26e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a38a1c8570476749b51288a40edae26e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab'),
            ('B', 'Rajasthan'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'a38a1c8570476749b51288a40edae26e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Which of the following statements regarding the Tamil Nadu is correct?',
    'The festival of Pongal is celebrated in Tamil Nadu as a harvest festival.',
    'easy',
    'NCERT Class XI',
    null,
    '6c06ab60dfce86d05640a7a96118ce26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6c06ab60dfce86d05640a7a96118ce26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Karnataka'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '6c06ab60dfce86d05640a7a96118ce26'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Which of the following statements regarding the Kerala is correct?',
    'The festival of Thrissur Pooram is celebrated in Kerala.',
    'medium',
    'NCERT Class XI',
    null,
    'dd39a7cf0f8dab90e75bd6babba2c43a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd39a7cf0f8dab90e75bd6babba2c43a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'dd39a7cf0f8dab90e75bd6babba2c43a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Arthashastra'', the treatise on statecraft, is attributed to which author?',
    'The Arthashastra is attributed to Kautilya (Chanakya), the minister of Chandragupta Maurya.',
    'medium',
    'NCERT Class XI',
    null,
    '32d69ef53cea0d674199cefadf1a6132'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '32d69ef53cea0d674199cefadf1a6132'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kautilya'),
            ('B', 'Banabhatta'),
            ('C', 'Kalidasa'),
            ('D', 'Panini')
           ) as v(label, option_text)
 where q.question_hash = '32d69ef53cea0d674199cefadf1a6132'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Which GI tagged handicraft is the clay toy of Channapatna in Karnataka?',
    'Channapatna toys are GI tagged clay and wood lacquerware toys from Karnataka.',
    'medium',
    'NCERT Class XI',
    null,
    'e6cdfab766a7b85f35a06bde01fce44b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e6cdfab766a7b85f35a06bde01fce44b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nirmal toys'),
            ('B', 'Channapatna toys'),
            ('C', 'Kondapalli toys'),
            ('D', 'Thanjavur dolls')
           ) as v(label, option_text)
 where q.question_hash = 'e6cdfab766a7b85f35a06bde01fce44b'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The varaha panel at Udayagiri near Vidisha shows Vishnu rescuing which figure?',
    'The Varaha panel shows Vishnu in his boar avatar rescuing the Earth goddess from the cosmic waters.',
    'hard',
    'NCERT Class XI',
    null,
    '512460a31110ca925101f9d630b18a8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '512460a31110ca925101f9d630b18a8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lakshmi'),
            ('B', 'Brahma'),
            ('C', 'Indra'),
            ('D', 'Earth (Prithvi)')
           ) as v(label, option_text)
 where q.question_hash = '512460a31110ca925101f9d630b18a8d'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The festival of Vaisakhi is a harvest festival celebrated in which state?',
    'Vaisakhi is a harvest festival celebrated in Punjab.',
    'easy',
    'NCERT Class XI',
    null,
    'eff0e69f0283efcb5c111a196ac1cad3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eff0e69f0283efcb5c111a196ac1cad3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Punjab'),
            ('D', 'Haryana')
           ) as v(label, option_text)
 where q.question_hash = 'eff0e69f0283efcb5c111a196ac1cad3'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Phad painting tradition belongs to which state?',
    'The Phad painting tradition belongs to Rajasthan and depicts stories of local deities.',
    'easy',
    'NCERT Class XI',
    null,
    '012492ea9a50f4feda8b76aa2eba754c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '012492ea9a50f4feda8b76aa2eba754c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Gujarat'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '012492ea9a50f4feda8b76aa2eba754c'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Mrichchhakatika'' was written by which author?',
    'The ''Mrichchhakatika'' was written by Sudraka.',
    'hard',
    'NCERT Class XI',
    null,
    '2f6891088bf83c0ede15ac624dd17d47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f6891088bf83c0ede15ac624dd17d47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhasa'),
            ('B', 'Bharavi'),
            ('C', 'Sudraka'),
            ('D', 'Kalidasa')
           ) as v(label, option_text)
 where q.question_hash = '2f6891088bf83c0ede15ac624dd17d47'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Buddha Charita'' was written by which author?',
    'The ''Buddha Charita'' was written by Ashvaghosha.',
    'hard',
    'NCERT Class XI',
    null,
    'f9ab95dd80a3edcc7a3ea4bd6cb84e6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f9ab95dd80a3edcc7a3ea4bd6cb84e6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vasubandhu'),
            ('B', 'Nagarjuna'),
            ('C', 'Dignaga'),
            ('D', 'Ashvaghosha')
           ) as v(label, option_text)
 where q.question_hash = 'f9ab95dd80a3edcc7a3ea4bd6cb84e6a'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Warli painting is practised mainly by which community?',
    'Warli painting is practised mainly by the tribal community of Maharashtra.',
    'easy',
    'NCERT Class XI',
    null,
    '483a661f4d19e6a48cd177c71253d27e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '483a661f4d19e6a48cd177c71253d27e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Santhal of Jharkhand'),
            ('B', 'Tribal community of Maharashtra'),
            ('C', 'Bhil of Madhya Pradesh'),
            ('D', 'Gond of Chhattisgarh')
           ) as v(label, option_text)
 where q.question_hash = '483a661f4d19e6a48cd177c71253d27e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The festival of Onam is the harvest festival of which state?',
    'Onam is the harvest festival of Kerala.',
    'easy',
    'NCERT Class XI',
    null,
    '5e98ed4db04830d8069f796988eade22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5e98ed4db04830d8069f796988eade22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '5e98ed4db04830d8069f796988eade22'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the ''Rajatarangini'', a chronicle of the kings of Kashmir?',
    'The ''Rajatarangini'' was written by Kalhana, a chronicle of the kings of Kashmir.',
    'medium',
    'NCERT Class XI',
    null,
    '3945f87177a69c9d74996c5982b94958'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3945f87177a69c9d74996c5982b94958'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harsha'),
            ('B', 'Kalhana'),
            ('C', 'Banabhatta'),
            ('D', 'Kalidasa')
           ) as v(label, option_text)
 where q.question_hash = '3945f87177a69c9d74996c5982b94958'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Gudivada'' and ''Kalamkari'' of Andhra Pradesh traditionally used which dyes?',
    'Kalamkari traditionally used natural vegetable dyes and a mordant of iron or alum.',
    'medium',
    'NCERT Class XI',
    null,
    '287a9893cccf3d759f3e7480fc53372a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '287a9893cccf3d759f3e7480fc53372a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mineral pigments'),
            ('B', 'Animal dyes'),
            ('C', 'Natural vegetable dyes'),
            ('D', 'Synthetic dyes')
           ) as v(label, option_text)
 where q.question_hash = '287a9893cccf3d759f3e7480fc53372a'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Chariot'' or ''Ratha'' temples at Mahabalipuram were built by which dynasty?',
    'The ratha temples at Mahabalipuram were built by the Pallava dynasty.',
    'medium',
    'NCERT Class XI',
    null,
    '79b9f8350515f7a5def1e5b95da52000'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '79b9f8350515f7a5def1e5b95da52000'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chera'),
            ('B', 'Pallava'),
            ('C', 'Chola'),
            ('D', 'Pandya')
           ) as v(label, option_text)
 where q.question_hash = '79b9f8350515f7a5def1e5b95da52000'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Rigveda'' is organised into how many mandalas (books)?',
    'The Rigveda is organised into ten mandalas.',
    'medium',
    'NCERT Class XI',
    null,
    '15aa4808f567ee8ad994855816ecf3c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '15aa4808f567ee8ad994855816ecf3c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Ten'),
            ('C', 'Eight'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = '15aa4808f567ee8ad994855816ecf3c0'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which of the following statements regarding the Seven is correct?',
    'The Ramayana of Valmiki is divided into seven kandas.',
    'medium',
    'NCERT Class XI',
    null,
    'b981a351ba5c610b986f37dc13d3a9ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b981a351ba5c610b986f37dc13d3a9ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eight'),
            ('B', 'Six'),
            ('C', 'Seven'),
            ('D', 'Five')
           ) as v(label, option_text)
 where q.question_hash = 'b981a351ba5c610b986f37dc13d3a9ea'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Arthashastra'' deals primarily with which subject?',
    'The Arthashastra deals primarily with statecraft and economic policy.',
    'medium',
    'NCERT Class XI',
    null,
    '68661f9b5ec657a3842312331b2bfa14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '68661f9b5ec657a3842312331b2bfa14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Astrology'),
            ('B', 'Statecraft and economic policy'),
            ('C', 'Medicine'),
            ('D', 'Grammar')
           ) as v(label, option_text)
 where q.question_hash = '68661f9b5ec657a3842312331b2bfa14'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Shore Temple of the Mahabalipuram was:',
    'The Shore Temple of the Mahabalipuram, a World Heritage site, was built by the Pallava king Narasimhavarman I in the early eighth century.',
    'easy',
    'Standard Reference',
    null,
    'cadc9798821d2fa8947e5f32c7ad92ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cadc9798821d2fa8947e5f32c7ad92ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'built by the Chalukyas'),
            ('B', 'built by the Pallava king Narasimhavarman I'),
            ('C', 'built by the Rajaraja Chola'),
            ('D', 'built by the Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = 'cadc9798821d2fa8947e5f32c7ad92ae'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Kailasanatha'' of the Kanchipuram:',
    'The Kailasanatha temple of the Kanchipuram was built by the Pallava king Narasimhavarman I as a stone imitation of the rock-cut Kailasa of the Ellora.',
    'medium',
    'Standard Reference',
    null,
    '3c0e2d1a65be127d772f6bf81a7e21c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c0e2d1a65be127d772f6bf81a7e21c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a Vijayanagara temple'),
            ('B', 'Is a rock-cut replica of the Ellora Kailasa in the stone'),
            ('C', 'Is a Chola temple'),
            ('D', 'Is a Buddhist monastery')
           ) as v(label, option_text)
 where q.question_hash = '3c0e2d1a65be127d772f6bf81a7e21c1'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Mamallapuram was:',
    'The Mamallapuram was the port of the Pallava kings and the five monolithic Rathas and the Mandapas were the experiments of the sculptural art of the period.',
    'medium',
    'Standard Reference',
    null,
    '0b04d99135f172171d60352c8fdb44f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b04d99135f172171d60352c8fdb44f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the port of the Vijayanagara'),
            ('B', 'the capital of the Gangas'),
            ('C', 'the port of the Pallavas and the Rathas were the experimental ones'),
            ('D', 'the port of the Cholas')
           ) as v(label, option_text)
 where q.question_hash = '0b04d99135f172171d60352c8fdb44f5'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Shore Temple of the Mamallapuram is:',
    'The Shore Temple, built by the Narasimhavarman I, is the earliest of the Dravidian temples in the stone and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    'f667d36dbc9fc475b340e47303625d2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f667d36dbc9fc475b340e47303625d2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Chola temple'),
            ('B', 'a Vijayanagara temple'),
            ('C', 'a Buddhist monastery'),
            ('D', 'the oldest of the Dravidian temples in the stone')
           ) as v(label, option_text)
 where q.question_hash = 'f667d36dbc9fc475b340e47303625d2d'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Dashavatara'' of the Mahabalipuram:',
    'The Dashavatara Cave of the Mahabalipuram has the relief of the ten avatars of Vishnu, and the Krishnanattam of Kerala also has the Dashavatara tradition.',
    'medium',
    'Standard Reference',
    null,
    '5a151c6bf8d8f45485e4671a5b7b495c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5a151c6bf8d8f45485e4671a5b7b495c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the relief of the ten avatars of Vishnu'),
            ('B', 'It is a panel of the ten kings'),
            ('C', 'It is the ten Rathas'),
            ('D', 'It is a Mahabharata scene')
           ) as v(label, option_text)
 where q.question_hash = '5a151c6bf8d8f45485e4671a5b7b495c'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Ganesha Ratha'' of the Mahabalipuram:',
    'The Ganesha Ratha, a monolithic ratha, is carved with the life-size panels of the Shiva, the Vishnu and the Durga.',
    'hard',
    'Standard Reference',
    null,
    '22204da2d2bb1a0859bd6a223b6808ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '22204da2d2bb1a0859bd6a223b6808ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the monolithic ratha with the carved panels of the Shiva and the Vishnu and the Durga'),
            ('B', 'It is a cave temple'),
            ('C', 'It is a Chola temple'),
            ('D', 'It is a fort')
           ) as v(label, option_text)
 where q.question_hash = '22204da2d2bb1a0859bd6a223b6808ab'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Otteri of the Mahabalipuram is:',
    'The Otteri is a small rock-cut temple of the Mahabalipuram with the life-size panels of the Shiva and the Vishnu, and it is a fine example of the Pallava art.',
    'hard',
    'Standard Reference',
    null,
    '17eb0f6b8008294e839aee3952118805'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '17eb0f6b8008294e839aee3952118805'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a large temple'),
            ('B', 'It is a chariot'),
            ('C', 'It is a monastery'),
            ('D', 'Is a small rock-cut temple of the Mahabalipuram with the Shiva and the Vishnu')
           ) as v(label, option_text)
 where q.question_hash = '17eb0f6b8008294e839aee3952118805'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Somapura of the Banteay Srei is:',
    'The Somapura, the great temple of the Banteay Srei in the Cambodia, was built by the Suryavarman II and the name means the ''Temple of the City''.',
    'hard',
    'Standard Reference',
    null,
    '529690bb85467dce115357c1c2ba5892'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '529690bb85467dce115357c1c2ba5892'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a temple of the Kerala'),
            ('B', 'Is the great temple of the Banteay Srei in the Cambodia and the name means the Temple of the City'),
            ('C', 'It is a temple of the Odisha'),
            ('D', 'It is a temple of the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '529690bb85467dce115357c1c2ba5892'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Angkor Wat'' was built by:',
    'The Angkor Wat, the largest religious monument of the world, was built by the Khmer king Surya Varman II in the early twelfth century.',
    'medium',
    'Standard Reference',
    null,
    'ef0598d7ff2331baac5b77068b4c195d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ef0598d7ff2331baac5b77068b4c195d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pagan king'),
            ('B', 'The Sri Lankan king'),
            ('C', 'Surya Varman II of the Khmer Empire'),
            ('D', 'The Champa king')
           ) as v(label, option_text)
 where q.question_hash = 'ef0598d7ff2331baac5b77068b4c195d'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Borobudur'' of Indonesia:',
    'The Borobudur, the largest Buddhist monument of the world, was built by the Sailendra dynasty of the Java and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    'd2826aa3ef7cffe780509e90b53ccfde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd2826aa3ef7cffe780509e90b53ccfde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Hindu temple'),
            ('B', 'It is a mosque'),
            ('C', 'It is a Jain temple'),
            ('D', 'Is the largest Buddhist monument of the world and was built by the Sailendra dynasty')
           ) as v(label, option_text)
 where q.question_hash = 'd2826aa3ef7cffe780509e90b53ccfde'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Wat Phra of the Bangkok is:',
    'The Wat Phra, the royal temple of the Emerald Buddha in the Bangkok, was inscribed as a World Heritage site in 1992.',
    'hard',
    'Standard Reference',
    null,
    '55968222087d6167fb84c5d5195486ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '55968222087d6167fb84c5d5195486ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in the Borobudur'),
            ('B', 'It is in the Peking'),
            ('C', 'Is the Temple of the Emerald Buddha in the Bangkok and a World Heritage site'),
            ('D', 'It is in the Angkor')
           ) as v(label, option_text)
 where q.question_hash = '55968222087d6167fb84c5d5195486ed'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Potala'' of Tibet:',
    'The Potala Palace, the winter palace of the Dalai Lama at the Lhasa, was inscribed as a World Heritage site in 1994.',
    'medium',
    'Standard Reference',
    null,
    '5a1c9c3cc48e3a16ad7c516f6e636026'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a1c9c3cc48e3a16ad7c516f6e636026'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a fort in the Nepal'),
            ('B', 'Is the winter palace of the Dalai Lama at the Lhasa and a World Heritage site'),
            ('C', 'It is a mosque'),
            ('D', 'It is a Hindu temple')
           ) as v(label, option_text)
 where q.question_hash = '5a1c9c3cc48e3a16ad7c516f6e636026'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Diwan-i-Khas'' of the Fatehpur Sikri:',
    'The Diwan-i-Khas of the Fatehpur Sikri has the iron pillar with the inscription of the Ashoka that was brought from Delhi.',
    'medium',
    'Standard Reference',
    null,
    '3377900a287c7481aaab71914ce7ff2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3377900a287c7481aaab71914ce7ff2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has the famous iron pillar with the inscription of the Ashoka'),
            ('B', 'It has the Taj Mahal''s cenotaph'),
            ('C', 'It has the marble throne'),
            ('D', 'It has the Charminar')
           ) as v(label, option_text)
 where q.question_hash = '3377900a287c7481aaab71914ce7ff2e'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The tomb of the Itimad-ud-Daulah is:',
    'The tomb of the Itimad-ud-Daulah, the first of the Mughal tombs at the Agra and the first to use the white marble, is the precursor of the Taj Mahal.',
    'medium',
    'Standard Reference',
    null,
    '1aaedb5171aceaeb34e7ff3a3b95b4ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1aaedb5171aceaeb34e7ff3a3b95b4ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Delhi'),
            ('B', 'the first of the Mughal tombs at the Agra and the first to use the white marble'),
            ('C', 'the tomb of the Akbar'),
            ('D', 'the tomb of the Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '1aaedb5171aceaeb34e7ff3a3b95b4ce'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Jama Masjid is:',
    'The Jama Masjid of the Fatehpur Sikri, with the Jai Mandir adjoining it, is the largest of the individual Mughal mosque complexes and it shows the congregational use of the space.',
    'medium',
    'Standard Reference',
    null,
    'd121e804f49995a3e88bd377adf10a13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd121e804f49995a3e88bd377adf10a13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Jain temple'),
            ('B', 'It is a Chola temple'),
            ('C', 'It is in the Delhi'),
            ('D', 'Is the largest of the Mughal mosque complexes with the Jai Mandir of the Akbar')
           ) as v(label, option_text)
 where q.question_hash = 'd121e804f49995a3e88bd377adf10a13'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Which of the following statements about the Agra Fort is correct?',
    'The Agra Fort, the Red Fort of the Agra, was built by the Akbar and it was completed by the Shah Jahan, who added the Diwan-i-Khas with the Musamman Burj.',
    'easy',
    'Standard Reference',
    null,
    '42eb5274b084e2424f963e19d9459ef8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42eb5274b084e2424f963e19d9459ef8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a fort of the Rajputs'),
            ('B', 'It is a fort of the Portuguese'),
            ('C', 'Is the Red Fort of the Agra built by the Akbar and it has the Diwan-i-Khas of the Shah Jahan'),
            ('D', 'It is the Red Fort of the Delhi')
           ) as v(label, option_text)
 where q.question_hash = '42eb5274b084e2424f963e19d9459ef8'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Itimad-ud-Daulah mausoleum of the Agra is:',
    'The tomb of the Itimad-ud-Daulah, built entirely of the white marble with the pietra dura, is the precursor of the Taj Mahal in the techniques and the aesthetics.',
    'medium',
    'Standard Reference',
    null,
    '05e6bd0c3ab77dddb6b30bbeffd742f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '05e6bd0c3ab77dddb6b30bbeffd742f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'built entirely of the white marble and it is the precursor of the Taj Mahal'),
            ('B', 'built of the red sandstone'),
            ('C', 'in the Delhi'),
            ('D', 'the tomb of the Akbar')
           ) as v(label, option_text)
 where q.question_hash = '05e6bd0c3ab77dddb6b30bbeffd742f5'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The golden age of the Mughal art is the period of:',
    'The Shah Jahan period is considered the golden age of the Mughal art with the refined and the formal aesthetic and the masterpieces of the Taj Mahal and the Red Fort.',
    'medium',
    'Standard Reference',
    null,
    'f38e925955e41b64f920c018e588f214'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f38e925955e41b64f920c018e588f214'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There is no golden age'),
            ('B', 'The Shah Jahan period is considered the golden age of the Mughal art'),
            ('C', 'The Akbar period is the golden age'),
            ('D', 'The Jahangir period is the golden age')
           ) as v(label, option_text)
 where q.question_hash = 'f38e925955e41b64f920c018e588f214'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Bichitr was a painter of the:',
    'The Bichitr, the leading painter of the Jahangir''s court, painted the famous portrait of the Jahangir that is now in the Bodleian Library at Oxford.',
    'hard',
    'Standard Reference',
    null,
    'eb78b581b96fd8b385081f1bb6858cb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb78b581b96fd8b385081f1bb6858cb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bichitr was a painter of the Jahangir''s court and his portrait of the Jahangir is at the Bodleian'),
            ('B', 'He was a painter of the Akbar''s court'),
            ('C', 'He was the son of the Man Singh'),
            ('D', 'He was a painter of the Deccan')
           ) as v(label, option_text)
 where q.question_hash = 'eb78b581b96fd8b385081f1bb6858cb5'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Padshahnama, the Book of Kings is:',
    'The Padshahnama, the Book of Kings, is the illustrated chronicle of the Shah Jahan''s reign and it was written by the Abdul Hamid Lahori with the 116 miniatures by the Bichitr and the other painters.',
    'medium',
    'Standard Reference',
    null,
    '000ac3c1689ff60f5cf22af5c4f4cac7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '000ac3c1689ff60f5cf22af5c4f4cac7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the chronicle of the Jahangir'),
            ('B', 'a Jain text'),
            ('C', 'the illustrated chronicle of the Shah Jahan''s reign'),
            ('D', 'the chronicle of the Akbar')
           ) as v(label, option_text)
 where q.question_hash = '000ac3c1689ff60f5cf22af5c4f4cac7'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Razmnama'' of the Akbar:',
    'The Razmnama, the Book of Wars, was the Persian translation of the Mahabharata that was commissioned by the Akbar and it was completed by the Naqd Ali Khan and the Bada Khair Khan.',
    'hard',
    'Standard Reference',
    null,
    'fb11bf946ea37cff0cdefc1687b4b469'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb11bf946ea37cff0cdefc1687b4b469'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the Persian translation of the Ramayana'),
            ('B', 'It is a translation of the Atharvaveda'),
            ('C', 'It is the biography of the Akbar'),
            ('D', 'Is the Persian translation of the Mahabharata and it was done by the Naqd Ali Khan and the Bada Khair Khan')
           ) as v(label, option_text)
 where q.question_hash = 'fb11bf946ea37cff0cdefc1687b4b469'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Akbar Nama'' of the Abul Fazl:',
    'The Akbar Nama, the chronicle of the Akbar''s reign by the Abul Fazl, has the third volume, the Ain-i-Akbari, which describes the administration and the society.',
    'medium',
    'Standard Repair',
    null,
    '3000c6dd46e8bc3c65123ed0e9a2a80a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3000c6dd46e8bc3c65123ed0e9a2a80a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a book of the music'),
            ('B', 'It is the Persian translation of the Mahabharata'),
            ('C', 'Is the chronicle of the Akbar''s reign and it has the Ain-i-Akbari'),
            ('D', 'It is the biography of the Jahangir')
           ) as v(label, option_text)
 where q.question_hash = '3000c6dd46e8bc3c65123ed0e9a2a80a'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Hamzanama'' of the Akbar:',
    'The Hamzanama, with about 140 illustrations, is the largest of the Mughal manuscripts and it narrates the adventures of the Amir Hamza.',
    'medium',
    'Standard Reference',
    null,
    '2ec72e34ed2c760f366beb804b204b00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2ec72e34ed2c760f366beb804b204b00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the largest of the Mughal manuscripts with the illustrations of the Amir Hamza''s adventures'),
            ('B', 'It is the biography of the Akbar'),
            ('C', 'It is a chronicle of the Shah Jahan'),
            ('D', 'It is a Jain text')
           ) as v(label, option_text)
 where q.question_hash = '2ec72e34ed2c760f366beb804b204b00'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Tutinama'' of the Akbar:',
    'The Tutinama, the Book of the Parrot, was the manuscript of the tales that the Akbar had translated into the Persian from the Hindi.',
    'hard',
    'Standard Reference',
    null,
    '4103f6cdd42a2713bf28d31204011692'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4103f6cdd42a2713bf28d31204011692'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Jain text'),
            ('B', 'Is the illustrated manuscript of the tales of the parrot that was translated into the Persian'),
            ('C', 'It is the chronicle of the Akbar'),
            ('D', 'It is the poem of the Amir Hamza')
           ) as v(label, option_text)
 where q.question_hash = '4103f6cdd42a2713bf28d31204011692'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The paintings patronised by the Jahangir are:',
    'The Jahangir preferred the single figure portraits, the allegorical compositions and the calligraphic works, in contrast to the narrative approach of the Akbar.',
    'medium',
    'Standard Reference',
    null,
    '88310082ee378a517b5a9e99c7f92ee1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '88310082ee378a517b5a9e99c7f92ee1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He preferred the narrative paintings'),
            ('B', 'He did not patronise the painting'),
            ('C', 'He preferred only the religious paintings'),
            ('D', 'The Jahangir preferred the allegorical and the single figure portraits and the calligraphic work')
           ) as v(label, option_text)
 where q.question_hash = '88310082ee378a517b5a9e99c7f92ee1'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Golden Apple'' of the Jahangir:',
    'The Golden Apple, of the allegorical type, shows the Jahangir holding the globe with the cherubs and the butterflies and it is in the collection of the Los Angeles County Museum.',
    'hard',
    'Standard Reference',
    null,
    '0fda299f1bfd679901ca8c5cd3da6380'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0fda299f1bfd679901ca8c5cd3da6380'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a portrait of the Akbar'),
            ('B', 'Is an allegorical composition of the Jahangir holding the globe with the butterflies and the cherubs'),
            ('C', 'It is a portrait of the Jahangir'),
            ('D', 'It is a hunting scene')
           ) as v(label, option_text)
 where q.question_hash = '0fda299f1bfd679901ca8c5cd3da6380'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Shah Jahan of the Mughal painting preferred:',
    'The Shah Jahan preferred the formal compositions, the portraiture and the court scenes, and the Mughal album of the period is the model of the refined aesthetic.',
    'medium',
    'Standard Reference',
    null,
    'f8676faeec9da968fbfb226be3be0d36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f8676faeec9da968fbfb226be3be0d36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He did not patronise the painting'),
            ('B', 'He preferred only the hunting scenes'),
            ('C', 'The Shah Jahan preferred the formal and the portraiture and the court scenes'),
            ('D', 'He preferred the allegorical works')
           ) as v(label, option_text)
 where q.question_hash = 'f8676faeec9da968fbfb226be3be0d36'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Aurangzeb period of the Mughal painting is:',
    'The Aurangzeb period is marked by the decline of the painting and the growth of the religious and the calligraphic work, as the emperor withdrew his patronage from the painters.',
    'medium',
    'Standard Reference',
    null,
    '533ace31775b67fd330edf8ee99bcfaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '533ace31775b67fd330edf8ee99bcfaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the golden age of the painting'),
            ('B', 'He was the patron of the European painters'),
            ('C', 'The painting flourished in his reign'),
            ('D', 'The Aurangzeb period is noted for the decline of the painting and the increase of the religious and the calligraphic work')
           ) as v(label, option_text)
 where q.question_hash = '533ace31775b67fd330edf8ee99bcfaf'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Pahari'' schools of the painting:',
    'The Pahari schools, the hill painting, include the Kangra, the Guler, the Bashahr and the Mandi and they flourished in the 17th and the 18th centuries.',
    'medium',
    'Standard Reference',
    null,
    '028f70d4144f2031fdbd1f337471ff17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '028f70d4144f2031fdbd1f337471ff17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include the Kangra, the Guler, the Bashahr and the Mandi'),
            ('B', 'Include only the Jaipur and the Mewar'),
            ('C', 'They are of the Deccan'),
            ('D', 'They are of Bengal')
           ) as v(label, option_text)
 where q.question_hash = '028f70d4144f2031fdbd1f337471ff17'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Bundi'' school of the painting:',
    'The Bundi school, the Hindoli and the Kotah, are known for the bold colours, the flat treatment and the intimate and the devotional themes.',
    'medium',
    'Standard Reference',
    null,
    'e90a44addba123f28f57bcc9002f91e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e90a44addba123f28f57bcc9002f91e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the Rajasthani school known for the bold colours and the flat treatment'),
            ('B', 'It is the Mughal school'),
            ('C', 'It is the Company style'),
            ('D', 'It is the Bengal school')
           ) as v(label, option_text)
 where q.question_hash = 'e90a44addba123f28f57bcc9002f91e2'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Deccani'' schools of the painting:',
    'The Deccani schools of the Bijapur, the Golconda and the Ahmadnagar have a distinct style with the Persian and the Indian elements and the literary and the devotional themes.',
    'medium',
    'Standard Reference',
    null,
    'aeb42f61e656e07e317ffaea37e6f993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aeb42f61e656e07e317ffaea37e6f993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the Rajasthani schools'),
            ('B', 'They are the Pahari schools'),
            ('C', 'They are the Bengali schools'),
            ('D', 'Include the Bijapur, the Golconda and the Ahmadnagar and the style is Deccani with the Persian and the Indian elements')
           ) as v(label, option_text)
 where q.question_hash = 'aeb42f61e656e07e317ffaea37e6f993'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The Bengal school was:',
    'The Bengal school, founded by the Abanindranath Tagore, revived the Indian and the Japanese traditions as a reaction to the academic realism of the Company painting.',
    'easy',
    'Standard Reference',
    null,
    'c7cc6263155dff1d8cdd8833347024cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7cc6263155dff1d8cdd8833347024cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the school of the photo printing'),
            ('B', 'founded by the Abanindranath Tagore and it revived the Indian tradition'),
            ('C', 'founded by the M.F. Husain'),
            ('D', 'a revival of the European realism')
           ) as v(label, option_text)
 where q.question_hash = 'c7cc6263155dff1d8cdd8833347024cd'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Jamini Roy'' was:',
    'The Jamini Roy, the most famous of the Bengal school painters, adapted the Kalighat and the Pat styles with the bold outlines and the flat colours.',
    'medium',
    'Standard Reference',
    null,
    '853af2cf8dadf55c8ca249b82c2ea499'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '853af2cf8dadf55c8ca249b82c2ea499'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter of the Madras Movement'),
            ('B', 'A sculptor'),
            ('C', 'A painter of the Bengal school who used the Kalighat and the Pat style'),
            ('D', 'A painter of the Bombay Progressive Artists'' Group')
           ) as v(label, option_text)
 where q.question_hash = '853af2cf8dadf55c8ca249b82c2ea499'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The Abanindranath Tagore was:',
    'The Abanindranath Tagore painted the Bharat Mata, the older Indian themes and the Mughal style, and he founded the Kala Bhavana at the Santiniketan.',
    'medium',
    'Standard Reference',
    null,
    'd8f684a6a6d32e88c1e09ca85d708440'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8f684a6a6d32e88c1e09ca85d708440'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He painted theBharat Mata and the older Indian themes'),
            ('B', 'He painted the modern cityscapes'),
            ('C', 'He was the founder of the Madras Movement'),
            ('D', 'He was a disciple of the Amrita Sher-Gil')
           ) as v(label, option_text)
 where q.question_hash = 'd8f684a6a6d32e88c1e09ca85d708440'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'Raja Ravi Varma is best remembered for:',
    'The Raja Ravi Varma reformed the Indian painting with the academic realism and the oil technique and the oleographs of the mythological themes reached the villages.',
    'medium',
    'Standard Reference',
    null,
    'b79f9b0af8eae444b00cb180dbdbd1cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b79f9b0af8eae444b00cb180dbdbd1cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He founded the Madras Movement'),
            ('B', 'He was a member of the Progressive Artists'' Group'),
            ('C', 'He reformed the Indian painting with the academic realism and the oil technique'),
            ('D', 'He founded the Bengal school')
           ) as v(label, option_text)
 where q.question_hash = 'b79f9b0af8eae444b00cb180dbdbd1cc'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The Madras Art Movement was:',
    'The Madras Art Movement, led by the D.P. Roy Chowdhury, the K.C.S. Paniker and the S. Dhanapal, was the south Indian counterpart of the progressive art movements.',
    'hard',
    'Standard Reference',
    null,
    '497e35e5ea6bf567a4f9f8dcf5b19afb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '497e35e5ea6bf567a4f9f8dcf5b19afb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'led by the M.F. Husain'),
            ('B', 'the movement of the Bengal school'),
            ('C', 'a European movement'),
            ('D', 'led by the D.P. Roy Chowdhury and the K.C.S. Paniker')
           ) as v(label, option_text)
 where q.question_hash = '497e35e5ea6bf567a4f9f8dcf5b19afb'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'Sadanand Bakre was:',
    'The Sadanand Bakre, a member of the Progressive Artists'' Group, died young at 27 and his work is in the National Gallery of Modern Art.',
    'hard',
    'Standard Reference',
    null,
    'b2ac41823b438c05458d75a5f65b3dfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2ac41823b438c05458d75a5f65b3dfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a painter of the Madras Movement'),
            ('B', 'a painter of the Bombay Progressive Artists'' Group who died young'),
            ('C', 'a painter of the Bengal school'),
            ('D', 'the founder of the Kalakshetra')
           ) as v(label, option_text)
 where q.question_hash = 'b2ac41823b438c05458d75a5f65b3dfd'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Ram Kumar'' was:',
    'The Ram Kumar was one of the leading painters of the post-independence India and his landscapes and the still lifes are marked by the depth of the colour.',
    'medium',
    'Standard Reference',
    null,
    'c19608804e0706fdb103f11fa7fb5154'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c19608804e0706fdb103f11fa7fb5154'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A folk painter'),
            ('B', 'A painter of the post-independence India who painted the landscapes and the still lifes'),
            ('C', 'A painter of the Bengal school'),
            ('D', 'A sculptor')
           ) as v(label, option_text)
 where q.question_hash = 'c19608804e0706fdb103f11fa7fb5154'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Tyeb Mehta'' was:',
    'The Tyeb Mehta, one of the leading painters of the modern India, is known for the bulls, the falling figures and the simple and the flat forms.',
    'medium',
    'Standard Reference',
    null,
    '6cf36bd661e45d67429a20d71ab7a7e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6cf36bd661e45d67429a20d71ab7a7e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter who used the falling figures and the bulls and the simple forms'),
            ('B', 'A painter of the Bengal school'),
            ('C', 'A sculptor of the Chola bronzes'),
            ('D', 'A folk painter of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '6cf36bd661e45d67429a20d71ab7a7e4'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Akbar Padamsee'' was:',
    'The Akbar Padamsee, a member of the Progressive Artists'' Group, was a founder of the Jehangir Art Gallery in Mumbai and the chairman of the National Gallery of Modern Art.',
    'hard',
    'Standard Reference',
    null,
    'fcc1df3de0c6a437bd76cfcdd2f0852a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fcc1df3de0c6a437bd76cfcdd2f0852a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter of the Bengal school'),
            ('B', 'A sculptor'),
            ('C', 'A folk painter'),
            ('D', 'A painter of the Bombay Progressive Artists'' Group and a founder of the Jehangir Art Gallery')
           ) as v(label, option_text)
 where q.question_hash = 'fcc1df3de0c6a437bd76cfcdd2f0852a'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Sankho Chaudhuri'' was:',
    'The Sankho Chaudhuri is a painter of the modern India who is known for the human figures and the horses with the muted palette.',
    'hard',
    'Standard Reference',
    null,
    '308d5480fd91f0ba0c7b5e05999ab8ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '308d5480fd91f0ba0c7b5e05999ab8ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A sculptor'),
            ('B', 'A film director'),
            ('C', 'A painter of the modern India known for the human figures and the horses'),
            ('D', 'A painter of the Bengal school')
           ) as v(label, option_text)
 where q.question_hash = '308d5480fd91f0ba0c7b5e05999ab8ec'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The K.G. Subramanyan is best known for:',
    'The K.G. Subramanyan drew on the Indian folk idioms, the mythology and the epics in his paintings and the murals, and he was also a scholar of the folk traditions.',
    'medium',
    'Standard Reference',
    null,
    '57a890c6600f51a4167ffcd4c3f99f70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57a890c6600f51a4167ffcd4c3f99f70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He used the Indian folk idioms and the mythology in his work'),
            ('B', 'He painted the European still lifes'),
            ('C', 'He was the founder of the Madras Movement'),
            ('D', 'He was the disciple of the Raja Ravi Varma')
           ) as v(label, option_text)
 where q.question_hash = '57a890c6600f51a4167ffcd4c3f99f70'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''V.S. Gaitonde'' was:',
    'The V.S. Gaitonde, the abstract painter of the landscapes, was called the ''Enfant Terrible'' of the Indian art and he was the first Indian to represent his work in the documenta of the Venice Biennale.',
    'hard',
    'Standard Reference',
    null,
    '47fe941f665fc1261768a5145461d6a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '47fe941f665fc1261768a5145461d6a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter of the folk art'),
            ('B', 'A sculptor'),
            ('C', 'A printmaker'),
            ('D', 'A painter of the abstract landscapes who was called the Enfant Terrible of the Indian art')
           ) as v(label, option_text)
 where q.question_hash = '47fe941f665fc1261768a5145461d6a4'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'She studied in Paris and her self portraits are:',
    'The Amrita Sher-Gil, who studied in Paris, is celebrated for the psychological depth of her self portraits and the Hungarian and the Indian influences in her work.',
    'medium',
    'Standard Reference',
    null,
    '76753b0cdf77a774415946895c7562e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '76753b0cdf77a774415946895c7562e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a folk painter'),
            ('B', 'celebrated for the psychological depth'),
            ('C', 'a member of the Bengal school'),
            ('D', 'a sculptor')
           ) as v(label, option_text)
 where q.question_hash = '76753b0cdf77a774415946895c7562e2'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The S.H. Raza was:',
    'The S.H. Raza, a founder of the Progressive Artists'' Group, is known for the geometric abstracts in the later phase of his work.',
    'medium',
    'Standard Reference',
    null,
    'e7b68bcfb7a818dc08ebf3c47bbfb6d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e7b68bcfb7a818dc08ebf3c47bbfb6d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a sculptor'),
            ('B', 'a folk painter'),
            ('C', 'a founder of the Progressive Artists'' Group and a painter of the geometric abstracts'),
            ('D', 'a painter of the Bengal school')
           ) as v(label, option_text)
 where q.question_hash = 'e7b68bcfb7a818dc08ebf3c47bbfb6d6'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Krishen Khanna'' was:',
    'The Krishen Khanna is known for the vivid street scenes and the portraits of the common people, and he was the first Indian painter whose works were auctioned for more than a million dollars.',
    'hard',
    'Standard Reference',
    null,
    '836fa91a26fff4b3befc20b197e3229e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '836fa91a26fff4b3befc20b197e3229e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter of the Bengal school'),
            ('B', 'A sculptor'),
            ('C', 'A folk painter'),
            ('D', 'A painter of the modern India known for the street scenes and the common people')
           ) as v(label, option_text)
 where q.question_hash = '836fa91a26fff4b3befc20b197e3229e'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Baroda Painting is:',
    'The Baroda painting, the classical painting of the Thanjavur and the Mysore, is marked by the gesso base and the gold foil and the relief work.',
    'medium',
    'Standard Reference',
    null,
    'd98d63a0bf5f3319d61f58c707716c22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd98d63a0bf5f3319d61f58c707716c22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the mural of the Ajanta'),
            ('B', 'the folk painting of the Bihar'),
            ('C', 'the classical painting of the Thanjavur and the Mysore with the gesso and the gold foil'),
            ('D', 'the miniature of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'd98d63a0bf5f3319d61f58c707716c22'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Kalighat painting of the Calcutta is known for:',
    'The Kalighat painting developed in the nineteenth century around the Kalighat temple of the Calcutta with the bold brushwork, the flat paper and the imported colours.',
    'medium',
    'Standard Reference',
    null,
    '257b22f9ec7540d8ea749ee54b88b636'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '257b22f9ec7540d8ea749ee54b88b636'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the bold brushwork on the flat paper that developed around the Kalighat temple of the Calcutta'),
            ('B', 'It is the miniature of the Rajasthan'),
            ('C', 'It is the mural of the Ellora'),
            ('D', 'It is the classical of the Thanjavur')
           ) as v(label, option_text)
 where q.question_hash = '257b22f9ec7540d8ea749ee54b88b636'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Madhubani painting of the Bihar is known for:',
    'The Madhubani painting of the Bihar, the Mithila school, is known for the bold geometric patterns, the double line borders and the natural dyes.',
    'medium',
    'Standard Reference',
    null,
    'f940a3726989c7a56f97468e9d5f0731'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f940a3726989c7a56f97468e9d5f0731'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the classical of the Thanjavur'),
            ('B', 'Is the Mithila painting with the bold geometric patterns and the double line borders'),
            ('C', 'It is the miniature of the Rajasthan'),
            ('D', 'It is the mural of the Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'f940a3726989c7a56f97468e9d5f0731'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Warli painting of the Maharashtra is known for:',
    'The Warli painting of the Maharashtra uses the simple stick figures of the white pigment on the mud brown background and it depicts the daily life and the deities.',
    'easy',
    'Standard Reference',
    null,
    '8b04ea7b102dc12bd54c4f600dfb6664'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8b04ea7b102dc12bd54c4f600dfb6664'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the gold foil work'),
            ('B', 'It is the classical of the Mysore'),
            ('C', 'Uses the simple stick figures of the white pigment on the mud brown background'),
            ('D', 'It is the miniature of the Rajputs')
           ) as v(label, option_text)
 where q.question_hash = '8b04ea7b102dc12bd54c4f600dfb6664'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Pattachitra'' of the Odisha:',
    'The Pattachitra of the Odisha and the Bengal is the cloth scroll painting that was traditionally used as the temple curtain of the Jagannath at Puri.',
    'medium',
    'Standard Reference',
    null,
    '865eb7e5f8e4419e4aeba9b5f5fe32c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '865eb7e5f8e4419e4aeba9b5f5fe32c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the mural of the Karnataka'),
            ('B', 'It is the miniature of the Rajputs'),
            ('C', 'It is the classical of the Thanjavur'),
            ('D', 'Is the cloth scroll painting used as the temple curtain of the Jagannath at Puri')
           ) as v(label, option_text)
 where q.question_hash = '865eb7e5f8e4419e4aeba9b5f5fe32c4'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Panchi painting is:',
    'The Panchi, the Odia folk scroll painting, is painted on the palm leaf and the cloth with the natural dyes and it narrates the mythological stories.',
    'hard',
    'Standard Reference',
    null,
    'c1ade0adb9b2fe6a0b0772bf44bbe4f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c1ade0adb9b2fe6a0b0772bf44bbe4f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the classical of the Mysore'),
            ('B', 'Is the Odia folk scroll painting with the palm leaf and the natural dyes'),
            ('C', 'It is the miniature of the Rajputs'),
            ('D', 'It is the mural of the Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'c1ade0adb9b2fe6a0b0772bf44bbe4f9'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Patua painters are:',
    'The Patuas are the traditional scroll painters of the West Bengal and the Bihar, and the community of the Kalighat and the Suvarnabhumi are the prominent.',
    'hard',
    'Standard Reference',
    null,
    'ec6a2a0dabce259ed1f0ac3fa9d0c8b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ec6a2a0dabce259ed1f0ac3fa9d0c8b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the scroll painters of the West Bengal and the Bihar'),
            ('B', 'They are the classical painters of the Tamil Nadu'),
            ('C', 'They are the muralists of the Karnataka'),
            ('D', 'They are the sculptors of Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'ec6a2a0dabce259ed1f0ac3fa9d0c8b7'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Chamba rumal of the Himachal Pradesh is:',
    'The Chamba rumal is the double sided embroidered covering of the Chamba region of the Himachal Pradesh, worked in the do-rukha stitch with the multicoloured designs.',
    'medium',
    'Standard Reference',
    null,
    'cd7a288d841616b411ed0066a5f229e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cd7a288d841616b411ed0066a5f229e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a painted scroll of the Odisha'),
            ('B', 'It is a mural of the Rajasthan'),
            ('C', 'It is a classical painting of the Tamil Nadu'),
            ('D', 'Is a double sided embroidered covering of the Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'cd7a288d841616b411ed0066a5f229e3'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Pashmina is the fine wool of the:',
    'The Pashmina is the fine wool of the Changthangi goats of the Ladakh and the Kashmir and the shawls of the region are among the finest in the world.',
    'easy',
    'Standard Reference',
    null,
    '0623344459f4a9db1b0fb905c99f4e0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0623344459f4a9db1b0fb905c99f4e0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the fine wool of the Changthangi goats of the Ladakh and the Kashmir'),
            ('B', 'It is a silk of the Assam'),
            ('C', 'It is a cotton of the Gujarat'),
            ('D', 'It is a wool of the Australian Merino')
           ) as v(label, option_text)
 where q.question_hash = '0623344459f4a9db1b0fb905c99f4e0b'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Cashmere fibre is:',
    'The Cashmere is the fine undercoat fibre of the Changthangi goats and the Pashmina shawls are the best known product of it.',
    'medium',
    'Standard Reference',
    null,
    'af7228ab3306f59a35ae2180c13f5b30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af7228ab3306f59a35ae2180c13f5b30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a silk of the Assam'),
            ('B', 'It is a cotton of the Gujarat'),
            ('C', 'Is the fine fibre of the Changthangi goats of the Ladakh and the Kashmir'),
            ('D', 'It is a wool of the Australian Merino')
           ) as v(label, option_text)
 where q.question_hash = 'af7228ab3306f59a35ae2180c13f5b30'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Kinnow fruit is:',
    'The Kinnow, a hybrid of the lemon and the orange, is grown in the Punjab, the Rajasthan and the Haryana and it is a GI tagged product.',
    'medium',
    'Standard Reference',
    null,
    '0129a3143c4d8fa255c2933c4c1f27d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0129a3143c4d8fa255c2933c4c1f27d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a grape variety'),
            ('B', 'Is a citrus fruit grown in the Punjab and the Rajasthan'),
            ('C', 'It is a variety of the apple'),
            ('D', 'It is a mango variety')
           ) as v(label, option_text)
 where q.question_hash = '0129a3143c4d8fa255c2933c4c1f27d0'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Toda embroidery of the Nilgiris is is known:',
    'The Toda embroidery of the Nilgiri hills is known for the black and the white geometric motifs with the characteristic black squares and stripes.',
    'medium',
    'Standard Reference',
    null,
    '0fd41c8a0c740d8a778295c7c44fe457'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0fd41c8a0c740d8a778295c7c44fe457'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is known for the black and the white geometric motifs'),
            ('B', 'It is the gold zari work of the Varanasi'),
            ('C', 'It is the tie and dye of the Gujarat'),
            ('D', 'It is the block print of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '0fd41c8a0c740d8a778295c7c44fe457'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Kashmir Shawl is:',
    'The Kashmir shawl, the Kani shawl, is a GI tagged handwoven woollen product of the Kashmir and it was given the GI tag in 2006-07.',
    'medium',
    'Standard Reference',
    null,
    'b913c5c5962d010f84cfef5c217abf92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b913c5c5962d010f84cfef5c217abf92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a silk of the Assam'),
            ('B', 'It is a cotton of the Gujarat'),
            ('C', 'It is a gold brocade of the Tamil Nadu'),
            ('D', 'Is a GI tagged product of the Kashmir and it is a handwoven woollen shawl')
           ) as v(label, option_text)
 where q.question_hash = 'b913c5c5962d010f84cfef5c217abf92'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Mirzapur carpet is:',
    'The Mirzapur carpet, a hand-knotted woollen carpet of the Uttar Pradesh, is a GI tagged product and it is a major export.',
    'medium',
    'Standard Reference',
    null,
    '235441aa4b000306d93961d7e436ba88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '235441aa4b000306d93961d7e436ba88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cotton rug of the Gujarat'),
            ('B', 'a plastic mat'),
            ('C', 'a GI tagged hand-knotted woollen carpet of the Uttar Pradesh'),
            ('D', 'a silk carpet of the Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '235441aa4b000306d93961d7e436ba88'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Thanjavur painting of the Tamil Nadu is:',
    'The Thanjavur painting of the Tamil Nadu, also called the Tanjore painting, uses the gold foil on the teak panels over a gesso base.',
    'medium',
    'Standard Reference',
    null,
    '0eb11bd5884560c4ccda10c241d2147c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0eb11bd5884560c4ccda10c241d2147c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the tie and dye'),
            ('B', 'The Thanjavur painting uses the gold foil on the teak panels with the gesso base'),
            ('C', 'It is the miniature of the Rajasthan'),
            ('D', 'It is the mural of the Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '0eb11bd5884560c4ccda10c241d2147c'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Bandhani of the Gujarat and the Rajasthan is:',
    'The Bandhani, the tie and dye with the tiny knots tied before the dyeing, is the traditional craft of the Gujarat and the Rajasthan.',
    'easy',
    'Standard Reference',
    null,
    'd3b42674c6774e0cebaff0579baacb5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd3b42674c6774e0cebaff0579baacb5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the painting of the Odisha'),
            ('B', 'Is the tie and dye of the Gujarat and the Rajasthan'),
            ('C', 'It is the embroidery of the Punjab'),
            ('D', 'It is the block print of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'd3b42674c6774e0cebaff0579baacb5a'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Zardozi'' of Lucknow:',
    'The Zardozi, the metallic embroidery with the gold and the silver threads and the precious stones, reached its peak in the court of the Naw-awad.',
    'medium',
    'Standard Reference',
    null,
    '6c37731516cd449de76daf6b24297b23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6c37731516cd449de76daf6b24297b23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the metallic embroidery with the gold and the silver threads'),
            ('B', 'It is the tie and dye'),
            ('C', 'It is the block print'),
            ('D', 'It is the ivory carving')
           ) as v(label, option_text)
 where q.question_hash = '6c37731516cd449de76daf6b24297b23'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Khurja pottery'' of the Uttar Pradesh:',
    'The Khurja pottery, the glazed pottery of the Khurja in the Uttar Pradesh, is a GI tagged product of the state.',
    'hard',
    'Standard Reference',
    null,
    '0f31eed718caf754ae69ee2cffb11561'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f31eed718caf754ae69ee2cffb11561'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the black pottery of the Khurja'),
            ('B', 'It is the terracotta of the Odisha'),
            ('C', 'It is the stoneware of the Assam'),
            ('D', 'Is the glazed pottery and it is a GI tagged product')
           ) as v(label, option_text)
 where q.question_hash = '0f31eed718caf754ae69ee2cffb11561'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Banarasi silk of the Varanasi is:',
    'The Banarasi silk, the zari brocade of the Varanasi, is a GI tagged product and the Kanjeevaram of the Tamil Nadu is the other famous one.',
    'easy',
    'Standard Reference',
    null,
    '37b883bfff67da29064d03825ee6497b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '37b883bfff67da29064d03825ee6497b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a wool of the Ludhiana'),
            ('B', 'It is a muslin of the Dhubai'),
            ('C', 'Is a GI tagged brocade of the Varanasi with the zari'),
            ('D', 'It is a cotton of the Coimbatore')
           ) as v(label, option_text)
 where q.question_hash = '37b883bfff67da29064d03825ee6497b'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kanjeevaram'' of the Tamil Nadu:',
    'The Kanjeevaram, with the bold colours, the contrasting borders and the zari, is a GI tagged silk sari of the Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    '5a21947403f5e6d050436b78c6f1867d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5a21947403f5e6d050436b78c6f1867d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a cotton sari of the Coimbatore'),
            ('B', 'It is a muslin of the Bengal'),
            ('C', 'It is a shawl of the Kashmir'),
            ('D', 'Is a GI tagged silk sari with the contrasting borders and the zari')
           ) as v(label, option_text)
 where q.question_hash = '5a21947403f5e6d050436b78c6f1867d'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Khadi of the handspun yarn is:',
    'The Khadi, the handwoven cloth of the handspun yarn, is a GI tagged product and it was promoted by the Mahatma Gandhi as the symbol of the Swadeshi.',
    'medium',
    'Standard Reference',
    null,
    'b29a83b11c9f891a5ae1781391c21edf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b29a83b11c9f891a5ae1781391c21edf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a cotton of the Gujarat'),
            ('B', 'Is the handwoven cloth of the handspun yarn and it is a GI tagged product'),
            ('C', 'It is a silk of the Assam'),
            ('D', 'It is a wool of the Kashmir')
           ) as v(label, option_text)
 where q.question_hash = 'b29a83b11c9f891a5ae1781391c21edf'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Toda community of the Nilgiris is known:',
    'The Toda community of the Nilgiri hills is known for the pashmina shawls that they weave and for their distinctive embroidery.',
    'medium',
    'Standard Reference',
    null,
    '1ea2533379a4e44d8ac5d917e57e9cf3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1ea2533379a4e44d8ac5d917e57e9cf3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fishing community of the Konkan'),
            ('B', 'a trading community of the Assam'),
            ('C', 'for the pashmina shawls and the embroidery'),
            ('D', 'a martial tribe of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '1ea2533379a4e44d8ac5d917e57e9cf3'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Kutch of the Gujarat is famous for:',
    'The Kutch of the Gujarat is famous for the embroidery, the mirror work, the tie and dye, the patchwork and the Rogan art of the natural dyes.',
    'medium',
    'Standard Reference',
    null,
    '06032ed94d93094b870f971312eae161'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '06032ed94d93094b870f971312eae161'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kutch is famous for the embroidery, the mirror work, the tie and dye and the Rogan art'),
            ('B', 'It is famous for the wood carving'),
            ('C', 'It is famous for the ivory work'),
            ('D', 'It is famous for the bronze casting')
           ) as v(label, option_text)
 where q.question_hash = '06032ed94d93094b870f971312eae161'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Rogan art'' of the Kutch:',
    'The Rogan art of the Kutch is the painting with the natural and the vegetable dyes on the cloth and the Chhipi of the Khatri community is the traditional dyer.',
    'hard',
    'Standard Reference',
    null,
    '4ded31847b8a53c49b30578944000dd9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4ded31847b8a53c49b30578944000dd9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the embroidery'),
            ('B', 'It is the mirror work'),
            ('C', 'It is the wood carving'),
            ('D', 'Is the painting with the natural and the vegetable dyes on the cloth')
           ) as v(label, option_text)
 where q.question_hash = '4ded31847b8a53c49b30578944000dd9'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Seraikella Chhau was:',
    'The Seraikella Chhau of the Odisha was inscribed on the UNESCO list of the intangible heritage in 2010, along with the Kalbelia and the Ramlila.',
    'medium',
    'Standard Reference',
    2010,
    '05b1fd7c5742c4da4591888b4ba337a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '05b1fd7c5742c4da4591888b4ba337a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 2010'),
            ('B', 'inscribed in 2005'),
            ('C', 'inscribed in 2021'),
            ('D', 'not inscribed')
           ) as v(label, option_text)
 where q.question_hash = '05b1fd7c5742c4da4591888b4ba337a5'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Kutiyattam was:',
    'The Kutiyattam, the Sanskrit theatre of Kerala, was inscribed on the UNESCO list of the intangible heritage in 2001, the first Indian element to be inscribed.',
    'medium',
    'Standard Reference',
    2001,
    '278dedce5bd875c38d4b4fea6d5c9bc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '278dedce5bd875c38d4b4fea6d5c9bc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'not inscribed'),
            ('B', 'inscribed in 2001'),
            ('C', 'inscribed in 2008'),
            ('D', 'inscribed in 2013')
           ) as v(label, option_text)
 where q.question_hash = '278dedce5bd875c38d4b4fea6d5c9bc1'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Yoga'' was inscribed on the UNESCO list in:',
    'The Yoga was inscribed on the Representative List of the Intangible Cultural Heritage of Humanity in 2006 and it was the first Indian element on the list.',
    'easy',
    'Standard Reference',
    2006,
    '9eb00286848565336cf0d082b5588d55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9eb00286848565336cf0d082b5588d55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2008'),
            ('B', '2010'),
            ('C', '2006'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = '9eb00286848565336cf0d082b5588d55'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kumbh Mela'' was inscribed in:',
    'The Kumbh Mela was inscribed on the UNESCO Representative List of the Intangible Cultural Heritage of Humanity in 2017.',
    'medium',
    'Standard Reference',
    2017,
    '7349ccad4641a46a6016da5d831403a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7349ccad4641a46a6016da5d831403a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2019'),
            ('C', '2021'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = '7349ccad4641a46a6016da5d831403a4'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Buddhist chanting'' was inscribed in:',
    'The chanting of the Buddhist scriptures in the Ladakh region of the Jammu and Kashmir was inscribed on the UNESCO list in 2008.',
    'hard',
    'Standard Reference',
    2008,
    '4045b65fca8d112336ee399b00b856d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4045b65fca8d112336ee399b00b856d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2013'),
            ('C', '2008'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = '4045b65fca8d112336ee399b00b856d6'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Kalasha language and the culture of the Dardic peoples were:',
    'The Kalasha language and the culture of the Dardic peoples of the Chamba region were inscribed on the UNESCO list in 2008.',
    'hard',
    'Standard Reference',
    2008,
    '94c96afee07dcabd814e568fd76db9e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '94c96afee07dcabd814e568fd76db9e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'inscribed in 2008'),
            ('B', 'inscribed in 2003'),
            ('C', 'inscribed in 2013'),
            ('D', 'not inscribed')
           ) as v(label, option_text)
 where q.question_hash = '94c96afee07dcabd814e568fd76db9e7'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The traditional brass and the copper craft of the Utkal is:',
    'The traditional brass and the copper craft of the Utkal region of the Odisha was inscribed on the UNESCO list of the intangible heritage.',
    'hard',
    'Standard Reference',
    null,
    '7da602d24647ee282c2a0ba3ac65808c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7da602d24647ee282c2a0ba3ac65808c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'not inscribed'),
            ('B', 'inscribed in the UNESCO list'),
            ('C', 'inscribed in 2003'),
            ('D', 'inscribed in 2013')
           ) as v(label, option_text)
 where q.question_hash = '7da602d24647ee282c2a0ba3ac65808c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Kumbh Mela, the largest of the human gatherings, is:',
    'The Kumbh Mela is the largest of the human gatherings on the earth and it is inscribed on the UNESCO list of the intangible heritage.',
    'easy',
    'Standard Reference',
    null,
    '0d04f57fd89e16de2cad62ab64519384'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d04f57fd89e16de2cad62ab64519384'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was not inscribed'),
            ('B', 'It is the largest of the fairs in India'),
            ('C', 'It is the largest of the human gatherings and it is inscribed on the UNESCO list'),
            ('D', 'It is a religious festival of the Jainas only')
           ) as v(label, option_text)
 where q.question_hash = '0d04f57fd89e16de2cad62ab64519384'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Mahabodhi Temple of the Bodh Gaya is:',
    'The Mahabodhi Temple complex of the Bodh Gaya marks the place where the Buddha attained the enlightenment and it is a World Heritage site since 2002.',
    'medium',
    'Standard Reference',
    null,
    '74903ed83ec72cec63f5da038daf97a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '74903ed83ec72cec63f5da038daf97a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the birthplace of the Mahavira'),
            ('B', 'the place of the first council'),
            ('C', 'the place of the Mahaparinirvana'),
            ('D', 'the place of the enlightenment of the Buddha')
           ) as v(label, option_text)
 where q.question_hash = '74903ed83ec72cec63f5da038daf97a6'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Sarnath is the place of the:',
    'The Sarnath, marked by the Dhammacakkappavattana, is the place of the first sermon of the Buddha and the first Buddhist council.',
    'medium',
    'Standard Reference',
    null,
    '93d70c7cec322a80e63412b067565a74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93d70c7cec322a80e63412b067565a74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sarnath is the place of the first sermon of the Buddha'),
            ('B', 'It is the birthplace of the Buddha'),
            ('C', 'It is the place of the Mahaparinirvana'),
            ('D', 'It is the place of the Kumbh Mela')
           ) as v(label, option_text)
 where q.question_hash = '93d70c7cec322a80e63412b067565a74'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Ajanta caves have:',
    'The Ajanta caves preserve the paintings of the Jataka stories and the famous Padmapani panel of the Bodhisattva.',
    'medium',
    'Standard Reference',
    null,
    '4c2de57afc39d2f0ff58fa4c76cbee8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c2de57afc39d2f0ff58fa4c76cbee8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no paintings'),
            ('B', 'the paintings of the Jataka stories and the Bodhisattva Padmapani'),
            ('C', 'the paintings of the Ramayana'),
            ('D', 'the paintings of the Mahabharata only')
           ) as v(label, option_text)
 where q.question_hash = '4c2de57afc39d2f0ff58fa4c76cbee8c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Kushinagar is the place of the:',
    'The Kushinagar, with the reclining statue of the Buddha in the Mahaparinirvana temple, is the place where the Buddha passed away and it is on the Buddhist pilgrimage circuit.',
    'medium',
    'Standard Reference',
    null,
    'cceac99c158ab16f3a928455ac9c36e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cceac99c158ab16f3a928455ac9c36e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the place of the Mahaparinirvana of the Buddha'),
            ('B', 'It is the birthplace of the Buddha'),
            ('C', 'It is the place of the first council'),
            ('D', 'It is the place of the Pancharatra')
           ) as v(label, option_text)
 where q.question_hash = 'cceac99c158ab16f3a928455ac9c36e2'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Lumbini in the Nepal is:',
    'The Lumbini, the birthplace of the Buddha, is marked by the Ashokan pillar erected by the Emperor Ashoka in the third century BCE.',
    'easy',
    'Standard Reference',
    null,
    '66c7c4ba6b0736f671c52f191d71f57a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '66c7c4ba6b0736f671c52f191d71f57a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the place of the Mahaparinirvana'),
            ('B', 'Is the birthplace of the Buddha and it has the Ashokan pillar'),
            ('C', 'It is the place of the enlightenment'),
            ('D', 'It is the place of the first council')
           ) as v(label, option_text)
 where q.question_hash = '66c7c4ba6b0736f671c52f191d71f57a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Bodh Gaya in the Bihar is:',
    'The Bodh Gaya, the place of the enlightenment of the Buddha, is in the Bihar and it is one of the four main Buddhist pilgrimage sites in the country.',
    'easy',
    'Standard Reference',
    null,
    'e3b49b0411aa249ec7deedbc138369dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e3b49b0411aa249ec7deedbc138369dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in the Nepal'),
            ('B', 'It is in the Odisha'),
            ('C', 'It is in the Uttarakhand'),
            ('D', 'The Bodh Gaya is in the Bihar and it is on the Buddhist pilgrimage circuit')
           ) as v(label, option_text)
 where q.question_hash = 'e3b49b0411aa249ec7deedbc138369dd'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Taxila in the Punjab was:',
    'The Taxila, in the Punjab, was a famous centre of the learning and the education and it was where the Gautama Buddha studied before the renunciation.',
    'medium',
    'Standard Reference',
    null,
    'b27765202b9beab38c0431c66b6a1df3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b27765202b9beab38c0431c66b6a1df3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a fort of the Mughals'),
            ('B', 'It is in the Rajasthan'),
            ('C', 'The Taxila was the centre of the learning and the education in the ancient India'),
            ('D', 'It was a Buddhist monastery of the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'b27765202b9beab38c0431c66b6a1df3'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Kashi Vishwanath temple is:',
    'The Kashi Vishwanath temple of the Varanasi is one of the twelve Jyotirlingas of the Shiva and it is among the most important of the Shaiva shrines.',
    'easy',
    'Standard Reference',
    null,
    '1c880ee9913ced83f11cbc34737d80a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1c880ee9913ced83f11cbc34737d80a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Buddhist monastery'),
            ('B', 'It is a Jain temple'),
            ('C', 'It is a mosque'),
            ('D', 'The Kashi Vishwanath temple is one of the twelve Jyotirlingas of the Shiva')
           ) as v(label, option_text)
 where q.question_hash = '1c880ee9913ced83f11cbc34737d80a2'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Somnath temple is:',
    'The Somnath temple of the Gujarat, one of the twelve Jyotirlingas, was rebuilt several times and it is a major pilgrimage site of the Hindus.',
    'easy',
    'Standard Reference',
    null,
    '346506eace6840cd454d04e88ac21f82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '346506eace6840cd454d04e88ac21f82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Tamil Nadu'),
            ('B', 'one of the twelve Jyotirlingas and it was rebuilt several times'),
            ('C', 'a Buddhist monastery'),
            ('D', 'a Jain temple')
           ) as v(label, option_text)
 where q.question_hash = '346506eace6840cd454d04e88ac21f82'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Badrinath temple is:',
    'The Badrinath temple, one of the twelve Jyotirlingas, is in the Chamoli district of the Uttarakhand and it is among the most visited of the Himalayan shrines.',
    'medium',
    'Standard Reference',
    null,
    '59cd543169a14bbcda9f41342900025b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '59cd543169a14bbcda9f41342900025b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'one of the twelve Jyotirlingas and it is in the Uttarakhand'),
            ('B', 'in the Tamil Nadu'),
            ('C', 'a Jain temple'),
            ('D', 'a mosque')
           ) as v(label, option_text)
 where q.question_hash = '59cd543169a14bbcda9f41342900025b'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Rath Yatra of the Puri is:',
    'The Jagannath, the Balabhadra and the Subhadra are the chariots of the Rath Yatra of the Puri and the Jagannath is regarded as the incarnation of the Vishnu.',
    'easy',
    'Standard Reference',
    null,
    '7c54cf78ddaa0fcda14f55980e4f0a77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c54cf78ddaa0fcda14f55980e4f0a77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a festival of the Jainas'),
            ('B', 'a festival of the Buddhists'),
            ('C', 'the largest chariot festival of the world and the Jagannath is considered the incarnation of the Vishnu'),
            ('D', 'a festival of the Mughals')
           ) as v(label, option_text)
 where q.question_hash = '7c54cf78ddaa0fcda14f55980e4f0a77'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Guru Nanak was the:',
    'The Guru Nanak, the founder of the Sikh religion, was the first of the ten Gurus and the Khalsa was founded by the tenth Guru, the Guru Gobind Singh, in 1699.',
    'medium',
    'Standard Reference',
    null,
    'ad3177ae60b3c7a852965c8613569ccb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ad3177ae60b3c7a852965c8613569ccb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Guru Nanak founded the Khalsa'),
            ('B', 'The Guru Nanak was the founder of the Buddhism'),
            ('C', 'The Guru Nanak was the guru of the Mughals'),
            ('D', 'The Guru Nanak established the Sikh religion and the Khalsa was founded by the Guru Gobind Singh in 1699')
           ) as v(label, option_text)
 where q.question_hash = 'ad3177ae60b3c7a852965c8613569ccb'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Pahari painting developed in the hill states of the:',
    'The Pahari painting developed in the hill states of the Punjab, the Haryana and the Himachal Pradesh and it is marked by the lyrical quality and the rich colours.',
    'medium',
    'Standard Reference',
    null,
    'b2728eafe1b946af4d2362890a52c66f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b2728eafe1b946af4d2362890a52c66f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pahari painting developed in the hill states of the Punjab, the Haryana and the Himachal'),
            ('B', 'It is a Deccani style'),
            ('C', 'It is the Mughal style'),
            ('D', 'It is the Company style')
           ) as v(label, option_text)
 where q.question_hash = 'b2728eafe1b946af4d2362890a52c66f'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Sita in the Ramayana is:',
    'The Sita, the daughter of the King Janaka of Mithila and the wife of the Rama, is the heroine of the Ramayana and of the classical dance forms.',
    'easy',
    'Standard Reference',
    null,
    '574b7ba38ba4833fd86f481ee270335d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '574b7ba38ba4833fd86f481ee270335d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She is the wife of the Nala'),
            ('B', 'Is the daughter of the King Janaka and the wife of the Rama'),
            ('C', 'She is the wife of the Krishna'),
            ('D', 'She is the mother of the Pandavas')
           ) as v(label, option_text)
 where q.question_hash = '574b7ba38ba4833fd86f481ee270335d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Ramayana of the Valmiki has:',
    'The Ramayana of the Valmiki has about 24,000 verses and the Mahabharata of the Vyasa about 100,000, and the Mahabharata is the longest of the world''s epics.',
    'medium',
    'Standard Reference',
    null,
    '0a15fea3da1a9fe6f7ef84e12012b3e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a15fea3da1a9fe6f7ef84e12012b3e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1,000 verses'),
            ('B', '24,000 verses'),
            ('C', 'about 24,000 verses and the Mahabharata of the Vyasa about 100,000'),
            ('D', '100,000 verses')
           ) as v(label, option_text)
 where q.question_hash = '0a15fea3da1a9fe6f7ef84e12012b3e9'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mahabharata narrates the Kurukshetra war and it is:',
    'The Mahabharata, attributed to the Vyasa, narrates the Kurukshetra war between the Pandavas and the Kauravas with the Bhagavad Gita as its philosophical core.',
    'easy',
    'Standard Reference',
    null,
    '53173ac93107ef2263331b5afda3f7e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53173ac93107ef2263331b5afda3f7e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a devotional work of the Bhakti movement'),
            ('B', 'a philosophical treatise'),
            ('C', 'a collection of the love poems'),
            ('D', 'attributed to the Vyasa')
           ) as v(label, option_text)
 where q.question_hash = '53173ac93107ef2263331b5afda3f7e5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Arthashastra'' of the Kautilya deals with:',
    'The Arthashastra of the Kautilya deals with the statecraft, the economics, the taxation, the administration and the warfare, and it is a classic of the political economy.',
    'medium',
    'Standard Reference',
    null,
    '45baa0819e46716bda8b91e326a7f6ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '45baa0819e46716bda8b91e326a7f6ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The statecraft, the economics, the taxation and the administration'),
            ('B', 'The devotion to the Krishna'),
            ('C', 'The grammar of the Sanskrit'),
            ('D', 'The Buddhist monastic rules')
           ) as v(label, option_text)
 where q.question_hash = '45baa0819e46716bda8b91e326a7f6ad'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Natya Shastra'' of the Bharata Muni is about:',
    'The Natya Shastra of the Bharata Muni is the foundational treatise on the Indian dramaturgy, the theory of the rasas and the aesthetics of the performance.',
    'medium',
    'Standard Reference',
    null,
    'd5c0a8039e6123c65fdd789fe0c781a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd5c0a8039e6123c65fdd789fe0c781a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The political science'),
            ('B', 'The Buddhist philosophy'),
            ('C', 'The dramaturgy, the theory of the rasas and the aesthetics of the performance'),
            ('D', 'The grammar of the Sanskrit')
           ) as v(label, option_text)
 where q.question_hash = 'd5c0a8039e6123c65fdd789fe0c781a5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Abhinaya Darpana'' of the Nandikeshvara:',
    'The Abhinaya Darpana of the Nandikeshvara, of the ninth century, is the earliest of the Indian treatises on the dramaturgy after the Natya Shastra.',
    'hard',
    'Standard Reference',
    null,
    'ad651137c5dd302dc6b329ef090ca099'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ad651137c5dd302dc6b329ef090ca099'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a political treatise'),
            ('B', 'Is the earliest of the Indian treatises on the dramaturgy after the Natya Shastra'),
            ('C', 'It is a text of the grammar'),
            ('D', 'It is a devotional poem')
           ) as v(label, option_text)
 where q.question_hash = 'ad651137c5dd302dc6b329ef090ca099'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The term Bharata was:',
    'The term Bharata was used for the Natya Shastra and it later came to be used for the Mahabharata, and the Harivamsha and the Bhagavata Purana were the later additions.',
    'hard',
    'Standard Reference',
    null,
    '847d5e2add0d1b7c24446e2704efaf02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '847d5e2add0d1b7c24446e2704efaf02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a title of the kings'),
            ('B', 'the name of a university'),
            ('C', 'a dynasty'),
            ('D', 'used for the Natya Shastra and later for the Mahabharata')
           ) as v(label, option_text)
 where q.question_hash = '847d5e2add0d1b7c24446e2704efaf02'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Abhijnanasakuntalam of the Kalidasa is:',
    'The Abhijnanasakuntalam of the Kalidasa, which was staged in the modern India by the Kapila Venu and the K. N. Panikkar, is the first of the Sanskrit plays to be revived on the stage.',
    'medium',
    'Standard Reference',
    null,
    '15eb673dbd5c0ae2f2dfa564efeaa742'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '15eb673dbd5c0ae2f2dfa564efeaa742'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a painter'),
            ('B', 'The Abhijnanasakuntalam of the Kalidasa is the first of the Sanskrit plays to be staged in the modern India'),
            ('C', 'He wrote the Mahabharata'),
            ('D', 'He wrote the Bhagavad Gita')
           ) as v(label, option_text)
 where q.question_hash = '15eb673dbd5c0ae2f2dfa564efeaa742'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Nagananda of the Harsha is:',
    'The Nagananda of the Harsha is the first romantic play of the Sanskrit literature and it was the first of the Sanskrit plays to be translated into English by the R. K. Narayan.',
    'hard',
    'Standard Reference',
    null,
    'f2c541af826a7bbff90afdcb6330f302'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f2c541af826a7bbff90afdcb6330f302'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a philosophical treatise'),
            ('B', 'a Jain drama'),
            ('C', 'the first romantic play of the Sanskrit literature'),
            ('D', 'a comedy of the Kalidasa')
           ) as v(label, option_text)
 where q.question_hash = 'f2c541af826a7bbff90afdcb6330f302'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Karnabharam'' of the Bhasa:',
    'The Karnabharam is the thirteenth of the thirteen plays of the Bhasa, rediscovered in 1912 by the T. Ganapati Shastri and staged in 1955 by the K. Balachander.',
    'hard',
    'Standard Reference',
    null,
    'd5ef195ec1e6c8bdfe0fde591999e57c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd5ef195ec1e6c8bdfe0fde591999e57c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the thirteenth play of the Bhasa rediscovered in 1912'),
            ('B', 'It is a play of the Kalidasa'),
            ('C', 'It is a play of the Harsha'),
            ('D', 'It is a Jain drama')
           ) as v(label, option_text)
 where q.question_hash = 'd5ef195ec1e6c8bdfe0fde591999e57c'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which of the following statements about the Bhavabhuti is correct?',
    'The Uttararamacharita of the Bhavabhuti, the celebrated Sanskrit play, is the greatest of the post-Kalidasa dramatists and it centres on the Rama and the Sita.',
    'medium',
    'Standard Reference',
    null,
    'f503ea7573f6ef0d76e03dfba36232ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f503ea7573f6ef0d76e03dfba36232ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a painter'),
            ('B', 'The Uttararamacharita of the Bhavabhuti is a celebrated Sanskrit play'),
            ('C', 'He wrote the Mṛchchhakatika'),
            ('D', 'He wrote the Abhijnanasakuntalam')
           ) as v(label, option_text)
 where q.question_hash = 'f503ea7573f6ef0d76e03dfba36232ae'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Ratnavali of the Harsha is:',
    'The Ratnavali, the third of the three plays of the Harsha, is a romantic comedy about the love of the king and the courtesan.',
    'hard',
    'Standard Reference',
    null,
    '81db1f630e99836ec277bf28b7f36769'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '81db1f630e99836ec277bf28b7f36769'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a play of the love of the king and the courtesan'),
            ('B', 'a play of the Kalidasa'),
            ('C', 'a philosophical treatise'),
            ('D', 'a Buddhist text')
           ) as v(label, option_text)
 where q.question_hash = '81db1f630e99836ec277bf28b7f36769'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Priyadarshika'' of the Harsha:',
    'The Priyadarshika, the second of the plays of the Harsha, is a romantic drama in the Sanskrit with the love of the king and the queen.',
    'hard',
    'Standard Reference',
    null,
    'd0913a6225c5524d5916f7994cb47ef9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd0913a6225c5524d5916f7994cb47ef9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a tragedy'),
            ('B', 'It is a historical chronicle'),
            ('C', 'Is a play of the love of the king and the queen and it is a Sanskrit romantic drama'),
            ('D', 'It is a comedy')
           ) as v(label, option_text)
 where q.question_hash = 'd0913a6225c5524d5916f7994cb47ef9'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Kavya of the Kautilya is:',
    'The Kavya, the Arthashastra, is the classic of the Sanskrit prose on the political economy and the statecraft and it is a text of the 4th century BCE.',
    'medium',
    'Standard Reference',
    null,
    '5bea0830f0739d4160116b289aa6d95b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5bea0830f0739d4160116b289aa6d95b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a play of the Kalidasa'),
            ('B', 'a devotional poem'),
            ('C', 'a grammar'),
            ('D', 'a treatise on the political economy and it is a classic of the Sanskrit prose')
           ) as v(label, option_text)
 where q.question_hash = '5bea0830f0739d4160116b289aa6d95b'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Kamasutra'' of the Vatsyayana:',
    'The Kamasutra of the Vatsyayana, a treatise on the love and the life, is a classic of the Sanskrit literature and it was translated into English by the Sir Richard Burton and the F. F. Arbuthnot in 1883.',
    'medium',
    'Standard Reference',
    null,
    'dce1821ae0802910e69e06cedc50c327'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dce1821ae0802910e69e06cedc50c327'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a treatise on the love and the life and it is a classic of the Sanskrit literature'),
            ('B', 'It is a drama of the Kalidasa'),
            ('C', 'It is a political treatise'),
            ('D', 'It is a Buddhist text')
           ) as v(label, option_text)
 where q.question_hash = 'dce1821ae0802910e69e06cedc50c327'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Sushruta Samhita is:',
    'The Sushruta Samhita, a classical text of the surgery that describes the rhinoplasty, is a landmark and the Sushruta is considered the father of the surgery in the world.',
    'medium',
    'Standard Reference',
    null,
    'c5eea3a194e132f76ea23eb1c710f304'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c5eea3a194e132f76ea23eb1c710f304'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a philosopher'),
            ('B', 'a painter'),
            ('C', 'a classical text of the surgery and the Sushruta is considered the father of the surgery in the world'),
            ('D', 'a poet')
           ) as v(label, option_text)
 where q.question_hash = 'c5eea3a194e132f76ea23eb1c710f304'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Charaka Samhita is:',
    'The Charaka Samhita is the classical text of the medicine and the Charaka is regarded as the father of the Indian medicine and the Ayurveda.',
    'medium',
    'Standard Reference',
    null,
    '45710834bc40fe967e0d134b5d24084d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '45710834bc40fe967e0d134b5d24084d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a surgeon'),
            ('B', 'a poet'),
            ('C', 'a philosopher of the polity'),
            ('D', 'a classical text of the medicine and the Charaka is the father of the Indian medicine')
           ) as v(label, option_text)
 where q.question_hash = '45710834bc40fe967e0d134b5d24084d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Panini wrote the:',
    'The Panini wrote the Ashtadhyayi, the first grammar of the Sanskrit, and the Mahabhashya, the commentary on it, was written by the Patanjali.',
    'medium',
    'Standard Reference',
    null,
    '2730618bd2f57e06aa241cc57c6073f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2730618bd2f57e06aa241cc57c6073f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a painter'),
            ('B', 'The Panini wrote the Ashtadhyayi, the first grammar of the Sanskrit, and the Mahabhashya was by the Patanjali'),
            ('C', 'He wrote the Kamasutra'),
            ('D', 'He wrote the Nagananda')
           ) as v(label, option_text)
 where q.question_hash = '2730618bd2f57e06aa241cc57c6073f5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which of the following statements about the Raghuvamsha is correct?',
    'The Raghuvamsha, the epic poem of the Kalidasa, narrates the story of the Rama dynasty from the birth of the Rama to the death of the Bharata.',
    'medium',
    'Standard Reference',
    null,
    '4f3d8997990ab8c282a4d7abb906fa62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4f3d8997990ab8c282a4d7abb906fa62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Raghuvamsha of the Kalidasa narrates the story of the Rama dynasty'),
            ('B', 'It narrates the marriage of the Shiva'),
            ('C', 'It is a play of the love'),
            ('D', 'It is a collection of the sonnets')
           ) as v(label, option_text)
 where q.question_hash = '4f3d8997990ab8c282a4d7abb906fa62'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Meghaduta'' of the Kalidasa:',
    'The Meghaduta, the Cloud Messenger, is a lyric poem of the poet and his beloved and it is one of the masterpieces of the Sanskrit poetry.',
    'medium',
    'Standard Reference',
    null,
    'a4cc20ca0a2a521d8e04f9bdc561af4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4cc20ca0a2a521d8e04f9bdc561af4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is an epic of the war'),
            ('B', 'It is a collection of the proverbs'),
            ('C', 'Is a lyric poem of the poet and the separation of the beloved'),
            ('D', 'It is a play')
           ) as v(label, option_text)
 where q.question_hash = 'a4cc20ca0a2a521d8e04f9bdc561af4d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Gita Govinda'' of the Jayadeva:',
    'The Gita Govinda of the Jayadeva, a poem of the love of the Radha and the Krishna, is a landmark of the Vaishnava poetry and it has been set to the music by many.',
    'medium',
    'Standard Reference',
    null,
    '2c1345b7e42463dccdcb1f872c43f313'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2c1345b7e42463dccdcb1f872c43f313'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a devotional song of the south'),
            ('B', 'Is a poem of the love of Radha and Krishna and it is a landmark of the Vaishnava poetry'),
            ('C', 'It is a play of the Harsha'),
            ('D', 'It is a treatise of the grammar')
           ) as v(label, option_text)
 where q.question_hash = '2c1345b7e42463dccdcb1f872c43f313'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Sakuntala of the Kalidasa is:',
    'The Sakuntala was the first of the Sanskrit plays to be staged in the modern India, in 1915 at the Writers'' Workshop in Calcutta, and it was a landmark of the modern Indian theatre.',
    'hard',
    'Standard Reference',
    null,
    'd6edb187d901776e93feb14c27068526'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd6edb187d901776e93feb14c27068526'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'performed in 1900 in Poona'),
            ('B', 'a play of the Harsha'),
            ('C', 'an epic of the war'),
            ('D', 'the most famous of the Sanskrit plays and it was first performed in 1915 at the Writers'' Workshop in Calcutta')
           ) as v(label, option_text)
 where q.question_hash = 'd6edb187d901776e93feb14c27068526'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Dadasaheb Phalke Award of 1969 was:',
    'The Dadasaheb Phalke Award was instituted in 1969 and the Konarak, the great theatre of the K. N. Panikkar and the Ebrahim Alkazi, is the finest of the modern Indian theatres.',
    'hard',
    'Standard Reference',
    null,
    '4a7f15c6a86659c73c3052577baea676'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4a7f15c6a86659c73c3052577baea676'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1950'),
            ('B', 'the first to be given and the Ebrahim Alkazi made the Konarak'),
            ('C', 'of 1972'),
            ('D', 'no award before 1980')
           ) as v(label, option_text)
 where q.question_hash = '4a7f15c6a86659c73c3052577baea676'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The National School of Drama and the Sangeet Natak Akademi were set up in:',
    'The Sangeet Natak Akademi was set up in 1952 and the National School of Drama in 1959, both in New Delhi.',
    'medium',
    'Standard Reference',
    null,
    '78b9d78f5b8d43e3d52a6e812c23d10b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '78b9d78f5b8d43e3d52a6e812c23d10b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up in 1959'),
            ('B', 'set up in 1947'),
            ('C', 'set up in 1959 and the Sangeet Natak Akademi in 1952'),
            ('D', 'set up in 1975')
           ) as v(label, option_text)
 where q.question_hash = '78b9d78f5b8d43e3d52a6e812c23d10b'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Kalamandalam of the Kerala was:',
    'The Kalamandalam, the Vallathol Narayana Menon founded it in 1930 at the Cheruthuruth, is the premier institution of the classical arts of the Kerala.',
    'medium',
    'Standard Reference',
    null,
    '28e8a9ea3741ed9ce3d3d070eff53b18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '28e8a9ea3741ed9ce3d3d070eff53b18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'founded by the Rukmini Devi'),
            ('B', 'founded in 1948 in Bombay'),
            ('C', 'a film school'),
            ('D', 'founded by the Vallathol Narayana Menon in 1930')
           ) as v(label, option_text)
 where q.question_hash = '28e8a9ea3741ed9ce3d3d070eff53b18'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Sangam of the Tamil academy is:',
    'The Sangam, the academy of the Tamil poets, was the association that produced the corpus of the classical Tamil poetry of the early centuries CE.',
    'medium',
    'Standard Reference',
    null,
    '067039a31ba4401d1305d901849aecfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '067039a31ba4401d1305d901849aecfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the association of the poets of the Tamil country'),
            ('B', 'a Buddhist monastery'),
            ('C', 'a temple trust'),
            ('D', 'a modern academy')
           ) as v(label, option_text)
 where q.question_hash = '067039a31ba4401d1305d901849aecfe'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Tiruvalluvar statue of 133 feet was:',
    'The 133 feet tall Tiruvalluvar statue was unveiled at the Kanyakumari on 1 January 2000 and it is a symbol of the Tamil pride.',
    'medium',
    'Standard Reference',
    2000,
    'b6ec37c93d705d8718f91549e4c37401'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b6ec37c93d705d8718f91549e4c37401'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'unveiled at the Kanyakumari in 2000'),
            ('B', 'unveiled in 1980'),
            ('C', 'unveiled in 2010'),
            ('D', 'never unveiled')
           ) as v(label, option_text)
 where q.question_hash = 'b6ec37c93d705d8718f91549e4c37401'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Dravidian languages of the south are:',
    'The four major Dravidian languages of the south are the Tamil, the Telugu, the Kannada and the Malayalam, and about a quarter of the Indians speak them.',
    'easy',
    'Standard Reference',
    null,
    '91bcbb298c3a6c017601338a1c61743d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '91bcbb298c3a6c017601338a1c61743d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Austroasiatic languages'),
            ('B', 'the Tamil, the Telugu, the Kannada and the Malayalam'),
            ('C', 'the Indo-Aryan languages'),
            ('D', 'the Tibeto-Burman languages')
           ) as v(label, option_text)
 where q.question_hash = '91bcbb298c3a6c017601338a1c61743d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Nalayira Divya Prabandham of the Alvars is:',
    'The Nalayira Divya Prabandham, the hymns of the twelve Alvars, is the devotional poetry of the Tamil Vaishnavas and it is sung in the temple music.',
    'hard',
    'Standard Reference',
    null,
    '4a8dfdba1c4fcf893afc5fecae9484fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a8dfdba1c4fcf893afc5fecae9484fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the philosophical treatise of the Sankaracharya'),
            ('B', 'the epic of the Pandyas'),
            ('C', 'a collection of the love poems'),
            ('D', 'the Vaishnava devotional poetry of the Tamil country')
           ) as v(label, option_text)
 where q.question_hash = '4a8dfdba1c4fcf893afc5fecae9484fd'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Periyar, with the Self Respect Movement was:',
    'The Periyar, with the Self Respect Movement and the Dravidian Federation, was the catalyst of the Dravidian politics in the Tamil Nadu and the anti-caste politics.',
    'medium',
    'Standard Reference',
    null,
    '11d06542635e9668690e19cf36ba6885'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11d06542635e9668690e19cf36ba6885'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Gandhian'),
            ('B', 'a Marxist of the Bengal'),
            ('C', 'the catalyst of the Dravidian politics in the Tamil Nadu'),
            ('D', 'the leader of the Congress')
           ) as v(label, option_text)
 where q.question_hash = '11d06542635e9668690e19cf36ba6885'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Bharathidasan'' was:',
    'The Bharathidasan, a Tamil poet and a leading figure of the Dravidian movement, wrote the Paatalai, an anti-caste epic.',
    'hard',
    'Standard Reference',
    null,
    'b31ade08973336320c6bfc6484b3fc28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b31ade08973336320c6bfc6484b3fc28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Marathi poet'),
            ('B', 'He was a Bengali novelist'),
            ('C', 'He was a Malayalam dramatist'),
            ('D', 'A Tamil poet of the Dravidian movement who wrote the poem of the Paatalai')
           ) as v(label, option_text)
 where q.question_hash = 'b31ade08973336320c6bfc6484b3fc28'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Subramania Bharati was:',
    'The Subramania Bharati, the Mahakavi of the Tamil, wrote the Kuyil and the Kannan Pattu and he was the contemporary of the Bharathiar.',
    'medium',
    'Standard Reference',
    null,
    'b0d337104efa2b630b03426a97d22c6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b0d337104efa2b630b03426a97d22c6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Mahakavi of the Tamil and he wrote the Kuyil and the Kannan Pattu'),
            ('B', 'a Sanskrit poet'),
            ('C', 'a Tamil dramatist'),
            ('D', 'a philosopher of the south')
           ) as v(label, option_text)
 where q.question_hash = 'b0d337104efa2b630b03426a97d22c6b'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Ilango Adigal was:',
    'The Ilango Adigal, a Chera prince and a Jain monk, wrote the Silappatikaram, one of the Five Great Epics of the Tamil literature.',
    'medium',
    'Standard Reference',
    null,
    '427618578ac4310d83252a48e7c7a0ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '427618578ac4310d83252a48e7c7a0ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Pandya king'),
            ('B', 'The Ilango Adigal wrote the Silappatikaram and was a Jain monk of the Cheras'),
            ('C', 'He was a Chola prince'),
            ('D', 'He wrote the Tirukkural')
           ) as v(label, option_text)
 where q.question_hash = '427618578ac4310d83252a48e7c7a0ed'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Appar of the Tamil is:',
    'The Appar, one of the twelve Alvars, was a Saiva saint-poet of the Tamil country and a contemporary of the Appar and the Sambandar of the Seven.',
    'hard',
    'Standard Reference',
    null,
    '456caa5f14c99cb3c89896922a147c04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '456caa5f14c99cb3c89896922a147c04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Silappatikaram'),
            ('B', 'He was a Jain monk'),
            ('C', 'The Appar was a Saiva saint-poet of the Tamil and a contemporary of the Appar'),
            ('D', 'He was a Chola king')
           ) as v(label, option_text)
 where q.question_hash = '456caa5f14c99cb3c89896922a147c04'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Manikkavacharar was:',
    'The Manikkavacharar, the author of the Sivapprakasam, was the disciple of the Manikkavachakar and a contemporary of the Appar.',
    'hard',
    'Standard Reference',
    null,
    'ed82feb1dd5cfa5aedcd670d91fa53d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed82feb1dd5cfa5aedcd670d91fa53d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Tirukkural'),
            ('B', 'He was a Pandya prince'),
            ('C', 'The Manikkavacharar, the author of the Sivapprakasam, was the disciple of the Manikkavachakar'),
            ('D', 'He was a Chola king')
           ) as v(label, option_text)
 where q.question_hash = 'ed82feb1dd5cfa5aedcd670d91fa53d1'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Dnyaneshwari, the Marathi commentary on the Bhagavad Gita was:',
    'The Dnyaneshwari, the Marathi commentary on the Bhagavad Gita written in the Dnyana style of the vernacular poetry, is by the Jnaneshwar.',
    'medium',
    'Standard Reference',
    null,
    '04fa7b5e70b0b0d63129b92abc910014'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '04fa7b5e70b0b0d63129b92abc910014'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'by the Veda Vyasa'),
            ('B', 'a translation of the Ramayana'),
            ('C', 'a commentary on the Upanishads'),
            ('D', 'by the Jnaneshwar')
           ) as v(label, option_text)
 where q.question_hash = '04fa7b5e70b0b0d63129b92abc910014'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Ramcharitmanas of the Tulsidas is:',
    'The Ramcharitmanas of the Tulsidas, written in the Awadhi, is the most widely read of the Indian religious epics and it is at the centre of the Bhakti movement.',
    'easy',
    'Standard Reference',
    null,
    'fc282f12c0f5876f7e2c52f4b708810e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc282f12c0f5876f7e2c52f4b708810e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ramcharitmanas of the Tulsidas is the most widely read of the Indian religious epics'),
            ('B', 'He wrote the Mahabharata'),
            ('C', 'He was a court poet of the Mughals'),
            ('D', 'He wrote the Urdu')
           ) as v(label, option_text)
 where q.question_hash = 'fc282f12c0f5876f7e2c52f4b708810e'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Sur Sagar, a collection of the devotional poems of the Surdas is:',
    'The Sur Sagar, the collection of the devotional poems of the Surdas, is the most famous of the Hindi literature and it is sung in the kirtan.',
    'medium',
    'Standard Reference',
    null,
    'f5e825d0bbf8542eb8c5d6ba10d17f36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f5e825d0bbf8542eb8c5d6ba10d17f36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a set of the sonnets'),
            ('B', 'the most famous of the Hindi literature'),
            ('C', 'a collection of the love poems'),
            ('D', 'a historical chronicle')
           ) as v(label, option_text)
 where q.question_hash = 'f5e825d0bbf8542eb8c5d6ba10d17f36'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mira Bai of the Mewar was:',
    'The Mira Bai, a Rajput princess of the Mewar, was the devotee of the Krishna and her poems are the landmarks of the Bhakti poetry.',
    'medium',
    'Standard Reference',
    null,
    'cb0a3c29e69763285ea2ba104009cef2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cb0a3c29e69763285ea2ba104009cef2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mira Bai was a Rajput princess of the Mewar who became the devotee of the Krishna'),
            ('B', 'She was a court poet of the Mughals'),
            ('C', 'She wrote the Ramcharitmanas'),
            ('D', 'She was a Jain nun')
           ) as v(label, option_text)
 where q.question_hash = 'cb0a3c29e69763285ea2ba104009cef2'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Kabir of the Varanasi was:',
    'The Kabir, a weaver-poet of the Varanasi, wrote the dohas that are the most famous of the Bhakti literature and he is venerated by both the Hindus and the Muslims.',
    'easy',
    'Standard Reference',
    null,
    '72eb293649ec86976e7d6a358977b22c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '72eb293649ec86976e7d6a358977b22c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Ramcharitmanas'),
            ('B', 'He was a disciple of the Guru Nanak'),
            ('C', 'The Kabir was the weaver-poet of the Varanasi and his dohas are the most famous of the Bhakti literature'),
            ('D', 'He was a Sufi of the Sindh')
           ) as v(label, option_text)
 where q.question_hash = '72eb293649ec86976e7d6a358977b22c'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Guru Granth Sahib is:',
    'The Guru Granth Sahib, the eternal Guru of the Sikhs, contains the compositions of the first five Gurus and the later additions of the Guru Arjan and the Guru Gobind Singh.',
    'hard',
    'Standard Reference',
    null,
    '6d7860e2a7bf52c4272b45aebeba4df4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6d7860e2a7bf52c4272b45aebeba4df4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was compiled by the Guru Gobind Singh'),
            ('B', 'It is the eternal Guru of the Sikhs and it contains the hymns of the five Gurus'),
            ('C', 'It contains only the hymns of the Guru Nanak'),
            ('D', 'It is a chronicle of the Mughals')
           ) as v(label, option_text)
 where q.question_hash = '6d7860e2a7bf52c4272b45aebeba4df4'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Basava was a Lingayat saint of the Karnataka and the vachanas are:',
    'The Basava, the Lingayat saint of the Karnataka, composed the vachanas, the short and the direct devotional poems in the Kannada.',
    'medium',
    'Standard Reference',
    null,
    'ade2d40d215ec78fbb1d96cae65d0251'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ade2d40d215ec78fbb1d96cae65d0251'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Sufi of the Punjab'),
            ('B', 'a Tamil poet'),
            ('C', 'a Jain monk'),
            ('D', 'the famous ones')
           ) as v(label, option_text)
 where q.question_hash = 'ade2d40d215ec78fbb1d96cae65d0251'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Akka Mahadevi'' was:',
    'The Akka Mahadevi, the Kannada saint-poet of the twelfth century, wrote the vachanas in the Kannada and the Tamil and she is also called the Mother of the Veerashaiva movement.',
    'hard',
    'Standard Reference',
    null,
    'b52e06714040cb3d0c01a6732be06b73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b52e06714040cb3d0c01a6732be06b73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Mughal princess'),
            ('B', 'A Kannada saint-poet of the 12th century who wrote the Kannada and the Tamil vachanas'),
            ('C', 'A Tamil poet of the Sangam'),
            ('D', 'A Sanskrit dramatist')
           ) as v(label, option_text)
 where q.question_hash = 'b52e06714040cb3d0c01a6732be06b73'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Amir Khusrau is best known as:',
    'The Amir Khusrau, the court poet of the Alauddin Khalji and the Bahman Shah, is called the father of the Urdu literature, though the claim is debated.',
    'medium',
    'Standard Reference',
    null,
    'e42fdbf18da77d5d569f9de38ec6db53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e42fdbf18da77d5d569f9de38ec6db53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the court poet of the Alauddin Khalji and the father of the Urdu literature'),
            ('B', 'the court poet of Akbar'),
            ('C', 'a Telugu poet'),
            ('D', 'a Persian ambassador')
           ) as v(label, option_text)
 where q.question_hash = 'e42fdbf18da77d5d569f9de38ec6db53'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Faiz Ahmed Faiz was:',
    'The Faiz Ahmed Faiz, the revolutionary Urdu poet, received the Lenin Peace Prize in 1963 and the poems like the Mujh Se Pehli Si are the landmarks of the Urdu literature.',
    'medium',
    'Standard Reference',
    null,
    '23a61833b5e04ab10688905d37848cb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23a61833b5e04ab10688905d37848cb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Punjabi poet'),
            ('B', 'He wrote in the Tamil'),
            ('C', 'He was a scholar of the Vedas'),
            ('D', 'The Faiz Ahmed Faiz wrote the revolutionary Urdu poetry and he received the Lenin Peace Prize')
           ) as v(label, option_text)
 where q.question_hash = '23a61833b5e04ab10688905d37848cb8'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Ghalib of the Mughal era was:',
    'The Ghalib, the last of the great Urdu poets of the Mughal era, is considered the best of the ghazal writers and the icons of the Urdu poetry were the masti and the dast-e-saba.',
    'medium',
    'Standard Reference',
    null,
    '41aac2af48bdda6b1f4c7570b78e6b81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '41aac2af48bdda6b1f4c7570b78e6b81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Persian scholar'),
            ('B', 'He wrote the Ramcharitmanas'),
            ('C', 'The Ghalib was the last of the great Urdu poets of the Mughal era and the Ghazal is his form'),
            ('D', 'He was the court poet of Akbar')
           ) as v(label, option_text)
 where q.question_hash = '41aac2af48bdda6b1f4c7570b78e6b81'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Premchand wrote the Godan and the Nirmala and he is:',
    'The Premchand, the greatest of the Hindi novelists, wrote the Godan, the Nirmala, the Ghadar and the Raag and he is called the father of the Hindi novel.',
    'easy',
    'Standard Reference',
    null,
    '6f7993d92306d0c244e3e1998d104f3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6f7993d92306d0c244e3e1998d104f3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a court poet'),
            ('B', 'a philosopher of the polity'),
            ('C', 'called the father of the Hindi novel'),
            ('D', 'a Bengali novelist')
           ) as v(label, option_text)
 where q.question_hash = '6f7993d92306d0c244e3e1998d104f3a'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Raja Rao of the Kannada is:',
    'The Raja Rao, with the Kanthapura, the English novel and the English speech in the Indian idiom, is a pioneer of the Indian English novel.',
    'medium',
    'Standard Reference',
    null,
    '4511d391ec84f0ad547acb07c422f33e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4511d391ec84f0ad547acb07c422f33e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a painter of the Bengal school'),
            ('B', 'The Raja Rao wrote the Kanthapura and he is a pioneer of the Indian English novel'),
            ('C', 'He was a poet of the Bengali'),
            ('D', 'He wrote the Ramcharitmanas')
           ) as v(label, option_text)
 where q.question_hash = '4511d391ec84f0ad547acb07c422f33e'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The V.K. Krishna Menon was:',
    'The V.K. Krishna Menon was the first Indian Governor of the Reserve Bank of India and he served as the Finance Minister of the Nehru government for a long time.',
    'medium',
    'Standard Reference',
    null,
    '67f67e98ab1ca88207b7a91423ab9421'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67f67e98ab1ca88207b7a91423ab9421'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the first Education Minister of the British India'),
            ('B', 'the Governor of the Punjab'),
            ('C', 'the founder of the Planning Commission'),
            ('D', 'the first Indian Governor of the Reserve Bank of India and a long serving Finance Minister')
           ) as v(label, option_text)
 where q.question_hash = '67f67e98ab1ca88207b7a91423ab9421'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The R.K. Narayan wrote the:',
    'The R.K. Narayan, with the Malgudi series and the Guide, is among the most widely read of the Indian English novelists and he was awarded the Sahitya Akademi and the Padma awards.',
    'easy',
    'Standard Reference',
    null,
    '75197b91ba51f900bbea90eb37ac7fb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '75197b91ba51f900bbea90eb37ac7fb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The R.K. Narayan wrote the Guide and the Malgudi Days and the Bachelor of Arts'),
            ('B', 'He was a Punjabi novelist'),
            ('C', 'He wrote the Ramcharitmanas'),
            ('D', 'He was a poet of the Bengal')
           ) as v(label, option_text)
 where q.question_hash = '75197b91ba51f900bbea90eb37ac7fb8'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mulk Raj Anand was:',
    'The Mulk Raj Anand, with the Untouchable and the Coolie, was a founder of the Progressive Writers'' Association in 1936.',
    'medium',
    'Standard Reference',
    null,
    'a9d0937e91f50a3cd6afc1cec8d02139'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9d0937e91f50a3cd6afc1cec8d02139'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a court poet'),
            ('B', 'He wrote in the Tamil'),
            ('C', 'He was a painter of the Bengal school'),
            ('D', 'The Mulk Raj Anand wrote the Untouchable and the Coolie and he was a founder of the Progressive Writers'' Association')
           ) as v(label, option_text)
 where q.question_hash = 'a9d0937e91f50a3cd6afc1cec8d02139'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Amitav Ghosh wrote the:',
    'The Amitav Ghosh, with the Sea of Poppies, the first of the Ibis trilogy, and the Glass Palace, is among the most important of the contemporary Indian English writers.',
    'medium',
    'Standard Reference',
    null,
    '933ad581c8f4fbfee567e118c08e0ca9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '933ad581c8f4fbfee567e118c08e0ca9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Amitav Ghosh wrote the Sea of Poppies and the Ibis trilogy'),
            ('B', 'He was a Punjabi poet'),
            ('C', 'He wrote the Mahabharata'),
            ('D', 'He was a painter of the Bengal school')
           ) as v(label, option_text)
 where q.question_hash = '933ad581c8f4fbfee567e118c08e0ca9'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Vikram Seth wrote the:',
    'The Vikram Seth, with the A Suitable Boy, the first of the three novels of the set, is one of the best known of the contemporary Indian English novelists.',
    'medium',
    'Standard Reference',
    null,
    '2984364f3a220afe8ef07313dad9fd0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2984364f3a220afe8ef07313dad9fd0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Ramcharitmanas'),
            ('B', 'He was a painter'),
            ('C', 'The Vikram Seth wrote the A Suitable Boy and the Golden Gate'),
            ('D', 'He was a poet of the Bengali')
           ) as v(label, option_text)
 where q.question_hash = '2984364f3a220afe8ef07313dad9fd0c'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Salman Rushdie wrote the:',
    'The Salman Rushdie, with the Midnight''s Children, won the Booker Prize in 1981 and he was made the Knight of the Order of the British Empire in 2007.',
    'easy',
    'Standard Reference',
    null,
    '1aa0bea35db343c2d72fa41618ac149f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1aa0bea35db343c2d72fa41618ac149f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a painter of the Bengal school'),
            ('B', 'The Salman Rushdie wrote the Midnight''s Children and the Satanic Verses'),
            ('C', 'He was a Punjabi poet'),
            ('D', 'He wrote the Ramcharitmanas')
           ) as v(label, option_text)
 where q.question_hash = '1aa0bea35db343c2d72fa41618ac149f'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Arundhati Roy wrote the:',
    'The Arundhati Roy won the Booker Prize in 1997 for the God of Small Things and she is also a noted activist and a writer of the non-fiction.',
    'easy',
    'Standard Reference',
    null,
    '506d77599cef5f15478225c1a06ea2a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '506d77599cef5f15478225c1a06ea2a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She was a poet of the Bengali'),
            ('B', 'She wrote the Ramcharitmanas'),
            ('C', 'She was a painter'),
            ('D', 'The Arundhati Roy wrote the God of Small Things and won the Booker Prize')
           ) as v(label, option_text)
 where q.question_hash = '506d77599cef5f15478225c1a06ea2a2'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Kashmiri literature of the finest sense is:',
    'The Kashmiri literature, one of the oldest of the Sanskrit traditions with the Rajatarangini of the Kalhana, is the source of the medieval romantic poetry of the Vaishnava and the Sufi.',
    'hard',
    'Standard Reference',
    null,
    'f3fbe7e852486bba7b81059d2c9ddb2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f3fbe7e852486bba7b81059d2c9ddb2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the literature of the Mughals'),
            ('B', 'a Punjabi literature'),
            ('C', 'the oldest of the Sanskrit and it is the tradition of the Kalhana''s Rajatarangini'),
            ('D', 'a modern literature')
           ) as v(label, option_text)
 where q.question_hash = 'f3fbe7e852486bba7b81059d2c9ddb2f'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Kalhana wrote the:',
    'The Kalhana wrote the Rajatarangini, the chronicle of the kings of Kashmir, which is the finest of the medieval Sanskrit historical works.',
    'medium',
    'Standard Reference',
    null,
    '92a7e3ea5858e1bb96a2bf4b2853d901'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '92a7e3ea5858e1bb96a2bf4b2853d901'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kalhana wrote the Rajatarangini, the chronicle of the kings of Kashmir'),
            ('B', 'He wrote the Ramcharitmanas'),
            ('C', 'He was a court poet of the Mughals'),
            ('D', 'He wrote the Mahabharata')
           ) as v(label, option_text)
 where q.question_hash = '92a7e3ea5858e1bb96a2bf4b2853d901'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Saraswati, the goddess of the learning is:',
    'The Saraswati, the goddess of the learning and the arts, is depicted with the veena, the book and the swan or the white heron, and she is the consort of the Brahma.',
    'easy',
    'Standard Reference',
    null,
    '72298fd16617f5b16465477c25f312a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '72298fd16617f5b16465477c25f312a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'depicted with the lion'),
            ('B', 'depicted with the veena and the swan'),
            ('C', 'depicted with the lotus and the elephant'),
            ('D', 'depicted with the trident')
           ) as v(label, option_text)
 where q.question_hash = '72298fd16617f5b16465477c25f312a3'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Lakshmi of the Hinduism is:',
    'The Lakshmi, the goddess of the wealth and the fortune, is depicted with the lotus and she is the consort of the Vishnu.',
    'easy',
    'Standard Reference',
    null,
    '3c8b690b7e46a85d4998dc37bd1baba0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c8b690b7e46a85d4998dc37bd1baba0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She is the consort of the Shiva'),
            ('B', 'She is depicted with the trident'),
            ('C', 'The Lakshmi is the goddess of the wealth and the fortune and she is depicted with the lotus'),
            ('D', 'She is the goddess of the knowledge')
           ) as v(label, option_text)
 where q.question_hash = '3c8b690b7e46a85d4998dc37bd1baba0'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Ganesha of the Hinduism is:',
    'The Ganesha, the son of the Shiva and the Parvati, is the god of the wisdom and the new beginnings and he is the remover of the obstacles.',
    'easy',
    'Standard Reference',
    null,
    '668a7410543da94b1de88759121bb0f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '668a7410543da94b1de88759121bb0f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He is the consort of the Lakshmi'),
            ('B', 'The Ganesha is the god of the wisdom and the remover of the obstacles'),
            ('C', 'He is the god of the war'),
            ('D', 'He is the god of the death')
           ) as v(label, option_text)
 where q.question_hash = '668a7410543da94b1de88759121bb0f4'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Hanuman of the Hinduism is:',
    'The Hanuman, the monkey god and the vanara warrior and the devotee of the Rama, is depicted with the strength and the courage and the humility.',
    'easy',
    'Standard Reference',
    null,
    'eef4a94c393aaef034e832378c12d05c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eef4a94c393aaef034e832378c12d05c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He is the god of the war'),
            ('B', 'He is the father of the Krishna'),
            ('C', 'He is the god of the death'),
            ('D', 'The Hanuman is the monkey god and the devotee of the Rama')
           ) as v(label, option_text)
 where q.question_hash = 'eef4a94c393aaef034e832378c12d05c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Durga of the Hinduism is:',
    'The Durga, the goddess of the power and the Shakti, rides the lion and the ten hands and she is the central deity of the Navaratri.',
    'easy',
    'Standard Reference',
    null,
    '5228e2ceaad7b663852b9c59ad6e32f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5228e2ceaad7b663852b9c59ad6e32f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Durga is the goddess of the power and the Shakti and she rides the lion'),
            ('B', 'She is the goddess of the wealth'),
            ('C', 'She is the consort of the Brahma'),
            ('D', 'She rides the bull')
           ) as v(label, option_text)
 where q.question_hash = '5228e2ceaad7b663852b9c59ad6e32f9'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Kali of the Hinduism is:',
    'The Kali, the fierce form of the Shakti, is closely associated with the Kalighat temple of the Kolkata and the festival of the Kali Puja.',
    'medium',
    'Standard Reference',
    null,
    '14cf2c96be93de8da534996080078792'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '14cf2c96be93de8da534996080078792'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She is the consort of the Vishnu'),
            ('B', 'She rides the swan'),
            ('C', 'The Kali is the fierce form of the Shakti and she is associated with the Kalighat'),
            ('D', 'She is the goddess of the wealth')
           ) as v(label, option_text)
 where q.question_hash = '14cf2c96be93de8da534996080078792'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Shiva of the Hinduism is:',
    'The Shiva, the god of the destruction and the regeneration, is depicted with the trident, the crescent and the third eye and the Ganga flows from his matted locks.',
    'easy',
    'Standard Reference',
    null,
    '84971555ce55e848281d14149bd4c0b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84971555ce55e848281d14149bd4c0b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He rides the swan'),
            ('B', 'The Shiva is the god of the destruction and the regeneration and he is depicted with the trident and the crescent'),
            ('C', 'He is the god of the preservation'),
            ('D', 'He is the god of the wisdom')
           ) as v(label, option_text)
 where q.question_hash = '84971555ce55e848281d14149bd4c0b1'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Vishnu of the Hinduism is:',
    'The Vishnu, the preserver of the universe, is depicted with the conch, the discus, the mace and the lotus and he has the avatars of the Matsya, the Kurma and the Varaha.',
    'easy',
    'Standard Reference',
    null,
    'a9704f38f2a7b0465f5bd145f091d61c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9704f38f2a7b0465f5bd145f091d61c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He is the god of the destruction'),
            ('B', 'He is the god of the wisdom'),
            ('C', 'He rides the lion'),
            ('D', 'The Vishnu is the god of the preservation and he is depicted with the conch and the discus')
           ) as v(label, option_text)
 where q.question_hash = 'a9704f38f2a7b0465f5bd145f091d61c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Brahma of the Hinduism is:',
    'The Brahma, the creator of the universe, is depicted with the four faces and the four arms and he is the consort of the Saraswati.',
    'easy',
    'Standard Reference',
    null,
    '2d0f00a64971b8b35392ac5993062abe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2d0f00a64971b8b35392ac5993062abe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Brahma, the creator, has four faces and four arms and he is the consort of the Saraswati'),
            ('B', 'He is the god of the destruction'),
            ('C', 'He rides the bull'),
            ('D', 'He is depicted with the third eye')
           ) as v(label, option_text)
 where q.question_hash = '2d0f00a64971b8b35392ac5993062abe'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Navratri festival is:',
    'The Navratri, the nine nights of the worship of the Durga, is celebrated with the Garba and the Dandiya in the west and with the Dussehra and the Vijayadashami at the end.',
    'easy',
    'Standard Reference',
    null,
    '787e1f5d5e5b4c445afb14192c47c447'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '787e1f5d5e5b4c445afb14192c47c447'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a festival of the Muslims'),
            ('B', 'Is the nine nights of the worship of the Durga and it is celebrated across the country with the Garba'),
            ('C', 'It is a festival of the south only'),
            ('D', 'It marks the birth of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = '787e1f5d5e5b4c445afb14192c47c447'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Dussehra festival is:',
    'The Dussehra, the tenth day of the Navratri, marks the victory of the Rama over the Ravana and the effigies of the Ravana are burned on the Vijayadashami.',
    'easy',
    'Standard Reference',
    null,
    '4c61f52642fa03b9a67713cc43b37e82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4c61f52642fa03b9a67713cc43b37e82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the victory of the Kauravas'),
            ('B', 'It is a festival of the Muslims'),
            ('C', 'Marks the victory of the Rama over the Ravana and the effigies of the Ravana are burned'),
            ('D', 'It marks the birth of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = '4c61f52642fa03b9a67713cc43b37e82'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Makar Sankranti is:',
    'The Makar Sankranti, the transition of the sun from the south to the north, is celebrated as the Pongal in the Tamil, the Bihu in the Assam and the Puthineni in the Andhra.',
    'medium',
    'Standard Reference',
    null,
    '0fcfebb2842d036a72a19f2610e29084'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0fcfebb2842d036a72a19f2610e29084'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the festival of the harvest and the start of the sun''s northward journey and the Pongal of the Tamil and the Bihu of the Assam'),
            ('B', 'It marks the death of the Buddha'),
            ('C', 'It marks the birth of the Rama'),
            ('D', 'It is a festival of the Muslims')
           ) as v(label, option_text)
 where q.question_hash = '0fcfebb2842d036a72a19f2610e29084'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Raksha Bandhan festival is:',
    'The Raksha Bandhan falls on the full moon of the Shravana and it celebrates the bond between the brothers and the sisters.',
    'easy',
    'Standard Reference',
    null,
    'ac6b51efc4fff078fba2cedd2b5de925'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ac6b51efc4fff078fba2cedd2b5de925'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the festival of the harvest'),
            ('B', 'It marks the birth of the Krishna'),
            ('C', 'It is the festival of the Muslims'),
            ('D', 'Is on the full moon of the Shravana and it is the festival of the brother and the sister')
           ) as v(label, option_text)
 where q.question_hash = 'ac6b51efc4fff078fba2cedd2b5de925'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Milad-un-Nabi'' marks the:',
    'The Milad-un-Nabi, the Mawlid, marks the birth of the Prophet Muhammad and it falls on the 12th of the Rabi al-Awwal.',
    'medium',
    'Standard Reference',
    null,
    '6841b5d9604b66b1a497c5e22bb90e2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6841b5d9604b66b1a497c5e22bb90e2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'End of the Ramadan'),
            ('B', 'The beginning of the Islamic year'),
            ('C', 'Birth anniversary of the Prophet Muhammad on the 12th of Rabi al-Awwal'),
            ('D', 'End of the Hajj')
           ) as v(label, option_text)
 where q.question_hash = '6841b5d9604b66b1a497c5e22bb90e2a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Hajj is the annual pilgrimage to the:',
    'The Hajj is the annual Islamic pilgrimage to the Mecca and it culminates in the Eid al-Adha on the tenth day of the Dhu al-Hijjah.',
    'easy',
    'Standard Reference',
    null,
    '9ed456d5fdbdc8827db17794ee789564'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ed456d5fdbdc8827db17794ee789564'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Sikh pilgrimage'),
            ('B', 'The annual pilgrimage to the Mecca and it ends with the Eid al-Adha on the 10th of Dhu al-Hijjah'),
            ('C', 'It is a Hindu pilgrimage'),
            ('D', 'It is a journey to the Vaishno')
           ) as v(label, option_text)
 where q.question_hash = '9ed456d5fdbdc8827db17794ee789564'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Muharram'' is the:',
    'The Muharram is the first month of the Islamic calendar and the Ashura on the tenth of it commemorates the martyrdom of the Imam Husain at the Karbala.',
    'medium',
    'Standard Reference',
    null,
    '82d2dce1ff49e9511e4391a7868e3da9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82d2dce1ff49e9511e4391a7868e3da9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'First month of the Islamic calendar and the Ashura of the 10th commemorates the martyrdom of the Husain'),
            ('B', 'Last month of the Islamic calendar'),
            ('C', 'The month of the fasting'),
            ('D', 'The month of the pilgrimage')
           ) as v(label, option_text)
 where q.question_hash = '82d2dce1ff49e9511e4391a7868e3da9'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Christmas is celebrated on the:',
    'The Christmas is celebrated on the 25th of December and it is one of the three national holidays of the Christians in India along with the Good Friday.',
    'easy',
    'Standard Reference',
    null,
    '2516b531889d770b60f13e7c64629cc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2516b531889d770b60f13e7c64629cc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is celebrated in March'),
            ('B', 'Is a Hindu festival'),
            ('C', 'Is celebrated on the 14th of January'),
            ('D', 'Is celebrated on the 25th of December and it is a public holiday in the India')
           ) as v(label, option_text)
 where q.question_hash = '2516b531889d770b60f13e7c64629cc1'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Buddha Purnima is celebrated on the:',
    'The Buddha Purnima, on the full moon of the Vaisakha, commemorates the birth, the enlightenment and the death of the Buddha.',
    'easy',
    'Standard Reference',
    null,
    '566c7374b1f1dbaa45296122461a79a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '566c7374b1f1dbaa45296122461a79a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the first council'),
            ('B', 'It is a Jain festival'),
            ('C', 'Is celebrated on the full moon of the Vaisakha and it marks the birth, the enlightenment and the death of the Buddha'),
            ('D', 'It marks the death of the Mahavira')
           ) as v(label, option_text)
 where q.question_hash = '566c7374b1f1dbaa45296122461a79a3'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Guru Nanak Jayanti is celebrated on the:',
    'The Guru Nanak Jayanti, the Gurpurab, falls on the full moon of the Kartik and it marks the birth of the Guru Nanak.',
    'medium',
    'Standard Reference',
    null,
    'bf87291a777e62658528d9875718989d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bf87291a777e62658528d9875718989d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the founding of the Khalsa'),
            ('B', 'It marks the death of the Guru Nanak'),
            ('C', 'It is celebrated in the Baisakhi'),
            ('D', 'Is celebrated on the full moon of the Kartik and it marks the birth of the first Sikh Guru')
           ) as v(label, option_text)
 where q.question_hash = 'bf87291a777e62658528d9875718989d'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Vaisakhi festival is:',
    'The Vaisakhi, celebrated on 13 or 14 April, is the harvest festival of the Punjab and it marks the founding of the Khalsa by the Guru Gobind Singh in 1699.',
    'easy',
    'Standard Reference',
    null,
    'dd6f8af0e8010fe040a8ce33d7fedd2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd6f8af0e8010fe040a8ce33d7fedd2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the harvest festival of the Punjab and it marks the founding of the Khalsa in 1699'),
            ('B', 'It marks the birth of the Guru Nanak'),
            ('C', 'It is a festival of the Muslims'),
            ('D', 'It is the Bengali new year')
           ) as v(label, option_text)
 where q.question_hash = 'dd6f8af0e8010fe040a8ce33d7fedd2e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Holi festival of the colours is:',
    'The Holi marks the arrival of the spring and it celebrates the destruction of the demon Puthana by the child Krishna, and the colours symbolise the spring and the harvest.',
    'easy',
    'Standard Reference',
    null,
    '03580c7b534e6bad1664346cfcbbd8fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '03580c7b534e6bad1664346cfcbbd8fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the harvest festival of the Punjab'),
            ('B', 'Is the festival of the colours that marks the spring and the destruction of the Puthana by the Krishna'),
            ('C', 'It is the festival of the lights'),
            ('D', 'It marks the death of the Buddha')
           ) as v(label, option_text)
 where q.question_hash = '03580c7b534e6bad1664346cfcbbd8fc'
on conflict (question_id, label) do nothing;

commit;
