-- =============================================================================
-- art_culture_01.sql — art_culture question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The bronze dancing girl of Mohenjo-daro was found in which archaeological site?',
    'The famous Dancing Girl, a bronze figurine of 10.5 cm, was excavated at Mohenjo-daro in Sindh by D.R. Sahni.',
    'easy',
    'NCERT Class XII (An Introduction to Indian Art)',
    null,
    'd3d4728b92fa09de500e214e248ad175'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd3d4728b92fa09de500e214e248ad175'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalibangan'),
            ('B', 'Harappa'),
            ('C', 'Mohenjo-daro'),
            ('D', 'Lothal')
           ) as v(label, option_text)
 where q.question_hash = 'd3d4728b92fa09de500e214e248ad175'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The ''Priest King'' sculpture is a well-known artefact of which civilisation?',
    'The Priest King, a steatite bust with drilled eyes and a fillet around the head, is the best-known sculpture of the Harappan civilisation.',
    'easy',
    'NCERT Class XI',
    null,
    '1f31908681a2469df157d2e6b6e73212'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1f31908681a2469df157d2e6b6e73212'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta'),
            ('B', 'Gandhara'),
            ('C', 'Mauryan'),
            ('D', 'Indus Valley')
           ) as v(label, option_text)
 where q.question_hash = '1f31908681a2469df157d2e6b6e73212'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The Lion Capital of Ashoka was originally erected at:',
    'The Lion Capital was erected at Sarnath by Ashoka in 250 BCE to commemorate his first sermon; four lions back to back surmount an abacus of dharma chakras.',
    'easy',
    'NCERT Class XI',
    null,
    '07e92595ebb7d95e0f59ac2005a01241'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '07e92595ebb7d95e0f59ac2005a01241'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanchi'),
            ('B', 'Sarnath'),
            ('C', 'Lauriya Nandangarh'),
            ('D', 'Dhauli')
           ) as v(label, option_text)
 where q.question_hash = '07e92595ebb7d95e0f59ac2005a01241'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'Which stupa is famous for its elaborately carved gateways and the first chronological use of the Jataka tales?',
    'The Sanchi Stupa, built by the Satavahanas and later enlarged by the Guptas, has four elaborately carved toranas depicting Jataka stories.',
    'medium',
    'Standard Reference',
    null,
    'e9cfe0d019e3525649afc15629b025f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e9cfe0d019e3525649afc15629b025f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanchi Stupa'),
            ('B', 'Nagarjunakonda Stupa'),
            ('C', 'Pauni Stupa'),
            ('D', 'Amaravati Stupa')
           ) as v(label, option_text)
 where q.question_hash = 'e9cfe0d019e3525649afc15629b025f8'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'The murals of the Ajanta caves mainly depict:',
    'The paintings in the Ajanta caves, dating mainly from the 2nd century BCE and the 5th century CE, depict Jataka tales and Buddhist religious life.',
    'easy',
    'NCERT Class XII (An Introduction to Indian Art)',
    null,
    'df3768ccb436f13c60724a1f1eec6611'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'df3768ccb436f13c60724a1f1eec6611'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jataka tales and Buddhist religious themes'),
            ('B', 'Court scenes of the Vijayanagara empire'),
            ('C', 'Tamil Sangam poetry'),
            ('D', 'Hindu mythological stories')
           ) as v(label, option_text)
 where q.question_hash = 'df3768ccb436f13c60724a1f1eec6611'
on conflict (question_id, label) do nothing;

-- art_culture | ancient-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'ancient-art'),
    'Which cave complex is famous for its ''Trimurti'' painting and the ''Dancing Shiva'' panel?',
    'Cave 14 of the Ellora complex holds the famous Trimurti painting of Shiva, and Cave 16 contains the dancing Shiva panel.',
    'medium',
    'NCERT Class XII (An Introduction to Indian Art)',
    null,
    '54d24ab9d7b01c075f1fe6c98fd0e27a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '54d24ab9d7b01c075f1fe6c98fd0e27a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Badami'),
            ('B', 'Mamallapuram'),
            ('C', 'Ajanta'),
            ('D', 'Ellora')
           ) as v(label, option_text)
 where q.question_hash = '54d24ab9d7b01c075f1fe6c98fd0e27a'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Chola bronze images of Sambandar and Rajaraja were cast in the workshop of:',
    'The great Chola bronzes of Sambandar and Rajaraja were cast under Rajaraja II, who himself wrote the musical work Sangita Dipika.',
    'hard',
    'Standard Reference',
    null,
    '48717642bb4056206561d97f660a1de0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '48717642bb4056206561d97f660a1de0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajaraja I'),
            ('B', 'Vikrama Chola'),
            ('C', 'Rajaraja II'),
            ('D', 'Kulottunga III')
           ) as v(label, option_text)
 where q.question_hash = '48717642bb4056206561d97f660a1de0'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Vijayanagara capital was founded by:',
    'Vijayanagara, the capital of the Vijayanagara Empire, was founded in 1336 by Harihara I and his brother Bukka I with advice from the sage Vidyaraja.',
    'medium',
    'Standard Reference',
    null,
    '9fdff1d05755519f227ad02ccf0622f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9fdff1d05755519f227ad02ccf0622f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saluva Narasimha'),
            ('B', 'Harihara I and Bukka I'),
            ('C', 'Deva Raya I'),
            ('D', 'Krishna Deva Raya')
           ) as v(label, option_text)
 where q.question_hash = '9fdff1d05755519f227ad02ccf0622f6'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Hoysala temples at Belur and Halebidu are famous for:',
    'The Hoysala temples, built in the 12th century in Karnataka, are celebrated for their intricately carved soapstone sculptures, including the famous star-shaped plan.',
    'medium',
    'Standard Reference',
    null,
    '0174e8a955eeb8c107bee7ce259565e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0174e8a955eeb8c107bee7ce259565e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sandstone screen walls'),
            ('B', 'Rock-cut chaitya caves'),
            ('C', 'Dravidian gopurams'),
            ('D', 'Soapstone soap-star sculpture on lathe-turned pillars')
           ) as v(label, option_text)
 where q.question_hash = '0174e8a955eeb8c107bee7ce259565e7'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Lingaraja temple at Bhubaneswar was built by which dynasty?',
    'The Lingaraja temple, a masterpiece of the Eastern Ganga style of architecture, was built by Narasimhadeva I and completed in the 11th century.',
    'hard',
    'Standard Reference',
    null,
    'f3af1a496f637a95bd39f20e5a416a91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3af1a496f637a95bd39f20e5a416a91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vanga'),
            ('B', 'Eastern Ganga'),
            ('C', 'Chola'),
            ('D', 'Pala')
           ) as v(label, option_text)
 where q.question_hash = 'f3af1a496f637a95bd39f20e5a416a91'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The Qutb Minar was built by:',
    'The Qutb Minar was begun by Qutbuddin Aibak and completed by his son Iltutmish, who added the third storey.',
    'easy',
    'NCERT Class XII (An Introduction to Indian Art)',
    null,
    'ecb4fce63522dfac233667febd67a18b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ecb4fce63522dfac233667febd67a18b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Qutbuddin Aibak'),
            ('B', 'Alauddin Khalji'),
            ('C', 'Muhammad bin Tughlaq'),
            ('D', 'Iltutmish')
           ) as v(label, option_text)
 where q.question_hash = 'ecb4fce63522dfac233667febd67a18b'
on conflict (question_id, label) do nothing;

-- art_culture | medieval-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'medieval-art'),
    'The ''Tomb of Itmad-ud-Daulah'' at Agra is notable because it is:',
    'Nur Jahan''s tomb for her father at Agra (1622-1628) was the first Mughal building to be constructed entirely in white marble.',
    'hard',
    'Standard Reference',
    null,
    '47181712f09f937b59851b9ddaeb9060'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '47181712f09f937b59851b9ddaeb9060'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Jain temple converted by Akbar'),
            ('B', 'Built entirely of red sandstone'),
            ('C', 'The first Mughal monument built entirely of white marble'),
            ('D', 'The only Mughal monument never completed')
           ) as v(label, option_text)
 where q.question_hash = '47181712f09f937b59851b9ddaeb9060'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'Who among the following founded the ''Bombay Progressive Artists'' Group?',
    'F.N. Souza was a founder of the Progressive Artists'' Group formed in Bombay in 1947, with M.F. Husain, S.H. Raza and others.',
    'hard',
    'Standard Reference',
    null,
    'd737885f732295138944a530f07893d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd737885f732295138944a530f07893d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K.G. Subramanyan'),
            ('B', 'Raja Ravi Varma'),
            ('C', 'M.F. Husain'),
            ('D', 'F.N. Souza')
           ) as v(label, option_text)
 where q.question_hash = 'd737885f732295138944a530f07893d6'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'The ''Bengal School of Art'' was founded by:',
    'Abanindranath Tagore founded the Bengal School of Art in Calcutta in the early twentieth century, drawing on the revival of Indian and Japanese art traditions.',
    'medium',
    'Standard Reference',
    null,
    'c6127deaf85225a9e332c756200408f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6127deaf85225a9e332c756200408f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abanindranath Tagore'),
            ('B', 'Raja Ravi Varma'),
            ('C', 'M.F. Husain'),
            ('D', 'Nandalal Bose')
           ) as v(label, option_text)
 where q.question_hash = 'c6127deaf85225a9e332c756200408f5'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'Who painted the famous ''Hindoo Wedding'' and was a pioneer of the Bengal School?',
    'Abanindranath Tagore painted ''Hindoo Wedding'' (1903) and is regarded as the founder of the Bengal School of Art.',
    'medium',
    'Standard Reference',
    null,
    'a61860bffb55dac3a2b3612e6e7ad959'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a61860bffb55dac3a2b3612e6e7ad959'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raja Ravi Varma'),
            ('B', 'Abanindranath Tagore'),
            ('C', 'Nandalal Bose'),
            ('D', 'Amrita Sher-Gil')
           ) as v(label, option_text)
 where q.question_hash = 'a61860bffb55dac3a2b3612e6e7ad959'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'Raja Ravi Varma is known for his painting titled:',
    'Raja Ravi Varma painted ''Bharat Mata'' (1896), an iconic image of the motherland that became a national symbol.',
    'medium',
    'Standard Reference',
    null,
    '73a52ce3cce788195e1d49ddceca9b6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '73a52ce3cce788195e1d49ddceca9b6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bamboo and Bird'),
            ('B', 'Ghat ennobled'),
            ('C', 'Bharat Mata'),
            ('D', 'Hindoo Wedding')
           ) as v(label, option_text)
 where q.question_hash = '73a52ce3cce788195e1d49ddceca9b6a'
on conflict (question_id, label) do nothing;

-- art_culture | modern-art | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'modern-art'),
    'Which artist is remembered for the ''Bombay Progressive Artists'' Group'' painting ''Falling Rocket'' and for designing India''s national emblem?',
    'M.F. Husain, a founder of the Progressive Artists'' Group, was also chosen to design the National Emblem of India adopted in 1950.',
    'medium',
    'Standard Reference',
    null,
    '893204ea3c60e96a31cdb7050b6375cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '893204ea3c60e96a31cdb7050b6375cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M.F. Husain'),
            ('B', 'S.H. Raza'),
            ('C', 'K.G. Subramanyan'),
            ('D', 'Tyeb Mehta')
           ) as v(label, option_text)
 where q.question_hash = '893204ea3c60e96a31cdb7050b6375cb'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Khajuraho group of temples was built during which period?',
    'The Khajuraho temples were built in the 10th and 11th centuries by the Chandela rulers of Bundelkhand.',
    'easy',
    'NCERT Class XII (An Introduction to Indian Art)',
    null,
    '121e9e3b472bbaa351c20c9cb483bbe7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '121e9e3b472bbaa351c20c9cb483bbe7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta period'),
            ('B', 'Chandela period'),
            ('C', 'Sultanate period'),
            ('D', 'Mughal period')
           ) as v(label, option_text)
 where q.question_hash = '121e9e3b472bbaa351c20c9cb483bbe7'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Konark Sun Temple in Odisha was built by:',
    'The 13th-century Konark Sun Temple, shaped like a giant chariot of the sun god Surya, was built by Narasimhadeva I.',
    'medium',
    'Standard Reference',
    null,
    'f599b0e231d7675efb7be76ec117b6c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f599b0e231d7675efb7be76ec117b6c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishnadevaraya of Vijayanagara'),
            ('B', 'Rajaraja I'),
            ('C', 'Narasimhadeva I of the Eastern Ganga dynasty'),
            ('D', 'Prataparudra of the Eastern Chalukyas')
           ) as v(label, option_text)
 where q.question_hash = 'f599b0e231d7675efb7be76ec117b6c9'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Meenakshi Amman Temple at Madurai is a classic example of which architectural style?',
    'The Meenakshi temple, rebuilt in the 16th and 17th centuries by the Nayaks, is a towering example of the Dravidian style with its gopurams and pillared halls.',
    'easy',
    'Standard Reference',
    null,
    '80d8c7cff0f12c97f17cd0d13fa6dedc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '80d8c7cff0f12c97f17cd0d13fa6dedc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vesara'),
            ('B', 'Indo-Islamic'),
            ('C', 'Nagara'),
            ('D', 'Dravida')
           ) as v(label, option_text)
 where q.question_hash = '80d8c7cff0f12c97f17cd0d13fa6dedc'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Mahabodhi Temple at Bodh Gaya was built by:',
    'The Mahabodhi Temple at Bodh Gaya, marking the place of the Buddha''s enlightenment, was originally built by Emperor Ashoka and later restored.',
    'medium',
    'Standard Reference',
    null,
    '1da9cfa05459328ee1ef1987273ceb6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1da9cfa05459328ee1ef1987273ceb6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanishka'),
            ('B', 'Gupta ruler Kumaragupta I'),
            ('C', 'Narasimhadeva I'),
            ('D', 'Ashoka')
           ) as v(label, option_text)
 where q.question_hash = '1da9cfa05459328ee1ef1987273ceb6e'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Victoria Memorial in Kolkata was designed by:',
    'The Victoria Memorial, built between 1906 and 1921, was designed by the British architect William Emerson in the Indo-Saracenic style.',
    'hard',
    'Standard Reference',
    null,
    'd60d7e5be505e2b523a782fd231adb06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd60d7e5be505e2b523a782fd231adb06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Herbert Baker'),
            ('B', 'Edwin Lutyens'),
            ('C', 'William Emerson'),
            ('D', 'George Wittet')
           ) as v(label, option_text)
 where q.question_hash = 'd60d7e5be505e2b523a782fd231adb06'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Rashtrapati Bhavan was designed by:',
    'Sir Edwin Lutyens designed the Rashtrapati Bhavan as part of the construction of New Delhi, along with the Secretariat and India Gate.',
    'medium',
    'Standard Reference',
    null,
    '90f4466d78ad43b6a79e5b2d27425f1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90f4466d78ad43b6a79e5b2d27425f1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Edwin Lutyens'),
            ('B', 'Le Corbusier'),
            ('C', 'Laurie Baker'),
            ('D', 'Balkrishna Doshi')
           ) as v(label, option_text)
 where q.question_hash = '90f4466d78ad43b6a79e5b2d27425f1b'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Who is regarded as the father of modern Indian architecture and designed the buildings of the IIM Ahmedabad campus?',
    'Laurie Baker, who worked with Perumal B. Chinniappa, pioneered contextual low-cost architecture in India and designed the IIM Ahmedabad campus.',
    'hard',
    'Standard Reference',
    null,
    '89eea2c51011f4f576d60921c24c1513'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89eea2c51011f4f576d60921c24c1513'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Le Corbusier'),
            ('B', 'Laurie Baker'),
            ('C', 'Balkrishna Doshi'),
            ('D', 'B. V. Doshi')
           ) as v(label, option_text)
 where q.question_hash = '89eea2c51011f4f576d60921c24c1513'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Jatiyo Sangshad Bhaban in Dhaka, designed by Louis Kahn, is a masterpiece of which architectural style?',
    'Louis Kahn''s National Assembly Building in Dhaka, completed in 1982, is celebrated as a monumental example of modern Bengali architecture in exposed brick.',
    'medium',
    'Standard Reference',
    null,
    'ed8ea5bd1327404e91d28d17b4a2ce29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ed8ea5bd1327404e91d28d17b4a2ce29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Neoclassical'),
            ('B', 'Art Deco'),
            ('C', 'Gothic'),
            ('D', 'Bengali modern / brutalism')
           ) as v(label, option_text)
 where q.question_hash = 'ed8ea5bd1327404e91d28d17b4a2ce29'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Charminar at Hyderabad was built by:',
    'Muhammad Quli Qutb Shah founded Hyderabad in 1591 and built the Charminar in 1591 to commemorate the end of a plague epidemic.',
    'medium',
    'Standard Reference',
    null,
    '9cb6053aa2874630530d6a1fb63389de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9cb6053aa2874630530d6a1fb63389de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abdul Qadir Qutb Shah'),
            ('B', 'Ibrahim Quli Qutb Shah'),
            ('C', 'Muhammad Quli Qutb Shah'),
            ('D', 'Sultan Ibrahim')
           ) as v(label, option_text)
 where q.question_hash = '9cb6053aa2874630530d6a1fb63389de'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'Which monument was built by Shah Jahan as a tomb for his wife Mumtaz Mahal?',
    'The Taj Mahal at Agra was commissioned by Shah Jahan in 1632 as a mausoleum for his wife Mumtaz Mahal.',
    'easy',
    'NCERT Class XII (An Introduction to Indian Art)',
    null,
    '9f70f74de3c5b5ddccd4269764c378d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9f70f74de3c5b5ddccd4269764c378d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Humayun''s Tomb'),
            ('B', 'Taj Mahal'),
            ('C', 'Bibi ka Maqbara'),
            ('D', 'Safdarjung''s Tomb')
           ) as v(label, option_text)
 where q.question_hash = '9f70f74de3c5b5ddccd4269764c378d4'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Gol Gumbaz at Bijapur was built by:',
    'Gol Gumbaz, the mausoleum of the Adil Shahi dynasty at Bijapur, was built by Ibrahim Adil Shah II in 1656.',
    'hard',
    'Standard Reference',
    null,
    '20539270dfc769a692fff7636611ff25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '20539270dfc769a692fff7636611ff25'
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
 where q.question_hash = '20539270dfc769a692fff7636611ff25'
on conflict (question_id, label) do nothing;

