-- =============================================================================
-- art_culture_03.sql — art_culture question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Gupta period is:',
    'The Gupta period, the fourth and the fifth centuries, is called the golden age of the Indian art and of the classical literature and the philosophy.',
    'medium',
    'Standard Reference',
    null,
    'bcaf0bcea6d1e05eac16f2dfdd43378c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bcaf0bcea6d1e05eac16f2dfdd43378c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the period of the Sultanate'),
            ('B', 'the period of the Mughals'),
            ('C', 'called the golden age of the Indian art'),
            ('D', 'the period of the medieval India')
           ) as v(label, option_text)
 where q.question_hash = 'bcaf0bcea6d1e05eac16f2dfdd43378c'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Nataraja'' and the ''Chidambaram'' and the ''Bronze'':',
    'The dancing Shiva of Chidambaram is a Chola bronze of the twelfth century, and the image was allegedly taken from the ear of the statue of the temple.',
    'hard',
    'Standard Reference',
    null,
    '9b374df84a1dfc7b4cab85f4f5b08ff8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b374df84a1dfc7b4cab85f4f5b08ff8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Nataraja of Chidambaram is a Pala sculpture of Bengal'),
            ('B', 'The Nataraja of Chidambaram is a Chola bronze of the twelfth century'),
            ('C', 'The Nataraja of Chidambaram is a stone image of the Vijayanagara'),
            ('D', 'The Nataraja of Chidambaram is a Jain image')
           ) as v(label, option_text)
 where q.question_hash = '9b374df84a1dfc7b4cab85f4f5b08ff8'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Mauryan'' and the ''Ajanta'' and the ''Bharhut'':',
    'The Bharhut stupa belongs to the Shunga period and the Amaravati to the Satavahana, and both show the narrative art of the Buddhist tradition.',
    'hard',
    'Standard Reference',
    null,
    'de8134ed9632f9a64bc077b317f7bd7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'de8134ed9632f9a64bc077b317f7bd7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bharhut of the Gupta period and the Amaravati of the Mauryan'),
            ('B', 'Both are the caves of the Deccan'),
            ('C', 'Both are the stupas of the Kushanas'),
            ('D', 'The Bharhut stupa of the Shunga period shows the Jataka scenes and the Amaravati of the Satavahana')
           ) as v(label, option_text)
 where q.question_hash = 'de8134ed9632f9a64bc077b317f7bd7c'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Kakatiya'' and the ''Ramappa'' and the ''Warangal'':',
    'The Ramappa temple, also called the Rudreshwara or the Thousand Pillar temple at Warangal, was built in 1213 and it was inscribed as a World Heritage site in 2021.',
    'hard',
    'Standard Reference',
    null,
    'f9999dd90bef693c7c28e0151e99a58a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f9999dd90bef693c7c28e0151e99a58a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ramappa temple at Warangal was built in 1213 CE'),
            ('B', 'The Ramappa temple was built in 1513 CE'),
            ('C', 'The Ramappa temple was built by the Vijayanagara'),
            ('D', 'The Ramappa temple is a Jain temple')
           ) as v(label, option_text)
 where q.question_hash = 'f9999dd90bef693c7c28e0151e99a58a'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Kalinga'' and the ''Konark'':',
    'The Konark temple is of the Kalinga style built under the Eastern Ganga Narasimhadeva I, and it is a World Heritage site since 1984.',
    'medium',
    'Standard Reference',
    null,
    'e1ad9bf7e559b4bed357c184a6215c7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1ad9bf7e559b4bed357c184a6215c7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Konark temple is a Jain temple of Rajasthan'),
            ('B', 'The Konark temple is a Kalinga style temple of the Eastern Ganga'),
            ('C', 'The Konark temple is a Dravidian temple of the Vijayanagara'),
            ('D', 'The Konark temple is a Hoysala temple')
           ) as v(label, option_text)
 where q.question_hash = 'e1ad9bf7e559b4bed357c184a6215c7d'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Vesara'' style of the temple architecture:',
    'The Vesara style is a synthesis of the Nagara and the Dravida features, and the Hoysala and the Kakatiya temples of the Deccan are its finest examples.',
    'hard',
    'Standard Reference',
    null,
    'f5120f631d0879c8d742f2c700475541'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f5120f631d0879c8d742f2c700475541'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a blend of the northern and the southern styles seen at the Hoysala and the Kakatiya temples'),
            ('B', 'Is a style of the Buddhist caves'),
            ('C', 'Is a style of the Islamic architecture'),
            ('D', 'Is a style of the colonial architecture')
           ) as v(label, option_text)
 where q.question_hash = 'f5120f631d0879c8d742f2c700475541'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Bishnupur'' and the ''Mangal Kumar'':',
    'The terracotta temples of Bishnupur in West Bengal, of the eighteenth century, are the finest of the Indian terracotta temples.',
    'hard',
    'Standard Reference',
    null,
    'f9ccc33559f5f7e14000048a9c44ce2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9ccc33559f5f7e14000048a9c44ce2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bishnupur temples are the Buddhist caves'),
            ('B', 'The Bishnupur temples are of the Chola period'),
            ('C', 'The terracotta temples of Bishnupur in West Bengal are the finest of the terracotta art'),
            ('D', 'The Bishnupur temples are of the white marble')
           ) as v(label, option_text)
 where q.question_hash = 'f9ccc33559f5f7e14000048a9c44ce2d'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Chettinad'' and the ''Salem'':',
    'The Chettinad region of Tamil Nadu, in the old Salem region, is famous for the grand mansions of the Chettiar merchants who traded with Southeast Asia.',
    'medium',
    'Standard Reference',
    null,
    'c0936d242d5427f900a4d3e6ed7bbabd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c0936d242d5427f900a4d3e6ed7bbabd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chettinad is a folk dance of the Telugu region'),
            ('B', 'The Chettinad is a music school of Kerala'),
            ('C', 'The Chettinad is a textile of Odisha'),
            ('D', 'The Chettinad houses of Tamil Nadu are the mansions of the Chettiar merchants')
           ) as v(label, option_text)
 where q.question_hash = 'c0936d242d5427f900a4d3e6ed7bbabd'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mughal'' and the ''Golconda'':',
    'The Golconda diamonds went to the European markets mainly through the Portuguese at Goa, and the Koh-i-Noor was among them.',
    'hard',
    'Standard Reference',
    null,
    'c7b8003f60d48b5356c3fd14b5fe89c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c7b8003f60d48b5356c3fd14b5fe89c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Golconda diamonds were not traded at all'),
            ('B', 'The Golconda diamonds went only to Persia'),
            ('C', 'The Golconda diamonds were traded through the Portuguese at Goa'),
            ('D', 'The Golconda diamonds were traded with the Dutch')
           ) as v(label, option_text)
 where q.question_hash = 'c7b8003f60d48b5356c3fd14b5fe89c1'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Portuguese'' and the ''Goa'' and the ''Daman'':',
    'The Portuguese established the trading posts at Calicut, Goa, Daman and Diu, and they were the first Europeans to use the Maratha sea route for the spice trade.',
    'medium',
    'Standard Reference',
    null,
    '19d1152ceb7148b2251b47de0e582531'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '19d1152ceb7148b2251b47de0e582531'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Portuguese held only Cochin'),
            ('B', 'The Portuguese established the trading posts at Goa, Daman and Diu'),
            ('C', 'The Portuguese had only the factory at Calicut'),
            ('D', 'The Portuguese had no presence in India')
           ) as v(label, option_text)
 where q.question_hash = '19d1152ceb7148b2251b47de0e582531'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Mahé'' and the ''Pondicherry'' and the ''French'':',
    'The French East India Company had the settlements at Pondicherry, Karaikal, Mahe, Yanam and Chandernagore, and they were all integrated with India in 1954 and 1962.',
    'medium',
    'Standard Reference',
    null,
    '850665acc34cba23f29beb1d7d1aa3d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '850665acc34cba23f29beb1d7d1aa3d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The French had only Pondicherry'),
            ('B', 'The French had only Chandernagore'),
            ('C', 'The French had no Indian settlements'),
            ('D', 'The French establishments in India were at Pondicherry, Karaikal, Mahe and Yanam')
           ) as v(label, option_text)
 where q.question_hash = '850665acc34cba23f29beb1d7d1aa3d4'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Hugli'' and the ''Plassey'':',
    'The Battle of Plassey in 1757 established the political supremacy of the British in Bengal, and the Diwani of Bengal, Bihar and Orissa was granted in 1765.',
    'easy',
    'Standard Reference',
    null,
    '879490bf173020879e565be1d617ff42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '879490bf173020879e565be1d617ff42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Battle of Plassey in 1757 led to the British control of Bengal'),
            ('B', 'The Battle of Plassey led to the French control of Bengal'),
            ('C', 'The Battle of Plassey was fought in 1765'),
            ('D', 'The Battle of Plassey led to the Dutch control of Bengal')
           ) as v(label, option_text)
 where q.question_hash = '879490bf173020879e565be1d617ff42'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Ashokan sandstone pillar now installed at Feroz Shah Kotla in Delhi was originally erected at which site?',
    'Firoz Shah Tughlaq transported two Ashokan pillars to Delhi, one from Topra in Haryana and one from Meerut. The Topra pillar was erected at Feroz Shah Kotla (Hisi-i-Firozta).',
    'medium',
    'Standard Reference',
    null,
    'f94e9fac999c29680f8b05ca7d58b5f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f94e9fac999c29680f8b05ca7d58b5f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lauriya Araraj'),
            ('B', 'Sarnath'),
            ('C', 'Kosambi'),
            ('D', 'Topra')
           ) as v(label, option_text)
 where q.question_hash = 'f94e9fac999c29680f8b05ca7d58b5f9'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The polished sandstone pillar with a lion capital at Lauriya Nandangarh in Bihar was erected during the reign of which ruler?',
    'The pillar at Lauriya Nandangarh, with its single lion capital, is one of the Ashokan pillars in the Champaran region of Bihar. The others listed belong to different periods of Mauryan and post-Mauryan history.',
    'easy',
    'Standard Reference',
    null,
    '5a68276e07429629977ce00684621868'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a68276e07429629977ce00684621868'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanishka'),
            ('B', 'Ashoka'),
            ('C', 'Bindusara'),
            ('D', 'Chandragupta Maurya')
           ) as v(label, option_text)
 where q.question_hash = '5a68276e07429629977ce00684621868'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The sculpted stone railings and gateways of the Bharhut stupa were mostly added during the rule of which dynasty?',
    'The Bharhut railings, covered with Jataka narratives and yaksha-yakshi figures, were carved under the Shungas in the 2nd century BCE. The original stupa core is Mauryan, but the decorated rail belongs to the Shunga phase.',
    'medium',
    'NCERT Class XI',
    null,
    '376c0b5d7bc55b1c618ef427c06a37bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '376c0b5d7bc55b1c618ef427c06a37bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shunga'),
            ('B', 'Gupta'),
            ('C', 'Kushana'),
            ('D', 'Maurya')
           ) as v(label, option_text)
 where q.question_hash = '376c0b5d7bc55b1c618ef427c06a37bb'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Buddha images of the Gandhara school were typically carved in which material?',
    'Gandhara sculptors used grey schist (slate-blue stone) and showed strong Greco-Roman influence. Spotted red sandstone is the characteristic material of the Mathura school, not Gandhara.',
    'medium',
    'NCERT Class XI',
    null,
    '895916dbc9249dd71d6c352df9467105'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '895916dbc9249dd71d6c352df9467105'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Spotted red sandstone'),
            ('B', 'White marble'),
            ('C', 'Grey schist'),
            ('D', 'Terracotta')
           ) as v(label, option_text)
 where q.question_hash = '895916dbc9249dd71d6c352df9467105'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The celebrated Gupta-period seated Buddha of Sarnath, depicting the first sermon, is shown in which mudra?',
    'The Sarnath Buddha preaches the first sermon, so his hands form the dharmachakra pravartana (wheel-turning) mudra. Bhumisparsha is the earth-touching gesture of the enlightenment moment and dhyana is meditation.',
    'medium',
    'NCERT Class XI',
    null,
    '17ca1e08b8a9036d256af32948355816'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '17ca1e08b8a9036d256af32948355816'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dharmachakra pravartana mudra'),
            ('B', 'Dhyana mudra'),
            ('C', 'Abhaya mudra'),
            ('D', 'Bhumisparsha mudra')
           ) as v(label, option_text)
 where q.question_hash = '17ca1e08b8a9036d256af32948355816'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Varaha panel at Udayagiri near Vidisha shows Vishnu rescuing which figure from the cosmic waters?',
    'The Udayagiri Varaha panel of the early fifth century shows Vishnu as Varaha lifting Bhudevi, the earth goddess, from the waters. It is associated with the reign of Chandragupta II.',
    'easy',
    'Standard Reference',
    null,
    'da3e0969b9bbb994ba7b027ab8cad16b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da3e0969b9bbb994ba7b027ab8cad16b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ganga'),
            ('B', 'Sita'),
            ('C', 'Bhudevi, the earth goddess'),
            ('D', 'Lakshmi')
           ) as v(label, option_text)
 where q.question_hash = 'da3e0969b9bbb994ba7b027ab8cad16b'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Didarganj Yakshi, famous for its highly polished surface and chauri (fly-whisk), is a sculpture of which period?',
    'The Didarganj Yakshi from Patna displays the mirror-like polish typical of Mauryan court art, like the Ashokan pillars. Later schools such as the Kushana or Gupta abandoned this polish.',
    'medium',
    'Standard Reference',
    null,
    '866f9aebc36621228fa08c52c0bc18e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '866f9aebc36621228fa08c52c0bc18e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shunga'),
            ('B', 'Mauryan'),
            ('C', 'Gupta'),
            ('D', 'Kushana')
           ) as v(label, option_text)
 where q.question_hash = '866f9aebc36621228fa08c52c0bc18e5'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The famous painting of Bodhisattva Padmapani holding a blue lotus is located in which Ajanta cave?',
    'The Bodhisattva Padmapani, one of the most reproduced images of Indian art, is a mural in Cave 1 of Ajanta, painted in the later Vakataka phase. Cave 10 belongs to the earlier phase and Cave 19 is a chaitya.',
    'easy',
    'NCERT Class XI',
    null,
    '01f236856d6994e066b6915c9c408a18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '01f236856d6994e066b6915c9c408a18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cave 16'),
            ('B', 'Cave 19'),
            ('C', 'Cave 10'),
            ('D', 'Cave 1')
           ) as v(label, option_text)
 where q.question_hash = '01f236856d6994e066b6915c9c408a18'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The murals of Ajanta were painted directly on which surface?',
    'Ajanta artists first prepared a ground of mud and lime plaster mixed with organic matter and painted on it with mineral and vegetable pigments. No cloth, stone or wood served as the painting surface.',
    'easy',
    'NCERT Class XI',
    null,
    'd577052adbe749cd9b6925b79d376cbd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd577052adbe749cd9b6925b79d376cbd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cloth stretched on frames'),
            ('B', 'Polished stone slabs'),
            ('C', 'Wooden panels'),
            ('D', 'Mud and lime plaster on cave walls')
           ) as v(label, option_text)
 where q.question_hash = 'd577052adbe749cd9b6925b79d376cbd'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The narrative painting panels at Ajanta based on the Jataka tales depict which theme?',
    'The Jataka tales recount the previous births of the Buddha, and several Ajanta panels such as the Chhadanta and Shibi Jatakas narrate these stories. The other traditions listed are not the subject of the Jataka panels.',
    'easy',
    'NCERT Class XI',
    null,
    '3c35b515f41011d500566cb9b7315a18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3c35b515f41011d500566cb9b7315a18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Previous births of the Buddha'),
            ('B', 'Life of Mahavira'),
            ('C', 'Episodes from the Ramayana'),
            ('D', 'Vedic sacrificial rituals')
           ) as v(label, option_text)
 where q.question_hash = '3c35b515f41011d500566cb9b7315a18'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The finest phase of Ajanta painting, seen in Caves 16 and 17, was carried out under the patronage of which dynasty?',
    'Caves 16 and 17 were excavated and painted under the Vakataka king Harishena in the late fifth century CE, contemporary with the Guptas. The Satavahana phase corresponds to the earlier caves and the Rashtrakutas to Ellora.',
    'hard',
    'Standard Reference',
    null,
    'd3fec90906744d4b9672df09e01cffe3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd3fec90906744d4b9672df09e01cffe3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta'),
            ('B', 'Vakataka'),
            ('C', 'Rashtrakuta'),
            ('D', 'Satavahana')
           ) as v(label, option_text)
 where q.question_hash = 'd3fec90906744d4b9672df09e01cffe3'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The colours used in the Ajanta murals were chiefly derived from which sources?',
    'Ajanta pigments came from minerals such as red and yellow ochres and green earth, along with lamp black and vegetable gums as binders. Synthetic dyes did not exist and animal fat was not the colour source.',
    'medium',
    'NCERT Class XI',
    null,
    'e8ebf6a6da794382cc4dd70a49cb5423'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e8ebf6a6da794382cc4dd70a49cb5423'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Animal fat'),
            ('B', 'Synthetic dyes'),
            ('C', 'Minerals and vegetable matter'),
            ('D', 'Imported lapis lazuli only')
           ) as v(label, option_text)
 where q.question_hash = 'e8ebf6a6da794382cc4dd70a49cb5423'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Gupta-period wall paintings of the Bagh caves in Madhya Pradesh are most often compared with those of which site?',
    'The Bagh cave murals, with their fluid lines and secular themes, are stylistically close to the contemporary paintings of Ajanta. Sittanavasal is Pandya-period and Badami is Chalukya, both later and different in style.',
    'medium',
    'Standard Reference',
    null,
    '140762dc520d2eabb6311c063677a18c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '140762dc520d2eabb6311c063677a18c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ellora'),
            ('B', 'Sittanavasal'),
            ('C', 'Badami'),
            ('D', 'Ajanta')
           ) as v(label, option_text)
 where q.question_hash = '140762dc520d2eabb6311c063677a18c'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'In early rock-cut monastic architecture, a chaitya is which kind of structure?',
    'A chaitya is an apsidal prayer hall with a stupa at its rounded end for congregational worship. A monastery residence is a vihara, a gateway is a torana, and the path around a stupa is the pradakshina patha.',
    'easy',
    'NCERT Class XI',
    null,
    '76f7f1b7fd16c99c5596d70d8af360ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '76f7f1b7fd16c99c5596d70d8af360ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A prayer hall with a stupa at its apsidal end'),
            ('B', 'A circumambulation path'),
            ('C', 'A residence hall for monks'),
            ('D', 'A gateway to a stupa')
           ) as v(label, option_text)
 where q.question_hash = '76f7f1b7fd16c99c5596d70d8af360ff'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The large rock-cut chaitya hall at Karle in Maharashtra was excavated chiefly under the patronage of which dynasty?',
    'The Karle chaitya, the largest of its kind, was excavated in the first century BCE under Satavahana patronage. The Mauryas left the Barabar caves and the Chalukyas came many centuries later at Badami.',
    'medium',
    'Standard Reference',
    null,
    '611bb7a79cc5021e798d3da24bc6a33c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '611bb7a79cc5021e798d3da24bc6a33c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shunga'),
            ('B', 'Chalukya'),
            ('C', 'Satavahana'),
            ('D', 'Maurya')
           ) as v(label, option_text)
 where q.question_hash = '611bb7a79cc5021e798d3da24bc6a33c'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Lomas Rishi cave, whose facade imitates a wooden chaitya arch, was excavated in which hills?',
    'The Lomas Rishi cave, carved for the Ajivikas during the Mauryan period, is in the Barabar hills of Bihar. Its chaitya-arch facade, carved to look like timber construction, is a hallmark of Mauryan rock-cut architecture.',
    'hard',
    'Standard Reference',
    null,
    'e87e334e012880992d0402df8db5b402'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e87e334e012880992d0402df8db5b402'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Udayagiri'),
            ('B', 'Barabar'),
            ('C', 'Vindhya'),
            ('D', 'Aravalli')
           ) as v(label, option_text)
 where q.question_hash = 'e87e334e012880992d0402df8db5b402'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The original brick stupa at Sanchi, later enlarged and faced with stone, was built by which ruler?',
    'Ashoka built the original brick stupa at Sanchi over relics of the Buddha in the third century BCE. The Shungas later enlarged it and the Satavahanas added the carved gateways under later patronage.',
    'easy',
    'NCERT Class XI',
    null,
    '07be8e0a19fb8ad536562aef00f2acc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '07be8e0a19fb8ad536562aef00f2acc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pushyamitra Shunga'),
            ('B', 'Kanishka'),
            ('C', 'Menander'),
            ('D', 'Ashoka')
           ) as v(label, option_text)
 where q.question_hash = '07be8e0a19fb8ad536562aef00f2acc4'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Mahachaitya of Amaravati, one of the largest stupas of ancient India, lies in which present-day state?',
    'The Amaravati Mahachaitya stands on the banks of the Krishna river in Guntur district of Andhra Pradesh. Its carved slabs are now divided between museums in Chennai, London and other places.',
    'easy',
    'Standard Reference',
    null,
    '230da9a515aec9e8608514d9b81f1ddf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '230da9a515aec9e8608514d9b81f1ddf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Karnataka'),
            ('D', 'Telangana')
           ) as v(label, option_text)
 where q.question_hash = '230da9a515aec9e8608514d9b81f1ddf'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Buddhist monastic site of Nagarjunakonda is located on the banks of which river?',
    'Nagarjunakonda, named after the philosopher Nagarjuna, is an island site in the Nagarjuna Sagar reservoir on the Krishna river in Andhra Pradesh. It flourished under the Ikshvakus of the third century CE.',
    'medium',
    'Standard Reference',
    null,
    '671f27ddfe07376919d1655f650695d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '671f27ddfe07376919d1655f650695d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishna'),
            ('B', 'Kaveri'),
            ('C', 'Narmada'),
            ('D', 'Godavari')
           ) as v(label, option_text)
 where q.question_hash = '671f27ddfe07376919d1655f650695d0'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The bronze dancing girl of Mohenjo-daro was cast using which technique?',
    'The dancing girl was made by the lost-wax or cire perdue process, in which a wax model is encased in clay and molten metal poured in after the wax drains out. This is among the earliest known bronze castings in the world.',
    'medium',
    'NCERT Class XII',
    null,
    '5120e8ef08adb047c7ab3ff920d62e20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5120e8ef08adb047c7ab3ff920d62e20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Moulding in a clay die'),
            ('B', 'Hammering a metal sheet'),
            ('C', 'Lost-wax (cire perdue) casting'),
            ('D', 'Carving and polishing stone')
           ) as v(label, option_text)
 where q.question_hash = '5120e8ef08adb047c7ab3ff920d62e20'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Most seals of the Harappan civilisation were made of which material?',
    'The great majority of Harappan seals, usually square with a unicorn or other animal and a script, were carved on steatite, often baked or glazed. Copper, ivory and faience objects exist but were not the standard seal material.',
    'easy',
    'NCERT Class XII',
    null,
    'c8e08b733d9c9bf0784421ea312b9325'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8e08b733d9c9bf0784421ea312b9325'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Steatite'),
            ('B', 'Faience'),
            ('C', 'Copper'),
            ('D', 'Ivory')
           ) as v(label, option_text)
 where q.question_hash = 'c8e08b733d9c9bf0784421ea312b9325'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Harappan pottery, painted with black designs on a red surface, was produced chiefly on which device?',
    'Harappan potters used a fast wheel to throw the fine red ware painted with black linear and animal motifs. Moulds were used for some terracotta figurines, not for the painted pottery.',
    'easy',
    'NCERT Class XII',
    null,
    '203c51f3c48c55e08f0bc3cbf44f0dff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '203c51f3c48c55e08f0bc3cbf44f0dff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hand-moulding bench'),
            ('B', 'Baked clay moulds'),
            ('C', 'Leather-hard clay beating'),
            ('D', 'Potter''s wheel')
           ) as v(label, option_text)
 where q.question_hash = '203c51f3c48c55e08f0bc3cbf44f0dff'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Evidence of a bead-makers'' workshop working carnelian has been found at which Harappan site?',
    'Chanhudaro in Sindh is famous as a craft town with workshops for bead-making, seal-cutting and shell working. The other sites listed are known mainly for settlement features rather than craft specialisation.',
    'hard',
    'Standard Reference',
    null,
    '8ec6b322851d07f2f2b30fb1fb8c3357'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8ec6b322851d07f2f2b30fb1fb8c3357'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rakhigarhi'),
            ('B', 'Kalibangan'),
            ('C', 'Chanhudaro'),
            ('D', 'Dholavira')
           ) as v(label, option_text)
 where q.question_hash = '8ec6b322851d07f2f2b30fb1fb8c3357'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Harappans made bronze by alloying copper mainly with which metal?',
    'Bronze is an alloy of copper with tin, and Harappan metalworkers used this combination for tools and castings such as the dancing girl. Brass, an alloy with zinc, became common much later in Indian history.',
    'medium',
    'Standard Reference',
    null,
    '408a070f0c11575964bcd98b791f4d3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '408a070f0c11575964bcd98b791f4d3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Silver'),
            ('B', 'Tin'),
            ('C', 'Zinc'),
            ('D', 'Lead')
           ) as v(label, option_text)
 where q.question_hash = '408a070f0c11575964bcd98b791f4d3c'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The steatite figure known as the ''Priest King'' was excavated at which site?',
    'The bearded ''Priest King'' with its trefoil-patterned robe was found at Mohenjo-daro in 1927 and is now in the National Museum, Karachi. No comparable figure was found at the other sites listed.',
    'medium',
    'Standard Reference',
    null,
    '495dfad3868496231d5df527d51f9f1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '495dfad3868496231d5df527d51f9f1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mohenjo-daro'),
            ('B', 'Chanhu-daro'),
            ('C', 'Harappa'),
            ('D', 'Lothal')
           ) as v(label, option_text)
 where q.question_hash = '495dfad3868496231d5df527d51f9f1c'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Buddhist monuments at Sanchi were inscribed on the UNESCO World Heritage List in which year?',
    'Sanchi was inscribed by UNESCO in 1989, six years after the first Indian batch of 1983 that included Ajanta, Ellora and Agra Fort.',
    'hard',
    'Standard Reference',
    null,
    'd7560b1b987f683d69432ae61785c343'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7560b1b987f683d69432ae61785c343'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1993'),
            ('B', '1999'),
            ('C', '1983'),
            ('D', '1989')
           ) as v(label, option_text)
 where q.question_hash = 'd7560b1b987f683d69432ae61785c343'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Ajanta Caves were inscribed as a UNESCO World Heritage Site in which year?',
    'Ajanta was among the first Indian sites inscribed on the World Heritage List in 1983, along with Ellora and Agra Fort. 1987 is the year of later inscriptions such as Hampi and Elephanta.',
    'medium',
    'Standard Reference',
    null,
    'e9be1294dcb119d48d01413d4815aa07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9be1294dcb119d48d01413d4815aa07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1997'),
            ('B', '1983'),
            ('C', '1987'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = 'e9be1294dcb119d48d01413d4815aa07'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'Which of these ancient sites appears on the UNESCO World Heritage List?',
    'The Ellora Caves, including the Kailasa temple, were inscribed in 1983. Bharhut, Amaravati and Nagarjunakonda are protected ASI sites but none of them is on the World Heritage List.',
    'medium',
    'Standard Reference',
    null,
    'c11a9cca1c26bed158970e0b04cb6f86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c11a9cca1c26bed158970e0b04cb6f86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amaravati'),
            ('B', 'Nagarjunakonda'),
            ('C', 'Ellora'),
            ('D', 'Bharhut')
           ) as v(label, option_text)
 where q.question_hash = 'c11a9cca1c26bed158970e0b04cb6f86'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ruins of Nalanda Mahavihara were inscribed as a UNESCO World Heritage Site in which year?',
    'The archaeological site of Nalanda Mahavihara at Nalanda, Bihar, was inscribed in 2016. 2014 was Rani-ki-Vav and 2021 was Dholavira and Kakatiya Rudreshwara.',
    'medium',
    'Standard Reference',
    null,
    '23fd5186afebfe13815dfea07f30bd31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23fd5186afebfe13815dfea07f30bd31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2014'),
            ('C', '2018'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '23fd5186afebfe13815dfea07f30bd31'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Harappan city of Dholavira received UNESCO World Heritage status in which year?',
    'Dholavira in the Rann of Kachchh, Gujarat, was inscribed as a World Heritage Site in July 2021, becoming the first Harappan city on the list. 2014 saw Rani-ki-Vav inscribed instead.',
    'hard',
    'PIB',
    null,
    'c4819b051a7ca5856f754bf549b38289'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c4819b051a7ca5856f754bf549b38289'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2014'),
            ('C', '2019'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = 'c4819b051a7ca5856f754bf549b38289'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The rock paintings of Bhimbetka chiefly depict scenes of which kind?',
    'The Bhimbetka rock shelters near Bhopal preserve Mesolithic to historical period paintings dominated by hunting, dancing and animal scenes. They predate and differ from later narrative religious art.',
    'easy',
    'NCERT Class XII',
    null,
    '9f78555f70127e37ace22de4de7d79b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9f78555f70127e37ace22de4de7d79b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Naval battles'),
            ('B', 'Royal courts and processions'),
            ('C', 'Hunting, dancing and animal life'),
            ('D', 'Buddhist Jataka stories')
           ) as v(label, option_text)
 where q.question_hash = '9f78555f70127e37ace22de4de7d79b7'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Pushkaram, the festival honouring a sacred river, comes once in how many years for each river?',
    'Each major river of peninsular India has its Pushkaram once every twelve years, based on the Jupiter''s transit through a zodiac sign linked to that river, as with the Godavari and Krishna Pushkarams.',
    'medium',
    'Standard Reference',
    null,
    '8d00dd400c1be23e7715727f72373ba0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d00dd400c1be23e7715727f72373ba0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Six'),
            ('B', 'Twelve'),
            ('C', 'Sixty'),
            ('D', 'Three')
           ) as v(label, option_text)
 where q.question_hash = '8d00dd400c1be23e7715727f72373ba0'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The month of Ashvayuja (Ashwin) of the Indian calendar is associated with which major festival?',
    'Sharad Navaratri and Durga Puja fall in the lunar month of Ashwin (Ashvayuja), ending with Vijayadashami. Holi belongs to Phalguna, Onam to Bhadrapada and Lohri to Pausha.',
    'easy',
    'Standard Reference',
    null,
    '0234cdf8c4cab5cebdfea31d083d2656'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0234cdf8c4cab5cebdfea31d083d2656'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Holi'),
            ('B', 'Onam'),
            ('C', 'Lohri'),
            ('D', 'Navaratri and Durga Puja')
           ) as v(label, option_text)
 where q.question_hash = '0234cdf8c4cab5cebdfea31d083d2656'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Dhanvantari, the physician of the gods revered in the Ayurveda tradition, is worshipped on which occasion?',
    'Dhanteras, the thirteenth lunar day before Diwali, is dedicated to Dhanvantari, and National Ayurveda Day is observed on this occasion. The other festivals honour different deities and teachers.',
    'medium',
    'PIB',
    null,
    '5ba210b2d241ff19cbb6bbad7af1073b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5ba210b2d241ff19cbb6bbad7af1073b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Purnima'),
            ('B', 'Maha Shivaratri'),
            ('C', 'Dhanteras'),
            ('D', 'Akshaya Tritiya')
           ) as v(label, option_text)
 where q.question_hash = '5ba210b2d241ff19cbb6bbad7af1073b'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Which Vedic royal sacrifice involved letting a horse roam free for a year and symbolised the king''s sovereignty?',
    'In the ashvamedha a consecrated horse roamed for a year under royal guard, and its unobstructed passage asserted the king''s supremacy. Rajasuya is a consecration rite and agnihotra a daily household offering.',
    'easy',
    'NCERT Class XI',
    null,
    '796a11703422a70e8e3d06f69b2ce53f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '796a11703422a70e8e3d06f69b2ce53f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ashvamedha'),
            ('B', 'Rajasuya'),
            ('C', 'Vajapeya'),
            ('D', 'Agnihotra')
           ) as v(label, option_text)
 where q.question_hash = '796a11703422a70e8e3d06f69b2ce53f'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'In the Rigveda, Varuna is primarily the god of what?',
    'Varuna is the Vedic god of the waters who upholds rita, the cosmic and moral order. Fire is Agni, war is associated with Indra, and rain and thunder belong to Parjanya.',
    'easy',
    'NCERT Class XI',
    null,
    '332a3ca68ccbf446efcd3cbe464465ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '332a3ca68ccbf446efcd3cbe464465ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'War'),
            ('B', 'Water and cosmic order'),
            ('C', 'Rain and thunder'),
            ('D', 'Fire')
           ) as v(label, option_text)
 where q.question_hash = '332a3ca68ccbf446efcd3cbe464465ef'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The agnihotra mentioned in Vedic literature was which kind of rite?',
    'The agnihotra was the basic daily milk offering into the sacred fire, made every morning and evening by householders with the three sacred fires. It was not a coronation, pilgrimage or fiscal levy.',
    'hard',
    'Standard Reference',
    null,
    '2a442243b26977b7eb571ca408b5508a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a442243b26977b7eb571ca408b5508a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A pilgrimage to sacred rivers'),
            ('B', 'A tax levied on households'),
            ('C', 'A daily fire sacrifice performed twice a day'),
            ('D', 'An annual royal coronation rite')
           ) as v(label, option_text)
 where q.question_hash = '2a442243b26977b7eb571ca408b5508a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Arthashastra, the famous treatise on statecraft and economic policy, is attributed to which author?',
    'The Arthashastra was composed by Kautilya, also called Chanakya or Vishnugupta, the minister of Chandragupta Maurya. Manu and Shukra are authors of other dharmashastra and nitishastra works.',
    'easy',
    'NCERT Class XI',
    null,
    '1c53f7ef9f101984df95c41cad370746'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c53f7ef9f101984df95c41cad370746'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kautilya (Chanakya)'),
            ('B', 'Bhasa'),
            ('C', 'Manu'),
            ('D', 'Shukra')
           ) as v(label, option_text)
 where q.question_hash = '1c53f7ef9f101984df95c41cad370746'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Kamandaka''s Nitisara, composed around the Gupta period, is a treatise on which subject?',
    'The Nitisara of Kamandaka is a Sanskrit manual of statecraft and political ethics modelled on Kautilya''s Arthashastra. It belongs to the nitishastra genre, not to grammar, medicine or astronomy.',
    'hard',
    'Standard Reference',
    null,
    '27bec5bf96fec493ca127c4b6d4bb2be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27bec5bf96fec493ca127c4b6d4bb2be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grammar'),
            ('B', 'Medicine'),
            ('C', 'Astronomy'),
            ('D', 'Statecraft and ethics of rule')
           ) as v(label, option_text)
 where q.question_hash = '27bec5bf96fec493ca127c4b6d4bb2be'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Charaka Samhita is an ancient Indian treatise on which subject?',
    'The Charaka Samhita, associated with the physician Charaka, is the foundational text of ancient Indian medicine and internal therapy. Surgery is the domain of the Sushruta Samhita.',
    'easy',
    'Standard Reference',
    null,
    'a9258801e8132e24b5f1d5adb127ab49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a9258801e8132e24b5f1d5adb127ab49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Architecture'),
            ('B', 'Medicine'),
            ('C', 'Music'),
            ('D', 'Surgery')
           ) as v(label, option_text)
 where q.question_hash = 'a9258801e8132e24b5f1d5adb127ab49'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Sushruta Samhita is chiefly devoted to which branch of knowledge?',
    'The Sushruta Samhita describes surgical instruments, procedures and even plastic surgery of the nose, making it the classic ancient Indian text on surgery. It is not a work on grammar, polity or astrology.',
    'medium',
    'Standard Reference',
    null,
    '1dc02d8fd874ef3ed906ede368237b2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1dc02d8fd874ef3ed906ede368237b2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Surgery'),
            ('B', 'Grammar'),
            ('C', 'Statecraft'),
            ('D', 'Astrology')
           ) as v(label, option_text)
 where q.question_hash = '1dc02d8fd874ef3ed906ede368237b2e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Varahamihira, the astronomer of the Gupta age, is the author of which work?',
    'Varahamihira wrote the Brihat Samhita, an encyclopaedic work on astronomy, astrology and worldly sciences, besides the Brihat Jataka. The Aryabhatiya is by Aryabhata and the Charaka Samhita is a medical text.',
    'medium',
    'Standard Reference',
    null,
    'a5da30236e70e7ff67b761bb5db02929'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a5da30236e70e7ff67b761bb5db02929'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nitisara'),
            ('B', 'Brihat Samhita'),
            ('C', 'Aryabhatiya'),
            ('D', 'Charaka Samhita')
           ) as v(label, option_text)
 where q.question_hash = 'a5da30236e70e7ff67b761bb5db02929'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'In the Aryabhatiya, Aryabhata makes which claim about the earth?',
    'Aryabhata stated that the earth rotates on its axis daily, and he explained eclipses as shadows of the earth and moon rather than as the work of Rahu and Ketu. He also gave a rational value of pi.',
    'medium',
    'Standard Reference',
    null,
    '527058a39bfd098842c6fcc945c61543'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '527058a39bfd098842c6fcc945c61543'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eclipses are caused by Rahu and Ketu alone'),
            ('B', 'The earth is stationary at the centre'),
            ('C', 'The sun revolves around the earth'),
            ('D', 'The earth rotates on its axis')
           ) as v(label, option_text)
 where q.question_hash = '527058a39bfd098842c6fcc945c61543'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mahabharata is traditionally attributed to which sage?',
    'The Mahabharata is traditionally composed and compiled by Krishna Dvaipayana Vyasa, who is also a character within the epic. Valmiki is credited with the Ramayana, not the Mahabharata.',
    'easy',
    'NCERT Class XI',
    null,
    'c9a6e9e69ce6c8049f6b5426ff64836e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c9a6e9e69ce6c8049f6b5426ff64836e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kapila'),
            ('B', 'Valmiki'),
            ('C', 'Vyasa'),
            ('D', 'Panini')
           ) as v(label, option_text)
 where q.question_hash = 'c9a6e9e69ce6c8049f6b5426ff64836e'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Ramayana of Valmiki is divided into how many kandas (books)?',
    'Valmiki''s Ramayana consists of seven kandas from Bala to Yuddha. Eighteen is the number of parvas of the Mahabharata, a common source of confusion.',
    'medium',
    'Standard Reference',
    null,
    '691d0ca623c0c5157a1eff73c1ca4196'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '691d0ca623c0c5157a1eff73c1ca4196'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Five'),
            ('B', 'Ten'),
            ('C', 'Eighteen'),
            ('D', 'Seven')
           ) as v(label, option_text)
 where q.question_hash = '691d0ca623c0c5157a1eff73c1ca4196'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Harivamsha, which centres on the life of Krishna, is regarded in tradition as what kind of text?',
    'The Harivamsha is traditionally classed as a khila, an appendix or supplement to the Mahabharata, narrating the rise of the Yadavas and Krishna''s career. It is neither a Jataka collection nor a Vedic or Shaiva text.',
    'hard',
    'Standard Reference',
    null,
    'd32b22f495ccd40bf80ccf37a32c5600'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd32b22f495ccd40bf80ccf37a32c5600'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Buddhist Jataka text'),
            ('B', 'An appendix (khila) to the Mahabharata'),
            ('C', 'A Purana of the Shiva tradition'),
            ('D', 'An independent epic of the Vedic age')
           ) as v(label, option_text)
 where q.question_hash = 'd32b22f495ccd40bf80ccf37a32c5600'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Bhagavata Purana is chiefly devoted to the glory and devotional worship of whom?',
    'The Bhagavata Purana is the great Vaishnava text centred on Vishnu, above all in his Krishna incarnation, and it became foundational for later bhakti movements. It is not a Shaiva, Shakta or solar Purana.',
    'easy',
    'Standard Reference',
    null,
    'c716cf137edd73f207d6bdf58a24ee78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c716cf137edd73f207d6bdf58a24ee78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishnu, especially as Krishna'),
            ('B', 'Shiva'),
            ('C', 'Devi'),
            ('D', 'Surya')
           ) as v(label, option_text)
 where q.question_hash = 'c716cf137edd73f207d6bdf58a24ee78'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Panini''s Ashtadhyayi, the foundational Sanskrit grammar, is organised into how many chapters?',
    'The name Ashtadhyayi literally means ''eight chapters'', and the work arranges about four thousand sutras on Sanskrit grammar in that structure. Patanjali later commented on it in the Mahabhashya.',
    'medium',
    'Standard Reference',
    null,
    'bb67d798f4414bebc8d87b26aa725225'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bb67d798f4414bebc8d87b26aa725225'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Six'),
            ('C', 'Eight'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = 'bb67d798f4414bebc8d87b26aa725225'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mahabhashya, the great commentary on Panini''s grammar, was composed by which scholar?',
    'Patanjali composed the Mahabhashya around the second century BCE as a commentary on Panini''s Ashtadhyayi and Katyayana''s varttikas. Bhartrihari wrote the much later Vakyapadiya.',
    'hard',
    'Standard Reference',
    null,
    'a5dc497db454609397893f368df21632'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a5dc497db454609397893f368df21632'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Katyayana'),
            ('B', 'Panini himself'),
            ('C', 'Bhartrihari'),
            ('D', 'Patanjali')
           ) as v(label, option_text)
 where q.question_hash = 'a5dc497db454609397893f368df21632'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Yavanajataka is an early Sanskrit work dealing with which subject?',
    'The Yavanajataka, a versified Sanskrit translation of a Greek astrological treatise from about the second or third century CE, marks the transmission of Hellenistic horoscopic astrology into India.',
    'hard',
    'Standard Reference',
    null,
    'ab1595a099629d8c837708eb7cf3cbac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ab1595a099629d8c837708eb7cf3cbac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Astrology'),
            ('B', 'Statecraft'),
            ('C', 'Music'),
            ('D', 'Medicine')
           ) as v(label, option_text)
 where q.question_hash = 'ab1595a099629d8c837708eb7cf3cbac'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Which of the following statements about the Ajanta caves is correct?',
    'The Vaghoda panel of the Cave 1 of the Ajanta, painted in the sixth century CE, is the finest of the Indian murals and it shows the Bodhisattva Padmapani.',
    'medium',
    'Standard Reference',
    null,
    '22bc0844032e4b9ed8ebb6293777047f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '22bc0844032e4b9ed8ebb6293777047f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It shows the Jain Tirthankara'),
            ('B', 'The Vaghoda panel in Cave 1 of the Ajanta shows the Padmapani Bodhisattva'),
            ('C', 'It shows the Buddha preaching'),
            ('D', 'It is in the Ellora')
           ) as v(label, option_text)
 where q.question_hash = '22bc0844032e4b9ed8ebb6293777047f'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Kailasanatha temple'' at Kanchipuram was built by:',
    'The Kailasanatha temple at Kanchipuram was built by the Pallava king Narasimhavarman I as a replica of the Kailasa temple of the Ellora, which was cut in the rock.',
    'hard',
    'Standard Reference',
    null,
    'e857d604e4b6794b6c79ffb62422bb90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e857d604e4b6794b6c79ffb62422bb90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasimha'),
            ('B', 'Pulakeshin II'),
            ('C', 'Narasimhavarman I'),
            ('D', 'Mahendravarman I')
           ) as v(label, option_text)
 where q.question_hash = 'e857d604e4b6794b6c79ffb62422bb90'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Kanchi Kailasanatha is:',
    'The Kailasanatha temple of Kanchipuram was an imitation in stone of the rock-cut Kailasa temple of the Ellora, and it was built by the Narasimhavarman I.',
    'hard',
    'Standard Reference',
    null,
    '8ee0d90ccae9620a1a636452165a1937'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8ee0d90ccae9620a1a636452165a1937'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a structural temple of the Cholas'),
            ('B', 'a temple of the Vijayanagara'),
            ('C', 'a temple of the Nayaks'),
            ('D', 'a rock-cut temple in imitation of the Ellora Kailasa')
           ) as v(label, option_text)
 where q.question_hash = '8ee0d90ccae9620a1a636452165a1937'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Mandapas of the Mahabalipuram are:',
    'The Mandapas, the rock-cut monuments of Mahabalipuram, are the works of the Pallava king Narasimhavarman I and they include the famous Trimurti cave.',
    'medium',
    'Standard Reference',
    null,
    '2710345b1582c0cc215d0dda20e1fe60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2710345b1582c0cc215d0dda20e1fe60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rock-cut monuments of the Pallavas'),
            ('B', 'the structural temples of the Cholas'),
            ('C', 'the Jain temples of the medieval period'),
            ('D', 'the Vijayanagara monuments')
           ) as v(label, option_text)
 where q.question_hash = '2710345b1582c0cc215d0dda20e1fe60'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Trimurti'' at Mahabalipuram:',
    'The Trimurti cave of Mahabalipuram shows the three faces of Shiva, Vishnu and Brahma in a single rock panel, and the panel is protected by a later shrine.',
    'hard',
    'Standard Reference',
    null,
    '8b26c4599adbc984660725974684fcff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8b26c4599adbc984660725974684fcff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a temple of the Vijayanagara'),
            ('B', 'It is a stupa'),
            ('C', 'Is the rock-cut panel of Shiva, Vishnu and Brahma in one face'),
            ('D', 'Is a Chola bronze')
           ) as v(label, option_text)
 where q.question_hash = '8b26c4599adbc984660725974684fcff'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Brihadisvara temple'' at Thanjavur:',
    'The Brihadisvara temple at Thanjavur, built by the Chola king Rajaraja I between 1003 and 1010, has a 66 metre tall vimana and it is a World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    '2666e25c2fb90e33b801d1f4a336b3bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2666e25c2fb90e33b801d1f4a336b3bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Buddhist monastery'),
            ('B', 'Is the Chola temple of Rajaraja I with the 66 metre tall vimana'),
            ('C', 'Is a Vijayanagara temple'),
            ('D', 'It is a temple of the Nayaks')
           ) as v(label, option_text)
 where q.question_hash = '2666e25c2fb90e33b801d1f4a336b3bb'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Airavatesvara temple'' at Darasuram:',
    'The Airavatesvara temple at Darasuram, built by the Chola king Rajaraja II, is remarkable for its stone frescoes and the high quality of its sculpture.',
    'medium',
    'Standard Reference',
    null,
    'e00e6953d4b21e89dd9827c6b1c63aea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e00e6953d4b21e89dd9827c6b1c63aea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a Vijayanagara temple'),
            ('B', 'It is a Hoysala temple'),
            ('C', 'It is a Pandya temple'),
            ('D', 'Is the Chola temple of Rajaraja II with the frescoes')
           ) as v(label, option_text)
 where q.question_hash = 'e00e6953d4b21e89dd9827c6b1c63aea'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Gangaikonda Cholapuram'' temple:',
    'The Gangaikonda Cholapuram temple was built by the Chola emperor Rajendra I and it was completed by his successor Kulothunga I with the victory columns.',
    'medium',
    'Standard Reference',
    null,
    'a8f5fc20b5649143c954840c9e353770'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a8f5fc20b5649143c954840c9e353770'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the temple of the Cholas built by Rajendra I and completed by Kulothunga I'),
            ('B', 'Is the temple of Rajaraja I'),
            ('C', 'It is a Vijayanagara temple'),
            ('D', 'It is a Pandya temple')
           ) as v(label, option_text)
 where q.question_hash = 'a8f5fc20b5649143c954840c9e353770'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The temples at Khajuraho are:',
    'The temples at Khajuraho were built by the Chandela rulers of Bundelkhand in the tenth and the eleventh centuries and the erotic sculptures are a celebration of the life.',
    'easy',
    'Standard Reference',
    null,
    'f85903aa2d7b1189dd3d5dcc9f76c900'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f85903aa2d7b1189dd3d5dcc9f76c900'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Mughal monuments'),
            ('B', 'the Chandela monuments of the 10th and 11th centuries'),
            ('C', 'the Chola monuments'),
            ('D', 'the Vijayanagara monuments')
           ) as v(label, option_text)
 where q.question_hash = 'f85903aa2d7b1189dd3d5dcc9f76c900'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Konark Sun Temple of the Odisha is:',
    'The Konark temple, built under the Eastern Ganga king Narasimhadeva I, is shaped like a giant chariot of the sun god with the wheels and the horses and the warriors carved around it.',
    'medium',
    'Standard Reference',
    null,
    '42087cc231e14b5e280217e784818567'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42087cc231e14b5e280217e784818567'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Hoysala temple'),
            ('B', 'a Buddhist monastery'),
            ('C', 'the Kalinga style temple of Narasimhadeva I shaped like a chariot'),
            ('D', 'a Dravidian temple of the Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = '42087cc231e14b5e280217e784818567'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Sun Temple'' at Modhera was built by:',
    'The Sun temple at Modhera in Gujarat was built in the eleventh century by the Solanki king Bhima I and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    'e1ffabeeb2b4e6a11acd4f040c729043'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1ffabeeb2b4e6a11acd4f040c729043'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pala ruler'),
            ('B', 'The Solanki king Bhima I'),
            ('C', 'The Chola Rajaraja I'),
            ('D', 'The Vijayanagara Krishnadevaraya')
           ) as v(label, option_text)
 where q.question_hash = 'e1ffabeeb2b4e6a11acd4f040c729043'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Bada Gumbad at Bijapur is:',
    'The Bada Gumbad, the largest monument of the Bijapur, is the tomb of the Adil Shahi or the Bahmani ruler and it is a World Heritage site.',
    'medium',
    'Standard Reference',
    null,
    'fd7b53629bfd0609db5aa29159321257'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd7b53629bfd0609db5aa29159321257'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a temple at Hampi'),
            ('B', 'It is a mosque at Ahmedabad'),
            ('C', 'It is a tomb at Golconda'),
            ('D', 'Is the tomb of the Bahmani or the Adil Shahi at Bijapur')
           ) as v(label, option_text)
 where q.question_hash = 'fd7b53629bfd0609db5aa29159321257'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Which of the following statements regarding the Ibrahim Adil Shah II is correct?',
    'The Gol Gumbaz, the mausoleum of the Adil Shahi dynasty, was built by the Ibrahim Adil Shah II in 1656 and it houses the tomb of the Rohilla Gaur.',
    'medium',
    'Standard Reference',
    null,
    'ac6180e04c485f6a3d04be2d988072d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ac6180e04c485f6a3d04be2d988072d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ibrahim Adil Shah II'),
            ('B', 'Muhammad Adil Shah'),
            ('C', 'Yusuf Adil Shah'),
            ('D', 'Ali Adil Shah II')
           ) as v(label, option_text)
 where q.question_hash = 'ac6180e04c485f6a3d04be2d988072d3'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Ibrahim Rauza'' at Bijapur:',
    'The Ibrahim Rauza, built in 1620, is the tomb of the Ibrahim Adil Shah II and it is considered the finest of the Adil Shahi monuments with the exquisite decorations.',
    'hard',
    'Standard Reference',
    null,
    'cb60c9d4f526b746415568844860ef13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb60c9d4f526b746415568844860ef13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the Gol Gumbaz'),
            ('B', 'It is a step well'),
            ('C', 'Is the tomb of the Ibrahim Adil Shah II and the finest of the Adil Shahi tombs'),
            ('D', 'Is a mosque')
           ) as v(label, option_text)
 where q.question_hash = 'cb60c9d4f526b746415568844860ef13'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Charminar monument at Hyderabad is:',
    'The Charminar, built in 1591 by the Muhammad Quli Qutb Shah, has the four minarets and it marks the centre of the new city of Hyderabad.',
    'easy',
    'Standard Reference',
    null,
    '0c3f91fe75eb82f18d2dcd1ebb6570ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0c3f91fe75eb82f18d2dcd1ebb6570ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Chola monument'),
            ('B', 'It is a Buddhist stupa'),
            ('C', 'Is the monument of the Qutb Shahi with four minarets and it was built in 1591'),
            ('D', 'It is a temple of the Vijayanagara')
           ) as v(label, option_text)
 where q.question_hash = '0c3f91fe75eb82f18d2dcd1ebb6570ef'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Qutb Shahi dynasty of the Deccan is:',
    'The Qutb Shahi dynasty ruled at Golconda near Hyderabad from 1518 and the Golconda mines produced the famous diamonds, including the Koh-i-Noor, that were traded through the Portuguese at Goa.',
    'medium',
    'Standard Reference',
    null,
    '0159e996c960f45af530e4c3b551a30a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0159e996c960f45af530e4c3b551a30a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Qutb Shahi capital was Bijapur'),
            ('B', 'The Qutb Shahi ruled at Ahmedabad'),
            ('C', 'The Qutb Shahi were a Mughal clan'),
            ('D', 'The Qutb Shahi had their capital at Golconda with the famous Golconda mines of the diamonds')
           ) as v(label, option_text)
 where q.question_hash = '0159e996c960f45af530e4c3b551a30a'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Tomb of Muhammad Quli Qutb Shah'':',
    'The tomb of the Muhammad Quli Qutb Shah is the earliest surviving Qutb Shahi monument at Hyderabad and it has the ruins of a mosque and a later Golconda-style mosque in the complex.',
    'hard',
    'Standard Reference',
    null,
    '10dd412dd5453772925f1c2f17a2def0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '10dd412dd5453772925f1c2f17a2def0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the earliest surviving monument of the Qutb Shahi at Hyderabad'),
            ('B', 'Is at Bijapur'),
            ('C', 'It is a Buddhist stupa'),
            ('D', 'It is a Hoysala temple')
           ) as v(label, option_text)
 where q.question_hash = '10dd412dd5453772925f1c2f17a2def0'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Bara Imambara at Lucknow is:',
    'The Bara Imambara, the Asafi mosque of the Lucknow built by the Nawab Saadat Ali Khan II after the famine of 1784, is the largest of the Asafis of the city.',
    'medium',
    'Standard Reference',
    null,
    '0a67d12bfc1925fda14de802cae9790b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0a67d12bfc1925fda14de802cae9790b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a Jain pilgrimage centre'),
            ('B', 'Is the Asafi mosque of the Lucknow built by the Nawab Saadat Ali Khan II'),
            ('C', 'It is a temple of the Vijayanagara'),
            ('D', 'It is a monument of the Mughals')
           ) as v(label, option_text)
 where q.question_hash = '0a67d12bfc1925fda14de802cae9790b'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Itimad-ud-Daulah tomb of the Agra is:',
    'The tomb of the Itimad-ud-Daulah at Agra, built by the Nur Jahan for her father, is the first Mughal monument constructed entirely of the white marble.',
    'easy',
    'Standard Reference',
    null,
    'a2a62b6052a9b844002d951aaa8e2d53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2a62b6052a9b844002d951aaa8e2d53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Buddhist stupa'),
            ('B', 'a temple of the Cholas'),
            ('C', 'at Agra and is the first Mughal monument in the white marble'),
            ('D', 'at Delhi')
           ) as v(label, option_text)
 where q.question_hash = 'a2a62b6052a9b844002d951aaa8e2d53'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Tomb of Safdarjung is:',
    'The tomb of the Safdarjung at Delhi was built in 1753 for the Nawab Safdarjung and it was designed by the French architect, the Jean-Baptiste Tavernier.',
    'medium',
    'Standard Reference',
    null,
    'e638bd99e70befd768b167061716bf21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e638bd99e70befd768b167061716bf21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Buddhist site'),
            ('B', 'at Delhi and was designed by the Jean-Baptiste Tavernier for the Safdarjung'),
            ('C', 'at Agra'),
            ('D', 'a temple of the Rajputs')
           ) as v(label, option_text)
 where q.question_hash = 'e638bd99e70befd768b167061716bf21'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Red Fort at Delhi is:',
    'The Red Fort, called the Lal Qila, was built by the Akbar between 1638 and 1648 and it was completed by the Shah Jahan and it is a World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    'b2abcb51cec8e82812b4bcf481ec9b7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b2abcb51cec8e82812b4bcf481ec9b7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a fort of the Rajasthan'),
            ('B', 'It is at Agra'),
            ('C', 'It is a British fort'),
            ('D', 'Is the Lal Qila of Delhi built by the Akbar and completed by the Shah Jahan')
           ) as v(label, option_text)
 where q.question_hash = 'b2abcb51cec8e82812b4bcf481ec9b7c'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Fatehpur Sikri'':',
    'The Fatehpur Sikri, the Mughal capital from 1571 to 1585, was built by the Akbar and it is noted for the Buland Darwaza and the tomb of the Salim Chishti.',
    'easy',
    'Standard Reference',
    null,
    'bdbcefce1b51120314944f84cec5a9ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bdbcefce1b51120314944f84cec5a9ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the Mughal capital built by the Akbar in 1571'),
            ('B', 'Is the capital of the Mughals in 1648'),
            ('C', 'It is a temple of the Sikhs'),
            ('D', 'It is a fort of the British')
           ) as v(label, option_text)
 where q.question_hash = 'bdbcefce1b51120314944f84cec5a9ad'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Jama Masjid'' of Fatehpur Sikri:',
    'The Jama Masjid of Fatehpur Sikri, with the Jai Mandir of the Akbar adjoining it, is the largest of the individual Mughal mosque complexes.',
    'medium',
    'Standard Reference',
    null,
    'e9b74e6870e201fda154e0c6fcee1d1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e9b74e6870e201fda154e0c6fcee1d1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a temple'),
            ('B', 'It is a Hindu shrine'),
            ('C', 'Is the largest of the Mughal mosque with the Jai Mandir of the Akbar'),
            ('D', 'Is the mosque of the Shah Jahan')
           ) as v(label, option_text)
 where q.question_hash = 'e9b74e6870e201fda154e0c6fcee1d1b'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Humayun''s Tomb'':',
    'The tomb of the Humayun, designed by the Persian architect Mirak Mirza Ghiyas, is the first of the grand Mughal tombs in Delhi and it is a precursor of the Taj Mahal.',
    'medium',
    'Standard Reference',
    null,
    '829dd7d6671f5646300288f5219d9f42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '829dd7d6671f5646300288f5219d9f42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the tomb of the Akbar'),
            ('B', 'Is the first Mughal monument of the white marble and was designed by the Mirak Mirza Ghiyas'),
            ('C', 'It is at Agra'),
            ('D', 'It was designed by the Sinan')
           ) as v(label, option_text)
 where q.question_hash = '829dd7d6671f5646300288f5219d9f42'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Tomb of Akbar'' at Sikandra:',
    'The tomb of the Akbar at Sikandra near Agra, completed by the Jahangir, is the largest of the Mughal tombs in India with the tall southern entrance gateway.',
    'medium',
    'Standard Reference',
    null,
    '8b49fe2f6e681854a464770b50fbfeb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8b49fe2f6e681854a464770b50fbfeb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is at Delhi'),
            ('B', 'It is a Vijayanagara temple'),
            ('C', 'It is a Jain monument'),
            ('D', 'Is the largest of the Mughal tombs in India with the high entrance gateway')
           ) as v(label, option_text)
 where q.question_hash = '8b49fe2f6e681854a464770b50fbfeb5'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Moti Masjid in the Red Fort at Delhi is:',
    'The Moti Masjid, the Pearl Mosque of the Shah Jahan, is in the Red Fort complex and it is built of the white marble with the red sandstone of the fort.',
    'medium',
    'Standard Reference',
    null,
    '3481d6bb79bfdab79889eb5c5ed884a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3481d6bb79bfdab79889eb5c5ed884a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the mosque of the Shah Jahan in the Red Fort built of the white marble'),
            ('B', 'It is the mosque of the Akbar'),
            ('C', 'It is a temple of the Rajputs'),
            ('D', 'It is a monastery')
           ) as v(label, option_text)
 where q.question_hash = '3481d6bb79bfdab79889eb5c5ed884a9'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Was built by the Shah Jahan and it is:',
    'The Jama Masjid of Delhi was built by the Shah Jahan between 1650 and 1656 and it can hold about 25,000 worshippers and it is the largest of the Indian mosques.',
    'easy',
    'Standard Reference',
    null,
    'edee82f5b24bdaae8e3b421c2471b581'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'edee82f5b24bdaae8e3b421c2471b581'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest of the Indian mosques'),
            ('B', 'built by the Akbar'),
            ('C', 'a temple of the Lodi'),
            ('D', 'at Fatehpur Sikri')
           ) as v(label, option_text)
 where q.question_hash = 'edee82f5b24bdaae8e3b421c2471b581'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Which of the following statements regarding the Qutbuddin Aibak and completed is correct?',
    'The Qutb Minar, the red sandstone minaret of the Qutb complex in Delhi, was begun by the Qutbuddin Aibak and completed by his son Iltutmish with the addition of the top storey.',
    'easy',
    'Standard Reference',
    null,
    '34edd00f2c7ffedda69ff2cf16950426'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '34edd00f2c7ffedda69ff2cf16950426'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Akbar'),
            ('B', 'Qutbuddin Aibak and completed by Iltutmish'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Muhammad bin Tughlaq')
           ) as v(label, option_text)
 where q.question_hash = '34edd00f2c7ffedda69ff2cf16950426'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Iron Pillar'' of Delhi:',
    'The Iron Pillar of the Qutb complex, of the fifth century, shows the remarkable corrosion resistance of the iron and it is a World Heritage site as a part of the Qutb complex.',
    'medium',
    'Standard Reference',
    null,
    '94c75d5610d9585b589be5c732b1b9d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '94c75d5610d9585b589be5c732b1b9d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is of the Mughal period'),
            ('B', 'It is a Jain pillar'),
            ('C', 'It is of the British period'),
            ('D', 'Is a testament to the corrosion resistance of the iron of the 5th century')
           ) as v(label, option_text)
 where q.question_hash = '94c75d5610d9585b589be5c732b1b9d4'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Alai Darwaza'' was built by:',
    'The Alai Darwaza, the gateway of the Alai Minar of the Qutb complex in Delhi, was built by the Alauddin Khalji.',
    'medium',
    'Standard Reference',
    null,
    '0ee88901d921ed7392fe8cdb4e19be15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ee88901d921ed7392fe8cdb4e19be15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Firoz Shah Tughlaq'),
            ('B', 'Akbar'),
            ('C', 'Alauddin Khalji'),
            ('D', 'Iltutmish')
           ) as v(label, option_text)
 where q.question_hash = '0ee88901d921ed7392fe8cdb4e19be15'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Firoz Shah Kotla is:',
    'The Firoz Shah Kotla, the citadel of the Tughlaq in Delhi, has the Ashokan pillars and the Jantar Mantar, the observatory of the Jai Singh II.',
    'medium',
    'Standard Reference',
    null,
    '1a84789e403c97cf203a007014c349a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1a84789e403c97cf203a007014c349a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the citadel of the Tughlaq in Delhi with the Ashokan pillars and the Jantar Mantar of the Jai Singh II'),
            ('B', 'a fort of the Mughals'),
            ('C', 'a fort of the British'),
            ('D', 'in Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '1a84789e403c97cf203a007014c349a1'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Purana Qila'' of Delhi:',
    'The Purana Qila, the old fort of Delhi, was built by the Humayun and it houses the Sher Mandal, the tower from which the Shah Jahan is said to have first seen the Taj Mahal.',
    'medium',
    'Standard Reference',
    null,
    '0d4cbd57e1c7ac1328417a0a4a74ee38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d4cbd57e1c7ac1328417a0a4a74ee38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a temple'),
            ('B', 'It is at Agra'),
            ('C', 'Is the old fort of the Humayun and the Sher Mandal'),
            ('D', 'It is a fort of the Akbar')
           ) as v(label, option_text)
 where q.question_hash = '0d4cbd57e1c7ac1328417a0a4a74ee38'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Ashokan pillars at Feroz Shah Kotla in Delhi are:',
    'Two of the Ashokan pillars, one from the Topra in the Haryana and the other from the Meerut, were brought by the Firoz Shah Tughlaq to Delhi and they stand at the Firoz Shah Kotla.',
    'hard',
    'Standard Reference',
    null,
    '424e9dd59f0d3ffe9ad65e48e882f4b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '424e9dd59f0d3ffe9ad65e48e882f4b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are at the Sanchi'),
            ('B', 'They are at the Sarnath'),
            ('C', 'They are at the Patna'),
            ('D', 'Two of the Ashokan pillars stand at the Feroz Shah Kotla in Delhi')
           ) as v(label, option_text)
 where q.question_hash = '424e9dd59f0d3ffe9ad65e48e882f4b4'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Bharatanatyam, with the araimandi and the adavu, is:',
    'The Bharatanatyam, the classical dance of the Tamil country, is marked by the araimandi, the adavu and the jati and the ashtami and the araimandi of the older temple tradition.',
    'easy',
    'Standard Reference',
    null,
    '6047137cfeecfa943c791bb67cea7ab3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6047137cfeecfa943c791bb67cea7ab3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the folk dance of the Punjab'),
            ('B', 'It is the classical dance of the Tamil temples with the araimandi and the adavu and the jati'),
            ('C', 'It is the dance of Kerala'),
            ('D', 'It is the dance of Odisha')
           ) as v(label, option_text)
 where q.question_hash = '6047137cfeecfa943c791bb67cea7ab3'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Rukmini Devi Arundale is best known for:',
    'The Rukmini Devi Arundale founded the Kalakshetra in Madras in 1936 and she was largely responsible for the revival of the Bharatanatyam on the stage.',
    'easy',
    'Standard Reference',
    null,
    'b25cd669cb1fb42e81dd64fe2258af67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b25cd669cb1fb42e81dd64fe2258af67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'She founded the Kalakshetra in 1936 and she revived the Bharatanatyam'),
            ('B', 'She was a noted singer of the Carnatic music'),
            ('C', 'She was the founder of the Kalakshetra in 1948'),
            ('D', 'She was a disciple of the Pandanallur Meenakshi Sundaram Pillai')
           ) as v(label, option_text)
 where q.question_hash = 'b25cd669cb1fb42e81dd64fe2258af67'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Kathak dance form developed in the:',
    'The Kathak developed in the courts of Lucknow, Jaipur and Banaras with the spins of the Delhi gharana, the vocabulary of the Lucknow gharana and the abhinaya of the Jaipur gharana.',
    'medium',
    'Standard Reference',
    null,
    '3ee12a172021e951fb02fcf5525b5097'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3ee12a172021e951fb02fcf5525b5097'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It developed in the caves of Ellora'),
            ('B', 'It developed in the royal courts of Mysore'),
            ('C', 'It developed in the courts of Lucknow, Jaipur and Banaras with the spins and the abhinaya'),
            ('D', 'It developed in the temples of Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '3ee12a172021e951fb02fcf5525b5097'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Kathakali, with the chuvanna thaadi and the elaborate make-up, is:',
    'The Kathakali of Kerala combines the acting, the dance, the music and the costume with the elaborate make-up in which the chuvanna thaadi marks the demonic roles.',
    'easy',
    'Standard Reference',
    null,
    '0c93025a6abe294c72b8535930c1f8ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c93025a6abe294c72b8535930c1f8ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a martial dance of the Punjab'),
            ('B', 'It is the classical dance-drama of Kerala with the elaborate make-up and the chuvanna thaadi'),
            ('C', 'It is the classical dance of Tamil Nadu'),
            ('D', 'It is the dance of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '0c93025a6abe294c72b8535930c1f8ba'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Koodiyattam is:',
    'The Koodiyattam or the Kutiyattam, in which the performers speak in Sanskrit, is the only surviving theatre form from the classical period and it is inscribed on the UNESCO list.',
    'medium',
    'Standard Reference',
    null,
    '09a315a734c7b56dbec90be8feffb869'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '09a315a734c7b56dbec90be8feffb869'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the folk theatre of Karnataka'),
            ('B', 'Is the dance of Odisha'),
            ('C', 'Is a modern theatre form'),
            ('D', 'Is the ancient Sanskrit theatre of Kerala and it is the only theatre form from the classical period still in existence')
           ) as v(label, option_text)
 where q.question_hash = '09a315a734c7b56dbec90be8feffb869'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Mohiniyattam is:',
    'The Mohiniyattam, the lasya and the most beautiful of the classical dances, is the dance of the enchantress and it is associated with the stories of the Krishna.',
    'medium',
    'Standard Reference',
    null,
    '46503d96fbfd0309ae3622991ee04e4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '46503d96fbfd0309ae3622991ee04e4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the dance of Odisha'),
            ('B', 'It is the folk dance of the Punjab'),
            ('C', 'Is the classical dance of Kerala with the lasya and the grace and it is called the dance of the enchantress'),
            ('D', 'It is the dance of Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '46503d96fbfd0309ae3622991ee04e4d'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which of the following statements about the Odissi dance is correct?',
    'The Odissi is the classical dance of Odisha with the characteristic tribhanga and the Lasya and the Bhanga styles and it is the temple dance of the Jagannath at Puri.',
    'easy',
    'Standard Reference',
    null,
    '86623b27e150e0e1da185fe51881c58f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '86623b27e150e0e1da185fe51881c58f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the classical dance of Odisha with the tribhanga and the temple of the Jagannath at Puri'),
            ('B', 'It is the dance of Kerala'),
            ('C', 'It is the dance of Tamil Nadu'),
            ('D', 'It is a folk dance of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '86623b27e150e0e1da185fe51881c58f'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Manipuri dance is:',
    'The Manipuri, with the Ras Lila of the Vaishnava tradition, was given the status of a classical dance in 1974 and it is the only classical dance of the North-East.',
    'medium',
    'Standard Reference',
    null,
    '1f5ee1799634041ded5ca8cc2d398f5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1f5ee1799634041ded5ca8cc2d398f5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a temple dance of the south'),
            ('B', 'Is the classical dance of Manipur with the Ras Lila and it was given the classical status in 1974'),
            ('C', 'It is the dance of Kerala'),
            ('D', 'It is the dance of the Rajputs')
           ) as v(label, option_text)
 where q.question_hash = '1f5ee1799634041ded5ca8cc2d398f5e'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which of the following statements about the Sattriya dance is correct?',
    'The Sattriya, the neo-Vaishnava dance of Assam and Manipur codified by the Srimanta Sankardeva in the sixteenth century, was given the classical status in 2000.',
    'hard',
    'Standard Reference',
    null,
    'd63dbbf6aff51a8f65858867f6e8460f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd63dbbf6aff51a8f65858867f6e8460f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the dance of Manipur'),
            ('B', 'It is the folk dance of the Punjab'),
            ('C', 'It is a temple dance of Kerala'),
            ('D', 'Is the neo-Vaishnava dance of Assam codified by the Srimanta Sankardeva and it was recognised in 2000')
           ) as v(label, option_text)
 where q.question_hash = 'd63dbbf6aff51a8f65858867f6e8460f'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which of the following statements about the Chhau dance is correct?',
    'The Chhau is a semi-classical dance from the Seraikella, the Purulia and the Mayurbhanj regions and the Seraikella Chhau was given the classical status in 2010.',
    'medium',
    'Standard Reference',
    null,
    '90c1cabcc631cba34fd672867e67da9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '90c1cabcc631cba34fd672867e67da9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the dance of Kerala'),
            ('B', 'It is a martial dance of the Rajputs'),
            ('C', 'It is the folk dance of the Punjab'),
            ('D', 'Is the masked dance of the Seraikella, the Purulia and the Mayurbhanj and the Seraikella was given the classical status in 2010')
           ) as v(label, option_text)
 where q.question_hash = '90c1cabcc631cba34fd672867e67da9d'
