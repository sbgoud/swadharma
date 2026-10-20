-- =============================================================================
-- science_tech_05.sql — science_tech question pack, part 05
-- 10 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following statements is/are correct in relation to the DRDO test fired?',
    'The DRDO test fired the high altitude long range missile, the long range missile and the subsonic cruise missile in 2023, and the long range missile was renamed the Agni-V.',
    'hard',
    'Standard Reference',
    2023,
    '09dfdd8c3821ea63674f4600fbe481d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '09dfdd8c3821ea63674f4600fbe481d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The DRDO test fired the high altitude long range missile and the subsonic cruise missile'),
            ('B', 'It test fired a satellite'),
            ('C', 'It test fired the nuclear weapon'),
            ('D', 'It launched a manned mission')
           ) as v(label, option_text)
 where q.question_hash = '09dfdd8c3821ea63674f4600fbe481d4'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following statements is/are correct in relation to the Dhanush?',
    'Dhanush is the indigenous 155 mm towed artillery gun system developed by the DRDO and it was inducted into the Indian Army.',
    'medium',
    'Standard Reference',
    null,
    '92ee3d8fb07097d37c258f54b34f8f16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '92ee3d8fb07097d37c258f54b34f8f16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a helicopter'),
            ('B', 'Dhanush is the indigenous 155 mm towed artillery gun system of India'),
            ('C', 'It is a missile'),
            ('D', 'It is a tank')
           ) as v(label, option_text)
 where q.question_hash = '92ee3d8fb07097d37c258f54b34f8f16'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Tejas Mark1A was inducted in 2023 and the Mark2 with the AESA is:',
    'The Tejas Mark1A with the AESA radar was inducted into the IAF in 2023 and the Mark2 with the AESA radar and the indigenous missile suite is to follow.',
    'medium',
    'Standard Reference',
    2023,
    'ce5124a7f5565ea8861d6990c3816bfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ce5124a7f5565ea8861d6990c3816bfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'retired in 2023'),
            ('B', 'the first in 1990'),
            ('C', 'a bomber'),
            ('D', 'to follow')
           ) as v(label, option_text)
 where q.question_hash = 'ce5124a7f5565ea8861d6990c3816bfd'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Consider the following statements. Which of them is correct with regard to the Suryanayana?',
    'The Suryanayana, the CE-20, was the first indigenous cryogenic upper stage engine of India and it was used in the GSLV Mk III of 2014.',
    'medium',
    'Standard Reference',
    null,
    'd1a50445e8b3fa01b6788b260a4367e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd1a50445e8b3fa01b6788b260a4367e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a manned mission'),
            ('B', 'It was a nuclear reactor'),
            ('C', 'It was the first indigenous cryogenic engine of India'),
            ('D', 'It was a satellite')
           ) as v(label, option_text)
 where q.question_hash = 'd1a50445e8b3fa01b6788b260a4367e0'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following statements regarding the AI is correct?',
    'The AI is used in the surveillance, the autonomous systems, the electronic warfare, the logistics and the decision support, and the Centre has approved the AI projects of the defence with the private sector.',
    'medium',
    'Standard Reference',
    null,
    'f85467d054a1c4effd7dc2801a6e8aa4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f85467d054a1c4effd7dc2801a6e8aa4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The AI is only in the agriculture'),
            ('B', 'The AI is used in the surveillance, the drones and the decision support in the Indian armed forces'),
            ('C', 'The AI is banned in the defence'),
            ('D', 'The AI is only for the logistics')
           ) as v(label, option_text)
 where q.question_hash = 'f85467d054a1c4effd7dc2801a6e8aa4'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'The Defence Cyber Agency was:',
    'The Defence Cyber Agency was created in 2018 under the Ministry of Defence to deal with the cyber threats to the critical information infrastructure of the defence.',
    'hard',
    'Standard Reference',
    2018,
    '7a3fc1d8338d7bfc966691273b8cea71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7a3fc1d8338d7bfc966691273b8cea71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'created in 2022'),
            ('B', 'a private agency'),
            ('C', 'created in 2018 under the Ministry of Defence'),
            ('D', 'created in 1991')
           ) as v(label, option_text)
 where q.question_hash = '7a3fc1d8338d7bfc966691273b8cea71'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Consider the following statements. Which of them is correct with regard to the missile defence?',
    'The Ballistic Missile Defence is the programme to develop the interceptor missiles against the incoming ballistic missiles, and the exoatmospheric and the endoatmospheric interceptors are the components.',
    'hard',
    'Standard Reference',
    null,
    '26a13e1346969dfc3f0ccf6421f4b588'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '26a13e1346969dfc3f0ccf6421f4b588'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the anti-satellite programme'),
            ('B', 'It is the space launch programme'),
            ('C', 'It is the cruise missile programme'),
            ('D', 'The BMD is a programme to develop the interceptors against the ballistic missiles')
           ) as v(label, option_text)
 where q.question_hash = '26a13e1346969dfc3f0ccf6421f4b588'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following statements regarding the Astra is correct?',
    'The long range missile of the DRDO was renamed the Astra in 2023 and it was test fired in the same year from the Integrated Test Range in Odisha.',
    'medium',
    'Standard Reference',
    2023,
    '00d56957e04c9df92e3289e6a0f154f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '00d56957e04c9df92e3289e6a0f154f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Astra is the new name of the long range missile of the DRDO'),
            ('B', 'Astra is the anti-submarine weapon'),
            ('C', 'Astra is the surface to air missile'),
            ('D', 'Astra is the air to air missile')
           ) as v(label, option_text)
 where q.question_hash = '00d56957e04c9df92e3289e6a0f154f3'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following is correct in the case of the ASLV?',
    'The Augmented Satellite Launch Vehicle was the strap-on augmented version of the SLV and it was the precursor of the PSLV.',
    'hard',
    'Standard Reference',
    null,
    '7d170f830d691a7cee6c6f98a212a3a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7d170f830d691a7cee6c6f98a212a3a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the solid propellant upper stage'),
            ('B', 'The ASLV was the strap-on augmented version of the SLV and the precursor of the PSLV'),
            ('C', 'It was the manned launch vehicle'),
            ('D', 'It was the cryogenic vehicle')
           ) as v(label, option_text)
 where q.question_hash = '7d170f830d691a7cee6c6f98a212a3a2'
on conflict (question_id, label) do nothing;

-- science_tech | defence-technology | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'science_tech'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'science_tech' and c.slug = 'defence-technology'),
    'Which of the following statements regarding the BrahMos is correct?',
    'The BrahMos is a supersonic cruise missile with a Mach 2.8 speed and it is the fastest cruise missile in the world, with the range of about 290 to 450 km.',
    'medium',
    'Standard Reference',
    null,
    '0d3a43213ad23f49f04fceecab438bac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0d3a43213ad23f49f04fceecab438bac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a ballistic missile'),
            ('B', 'It is a space vehicle'),
            ('C', 'It is a submarine'),
            ('D', 'The BrahMos is the supersonic cruise missile of India with the Mach 2.8 speed')
           ) as v(label, option_text)
 where q.question_hash = '0d3a43213ad23f49f04fceecab438bac'
on conflict (question_id, label) do nothing;

commit;