-- art_culture | architecture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'architecture'),
    'The Bhakra Dam is built across which river?',
    'The Bhakra Dam is built on the Sutlej and forms the Gobind Sagar Lake, created by the Sutlej Beas and Ravi Link Canal system.',
    'medium',
    'Standard Reference',
    null,
    '7ca8d19a8caa0250dfbc7e1eebb0d3b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7ca8d19a8caa0250dfbc7e1eebb0d3b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ravi'),
            ('B', 'Beas'),
            ('C', 'Sutlej'),
            ('D', 'Chenab')
           ) as v(label, option_text)
 where q.question_hash = '7ca8d19a8caa0250dfbc7e1eebb0d3b5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Who wrote the Ramayana?',
    'The Ramayana, traditionally attributed to Valmiki, narrates the life of Rama; the Mahabharata is attributed to Vyasa.',
    'easy',
    'NCERT Class XII',
    null,
    '092df566a2bf372e4dc5c1b6718b3f5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '092df566a2bf372e4dc5c1b6718b3f5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Valmiki'),
            ('B', 'Vasishtha'),
            ('C', 'Kalidasa'),
            ('D', 'Veda Vyasa')
           ) as v(label, option_text)
 where q.question_hash = '092df566a2bf372e4dc5c1b6718b3f5c'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which Sanskrit text contains the ''Gita Govinda'' by Jayadeva?',
    'The Gita Govinda is a 12th-century Sanskrit devotional poem by Jayadeva celebrating the love of Radha and Krishna; it is not part of a larger text.',
    'hard',
    'Standard Reference',
    null,
    '298466ed4e7c0e034197505605b71855'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '298466ed4e7c0e034197505605b71855'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhagavata Purana'),
            ('B', 'Devi Mahatmya'),
            ('C', 'Kalpa Sutra'),
            ('D', 'Gita Govinda is a standalone poem')
           ) as v(label, option_text)
 where q.question_hash = '298466ed4e7c0e034197505605b71855'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Kalidasa is credited with which of the following plays?',
    'Kalidasa wrote the plays Abhijnanasakuntalam, Vikramorvashiyam and Malavikagnimitram along with the poem Raghuvamsha.',
    'medium',
    'Standard Reference',
    null,
    'a3bd506117337f95de05b75055b8cbd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a3bd506117337f95de05b75055b8cbd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tughlaq and Shahnameh'),
            ('B', 'Malavikagnimitram and Abhijnanasakuntalam'),
            ('C', 'Mudrarakshasa and Vishakhadattam'),
            ('D', 'Natyasambhavam and Nannul')
           ) as v(label, option_text)
 where q.question_hash = 'a3bd506117337f95de05b75055b8cbd5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Neelakandeer'' poem was written by which poet?',
    'Kambar, a 12th-century Kannada poet of the Western Chalukya court, wrote Neelakandeer, one of his Kavitas.',
    'hard',
    'Standard Reference',
    null,
    'b5d51ebdf6e452cbe54b9af85cbe778a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b5d51ebdf6e452cbe54b9af85cbe778a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kallidasa'),
            ('B', 'Kambar'),
            ('C', 'Kuvempu'),
            ('D', 'Ilango')
           ) as v(label, option_text)
 where q.question_hash = 'b5d51ebdf6e452cbe54b9af85cbe778a'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Tamil epic ''Silappatikaram'' was written by:',
    'The Silappatikaram, one of the five great Tamil epics, was written by Ilango Adigal, a Chera prince and a Jain monk.',
    'hard',
    'Standard Reference',
    null,
    '63ec5fb3af3f2540930b5ed5f2113b70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '63ec5fb3af3f2540930b5ed5f2113b70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ilango Adigal'),
            ('B', 'Bharati'),
            ('C', 'Appar'),
            ('D', 'Arundhati')
           ) as v(label, option_text)
 where q.question_hash = '63ec5fb3af3f2540930b5ed5f2113b70'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Tirukkural was written by:',
    'The Tirukkural, a classic of Tamil literature and of universal ethical content, was written by Tiruvalluvar.',
    'medium',
    'Standard Reference',
    null,
    '021634143f98f0196704d12ad230860d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '021634143f98f0196704d12ad230860d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bharathi'),
            ('B', 'Valluvar''s disciple Appar'),
            ('C', 'Thiruvalluvar'),
            ('D', 'Kambar')
           ) as v(label, option_text)
 where q.question_hash = '021634143f98f0196704d12ad230860d'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Who wrote the epic ''Shahnameh'' in Persian?',
    'Ferdowsi wrote the Shahnameh, the Book of Kings, in Persian between 977 and 1010 CE.',
    'easy',
    'Standard Reference',
    null,
    '029189b7fa6e567daa1e27618ba63836'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '029189b7fa6e567daa1e27618ba63836'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Omar Khayyam'),
            ('B', 'Rumi'),
            ('C', 'Amir Khusrau'),
            ('D', 'Ferdowsi')
           ) as v(label, option_text)
 where q.question_hash = '029189b7fa6e567daa1e27618ba63836'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Gul-e-Naghma'', a collection of Urdu poetry, was written by:',
    'Faiz Ahmed Faiz wrote Gul-e-Naghma, one of his early collections of Urdu poems, before his famous political verse.',
    'medium',
    'Standard Reference',
    null,
    '625372742518013e177d25b8a61581d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '625372742518013e177d25b8a61581d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mir Taqi Mir'),
            ('B', 'Ghulam Ali Faiz'),
            ('C', 'Firaq Gorakhpuri'),
            ('D', 'Maulana Abdul Kalam Azad')
           ) as v(label, option_text)
 where q.question_hash = '625372742518013e177d25b8a61581d5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The novel ''Godan'' was written by:',
    'Premchand''s Godan (1936) depicts the life of an impoverished peasant and is among his finest novels.',
    'medium',
    'Standard Reference',
    null,
    'a72762b4f2709789d1337d002e713ff5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a72762b4f2709789d1337d002e713ff5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mulk Raj Anand'),
            ('B', 'Phanishwar Nath Renu'),
            ('C', 'R.K. Narayan'),
            ('D', 'Premchand')
           ) as v(label, option_text)
 where q.question_hash = 'a72762b4f2709789d1337d002e713ff5'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Who wrote the novel ''Malgudi Days''?',
    'R.K. Narayan''s Malgudi Days (1942) is a collection of short stories set in the fictional South Indian town of Malgudi.',
    'medium',
    'Standard Reference',
    null,
    'fa94b9d62c608e6b1eb8e4e2f993fc2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fa94b9d62c608e6b1eb8e4e2f993fc2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.K. Narayan'),
            ('B', 'Raja Rao'),
            ('C', 'Girish Karnad'),
            ('D', 'Ruskin Bond')
           ) as v(label, option_text)
 where q.question_hash = 'fa94b9d62c608e6b1eb8e4e2f993fc2b'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The novel ''Midnight''s Children'' was written by:',
    'Salman Rushdie won the Booker Prize for Midnight''s Children, whose protagonist Saleem Sinai is born at the moment of India''s independence.',
    'easy',
    'Standard Reference',
    null,
    '1741635954942224969356f0db80c3fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1741635954942224969356f0db80c3fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vikram Seth'),
            ('B', 'V.S. Naipaul'),
            ('C', 'Salman Rushdie'),
            ('D', 'Arundhati Roy')
           ) as v(label, option_text)
 where q.question_hash = '1741635954942224969356f0db80c3fc'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Discovery of India'' was written by:',
    'Jawaharlal Nehru wrote The Discovery of India in prison in 1942, a classic account of Indian history and culture.',
    'easy',
    'Standard Reference',
    null,
    'c552a71427e228a54fae08eec36fb5ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c552a71427e228a54fae08eec36fb5ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.R. Ambedkar'),
            ('B', 'Jawaharlal Nehru'),
            ('C', 'V.K. Krishna Menon'),
            ('D', 'Mulk Raj Anand')
           ) as v(label, option_text)
 where q.question_hash = 'c552a71427e228a54fae08eec36fb5ca'
on conflict (question_id, label) do nothing;

-- art_culture | literature | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The Kannada writer who won the Jnanpith Award for ''Ghada'' and ''Srungi'' was:',
    'Kuvempu received the Jnanpith Award for his poetic works Ghada and Srungi, and is called the father of modern Kannada literature.',
    'hard',
    'Standard Reference',
    null,
    '5bfa8b6a011041cccb87f3a7fa59b0f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5bfa8b6a011041cccb87f3a7fa59b0f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. Shivaram Karanth'),
            ('B', 'B. P. Koirala'),
            ('C', 'Vijay Tendulkar'),
            ('D', 'Kuvempu')
           ) as v(label, option_text)
 where q.question_hash = '5bfa8b6a011041cccb87f3a7fa59b0f1'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which Indian author won the Nobel Prize in Literature in 1913?',
    'Rabindranath Tagore won the 1913 Nobel Prize in Literature for Gitanjali and is the only non-European laureate in Literature.',
    'easy',
    'Standard Reference',
    null,
    '4534d096279daba3839c45b76510f9d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4534d096279daba3839c45b76510f9d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rabindranath Tagore'),
            ('B', 'Sarojini Naidu'),
            ('C', 'V.S. Naipaul'),
            ('D', 'Amartya Sen')
           ) as v(label, option_text)
 where q.question_hash = '4534d096279daba3839c45b76510f9d4'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which Indian writer won the Nobel Prize in Literature in 2007?',
    'V.S. Naipaul won the 2007 Nobel Prize in Literature, becoming the first Trinidad-born and first Indian writer of Indian origin to receive it.',
    'medium',
    'Standard Reference',
    null,
    'cca60cbbefc811576845e379ee94c53e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cca60cbbefc811576845e379ee94c53e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.K. Narayan'),
            ('B', 'Arundhati Roy'),
            ('C', 'V.S. Naipaul'),
            ('D', 'Kiran Desai')
           ) as v(label, option_text)
 where q.question_hash = 'cca60cbbefc811576845e379ee94c53e'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Ashtadhyayi'' of Pannini is a treatise on:',
    'Pannini''s Ashtadhyayi (c. 4th century BCE) is the most authoritative treatise on Sanskrit grammar and the foundation of Sanskrit philology.',
    'medium',
    'Standard Reference',
    null,
    '138d78bc7d2233c32577c389b9930977'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '138d78bc7d2233c32577c389b9930977'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanskrit grammar'),
            ('B', 'Sanskrit poetics'),
            ('C', 'Hindu law'),
            ('D', 'Buddhist philosophy')
           ) as v(label, option_text)
 where q.question_hash = '138d78bc7d2233c32577c389b9930977'
on conflict (question_id, label) do nothing;

-- art_culture | literature | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'The ''Natya Shastra'' is attributed to:',
    'The Natya Shastra of Bharata Muni is a treatise on Indian theatre, aesthetics and poetics, usually dated between the 2nd century BCE and the 2nd century CE.',
    'medium',
    'Standard Reference',
    null,
    'ec35d19525b377b719954a541cac4771'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ec35d19525b377b719954a541cac4771'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishnu Dattatirthi'),
            ('B', 'Damodara'),
            ('C', 'Abhinavagupta'),
            ('D', 'Bharata Muni')
           ) as v(label, option_text)
 where q.question_hash = 'ec35d19525b377b719954a541cac4771'
on conflict (question_id, label) do nothing;

-- art_culture | literature | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'literature'),
    'Which text of the Arthashastra deals with the science of statecraft and taxation?',
    'Kautilya''s Arthashastra, written for Chandragupta Maurya, describes statecraft, economics, taxation and military administration.',
    'easy',
    'Standard Reference',
    null,
    '11281d0814413453dce8d4a9ecd331d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11281d0814413453dce8d4a9ecd331d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harshacharita of Banabhatta'),
            ('B', 'Nitisara of Kamandaki'),
            ('C', 'Arthashastra of Kautilya'),
            ('D', 'Aiguyaneshi of Yashawant')
           ) as v(label, option_text)
 where q.question_hash = '11281d0814413453dce8d4a9ecd331d6'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'In the Hindustani music system, the ''khayal'' is a:',
    'Khayal is the principal vocal genre of Hindustani music, while dhrupad and thumri are the other major vocal forms.',
    'medium',
    'NCERT Class XI',
    null,
    '2d19f7cdef17dd3c0554c154dc2cb439'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2d19f7cdef17dd3c0554c154dc2cb439'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rasa'),
            ('B', 'Vocal genre'),
            ('C', 'Raga'),
            ('D', 'Tala')
           ) as v(label, option_text)
 where q.question_hash = '2d19f7cdef17dd3c0554c154dc2cb439'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Gwalior gharana of Hindustani music was founded by:',
    'Hasan Khan, a descendant of Tansen, founded the Gwalior gharana, noted for its intricate bandish and sargam style.',
    'hard',
    'Standard Reference',
    null,
    'a9b8cf81799af4011f7824a589b20442'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a9b8cf81799af4011f7824a589b20442'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Baba Allauddin Khan'),
            ('B', 'Hasan Khan'),
            ('C', 'Tansen'),
            ('D', 'Bhimsen Joshi')
           ) as v(label, option_text)
 where q.question_hash = 'a9b8cf81799af4011f7824a589b20442'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The Trinity of Carnatic music consists of:',
    'The Trinity of Carnatic music, who lived in the 18th century, are Tyagaraja, Muthuswami Dikshitar and Syama Sastri.',
    'medium',
    'Standard Reference',
    null,
    '4d7b837fd9ec01f33ef7e081fc5c5f2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4d7b837fd9ec01f33ef7e081fc5c5f2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Purandara Dasa and Kanaka Dasa'),
            ('B', 'Bhimsen Joshi, Ustad Faiyaz Khan and Ali Akbar Khan'),
            ('C', 'Rabindranath Tagore, Sitaram and Surdas'),
            ('D', 'Tyagaraja, Muthuswami Dikshitar and Syama Sastri')
           ) as v(label, option_text)
 where q.question_hash = '4d7b837fd9ec01f33ef7e081fc5c5f2b'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The musical form ''Kritis'' is associated with:',
    'Kritis, composed largely in Telugu and Sanskrit, are the principal lyrical form of Carnatic music, famously used by the Trinity.',
    'medium',
    'Standard Reference',
    null,
    '8dfe6ae6fdcaedfdf312b649b31e2cf2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8dfe6ae6fdcaedfdf312b649b31e2cf2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ghazal'),
            ('B', 'Hindustani music'),
            ('C', 'Carnatic music'),
            ('D', 'Folk music of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '8dfe6ae6fdcaedfdf312b649b31e2cf2'
on conflict (question_id, label) do nothing;

-- art_culture | music | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The ''Rudra veena'' and the ''surbahar'' are examples of:',
    'Rudra veena and surbahar are string instruments of the bowed variety, related to the modern violin.',
    'easy',
    'Standard Reference',
    null,
    '497b5411f47c8e17b11c59f4f138386a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '497b5411f47c8e17b11c59f4f138386a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'String instruments'),
            ('B', 'Percussion instruments'),
            ('C', 'Wind instruments'),
            ('D', 'Taborets')
           ) as v(label, option_text)
 where q.question_hash = '497b5411f47c8e17b11c59f4f138386a'
on conflict (question_id, label) do nothing;

-- art_culture | music | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The shehnai, the Indian double-reed instrument, was popularised by:',
    'Ustad Bismillah Khan, son of Ustad Sharafat Ali Khan, popularised the shehnai in the 20th century and was awarded the Padma Shri.',
    'medium',
    'Standard Reference',
    null,
    'ce866629d1f0c4663bb163c3cd3b64cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ce866629d1f0c4663bb163c3cd3b64cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zubin Mehta'),
            ('B', 'Ali Akbar Khan'),
            ('C', 'Bismillah Khan'),
            ('D', 'Ravi Shankar')
           ) as v(label, option_text)
 where q.question_hash = 'ce866629d1f0c4663bb163c3cd3b64cd'
on conflict (question_id, label) do nothing;