on conflict (question_id, label) do nothing;

-- art_culture | dance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which of the following statements about the Gotipua dance is correct?',
    'The Gotipua is a dramatic folk dance of the Mayurbhanj region of Odisha in which the dancers enact the episodes from the Puranas and the Indian mythology.',
    'hard',
    'Standard Reference',
    null,
    '38dacfd070c2d154f565a623c3e36ec1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '38dacfd070c2d154f565a623c3e36ec1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the dance of Kerala'),
            ('B', 'Is the dramatic folk dance of the Mayurbhanj in Odisha which enacts the Puranic stories'),
            ('C', 'It is the masked dance of the Seraikella'),
            ('D', 'It is the classical dance of Manipur')
           ) as v(label, option_text)
 where q.question_hash = '38dacfd070c2d154f565a623c3e36ec1'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Ghoomar dance is:',
    'The Ghoomar is a folk dance of Rajasthan in which the women of the Bhil and the Garasia communities perform it in a circle with the clapping.',
    'medium',
    'Standard Reference',
    null,
    'fe5f1e0ff6ec9f644adc9d13b4e699e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fe5f1e0ff6ec9f644adc9d13b4e699e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a devotional dance of the Braj'),
            ('B', 'It is a temple dance of Tamil Nadu'),
            ('C', 'Is a folk dance of Rajasthan performed by the Bhil women'),
            ('D', 'It is a Punjabi harvest dance')
           ) as v(label, option_text)
 where q.question_hash = 'fe5f1e0ff6ec9f644adc9d13b4e699e9'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which of the following statements about the Garba dance is correct?',
    'The Garba and the Dandiya are the community folk dances of Gujarat and they are played during the nine nights of the Navratri with the garba and the dandiya.',
    'easy',
    'Standard Reference',
    null,
    'eca5b5e220e44b6839e5f8444b7c99a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eca5b5e220e44b6839e5f8444b7c99a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the folk dance of Gujarat played during the Navratri'),
            ('B', 'It is the dance of the Kerala temples'),
            ('C', 'It is a martial dance of the Rajputs'),
            ('D', 'It is the dance of the Devadasis')
           ) as v(label, option_text)
 where q.question_hash = 'eca5b5e220e44b6839e5f8444b7c99a5'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which of the following statements about the Lavani dance is correct?',
    'The Lavani of Maharashtra is a long narrative ballad of the wandering poet and the shepherd communities and it is sung in a Marathi dialect.',
    'medium',
    'Standard Reference',
    null,
    'a660ec90ac35ecf9743a49a6c03ed72d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a660ec90ac35ecf9743a49a6c03ed72d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the dance of the Garhwal'),
            ('B', 'It is a devotional dance of the temple'),
            ('C', 'It is the folk dance of the Khasi hills'),
            ('D', 'Is the folk dance of Maharashtra sung in a Marathi dialect')
           ) as v(label, option_text)
 where q.question_hash = 'a660ec90ac35ecf9743a49a6c03ed72d'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Kummattikali'' is:',
    'The Kummattikali is a folk theatre of Kerala performed on the fifth day of the Malayalam month of Meenam with the vigorous singing and the drumming and the make-up.',
    'medium',
    'Standard Reference',
    null,
    'dc26ada276b7e590bdaa691cf9ecaad8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc26ada276b7e590bdaa691cf9ecaad8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A temple dance of Tamil Nadu'),
            ('B', 'A theatre of the Devadasis'),
            ('C', 'A folk theatre of Kerala performed on the fifth day of the Malayalam month of Meenam'),
            ('D', 'A folk dance of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'dc26ada276b7e590bdaa691cf9ecaad8'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Yakshagana'' of Karnataka:',
    'The Yakshagana of coastal Karnataka and north Kerala is a dance-drama with the elaborate headgear, the face painting, the singing of the chorus and the vigorous acting.',
    'medium',
    'Standard Reference',
    null,
    'efec9bd67697ef3f797eb2098762bffb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'efec9bd67697ef3f797eb2098762bffb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the dance-drama with the elaborate headgear and the face painting and the vigorous chorus'),
            ('B', 'It is a folk theatre of Kerala'),
            ('C', 'It is a devotional theatre of the Bhakti movement'),
            ('D', 'It is the theatre of the Marathas')
           ) as v(label, option_text)
 where q.question_hash = 'efec9bd67697ef3f797eb2098762bffb'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Badagutittu is:',
    'The Badagutittu, with its simpler costume and the use of the stringed instruments, is the closely related folk theatre of the coastal Karnataka.',
    'hard',
    'Standard Reference',
    null,
    '5b9a9c2d0817a713d3323459cff193a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5b9a9c2d0817a713d3323459cff193a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the folk theatre of the Punjab'),
            ('B', 'the closely related folk theatre of the coastal Karnataka'),
            ('C', 'a temple dance of Tamil Nadu'),
            ('D', 'the dance of the Pattachitra')
           ) as v(label, option_text)
 where q.question_hash = '5b9a9c2d0817a713d3323459cff193a4'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Ankiya Naat'' was codifed by:',
    'The Ankiya Naat, the Vaishnava neo-Vaishnavite musical play, was codified by the Srimanta Sankardeva and the Madhavdeva and the Chandideva followed him.',
    'hard',
    'Standard Reference',
    null,
    '31e9fb1aa11e1a52bda7e7e463e58652'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31e9fb1aa11e1a52bda7e7e463e58652'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandideva'),
            ('B', 'Srimanta Sankardeva'),
            ('C', 'Sankardeva''s disciple'),
            ('D', 'Madhavdeva')
           ) as v(label, option_text)
 where q.question_hash = '31e9fb1aa11e1a52bda7e7e463e58652'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Ramlila'' of Ramnagar:',
    'The Ramlila of Ramnagar in Varanasi, performed with the wooden masks and the traditional style, was proclaimed a Masterpiece of the Oral and Intangible Heritage by UNESCO in 2003.',
    'medium',
    'Standard Reference',
    null,
    'e9605e20705e833fa1b02744c6b6967e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e9605e20705e833fa1b02744c6b6967e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the opera of the Tamil Nadu'),
            ('B', 'It is a ritual dance of the tribal Odisha'),
            ('C', 'Is the traditional performance of the Ramayana with the masks and it was declared a UNESCO masterpiece in 2003'),
            ('D', 'It is a folk theatre of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'e9605e20705e833fa1b02744c6b6967e'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Nautanki'' is:',
    'The Nautanki, which evolved from the sung narration, is a folk theatre of the northern India and it is the most popular in the Awadh region of Uttar Pradesh.',
    'easy',
    'Standard Reference',
    null,
    '3a6abc11f147b7f4acd30aa5ab6aff29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3a6abc11f147b7f4acd30aa5ab6aff29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A ritual dance of the south'),
            ('B', 'A musical form of the Punjab'),
            ('C', 'A painting style of the Rajputs'),
            ('D', 'A folk theatre of northern India, especially of Awadh')
           ) as v(label, option_text)
 where q.question_hash = '3a6abc11f147b7f4acd30aa5ab6aff29'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Which of the following statements about the Tamasha folk theatre is correct?',
    'The Tamasha is the folk theatre of Maharashtra and the Bhavai of Gujarat, and both are the sung and the danced forms with the improvisation.',
    'medium',
    'Standard Reference',
    null,
    '860df3afec68861e12fc55d50f9e193d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '860df3afec68861e12fc55d50f9e193d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the folk theatre of Maharashtra and the Bhavai is of Gujarat'),
            ('B', 'It is the theatre of the Punjab'),
            ('C', 'It is the temple theatre of Kerala'),
            ('D', 'It is a ritual of the tribal Odisha')
           ) as v(label, option_text)
 where q.question_hash = '860df3afec68861e12fc55d50f9e193d'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Which of the following statements about the IPTA is correct?',
    'The Indian People''s Theatre Association, founded in Bombay in 1943, was the most significant of the progressive theatre movements of India and it staged the plays of the Bhupen Hazarika.',
    'medium',
    'Standard Reference',
    null,
    '33a882575c1f0a147d88398d2877ba1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '33a882575c1f0a147d88398d2877ba1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was founded in 1930 in Calcutta'),
            ('B', 'It was founded by the Prithvi Theatre'),
            ('C', 'It was a commercial theatre'),
            ('D', 'Was the progressive theatre movement founded in 1943 in Bombay')
           ) as v(label, option_text)
 where q.question_hash = '33a882575c1f0a147d88398d2877ba1e'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Habib Tanvir is best known for:',
    'The Habib Tanvir founded the Naya Theatre in 1959 and the Charandas, with its rustic setting of the village, was his most celebrated production.',
    'medium',
    'Standard Reference',
    null,
    'b2129e1397cb1106db1dcf71193a7d0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2129e1397cb1106db1dcf71193a7d0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a disciple of the Ebrahim Alkazi'),
            ('B', 'He founded the Naya Theatre in 1959 and the Charandas was his most celebrated production'),
            ('C', 'He founded the Prithvi Theatre'),
            ('D', 'He founded the IPTA')
           ) as v(label, option_text)
 where q.question_hash = 'b2129e1397cb1106db1dcf71193a7d0c'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The Badal Sircar is:',
    'The Badal Sircar founded the Third Theatre in Calcutta in 1970 and his street plays brought the theatre to the common people in the rural Bengal.',
    'medium',
    'Standard Reference',
    null,
    'bbe2e034c26bf4424f75c12ebd13d85e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bbe2e034c26bf4424f75c12ebd13d85e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He founded the IPTA'),
            ('B', 'He was a disciple of the B.V. Karanth'),
            ('C', 'He founded the Third Theatre in Calcutta in 1970 and the street theatre for the common people'),
            ('D', 'He founded the Naya Theatre')
           ) as v(label, option_text)
 where q.question_hash = 'bbe2e034c26bf4424f75c12ebd13d85e'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Ebrahim Alkazi was:',
    'The Ebrahim Alkazi, a disciple of the Abdur Rehman and the Kutubuddin Shaikh, was the pioneer of the modern Indian theatre and he directed the Darpana and the Theatre Unit of the National School of Drama.',
    'hard',
    'Standard Reference',
    null,
    '1bc34fc9a4628acd7be40392bb871498'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1bc34fc9a4628acd7be40392bb871498'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the pioneer of the modern Indian theatre and he directed the Darpana and the Theatre Unit of the NSD'),
            ('B', 'a painter'),
            ('C', 'a film director'),
            ('D', 'a poet')
           ) as v(label, option_text)
 where q.question_hash = '1bc34fc9a4628acd7be40392bb871498'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The National School of Drama of the India:',
    'The National School of Drama was set up in 1959 in New Delhi and it became the foremost institution of the theatre training in India.',
    'medium',
    'Standard Reference',
    null,
    'f3f0e3570666583b73bc1f97016a575f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f3f0e3570666583b73bc1f97016a575f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up in 1975'),
            ('B', 'in the Mumbai'),
            ('C', 'set up by the Badal Sircar'),
            ('D', 'set up in 1959 in New Delhi')
           ) as v(label, option_text)
 where q.question_hash = 'f3f0e3570666583b73bc1f97016a575f'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Raja Harishchandra'' of 1913:',
    'The Raja Harishchandra of 1913, made by the Dadasaheb Phalke, was the first Indian feature film and the Phalke is known as the father of Indian cinema.',
    'easy',
    'Standard Reference',
    null,
    '92c149cee9fd197cde628168f2e99f99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '92c149cee9fd197cde628168f2e99f99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first Indian film with an actress'),
            ('B', 'Was the first documentary'),
            ('C', 'Was the first Indian feature film made by the Dadasaheb Phalke'),
            ('D', 'Was the first Indian talkie')
           ) as v(label, option_text)
 where q.question_hash = '92c149cee9fd197cde628168f2e99f99'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Alam Ara'' of 1931:',
    'The Alam Ara, directed by the Ardeshir Irani and released in 1931, was the first Indian talkie film and it was a commercial success.',
    'easy',
    'Standard Reference',
    null,
    'cfa64ff992931b78c5beb7eca52610dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cfa64ff992931b78c5beb7eca52610dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first Indian documentary'),
            ('B', 'Was the first Indian talkie film and it was directed by the Ardeshir Irani'),
            ('C', 'Was the first Indian silent feature'),
            ('D', 'Was the first colour film')
           ) as v(label, option_text)
 where q.question_hash = 'cfa64ff992931b78c5beb7eca52610dd'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Kisan Kanya'' of 1937:',
    'The Kisan Kanya of 1937, made by the Imperial Films, was the first Indian colour film and the first Indian film to be screened at the Cannes film festival.',
    'medium',
    'Standard Reference',
    null,
    'e02eec32d46c883bba828bc74257f10a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e02eec32d46c883bba828bc74257f10a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first Indian colour film and it was made by the Imperial Films'),
            ('B', 'Was the first Indian talkie'),
            ('C', 'Was the first Indian documentary'),
            ('D', 'Was the first Indian animation')
           ) as v(label, option_text)
 where q.question_hash = 'e02eec32d46c883bba828bc74257f10a'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Pather Panchali'' of 1955:',
    'The Pather Panchali of the Satyajit Ray won the Best Feature Film and the Best Cinematography awards at the inaugural National Film Awards of 1956 and it was based on the novel of the Bibhutibhushan Bandyopadhyay.',
    'medium',
    'Standard Reference',
    null,
    'd768879267bcb66f20bbe0a7942a6e5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd768879267bcb66f20bbe0a7942a6e5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Won the Golden Bear at Berlin'),
            ('B', 'Was the first film of the Parallel Cinema'),
            ('C', 'Was a documentary'),
            ('D', 'Won the Best Feature Film and the Best Cinematography at the first National Film Awards')
           ) as v(label, option_text)
 where q.question_hash = 'd768879267bcb66f20bbe0a7942a6e5f'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Apu Trilogy'' of the Satyajit Ray:',
    'The Apu Trilogy consists of the Pather Panchali, the Aparajito and the Apur Sansar and the third part won the Golden Lion at the Venice film festival in 1959.',
    'medium',
    'Standard Reference',
    null,
    '2e079b6a8a8de89da528a8cd29f23696'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e079b6a8a8de89da528a8cd29f23696'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Consists of the Pather Panchali, the Aparajito and the Apur Sansar'),
            ('B', 'Consists of the Charulata and the Pratidwandi and the Ganashatru'),
            ('C', 'Consists of the Mahanagar and the Charulata and the Shatranj'),
            ('D', 'Consists of the Goopy Gyne and the Bagha Jatin and the Hirak Rajar Deshe')
           ) as v(label, option_text)
 where q.question_hash = '2e079b6a8a8de89da528a8cd29f23696'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Golden Bear'' of the Berlin film festival was won by:',
    'The Pather Panchali won the Golden Bear at the Berlin International Film Festival in 1956 and the Apur Sansar won the Golden Lion at Venice in 1959.',
    'hard',
    'Standard Reference',
    null,
    '5b00178a9713a9994b181da5c8e64a0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5b00178a9713a9994b181da5c8e64a0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Neecha Nagar'),
            ('B', 'The Nagarik'),
            ('C', 'The Pather Panchali'),
            ('D', 'The Apur Sansar')
           ) as v(label, option_text)
 where q.question_hash = '5b00178a9713a9994b181da5c8e64a0d'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Neecha Nagar'' of 1946:',
    'The Neecha Nagar of 1946, made by the Chetan Anand, was the first Indian film to win the Grand Prix at the Cannes film festival.',
    'hard',
    'Standard Reference',
    null,
    'aae3ac2f515f23164a5413dd23cec09f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aae3ac2f515f23164a5413dd23cec09f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first documentary'),
            ('B', 'Was the first Indian film to win the Grand Prix at the Cannes film festival'),
            ('C', 'Was the first Indian talkie'),
            ('D', 'Was the first Indian colour film')
           ) as v(label, option_text)
 where q.question_hash = 'aae3ac2f515f23164a5413dd23cec09f'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Dadasaheb Phalke Award'' was instituted in:',
    'The Dadasaheb Phalke Award, the highest Indian award in cinema, was instituted in 1969 and it is presented by the President of India.',
    'easy',
    'Standard Reference',
    null,
    'b660d9dbc43e1f036dea25a7cc018b46'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b660d9dbc43e1f036dea25a7cc018b46'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972'),
            ('B', '1961'),
            ('C', '1969'),
            ('D', '1954')
           ) as v(label, option_text)
 where q.question_hash = 'b660d9dbc43e1f036dea25a7cc018b46'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Raja Ram Mohan Roy was:',
    'The Raja Ram Mohan Roy, a pioneer of the Indian theatre and the founder of the Ballygunge theatre, was the leading figure of the Bengali theatre of the nineteenth century.',
    'hard',
    'Standard Reference',
    null,
    '66e551c92f19a40467b25a5afc33af1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '66e551c92f19a40467b25a5afc33af1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a pioneer of the Indian theatre and the founder of the Ballygunge theatre'),
            ('B', 'a painter'),
            ('C', 'the father of the Indian cinema'),
            ('D', 'a musician')
           ) as v(label, option_text)
 where q.question_hash = '66e551c92f19a40467b25a5afc33af1a'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Girish Karnad is best known as:',
    'The Girish Karnad, a doyen of the Indian theatre, wrote the Tughlaq, the Kaagaz Te Patte, the Tabbal and the Chowka Bage and he won the Jnanpith in 1998.',
    'medium',
    'Standard Reference',
    null,
    '27d04e206a7a5147b7544717319830bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '27d04e206a7a5147b7544717319830bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He directed the first Hindi talkie'),
            ('B', 'He wrote the Tughlaq and the Kaagaz Te Patte and the Tabbal and the Chowka Bage'),
            ('C', 'He wrote the Naya Theatre plays'),
            ('D', 'He founded the IPTA')
           ) as v(label, option_text)
 where q.question_hash = '27d04e206a7a5147b7544717319830bc'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Guru Dutt is best known for directing:',
    'The Guru Dutt, a legendary actor of the golden age of the Hindi cinema, directed the Pyaasa and the Sahib Bibi Aur Ghulam and he was the husband of the Geeta Dutt.',
    'medium',
    'Standard Reference',
    null,
    '2d5082d15377ecd5b666d3610e9fa91b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2d5082d15377ecd5b666d3610e9fa91b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He directed the Aadmi Aur Aurat'),
            ('B', 'He directed the first talkie'),
            ('C', 'He was the father of the Indian parallel cinema'),
            ('D', 'He directed the Pyaasa and the Sahib Bibi Aur Ghulam and he was a great actor of the golden age')
           ) as v(label, option_text)
 where q.question_hash = '2d5082d15377ecd5b666d3610e9fa91b'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Bimal Roy is best known for directing:',
    'The Bimal Roy, often called the Greta Garbo of Indian cinema, directed the Mother India, the Do Bigha Zamin and the Devdas and he won the Best Director at Cannes for the Mother India.',
    'medium',
    'Standard Reference',
    null,
    '19a7fcfd0748f3805e27226eddabf060'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19a7fcfd0748f3805e27226eddabf060'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He directed the Pyaasa'),
            ('B', 'He directed the Aadmi Aur Aurat'),
            ('C', 'He was a music director'),
            ('D', 'He directed the Mother India and the Do Bigha Zamin and the Devdas')
           ) as v(label, option_text)
 where q.question_hash = '19a7fcfd0748f3805e27226eddabf060'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Satyajit Ray is best known for:',
    'The Satyajit Ray composed the music of his films like the Goopy Gyne, the Bagha Jatin and the Hirak Rajar Deshe and he received the honorary Academy Award in 1992.',
    'hard',
    'Standard Reference',
    null,
    'b6206170e75747da649dea3e98951517'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6206170e75747da649dea3e98951517'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a disciple of the Ritwik Ghatak'),
            ('B', 'He composed the music of the Goopy Gyne, the Bagha Jatin and the Hirak Rajar Deshe and he won the Oscar for the Lifetime Achievement'),
            ('C', 'He composed the music of the Mother India'),
            ('D', 'He was the founder of the Film and Television Institute')
           ) as v(label, option_text)
 where q.question_hash = 'b6206170e75747da649dea3e98951517'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'Bhupen Hazarika was:',
    'The Bhupen Hazarika is called the father of the Indian music and he composed the music of the Garm Hava and the Kal Aaj Aur Kal and he received the Bharat Ratna.',
    'medium',
    'Standard Reference',
    null,
    '0c5a93d7a72f0cfde11eec0e07f87f7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0c5a93d7a72f0cfde11eec0e07f87f7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the director of the Pather Panchali'),
            ('B', 'the founder of the Assamese cinema'),
            ('C', 'the father of the Indian music and the film score of the Garm Hava'),
            ('D', 'the founder of the Sangeet Natak Akademi')
           ) as v(label, option_text)
 where q.question_hash = '0c5a93d7a72f0cfde11eec0e07f87f7b'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'R.D. Burman is best known as:',
    'The R.D. Burman, the son of the S.D. Burman, was one of the most celebrated music directors of the Hindi cinema with the hits like the Mehbooba and the Chura Liya.',
    'easy',
    'Standard Reference',
    null,
    'ed33057c4ea7f11ff95cc77e77f2bfa6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ed33057c4ea7f11ff95cc77e77f2bfa6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a celebrated composer of the Hindi cinema and the son of the S.D. Burman'),
            ('B', 'He was the director of the Mughal-e-Azam'),
            ('C', 'He was a classical vocalist'),
            ('D', 'He was a film producer')
           ) as v(label, option_text)
 where q.question_hash = 'ed33057c4ea7f11ff95cc77e77f2bfa6'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Semmangudi Srinivasa Iyer was:',
    'The Semmangudi Srinivasa Iyer, a leading Carnatic vocalist of the 20th century, was the disciple of the Tiger of the East, the Chembai Vaidyanatha Bhagavatar.',
    'hard',
    'Standard Reference',
    null,
    '71b21501e44c4de3af79cabf3d22632c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '71b21501e44c4de3af79cabf3d22632c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a theatre pioneer'),
            ('B', 'a leading Carnatic vocalist of the Pallava era'),
            ('C', 'a Hindustani vocalist'),
            ('D', 'a violinist')
           ) as v(label, option_text)
 where q.question_hash = '71b21501e44c4de3af79cabf3d22632c'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Gangubai Hangal'' was a:',
    'The Gangubai Hangal of the Kirana gharana was among the foremost Hindustani vocalists of the twentieth century and she received the Padma Bhushan in 2002.',
    'medium',
    'Standard Reference',
    null,
    'fbcbd8316154e188fe1d594d83f61800'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fbcbd8316154e188fe1d594d83f61800'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hindustani vocalist of the Kirana gharana'),
            ('B', 'Carnatic vocalist'),
            ('C', 'A violinist'),
            ('D', 'A composer of the film music')
           ) as v(label, option_text)
 where q.question_hash = 'fbcbd8316154e188fe1d594d83f61800'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Hindustani music system is based on the:',
    'The Hindustani system has the ten thaats of which the six are recognised, and the Carnatic has the seventy two melakarta ragas in the twelve vinas.',
    'hard',
    'Standard Reference',
    null,
    '6f9254d1225c68fc925aa96e7c00431b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6f9254d1225c68fc925aa96e7c00431b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The five shrutis and the twelve ragas'),
            ('B', 'The seven notes and the four shrutis'),
            ('C', 'The ten talas and the twelve vinas'),
            ('D', 'The six taats of the Hindustani system and the melakarta in the Carnatic')
           ) as v(label, option_text)
 where q.question_hash = '6f9254d1225c68fc925aa96e7c00431b'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Khayal in the Hindustani music is:',
    'The khayal, the principal vocal genre of the Hindustani music, is the most frequently performed and it is based on the improvisation within the raga.',
    'easy',
    'Standard Reference',
    null,
    '7af763ef08fb50d7f71ce15ebb4a69f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7af763ef08fb50d7f71ce15ebb4a69f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a percussion style'),
            ('B', 'It is a devotional song of the Punjab'),
            ('C', 'Is the principal vocal genre of the Hindustani music and it is the improvisational'),
            ('D', 'Is the oldest vocal style')
           ) as v(label, option_text)
 where q.question_hash = '7af763ef08fb50d7f71ce15ebb4a69f5'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Dhrupad of the Hindustani music is:',
    'The dhrupad, the oldest vocal genre of the Hindustani music, is sung in the Dhrupad and the Dhama styles and it is the ancestor of the khayal.',
    'medium',
    'Standard Reference',
    null,
    'fd8f67994c1431d7e1bed86e07fcfc05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd8f67994c1431d7e1bed86e07fcfc05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the Carnatic genre'),
            ('B', 'It is a drum composition'),
            ('C', 'It is a devotional genre of the Tamil Nadu'),
            ('D', 'Is the oldest vocal genre of the Hindustani music and it is in the Dhrupad and the Dhama styles')
           ) as v(label, option_text)
 where q.question_hash = 'fd8f67994c1431d7e1bed86e07fcfc05'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'Which of the following statements about the Varnam of the Carnatic music is correct?',
    'The varnam, an improvised and an elaborate composition in the raga, precedes the main composition in a Carnatic concert and the most famous is the kritis of the Tyagaraja.',
    'medium',
    'Standard Reference',
    null,
    '937805ef3803b5685e9e9eba9ed536df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '937805ef3803b5685e9e9eba9ed536df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the improvised composition in the Carnatic music that precedes the main piece'),
            ('B', 'Is a Hindustani genre'),
            ('C', 'It is a percussion item'),
            ('D', 'It is a temple ritual')
           ) as v(label, option_text)
 where q.question_hash = '937805ef3803b5685e9e9eba9ed536df'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Krits of the Carnatic music are:',
    'The kritis, the composed pieces in the Carnatic music, number over 4,000 and the Tyagaraja, the Muthuswami Dikshitar and the Syama Sastri composed the bulk of them.',
    'hard',
    'Standard Reference',
    null,
    '3544989899005974d573d67303d0cce5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3544989899005974d573d67303d0cce5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the temple rituals'),
            ('B', 'Are the compositions in the Carnatic music and the Trinity composed more than 4,000 of them'),
            ('C', 'Are the drum compositions'),
            ('D', 'Are the Hindustani thumris')
           ) as v(label, option_text)
 where q.question_hash = '3544989899005974d573d67303d0cce5'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Trinity'' of the Carnatic music:',
    'The Trinity of the Carnatic music is the Tyagaraja, the Muthuswami Dikshitar and the Syama Sastri of the eighteenth century, and the Annamacharya is called the father of the Carnatic music.',
    'easy',
    'Standard Reference',
    null,
    'd04213d0b2470a61a648e25c7a0e42f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd04213d0b2470a61a648e25c7a0e42f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Balkavi and the Annamacharya'),
            ('B', 'Venkatamakhin and the Sripandaraja'),
            ('C', 'Tyagaraja, Muthuswami Dikshitar and Syama Sastri'),
            ('D', 'Purandara Dasa, Kanaka Dasa and Vyasatirtha')
           ) as v(label, option_text)
 where q.question_hash = 'd04213d0b2470a61a648e25c7a0e42f0'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Purandara Dasa'' is known as the:',
    'The Purandara Dasa, a disciple of the Vyasaraja and a follower of the Vallabhacharya, is known as the father of the Carnatic music and he composed more than 4,000 songs.',
    'easy',
    'Standard Reference',
    null,
    'bc97b0d81004ec4ceab3518cb8ffb108'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bc97b0d81004ec4ceab3518cb8ffb108'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Father of the Vedic music'),
            ('B', 'Father of the Carnatic music'),
            ('C', 'Father of the Hindustani music'),
            ('D', 'Father of the Bharatanatyam')
           ) as v(label, option_text)
 where q.question_hash = 'bc97b0d81004ec4ceab3518cb8ffb108'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Bansuri of the Hindustani music is:',
    'The bansuri, the bamboo flute, is the most common wind instrument of the Hindustani music and the shehnai is the double-reed one.',
    'easy',
    'Standard Reference',
    null,
    '0b981e755a356aff169198d9699a227f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b981e755a356aff169198d9699a227f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a percussion instrument'),
            ('B', 'Is a bowed instrument'),
            ('C', 'Is the bamboo flute of the Hindustani music'),
            ('D', 'Is a string instrument')
           ) as v(label, option_text)
 where q.question_hash = '0b981e755a356aff169198d9699a227f'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Sarod of the Hindustani music is:',
    'The sarod, a fretless string instrument with a wide bridge, was popularised by the Ravi Shankar and it is a principal instrument of the Hindustani music.',
    'easy',
    'Standard Reference',
    null,
    '68b3c1dea5517148cee0b2cc974ca993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '68b3c1dea5517148cee0b2cc974ca993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a fretless string instrument popularised by the Ravi Shankar'),
            ('B', 'Is a drum of the Punjab'),
            ('C', 'It is a vocal genre'),
            ('D', 'It is a wind instrument')
           ) as v(label, option_text)
 where q.question_hash = '68b3c1dea5517148cee0b2cc974ca993'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Ghatam of the Carnatic music is:',
    'The ghatam, the clay pot with the drum stretched over it, is the principal percussion instrument of the Carnatic music along with the mridangam.',
    'medium',
    'Standard Reference',
    null,
    '6d5a9759084b69a77f0f754181403172'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6d5a9759084b69a77f0f754181403172'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a wind instrument'),
            ('B', 'It is a bowed instrument'),
            ('C', 'It is a vocal genre'),
            ('D', 'Is the barrel-shaped percussion instrument of the Carnatic music')
           ) as v(label, option_text)
 where q.question_hash = '6d5a9759084b69a77f0f754181403172'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'V.N. Bhatkhande is best known for:',
    'The Vishnu Narayan Bhatkhande wrote the Hindustani Sangeet Paddhati and the Sangeet Ratnakari, the two foundational works of the Hindustani music, and the S.N. Ratanjankar wrote the Sangita Ratnakari of the Carnatic.',
    'hard',
    'Standard Reference',
    null,
    '02156048ba1bf321f76e72978f3d676e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '02156048ba1bf321f76e72978f3d676e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Natyashastra'),
            ('B', 'He wrote the Sangita Ratnakari of the Carnatic'),
            ('C', 'He wrote the Brihaddeshi'),
            ('D', 'He wrote the Hindustani Sangeet Paddhati and the V.N. Bhatkhande’s Sangeet Ratnakari')
           ) as v(label, option_text)
 where q.question_hash = '02156048ba1bf321f76e72978f3d676e'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Sangita Ratnakari'' was written by:',
    'The Sangita Ratnakari, the standard text of the Carnatic music, was written by the S.N. Ratanjankar and it is the companion of the Hindustani Sangeet Paddhati of the Bhatkhande.',
    'hard',
    'Standard Reference',
    null,
    '6ec1309db8f2dd0fa037526cdd322e96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6ec1309db8f2dd0fa037526cdd322e96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Purandara Dasa'),
            ('B', 'S.N. Ratanjankar'),
            ('C', 'V.N. Bhatkhande'),
            ('D', 'Tyagaraja')
           ) as v(label, option_text)
 where q.question_hash = '6ec1309db8f2dd0fa037526cdd322e96'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Bishnupur in Bengal is famous for its:',
    'The Bishnupur in the Manipur is famous for the terracotta temples of the eighteenth century with the figures of the Vaishnava deities and it was a centre of the Vaishnavite culture.',
    'medium',
    'Standard Reference',
    null,
    'be5d02726451543692751427b0cf0183'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'be5d02726451543692751427b0cf0183'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is famous for the granite temples'),
            ('B', 'Is famous for the wooden architecture of the Himalayan region'),
            ('C', 'Is famous for the terracotta temples of the eighteenth century'),
            ('D', 'Is famous for the white marble temples')
           ) as v(label, option_text)
 where q.question_hash = 'be5d02726451543692751427b0cf0183'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Chettinad region of Tamil Nadu is famous for:',
    'The Chettinad, in the old Salem region of the Tamil Nadu, is famous for the grand mansions of the Chettiar merchants who traded with Southeast Asia.',
    'medium',
    'Standard Reference',
    null,
    '5b5ac404b4e9a12927d2a79309086967'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5b5ac404b4e9a12927d2a79309086967'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the region of the Tamil Nadu with the grand mansions of the Chettiar merchants'),
            ('B', 'Is a region of the Telugu with the temples'),
            ('C', 'Is a region of the Kerala with the backwaters'),
            ('D', 'Is a region of the Punjab with the forts')
           ) as v(label, option_text)
 where q.question_hash = '5b5ac404b4e9a12927d2a79309086967'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Vadutha style of architecture is:',
    'The Vadutha or the Kerala style uses the sloped roofs, the laterite, the wooden carvings and the murals and it is adapted to the heavy monsoon rainfall.',
    'medium',
    'Standard Reference',
    null,
    '2551148046e3d947ff4a16d05f4a0b00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2551148046e3d947ff4a16d05f4a0b00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the Kerala style of the architecture with the sloped roofs and the laterite and the wooden carvings'),
            ('B', 'It is a Rajput style'),
            ('C', 'It is a Mughal style'),
            ('D', 'It is a Dravidian style')
           ) as v(label, option_text)
 where q.question_hash = '2551148046e3d947ff4a16d05f4a0b00'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Haveli houses of Rajasthan are:',
    'The haveli, the Rajput mansion house, has the inner courtyards, the frescoes and the jharokhas and the typical examples are in the Shekhawati of the Rajasthan and the Marwar.',
    'medium',
    'Standard Reference',
    null,
    'f5a77782a1ffc21154303cd596bf40f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f5a77782a1ffc21154303cd596bf40f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the Chettiar house'),
            ('B', 'It is the Mughal tomb'),
            ('C', 'It is the temple of the Cholas'),
            ('D', 'Is the Rajput mansion house with the courtyards and the frescoes')
           ) as v(label, option_text)
 where q.question_hash = 'f5a77782a1ffc21154303cd596bf40f8'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Shekhawati region of Rajasthan is known for:',
    'The Shekhawati region of the Rajasthan, with the havelis of the wealthy merchants, is the most painted region of the state and it is known as the open-air art gallery of Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    '13863a46977450bc83bb74c9aa3c479b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '13863a46977450bc83bb74c9aa3c479b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the region of the marble work'),
            ('B', 'Is the region of the Rajasthan with the havelis and the frescoes of the merchants'),
            ('C', 'Is the region of the temple architecture'),
            ('D', 'It is the region of the blue pottery')
           ) as v(label, option_text)
 where q.question_hash = '13863a46977450bc83bb74c9aa3c479b'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Sanganer near Jaipur is:',
    'The Sanganer, near Jaipur, is the famous centre of the hand block printing and the bagru and the sanganeri prints are the pride of the Rajasthan.',
    'hard',
    'Standard Reference',
    null,
    '34c7974e444c59e30d2d71456411e374'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '34c7974e444c59e30d2d71456411e374'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the terracotta of the Bishnupur'),
            ('B', 'It is the marble of the Sikhs'),
            ('C', 'Is the printing and the textile block printing centre of the Rajasthan near Jaipur'),
            ('D', 'Is the temple architecture of the Rajputs')
           ) as v(label, option_text)
 where q.question_hash = '34c7974e444c59e30d2d71456411e374'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Bandhani craft is:',
    'The Bandhani, the tie and dye technique in which the tiny knots are tied before the dyeing, is the traditional craft of the Gujarat and the Rajasthan.',
    'easy',
    'Standard Reference',
    null,
    'ae94d7612510f82f3567d117c96c8bb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ae94d7612510f82f3567d117c96c8bb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the weaving of the Kanjeevaram'),
            ('B', 'Is the tie and dye technique of the Gujarat and the Rajasthan'),
            ('C', 'It is the block print of the Sanganer'),
            ('D', 'It is the embroidery of the Phulkari')
           ) as v(label, option_text)
 where q.question_hash = 'ae94d7612510f82f3567d117c96c8bb9'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Phulkari'' of the Punjab:',
    'The Phulkari, literally the flower garden, is a counted thread embroidery of the Punjab with the geometric patterns worked in the long stitches.',
    'medium',
    'Standard Reference',
    null,
    '3439eaadbd95ae4200a1a7f6183ec91d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3439eaadbd95ae4200a1a7f6183ec91d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a block print'),
            ('B', 'It is a wood carving'),
            ('C', 'Is a counted thread embroidery of the geometric patterns'),
            ('D', 'Is a tie and dye technique')
           ) as v(label, option_text)
 where q.question_hash = '3439eaadbd95ae4200a1a7f6183ec91d'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Chikankari'' of Lucknow:',
    'The Chikankari, the shadow embroidery of Lucknow with the white thread on the fine muslin, is one of the oldest crafts of the Uttar Pradesh.',
    'easy',
    'Standard Reference',
    null,
    'f8740d4a829f458f9c0530fac8a793e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f8740d4a829f458f9c0530fac8a793e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a tapestry of the Kashmir'),
            ('B', 'It is a metal work of the Bidar'),
            ('C', 'It is a wood carving of the Bihar'),
            ('D', 'Is the shadow embroidery with the white thread on the muslin')
           ) as v(label, option_text)
 where q.question_hash = 'f8740d4a829f458f9c0530fac8a793e0'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The shawls of the Kashmir are called the pashmina and the pashmina shawl is:',
    'The shawls of the Kashmir are called the pashmina and the pashmina shawl of the Kashmir was the first Indian product to be given the GI tag in 2006-07.',
    'medium',
    'Standard Reference',
    null,
    '90fd7da5c2cb0f18512082a51cac9cdf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90fd7da5c2cb0f18512082a51cac9cdf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the GI product'),
            ('B', 'called the bandhani'),
            ('C', 'called the phulkari'),
            ('D', 'called the kasuti')
           ) as v(label, option_text)
 where q.question_hash = '90fd7da5c2cb0f18512082a51cac9cdf'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Toda embroidery'' of the Nilgiris:',
    'The Toda embroidery of the Nilgiri hills uses the black and the white geometric motifs, with the characteristic black squares and stripes, on a red or a black base.',
    'medium',
    'Standard Reference',
    null,
    '79feee3b5b9fa7e21bb5a3ab0393d7b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '79feee3b5b9fa7e21bb5a3ab0393d7b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the block print'),
            ('B', 'Uses the black and the white geometric motifs on the red or the black base'),
            ('C', 'Uses the gold thread of the zari'),
            ('D', 'Is the tie and dye')
           ) as v(label, option_text)
 where q.question_hash = '79feee3b5b9fa7e21bb5a3ab0393d7b1'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kalamkari'' of Andhra Pradesh:',
    'The Kalamkari of the Andhra Pradesh is the hand painting or the block printing of the cotton with the natural dyes, the indigo, the madder and the iron liquor.',
    'easy',
    'Standard Reference',
    null,
    '59e4782cf1fdaccf3b289d63c64bfa09'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '59e4782cf1fdaccf3b289d63c64bfa09'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the tie and dye'),
            ('B', 'It is the embroidery of the Chettinad'),
            ('C', 'It is the metal work of the Bidar'),
            ('D', 'Is the hand painting or the block printing with the natural dyes')
           ) as v(label, option_text)
 where q.question_hash = '59e4782cf1fdaccf3b289d63c64bfa09'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Banarasi silk is:',
    'The Banarasi silk, with its zari brocade, is a GI tagged product of the Varanasi and the Kanjeevaram is the GI product of the Tamil Nadu.',
    'easy',
    'Standard Reference',
    null,
    '99051e12e3128d72ad8d58a903b8b4d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '99051e12e3128d72ad8d58a903b8b4d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a wool of the Kashmir'),
            ('B', 'a jute of the Bengal'),
            ('C', 'a GI product of the Varanasi'),
            ('D', 'a cotton of the Coimbatore')
           ) as v(label, option_text)
 where q.question_hash = '99051e12e3128d72ad8d58a903b8b4d2'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Channapatna toys'' of Karnataka:',
    'The Channapatna toys, made of the locally sourced wood and painted with the natural colours, were the first GI product of the Karnataka in 2009.',
    'medium',
    'Standard Reference',
    null,
    '92d8cae551f77db855b7a09e5f64d214'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '92d8cae551f77db855b7a09e5f64d214'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the GI tagged wooden toys painted with the natural colours'),
            ('B', 'Are the GI tagged pottery'),
            ('C', 'They are the GI tagged silk'),
            ('D', 'They are the GI tagged jewellery')
           ) as v(label, option_text)
 where q.question_hash = '92d8cae551f77db855b7a09e5f64d214'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Which of the following statements about the Thanjavur painting is correct?',
    'The Thanjavur or the Tanjore painting of the Tamil Nadu uses the gold foil on the teak panels over a gesso base and it is also called the Tanjore painting.',
    'medium',
    'Standard Reference',
    null,
    '88fda25e5e68aaf63c06f4ba919f6e94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '88fda25e5e68aaf63c06f4ba919f6e94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the tie and dye'),
            ('B', 'It is the block print'),
            ('C', 'Uses the gold foil on the teak panels with the gesso base'),
            ('D', 'Uses the mirror work')
           ) as v(label, option_text)
 where q.question_hash = '88fda25e5e68aaf63c06f4ba919f6e94'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Bidriware'' of Bidar:',
    'The Bidriware of the Bidar is the blackened alloy of the zinc and the copper with the silver inlay, and the craft is a GI product of the Karnataka.',
    'hard',
    'Standard Reference',
    null,
    '0ab90d80f983c1a2779006bee835a7d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0ab90d80f983c1a2779006bee835a7d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the blackened alloy of zinc and copper with the silver inlay'),
            ('B', 'Is the blue pottery of the Jaipur'),
            ('C', 'It is the wooden toys of the Karnataka'),
            ('D', 'It is the bronze of the Cholas')
           ) as v(label, option_text)
 where q.question_hash = '0ab90d80f983c1a2779006bee835a7d6'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Khurja pottery'' of Khurja:',
    'The Khurja pottery is the famous glazed pottery of the Khurja in the Uttar Pradesh and it is a GI product.',
    'hard',
    'Standard Reference',
    null,
    '8af5ed0e4fd0c0e027b396a3663629b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8af5ed0e4fd0c0e027b396a3663629b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the terracotta of the Bishnupur'),
            ('B', 'It is the black pottery of the Khurja of the Assam'),
            ('C', 'It is the pottery of the Pokkur'),
            ('D', 'Is the glazed pottery of the Uttar Pradesh and it is a GI product')
           ) as v(label, option_text)
 where q.question_hash = '8af5ed0e4fd0c0e027b396a3663629b1'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Blue pottery'' of Jaipur:',
    'The Jaipur blue pottery uses the quartz and the fuller earth instead of the kaolin and it is glazed with the cobalt oxide, and it is a GI product of the Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    'eb9732bc97c699ebd9eac44ae6873530'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eb9732bc97c699ebd9eac44ae6873530'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the blue glass'),
            ('B', 'Is made of the quartz and the fuller earth with the cobalt oxide glaze'),
            ('C', 'Is the blue and the white porcelain of the China'),
            ('D', 'It is the blue dyed textile')
           ) as v(label, option_text)
 where q.question_hash = 'eb9732bc97c699ebd9eac44ae6873530'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kullu shawls'' of the Himachal:',
    'The Kullu shawls are the GI tagged handwoven woollen shawls of the Kullu in the Himachal Pradesh with the bold geometric patterns in the bright colours.',
    'medium',
    'Standard Reference',
    null,
    'e8a7ad8a988a8a8f0d5ac6f2cae9bbe8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e8a7ad8a988a8a8f0d5ac6f2cae9bbe8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the pashmina'),
            ('B', 'Are the GI tagged handwoven woollen shawls with the bold geometric patterns'),
            ('C', 'Are the GI tagged silk shawls'),
            ('D', 'They are the cotton shawls')
           ) as v(label, option_text)
 where q.question_hash = 'e8a7ad8a988a8a8f0d5ac6f2cae9bbe8'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Bagru and the Sanganeri are:',
    'The Bagru and the Sanganeri are the two famous block printing traditions of the Rajasthan, not the Karnataka, and they are the pride of the Sanganer near Jaipur.',
    'medium',
    'Standard Reference',
    null,
    '2edc9fb3cc62e9183ce4c900ea75f90a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2edc9fb3cc62e9183ce4c900ea75f90a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the block printing traditions of the Karnataka'),
            ('B', 'of the Gujarat'),
            ('C', 'the embroideries of the Punjab'),
            ('D', 'the crafts of the Odisha')
           ) as v(label, option_text)
 where q.question_hash = '2edc9fb3cc62e9183ce4c900ea75f90a'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Toda community of the Nilgiris is famous for its:',
    'The Toda community of the Nilgiri hills is famous for its distinctive embroidery and for the pashmina woollen shawls that they weave.',
    'medium',
    'Standard Reference',
    null,
    '709d5c03c70136a5f05aa9329eefb697'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '709d5c03c70136a5f05aa9329eefb697'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Toda is a trading community of the Gujarat'),
            ('B', 'The Toda is a fishing community of the Konkan'),
            ('C', 'The Toda community of the Nilgiris is famous for the embroidery and the pashmina woollens'),
            ('D', 'The Toda is a martial tribe of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '709d5c03c70136a5f05aa9329eefb697'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Kandangi and the Jamdani are:',
    'The Kandangi of the Odisha and the Jamdani of the Bengal are the fine muslin weaves on the pit loom and the Jamdani was given the GI tag.',
    'hard',
    'Standard Reference',
    null,
    '4d0bd11b0fde68d8505a7d59ffdbd0da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4d0bd11b0fde68d8505a7d59ffdbd0da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the embroideries of the Punjab'),
            ('B', 'the tile works'),
            ('C', 'the metal crafts'),
            ('D', 'the weaves of the Odisha and the Bengal')
           ) as v(label, option_text)
 where q.question_hash = '4d0bd11b0fde68d8505a7d59ffdbd0da'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Pashmina wool is:',
    'The pashmina is the fine wool of the Changthangi goats of the Ladakh and the Kashmir and the shawls of the region are among the finest in the world.',
    'easy',
    'Standard Reference',
    null,
    'eb344c713be8a4912803d04200745baf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eb344c713be8a4912803d04200745baf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the silk of the Assam'),
            ('B', 'It is the cotton of the Gujarat'),
            ('C', 'It is the jute of the Bengal'),
            ('D', 'The pashmina is the fine wool of the Changthangi goats of the Ladakh and the Kashmir')
           ) as v(label, option_text)
 where q.question_hash = 'eb344c713be8a4912803d04200745baf'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Khadi is associated with the:',
    'The Khadi, the handwoven cloth of the handspun yarn, was promoted by the Mahatma Gandhi as a symbol of the Swadeshi and the self-sufficiency and it is now a protected GI product.',
    'easy',
    'Standard Reference',
    null,
    'f24435df0835788b90c380bd4d0ecdc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f24435df0835788b90c380bd4d0ecdc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Khadi was promoted by the Mahatma Gandhi as a symbol of the Swadeshi and the self sufficiency'),
            ('B', 'It is a silk of the Bengal'),
            ('C', 'It is a cotton of the Punjab'),
            ('D', 'It is a wool of the Kashmir')
           ) as v(label, option_text)
 where q.question_hash = 'f24435df0835788b90c380bd4d0ecdc2'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Gamosa'' of Assam:',
    'The Gamosa, the traditional textile of the Assam, is worn with the white dhoti and the chador and it was given the GI tag in 2007.',
    'medium',
    'Standard Reference',
    null,
    '829e9557c44f37a4bf091f28e67508b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '829e9557c44f37a4bf091f28e67508b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the wool of the Kashmir'),
            ('B', 'Is the traditional textile of the Assam worn with the white dhoti and the chador'),
            ('C', 'It is a silk of the Varanasi'),
            ('D', 'It is the cotton of the Coimbatore')
           ) as v(label, option_text)
 where q.question_hash = '829e9557c44f37a4bf091f28e67508b0'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Kharvas of the Dal Lake are:',
    'The Kharvas, the traditional houseboats of the Dal Lake of Srinagar, are the floating homes of the Kashmiri people and a few remain in use.',
    'medium',
    'Standard Reference',
    null,
    '54502b38f764ba4d36e70081581f0355'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '54502b38f764ba4d36e70081581f0355'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the ships of the Bengal'),
            ('B', 'They are the canoes of the Assam'),
            ('C', 'The Kharvas are the traditional houseboats of the Dal Lake of Srinagar'),
            ('D', 'They are the boats of the Kerala backwaters')
           ) as v(label, option_text)
 where q.question_hash = '54502b38f764ba4d36e70081581f0355'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Jali of the Mughal architecture is:',
    'The jali, the perforated stone or the wood screen, is a distinctive feature of the Mughal architecture and it lets in the light while preserving the privacy.',
    'medium',
    'Standard Reference',
    null,
    'e523f523870b838ef3f4af4cba8735ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e523f523870b838ef3f4af4cba8735ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the perforated stone screen of the Mughal architecture'),
            ('B', 'It is a textile of the Bengal'),
            ('C', 'It is a musical instrument'),
            ('D', 'It is a type of the carpet')
           ) as v(label, option_text)
 where q.question_hash = 'e523f523870b838ef3f4af4cba8735ef'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Chhatri'' of Rajasthan:',
    'The chhatri, the small domed kiosk on the pillars, is a distinctive feature of the Rajput architecture and it is placed on the corners of the courtyards and the terraces.',
    'medium',
    'Standard Reference',
    null,
    '9d1d7ce32806f8e149e9f151d5387577'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9d1d7ce32806f8e149e9f151d5387577'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the enclosed courtyard'),
            ('B', 'It is the vaulted chamber'),
            ('C', 'It is the minaret'),
            ('D', 'Is the small domed kiosk on the pillars of the Rajput architecture')
           ) as v(label, option_text)
 where q.question_hash = '9d1d7ce32806f8e149e9f151d5387577'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Sarai'' of the Mughal architecture:',
    'The sarai, the open hall with the surrounding rooms, was the rest house of the Mughal serais and it provided the accommodation to the travellers and the merchants and the animals.',
    'medium',
    'Standard Reference',
    null,
    '731ebf54c2d6b825339e6e18ffc8f3de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '731ebf54c2d6b825339e6e18ffc8f3de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the tomb'),
            ('B', 'Is the open hall of the serais for the travellers and the merchants'),
            ('C', 'It is the royal chamber'),
            ('D', 'It is the mosque')
           ) as v(label, option_text)
 where q.question_hash = '731ebf54c2d6b825339e6e18ffc8f3de'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Minaret of a mosque is:',
    'The minaret, the tower of the mosque from which the muezzin calls the faithful to the prayer, is a distinctive element of the Islamic architecture in India.',
    'easy',
    'Standard Reference',
    null,
    'c2a3b5adb269919517b911dcf1c9c8ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c2a3b5adb269919517b911dcf1c9c8ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the domed chamber'),
            ('B', 'It is the tomb'),
            ('C', 'Is the tower from which the muezzin calls the faithful to the prayer'),
            ('D', 'It is the entrance gateway')
           ) as v(label, option_text)
 where q.question_hash = 'c2a3b5adb269919517b911dcf1c9c8ef'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The ''Iwan'' of the Persian architecture:',
    'The iwan is the vaulted hall open on one side of the courtyard and it is a hallmark of the Persian architecture that was adopted in the Mughal buildings.',
    'hard',
    'Standard Reference',
    null,
    '5869ee8d0bba36ed4e03cf99e5858022'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5869ee8d0bba36ed4e03cf99e5858022'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the gateway'),
            ('B', 'It is the dome'),
            ('C', 'Is the vaulted hall open on one side of the courtyard'),
            ('D', 'It is the minaret')
           ) as v(label, option_text)
 where q.question_hash = '5869ee8d0bba36ed4e03cf99e5858022'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Rabat of the Deccan palaces is:',
    'The rabat is the residential quarters of the Qutb Shahi and the Adil Shahi palaces and the Rabati Bagh of the Golconda is the finest of them.',
    'hard',
    'Standard Reference',
    null,
    'dee17bfd7bab5003b9ec053d0cac687a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dee17bfd7bab5003b9ec053d0cac687a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a garden pavilion'),
            ('B', 'Is the residential quarters of the Qutb Shahi and the Adil Shahi palaces'),
            ('C', 'It is a type of the minaret'),
            ('D', 'It is a kind of the carpet')
           ) as v(label, option_text)
 where q.question_hash = 'dee17bfd7bab5003b9ec053d0cac687a'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Ashurkhana of the Deccan is:',
    'The Ashurkhana, the royal congregation hall of the Qutb Shahi and the Adil Shahi palaces, was used for the prayer and it has the Persian style of the decoration.',
    'hard',
    'Standard Reference',
    null,
    'ee6d09ea6019edc9a3587507dbcfd2d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ee6d09ea6019edc9a3587507dbcfd2d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the royal congregation hall of the Qutb Shahi and the Adil Shahi palaces'),
            ('B', 'It is a temple'),
            ('C', 'It is a kitchen'),
            ('D', 'It is a prison')
           ) as v(label, option_text)
 where q.question_hash = 'ee6d09ea6019edc9a3587507dbcfd2d8'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Tavil'' of the Tamil Nadu:',
    'The tavil, a large copper wind instrument, is used in the Carnatic music and it is played with the Venkatachalam and the Nattukara of the Tiruvallur tradition.',
    'hard',
    'Standard Reference',
    null,
    '82925e34382b843f5123935d935f3c8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82925e34382b843f5123935d935f3c8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a wind instrument'),
            ('B', 'It is a string instrument'),
            ('C', 'It is a clay vessel'),
            ('D', 'Is a percussion instrument of the Carnatic music')
           ) as v(label, option_text)
 where q.question_hash = '82925e34382b843f5123935d935f3c8c'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Morsing'' of the Carnatic music:',
    'The morsing is a percussion instrument of the South Indian tradition and the temple percussion of the Carnatic music includes the mridangam, the ghatam, the morsing, the kanjira and the tavil.',
    'medium',
    'Standard Reference',
    null,
    'f8e8f67aaf13b299d39d5e90f2006629'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f8e8f67aaf13b299d39d5e90f2006629'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a string instrument'),
            ('B', 'It is a clay drum'),
            ('C', 'Is a percussion instrument of the South Indian tradition'),
            ('D', 'Is a wind instrument of the north')
           ) as v(label, option_text)
 where q.question_hash = 'f8e8f67aaf13b299d39d5e90f2006629'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Kanjira of the Carnatic music is:',
    'The kanjira, a small clay or the metal drum, is a percussion instrument of the Carnatic music and it is held in one hand and struck with the other.',
    'medium',
    'Standard Reference',
    null,
    '854c294a8eb679304cfd20b9e02b7462'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '854c294a8eb679304cfd20b9e02b7462'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a small percussion instrument of the Carnatic music'),
            ('B', 'It is a wind instrument'),
            ('C', 'It is a string instrument'),
            ('D', 'It is a bell')
           ) as v(label, option_text)
 where q.question_hash = '854c294a8eb679304cfd20b9e02b7462'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Rudra veena of the Hindustani music is:',
    'The Rudra veena, with its twenty-four frets, is a bowed string instrument of the Hindustani music and it is the ancestor of the modern violin.',
    'medium',
    'Standard Reference',
    null,
    '74ab6533cba04f2686b2d3aab97b5398'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '74ab6533cba04f2686b2d3aab97b5398'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a percussion instrument'),
            ('B', 'It is a wind instrument'),
            ('C', 'It is a vocal genre'),
            ('D', 'Is a bowed string instrument of the Hindustani music')
           ) as v(label, option_text)
 where q.question_hash = '74ab6533cba04f2686b2d3aab97b5398'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Sarangi of the Hindustani music is:',
    'The sarangi, a three stringed bowed instrument with a skin-covered resonator, is the principal instrument of the Hindustani music for the imitation of the voice.',
    'medium',
    'Standard Reference',
    null,
    '5dcdaa6a0d637811989b37d099771075'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5dcdaa6a0d637811989b37d099771075'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a vocal genre'),
            ('B', 'Is a bowed string instrument of the Hindustani music'),
            ('C', 'It is a drum of the Punjab'),
            ('D', 'It is a wind instrument')
           ) as v(label, option_text)
 where q.question_hash = '5dcdaa6a0d637811989b37d099771075'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Esraj of the Hindustani music is:',
    'The esraj, with its hundred sympathetic strings, is a bowed string instrument of the Hindustani music and it is used for the vocal and the instrumental styles.',
    'hard',
    'Standard Reference',
    null,
    '6b5412bbb9bfa3d4b6c000c8459688ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6b5412bbb9bfa3d4b6c000c8459688ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a percussion instrument'),
            ('B', 'It is a wind instrument'),
            ('C', 'It is a vocal genre'),
            ('D', 'Is a bowed string instrument of the Hindustani music')
           ) as v(label, option_text)
 where q.question_hash = '6b5412bbb9bfa3d4b6c000c8459688ef'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Shehnai of the Hindustani music is:',
    'The shehnai, the double-reed wind instrument, is a principal instrument of the Hindustani music and it is popularly known as the Indian oboe.',
    'easy',
    'Standard Reference',
    null,
    'a896d3aed6544aae88cd4b47eb461224'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a896d3aed6544aae88cd4b47eb461224'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a string instrument'),
            ('B', 'Is the double-reed wind instrument of the Hindustani music'),
            ('C', 'It is a bowed instrument'),
            ('D', 'It is a percussion instrument')
           ) as v(label, option_text)
 where q.question_hash = 'a896d3aed6544aae88cd4b47eb461224'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Chaturang composition is:',
    'The chaturang, the Carnatic composition in the praise of the Rama, is the most ancient of the compositions and it is followed by the varnam.',
    'hard',
    'Standard Reference',
    null,
    '00166e41516b467817c6b476c1cfd237'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '00166e41516b467817c6b476c1cfd237'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the Carnatic composition in the praise of the Rama'),
            ('B', 'It is a Hindustani genre'),
            ('C', 'It is a percussion item'),
            ('D', 'It is a temple ritual')
           ) as v(label, option_text)
 where q.question_hash = '00166e41516b467817c6b476c1cfd237'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Thumri'' of the Hindustani music:',
    'The thumri is a semi-classical genre of the Hindustani music with the romantic lyrics and it is sung in the khamaj thaat and it is the staple of the Banaras and the Lucknow gharana.',
    'medium',
    'Standard Reference',
    null,
    '90d464c0f1537fdf02b8558a1cf205fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '90d464c0f1537fdf02b8558a1cf205fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a drum composition'),
            ('B', 'It is a Carnatic genre'),
            ('C', 'Is a semi-classical genre with the romantic lyrics sung in the khamaj thaat'),
            ('D', 'Is the oldest style')
           ) as v(label, option_text)
 where q.question_hash = '90d464c0f1537fdf02b8558a1cf205fe'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Kafi of the Hindustani music is:',
    'The kafi is one of the six recognised thaats of the Hindustani music and it is also a semi-classical genre with the romantic and the Sufi poetry.',
    'medium',
    'Standard Reference',
    null,
    '67bc79a7dee23d6b0616f73f796efc1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '67bc79a7dee23d6b0616f73f796efc1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a percussion style'),
            ('B', 'It is a temple song'),
            ('C', 'Is a thaat of the Hindustani music and a genre of the semi-classical'),
            ('D', 'It is a raga of the Carnatic')
           ) as v(label, option_text)
 where q.question_hash = '67bc79a7dee23d6b0616f73f796efc1b'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Patiala in the Hindustani music is:',
    'The Patiala gharana was founded by the Ali Baksh and the Fateh Ali Khan and it is noted for its compositions in the dhrupad and the dhamar styles.',
    'hard',
    'Standard Reference',
    null,
    'b2c192de3d9fe4382d40a971659ee359'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2c192de3d9fe4382d40a971659ee359'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a musical instrument'),
            ('B', 'Is a gharana of the Hindustani music founded by the Ali Baksh and the Fateh Ali Khan'),
            ('C', 'It is a Carnatic school'),
            ('D', 'It is a poetry genre')
           ) as v(label, option_text)
 where q.question_hash = 'b2c192de3d9fe4382d40a971659ee359'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Gwalior gharana'' was founded by:',
    'The Gwalior gharana was founded by the Hasan Khan, a descendant of the Tansen, and it is known for the intricate bandish and the sargam style.',
    'medium',
    'Standard Reference',
    null,
    'af67a011a1f9c3c7ba2bce30894fae05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'af67a011a1f9c3c7ba2bce30894fae05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ali Baksh and the Fateh Ali Khan'),
            ('B', 'Abdul Karim Khan'),
            ('C', 'Nawab Fateh Ali Khan'),
            ('D', 'Hasan Khan')
           ) as v(label, option_text)
 where q.question_hash = 'af67a011a1f9c3c7ba2bce30894fae05'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Nandalal Bose'' was:',
    'The Nandalal Bose, a disciple of the Abanindranath Tagore, was the principal designer of the national flag of India and he was the founder of the Kala Bhavana at the Santiniketan.',
    'medium',
    'Standard Reference',
    null,
    '014afa944e4bd96fa68fa11a20ff2464'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '014afa944e4bd96fa68fa11a20ff2464'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A disciple of the Abanindranath Tagore and the principal designer of the national flag'),
            ('B', 'A disciple of the Gandhi'),
            ('C', 'The founder of the Bombay Progressive Artists'' Group'),
            ('D', 'A disciple of the M.F. Husain')
           ) as v(label, option_text)
 where q.question_hash = '014afa944e4bd96fa68fa11a20ff2464'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Bengal school'' of painting was founded by:',
    'The Bengal school of painting was founded by the Abanindranath Tagore in the early twentieth century with the aim of reviving the Indian art tradition and it included the Nandalal Bose and the Ramkinkar Baij.',
    'easy',
    'Standard Reference',
    null,
    '2cfed113ed8431c3b5434fcd1cfa0f61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2cfed113ed8431c3b5434fcd1cfa0f61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abanindranath Tagore'),
            ('B', 'Raja Ravi Varma'),
            ('C', 'Nandalal Bose'),
            ('D', 'Abanindranath and the Nandalal Bose')
           ) as v(label, option_text)
 where q.question_hash = '2cfed113ed8431c3b5434fcd1cfa0f61'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Bombay Progressive Artists'' Group'' was formed in:',
    'The Progressive Artists'' Group was formed in Bombay in 1947 with the M.F. Husain, the F.N. Souza, the S.H. Raza, the K.H. Ara and the H.A. Gade and it challenged the academic realism.',
    'medium',
    'Standard Reference',
    null,
    'db7c5cebd10a9929b75a447e97b427d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db7c5cebd10a9929b75a447e97b427d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1940'),
            ('B', '1947'),
            ('C', '1930'),
            ('D', '1955')
           ) as v(label, option_text)
 where q.question_hash = 'db7c5cebd10a9929b75a447e97b427d1'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The Raja Ravi Varma was:',
    'The Raja Ravi Varma, a painter of the Kerala palace, reformed the Indian art with the academic realism and the oil technique and his Bharat Mata became a national icon.',
    'medium',
    'Standard Reference',
    null,
    '1a461d5cbfc6eab4fd32fa0c6aaccbd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a461d5cbfc6eab4fd32fa0c6aaccbd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He founded the Bengal school'),
            ('B', 'He founded the Madras Art Movement'),
            ('C', 'He was a disciple of the Abanindranath Tagore'),
            ('D', 'He reformed the Indian art with the academic realism and the oil technique and he painted the Bharat Mata')
           ) as v(label, option_text)
 where q.question_hash = '1a461d5cbfc6eab4fd32fa0c6aaccbd8'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Amrita Sher-Gil'' was:',
    'The Amrita Sher-Gil, who studied in Paris, is one of the pioneers of the modern Indian painting and her self portraits are celebrated for the psychological depth.',
    'medium',
    'Standard Reference',
    null,
    '9c8ecfbd63e550d9e199bc23e3d882be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9c8ecfbd63e550d9e199bc23e3d882be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A sculptor of the Chola period'),
            ('B', 'A painter of the Rajput school'),
            ('C', 'An Indian painter of the modern period who studied in Paris and is known for the self portraits'),
            ('D', 'A painter of the Bengal school')
           ) as v(label, option_text)
 where q.question_hash = '9c8ecfbd63e550d9e199bc23e3d882be'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''K.G. Subramanyan'' was:',
    'The K.G. Subramanyan, a painter, a muralist and a scholar of the Indian folk tradition and the epics, is one of the most important of the modern Indian painters.',
    'hard',
    'Standard Reference',
    null,
    '15e7dbf7f377753f97ccea1c5ecf7eb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '15e7dbf7f377753f97ccea1c5ecf7eb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter of the Bengal school'),
            ('B', 'A disciple of the Nandalal Bose'),
            ('C', 'A painter of the Madhubani'),
            ('D', 'A painter and a muralist of the modern India who was also a scholar of the Indian folk traditions')
           ) as v(label, option_text)
 where q.question_hash = '15e7dbf7f377753f97ccea1c5ecf7eb5'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Ramkinkar Baij'' was:',
    'The Ramkinkar Baij, a leading painter of the Bengal school, is known for his depictions of the Santhal life and the rural Bengal and he was also a sculptor.',
    'hard',
    'Standard Reference',
    null,
    'e55bde6e1855ee4ae8cbc4f0a7da4b61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e55bde6e1855ee4ae8cbc4f0a7da4b61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A painter of the Western Ghats'),
            ('B', 'A painter of the Company style'),
            ('C', 'A painter of the Bengal school who painted the Santhal life'),
            ('D', 'A painter of the Madhubani')
           ) as v(label, option_text)
 where q.question_hash = 'e55bde6e1855ee4ae8cbc4f0a7da4b61'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Madras Movement'' in art was led by:',
    'The Madras Art Movement was led by the D.P. Roy Chowdhury, the K.C.S. Paniker and the S. Dhanapal and it championed the modern and the indigenous traditions.',
    'hard',
    'Standard Reference',
    null,
    '0553c10e78aa9dc96af99cd36732bc5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0553c10e78aa9dc96af99cd36732bc5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Amrita Sher-Gil'),
            ('B', 'D.P. Roy Chowdhury and the K.C.S. Paniker'),
            ('C', 'The M.F. Husain'),
            ('D', 'The F.N. Souza')
           ) as v(label, option_text)
 where q.question_hash = '0553c10e78aa9dc96af99cd36732bc5a'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Company painting'' developed:',
    'The Company painting developed in the late eighteenth and the early nineteenth centuries as the Indian artists worked for the European traders and the administrators.',
    'medium',
    'Standard Reference',
    null,
    'c0e2a41a96467be936d25d245e1e3a9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c0e2a41a96467be936d25d245e1e3a9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In the late eighteenth century for the European patrons'),
            ('B', 'In the Vijayanagara period'),
            ('C', 'In the Mughal period'),
            ('D', 'In the Pala period')
           ) as v(label, option_text)
 where q.question_hash = 'c0e2a41a96467be936d25d245e1e3a9a'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Rajput painting'' schools:',
    'The Rajput schools include the Mewar, the Bundi, the Kishangarh, the Kota, the Jaipur, the Guler and the Kangra and they depict the courtly and the devotional themes.',
    'medium',
    'Standard Reference',
    null,
    '816e9da44ca2316ffdcf7a6088851e02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '816e9da44ca2316ffdcf7a6088851e02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include only the Mughal'),
            ('B', 'Include the Kangra and the Guler'),
            ('C', 'Include only the Vijayanagara'),
            ('D', 'Include the Mewar, the Bundi and the Kishangarh and the Kota')
           ) as v(label, option_text)
 where q.question_hash = '816e9da44ca2316ffdcf7a6088851e02'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Mughal painting'' reached its peak under:',
    'The Mughal painting reached its zenith under the Jahangir with the single figure portraits, the allegorical compositions and the calligraphic work and the Akbar favoured the narrative.',
    'medium',
    'Standard Reference',
    null,
    '1b2f7417370d7d9791773db36ddce47c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1b2f7417370d7d9791773db36ddce47c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jahangir'),
            ('B', 'Akbar'),
            ('C', 'Shah Jahan'),
            ('D', 'Aurangzeb')
           ) as v(label, option_text)
 where q.question_hash = '1b2f7417370d7d9791773db36ddce47c'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The paintings patronised by the Akbar are:',
    'The Akbar, who was a great patron of the painting, preferred the narrative and the historical paintings with a synthesis of the Persian and the Indian elements, and the Hamzanama was his biggest commission.',
    'medium',
    'Standard Reference',
    null,
    '15cfbf5dcd570e5495ac64e67d13703d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '15cfbf5dcd570e5495ac64e67d13703d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Akbar preferred only the religious paintings'),
            ('B', 'The Akbar preferred the narrative and the historical paintings with the Persian and the Indian elements'),
            ('C', 'The Akbar preferred only the portraits'),
            ('D', 'The Akbar did not patronise the painting')
           ) as v(label, option_text)
 where q.question_hash = '15cfbf5dcd570e5495ac64e67d13703d'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The paintings patronised by the Shah Jahan are:',
    'The Shah Jahan preferred the formal and the portraiture and his reign is considered the golden age of the Mughal art with the MUGHAL album as the model.',
    'hard',
    'Standard Reference',
    null,
    '55cf4ab15ca29656e82ef779f5161102'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '55cf4ab15ca29656e82ef779f5161102'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was not a patron of the painting'),
            ('B', 'He preferred the abstract'),
            ('C', 'The Shah Jahan preferred the formal and the portraiture and the MUGHAL album was the model'),
            ('D', 'The Shah Jahan preferred only the religious paintings')
           ) as v(label, option_text)
 where q.question_hash = '55cf4ab15ca29656e82ef779f5161102'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Kangra painting is:',
    'The Kangra painting is a Pahari school of the eighteenth century and the Amritotsava, the Darshan of the Lord, is its finest work.',
    'medium',
    'Standard Reference',
    null,
    'b9a915abc1d0327fbbb139d04ea450e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b9a915abc1d0327fbbb139d04ea450e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Rajput school of the fifteenth century'),
            ('B', 'a Mughal school'),
            ('C', 'a Company style'),
            ('D', 'a Pahari school of the eighteenth century and the Amritotsava is its finest work')
           ) as v(label, option_text)
 where q.question_hash = 'b9a915abc1d0327fbbb139d04ea450e9'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Rajput painting is known for the:',
    'The Rajput painting depicts the courtly and the devotional themes with the Krishna legend and the romantic love of the Radha and the Krishna.',
    'medium',
    'Standard Reference',
    null,
    '4fad2c723f2b0b5ce0e6382d2a7b4660'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4fad2c723f2b0b5ce0e6382d2a7b4660'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It depicts only the portraits'),
            ('B', 'The Rajput painting depicts the courtly and the devotional themes with the Krishna legend'),
            ('C', 'It depicts only the battles'),
            ('D', 'It depicts only the hunting')
           ) as v(label, option_text)
 where q.question_hash = '4fad2c723f2b0b5ce0e6382d2a7b4660'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Which of the following statements regarding the Kalighat temple of Calcutta is correct?',
    'The Kalighat painting developed in the nineteenth century around the Kalighat temple in Calcutta and it used the imported colours and the bold brushwork on the flat paper.',
    'medium',
    'Standard Reference',
    null,
    'a86fd9932c551357f10e81411da35b8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a86fd9932c551357f10e81411da35b8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The temple of the Jagannath at Puri'),
            ('B', 'The temple of the Minakshi at Madurai'),
            ('C', 'The Kalighat temple of Calcutta in the nineteenth century'),
            ('D', 'The Kalighat temple of Varanasi')
           ) as v(label, option_text)
 where q.question_hash = 'a86fd9932c551357f10e81411da35b8b'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Pattachitra'' of Odisha and Bengal:',
    'The Pattachitra, the cloth scroll painting of the Odisha and the Bengal, was traditionally used as the temple curtain of the Jagannath at Puri and the Chitrakala is the mural tradition of the Karnataka.',
    'medium',
    'Standard Reference',
    null,
    '2a5025eaac9b149ec52d346adbbe9996'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a5025eaac9b149ec52d346adbbe9996'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the cloth scroll painting tradition'),
            ('B', 'It is the mural tradition of the Karnataka'),
            ('C', 'It is the miniature of the Rajasthan'),
            ('D', 'It is the rock cut of the Ajanta')
           ) as v(label, option_text)
 where q.question_hash = '2a5025eaac9b149ec52d346adbbe9996'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Madhubani painting'' of Bihar:',
    'The Madhubani or the Mithila painting of the Bihar uses the bold geometric patterns, the double line borders and the natural dyes and it is practised mainly by the women.',
    'medium',
    'Standard Reference',
    null,
    '65c84f293fa25c7c8f9f7a87dcb5b57b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '65c84f293fa25c7c8f9f7a87dcb5b57b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uses the bold geometric patterns with the double line borders and the natural dyes'),
            ('B', 'It uses the gold foil'),
            ('C', 'It is the miniature of the Rajasthan'),
            ('D', 'It is the mural of the tribal Bhils')
           ) as v(label, option_text)
 where q.question_hash = '65c84f293fa25c7c8f9f7a87dcb5b57b'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Warli painting'' of Maharashtra:',
    'The Warli painting of the Maharashtra uses the simple stick figures of the white pigment on the mud brown background and it depicts the daily life and the deities.',
    'easy',
    'Standard Reference',
    null,
    '8fbbf2e374fee63847a07e585e1109ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8fbbf2e374fee63847a07e585e1109ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It uses the gold foil'),
            ('B', 'It is the miniature of the Rajputs'),
            ('C', 'It is the mural of the Bhils'),
            ('D', 'Uses the simple stick figures of the white on the mud brown background')
           ) as v(label, option_text)
 where q.question_hash = '8fbbf2e374fee63847a07e585e1109ad'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Kalamkari of the Srikalahasti and the Machilipatnam is:',
    'The Kalamkari of the Srikalahasti in the Andhra Pradesh and the Machilipatnam in the Telangana is the hand-painted and the block-printed cotton with the natural dyes.',
    'medium',
    'Standard Reference',
    null,
    '862cc32462ebd8a65472438935c25126'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '862cc32462ebd8a65472438935c25126'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the embroidery of the Chettinad'),
            ('B', 'the metal craft of the Bidar'),
            ('C', 'the hand-painted and the block-printed cotton'),
            ('D', 'the tie and dye')
           ) as v(label, option_text)
 where q.question_hash = '862cc32462ebd8a65472438935c25126'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The works of the Kalidasa include:',
    'The Kalidasa wrote the Abhijnanasakuntalam, the Malavikagnimitram and the Vikramorvashiyam of the plays and the Raghuvamsha and the Kumarasambhava of the poems.',
    'easy',
    'Standard Reference',
    null,
    '446e09dc12741c1c7675293ee5bd63b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '446e09dc12741c1c7675293ee5bd63b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Mrichchhakatika only'),
            ('B', 'He wrote the Abhijnanasakuntalam and the Malavikagnimitram and the Raghuvamsha'),
            ('C', 'He wrote the Mṛchchhakatika'),
            ('D', 'He wrote the Ratnavali')
           ) as v(label, option_text)
 where q.question_hash = '446e09dc12741c1c7675293ee5bd63b8'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Raghuvamsha of the Kalidasa is:',
    'The Raghuvamsha is the epic poem of the Kalidasa narrating the story of the Rama dynasty and it is one of the five great epics of the Sanskrit literature.',
    'medium',
    'Standard Reference',
    null,
    '062fb338f59e5f1ddccfe5edbe86dbbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '062fb338f59e5f1ddccfe5edbe86dbbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a Buddhist text'),
            ('B', 'Is a mathematical treatise'),
            ('C', 'Is a drama of the Bhasa'),
            ('D', 'Is the epic poem of the Kalidasa about the dynasty of the Ramas')
           ) as v(label, option_text)
 where q.question_hash = '062fb338f59e5f1ddccfe5edbe86dbbb'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Mṛchchhakatika'' was written by:',
    'The Mṛchchhakatika, the ''The Little Clay Cart'', is the famous play of the Vishakhadatta, probably of the last century BCE, and it is a satire on the decadent society.',
    'hard',
    'Standard Reference',
    null,
    'b33a6fcd55ba5f6d11b5f488e2575fba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b33a6fcd55ba5f6d11b5f488e2575fba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bhasa'),
            ('B', 'The Bhavabhuti'),
            ('C', 'The Vishakhadatta'),
            ('D', 'The Kalidasa')
           ) as v(label, option_text)
 where q.question_hash = 'b33a6fcd55ba5f6d11b5f488e2575fba'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The thirteen plays of the Bhasa were:',
    'The thirteen plays of the Bhasa were rediscovered in 1912 and they were staged in 1955 by the K. Balachander with the music of the M.S. Subbulakshmi.',
    'hard',
    'Standard Reference',
    null,
    '04131bb3c41efed84f957f0b472226a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04131bb3c41efed84f957f0b472226a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'rediscovered in 1912 and staged in 1955 by the K. Balachander'),
            ('B', 'of the Sanskrit of the Chola period'),
            ('C', 'of the Puranic period'),
            ('D', 'of the Gupta period')
           ) as v(label, option_text)
 where q.question_hash = '04131bb3c41efed84f957f0b472226a0'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Sanskrit plays of the Harsha are:',
    'The Harsha, the last great emperor, wrote the three Sanskrit dramas of the Nagananda, the Ratnavali and the Priyadarshika, and he was a patron of the learning.',
    'medium',
    'Standard Reference',
    null,
    'e755b2e995d94a0f7e7d5ecd87ed7813'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e755b2e995d94a0f7e7d5ecd87ed7813'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Harsha was a Buddhist monk'),
            ('B', 'The Harsha wrote the Nagananda and the Ratnavali and the Priyadarshika'),
            ('C', 'The Harsha wrote only the dramas'),
            ('D', 'The Harsha wrote the epic poems')
           ) as v(label, option_text)
 where q.question_hash = 'e755b2e995d94a0f7e7d5ecd87ed7813'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Bhavabhuti wrote the:',
    'The Bhavabhuti of the ninth century wrote the Malatimadhava, the Uttararamacharita and the Mahaviracharita, and he is considered the greatest of the Sanskrit dramatists after the Kalidasa.',
    'hard',
    'Standard Reference',
    null,
    '71e50075eaf785e0867f331b1211dfb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '71e50075eaf785e0867f331b1211dfb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He wrote the Mṛchchhakatika'),
            ('B', 'He wrote the Abhijnanasakuntalam'),
            ('C', 'He was the author of the Natyasastra'),
            ('D', 'The Bhavabhuti wrote the Malatimadhava and the Uttararamacharita and the Mahaviracharita')
           ) as v(label, option_text)
 where q.question_hash = '71e50075eaf785e0867f331b1211dfb8'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The author of the Ashtadhyayi is:',
    'The Panini wrote the Ashtadhyayi, the first systematic grammar of the Sanskrit, and the Patanjali wrote the Mahabhashya as a commentary on it.',
    'easy',
    'Standard Reference',
    null,
    '1e8898fd46551dfae5122f634792b466'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1e8898fd46551dfae5122f634792b466'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Panini wrote the Ashtadhyayi, the first grammar of the Sanskrit'),
            ('B', 'He wrote the Mahabhashya'),
            ('C', 'He wrote the Nigantha'),
            ('D', 'He wrote the Darshanasutra')
           ) as v(label, option_text)
 where q.question_hash = '1e8898fd46551dfae5122f634792b466'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Kautilya and the Chanakya wrote the:',
    'The Kautilya, the author of the Arthashastra, is also identified with the Chanakya, the adviser and the prime minister of the Chandragupta Maurya.',
    'medium',
    'Standard Reference',
    null,
    'c060cc9177a396b160cb337e73dc2885'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c060cc9177a396b160cb337e73dc2885'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Buddhist monk'),
            ('B', 'The Kautilya and the Chanakya wrote the Arthashastra and the Chanakya was the adviser of the Chandragupta'),
            ('C', 'He wrote the Nigantha'),
            ('D', 'He wrote the Kamandaki Nitisara')
           ) as v(label, option_text)
 where q.question_hash = 'c060cc9177a396b160cb337e73dc2885'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Harshacharita'' was written by:',
    'The Banabhatta wrote the Harshacharita, the biography of the Harsha, and the Kadamba is the Dandin who wrote the Dasakumaracharita.',
    'medium',
    'Standard Reference',
    null,
    '304407a20718a1994167c292b72791cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '304407a20718a1994167c292b72791cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bhavabhuti'),
            ('B', 'The Dandin'),
            ('C', 'The Banabhatta'),
            ('D', 'The Kalidasa')
           ) as v(label, option_text)
 where q.question_hash = '304407a20718a1994167c292b72791cd'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Dandin wrote the:',
    'The Dandin, a court poet of the Harsha''s time, wrote the Dasakumaracharita, a prose romance in the six chapters, in the sixth century.',
    'hard',
    'Standard Reference',
    null,
    '19ef7cedbfdb20abc41b2825592bdc27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19ef7cedbfdb20abc41b2825592bdc27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Dandin wrote the Dasakumaracharita in the sixth century'),
            ('B', 'The Dandin was of the Gupta period'),
            ('C', 'He wrote the Nagananda'),
            ('D', 'He was of the Mughal period')
           ) as v(label, option_text)
 where q.question_hash = '19ef7cedbfdb20abc41b2825592bdc27'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Naisadha is the:',
    'The Naiṣadha, by the Vatsa, is the first great Sanskrit romance and the Bhattikavya of the Dandin and the Vasavadatta of the Subandhu are the other early romances.',
    'hard',
    'Standard Reference',
    null,
    '75b324ec8a918986dac9abedab939a9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '75b324ec8a918986dac9abedab939a9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a drama of the Kalidasa'),
            ('B', 'It is a mathematical text'),
            ('C', 'It is a Buddhist sutra'),
            ('D', 'The Naiṣadha is the first great Sanskrit romance by the Vatsa')
           ) as v(label, option_text)
 where q.question_hash = '75b324ec8a918986dac9abedab939a9f'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Sangam literature of the early centuries CE is:',
    'The Sangam literature, the corpus of the ancient Tamil poetry in the early centuries CE, consists of the eight anthologies and the ten idylls and it is the earliest of the Tamil literature.',
    'medium',
    'Standard Reference',
    null,
    '28a387b8b1a067c3e708d20eb784c01a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '28a387b8b1a067c3e708d20eb784c01a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Sangam era collection of the temple songs'),
            ('B', 'the Buddhist literature of the Tamil'),
            ('C', 'the corpus of the ancient Tamil poetry'),
            ('D', 'a Sanskrit epic')
           ) as v(label, option_text)
 where q.question_hash = '28a387b8b1a067c3e708d20eb784c01a'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which of the following statements regarding the Tiruvalluvar is correct?',
    'The Tirukkural, the classic of the Tamil literature, is a work of the Tiruvalluvar, who is also the author of the Tiruppavai and the Tiruvempavai.',
    'easy',
    'Standard Reference',
    null,
    '94ecfb660ad280ffbcc96a8c844404aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '94ecfb660ad280ffbcc96a8c844404aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bharidhar'),
            ('B', 'The Tiruvalluvar'),
            ('C', 'The Appar'),
            ('D', 'The Bharathi')
           ) as v(label, option_text)
 where q.question_hash = '94ecfb660ad280ffbcc96a8c844404aa'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Silappatikaram'' was written by:',
    'The Silappatikaram, one of the five great epics of the Tamil literature, was written by the Ilango Adigal, a Chera prince and a Jain monk.',
    'medium',
    'Standard Reference',
    null,
    '7d9b8ca5b37921b957e4866468380712'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d9b8ca5b37921b957e4866468380712'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Appar'),
            ('B', 'The Tiruvalluvar'),
            ('C', 'The Sattanar'),
            ('D', 'The Ilango Adigal')
           ) as v(label, option_text)
 where q.question_hash = '7d9b8ca5b37921b957e4866468380712'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Subramaniyan of the Subramania Bharati is:',
    'The Subramaniyan, the unfinished epic of the Subramania Bharati, is one of the landmarks of the modern Tamil literature and he also wrote the Kuyil and the Mahakavi.',
    'medium',
    'Standard Reference',
    null,
    'e8299794502d15a157a1ac89ae25267d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e8299794502d15a157a1ac89ae25267d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a modern novel'),
            ('B', 'an epic of the Tamil literature'),
            ('C', 'a Sanskrit text'),
            ('D', 'a Telugu work')
           ) as v(label, option_text)
 where q.question_hash = 'e8299794502d15a157a1ac89ae25267d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Bharathi of the Tamil is:',
    'The Subramania Bharati, the Mahakavi of the Tamil, wrote the Kuyil and the Kannan Pattu and the song of the Kodikkarai and he was a contemporary of the Bharathiar and the Ramalingam.',
    'medium',
    'Standard Reference',
    null,
    '93555596df151ec0ae52c3409a23dcb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93555596df151ec0ae52c3409a23dcb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bharathi was the Mahakavi of the Tamil and he wrote the Kuyil and the Kannan Pattu'),
            ('B', 'He was a Sanskrit poet'),
            ('C', 'He was of the ninth century'),
            ('D', 'He was a Jain monk')
           ) as v(label, option_text)
 where q.question_hash = '93555596df151ec0ae52c3409a23dcb0'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Chera, the Chola and the Pandya were:',
    'The three kingdoms of the Sangam age were the Chera of the west, the Chola of the east and the Pandya of the south and the Satiyaputro, the rulers of the Chera, were the contemporaries of the Karikala of the Chola.',
    'medium',
    'Standard Reference',
    null,
    'a2d7835fc95b15aa7518ecfd47aa1e83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2d7835fc95b15aa7518ecfd47aa1e83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the kingdoms of the Vijayanagara'),
            ('B', 'the dynasties of the Deccan'),
            ('C', 'the three kingdoms of the Sangam age'),
            ('D', 'the Pallava, the Satavahana and the Vakataka')
           ) as v(label, option_text)
 where q.question_hash = 'a2d7835fc95b15aa7518ecfd47aa1e83'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Amir Khusrau of the Delhi is:',
    'The Amir Khusrau, the court poet of the Alauddin Khalji, is called the father of the Urdu literature and he wrote in the Persian, the Arabic, the Turkish and the Hindavi.',
    'medium',
    'Standard Reference',
    null,
    '049ae6e691af83bbcd46159ae1039783'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '049ae6e691af83bbcd46159ae1039783'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Mughal general'),
            ('B', 'the court poet of the Alauddin Khalji and the father of the Urdu literature'),
            ('C', 'a Sanskrit poet of the Vijayanagara'),
            ('D', 'a Persian ambassador')
           ) as v(label, option_text)
 where q.question_hash = '049ae6e691af83bbcd46159ae1039783'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which of the following statements about the Faiz Ahmed Faiz is correct?',
    'The Faiz Ahmed Faiz wrote the revolutionary Urdu poetry and he received the Lenin Peace Prize in 1963, and the poems like the Mujh Se Pehli Si and the Dast-e-Saba are the landmarks of the Urdu literature.',
    'medium',
    'Standard Reference',
    null,
    '26bb858782b70acb6f14ab3407c37d1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '26bb858782b70acb6f14ab3407c37d1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Punjabi poet'),
            ('B', 'He was the court poet of the Mughals'),
            ('C', 'He wrote in the Tamil'),
            ('D', 'The Faiz Ahmed Faiz wrote in the Urdu and the Persian and he received the Lenin Peace Prize')
           ) as v(label, option_text)
 where q.question_hash = '26bb858782b70acb6f14ab3407c37d1d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mir Taqi Mir was:',
    'The Mir Taqi Mir, with the Mirza Dabeer, founded the Urdu poetry and his Sahr-e-Ilm is the landmark of the ghazal tradition.',
    'medium',
    'Standard Reference',
    null,
    '3c81f40e82678d1f6ddc8267016be5a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c81f40e82678d1f6ddc8267016be5a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Persian ambassador'),
            ('B', 'the successor of the Bahadur Shah'),
            ('C', 'the founder of the Urdu poetry and the author of the Sahr-e-Ilm'),
            ('D', 'a Sanskrit poet')
           ) as v(label, option_text)
 where q.question_hash = '3c81f40e82678d1f6ddc8267016be5a3'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Premchand wrote the Godan and the Nirmala and the Godaan and he was:',
    'The Premchand, the greatest of the Hindi novelists, wrote the Godan, the Nirmala, the Ghadar and the Raag and he received the Lenin Peace Prize in 1963.',
    'easy',
    'Standard Reference',
    null,
    '4b48880fea52447b6a7c29ac458f5bf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4b48880fea52447b6a7c29ac458f5bf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Hindi novelist'),
            ('B', 'a Bengali poet'),
            ('C', 'a Persian scholar'),
            ('D', 'a dramatist of the 19th century')
           ) as v(label, option_text)
 where q.question_hash = '4b48880fea52447b6a7c29ac458f5bf9'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which of the following statements about the R.K. Narayan is correct?',
    'The R.K. Narayan of the Malgudi series wrote the Guide, the Malgudi Days and the Bachelor of Arts and his works were adapted into films by the Satyajit Ray and the Shyam Benegal.',
    'easy',
    'Standard Reference',
    null,
    '1bcc398b13b56537afbc8ba6bd80e756'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1bcc398b13b56537afbc8ba6bd80e756'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Marathi novelist'),
            ('B', 'He was the master of the Kannada literature'),
            ('C', 'The R.K. Narayan wrote the Guide and the Malgudi Days and the Bachelor of Arts'),
            ('D', 'He was a Punjabi poet')
           ) as v(label, option_text)
 where q.question_hash = '1bcc398b13b56537afbc8ba6bd80e756'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Rashid of the Mughal court was:',
    'The Rashid, the court poet of the Jahangir, wrote the Gulzar-i-Adlami, the translation of the Mahabharata in the Persian, and the Dara Shikoh and the Faizi were the other court poets.',
    'hard',
    'Standard Reference',
    null,
    'd59c3baee43632e0fcba3f1be252dcc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd59c3baee43632e0fcba3f1be252dcc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a saint of the Punjab'),
            ('B', 'The Rashid was the court poet of the Jahangir and the author of the Gulzar-i-Adlami'),
            ('C', 'He was a poet of the Akbar'),
            ('D', 'He was a writer of the Deccan')
           ) as v(label, option_text)
 where q.question_hash = 'd59c3baee43632e0fcba3f1be252dcc7'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Vande Mataram is:',
    'The Vande Mataram, composed by the Bankim Chandra Chattopadhyay in the Anandamath of 1876, is the national song of India, and the Jana Gana Mana by the Rabindranath Tagore is the national anthem.',
    'easy',
    'Standard Reference',
    null,
    '1c549f5c7c89b95068acb74e57b3d85a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1c549f5c7c89b95068acb74e57b3d85a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It appeared in the Gitanjali'),
            ('B', 'It was composed by the Nehru'),
            ('C', 'It appeared in the Savitri'),
            ('D', 'The Vande Mataram is the national song of India and it appeared in the Anandamath of the Bankim Chandra Chattopadhyay in 1876')
           ) as v(label, option_text)
 where q.question_hash = '1c549f5c7c89b95068acb74e57b3d85a'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Rabindranath Tagore is:',
    'The Rabindranath Tagore won the Nobel Prize in Literature in 1913 for the translated Gitanjali and he was the first non-European laureate and the first Asian Nobel laureate.',
    'easy',
    'Standard Reference',
    null,
    'dd3c47e16e6bee3caf0592b3a111a31c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd3c47e16e6bee3caf0592b3a111a31c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rabindranath Tagore won the Nobel Prize in Literature in 1913 for the Gitanjali'),
            ('B', 'He won it in 1930'),
            ('C', 'He won it in 1927'),
            ('D', 'He never won it')
           ) as v(label, option_text)
 where q.question_hash = 'dd3c47e16e6bee3caf0592b3a111a31c'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Sri Aurobindo was:',
    'The Sri Aurobindo wrote the Savitri, the epic poem on the life of the Sita, and he founded the Auroville Ashram at Pondicherry with the Mirra Alfassa, the Mother.',
    'medium',
    'Standard Reference',
    null,
    'f07a7d52896c93ccee9e068830c438c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f07a7d52896c93ccee9e068830c438c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sri Aurobindo wrote the Savitri and the Bhagavad Gita and he founded the Ashram at Pondicherry'),
            ('B', 'He was a Bengali poet of the 19th century'),
            ('C', 'He was a politician'),
            ('D', 'He founded the Visva-Bharati')
           ) as v(label, option_text)
 where q.question_hash = 'f07a7d52896c93ccee9e068830c438c5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Bharatendu Harishchandra is:',
    'The Bharatendu Harishchandra is called the father of the modern Hindi literature and the Mahavir Prasad Dwivedi and the Sumitranandan Pant are the other landmarks of the Hindi literature.',
    'hard',
    'Standard Reference',
    null,
    '116ea3192345176db4d3f77c651da908'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '116ea3192345176db4d3f77c651da908'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He was a Bengali novelist'),
            ('B', 'The Bharatendu Harishchandra is called the father of the modern Hindi literature'),
            ('C', 'He was a poet of the Sanskrit'),
            ('D', 'He was a court poet of the Bahadur Shah')
           ) as v(label, option_text)
 where q.question_hash = '116ea3192345176db4d3f77c651da908'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Mulk Raj Anand wrote the Untouchable and the Coolie and he was:',
    'The Mulk Raj Anand, with the Premchand and the Raja Rao, was a founder of the Progressive Writers'' Association in 1936 and he wrote the Untouchable and the Coolie.',
    'medium',
    'Standard Reference',
    null,
    '39703f14d066bdd63b31dcc878b387b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '39703f14d066bdd63b31dcc878b387b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Punjabi novelist'),
            ('B', 'a Malayalam writer'),
            ('C', 'a founder of the Progressive Writers'' Association'),
            ('D', 'a Bengali poet')
           ) as v(label, option_text)
 where q.question_hash = '39703f14d066bdd63b31dcc878b387b4'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Girish Karnad was:',
    'The Girish Karnad, a Jnanpith laureate of 1998, was a doyen of the Indian theatre and the recipient of the Padma Shri and the Padma Bhushan.',
    'medium',
    'Standard Reference',
    null,
    'a7716c2da61eb35d306282be19e5dafd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a7716c2da61eb35d306282be19e5dafd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a Malayalam poet'),
            ('B', 'a filmmaker of the parallel cinema only'),
            ('C', 'a lyricist'),
            ('D', 'a Jnanpith Awardee and a playwright of the Tughlaq and the Kaagaz Te Patte')
           ) as v(label, option_text)
 where q.question_hash = 'a7716c2da61eb35d306282be19e5dafd'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Vyas Samman'' is awarded for:',
    'The Vyas Samman is the prestigious award for a distinguished contribution to the literary work in the Hindi language and it is given by the Bharatiya Jnanpith.',
    'medium',
    'Standard Reference',
    null,
    'cc56c64db0555f7705b53a9636f049ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cc56c64db0555f7705b53a9636f049ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A distinguished contribution to the literary work in the Hindi language'),
            ('B', 'A contribution to the Sanskrit literature'),
            ('C', 'A contribution to the English literature'),
            ('D', 'A contribution to the translation')
           ) as v(label, option_text)
 where q.question_hash = 'cc56c64db0555f7705b53a9636f049ec'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Sahitya Akademi Award'' is given for:',
    'The Sahitya Akademi Award, instituted in 1954, is given for a distinguished contribution to the literature in any of the 24 languages recognized by the Constitution.',
    'easy',
    'Standard Reference',
    null,
    'f7f64191adc4fa89d10583b87ed85462'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f7f64191adc4fa89d10583b87ed85462'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A contribution to the performing arts'),
            ('B', 'A contribution to the scientific research'),
            ('C', 'A distinguished contribution to the literature in one of the 24 languages'),
            ('D', 'A contribution to the English literature only')
           ) as v(label, option_text)
 where q.question_hash = 'f7f64191adc4fa89d10583b87ed85462'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Jnanpith Award'' is given for:',
    'The Jnanpith Award, instituted in 1961, is the highest literary honour of India and it is given for a distinguished contribution to the literature in any language.',
    'easy',
    'Standard Reference',
    null,
    '5f8e322a08dddff4cf3d2eff9a18a20e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f8e322a08dddff4cf3d2eff9a18a20e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A contribution to the drama only'),
            ('B', 'A contribution to the essays'),
            ('C', 'A contribution to the poetry only'),
            ('D', 'A distinguished contribution to the literature in any language')
           ) as v(label, option_text)
 where q.question_hash = '5f8e322a08dddff4cf3d2eff9a18a20e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Sahridaya awards are:',
    'The Sahridaya awards are the literary awards of the Sahitya Akademi, presented for each of the languages that the Akademi recognises at its Festival of Letters in New Delhi.',
    'hard',
    'Standard Reference',
    null,
    'e835f929508e66b01ef717ad919a48c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e835f929508e66b01ef717ad919a48c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the music awards given by the Sangeet Natak Akademi'),
            ('B', 'the literary awards of the Sahitya Akademi'),
            ('C', 'the film awards given by the Directorate of Film Festivals'),
            ('D', 'the theatre awards given by the Sangeet Natak Akademi')
           ) as v(label, option_text)
 where q.question_hash = 'e835f929508e66b01ef717ad919a48c3'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Vyas Samman is:',
    'The Vyas Samman is given by the Bharatiya Jnanpith for a distinguished contribution to the Hindi literature.',
    'medium',
    'Standard Reference',
    null,
    '5467420ef2a79f7716bf0596818644d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5467420ef2a79f7716bf0596818644d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'given by the Sangeet Natak Akademi'),
            ('B', 'given by the Bharatiya Jnanpith for the Hindi literature'),
            ('C', 'given by the Sahitya Akademi'),
            ('D', 'given by the Film Federation of India')
           ) as v(label, option_text)
 where q.question_hash = '5467420ef2a79f7716bf0596818644d4'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Diwali festival is:',
    'The Diwali, on the new moon of the Kartika, commemorates the return of the Lord Rama to Ayodhya after the fourteen years of the exile and it is also the day of the Lakshmi Puja.',
    'easy',
    'Standard Reference',
    null,
    '95a551eaddff24ce54f6ad4c54c44421'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '95a551eaddff24ce54f6ad4c54c44421'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It marks the birth of the Buddha'),
            ('B', 'It marks the birth of the Guru Nanak'),
            ('C', 'It marks the Mahaparinirvana'),
            ('D', 'Diwali falls on the new moon of the Kartika and it marks the return of the Ramas to Ayodhya')
           ) as v(label, option_text)
 where q.question_hash = '95a551eaddff24ce54f6ad4c54c44421'
on conflict (question_id, label) do nothing;

commit;