-- art_culture | music | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'music'),
    'The tabla was given its present form by:',
    'Ustad Allauddin Khan of the Lucknow gharana standardised the present-day tabla and founded the Lucknow gharana of tabla playing.',
    'hard',
    'Standard Reference',
    null,
    'b352b8c981e12a143a9f0ac638a5e14e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b352b8c981e12a143a9f0ac638a5e14e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ustad Allauddin Khan'),
            ('B', 'Ustad Zakir Hussain'),
            ('C', 'Baba Allauddin Khan'),
            ('D', 'Pandit Ravi Shankar')
           ) as v(label, option_text)
 where q.question_hash = 'b352b8c981e12a143a9f0ac638a5e14e'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Which classical dance form is recognised by the bhangima dance of the Puri temple?',
    'Odissi is the temple dance of Odisha, performed at the Jagannath temple in Puri with the distinctive bhangima movement.',
    'medium',
    'Standard Reference',
    null,
    '0bffbdeb53cb771007acf5f078f53a92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0bffbdeb53cb771007acf5f078f53a92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kathak'),
            ('B', 'Odissi'),
            ('C', 'Bharatanatyam'),
            ('D', 'Kuchipudi')
           ) as v(label, option_text)
 where q.question_hash = '0bffbdeb53cb771007acf5f078f53a92'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kathakali'' dance form belongs to which state?',
    'Kathakali is the classical dance-drama of Kerala, famous for its elaborate make-up, costume and mudras.',
    'easy',
    'Standard Reference',
    null,
    'cfbb0f9e9f10bb5344a549ca258e7831'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cfbb0f9e9f10bb5344a549ca258e7831'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'cfbb0f9e9f10bb5344a549ca258e7831'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'Who is credited with giving Bharatanatyam its modern classical form?',
    'Rukmini Devi Arundale revived Bharatanatyam and the Kalakshetra Foundation founded by her in 1936 shaped its modern presentation.',
    'medium',
    'Standard Reference',
    null,
    '71abc7ee7c45a1f871b03da2f767f2bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '71abc7ee7c45a1f871b03da2f767f2bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muthukumaran Pillai'),
            ('B', 'Martha Sathyam'),
            ('C', 'Rukmini Devi Arundale'),
            ('D', 'E. Krishna Iyer')
           ) as v(label, option_text)
 where q.question_hash = '71abc7ee7c45a1f871b03da2f767f2bf'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The Sattriya dance form is associated with which region?',
    'Sattriya, the neo-Vaishnava dance of Assam and Manipur, was codified by Srimanta Sankardeva in the 16th century.',
    'medium',
    'Standard Reference',
    null,
    '770b84ead4af3cf05c59c65aef57690b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '770b84ead4af3cf05c59c65aef57690b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Manipur and Assam'),
            ('C', 'Rajasthan'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '770b84ead4af3cf05c59c65aef57690b'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Kummattikali'' and ''Kolkali'' folk dances belong to which state?',
    'Kummattikali and Kolkali are the rhythmic folk theatre dances of Kerala, performed during the harvest season.',
    'medium',
    'Standard Reference',
    null,
    'e351af1f6c89fd2c172225eac1068a9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e351af1f6c89fd2c172225eac1068a9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Punjab'),
            ('C', 'Odisha'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'e351af1f6c89fd2c172225eac1068a9c'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Garba'' and ''Dandiya'' dances are the folk dances of:',
    'Garba and Dandiya are the community folk dances of Gujarat, performed during the Navratri festival.',
    'easy',
    'Standard Reference',
    null,
    '1634d7d39c5f5684fac178434350de99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1634d7d39c5f5684fac178434350de99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab'),
            ('B', 'Bihar'),
            ('C', 'Rajasthan'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '1634d7d39c5f5684fac178434350de99'
on conflict (question_id, label) do nothing;

-- art_culture | dance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The ''Lavani'' dance is a folk tradition of:',
    'Lavani is a folk dance of Maharashtra, performed by the shepherd castes of Maharashtra during the festival of Gangaur.',
    'medium',
    'Standard Reference',
    null,
    'a76f1cbe9544ca568fef68592816c8bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a76f1cbe9544ca568fef68592816c8bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Karnataka'),
            ('C', 'Maharashtra'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'a76f1cbe9544ca568fef68592816c8bc'
on conflict (question_id, label) do nothing;

-- art_culture | dance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'dance'),
    'The classical dance form ''Kuchipudi'' originated in which state?',
    'Kuchipudi, the dance-drama of Andhra Pradesh, is performed by actors who dance and narrate the story simultaneously.',
    'easy',
    'Standard Reference',
    null,
    '311303212e39ae0174751c2a62708692'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '311303212e39ae0174751c2a62708692'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '311303212e39ae0174751c2a62708692'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Yakshagana'' theatre form is associated with:',
    'Yakshagana, a dance-drama of coastal Karnataka and north Kerala, is performed in Kannada with elaborate make-up and towering headgear.',
    'medium',
    'Standard Reference',
    null,
    'f3050bfe0d29d99a682a9b201520ab73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3050bfe0d29d99a682a9b201520ab73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Tamil Nadu'),
            ('C', 'Kerala'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'f3050bfe0d29d99a682a9b201520ab73'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Kutiyattam'' form of Sanskrit theatre is practised in Kerala and was recognised by UNESCO in which year?',
    'Kutiyattam, the oldest surviving Sanskrit theatre form, was inscribed on the UNESCO Intangible Cultural Heritage list in 2001.',
    'medium',
    'Standard Reference',
    null,
    '6c30e4f1baacb0729cd1788de88fd7da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6c30e4f1baacb0729cd1788de88fd7da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '2008'),
            ('C', '2013'),
            ('D', '2001')
           ) as v(label, option_text)
 where q.question_hash = '6c30e4f1baacb0729cd1788de88fd7da'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Ramlila'' of Ramnagar, performed in Varanasi, was inscribed on the UNESCO list in:',
    'The Ramlila of Ramnagar was proclaimed a Masterpiece of the Oral and Intangible Heritage of Humanity by UNESCO in 2003.',
    'hard',
    'Standard Reference',
    null,
    '82bcc587b09846e657e9bbf595a2e8f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82bcc587b09846e657e9bbf595a2e8f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '2008'),
            ('C', '2010'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = '82bcc587b09846e657e9bbf595a2e8f8'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Who is considered the father of Indian cinema and directed the first Indian feature film?',
    'Dadasaheb Phalke, who made the first Indian feature film Raja Harishchandra in 1913, is regarded as the father of Indian cinema.',
    'easy',
    'Standard Reference',
    null,
    'ccbc58563d96804c36e1104b7eaf7d20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ccbc58563d96804c36e1104b7eaf7d20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dadasaheb Phalke'),
            ('B', 'Himanshu Rai'),
            ('C', 'Ardeshir Irani'),
            ('D', 'Satyajit Ray')
           ) as v(label, option_text)
 where q.question_hash = 'ccbc58563d96804c36e1104b7eaf7d20'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Dadasaheb Phalke set up the Hindustan Film Company, India''s first film studio, in which city?',
    'Dadasaheb Phalke founded the Hindustan Film Company in 1913 at Madanpura, Bombay, where he also built the first Indian film studio.',
    'hard',
    'Standard Reference',
    null,
    '4fb3ef867592bd406d69c19702c2aa06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4fb3ef867592bd406d69c19702c2aa06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madras'),
            ('B', 'Bombay'),
            ('C', 'Calcutta'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '4fb3ef867592bd406d69c19702c2aa06'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Which Indian film director is known as the ''Shirley Temple of India''?',
    'Madhubala, who starred in Mughal-e-Azam and Sanaa, was known as the Shirley Temple of India.',
    'medium',
    'Standard Reference',
    null,
    'ad92e9d0dd72b9398e09040d7c899246'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ad92e9d0dd72b9398e09040d7c899246'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geeta Bali'),
            ('B', 'Meena Kumari'),
            ('C', 'Madhubala'),
            ('D', 'Nargis')
           ) as v(label, option_text)
 where q.question_hash = 'ad92e9d0dd72b9398e09040d7c899246'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Which film won India''s first Oscar, for Best Original Song in 2023?',
    'The song ''Naatu Naatu'' from RRR won the Academy Award for Best Original Song in 2023, India''s first Oscar.',
    'easy',
    'Standard Reference',
    null,
    '7a0ecc0eadc3201a829955263bf3396a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7a0ecc0eadc3201a829955263bf3396a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Naane Varuvean'),
            ('B', 'All We Imagine as Light'),
            ('C', 'The Elephant Whisperers'),
            ('D', 'RRR')
           ) as v(label, option_text)
 where q.question_hash = '7a0ecc0eadc3201a829955263bf3396a'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The National Film Awards are presented by the Directorate of Film Festivals under the Ministry of:',
    'The Directorate of Film Festivals, under the Ministry of Information and Broadcasting, organises the National Film Awards.',
    'medium',
    'Standard Reference',
    null,
    'a7e91231864d2cb0c00c87ac5b327582'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a7e91231864d2cb0c00c87ac5b327582'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Corporate Affairs'),
            ('B', 'Information and Broadcasting'),
            ('C', 'Culture'),
            ('D', 'Education')
           ) as v(label, option_text)
 where q.question_hash = 'a7e91231864d2cb0c00c87ac5b327582'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'Which Indian film is regarded as the first feature film of Satyajit Ray?',
    'Pather Panchali (1955), a semi-autobiographical film about a poor rural Bengali family, was Satyajit Ray''s debut feature.',
    'easy',
    'Standard Reference',
    null,
    'b7283cdc8eac52e3677c27cf6e9ea3d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b7283cdc8eac52e3677c27cf6e9ea3d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pather Panchali'),
            ('B', 'Apur Sansar'),
            ('C', 'Charulata'),
            ('D', 'Jalsaghar')
           ) as v(label, option_text)
 where q.question_hash = 'b7283cdc8eac52e3677c27cf6e9ea3d7'
on conflict (question_id, label) do nothing;

-- art_culture | theatre-and-cinema | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'theatre-and-cinema'),
    'The ''Golden Lotus'' and ''Silver Lotus'' awards at the National Film Awards were renamed in 2012 as:',
    'In 2012 the Directorate of Film Festivals renamed the awards the Rajat Kamal (Silver Lotus) and the Kamal Ratna (Golden Lotus) for feature films.',
    'hard',
    'Standard Reference',
    null,
    'c1e7ca4f589e9a36e03a722ffd45f24a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c1e7ca4f589e9a36e03a722ffd45f24a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vikram Ratna and Kamal Ratna'),
            ('B', 'Jnan Ratna and Vikram Ratna'),
            ('C', 'Rajat Kamal and Kamal Ratna'),
            ('D', 'Swarna Kamal and Rajat Kamal')
           ) as v(label, option_text)
 where q.question_hash = 'c1e7ca4f589e9a36e03a722ffd45f24a'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The miniature painting school of Kishangarh is known for:',
    'The Kishangarh school, founded by Bishandas, is marked by bold colours, elongated figures and dramatic depictions of Krishna legends.',
    'hard',
    'Standard Reference',
    null,
    '9c3579004b996b274fb81af9267edb96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9c3579004b996b274fb81af9267edb96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bold colour and elongated figures of the Krishna theme'),
            ('B', 'Company style portraits'),
            ('C', 'Pahari landscapes'),
            ('D', 'Mughal portraiture')
           ) as v(label, option_text)
 where q.question_hash = '9c3579004b996b274fb81af9267edb96'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Kangra school of painting flourished in:',
    'The Kangra school developed in the Kangra region of Himachal Pradesh in the 17th and 18th centuries, noted for its devotional and lyrical themes.',
    'medium',
    'Standard Reference',
    null,
    'f9e58e2a1d1582eaac401ce9b93a31fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f9e58e2a1d1582eaac401ce9b93a31fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Bengal'),
            ('C', 'Kashmir'),
            ('D', 'Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'f9e58e2a1d1582eaac401ce9b93a31fa'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Pattachitra painting tradition of Odisha is closely associated with the temple of:',
    'Pattachitra, the cloth-scroll painting of Odisha and West Bengal, was traditionally used as a temple curtain for the Jagannath temple at Puri.',
    'medium',
    'Standard Reference',
    null,
    'b3f9c7da463661d419959853060902d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b3f9c7da463661d419959853060902d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Konark Sun Temple'),
            ('B', 'Lingaraja'),
            ('C', 'Jagannath at Puri'),
            ('D', 'Brahmeswar at Bhubaneswar')
           ) as v(label, option_text)
 where q.question_hash = 'b3f9c7da463661d419959853060902d6'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Warli painting is practised mainly by the:',
    'Warli painting comes from the Warli tribe of Maharashtra, with simple white stick figures on a mud-brown background.',
    'easy',
    'Standard Reference',
    null,
    'd1c2528bd1d52ebaaedc0ab1335f2dbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd1c2528bd1d52ebaaedc0ab1335f2dbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Toda of Kerala'),
            ('B', 'Warli tribe of Maharashtra'),
            ('C', 'Bhils of Rajasthan'),
            ('D', 'Santhals of Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'd1c2528bd1d52ebaaedc0ab1335f2dbc'
on conflict (question_id, label) do nothing;

-- art_culture | painting | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Madhubani painting from Bihar is famous for:',
    'Madhubani (Mithila) painting is known for flat colours, bold geometric patterns and double-line borders, drawn mostly by women.',
    'easy',
    'Standard Reference',
    null,
    '4f2aba27de1daa3b7e10758f08f38d21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4f2aba27de1daa3b7e10758f08f38d21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Miniature painting of the Vijayanagara court'),
            ('B', 'Gold and silver leaf work'),
            ('C', 'Bright geometric patterns and double-line borders with flat colours'),
            ('D', 'Brushwork in the Japanese style')
           ) as v(label, option_text)
 where q.question_hash = '4f2aba27de1daa3b7e10758f08f38d21'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The Kalighat painting style developed in:',
    'Kalighat painting, in the Bengal school, grew around the Kalighat temple in Calcutta in the 19th century, with bold brushwork on flat paper.',
    'medium',
    'Standard Reference',
    null,
    '8d8e90a2d4297b517be7b8c541e05a80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d8e90a2d4297b517be7b8c541e05a80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Patna'),
            ('B', 'Calcutta'),
            ('C', 'Madras'),
            ('D', 'Delhi')
           ) as v(label, option_text)
 where q.question_hash = '8d8e90a2d4297b517be7b8c541e05a80'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Company style'' of Indian painting developed in the context of:',
    'Company style painting developed in the late 18th century when Indian artists worked for the East India Company and European patrons.',
    'medium',
    'Standard Reference',
    null,
    'df05146f56542330432e2a194158ff31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'df05146f56542330432e2a194158ff31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mughal imperial ateliers'),
            ('B', 'Raja Ravi Varma''s studio'),
            ('C', 'Panchayati Raj art'),
            ('D', 'European trading companies in India')
           ) as v(label, option_text)
 where q.question_hash = 'df05146f56542330432e2a194158ff31'
on conflict (question_id, label) do nothing;

-- art_culture | painting | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'Tanjore painting is distinguished by:',
    'Tanjore painting of Tamil Nadu uses gesso work and gold foil on teak panels, and is also known as Thanjavur painting.',
    'medium',
    'Standard Reference',
    null,
    'e652f7fb694c356fd0451ab345450ea2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e652f7fb694c356fd0451ab345450ea2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Relief gold foil work on wooden panels'),
            ('B', 'Terracotta modelling'),
            ('C', 'Warli stick figures'),
            ('D', 'Watercolour landscapes')
           ) as v(label, option_text)
 where q.question_hash = 'e652f7fb694c356fd0451ab345450ea2'
on conflict (question_id, label) do nothing;

-- art_culture | painting | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'painting'),
    'The ''Phad'' painting tradition belongs to:',
    'Phad painting of Rajasthan, made on cloth scrolls, narrates folk deities such as the bhopa and is used by the Bhil painters.',
    'hard',
    'Standard Reference',
    null,
    '0add6e33da04e6b78e69870f0f69bfcd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0add6e33da04e6b78e69870f0f69bfcd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Rajasthan'),
            ('C', 'Bengal'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '0add6e33da04e6b78e69870f0f69bfcd'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Which craft is known as the ''gold and silver embroidery'' of Lucknow?',
    'Zardozi, the metallic embroidery using gold and silver threads, reached its peak in Lucknow under the Nawabs and is now centred in Delhi.',
    'medium',
    'Standard Reference',
    null,
    'bdb6d1b4d521e0b698776d34fc4cbaaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bdb6d1b4d521e0b698776d34fc4cbaaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zardozi'),
            ('B', 'Phulkari'),
            ('C', 'Kasuti'),
            ('D', 'Chikankari')
           ) as v(label, option_text)
 where q.question_hash = 'bdb6d1b4d521e0b698776d34fc4cbaaf'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kasuti'' embroidery of Karnataka is mainly worked by:',
    'Kasuti is a black-and-white cotton embroidery of Karnataka created largely by women of the rural communities.',
    'hard',
    'Standard Reference',
    null,
    'c68f2aeb610c19d9ca905d9acea091a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c68f2aeb610c19d9ca905d9acea091a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Santhal men'),
            ('B', 'Rajasthani traders'),
            ('C', 'Fisherfolk of Kerala'),
            ('D', 'Women of the Karnataka folk tradition')
           ) as v(label, option_text)
 where q.question_hash = 'c68f2aeb610c19d9ca905d9acea091a9'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Which GI tagged handicraft is the clay toys of Channapatna in Karnataka?',
    'Channapatna toys, made of locally sourced wood and painted with natural colours, received the Geographical Indication tag in 2009.',
    'easy',
    'Standard Reference',
    null,
    '80e473f0c77e7d42aab3427b40741d80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '80e473f0c77e7d42aab3427b40741d80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanchi embroidery'),
            ('B', 'Kanjivaram silk'),
            ('C', 'Channapatna toys'),
            ('D', 'Kullu shawls')
           ) as v(label, option_text)
 where q.question_hash = '80e473f0c77e7d42aab3427b40741d80'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kullu shawls'' of Himachal Pradesh are known for:',
    'Kullu shawls are handwoven in wool with bold geometric patterns in bright colours and carry the GI tag for Kullu district.',
    'easy',
    'Standard Reference',
    null,
    'bc239ff73747959cef14920f57ea61b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bc239ff73747959cef14920f57ea61b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gold thread work'),
            ('B', 'Silk ikat'),
            ('C', 'Block-printed cotton'),
            ('D', 'Bright geometric patterns in wool')
           ) as v(label, option_text)
 where q.question_hash = 'bc239ff73747959cef14920f57ea61b3'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Darjeeling tea of India received the Geographical Indication tag in:',
    'Darjeeling tea, the first Indian product to receive a GI tag in 2004-05, was registered in 2005 along with Kalimpong and Kurseong.',
    'medium',
    'Standard Reference',
    null,
    '305d57587c0ac7735bde172d89a7ea4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '305d57587c0ac7735bde172d89a7ea4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '2003'),
            ('C', '2005'),
            ('D', '2009')
           ) as v(label, option_text)
 where q.question_hash = '305d57587c0ac7735bde172d89a7ea4f'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The Blue pottery of Jaipur is made from:',
    'Jaipur blue pottery uses quartz and fuller earth instead of kaolin and is glazed with cobalt oxide, which gives it its distinctive blue colour.',
    'medium',
    'Standard Reference',
    null,
    '4973bab7b31bfb50c7f46fa17c65e08c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4973bab7b31bfb50c7f46fa17c65e08c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kaolin clay glazed with cobalt oxide'),
            ('B', 'Terracotta painted with vegetable dyes'),
            ('C', 'Porcelain made from kaolin'),
            ('D', 'Cotton fabric with indigo dye')
           ) as v(label, option_text)
 where q.question_hash = '4973bab7b31bfb50c7f46fa17c65e08c'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Sanchi embroidery'' of Madhya Pradesh is a:',
    'Sanchi embroidery, a Phulkari style counted-thread embroidery from Madhya Pradesh, was granted the GI tag in 2011.',
    'hard',
    'Standard Reference',
    null,
    '4b71579d7ca21ceb581689eea2f4f402'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4b71579d7ca21ceb581689eea2f4f402'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bamboo craft of Mizoram'),
            ('B', 'Phulkari style embroidery'),
            ('C', 'Zardozi work on silk'),
            ('D', 'Block printing with natural dyes')
           ) as v(label, option_text)
 where q.question_hash = '4b71579d7ca21ceb581689eea2f4f402'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'Kalamkari, the hand-painted or block-printed cotton of Andhra Pradesh, traditionally used:',
    'Kalamkari uses natural dyes such as indigo, madder root and iron liquor along with hand-drawn or block-printed outlines.',
    'medium',
    'Standard Reference',
    null,
    '6daa70c3e89477fef18367ee131327dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6daa70c3e89477fef18367ee131327dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gold thread'),
            ('B', 'Wool fibres'),
            ('C', 'Natural dyes such as indigo and madder'),
            ('D', 'Chemical dyes only')
           ) as v(label, option_text)
 where q.question_hash = '6daa70c3e89477fef18367ee131327dc'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'Which of the following Indian sites is a UNESCO World Heritage cultural site with a Stupa and monastery complex?',
    'The Buddhist Monuments at Sanchi, comprising the stupa and monastic complex, were inscribed as a UNESCO World Heritage site in 1979.',
    'medium',
    'Standard Reference',
    null,
    '928f2a354fdd5cde0dc34f02de8ff2d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '928f2a354fdd5cde0dc34f02de8ff2d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanchi stupa'),
            ('B', 'Mahabodhi Temple at Bodh Gaya'),
            ('C', 'Kaziranga National Park'),
            ('D', 'Chhatrapati Shivaji Terminus')
           ) as v(label, option_text)
 where q.question_hash = '928f2a354fdd5cde0dc34f02de8ff2d2'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The UNESCO Creative Cities of India include:',
    'Jaipur was inscribed as a UNESCO Creative City for Crafts and Folk Art in 2014 and Varanasi for Creative Crafts and Folk Art in 2015.',
    'medium',
    'Standard Reference',
    null,
    '1bdf1aa78e4e3c91db701bfbc4ebe5e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1bdf1aa78e4e3c91db701bfbc4ebe5e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mumbai and Delhi'),
            ('B', 'Chennai and Kolkata'),
            ('C', 'Bengaluru and Hyderabad'),
            ('D', 'Jaipur and Varanasi')
           ) as v(label, option_text)
 where q.question_hash = '1bdf1aa78e4e3c91db701bfbc4ebe5e0'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'Yoga was inscribed on the UNESCO Representative List of the Intangible Cultural Heritage of Humanity in:',
    'Yoga was inscribed on the Representative List in 2006, the first Indian item on the list, and the day of 21 June marks the International Day of Yoga.',
    'easy',
    'Standard Reference',
    null,
    'e23ad9a47d8cc8667f0a7e268a11d01d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e23ad9a47d8cc8667f0a7e268a11d01d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2003'),
            ('C', '2006'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'e23ad9a47d8cc8667f0a7e268a11d01d'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Kumbh Mela is inscribed on the UNESCO list of intangible heritage in:',
    'The Kumbh Mela, held at Haridwar, Prayagraj, Nashik and Ujjain, was inscribed on the Representative List in 2017.',
    'medium',
    'Standard Reference',
    null,
    'a065524a920f4f82d8446c9af3920962'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a065524a920f4f82d8446c9af3920962'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2003'),
            ('B', '2005'),
            ('C', '2017'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'a065524a920f4f82d8446c9af3920962'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Mahabodhi Temple'' complex at Bodh Gaya is a UNESCO World Heritage site inscribed in:',
    'The Mahabodhi Temple complex at Bodh Gaya was inscribed on the World Heritage List in 1986.',
    'medium',
    'Standard Reference',
    null,
    '170286b6fb50d00e03859f0e5f819d3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '170286b6fb50d00e03859f0e5f819d3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2002'),
            ('B', '2005'),
            ('C', '2012'),
            ('D', '1986')
           ) as v(label, option_text)
 where q.question_hash = '170286b6fb50d00e03859f0e5f819d3a'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The Archaeological Survey of India is a body under the Ministry of:',
    'The Archaeological Survey of India, founded in 1861, functions under the Ministry of Culture and protects monuments and sites of national importance.',
    'easy',
    'Standard Reference',
    null,
    '93c02f3467c5ef6de024bad384bfb5cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93c02f3467c5ef6de024bad384bfb5cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Culture'),
            ('B', 'Education'),
            ('C', 'Tourism'),
            ('D', 'Home Affairs')
           ) as v(label, option_text)
 where q.question_hash = '93c02f3467c5ef6de024bad384bfb5cc'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Chhatrapati Shivaji Terminus'' in Mumbai was inscribed as a UNESCO World Heritage site in:',
    'The Victorian Gothic terminus, designed by Frederick William Stevens, was inscribed on the World Heritage List in 2004.',
    'medium',
    'Standard Reference',
    null,
    'f2cf4f4631161f20fcc057d19de94589'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f2cf4f4631161f20fcc057d19de94589'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1998'),
            ('B', '2004'),
            ('C', '2007'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = 'f2cf4f4631161f20fcc057d19de94589'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'Which Indian temple complex was inscribed as a UNESCO World Heritage site in 1983?',
    'The Khajuraho Group of Monuments was inscribed in 1983, the earliest World Heritage inscription for India, followed by the Ellora and Ajanta caves in 1983 as well.',
    'hard',
    'Standard Reference',
    null,
    '94cdc7edce5a422b6cbff78d6a1bbd16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '94cdc7edce5a422b6cbff78d6a1bbd16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahabalipuram'),
            ('B', 'Khajuraho Group of Monuments'),
            ('C', 'Ajanta Caves'),
            ('D', 'Ellora Caves')
           ) as v(label, option_text)
 where q.question_hash = '94cdc7edce5a422b6cbff78d6a1bbd16'
on conflict (question_id, label) do nothing;

-- art_culture | unesco-and-heritage | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'unesco-and-heritage'),
    'The ''Dhol and Dollu Kunitha'' dance of Punjab was inscribed on the UNESCO list in:',
    'Dhol and Dollu Kunitha, the Punjabi folk dance of the Punjab region, was inscribed on the UNESCO list in 2008.',
    'medium',
    'Standard Reference',
    null,
    'd2d570a4a7c7a3faf3ea5200f62e9bee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd2d570a4a7c7a3faf3ea5200f62e9bee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2008'),
            ('B', '2010'),
            ('C', '2013'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'd2d570a4a7c7a3faf3ea5200f62e9bee'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Diwali, the festival of lights, is celebrated on the new moon day of which lunar month?',
    'Diwali falls on the new moon day of the lunar month of Kartika (Ashwin), two weeks before Diwali Padwa in the Gregorian calendar of most years.',
    'easy',
    'Standard Reference',
    null,
    '86ffdbd3774c9dba77443c4c25051c85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '86ffdbd3774c9dba77443c4c25051c85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Magha'),
            ('B', 'Kartika'),
            ('C', 'Ashwin (Kartik)'),
            ('D', 'Chaitra')
           ) as v(label, option_text)
 where q.question_hash = '86ffdbd3774c9dba77443c4c25051c85'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Guru Nanak, the founder of Sikhism, was born in:',
    'Guru Nanak was born at Kartarpur in Punjab in 1469 and died at Kartarpur in 1539.',
    'easy',
    'Standard Reference',
    null,
    'e61a20b9c28440834218b947e58ff997'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e61a20b9c28440834218b947e58ff997'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Patna'),
            ('B', 'Lahore'),
            ('C', 'Nanded'),
            ('D', 'Kartarpur')
           ) as v(label, option_text)
 where q.question_hash = 'e61a20b9c28440834218b947e58ff997'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Guru Nanak Gurpurab, the birth anniversary of the first Sikh Guru, is celebrated on:',
    'Guru Nanak''s birth anniversary, Gurpurab, is observed in November, and Kartik Purnima marks his death anniversary as Gurpurb.',
    'medium',
    'Standard Reference',
    null,
    'b5648e2c6aa768f2ea8d541e6e4842ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b5648e2c6aa768f2ea8d541e6e4842ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Makar Sankranti'),
            ('B', 'Baisakhi'),
            ('C', 'Kartik Purnima'),
            ('D', 'Guru Nanak Jayanti in November')
           ) as v(label, option_text)
 where q.question_hash = 'b5648e2c6aa768f2ea8d541e6e4842ab'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The festival of ''Pongal'' is celebrated in which state?',
    'Pongal, the four-day harvest festival marking the drying of the paddy crop, is the principal festival of Tamil Nadu.',
    'easy',
    'Standard Reference',
    null,
    '765a4063bd2d8737cd8f41889ed6d276'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '765a4063bd2d8737cd8f41889ed6d276'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '765a4063bd2d8737cd8f41889ed6d276'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The festival of ''Bihu'' marks the beginning of which season?',
    'Bihu, the Assamese festival of spring, marks the arrival of spring, the sowing season and the new year in Assam.',
    'easy',
    'Standard Reference',
    null,
    '7910e683090eac664038f4ee9c39d123'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7910e683090eac664038f4ee9c39d123'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Autumn'),
            ('B', 'Winter'),
            ('C', 'Spring'),
            ('D', 'Summer')
           ) as v(label, option_text)
 where q.question_hash = '7910e683090eac664038f4ee9c39d123'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Eid-e-Milad'', marking the birth of the Prophet Muhammad, is celebrated on:',
    'Eid-e-Milad falls on 12 Rabi al-Awwal, while Eid al-Fitr is celebrated on 1 Shawwal and Eid al-Adha on 10 Dhu al-Hijjah.',
    'medium',
    'Standard Reference',
    null,
    '9120c6f4ed4905df10cf6e6abff27203'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9120c6f4ed4905df10cf6e6abff27203'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12 Rabi al-Awwal'),
            ('B', '1 Shawwal'),
            ('C', '10 Dhu al-Hijjah'),
            ('D', '27 Rajab')
           ) as v(label, option_text)
 where q.question_hash = '9120c6f4ed4905df10cf6e6abff27203'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The Indian Constitution lists which national festivals?',
    'The Fourth Schedule of the Constitution lists Republic Day, Independence Day, Gandhi Jayanti and Buddha Purnima as national days.',
    'medium',
    'Standard Reference',
    null,
    'c55b1615c120de9c9b0868d8b35b6185'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c55b1615c120de9c9b0868d8b35b6185'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Christmas and Good Friday'),
            ('B', 'Pongal and Bihu'),
            ('C', 'Diwali and Holi'),
            ('D', 'Republic Day, Independence Day, Gandhi Jayanti and Buddha Purnima')
           ) as v(label, option_text)
 where q.question_hash = 'c55b1615c120de9c9b0868d8b35b6185'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Holi'' festival in Mathura is associated with:',
    'Lathmar Holi at Barsana, where women of Barsana beat men with sticks, and Holi at Vrindavan and Mathura draw large crowds each year.',
    'medium',
    'Standard Reference',
    null,
    '6592efabdaaaf43fc56dedbc2be61054'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6592efabdaaaf43fc56dedbc2be61054'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thira of Kerala'),
            ('B', 'Raft of the Yamuna'),
            ('C', 'Lathmar Holi at Barsana'),
            ('D', 'Kambala in Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '6592efabdaaaf43fc56dedbc2be61054'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Which festival marks the worship of the Sun God at the Konark temple?',
    'The Konark Dance Festival, held each December at the Sun Temple, showcases classical dance against the backdrop of the temple.',
    'medium',
    'Standard Reference',
    null,
    '9f39fb02310e094b5bee76eaaa9815d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9f39fb02310e094b5bee76eaaa9815d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Makar Sankranti'),
            ('B', 'Konark Dance Festival'),
            ('C', 'Rath Yatra'),
            ('D', 'Pongal')
           ) as v(label, option_text)
 where q.question_hash = '9f39fb02310e094b5bee76eaaa9815d0'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The festival of ''Thrissur Pooram'' is celebrated in which state?',
    'Thrissur Pooram, the largest temple festival of Kerala, is held in Thrissur with caparisoned elephants and percussion ensembles.',
    'easy',
    'Standard Reference',
    null,
    '8d0a25d541aa6fc2c71a3ad9c515296a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8d0a25d541aa6fc2c71a3ad9c515296a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '8d0a25d541aa6fc2c71a3ad9c515296a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Sangam'' literature of ancient Tamil literature is associated with which dynasty?',
    'The Sangam poems of the early centuries CE were composed under the Chera, Chola and Pandya kings of the Tamilakam.',
    'medium',
    'Standard Reference',
    null,
    '87f3bac249fee4a7e115c1ce471a2e13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '87f3bac249fee4a7e115c1ce471a2e13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chera'),
            ('B', 'Pallava'),
            ('C', 'Pandya'),
            ('D', 'Chola')
           ) as v(label, option_text)
 where q.question_hash = '87f3bac249fee4a7e115c1ce471a2e13'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Guru Purnima'' celebration in India honours:',
    'Guru Purnima, the full moon of Ashadha, honours the birth of the Guru and is observed by Buddhists, Hindus and Jains alike.',
    'easy',
    'Standard Reference',
    null,
    '7f80337b45adc9610ee868ecb604a34c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7f80337b45adc9610ee868ecb604a34c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The first day of the monsoon'),
            ('B', 'The harvest festival'),
            ('C', 'The birth of the Guru'),
            ('D', 'The death anniversary of the Guru')
           ) as v(label, option_text)
 where q.question_hash = '7f80337b45adc9610ee868ecb604a34c'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Nations and Nationalism''?',
    'V.D. Savarkar wrote Nations and Nationalism (1939), a foundational text on Indian nationalism published in English by Macmillan.',
    'medium',
    'Standard Reference',
    null,
    '2adf1aff0ce8752289ea70bca60477fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2adf1aff0ce8752289ea70bca60477fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rabindranath Tagore'),
            ('B', 'V.D. Savarkar'),
            ('C', 'B.R. Ambedkar'),
            ('D', 'M.N. Roy')
           ) as v(label, option_text)
 where q.question_hash = '2adf1aff0ce8752289ea70bca60477fe'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Discovery of India'' and ''Glimpses of World History''?',
    'Jawaharlal Nehru wrote The Discovery of India and Glimpses of World History while imprisoned during the Second World War.',
    'medium',
    'Standard Reference',
    null,
    '64efa54fc1abbb97dc4533ddd703f66e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '64efa54fc1abbb97dc4533ddd703f66e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.R. Ambedkar'),
            ('B', 'V.D. Savarkar'),
            ('C', 'K. M. Munshi'),
            ('D', 'Jawaharlal Nehru')
           ) as v(label, option_text)
 where q.question_hash = '64efa54fc1abbb97dc4533ddd703f66e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the autobiography ''My Experiments with Truth''?',
    'Mahatma Gandhi wrote My Experiments with Truth, published in 1927 in two volumes as an autobiography of his experiments with non-violent resistance.',
    'easy',
    'Standard Reference',
    null,
    'b39c1acf407d482a2751bfe5c3f5346a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b39c1acf407d482a2751bfe5c3f5346a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jawaharlal Nehru'),
            ('B', 'Lala Lajpat Rai'),
            ('C', 'Sardar Vallabhbhai Patel'),
            ('D', 'Mahatma Gandhi')
           ) as v(label, option_text)
 where q.question_hash = 'b39c1acf407d482a2751bfe5c3f5346a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Story of My Experiments with Truth'' in English?',
    'Mahatma Gandhi wrote the autobiography in Gujarati, which was translated into English by Mahadev Desai and later edited by C. K. Ogden.',
    'hard',
    'Standard Reference',
    null,
    '36e723cb3babcfa83e2a78452467e156'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36e723cb3babcfa83e2a78452467e156'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahatma Gandhi'),
            ('B', 'M. K. Gandhi'),
            ('C', 'B.R. Ambedkar'),
            ('D', 'Vinoba Bhave')
           ) as v(label, option_text)
 where q.question_hash = '36e723cb3babcfa83e2a78452467e156'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The book ''A Nation in Making'' was written by:',
    'Surendranath Banerjee wrote A Nation in Making, an account of the Indian national movement published in 1917.',
    'hard',
    'Standard Reference',
    null,
    '4162589a3b3274cb62838f8f18a67c4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4162589a3b3274cb62838f8f18a67c4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bipin Chandra Pal'),
            ('B', 'Surendranath Banerjee'),
            ('C', 'Dadabhai Naoroji'),
            ('D', 'Gopal Krishna Gokhale')
           ) as v(label, option_text)
 where q.question_hash = '4162589a3b3274cb62838f8f18a67c4e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Poverty and Un-British Rule in India''?',
    'Dadabhai Naoroji wrote Poverty and Un-British Rule in India, first published in 1901, a pioneering critique of the drain theory.',
    'medium',
    'Standard Reference',
    null,
    'cdedb35b69ff8f59ed838144775ee114'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cdedb35b69ff8f59ed838144775ee114'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D. Gopalakrishnan'),
            ('B', 'M.N. Roy'),
            ('C', 'Dadabhai Naoroji'),
            ('D', 'R.C. Dutt')
           ) as v(label, option_text)
 where q.question_hash = 'cdedb35b69ff8f59ed838144775ee114'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which book by R.C. Dutt is known as the economic history of British India?',
    'R.C. Dutt''s The Economic History of India under British Rule (1902) documented the drain of wealth from India.',
    'hard',
    'Standard Reference',
    null,
    'e1cfa59d7803d7ece5a507de28f27902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e1cfa59d7803d7ece5a507de28f27902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Economic History of British India'),
            ('B', 'India in the 19th Century'),
            ('C', 'The Economic History of India'),
            ('D', 'A Short History of British India')
           ) as v(label, option_text)
 where q.question_hash = 'e1cfa59d7803d7ece5a507de28f27902'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Gandhiyan era'' historian who wrote ''Indian Struggle for Independence'' was:',
    'Bipan Chandra''s Indian Struggle for Independence (1988) is the standard scholarly account of the national movement from 1857 to 1947.',
    'medium',
    'Standard Reference',
    null,
    '0dab22f0b78dfeb80cc545839d789676'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0dab22f0b78dfeb80cc545839d789676'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bipan Chandra'),
            ('B', 'A.R. Desai'),
            ('C', 'S. Radhakrishnan'),
            ('D', 'R.C. Dutt')
           ) as v(label, option_text)
 where q.question_hash = '0dab22f0b78dfeb80cc545839d789676'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Essays in Economic History of India''?',
    'D.D. Kosambi wrote Essays in Economic History of India, published in 1975.',
    'hard',
    'Standard Reference',
    null,
    'd5e6b365f8a8f126139ab7fe08913707'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd5e6b365f8a8f126139ab7fe08913707'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.C. Dutt'),
            ('B', 'D.D. Kosambi'),
            ('C', 'R.S. Sharma'),
            ('D', 'B.N. Sastri')
           ) as v(label, option_text)
 where q.question_hash = 'd5e6b365f8a8f126139ab7fe08913707'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Indian Parliament'' book by S.C. Dutt was written by:',
    'S.C. Dutt wrote Indian Parliament, a standard study of the working of the Indian legislature.',
    'hard',
    'Standard Reference',
    null,
    'c475adf31c83745232c5964ed109ae8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c475adf31c83745232c5964ed109ae8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D.D. Kosambi'),
            ('B', 'B.R. Ambedkar'),
            ('C', 'M.N. Roy'),
            ('D', 'S.C. Dutt')
           ) as v(label, option_text)
 where q.question_hash = 'c475adf31c83745232c5964ed109ae8f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which Indian author won the Sahitya Akademi Award for the novel ''Tughlaq''?',
    'Girish Karnad''s play Tughlaq, published in 1964, won the Sahitya Akademi Award in 1965.',
    'hard',
    'Standard Reference',
    null,
    '8b0d0fb3b6b23dab220e09cbfcf0d832'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b0d0fb3b6b23dab220e09cbfcf0d832'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Girish Karnad'),
            ('B', 'Chandrashekhara Kambara'),
            ('C', 'Habib Tanvir'),
            ('D', 'Utpal Dutt')
           ) as v(label, option_text)
 where q.question_hash = '8b0d0fb3b6b23dab220e09cbfcf0d832'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the novel ''A Bend in the River''?',
    'V.S. Naipaul''s A Bend in the River (1977) follows a dislocated Indian man in an unnamed African country.',
    'medium',
    'Standard Reference',
    null,
    '7425877af6bfe265b57bf519396a77f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7425877af6bfe265b57bf519396a77f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Salman Rushdie'),
            ('B', 'R.K. Narayan'),
            ('C', 'Rohinton Mistry'),
            ('D', 'V.S. Naipaul')
           ) as v(label, option_text)
 where q.question_hash = '7425877af6bfe265b57bf519396a77f8'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who received the 2023 International Booker Prize for the novel ''Time Shelter''?',
    'Georgi Gospodinov, the Bulgarian author, won the 2023 International Booker Prize for Time Shelter, translated by Angela Rodel.',
    'medium',
    'Standard Reference',
    null,
    '157af98f5802cf69c9230deae715783a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '157af98f5802cf69c9230deae715783a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Han Kang'),
            ('B', 'Paul Lynch'),
            ('C', 'Georgi Gospodinov'),
            ('D', 'Elif Batuman')
           ) as v(label, option_text)
 where q.question_hash = '157af98f5802cf69c9230deae715783a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Nehru: A Contemporary''s Estimate'' was written by:',
    'Nehru wrote the essay ''A Contemporary''s Estimate'' about Mahatma Gandhi in 1944, while in prison.',
    'hard',
    'Standard Reference',
    null,
    '2ba3524b6fdff9a5a11251e8911ec4d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2ba3524b6fdff9a5a11251e8911ec4d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.R. Ambedkar'),
            ('B', 'Jawaharlal Nehru'),
            ('C', 'C. Rajagopalachari'),
            ('D', 'Gandhi')
           ) as v(label, option_text)
 where q.question_hash = '2ba3524b6fdff9a5a11251e8911ec4d6'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Dandi March'' and ''Quit India'' are chronicled in which well-known work?',
    'Jawaharlal Nehru''s India Wins Freedom (1946) is his account of the national movement, including the Dandi March and the Quit India resolution.',
    'medium',
    'Standard Reference',
    null,
    '2fd4c6d0638a014ceabd5af05bd4361a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2fd4c6d0638a014ceabd5af05bd4361a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Discovery of India'),
            ('B', 'India Wins Freedom'),
            ('C', 'The Indian Struggle'),
            ('D', 'My Autobiography')
           ) as v(label, option_text)
 where q.question_hash = '2fd4c6d0638a014ceabd5af05bd4361a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the autobiography ''The Story of My Life'' about the Indian national movement?',
    'C. Rajagopalachari wrote The Story of My Life, an autobiography of his role in the freedom struggle.',
    'hard',
    'Standard Reference',
    null,
    'd200031b4625fb646a98304aff437e23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd200031b4625fb646a98304aff437e23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. Santhanam'),
            ('B', 'G. Ramachandran'),
            ('C', 'C. Rajagopalachari'),
            ('D', 'V.K. Krishna Menon')
           ) as v(label, option_text)
 where q.question_hash = 'd200031b4625fb646a98304aff437e23'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who is the author of ''A History of Modern India'' (Oxford History of India series)?',
    'Bipan Chandra was among the contributors to the New Oxford History of India series, including volumes on modern India.',
    'hard',
    'Standard Reference',
    null,
    '8cf82e5cb49deb39c9896de1ea76eb45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8cf82e5cb49deb39c9896de1ea76eb45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bipan Chandra'),
            ('B', 'D.N. Jha'),
            ('C', 'A.L. Basham'),
            ('D', 'R.C. Majumdar')
           ) as v(label, option_text)
 where q.question_hash = '8cf82e5cb49deb39c9896de1ea76eb45'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The book ''Wasted Entitlements'' on India''s democracy is written by:',
    'Rajani Kothari wrote Wasted Entitlements: The Problem of Social Priorities in India, a study of Indian democracy.',
    'hard',
    'Standard Reference',
    null,
    '337a81f26ab7390ddd92de90e3153c9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '337a81f26ab7390ddd92de90e3153c9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'T.N. Panchanekar'),
            ('B', 'A.G. Noorani'),
            ('C', 'K.G. Subramanyan'),
            ('D', 'Rajani Kothari')
           ) as v(label, option_text)
 where q.question_hash = '337a81f26ab7390ddd92de90e3153c9e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''An Introduction to Indian Art'' and ''Indian Art and Culture''?',
    'Niharranjan Ray, a scholar of Indian art, wrote Indian Art and Culture and An Introduction to Indian Art.',
    'medium',
    'Standard Reference',
    null,
    '70eb6fe60adb8777366a871ad509c23d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '70eb6fe60adb8777366a871ad509c23d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A.L. Basham'),
            ('B', 'R.C. Majumdar'),
            ('C', 'Niharranjan Ray'),
            ('D', 'K.C. Aryan')
           ) as v(label, option_text)
 where q.question_hash = '70eb6fe60adb8777366a871ad509c23d'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which Indian author won the 2018 Jnanpith Award for ''Garbhini''?',
    'Chandrashekhara Kambara received the 2018 Jnanpith Award for Garbhini, a collection of poems in the Kannada language.',
    'hard',
    'Standard Reference',
    null,
    '93e50424f0ddded968839767cccaea73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93e50424f0ddded968839767cccaea73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandrashekhara Kambara'),
            ('B', 'Jagadguru Rambhadracharya'),
            ('C', 'Vijay Tendulkar'),
            ('D', 'Amitav Ghosh')
           ) as v(label, option_text)
 where q.question_hash = '93e50424f0ddded968839767cccaea73'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Goda My Father'' and ''The Story of My Experiments with Truth'' is by whom?',
    'K.A. Abbas wrote Goda My Father, an account of Mahatma Gandhi; My Experiments with Truth is Mahatma Gandhi''s autobiography.',
    'medium',
    'Standard Reference',
    null,
    'fee60bb0d6f753ff824ed567d00a6646'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fee60bb0d6f753ff824ed567d00a6646'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. L. Bhatia'),
            ('B', 'K. A. Abbas'),
            ('C', 'Mulk Raj Anand'),
            ('D', 'R.K. Narayan')
           ) as v(label, option_text)
 where q.question_hash = 'fee60bb0d6f753ff824ed567d00a6646'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The first Indian to win the Booker Prize was:',
    'A.K. Ramanujan won the Booker Prize in 1997 for The Great Indian Novel, the first Indian to receive it.',
    'medium',
    'Standard Reference',
    null,
    'f8774d9494fa55edf00d2773e61e46a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f8774d9494fa55edf00d2773e61e46a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'V.S. Naipaul'),
            ('B', 'Arun Joshi'),
            ('C', 'R.K. Narayan'),
            ('D', 'A.K. Ramanujan')
           ) as v(label, option_text)
 where q.question_hash = 'f8774d9494fa55edf00d2773e61e46a2'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Great Indian Novel'' that won the Booker Prize in 1997?',
    'A.K. Ramanujan wrote The Great Indian Novel, which won the 1997 Booker Prize.',
    'medium',
    'Standard Reference',
    null,
    'a4b63339c0c14ab08009416cb17efb8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a4b63339c0c14ab08009416cb17efb8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vikram Seth'),
            ('B', 'Arundhati Roy'),
            ('C', 'Kiran Desai'),
            ('D', 'A.K. Ramanujan')
           ) as v(label, option_text)
 where q.question_hash = 'a4b63339c0c14ab08009416cb17efb8f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Sea of Poppies''?',
    'Amitav Ghosh''s Sea of Poppies, the first of the Ibis trilogy, won the Commonwealth Writers'' Prize for Best Book in 2009.',
    'medium',
    'Standard Reference',
    null,
    'e3bc443eba91699659aff1e20cf7c7a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e3bc443eba91699659aff1e20cf7c7a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anita Desai'),
            ('B', 'Amitav Ghosh'),
            ('C', 'Vikram Seth'),
            ('D', 'Rohinton Mistry')
           ) as v(label, option_text)
 where q.question_hash = 'e3bc443eba91699659aff1e20cf7c7a7'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Invisible Man'' and ''The House of Mango Street'' are works of:',
    'Invisible Man is by Ralph Ellison and The House of Mango Street by Sandra Cisneros, both famous twentieth-century American works.',
    'medium',
    'Standard Reference',
    null,
    '9248ba94e7fdfe81f1e4d95a8f63016c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9248ba94e7fdfe81f1e4d95a8f63016c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ralph Ellison and Sandra Cisneros'),
            ('B', 'Vikram Seth and Arundhati Roy'),
            ('C', 'Amitav Ghosh and Jhumpa Lahiri'),
            ('D', 'R. K. Narayan and Sandra Cisneros')
           ) as v(label, option_text)
 where q.question_hash = '9248ba94e7fdfe81f1e4d95a8f63016c'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Train to Pakistan'' and ''Clear Light of Day''?',
    'Khushwant Singh wrote Train to Pakistan and Clear Light of Day, both set against the partition of 1947.',
    'medium',
    'Standard Reference',
    null,
    '1b15e950bd4e275b6130f60e87090fef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1b15e950bd4e275b6130f60e87090fef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nissim Ezekiel'),
            ('B', 'Amit Chaudhuri'),
            ('C', 'Khushwant Singh'),
            ('D', 'Mulk Raj Anand')
           ) as v(label, option_text)
 where q.question_hash = '1b15e950bd4e275b6130f60e87090fef'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Sahitya Akademi Award for the Assamese play ''Singhabahu'' went to:',
    'Birendra Kumar Bhattacharya won the Sahitya Akademi Award for his Assamese play Singhabahu.',
    'hard',
    'Standard Reference',
    null,
    'afe3b9cf6168d94523953c81986c4a51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'afe3b9cf6168d94523953c81986c4a51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nabaneeta Dev Sen'),
            ('B', 'Mamoni Raisom Goswami'),
            ('C', 'Birendra Kumar Bhattacharya'),
            ('D', 'Indira Goswami')
           ) as v(label, option_text)
 where q.question_hash = 'afe3b9cf6168d94523953c81986c4a51'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which writer wrote ''Panchatantra'' stories in Sanskrit?',
    'Vishnu Sharma wrote the Panchatantra, a collection of animal fables framed as lessons for kings.',
    'easy',
    'Standard Reference',
    null,
    '60b6a20d11f99f455c40eac31a56c684'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '60b6a20d11f99f455c40eac31a56c684'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhanmahlal Gautam'),
            ('B', 'Bharatendu Harishchandra'),
            ('C', 'Vallathol Narayana Menon'),
            ('D', 'Vishnu Sharma')
           ) as v(label, option_text)
 where q.question_hash = '60b6a20d11f99f455c40eac31a56c684'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Hitopadesha'' in Sanskrit?',
    'The Hitopadesha, a collection of fables in verse, was written by Vishnu Sharma, who also wrote the Panchatantra.',
    'medium',
    'Standard Reference',
    null,
    '5ef830add4029cc2884bb1b02946067e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ef830add4029cc2884bb1b02946067e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vishnu Sharma'),
            ('B', 'Narsh Mehta'),
            ('C', 'Vallathol Narayana Menon'),
            ('D', 'Kumaran Asan')
           ) as v(label, option_text)
 where q.question_hash = '5ef830add4029cc2884bb1b02946067e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Ayyappapanikayam'' was written by:',
    'Vallathol Narayana Menon wrote the Ayyappapanikayam, a Manipuri retelling of the story of Ayyappa.',
    'hard',
    'Standard Reference',
    null,
    '8c09092a71d02b39d6050c40151e2019'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8c09092a71d02b39d6050c40151e2019'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kumaran Asan'),
            ('B', 'Vallathol Narayana Menon'),
            ('C', 'Uroob'),
            ('D', 'C. V. Balakrishnan')
           ) as v(label, option_text)
 where q.question_hash = '8c09092a71d02b39d6050c40151e2019'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the famous Bengali novel ''Aparajito''?',
    'Rabindranath Tagore wrote Aparajito, the second part of his trilogy, which won the Nobel Prize in Literature for his collected works.',
    'easy',
    'Standard Reference',
    null,
    '0efc465e50ee4db5c92984754703e656'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0efc465e50ee4db5c92984754703e656'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Satyajit Ray'),
            ('B', 'Bankim Chandra Chattopadhyay'),
            ('C', 'Bibhutibhushan Bandyopadhyay'),
            ('D', 'Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '0efc465e50ee4db5c92984754703e656'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Durgeshnandini'', the first Bengali novel in the modern sense?',
    'Bankim Chandra Chattopadhyay wrote Durgeshnandini (1865), widely regarded as the first modern Bengali novel.',
    'medium',
    'Standard Reference',
    null,
    '2922a555d90f1a2f8ae1764971724321'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2922a555d90f1a2f8ae1764971724321'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bankim Chandra Chattopadhyay'),
            ('B', 'Rabindranath Tagore'),
            ('C', 'Sarat Chandra Chattopadhyay'),
            ('D', 'Bibhutibhushan Bandyopadhyay')
           ) as v(label, option_text)
 where q.question_hash = '2922a555d90f1a2f8ae1764971724321'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Odia novel ''Godaa'' was written by:',
    'Gopinath Mohanty wrote Godaa, which won the Sahitya Akademi Award for Odia and was translated into English by Elliot Silverberg.',
    'hard',
    'Standard Reference',
    null,
    'c81ede3fb9076f0e878c6b6b39e8acac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c81ede3fb9076f0e878c6b6b39e8acac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manoj Das'),
            ('B', 'Ramchandra Bandyopadhyay'),
            ('C', 'Gopinath Mohanty'),
            ('D', 'Pratibha Ray')
           ) as v(label, option_text)
 where q.question_hash = 'c81ede3fb9076f0e878c6b6b39e8acac'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Nagen Anna'' and ''Aadi Homa''?',
    'Thakazhi Sivasankara Pillai, a leading Malayalam novelist, wrote Nagen Anna and Aadi Homa.',
    'hard',
    'Standard Reference',
    null,
    'dc4eb6d2d23d672fb4e06859ea451a78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc4eb6d2d23d672fb4e06859ea451a78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uroob'),
            ('B', 'Thakazhi Sivasankara Pillai'),
            ('C', 'Vaikom Muhammad Basheer'),
            ('D', 'Akbar Kakkattil')
           ) as v(label, option_text)
 where q.question_hash = 'dc4eb6d2d23d672fb4e06859ea451a78'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Marathi play ''Kichaka-Vadham'' was written by:',
    'Krishnaji Prabhakar Khadilkar wrote Kichaka-Vadham (1907), a landmark Marathi play of the Indian theatre.',
    'hard',
    'Standard Reference',
    null,
    'e8cfe6612d81a0a2414fadf2ff05d5b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e8cfe6612d81a0a2414fadf2ff05d5b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sane Guruji'),
            ('B', 'Bhalchandra Nemade'),
            ('C', 'Krishnaji Prabhakar Khadilkar'),
            ('D', 'Annasaheb Kirloskar')
           ) as v(label, option_text)
 where q.question_hash = 'e8cfe6612d81a0a2414fadf2ff05d5b4'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Nagananda'', the first play written in Sanskrit?',
    'Dharmasakshi, a court poet of Harsha, wrote Nagananda, the earliest known Sanskrit play in the style of Bhavabhuti.',
    'hard',
    'Standard Reference',
    null,
    '68b1658ddce002bc3233abd357224739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '68b1658ddce002bc3233abd357224739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhavabhuti'),
            ('B', 'Kalidasa'),
            ('C', 'Harshavardhana'),
            ('D', 'Dharmasakshi')
           ) as v(label, option_text)
 where q.question_hash = '68b1658ddce002bc3233abd357224739'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which Indian economist wrote ''Planning and Development in India''?',
    'P.C. Mahalanobis wrote Planning and Development in India, the basis of the Second Five Year Plan.',
    'medium',
    'Standard Reference',
    null,
    '0865f3178f4c1613439a6ce39b8d8592'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0865f3178f4c1613439a6ce39b8d8592'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Montek Singh Ahluwalia'),
            ('B', 'P.C. Mahalanobis'),
            ('C', 'I.G. Patel'),
            ('D', 'V. Kurien')
           ) as v(label, option_text)
 where q.question_hash = '0865f3178f4c1613439a6ce39b8d8592'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the novel ''Bombay Talkies'' and ''Malabar Stories''?',
    'Amitav Ghosh wrote Bombay Talkies and Malabar Stories, both collections of short stories.',
    'medium',
    'Standard Reference',
    null,
    '4e9dd126d7beaa9520430e2b837c7c4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e9dd126d7beaa9520430e2b837c7c4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amitav Ghosh'),
            ('B', 'Rohinton Mistry'),
            ('C', 'Vikram Seth'),
            ('D', 'Anita Desai')
           ) as v(label, option_text)
 where q.question_hash = '4e9dd126d7beaa9520430e2b837c7c4d'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which Italian writer influenced Indian modernism and taught English literature in Calcutta?',
    'D.H. Lawrence taught at the University of Calcutta from 1922 to 1925 and influenced Rabindranath Tagore and Indian English writers.',
    'hard',
    'Standard Reference',
    null,
    '2c4fa14b82c012348b62bec2c9b749d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c4fa14b82c012348b62bec2c9b749d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'T.S. Eliot'),
            ('B', 'Maria Edgeworth'),
            ('C', 'D.H. Lawrence'),
            ('D', 'Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '2c4fa14b82c012348b62bec2c9b749d8'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''A Suitable Boy'', a novel set in post-Independence India?',
    'Vikram Seth''s A Suitable Boy (1993) follows the political events leading to the first general election in independent India.',
    'medium',
    'Standard Reference',
    null,
    '9e8c86f0454a87da5ced3170cbb844ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9e8c86f0454a87da5ced3170cbb844ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Salman Rushdie'),
            ('B', 'Vikram Seth'),
            ('C', 'Amitav Ghosh'),
            ('D', 'Arundhati Roy')
           ) as v(label, option_text)
 where q.question_hash = '9e8c86f0454a87da5ced3170cbb844ca'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Booker Prize-winning novel ''The God of Small Things'' was written by:',
    'Arundhati Roy won the 1997 Booker Prize for The God of Small Things, set in Kerala.',
    'easy',
    'Standard Reference',
    null,
    '6989c3e82270ed8a9d820167070c6c08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6989c3e82270ed8a9d820167070c6c08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arundhati Roy'),
            ('B', 'Kiran Desai'),
            ('C', 'Aishwarya Thomas'),
            ('D', 'Salman Rushdie')
           ) as v(label, option_text)
 where q.question_hash = '6989c3e82270ed8a9d820167070c6c08'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Ghat'' painting and the ''Chitrakala'' of Karnataka refer to which folk tradition?',
    'Chitrakala is the folk mural tradition of coastal Karnataka, painted on walls of houses with themes from the epics and local folklore.',
    'hard',
    'Standard Reference',
    null,
    '922429d6d3e79f040c8f59ef6089e6a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '922429d6d3e79f040c8f59ef6089e6a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Tanjore painting'),
            ('B', 'Bengal kantha'),
            ('C', 'Rajasthani miniatures'),
            ('D', 'Western Indian patachitra')
           ) as v(label, option_text)
 where q.question_hash = '922429d6d3e79f040c8f59ef6089e6a0'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Bathik'' or ''Kalamkari'' of Andhra Pradesh and the ''Bandhani'' of Gujarat are examples of:',
    'Bandhani is a tie-and-dye technique of Gujarat while Kalamkari is a hand-painted or block-printed cotton tradition of Andhra Pradesh.',
    'easy',
    'Standard Reference',
    null,
    '86adaaf136df72fbd6a09dec7fd594bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86adaaf136df72fbd6a09dec7fd594bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Stone carving'),
            ('B', 'Wood carving'),
            ('C', 'Metal craft'),
            ('D', 'Textile printing and tying traditions')
           ) as v(label, option_text)
 where q.question_hash = '86adaaf136df72fbd6a09dec7fd594bb'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kanjeevaram'' silk of Tamil Nadu is known for its:',
    'Kanjeevaram saris are distinguished by their rich colours, fine zari and bold contrasting borders, and a body of heavy silk.',
    'medium',
    'Standard Reference',
    null,
    '766886a79d735c224c4fdde96b308e7f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '766886a79d735c224c4fdde96b308e7f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Checked patterns with contrasting borders'),
            ('B', 'Plain white weave'),
            ('C', 'Gold thread embroidery only'),
            ('D', 'Cotton blend')
           ) as v(label, option_text)
 where q.question_hash = '766886a79d735c224c4fdde96b308e7f'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Bomkai'' sari and the ''Khandua'' fabric are associated with:',
    'Bomkai saris and Khandua sarees are famous Odisha weaves, with Khandua worn during the Rath Yatra of Puri.',
    'medium',
    'Standard Reference',
    null,
    '82eaf3e002833e1829edbcda87702c71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '82eaf3e002833e1829edbcda87702c71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Odisha'),
            ('C', 'Tamil Nadu'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '82eaf3e002833e1829edbcda87702c71'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Phulkari'' embroidery of Punjab is characterised by:',
    'Phulkari, literally ''flower garden'', is a counted-thread embroidery of Punjab worked with long stitches in geometric and floral patterns.',
    'medium',
    'Standard Reference',
    null,
    '729da477e6145b07bdfb1b52d525a76f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '729da477e6145b07bdfb1b52d525a76f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Beadwork of the tribal belt'),
            ('B', 'Floral motifs worked in silk'),
            ('C', 'Counted-thread geometric embroidery with long stitches'),
            ('D', 'Block printing with natural dyes')
           ) as v(label, option_text)
 where q.question_hash = '729da477e6145b07bdfb1b52d525a76f'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Toda'' embroidery of the Nilgiris is notable for its:',
    'Toda embroidery of the Nilgiri hills uses black and white geometric motifs on a red or black base, with characteristic black squares and stripes.',
    'hard',
    'Standard Reference',
    null,
    '3198e12402624dcb84154ce09b3446a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3198e12402624dcb84154ce09b3446a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Floral crewel work'),
            ('B', 'Mirror work'),
            ('C', 'Black and white geometric motifs'),
            ('D', 'Red silk with gold zari')
           ) as v(label, option_text)
 where q.question_hash = '3198e12402624dcb84154ce09b3446a9'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Chamba rumal'' of Himachal Pradesh is an example of:',
    'Chamba rumal is a double-sided embroidered covering of Himachal Pradesh, worked in do-rukha stitch with elaborate multicoloured designs.',
    'medium',
    'Standard Reference',
    null,
    'ecec9d3380a23917f92e9a190982ae19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ecec9d3380a23917f92e9a190982ae19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wood carving'),
            ('B', 'Silver jewellery'),
            ('C', 'Tile work'),
            ('D', 'Embroidery')
           ) as v(label, option_text)
 where q.question_hash = 'ecec9d3380a23917f92e9a190982ae19'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Pattachitra'' of Odisha and Bengal traditionally used as a curtain for:',
    'Pattachitra cloth scrolls, painted in the tradition of the Jagannath temple at Puri, were traditionally used as temple curtains.',
    'medium',
    'Standard Reference',
    null,
    'c432a1e4fcee31216211c8092e7608ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c432a1e4fcee31216211c8092e7608ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mahabodhi temple'),
            ('B', 'The Jagannath temple at Puri'),
            ('C', 'The Sun Temple at Konark'),
            ('D', 'The Lingaraja temple')
           ) as v(label, option_text)
 where q.question_hash = 'c432a1e4fcee31216211c8092e7608ea'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Sheesha'' or glass-bead embroidery of Rajasthan is associated with:',
    'Sheesha or shisha embroidery of the Kutch region uses tiny glass mirrors set on elaborately embroidered fabric.',
    'hard',
    'Standard Reference',
    null,
    'd3cae3a13a1ab20e2ba535ef70961c26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd3cae3a13a1ab20e2ba535ef70961c26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kutch'),
            ('B', 'Jaipur'),
            ('C', 'Udaipur'),
            ('D', 'Jodhpur')
           ) as v(label, option_text)
 where q.question_hash = 'd3cae3a13a1ab20e2ba535ef70961c26'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Cane'' furniture of Tripura and Assam is made from the cane of:',
    'Cane furniture in the North-East, especially Tripura and Assam, is made from the strips of the Calamus palm.',
    'hard',
    'Standard Reference',
    null,
    '5ea93c24b797cd881e7fc28d571fcef2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ea93c24b797cd881e7fc28d571fcef2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Calamus (cane palm)'),
            ('B', 'Rattan'),
            ('C', 'Areca palm'),
            ('D', 'Bamboo')
           ) as v(label, option_text)
 where q.question_hash = '5ea93c24b797cd881e7fc28d571fcef2'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Toda'' community of the Nilgiris is well known for:',
    'The Toda community of the Nilgiri hills is famous for its distinctive Toda embroidery and for pashmina shawls woven from the wool of the goats of the region.',
    'medium',
    'Standard Reference',
    null,
    'd0e68b4f9690d41cf20d56c92d6f356c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0e68b4f9690d41cf20d56c92d6f356c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wood carving'),
            ('B', 'Embroidery and pashmina woollens'),
            ('C', 'Terracotta pottery'),
            ('D', 'Silk weaving')
           ) as v(label, option_text)
 where q.question_hash = 'd0e68b4f9690d41cf20d56c92d6f356c'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kumbal Festival'' of the tribal belt of Rajasthan is associated with:',
    'The Garasia tribe of Rajasthan celebrates the Kumbal festival, a month-long pilgrimage to the Garh Ganesh temple near Karauli.',
    'hard',
    'Standard Reference',
    null,
    '1fd03945e8a5d3757682f55e4b09df42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1fd03945e8a5d3757682f55e4b09df42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meena tribe'),
            ('B', 'Bishnoi tribe'),
            ('C', 'Garasia tribe'),
            ('D', 'Bhil tribe')
           ) as v(label, option_text)
 where q.question_hash = '1fd03945e8a5d3757682f55e4b09df42'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Bishnoi'' of Rajasthan are known for their:',
    'The Bishnoi community of Rajasthan is famous for its reverence for trees and wildlife; the emblem of the Wildlife Institute of India is inspired by a Bishnoi rule.',
    'medium',
    'Standard Reference',
    null,
    'e1ca9b63c02f19e488927f96c1b3a9b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e1ca9b63c02f19e488927f96c1b3a9b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Silk weaving'),
            ('B', 'Bronze casting'),
            ('C', 'Folk theatre'),
            ('D', 'Protection of trees and wildlife')
           ) as v(label, option_text)
 where q.question_hash = 'e1ca9b63c02f19e488927f96c1b3a9b2'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Jhum'' and the ''Bamboo dance'' of the North-East are associated with:',
    'The bamboo dance and the Cheraw dance of the Mizos and the Naga dances are the best known folk traditions of the North-East.',
    'medium',
    'Standard Reference',
    null,
    '04f230a33bde0646fddf76ee6df7b72f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04f230a33bde0646fddf76ee6df7b72f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Naga and Mizo communities'),
            ('B', 'The Bhils'),
            ('C', 'The Santhals'),
            ('D', 'The Monpa tribe')
           ) as v(label, option_text)
 where q.question_hash = '04f230a33bde0646fddf76ee6df7b72f'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Kathakali'' make-up of Kerala uses a chutti of:',
    'Kathakali actors apply a white chutti made of rice paste and lime over the face, with elaborate coloured make-up for the characters.',
    'hard',
    'Standard Reference',
    null,
    '0c42ea7ca72d53f6f19b1051b2c7370e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c42ea7ca72d53f6f19b1051b2c7370e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cloves and ash'),
            ('B', 'Rice paste and lime'),
            ('C', 'Red ochre and sandalwood'),
            ('D', 'Rice flour and turmeric')
           ) as v(label, option_text)
 where q.question_hash = '0c42ea7ca72d53f6f19b1051b2c7370e'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    'The ''Thanjavur'' painting is famous for its use of:',
    'Thanjavur painting of Tamil Nadu uses a gesso base and gold foil on teak panels, and is also called Tanjore painting.',
    'medium',
    'Standard Reference',
    null,
    'd7cf590c1e7fd255e987c9b0e4d9495d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7cf590c1e7fd255e987c9b0e4d9495d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Charcoal drawing on paper'),
            ('B', 'Natural indigo on cotton'),
            ('C', 'Marble inlay'),
            ('D', 'Gold foil on wooden panels')
           ) as v(label, option_text)
 where q.question_hash = 'd7cf590c1e7fd255e987c9b0e4d9495d'
on conflict (question_id, label) do nothing;

-- art_culture | handicrafts-and-folk | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'handicrafts-and-folk'),
    '''Pattachitra'' painting of West Bengal is also known as:',
    'The West Bengal variant of the Pattachitra scroll painting tradition is called Chitrakala.',
    'hard',
    'Standard Reference',
    null,
    'e9e78a0e7019b7a07fe55e652c4ddb81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e9e78a0e7019b7a07fe55e652c4ddb81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Warli'),
            ('B', 'Kalighat painting'),
            ('C', 'Chitrakala'),
            ('D', 'Madhubani')
           ) as v(label, option_text)
 where q.question_hash = 'e9e78a0e7019b7a07fe55e652c4ddb81'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kumbh Mela'' at Nashik is held on the banks of:',
    'The Nashik Kumbh, also called the Nashik-Trimbakeshwar Simhastha, is held on the banks of the Godavari.',
    'easy',
    'Standard Reference',
    null,
    'a8742e707348d37fc064356b63033bb8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8742e707348d37fc064356b63033bb8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yamuna'),
            ('B', 'Narmada'),
            ('C', 'Godavari'),
            ('D', 'Ganga')
           ) as v(label, option_text)
 where q.question_hash = 'a8742e707348d37fc064356b63033bb8'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Pushkar Mela'' of Rajasthan is held every:',
    'The Pushkar Mela, held at Pushkar in Kartika every twelve years, is one of the most important camel and cattle fairs of the world.',
    'easy',
    'Standard Reference',
    null,
    'e82cbdcae44cebadcd1f97b0726c3348'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e82cbdcae44cebadcd1f97b0726c3348'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yearly in Kartik'),
            ('B', 'Once in twelve years'),
            ('C', 'Once in six years'),
            ('D', 'Every five years')
           ) as v(label, option_text)
 where q.question_hash = 'e82cbdcae44cebadcd1f97b0726c3348'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Mahamaya'' temple festival at Gaya is held in:',
    'The Mahamaya festival at Gaya, in Chaitra month, attracts pilgrims from all over the country for ancestral rites.',
    'hard',
    'Standard Reference',
    null,
    'ebfa114b20d22634e2d7ae2ec4c639cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ebfa114b20d22634e2d7ae2ec4c639cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chaitra'),
            ('B', 'Kartika'),
            ('C', 'Magha'),
            ('D', 'Ashadha')
           ) as v(label, option_text)
 where q.question_hash = 'ebfa114b20d22634e2d7ae2ec4c639cb'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Rath Yatra'' of Lord Jagannath is held at:',
    'The Rath Yatra, in which the chariots of Jagannath, Balabhadra and Subhadra are pulled through Puri, is held in Ashadha and Kartika.',
    'easy',
    'Standard Reference',
    null,
    'cf1bf1669e30914b3e56e6d3901d3fd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf1bf1669e30914b3e56e6d3901d3fd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ayodhya'),
            ('B', 'Kashi'),
            ('C', 'Mathura'),
            ('D', 'Puri')
           ) as v(label, option_text)
 where q.question_hash = 'cf1bf1669e30914b3e56e6d3901d3fd3'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Hampi Utsav'' is an annual festival celebrated in:',
    'The Hampi Utsav is a cultural festival organised by the ASI at the Vijayanagara ruins in Karnataka every November.',
    'medium',
    'Standard Reference',
    null,
    'c23b552084d76d4b50c9a6ea5fb08f3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c23b552084d76d4b50c9a6ea5fb08f3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Tamil Nadu'),
            ('C', 'Telangana'),
            ('D', 'Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = 'c23b552084d76d4b50c9a6ea5fb08f3d'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Losar'' festival marks the:',
    'Losar, celebrated by the Tibetans, marks the beginning of the Tibetan new year, usually in February or March.',
    'medium',
    'Standard Reference',
    null,
    '6769209bb93f91a5f96c6c993c0c9602'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6769209bb93f91a5f96c6c993c0c9602'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil new year'),
            ('B', 'Islamic new year'),
            ('C', 'Tibetan new year'),
            ('D', 'Hindu new year')
           ) as v(label, option_text)
 where q.question_hash = '6769209bb93f91a5f96c6c993c0c9602'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Asalha Puja'' commemorates:',
    'Asalha Puja, observed on the full moon of Ashadha, commemorates the first sermon of the Buddha at Sarnath, Dhamma and the Noble Eightfold Path.',
    'medium',
    'Standard Reference',
    null,
    '1af5493ed2ad198d50785aea2d00a66a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1af5493ed2ad198d50785aea2d00a66a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The death of Buddha'),
            ('B', 'The Mahaparinirvana'),
            ('C', 'The birth of Buddha'),
            ('D', 'The first sermon of Buddha')
           ) as v(label, option_text)
 where q.question_hash = '1af5493ed2ad198d50785aea2d00a66a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Mahaparinirvana'' marks the death of:',
    'The Mahaparinirvana marks the passing away of the Buddha at Kushinagar, observed as the Nirvana of the Buddhist tradition.',
    'easy',
    'Standard Reference',
    null,
    'ed12041af11dbe16c18fdadc0e7bc6a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ed12041af11dbe16c18fdadc0e7bc6a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahavira'),
            ('B', 'Buddha'),
            ('C', 'Guru Nanak'),
            ('D', 'Kabir')
           ) as v(label, option_text)
 where q.question_hash = 'ed12041af11dbe16c18fdadc0e7bc6a5'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Paryushan'' and ''Mahavir Janma Kalyanak'' are festivals of:',
    'Paryushan is the principal Jain festival of the year, and Mahavir Janma Kalyanak marks the birth of Mahavira, the last tirthankara.',
    'medium',
    'Standard Reference',
    null,
    '14a5fb8aec4d730362c610000d7101e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '14a5fb8aec4d730362c610000d7101e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Buddhism'),
            ('B', 'Jainism'),
            ('C', 'Sikhism'),
            ('D', 'Zoroastrianism')
           ) as v(label, option_text)
 where q.question_hash = '14a5fb8aec4d730362c610000d7101e1'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Holi'' in Braj is celebrated with:',
    'Holi is celebrated with coloured water and dry colours thrown at one another, following the Holika Dahan bonfire the previous night.',
    'easy',
    'Standard Reference',
    null,
    '95dbda8b14c8f9ed6619de7f14a9c733'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '95dbda8b14c8f9ed6619de7f14a9c733'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Processions with chariots'),
            ('B', 'Fasting and kite flying'),
            ('C', 'Coloured water and dry colours'),
            ('D', 'Bonfires of sandalwood')
           ) as v(label, option_text)
 where q.question_hash = '95dbda8b14c8f9ed6619de7f14a9c733'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Sankranti'' or ''Pongal'' harvest festival is connected with the:',
    'The four-day harvest festival marks the end of the sun''s southward course and the beginning of its northward journey.',
    'medium',
    'Standard Reference',
    null,
    'a3db2a6d20422af961e702507ac8314e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a3db2a6d20422af961e702507ac8314e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Moon and the tides'),
            ('B', 'Rain and the monsoon'),
            ('C', 'River and the floods'),
            ('D', 'Sun god and the end of the winter season')
           ) as v(label, option_text)
 where q.question_hash = 'a3db2a6d20422af961e702507ac8314e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Hola Mohalla'' festival is celebrated by the:',
    'Hola Mohalla, created by Guru Gobind Singh, is a three-day festival of martial demonstrations held the day after Holi at the Nishan Sahib.',
    'medium',
    'Standard Reference',
    null,
    '41ea61af531ba9edf97f5c9982534836'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '41ea61af531ba9edf97f5c9982534836'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nishan Sahib and the Sikhs'),
            ('B', 'Sun temple priests'),
            ('C', 'Jain monks'),
            ('D', 'Buddhist lamas')
           ) as v(label, option_text)
 where q.question_hash = '41ea61af531ba9edf97f5c9982534836'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Vaisakhi'' is a harvest festival celebrated in:',
    'Vaisakhi marks the harvest of the spring crop in Punjab and also the foundation day of the Khalsa in 1699.',
    'easy',
    'Standard Reference',
    null,
    'c066af52abb466afd565275903cf0602'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c066af52abb466afd565275903cf0602'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Bengal'),
            ('C', 'Kerala'),
            ('D', 'Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'c066af52abb466afd565275903cf0602'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Gudi Padwa'' festival marks the:',
    'Gudi Padwa, the first day of the Chaitra month, marks the beginning of the Marathi and Maharashtrian new year.',
    'medium',
    'Standard Reference',
    null,
    '2fe7d492333effa2b946ea4436224b05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2fe7d492333effa2b946ea4436224b05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kashmir new year'),
            ('B', 'Kerala new year'),
            ('C', 'Maharashtra new year'),
            ('D', 'Tamil new year')
           ) as v(label, option_text)
 where q.question_hash = '2fe7d492333effa2b946ea4436224b05'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Bihu'' is celebrated in Assam to mark:',
    'Bihu, the Assamese new year festival, marks the arrival of spring and the beginning of the agricultural year.',
    'easy',
    'Standard Reference',
    null,
    'd3daa3b86a64a13f941cd38cea3f654e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd3daa3b86a64a13f941cd38cea3f654e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The death of a king'),
            ('B', 'The new year and the spring season'),
            ('C', 'The end of the monsoon'),
            ('D', 'The harvest of tea')
           ) as v(label, option_text)
 where q.question_hash = 'd3daa3b86a64a13f941cd38cea3f654e'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Chhau'' dance festival is held at:',
    'The Chhau festivals are held at Purulia in West Bengal, Seraikella in Jharkhand and Mayurbhanj in Odisha, with the Thrissur Pooram also presenting Chhau.',
    'hard',
    'Standard Reference',
    null,
    '29014b109e14f6afd66240f6f6b329a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '29014b109e14f6afd66240f6f6b329a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thrissur and Purulia'),
            ('B', 'Purulia in West Bengal'),
            ('C', 'Thrissur in Kerala'),
            ('D', 'Mathura in Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '29014b109e14f6afd66240f6f6b329a2'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Kambala'' festival of coastal Karnataka is associated with:',
    'Kambala is the traditional boat race held on the rivers of coastal Karnataka during the harvest season.',
    'medium',
    'Standard Reference',
    null,
    '924834b3798286edb27f16aa020915f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '924834b3798286edb27f16aa020915f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bull jumping'),
            ('B', 'Buffalo racing'),
            ('C', 'Boat races'),
            ('D', 'Cock fighting')
           ) as v(label, option_text)
 where q.question_hash = '924834b3798286edb27f16aa020915f6'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Thira'' is a festival of:',
    'Thira is the temple festival of the Malankara Syrian Christian community of Kerala.',
    'hard',
    'Standard Reference',
    null,
    '19088cc99bc9b9c8dd28f25fb0337d7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '19088cc99bc9b9c8dd28f25fb0337d7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Assam'),
            ('C', 'Bihar'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '19088cc99bc9b9c8dd28f25fb0337d7c'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Sangam Festival'' is celebrated in:',
    'The Tamil Nadu government organises the Sangam Festival every year to commemorate the Sangam age of Tamil literature.',
    'medium',
    'Standard Reference',
    null,
    'a7473907fb342878b04315b155ca1c5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a7473907fb342878b04315b155ca1c5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Kerala'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'a7473907fb342878b04315b155ca1c5a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Eid-e-Fitr'' is celebrated on the:',
    'Eid al-Fitr marks the end of the month of Ramadan and is celebrated on the first day of Shawwal.',
    'easy',
    'Standard Reference',
    null,
    'cc7751b28a6f83474ec662c96a36c4c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc7751b28a6f83474ec662c96a36c4c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10th of Dhu al-Hijjah'),
            ('B', '1st of Shawwal'),
            ('C', '12th of Rabi al-Awwal'),
            ('D', '27th of Rajab')
           ) as v(label, option_text)
 where q.question_hash = 'cc7751b28a6f83474ec662c96a36c4c7'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Milad-un-Nabi'' marks the birth anniversary of:',
    'Milad-un-Nabi, celebrated on 12 Rabi al-Awwal, commemorates the birth of the Prophet Muhammad.',
    'easy',
    'Standard Reference',
    null,
    '2b4cd0ee92870f842f3ba3bcc793843b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2b4cd0ee92870f842f3ba3bcc793843b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prophet Muhammad'),
            ('B', 'Imam Abu Bakr'),
            ('C', 'Imam Ali'),
            ('D', 'Prophet Noah')
           ) as v(label, option_text)
 where q.question_hash = '2b4cd0ee92870f842f3ba3bcc793843b'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Saraswati Puja'' is associated with:',
    'Saraswati Puja, held on Vasant Panchami, marks the beginning of the academic year and is celebrated widely for the worship of learning.',
    'medium',
    'Standard Reference',
    null,
    '238e40ddb5c8edbb87a46aa664e3a1e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '238e40ddb5c8edbb87a46aa664e3a1e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The marriage season'),
            ('B', 'The beginning of the academic year'),
            ('C', 'The end of the harvest'),
            ('D', 'The new year in Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '238e40ddb5c8edbb87a46aa664e3a1e6'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Raksha Bandhan'' festival is linked with:',
    'Raksha Bandhan, on the full moon of Shravana, celebrates the bond between brothers and sisters, where sisters tie a rakhi on their brothers'' wrists.',
    'easy',
    'Standard Reference',
    null,
    'e7ecf93deb33d772ef0b87230b55b606'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e7ecf93deb33d772ef0b87230b55b606'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wedding anniversaries'),
            ('B', 'Harvest thanksgiving'),
            ('C', 'Brother-sister ties'),
            ('D', 'Guru and disciple ties')
           ) as v(label, option_text)
 where q.question_hash = 'e7ecf93deb33d772ef0b87230b55b606'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Onam'' is the harvest festival of:',
    'Onam, the harvest festival of Kerala, is celebrated with the boat race Payana, the floral arrangement Pookalam and the snake boat race Vallam Kali.',
    'easy',
    'Standard Reference',
    null,
    '2a4ec2a911094c2eb652eef5f4130c17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2a4ec2a911094c2eb652eef5f4130c17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Odisha'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '2a4ec2a911094c2eb652eef5f4130c17'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Yuboi'' and ''Chapchar Kut'' are festivals of:',
    'Yuboi is the Manipuri spring festival of the Vaishnavite rite, while Chapchar Kut is an important festival of Mizoram.',
    'hard',
    'Standard Reference',
    null,
    'c4f298a74f7413065b648a1a80654ce5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c4f298a74f7413065b648a1a80654ce5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mizoram'),
            ('B', 'Manipur'),
            ('C', 'Arunachal Pradesh'),
            ('D', 'Nagaland')
           ) as v(label, option_text)
 where q.question_hash = 'c4f298a74f7413065b648a1a80654ce5'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Buddha Purnima'' is celebrated on the full moon of:',
    'Buddha Purnima, the full moon of the Vaisakha month, marks the birth, enlightenment and death of the Buddha.',
    'hard',
    'Standard Reference',
    null,
    '536bbaac4419fc91d799d4ae33babccf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '536bbaac4419fc91d799d4ae33babccf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vaisakha'),
            ('B', 'Kartika'),
            ('C', 'Ashadha'),
            ('D', 'Chaitra')
           ) as v(label, option_text)
 where q.question_hash = '536bbaac4419fc91d799d4ae33babccf'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Ram Navami'' marks the birth of:',
    'Ram Navami, held on the ninth day of the Chaitra month, celebrates the birth of Lord Rama.',
    'easy',
    'Standard Reference',
    null,
    'a7afd39594cdfe836be98e9d7a07370a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a7afd39594cdfe836be98e9d7a07370a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Narasimha'),
            ('B', 'Krishna'),
            ('C', 'Rama'),
            ('D', 'Balarama')
           ) as v(label, option_text)
 where q.question_hash = 'a7afd39594cdfe836be98e9d7a07370a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Guru Nanak Jayanti'' and ''Gurpurab'' are observed on the same date in:',
    'Guru Nanak''s birth anniversary, Gurpurab, falls on the full moon of Kartik, which is also the death anniversary of the Guru.',
    'medium',
    'Standard Reference',
    null,
    'f314f77b9993a35958e7c98c8263b8e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f314f77b9993a35958e7c98c8263b8e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chaitra'),
            ('B', 'Bhadon'),
            ('C', 'Magh'),
            ('D', 'Kartik')
           ) as v(label, option_text)
 where q.question_hash = 'f314f77b9993a35958e7c98c8263b8e1'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''Aadi Perukku'' festival is celebrated in:',
    'Aadi Perukku, celebrated on the banks of the Kaveri in Tamil Nadu, marks the start of the river''s rising water and the farming season.',
    'hard',
    'Standard Reference',
    null,
    'e34e49d09ee711ef01ee80c5a08db946'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e34e49d09ee711ef01ee80c5a08db946'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu on the banks of the Cauvery'),
            ('B', 'Kerala on the backwaters'),
            ('C', 'Karnataka on the coast'),
            ('D', 'Andhra Pradesh on the Godavari')
           ) as v(label, option_text)
 where q.question_hash = 'e34e49d09ee711ef01ee80c5a08db946'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'Which Indian city''s Diwali celebration is famous as the ''City of Lights''?',
    'Varanasi, on the banks of the Ganga, is known as the City of Lights during Diwali, with millions of lamps lit on the ghats.',
    'easy',
    'Standard Reference',
    null,
    'fb61f4b0cda3b1dfcac8bd08546b66dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb61f4b0cda3b1dfcac8bd08546b66dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jaipur'),
            ('B', 'Ayodhya'),
            ('C', 'Kolkata'),
            ('D', 'Varanasi')
           ) as v(label, option_text)
 where q.question_hash = 'fb61f4b0cda3b1dfcac8bd08546b66dd'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    '''Teej'' festival is celebrated by:',
    'Teej, a monsoon festival of swings and songs, is celebrated by married women of Rajasthan, Haryana and Uttar Pradesh for the well-being of their husbands.',
    'medium',
    'Standard Reference',
    null,
    'e6185e1991a3e1cf0474be3e38370d9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e6185e1991a3e1cf0474be3e38370d9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Anglo-Indians'),
            ('B', 'Women of Rajasthan and Haryana'),
            ('C', 'Fisherfolk of Kerala'),
            ('D', 'The Toda tribe')
           ) as v(label, option_text)
 where q.question_hash = 'e6185e1991a3e1cf0474be3e38370d9a'
on conflict (question_id, label) do nothing;

-- art_culture | festivals-and-religion | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'festivals-and-religion'),
    'The ''International Day of Yoga'' is observed on:',
    'The International Day of Yoga is observed on 21 June, the International Day of Yoga, which was declared by the UN in 2015.',
    'easy',
    'Standard Reference',
    null,
    'e66267afcc7573b9339ecbdfdf1a6fc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e66267afcc7573b9339ecbdfdf1a6fc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '21 January'),
            ('B', '21 March'),
            ('C', '21 June'),
            ('D', '21 December')
           ) as v(label, option_text)
 where q.question_hash = 'e66267afcc7573b9339ecbdfdf1a6fc7'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Bharat Mata'' painting by Raja Ravi Varma is displayed at:',
    'Raja Ravi Varma''s Bharat Mata is part of the collection of the National Gallery of Modern Art in New Delhi.',
    'hard',
    'Standard Reference',
    null,
    '2df8fe3ec92a80e26c901988fed02986'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2df8fe3ec92a80e26c901988fed02986'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Museum, Kolkata'),
            ('B', 'The Salarjung Museum'),
            ('C', 'The National Gallery of Modern Art, New Delhi'),
            ('D', 'The Victoria Memorial')
           ) as v(label, option_text)
 where q.question_hash = '2df8fe3ec92a80e26c901988fed02986'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the autobiography ''The Unhappy Warrior'' (unhappy) about India''s national movement?',
    'Vijay Lakshmi Pandit wrote The Unhappy Warrior, an autobiography of her father''s life and India''s freedom struggle.',
    'hard',
    'Standard Reference',
    null,
    '586b487dd7be858fcdc479dff445aedf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '586b487dd7be858fcdc479dff445aedf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vijay Lakshmi Pandit'),
            ('B', 'Kamaladevi Chattopadhyay'),
            ('C', 'Sucheta Kripalani'),
            ('D', 'V.K. Krishna Menon')
           ) as v(label, option_text)
 where q.question_hash = '586b487dd7be858fcdc479dff445aedf'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''A History of British India''?',
    'James Mill wrote A History of British India, published in 1817, a classic of colonial historiography.',
    'medium',
    'Standard Reference',
    null,
    'c719ba909ff89a244dfcb2fc320cdb01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c719ba909ff89a244dfcb2fc320cdb01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'James Mill'),
            ('B', 'Thomas Macaulay'),
            ('C', 'Robert Montgomery Martin'),
            ('D', 'William Wilson Hunter')
           ) as v(label, option_text)
 where q.question_hash = 'c719ba909ff89a244dfcb2fc320cdb01'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Annals and Antiquities of Rajasthan''?',
    'Colonel James Tod wrote Annals and Antiquities of Rajasthan, published between 1829 and 1831.',
    'medium',
    'Standard Reference',
    null,
    '48c9029918fe8aea063455b6424f8687'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '48c9029918fe8aea063455b6424f8687'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D.N. Jha'),
            ('B', 'Colonel James Tod'),
            ('C', 'C.V. Vaidya'),
            ('D', 'R.D. Sharma')
           ) as v(label, option_text)
 where q.question_hash = '48c9029918fe8aea063455b6424f8687'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Discovery of the Past'' book is associated with:',
    'Ashok Lahiri, an early archaeologist, wrote Discovery of the Past, an important early work on Indian archaeology.',
    'hard',
    'Standard Reference',
    null,
    '02de5503634dbac4afa475873cf17616'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '02de5503634dbac4afa475873cf17616'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D.D. Kosambi'),
            ('B', 'R.C. Majumdar'),
            ('C', 'A. Lahiri'),
            ('D', 'B.N. Sastri')
           ) as v(label, option_text)
 where q.question_hash = '02de5503634dbac4afa475873cf17616'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the ''Indian Culture: A Short History of the Hindu Religion''?',
    'A.L. Basham''s The Wonder That Was India remains a classic survey of Indian history and culture.',
    'medium',
    'Standard Reference',
    null,
    'b7d21fddcf0c89463ec729fcbac1ff89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b7d21fddcf0c89463ec729fcbac1ff89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A.L. Basham'),
            ('B', 'S. Radhakrishnan'),
            ('C', 'Radhakumud Mookerji'),
            ('D', 'R.C. Majumdar')
           ) as v(label, option_text)
 where q.question_hash = 'b7d21fddcf0c89463ec729fcbac1ff89'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''An Indian Republic'', a critique of democracy?',
    'M.N. Roy wrote An Indian Republic in 1935, a radical critique of Western democracy and of Congress policies.',
    'medium',
    'Standard Reference',
    null,
    'c6ab1877735f5e73d57a5db6e237e0a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c6ab1877735f5e73d57a5db6e237e0a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.R. Ambedkar'),
            ('B', 'M. N. Roy and Subhash Chandra Bose'),
            ('C', 'C. Rajagopalachari'),
            ('D', 'M.N. Roy')
           ) as v(label, option_text)
 where q.question_hash = 'c6ab1877735f5e73d57a5db6e237e0a3'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Indian Struggle for Independence''?',
    'Bipan Chandra''s Indian Struggle for Independence, published in 1988, is a standard three-volume reference work on the freedom movement.',
    'easy',
    'Standard Reference',
    null,
    'a99ccd42d64554146c1e9b8994665846'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a99ccd42d64554146c1e9b8994665846'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yogendra Yadav'),
            ('B', 'Bipan Chandra'),
            ('C', 'Ramakrishna Mukherjee'),
            ('D', 'Sumit Sarkar')
           ) as v(label, option_text)
 where q.question_hash = 'a99ccd42d64554146c1e9b8994665846'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Rise and Fall of the Mughal Empire''?',
    'Jadunath Sarkar''s three-volume The Rise and Fall of the Mughal Empire remains a classic reference on the Mughal period.',
    'medium',
    'Standard Reference',
    null,
    '0087e3e90de98cbb1efdebccba1b4913'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0087e3e90de98cbb1efdebccba1b4913'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.R. Ambedkar'),
            ('B', 'Jadunath Sarkar'),
            ('C', 'R.S. Sharma'),
            ('D', 'S.N. Sen')
           ) as v(label, option_text)
 where q.question_hash = '0087e3e90de98cbb1efdebccba1b4913'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Medieval India: The Study of a Civilization''?',
    'R.S. Sharma''s Medieval India: The Study of a Civilization is a widely used textbook on the Delhi Sultanate and the Mughals.',
    'medium',
    'Standard Reference',
    null,
    'a4a731b0ee8cedd53a9927487163781b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a4a731b0ee8cedd53a9927487163781b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B.B. Lal'),
            ('B', 'S.N. Sen'),
            ('C', 'R.S. Sharma'),
            ('D', 'Irfan Habib')
           ) as v(label, option_text)
 where q.question_hash = 'a4a731b0ee8cedd53a9927487163781b'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Technology in Medieval India, c. 650-1750''?',
    'Irfan Habib wrote Technology in Medieval India, c. 650-1750, a landmark study of technology and the economy.',
    'hard',
    'Standard Reference',
    null,
    '7d4e333deb7abfeca47569175ec8fbc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d4e333deb7abfeca47569175ec8fbc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A.L. Basham'),
            ('B', 'D.N. Jha'),
            ('C', 'R.C. Majumdar'),
            ('D', 'Irfan Habib')
           ) as v(label, option_text)
 where q.question_hash = '7d4e333deb7abfeca47569175ec8fbc2'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the ''Problems of Indian Economic Development''?',
    'I.G. Patel wrote Problems of Indian Economic Development, a classic collection of essays on Indian planning and policy.',
    'hard',
    'Standard Reference',
    null,
    '8cd12073069855c38cb52797e2f26952'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8cd12073069855c38cb52797e2f26952'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'I.G. Patel'),
            ('B', 'P.C. Mahalanobis'),
            ('C', 'M.N. Srinivas'),
            ('D', 'V. Kurien')
           ) as v(label, option_text)
 where q.question_hash = '8cd12073069855c38cb52797e2f26952'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Imperialism'' book of A.B. Lenin discusses:',
    'Lenin''s Imperialism, the Highest Stage of Capitalism (1917) analyses monopoly capital and the export of capital to the colonies.',
    'medium',
    'Standard Reference',
    null,
    'aec8b44baee4963b3ae6787595f0b364'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aec8b44baee4963b3ae6787595f0b364'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indian national movement'),
            ('B', 'International trade routes'),
            ('C', 'Monopoly capitalism and its export of capital'),
            ('D', 'Colonial land revenue systems')
           ) as v(label, option_text)
 where q.question_hash = 'aec8b44baee4963b3ae6787595f0b364'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Orientalism''?',
    'Edward Said''s Orientalism (1978) analysed the Western representation of the Orient and its relation to colonial power.',
    'medium',
    'Standard Reference',
    null,
    'd3ea1da8ae2a2a9ca45a58dc8d4b11d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd3ea1da8ae2a2a9ca45a58dc8d4b11d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Frantz Fanon'),
            ('B', 'Amartya Sen'),
            ('C', 'Eric Hobsbawm'),
            ('D', 'Edward Said')
           ) as v(label, option_text)
 where q.question_hash = 'd3ea1da8ae2a2a9ca45a58dc8d4b11d3'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Orientalism and the Postcolonial Predicament''?',
    'Gayatri Chakravorty Spivak wrote Orientalism and the Postcolonial Predicament, a critique of Western postcolonial theory.',
    'medium',
    'Standard Reference',
    null,
    '4209120e0013f8156fbfbda9596f505a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4209120e0013f8156fbfbda9596f505a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gayatri Chakravorty Spivak'),
            ('B', 'Homi Bhabha'),
            ('C', 'Edward Said'),
            ('D', 'Gayatri Spivak')
           ) as v(label, option_text)
 where q.question_hash = '4209120e0013f8156fbfbda9596f505a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Wretched of the Earth''?',
    'Frantz Fanon''s The Wretched of the Earth (1961) examined the colonial condition and revolutionary agency.',
    'medium',
    'Standard Reference',
    null,
    '699827b972ab9e325a891661ce0ab7bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '699827b972ab9e325a891661ce0ab7bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amartya Sen'),
            ('B', 'Frantz Fanon'),
            ('C', 'Albert Camus'),
            ('D', 'Edward Said')
           ) as v(label, option_text)
 where q.question_hash = '699827b972ab9e325a891661ce0ab7bf'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Development as Freedom''?',
    'Amartya Sen''s Development as Freedom (1999) argued that freedom is both the means and the end of development.',
    'easy',
    'Standard Reference',
    null,
    'b99e22364c38e388e06c1c20080cc65f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b99e22364c38e388e06c1c20080cc65f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manmohan Singh'),
            ('B', 'Amartya Sen'),
            ('C', 'Robert Mundell'),
            ('D', 'Joseph Stiglitz')
           ) as v(label, option_text)
 where q.question_hash = 'b99e22364c38e388e06c1c20080cc65f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Great Derangement''?',
    'Amartya Sen and Jagdish Bhagwati wrote The Great Derangement, a critique of globalisation.',
    'hard',
    'Standard Reference',
    null,
    'fe3583cc7be27ec33dc3151fda6f1e56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fe3583cc7be27ec33dc3151fda6f1e56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Joseph Stiglitz'),
            ('B', 'Amartya Sen'),
            ('C', 'Amartya Sen and Jagdish Bhagwati'),
            ('D', 'Amartya Sen and Jean Drèze')
           ) as v(label, option_text)
 where q.question_hash = 'fe3583cc7be27ec33dc3151fda6f1e56'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Public Finance and Public Policy''?',
    'Dr. R.K. Mundle''s Public Finance and Public Policy is a standard Indian textbook on public finance.',
    'hard',
    'Standard Reference',
    null,
    '222a601a35500c94595f7cd9807f4c25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '222a601a35500c94595f7cd9807f4c25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dr. R.K. Mundle'),
            ('B', 'P.C. Mahalanobis'),
            ('C', 'A.K. Das'),
            ('D', 'R. Govinda Rao')
           ) as v(label, option_text)
 where q.question_hash = '222a601a35500c94595f7cd9807f4c25'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Monetary Economics''?',
    'M.L. Jhingan''s Monetary Economics is a classic Indian textbook on money, banking and monetary policy.',
    'medium',
    'Standard Reference',
    null,
    '67b264c5ad0910fe7feeb8831a8cfdca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67b264c5ad0910fe7feeb8831a8cfdca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D.D. Kosambi'),
            ('B', 'I.G. Patel'),
            ('C', 'K.K. Sharma'),
            ('D', 'M.L. Jhingan')
           ) as v(label, option_text)
 where q.question_hash = '67b264c5ad0910fe7feeb8831a8cfdca'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the ''History of Indian Philosophy'' (Volume I)?',
    'Surendranath Dasgupta''s History of Indian Philosophy, in five volumes, remains the most comprehensive work on Indian philosophy.',
    'hard',
    'Standard Reference',
    null,
    'dfdb722b9726891c69839d536643845f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dfdb722b9726891c69839d536643845f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D. Sarvapalli Radhakrishnan'),
            ('B', 'S.N. Dasgupta'),
            ('C', 'Sarvepalli Radhakrishnan'),
            ('D', 'Surendranath Dasgupta')
           ) as v(label, option_text)
 where q.question_hash = 'dfdb722b9726891c69839d536643845f'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Philosophies of India''?',
    'Paul Edwards wrote The Philosophies of India, a comparative study of Indian and Western thought.',
    'hard',
    'Standard Reference',
    null,
    '395be2e61c75d669026c94b800985177'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '395be2e61c75d669026c94b800985177'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'H. H. Wilson'),
            ('B', 'Paul Edwards'),
            ('C', 'S. Radhakrishnan'),
            ('D', 'W. T. Elmore')
           ) as v(label, option_text)
 where q.question_hash = '395be2e61c75d669026c94b800985177'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''A History of Indian Literature'' by A.C. Nair is in which language originally?',
    'A.C. Nair''s A History of Indian Literature was published in five volumes in Malayalam and later translated into English.',
    'hard',
    'Standard Reference',
    null,
    'd42863b4cee28752e52cd25e148b05a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd42863b4cee28752e52cd25e148b05a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Malayalam'),
            ('B', 'Sanskrit'),
            ('C', 'Hindi'),
            ('D', 'English')
           ) as v(label, option_text)
 where q.question_hash = 'd42863b4cee28752e52cd25e148b05a4'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Cultural History of India''?',
    'A.L. Basham''s The Wonder That Was India is the standard cultural history used in competitive examinations.',
    'medium',
    'Standard Reference',
    null,
    '92f81e9724c8123e6e2fc18a194c9e15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '92f81e9724c8123e6e2fc18a194c9e15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R.C. Majumdar'),
            ('B', 'S. Radhakrishnan'),
            ('C', 'A.L. Basham'),
            ('D', 'B.N. Sastri')
           ) as v(label, option_text)
 where q.question_hash = '92f81e9724c8123e6e2fc18a194c9e15'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Indian Sculpture''?',
    'A.L. Basham''s The Wonder That Was India included a detailed treatment of Indian sculpture.',
    'hard',
    'Standard Reference',
    null,
    '3218c616deda9bddb891beb751ac452e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3218c616deda9bddb891beb751ac452e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M. R. Ryos'),
            ('B', 'A.L. Basham'),
            ('C', 'R.C. Majumdar'),
            ('D', 'S. R. Sharma')
           ) as v(label, option_text)
 where q.question_hash = '3218c616deda9bddb891beb751ac452e'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    '''The Grammar of Ornament'' was written by:',
    'Ernst Babel''s The Grammar of Ornament, published in 1856, catalogued the decorative arts of many cultures and influenced British design education.',
    'hard',
    'Standard Reference',
    null,
    '9fdbcfd6bff374130cd55d4ebf9e59ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9fdbcfd6bff374130cd55d4ebf9e59ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ernst Babel'),
            ('B', 'Johann Joachim Winckelmann'),
            ('C', 'Ananda Coomaraswamy'),
            ('D', 'E.B. Havell')
           ) as v(label, option_text)
 where q.question_hash = '9fdbcfd6bff374130cd55d4ebf9e59ad'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Arts and Crafts of India and Ceylon''?',
    'E.B. Havell''s Arts and Crafts of India and Ceylon was published in 1911 and remains a standard work on Indian decorative arts.',
    'hard',
    'Standard Reference',
    null,
    '7162fe91f4a94f8e281ed2e42fb266a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7162fe91f4a94f8e281ed2e42fb266a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ananda Coomaraswamy'),
            ('B', 'George Birdwood'),
            ('C', 'James Fergusson'),
            ('D', 'E.B. Havell')
           ) as v(label, option_text)
 where q.question_hash = '7162fe91f4a94f8e281ed2e42fb266a9'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Dance of India''?',
    'Nirmala Joshi''s The Dance of India is a classic study of Indian classical and folk dance forms.',
    'hard',
    'Standard Reference',
    null,
    '290b1881b30d650df82bbd77657afd6a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '290b1881b30d650df82bbd77657afd6a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kapila Vatsyayan'),
            ('B', 'Mrinalini Sarabhai'),
            ('C', 'Nirmala Joshi'),
            ('D', 'Rukmini Devi Arundale')
           ) as v(label, option_text)
 where q.question_hash = '290b1881b30d650df82bbd77657afd6a'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    '''The Art of Indian Dance'' by Kapila Vatsyayan covers:',
    'Kapila Vatsyayan''s The Art of Indian Dance is a standard work on the classical dance forms and their theory.',
    'medium',
    'Standard Reference',
    null,
    'e0fe4b13c789849a274d09152b290899'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e0fe4b13c789849a274d09152b290899'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The classical dance forms of India'),
            ('B', 'Only Bharatanatyam'),
            ('C', 'Folk dances of Rajasthan'),
            ('D', 'Dance in colonial India')
           ) as v(label, option_text)
 where q.question_hash = 'e0fe4b13c789849a274d09152b290899'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Yojana aur Vikas''?',
    'R.K. Talwar''s Yojana aur Vikas is a standard Hindi work on Indian planning and development.',
    'hard',
    'Standard Reference',
    null,
    '22a3b49bbe94d4963c5acc25ae109fcb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '22a3b49bbe94d4963c5acc25ae109fcb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'D.R. Gadgil'),
            ('B', 'R.K. Talwar'),
            ('C', 'P.C. Mahalanobis'),
            ('D', 'M.S. Swaminathan')
           ) as v(label, option_text)
 where q.question_hash = '22a3b49bbe94d4963c5acc25ae109fcb'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Modern Indian History'' (Nagpur)?',
    'S.S. Chitra''s Modern Indian History, published from Nagpur, is widely used in competitive examinations.',
    'medium',
    'Standard Reference',
    null,
    'd1b6143fc48b95e9003e5175bdecb372'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd1b6143fc48b95e9003e5175bdecb372'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'N.K. Oak'),
            ('B', 'B.L. Sharma'),
            ('C', 'R.C. Sharma'),
            ('D', 'S.S. Chitra')
           ) as v(label, option_text)
 where q.question_hash = 'd1b6143fc48b95e9003e5175bdecb372'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the novel ''Goda'' and won the Sahitya Akademi Award for Odia?',
    'Gopinath Mohanty won the Sahitya Akademi Award for his novel Godaa.',
    'medium',
    'Standard Reference',
    null,
    '071318b22fb4f19994bc0b3269992092'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '071318b22fb4f19994bc0b3269992092'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manoj Das'),
            ('B', 'Sitakant Mahapatra'),
            ('C', 'Gopinath Mohanty'),
            ('D', 'Pratibha Ray')
           ) as v(label, option_text)
 where q.question_hash = '071318b22fb4f19994bc0b3269992092'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Which Indian writer was awarded the ''Neustadt International Prize for Literature''?',
    'V.S. Naipaul won the Neustadt International Prize for Literature in 2018, having earlier won the Nobel Prize in 2007.',
    'medium',
    'Standard Reference',
    null,
    'd2ad5f48d08c7a0d6ccd835c2b4d86fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2ad5f48d08c7a0d6ccd835c2b4d86fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vikram Seth'),
            ('B', 'V.S. Naipaul'),
            ('C', 'Salman Rushdie'),
            ('D', 'Amitav Ghosh')
           ) as v(label, option_text)
 where q.question_hash = 'd2ad5f48d08c7a0d6ccd835c2b4d86fe'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who won the 2014 Sahitya Akademi Award for English?',
    'Manilal H. Patel won the 2014 Sahitya Akademi Award for English for his book Audition, a collection of short stories.',
    'hard',
    'Standard Reference',
    null,
    '1b89985eb857444486bc913aad603331'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1b89985eb857444486bc913aad603331'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manilal H. Patel'),
            ('B', 'Jerry Pinto'),
            ('C', 'K. Satchidanandan'),
            ('D', 'Vijay Tendulkar')
           ) as v(label, option_text)
 where q.question_hash = '1b89985eb857444486bc913aad603331'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who won the Jnanpith Award in 1998 for ''Bharat Ek Khoj''?',
    'U.R. Ananthamurthy won the Jnanpith Award in 1998 for his epic novel Bharatiya Upakatha, often translated as Bharat Ek Khoj.',
    'hard',
    'Standard Reference',
    null,
    '84a0788d5c2c7a818fd597329425a5cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '84a0788d5c2c7a818fd597329425a5cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ashapoorna Devi'),
            ('B', 'Girish Karnad'),
            ('C', 'U.R. Ananthamurthy'),
            ('D', 'A.K. Ramanujan')
           ) as v(label, option_text)
 where q.question_hash = '84a0788d5c2c7a818fd597329425a5cf'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who won the 2022 Sahitya Akademi Award for English?',
    'Girish Karnad won the 2022 Sahitya Akademi Award for English for his novel Yakshagana.',
    'medium',
    'Standard Reference',
    null,
    '2df56e901aff203da379b327140cb505'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2df56e901aff203da379b327140cb505'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. Satchidanandan'),
            ('B', 'Ram Kamal Mukherjee'),
            ('C', 'Deepa Anappara'),
            ('D', 'Girish Karnad')
           ) as v(label, option_text)
 where q.question_hash = '2df56e901aff203da379b327140cb505'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who was awarded the Padma Vibhushan for his contribution to Indian theatre?',
    'Habib Tanvir, a theatre pioneer of the Naya Theatre movement, was awarded the Padma Vibhushan.',
    'hard',
    'Standard Reference',
    null,
    'cd0ca310894097f3420198d337cf0d92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd0ca310894097f3420198d337cf0d92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K. N. Panikkar'),
            ('B', 'Habib Tanvir'),
            ('C', 'Utpal Dutt'),
            ('D', 'Ebrahim Alkazi')
           ) as v(label, option_text)
 where q.question_hash = 'cd0ca310894097f3420198d337cf0d92'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Katha of Sacred Books of the East''?',
    'F. Max Muller published the Sacred Books of the East series, including the twelve Upanishads.',
    'medium',
    'Standard Reference',
    null,
    'dd999e02471f6b16f1429f65bd6efce1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd999e02471f6b16f1429f65bd6efce1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'F. Max Muller'),
            ('B', 'William Jones'),
            ('C', 'Sir William Jones'),
            ('D', 'James Mill')
           ) as v(label, option_text)
 where q.question_hash = 'dd999e02471f6b16f1429f65bd6efce1'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The ''Ashtadhyayi'' of Pannini and the ''Mahabhashya'' of Patanjali are works on:',
    'Both the Ashtadhyayi and the Mahabhashya are seminal works on Sanskrit grammar and philology.',
    'easy',
    'Standard Reference',
    null,
    '2b79eb7ea9f7c6b5cd2e26444322a009'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b79eb7ea9f7c6b5cd2e26444322a009'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sanskrit poetics'),
            ('B', 'Hindu law'),
            ('C', 'Astronomy'),
            ('D', 'Sanskrit grammar')
           ) as v(label, option_text)
 where q.question_hash = '2b79eb7ea9f7c6b5cd2e26444322a009'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Darshana'' and ''Darshan'' books on Indian philosophy?',
    'S. Radhakrishnan wrote The Idealist View of Life and The Philosophy of Brahma, in addition to his work on Indian philosophy.',
    'hard',
    'Standard Reference',
    null,
    'f9e9859a829ab382cb2348ea8380befb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9e9859a829ab382cb2348ea8380befb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sri Aurobindo'),
            ('B', 'Bankim Chandra Chattopadhyay'),
            ('C', 'S. Radhakrishnan'),
            ('D', 'Swami Vivekananda')
           ) as v(label, option_text)
 where q.question_hash = 'f9e9859a829ab382cb2348ea8380befb'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Indian Sculpture: A Study of Indian Sculpture from the 2nd Century BC to the 12th Century AD''?',
    'Ananda K. Coomaraswamy wrote Indian Sculpture, a classic study of Indian sculpture.',
    'hard',
    'Standard Reference',
    null,
    '7827402986c154c68354a54b3eac180c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7827402986c154c68354a54b3eac180c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nihar Ranjan Ray'),
            ('B', 'Rai Krishnadasa'),
            ('C', 'Benoytosh Bhattacharyya'),
            ('D', 'Ananda K. Coomaraswamy')
           ) as v(label, option_text)
 where q.question_hash = '7827402986c154c68354a54b3eac180c'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''The Classical Dance of India''?',
    'Kapila Vatsyayan''s The Classical Dance of India is a standard reference on the classical dance forms.',
    'medium',
    'Standard Reference',
    null,
    '2c9a24e3714daadfa65de1d68a720ee2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c9a24e3714daadfa65de1d68a720ee2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kapila Vatsyayan'),
            ('B', 'Nirmala Joshi'),
            ('C', 'Rukmini Devi Arundale'),
            ('D', 'Mrinalini Sarabhai')
           ) as v(label, option_text)
 where q.question_hash = '2c9a24e3714daadfa65de1d68a720ee2'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'The Sahitya Akademi Award for the Assamese language in 2021 went to:',
    'Arupa Kalita Patangia won the 2021 Sahitya Akademi Award for Assamese for her short story collection ''Abhismara'' collection of stories.',
    'hard',
    'Standard Reference',
    null,
    'cac5a631e03ea71ad04e362555973fe5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cac5a631e03ea71ad04e362555973fe5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Birendra Kumar Bhattacharya'),
            ('B', 'Arupa Kalita Patangia'),
            ('C', 'Ranjita Barua'),
            ('D', 'Rajanikanta Bordoloi')
           ) as v(label, option_text)
 where q.question_hash = 'cac5a631e03ea71ad04e362555973fe5'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Nishtha'' and ''Bicharak'' and won the Sahitya Akademi Award for Hindi?',
    'Nirmal Verma won the Sahitya Akademi Award for Hindi for his novel Naksal and the short story collection ''Bicharak'' collection of stories.',
    'medium',
    'Standard Reference',
    null,
    'd0d823e1f41986e2c21b64e2adac7fc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd0d823e1f41986e2c21b64e2adac7fc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shrilal Shukla'),
            ('B', 'Krishna Sobti'),
            ('C', 'Nirmal Verma'),
            ('D', 'Amitav Ghosh')
           ) as v(label, option_text)
 where q.question_hash = 'd0d823e1f41986e2c21b64e2adac7fc2'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Kaagaz Te Patte'' and ''Tughlaq'' the novel?',
    'Girish Karnad wrote the plays Kaagaz Te Patte, Tughlaq, Tabbal and Chowka Bage.',
    'medium',
    'Standard Reference',
    null,
    'b52355da2d9c5291587faebc5c6a91ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b52355da2d9c5291587faebc5c6a91ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Badal Sircar'),
            ('B', 'Girish Karnad'),
            ('C', 'Chandrashekhara Kambara'),
            ('D', 'Vijay Tendulkar')
           ) as v(label, option_text)
 where q.question_hash = 'b52355da2d9c5291587faebc5c6a91ee'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Ghashiram Kotwal'' and ''Chandragupta'' in Marathi?',
    'P.L. Deshpande wrote the Marathi plays Ghashiram Kotwal and Chandragupta, a trilogy on the life of Shivaji.',
    'hard',
    'Standard Reference',
    null,
    'd1c1df2b4ad2498948e65e28a2eb9816'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd1c1df2b4ad2498948e65e28a2eb9816'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'P.L. Deshpande'),
            ('B', 'Mahesh Elkunchwar'),
            ('C', 'Suresh Bhat'),
            ('D', 'Vijay Tendulkar')
           ) as v(label, option_text)
 where q.question_hash = 'd1c1df2b4ad2498948e65e28a2eb9816'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the Kannada play ''Tughlaq'' and ''Ondu Muttina Kathe''?',
    'Adya Rangacharya, a pioneer of modern Kannada theatre, wrote Tughlaq and Ondu Muttina Kathe.',
    'hard',
    'Standard Reference',
    null,
    '09a489dd93b484300b5e23f2c9cada4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '09a489dd93b484300b5e23f2c9cada4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B. V. Karanth'),
            ('B', 'Kuvempu'),
            ('C', 'Girish Karnad'),
            ('D', 'Adya Rangacharya')
           ) as v(label, option_text)
 where q.question_hash = '09a489dd93b484300b5e23f2c9cada4c'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the Telugu play ''Kanyasulkam''?',
    'Gurajada Apparao wrote Kanyasulkam (1892), a landmark of Telugu social drama.',
    'medium',
    'Standard Reference',
    null,
    'a638ec25ff576d6dda685b297e2b1cf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a638ec25ff576d6dda685b297e2b1cf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chilakamarti Lakshmi Narasimham'),
            ('B', 'Tirupati Venkata Kavulu'),
            ('C', 'Gurajada Apparao'),
            ('D', 'Gummadi Sombattula')
           ) as v(label, option_text)
 where q.question_hash = 'a638ec25ff576d6dda685b297e2b1cf7'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote the Bengali play ''Sirajuddaula'' and ''Chandragupta''?',
    'Girish Chandra Ghosh was the most eminent actor-manager of the Bengali commercial theatre, famous for Sirajuddaula and Chandragupta.',
    'medium',
    'Standard Reference',
    null,
    '145aebf7cb2d83b4765bcfda801213f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '145aebf7cb2d83b4765bcfda801213f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Girish Chandra Ghosh'),
            ('B', 'Sambhu Mitra'),
            ('C', 'Badal Sircar'),
            ('D', 'Utpal Dutt')
           ) as v(label, option_text)
 where q.question_hash = '145aebf7cb2d83b4765bcfda801213f0'
on conflict (question_id, label) do nothing;

-- art_culture | books-and-authors | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'art_culture'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'art_culture' and c.slug = 'books-and-authors'),
    'Who wrote ''Pather Panchali'' based novel and also ''Aparajito''?',
    'Bibhutibhushan Bandyopadhyay wrote the novels Pather Panchali, Abar Aranyer Adhikar and Aranyak, which Satyajit Ray adapted for film.',
    'medium',
    'Standard Reference',
    null,
    'c15a5a57b593f5e99f2682a357b78fb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c15a5a57b593f5e99f2682a357b78fb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tarashankar Bandyopadhyay'),
            ('B', 'Bibhutibhushan Bandyopadhyay'),
            ('C', 'Rabindranath Tagore'),
            ('D', 'Sarat Chandra Chattopadhyay')
           ) as v(label, option_text)
 where q.question_hash = 'c15a5a57b593f5e99f2682a357b78fb7'
on conflict (question_id, label) do nothing;

commit;
