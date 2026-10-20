-- =============================================================================
-- geography_03.sql — geography question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Rajmahal'' and the ''Karkhardanga'':',
    'The Damodar, the Subarnarekha and the North and the South Koel are the rivers of the Chota Nagpur and the Karkhardanga is a tributary of the Subarnarekha.',
    'hard',
    'Standard Reference',
    null,
    'ded234579063c5bfe433525e4572787f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ded234579063c5bfe433525e4572787f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the rivers of the Deccan'),
            ('B', 'They are the rivers of the Kaveri valley'),
            ('C', 'The Ganga and the Damodar and the Karkhardanga are the rivers of the Chota Nagpur'),
            ('D', 'They are the rivers of the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = 'ded234579063c5bfe433525e4572787f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tista'' and the ''Teesta'':',
    'The Teesta, or the Tista, is a tributary of the Brahmaputra that flows through the Sikkim and the Jalpaiguri district and it caused the 1892 and the 1964 floods in the plains of West Bengal.',
    'medium',
    'Standard Reference',
    null,
    'cbdb8a43b998e85477076f8bd9c90e9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cbdb8a43b998e85477076f8bd9c90e9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Teesta is a tributary of the Ganga'),
            ('B', 'The Teesta is in Kerala'),
            ('C', 'The Teesta flows into the Arabian Sea'),
            ('D', 'The Teesta, the Tista, is a tributary of the Brahmaputra and it flows through the Sikkim and the Jalpaiguri')
           ) as v(label, option_text)
 where q.question_hash = 'cbdb8a43b998e85477076f8bd9c90e9c'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Teesta'' and the ''Kalimpong'' and the ''Siliguri'':',
    'The Teesta, the Kalimpong hills and the Siliguri corridor are the Himalayan features of West Bengal, and the Siliguri corridor is the narrow link to the North-East.',
    'hard',
    'Standard Reference',
    null,
    '0470bfc00a8e8b3e40b41c498a673fb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0470bfc00a8e8b3e40b41c498a673fb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kalimpong hills are in Tamil Nadu'),
            ('B', 'The Teesta and the Kalimpong hills and the Siliguri corridor are in the Himalayan belt of West Bengal'),
            ('C', 'The Teesta is in Kerala'),
            ('D', 'The Siliguri corridor is in Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '0470bfc00a8e8b3e40b41c498a673fb6'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Hugli'' and the ''Ganges delta'':',
    'The Bengal delta, with the Sundarbans, is the largest delta in the world and it is the most populous delta as well.',
    'easy',
    'Standard Reference',
    null,
    '4a235550a715c1e17e3294ed83ae610d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a235550a715c1e17e3294ed83ae610d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bengal delta is the largest delta in the world with the Sundarbans'),
            ('B', 'The Bengal delta is the smallest delta'),
            ('C', 'There is no delta in India'),
            ('D', 'The delta is in the Deccan')
           ) as v(label, option_text)
 where q.question_hash = '4a235550a715c1e17e3294ed83ae610d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indus'' and the ''Sindh'' and the ''Punjab'':',
    'The Indus valley civilisation, also called the Harappan civilisation, took its name from the Indus and it extended to the Punjab and the Sindh in Pakistan and to the Haryana and the Punjab in India.',
    'easy',
    'NCERT Class XI',
    null,
    '2162371165adced090f688f3d64c8d51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2162371165adced090f688f3d64c8d51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indus valley is in the Tamil Nadu'),
            ('B', 'The Indus valley civilisation is named after the Indus and it extends to the Punjab and the Sindh'),
            ('C', 'The Indus valley is in the Bengal'),
            ('D', 'The Indus valley is in the Deccan')
           ) as v(label, option_text)
 where q.question_hash = '2162371165adced090f688f3d64c8d51'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indus'' and the ''Ghaggar'' and the ''Hakra'':',
    'The Ghaggar and the Hakra, the ancient tributaries of the Indus that are identified with the Saraswati of the Vedic age, dried up with the climatic changes.',
    'hard',
    'Standard Reference',
    null,
    '898c6dc0f4a91b8e027c6a8b33df7048'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '898c6dc0f4a91b8e027c6a8b33df7048'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ghaggar and the Hakra, the ancient tributaries of the Indus, are identified with the Saraswati'),
            ('B', 'They are the tributaries of the Ganga'),
            ('C', 'They are in the Deccan'),
            ('D', 'They are the tributaries of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = '898c6dc0f4a91b8e027c6a8b33df7048'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sutlej'' and the ''Beas'' and the ''Indus'':',
    'The five rivers of the Indus system are the Jhelum, the Chenab, the Ravi, the Beas and the Sutlej, of which the last three flow through Punjab.',
    'easy',
    'Standard Reference',
    null,
    'fcde8c3d91f6287f770e67e04548e412'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fcde8c3d91f6287f770e67e04548e412'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are in Rajasthan'),
            ('B', 'They are the west flowing rivers of the Deccan'),
            ('C', 'The Sutlej, the Beas and the Ravi are the five rivers of the Indus system that flow through Punjab'),
            ('D', 'They are the tributaries of the Ganga')
           ) as v(label, option_text)
 where q.question_hash = 'fcde8c3d91f6287f770e67e04548e412'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Madhopur'' and the ''Sukhsar'':',
    'The Madhopur and the Sukhsar headworks at the Harike Barrage are the diversion works that feed the Indira Gandhi Canal.',
    'hard',
    'Standard Reference',
    null,
    '90aa6e7787a848e4698e01cbc1899584'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '90aa6e7787a848e4698e01cbc1899584'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the dams of the Bhakra'),
            ('B', 'They are the barrages of the Ganga'),
            ('C', 'They are the pumping stations of the Bhakra'),
            ('D', 'The Madhopur and the Sukhsar headworks are the diversion works of the Indira Gandhi Canal')
           ) as v(label, option_text)
 where q.question_hash = '90aa6e7787a848e4698e01cbc1899584'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'In the context of the Punjab, which of the following is correct?',
    'The Punjab is the land of the five rivers and the Ghaggar, the largest of them in the Vedic period, is identified with the Saraswati.',
    'medium',
    'Standard Reference',
    null,
    'a7a68621c6c938410871c288f0efd3e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a7a68621c6c938410871c288f0efd3e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Punjab is a desert region'),
            ('B', 'The Ghaggar flows into the Bay of Bengal'),
            ('C', 'The Punjab is in the Deccan'),
            ('D', 'The Punjab is the land of the five rivers and the Ghaggar was the Saraswati of the Vedic age')
           ) as v(label, option_text)
 where q.question_hash = 'a7a68621c6c938410871c288f0efd3e5'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ram Ganga'' and the ''Ganga'' and the ''Uttarakhand'':',
    'The Ram Ganga rises in the Garhwal hills and the Upper Ganga Canal takes off from the Ramganga barrage at Kalagarh to irrigate the western Uttar Pradesh.',
    'hard',
    'Standard Reference',
    null,
    '3c4b68182da8b159e820f2625b78b8a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3c4b68182da8b159e820f2625b78b8a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ram Ganga rises in the Garhwal hills and the projects at Kalagarh and the Upper Ganga Canal irrigate western Uttar Pradesh'),
            ('B', 'The Ram Ganga rises in the Himalaya of Nepal'),
            ('C', 'The Ram Ganga is a tributary of the Godavari'),
            ('D', 'The Ram Ganga flows west into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '3c4b68182da8b159e820f2625b78b8a6'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Son'' and the ''Sone'' and the ''Bihar'':',
    'The Son, the Gandak and the Kosi, with their tributaries, form the alluvial plain of north Bihar, which is among the most fertile in the world.',
    'medium',
    'Standard Reference',
    null,
    '6165bb0e7b42144148a26e6298ea951f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6165bb0e7b42144148a26e6298ea951f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Son flows into the Arabian Sea'),
            ('B', 'The Son, the Sone, the Gandak and the Kosi are the rivers that make the north Bihar plain'),
            ('C', 'The Son is a tributary of the Krishna'),
            ('D', 'The Son is in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '6165bb0e7b42144148a26e6298ea951f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Kosi'' and the ''Saharsa'':',
    'The Kosi, with its tributaries, brings the enormous alluvial deposits that form the Saharsa and the Kosi divisions of north Bihar.',
    'hard',
    'Standard Reference',
    null,
    '35e1eeb423229328ff1c6e828f576ff9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '35e1eeb423229328ff1c6e828f576ff9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kosi is the longest river of the Deccan'),
            ('B', 'The Kosi flows west'),
            ('C', 'The Kosi brings the alluvium that forms the Saharsa and the Kosi divisions'),
            ('D', 'The Kosi is in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '35e1eeb423229328ff1c6e828f576ff9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Teesta'' and the ''Ganga'' and the ''Farakka'':',
    'The Farakka and the Teesta barrages regulate the diversion of the Ganga and the Teesta into the Hooghly and they are vital to the navigation of the Calcutta port.',
    'medium',
    'Standard Reference',
    null,
    '906a28816466d192096408157dea4cf3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '906a28816466d192096408157dea4cf3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Farakka is in Kerala'),
            ('B', 'The Teesta and the Farakka barrage control the flow of the Ganga into the Hooghly'),
            ('C', 'The Farakka diverts the Ganga into the Brahmaputra'),
            ('D', 'The Teesta is a tributary of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = '906a28816466d192096408157dea4cf3'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Narmada valley has:',
    'The Narmada valley has a high concentration of the Bhil, the Bhilala, the Barda and the Gond and the Baghel and the Korku tribes.',
    'medium',
    'Standard Reference',
    null,
    '6cc4f33bd9288fdab3bc2f5b8b334876'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6cc4f33bd9288fdab3bc2f5b8b334876'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a concentration of the Bhil, the Bhilala, the Barda and the Gond tribes'),
            ('B', 'in the Deccan'),
            ('C', 'in the Himalaya'),
            ('D', 'no tribal population')
           ) as v(label, option_text)
 where q.question_hash = '6cc4f33bd9288fdab3bc2f5b8b334876'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Betwa'' and the ''Ken'' and the ''Tons'' and the ''Tawa'':',
    'The Tawa dam is on the Tawa river, a tributary of the Betwa, in the Betwa project complex in Madhya Pradesh.',
    'hard',
    'Standard Reference',
    null,
    'b30e48a6f25656f94512845595634678'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b30e48a6f25656f94512845595634678'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tawa dam is in Kerala'),
            ('B', 'The Tawa dam is on the Ken'),
            ('C', 'The Tawa dam is on the Tawa, a tributary of the Betwa, in Madhya Pradesh'),
            ('D', 'The Tawa dam is on the Tapti')
           ) as v(label, option_text)
 where q.question_hash = 'b30e48a6f25656f94512845595634678'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tungabhadra'' and the ''Bhadra'' and the ''Varahi'':',
    'The Tungabhadra is the chief tributary of the Krishna and the Bhadra, the Varahi, the Kadam and the Aghanashini are its tributaries.',
    'hard',
    'Standard Reference',
    null,
    '6acf25715e9cb82deddc929caf371dfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6acf25715e9cb82deddc929caf371dfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the tributaries of the Krishna in Andhra'),
            ('B', 'They are the tributaries of the Kaveri'),
            ('C', 'They are in Kerala'),
            ('D', 'The Bhadra, the Varahi, the Kadam and the Aghanashini are the tributaries of the Tungabhadra')
           ) as v(label, option_text)
 where q.question_hash = '6acf25715e9cb82deddc929caf371dfe'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Krishna'' and the ''Bhima'':',
    'The Bhima, about 861 km long, is a tributary of the Krishna and it flows through Maharashtra and the Purna is its chief tributary.',
    'medium',
    'Standard Reference',
    null,
    'f48307aee83d197526309af81d6335a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f48307aee83d197526309af81d6335a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bhima is a tributary of the Godavari'),
            ('B', 'The Bhima flows into the Arabian Sea'),
            ('C', 'The Bhima rises in the Himalaya of Nepal'),
            ('D', 'The Bhima is a tributary of the Krishna that flows through Maharashtra and the Kabini is a tributary of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'f48307aee83d197526309af81d6335a0'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Godavari'' and the ''Pravara'' and the ''Purna'':',
    'The Pravara, the Purna, the Manjira and the Indravati are the chief tributaries of the Godavari and the Godavari basin is the largest of the peninsular India.',
    'medium',
    'Standard Reference',
    null,
    'c514a97dfd99f9091dd11051ffefa917'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c514a97dfd99f9091dd11051ffefa917'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the tributaries of the Kaveri'),
            ('B', 'They are in Kerala'),
            ('C', 'The Pravara and the Purna are the chief tributaries of the Godavari'),
            ('D', 'They are the tributaries of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'c514a97dfd99f9091dd11051ffefa917'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kaveri'' and the ''Kabini'' and the ''Lakshmantirth'':',
    'The Kabini, the Hemavati, the Shivasamudram or the Lakshmantirth and the Noyyal are the tributaries of the Kaveri in Karnataka and Tamil Nadu.',
    'hard',
    'Standard Reference',
    null,
    '1e0b8133774af736fd8f733125d9fd79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e0b8133774af736fd8f733125d9fd79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are in Tamil Nadu'),
            ('B', 'The Kabini and the Lakshmantirth are the tributaries of the Kaveri'),
            ('C', 'They are the tributaries of the Krishna'),
            ('D', 'They are the tributaries of the Godavari')
           ) as v(label, option_text)
 where q.question_hash = '1e0b8133774af736fd8f733125d9fd79'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements regarding the Narmada is correct?',
    'The Bhils, with about 1.7 million people, are the largest of the tribal communities of the Narmada valley and they are the pastoral nomads of the Western Ghats.',
    'hard',
    'Standard Reference',
    null,
    'db7dfc3dad6e798f276cbeb4746f43e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'db7dfc3dad6e798f276cbeb4746f43e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bhils are the largest of the tribal communities of the Narmada valley'),
            ('B', 'The Bhils are the largest of the Mizo tribes'),
            ('C', 'The Bhils are of the Himalayan belt'),
            ('D', 'The Bhils are the pastoral tribes of the Ladakh')
           ) as v(label, option_text)
 where q.question_hash = 'db7dfc3dad6e798f276cbeb4746f43e8'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements is/are correct in relation to the Krishna?',
    'The Krishna and the Godavari together form the largest delta on the eastern coast and the Nagarjuna Sagar project was a pioneering river valley project.',
    'medium',
    'Standard Reference',
    null,
    'c6204387b331041fc10b57aeed93484e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6204387b331041fc10b57aeed93484e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Krishna and the Godavari form the largest delta of the eastern coast'),
            ('B', 'The Krishna forms a delta with the Kaveri'),
            ('C', 'The Krishna forms a delta with the Tapti'),
            ('D', 'There is no delta of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'c6204387b331041fc10b57aeed93484e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Gandhi Sagar and the Kota Barrage are:',
    'The Jawahar Sagar, the Gandhi Sagar and the Kota Barrage are the three stages of the Chambal Valley Project in Madhya Pradesh and Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    '591b489e8f1a2b952c185fcf9fb9883d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '591b489e8f1a2b952c185fcf9fb9883d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'on the Son'),
            ('B', 'on the Chambal'),
            ('C', 'on the Narmada'),
            ('D', 'on the Betwa')
           ) as v(label, option_text)
 where q.question_hash = '591b489e8f1a2b952c185fcf9fb9883d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Krishna valley was:',
    'The Krishna valley with the Nagarjuna Sagar, the Srisailam and the Pochampadu projects was the site of the pioneering river valley development in the south.',
    'hard',
    'Standard Reference',
    null,
    '14a10e08856741b69374962695086e5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '14a10e08856741b69374962695086e5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the site of the first project in the north'),
            ('B', 'no projects'),
            ('C', 'the site of the Bhakra project'),
            ('D', 'the site of the first major multipurpose project in the south')
           ) as v(label, option_text)
 where q.question_hash = '14a10e08856741b69374962695086e5f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Farakka barrage was:',
    'The Farakka barrage was to divert the Ganga to the Hooghly, but the silting made the scheme ineffective and the linking of the Ganga with the Bhagirathi was needed.',
    'hard',
    'Standard Reference',
    null,
    '366f4b00d0320ae1c2c7af456ee6fd8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '366f4b00d0320ae1c2c7af456ee6fd8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'on the Brahmaputra'),
            ('B', 'for the irrigation'),
            ('C', 'to be a permanent solution but the silt led to the construction of the Bhagirathi-Hooghly scheme'),
            ('D', 'never built')
           ) as v(label, option_text)
 where q.question_hash = '366f4b00d0320ae1c2c7af456ee6fd8b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Sundarbans is:',
    'The Sundarbans is a national park in West Bengal and it is a biosphere reserve, a Ramsar site and a UNESCO World Heritage site, and it is the habitat of the Royal Bengal tiger.',
    'medium',
    'Standard Reference',
    null,
    'dc389c22667b8f0f9e9c55822c4e6c41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dc389c22667b8f0f9e9c55822c4e6c41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a national park only'),
            ('B', 'in Bangladesh only'),
            ('C', 'a desert'),
            ('D', 'the largest mangrove forest and it is a biosphere reserve and a Ramsar site and a World Heritage site')
           ) as v(label, option_text)
 where q.question_hash = 'dc389c22667b8f0f9e9c55822c4e6c41'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Sundarban delta is:',
    'The Sundarban delta, the largest in the world, is the home of the Royal Bengal tiger and it is the most important mangrove region of the earth.',
    'easy',
    'Standard Reference',
    null,
    '5a7d863fe461fdae5a5ad7507e759ac6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5a7d863fe461fdae5a5ad7507e759ac6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fresh water delta'),
            ('B', 'in Tamil Nadu'),
            ('C', 'the largest in the world and it is the home of the Royal Bengal tiger'),
            ('D', 'in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '5a7d863fe461fdae5a5ad7507e759ac6'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Gandak and the Kosi and the Ghaghara and the Saryu are:',
    'The Gandak, the Kosi, the Ghaghara and the Saryu and their tributaries form the northern plain of the Ganga and they bring the alluvium of the Shillong Plateau.',
    'medium',
    'Standard Reference',
    null,
    '7d44e9956827672b5cdec2d1f9637c07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7d44e9956827672b5cdec2d1f9637c07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rivers of the northern plain'),
            ('B', 'the rivers of the Deccan'),
            ('C', 'the rivers of the Western Ghats'),
            ('D', 'the rivers of the Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '7d44e9956827672b5cdec2d1f9637c07'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Consider the following statements. Which of them is correct with regard to the Ganga?',
    'The Rajmahal hills, of the volcanic origin and about 400 metres high, rise in the middle of the course of the Ganga and the Ganga cuts a deep gorge through them.',
    'hard',
    'Standard Reference',
    null,
    'fd1355530f3c24731a72b1ed02f839c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fd1355530f3c24731a72b1ed02f839c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rajmahal hills are the highest of the peninsula'),
            ('B', 'The Rajmahal hills of the volcanic origin rise in the middle of the Ganga course'),
            ('C', 'The Rajmahal hills are of the Himalayan origin'),
            ('D', 'The Rajmahal hills are in Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'fd1355530f3c24731a72b1ed02f839c1'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Damodar valley is:',
    'The Damodar valley of the Chota Nagpur plateau is the industrial belt of eastern India with the Bokaro steel plant, the Durgapur steel plant and the coal fields.',
    'medium',
    'Standard Reference',
    null,
    '29e1d9c183344d7491809a0ca1181705'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '29e1d9c183344d7491809a0ca1181705'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the industrial belt of eastern India with the DVC and the Bokaro'),
            ('B', 'in Kerala'),
            ('C', 'the iron ore of the Bellary'),
            ('D', 'the tea belt of Assam')
           ) as v(label, option_text)
 where q.question_hash = '29e1d9c183344d7491809a0ca1181705'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Son and the Kosi bring the alluvium that makes:',
    'The Son, the Gandak and the Kosi, with their tributaries, have created the fertile alluvial plain of north Bihar.',
    'medium',
    'Standard Reference',
    null,
    'dfc07ff087464649bdc67e1473f409ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dfc07ff087464649bdc67e1473f409ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'they bring the alluvium of the Deccan'),
            ('B', 'the west flowing rivers of the peninsula'),
            ('C', 'the rivers of the Rajasthan'),
            ('D', 'the north Bihar plain fertile')
           ) as v(label, option_text)
 where q.question_hash = 'dfc07ff087464649bdc67e1473f409ae'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements regarding the Teesta is correct?',
    'The Teesta flows through the Jalpaiguri and the Cooch Behar districts and it is the most devastating river of West Bengal with its floods.',
    'hard',
    'Standard Reference',
    null,
    '8844a0558eab88dec21221da20c95700'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8844a0558eab88dec21221da20c95700'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Teesta is in Kerala'),
            ('B', 'The Teesta flows west into the Arabian Sea'),
            ('C', 'The Teesta flows through the Jalpaiguri district of West Bengal and causes the floods'),
            ('D', 'The Teesta is a tributary of the Godavari')
           ) as v(label, option_text)
 where q.question_hash = '8844a0558eab88dec21221da20c95700'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Son river:',
    'The Son rises at Amarkantak and flows through the Rewa, Palamu and Rohtas districts and the Rajmahal hills before joining the Ganga. It is a tributary of the Ganga and not of the Krishna.',
    'hard',
    'Standard Reference',
    null,
    '4486363c797f0d0ae6647ab83cb37fa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4486363c797f0d0ae6647ab83cb37fa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is in Kerala'),
            ('B', 'flows through the Rewa, the Palamu and the Rajmahal hills'),
            ('C', 'is a tributary of the Krishna'),
            ('D', 'flows into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '4486363c797f0d0ae6647ab83cb37fa5'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Jonk and the Sonakhan are:',
    'The Jonk and the Sonakhan are the chief tributaries of the Mahanadi and the upper course of the Mahanadi in the Dandakaranya is called the Kolab or the Kanger.',
    'hard',
    'Standard Reference',
    null,
    'dd1bb1e32bca1fd21db8c8c78d23c1ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dd1bb1e32bca1fd21db8c8c78d23c1ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a tributary of the Krishna'),
            ('B', 'a tributary of the Kaveri'),
            ('C', 'in Kerala'),
            ('D', 'the chief tributaries of the Mahanadi')
           ) as v(label, option_text)
 where q.question_hash = 'dd1bb1e32bca1fd21db8c8c78d23c1ca'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Maikala range is:',
    'The Maikala range forms the boundary of the Madhya Pradesh and the Amarkantak plateau, the highest part of the Satpura, is the source of the Narmada.',
    'medium',
    'Standard Reference',
    null,
    '61a4cccbf7a4a55a294202d2e059a691'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '61a4cccbf7a4a55a294202d2e059a691'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the highest of the Deccan'),
            ('B', 'in the Madhya Pradesh and the Amarkantak plateau is the highest of the Satpura'),
            ('C', 'in the Himalaya'),
            ('D', 'in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '61a4cccbf7a4a55a294202d2e059a691'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Consider the following statements. Which of them is correct with regard to the Krishna rises at the Mahabaleshwar in the Western Ghats and the valley?',
    'The Krishna rises at the Mahabaleshwar in the high granitic core of the Western Ghats and the highly dissected valley is a popular hill station.',
    'medium',
    'Standard Reference',
    null,
    'ef832ec0227660636e3ba72b1f289e19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ef832ec0227660636e3ba72b1f289e19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Krishna rises in the Deccan trap'),
            ('B', 'The Krishna rises at the Amarkantak'),
            ('C', 'The Krishna rises at the Mahabaleshwar in the Western Ghats and the valley is the granitic core of the Ghats'),
            ('D', 'The Mahabaleshwar is in the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = 'ef832ec0227660636e3ba72b1f289e19'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'In the context of the Tungabhadra, which of the following is correct?',
    'The Hampi, the ruined capital of the Vijayanagara Empire, stands on the banks of the Tungabhadra and it is a World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    'ead5d1a3f4edf87c38f4b6fd5df3d6e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ead5d1a3f4edf87c38f4b6fd5df3d6e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hampi is the ruined capital of the Vijayanagara on the Tungabhadra'),
            ('B', 'The Hampi is in Kerala'),
            ('C', 'The Hampi is a hill station of the Deccan'),
            ('D', 'The Hampi is on the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'ead5d1a3f4edf87c38f4b6fd5df3d6e2'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Indus and the Shyok are:',
    'The Indus and the Shyok flow through the cold desert of Ladakh and the Gilgit-Baltistan, and the upper Indus is the lifeline of the Gilgit and the Ladakh.',
    'medium',
    'Standard Reference',
    null,
    '34a8191ba927ebac6d432d86f11b3558'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '34a8191ba927ebac6d432d86f11b3558'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a river of Kerala'),
            ('B', 'The Indus flows through the Gangetic plain'),
            ('C', 'the longest river of the Himalaya'),
            ('D', 'the rivers of the Ladakh and the Gilgit region')
           ) as v(label, option_text)
 where q.question_hash = '34a8191ba927ebac6d432d86f11b3558'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Nubra and the Surlej are:',
    'The Nubra and the Surlej are the tributaries of the Indus in the Nubra valley of Ladakh and the Shyok is the other important one.',
    'hard',
    'Standard Reference',
    null,
    'ec8610b446305fd03895fb43824f67be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ec8610b446305fd03895fb43824f67be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Kerala'),
            ('B', 'a west flowing river of the Deccan'),
            ('C', 'the tributaries of the Indus in Ladakh'),
            ('D', 'a tributary of the Ganga')
           ) as v(label, option_text)
 where q.question_hash = 'ec8610b446305fd03895fb43824f67be'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'In the context of the Ramganga, which of the following is correct?',
    'The Tehri dam, the highest in India, is on the Bhagirathi, a tributary of the Ganga, and the water is released through the Tehri Canal to the Ganga.',
    'easy',
    'Standard Reference',
    null,
    'd5b404dcfa6c384d893ade56f8d18a34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd5b404dcfa6c384d893ade56f8d18a34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tehri dam is on the Son'),
            ('B', 'The Tehri dam is on the Bhagirathi, a tributary of the Ganga'),
            ('C', 'The Tehri dam is on the Tapti'),
            ('D', 'The Tehri dam is on the Sutlej')
           ) as v(label, option_text)
 where q.question_hash = 'd5b404dcfa6c384d893ade56f8d18a34'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements regarding the Rihand is correct?',
    'The Rihand, the largest tributary of the Son, joins the Son at the tri-junction of the Madhya Pradesh, the Chhattisgarh and the Uttar Pradesh.',
    'hard',
    'Standard Reference',
    null,
    '234ccbddde74cb237693a2505dbbc159'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '234ccbddde74cb237693a2505dbbc159'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rihand is the largest tributary of the Son and the Rihand joins the Son at the boundary of the Chhattisgarh and the Uttar Pradesh'),
            ('B', 'The Rihand is a tributary of the Krishna'),
            ('C', 'The Rihand is in Kerala'),
            ('D', 'The Rihand flows west')
           ) as v(label, option_text)
 where q.question_hash = '234ccbddde74cb237693a2505dbbc159'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements regarding the Sind is correct?',
    'The Sind, the largest tributary of the Chambal, joins the main river on the boundary of the Madhya Pradesh and the Rajasthan.',
    'hard',
    'Standard Reference',
    null,
    'cbc3b801c617658445066f9185da2c75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cbc3b801c617658445066f9185da2c75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sind is the largest tributary of the Chambal in the lower course'),
            ('B', 'The Sind is a tributary of the Krishna'),
            ('C', 'The Sind is in Kerala'),
            ('D', 'The Sind flows into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = 'cbc3b801c617658445066f9185da2c75'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Kali, the Bedti and the Varahi are:',
    'The Kali, the Bedti and the Varahi are the principal west flowing rivers of the Western Ghats in Karnataka and the Varahi is the Varahi or the Bedti that forms the Kali.',
    'hard',
    'Standard Reference',
    null,
    'c8ceb65a6df4649c679b1ebb7fffa60c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c8ceb65a6df4649c679b1ebb7fffa60c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rivers of Kerala'),
            ('B', 'the tributaries of the Godavari'),
            ('C', 'the west flowing rivers of the Western Ghats in Karnataka'),
            ('D', 'the east flowing rivers of Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'c8ceb65a6df4649c679b1ebb7fffa60c'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Ayyankovil and the Pamba are:',
    'The Pamba and the Ayyankovil are the rivers of the Malabar region and the Pamba is the river that enters the Kuttanad.',
    'medium',
    'Standard Reference',
    null,
    '35618bd67da9c7d361782c034bd5c2ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '35618bd67da9c7d361782c034bd5c2ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Tamil Nadu'),
            ('B', 'the rivers of the Kuttanad and the Malabar'),
            ('C', 'the rivers of the Deccan'),
            ('D', 'the tributaries of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = '35618bd67da9c7d361782c034bd5c2ad'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Bharathapuzha and the Chaliyar are:',
    'The Bharathapuzha reaches the sea at the Ponnani in the Malappuram and the Chaliyar at the Koduvally in the Kannur.',
    'hard',
    'Standard Reference',
    null,
    '2db45473ead01136f95d5b2eb448a3f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2db45473ead01136f95d5b2eb448a3f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rivers of the Deccan'),
            ('B', 'the tributaries of the Krishna'),
            ('C', 'in Tamil Nadu'),
            ('D', 'the rivers that reach the coast at the Malappuram and the Kannur')
           ) as v(label, option_text)
 where q.question_hash = '2db45473ead01136f95d5b2eb448a3f4'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Barna and the Betwa are:',
    'The Barna and the Betwa are the tributaries of the Narmada and the Narmada is the only west flowing river of peninsular India with a large catchment.',
    'hard',
    'Standard Reference',
    null,
    '8195ecd86f472f4b1a870086bd8fcc88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8195ecd86f472f4b1a870086bd8fcc88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the tributaries of the Narmada in the Central India'),
            ('B', 'the tributaries of the Krishna'),
            ('C', 'in Kerala'),
            ('D', 'the rivers of the Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '8195ecd86f472f4b1a870086bd8fcc88'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The crust of the Earth is composed predominantly of:',
    'The crust is made up mainly of igneous rocks, with sedimentary and metamorphic rocks derived from them; granite and basalt are the commonest crustal rocks.',
    'easy',
    'NCERT Class XI',
    null,
    '0b4959f967ccee2074665856f4e947d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b4959f967ccee2074665856f4e947d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sedimentary rocks'),
            ('B', 'Metamorphic rocks'),
            ('C', 'Igneous rocks'),
            ('D', 'Limestone and shale')
           ) as v(label, option_text)
 where q.question_hash = '0b4959f967ccee2074665856f4e947d1'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The breakdown of rocks at the Earth''s surface by physical, chemical and biological agents is called:',
    'Weathering is the in-situ breakdown of rocks at or near the surface; erosion is the removal and transport of the weathered material by agents such as water, wind and ice.',
    'medium',
    'NCERT Class XI',
    null,
    'b1d7eb4b7b1bd6d3d384ce68c999ab76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b1d7eb4b7b1bd6d3d384ce68c999ab76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Denudation'),
            ('B', 'Weathering'),
            ('C', 'Erosion'),
            ('D', 'Deposition')
           ) as v(label, option_text)
 where q.question_hash = 'b1d7eb4b7b1bd6d3d384ce68c999ab76'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Metamorphic rocks are formed from:',
    'Metamorphic rocks such as marble, slate and gneiss are formed when pre-existing igneous or sedimentary rocks are recrystallised under great heat and pressure within the crust.',
    'medium',
    'NCERT Class XI',
    null,
    'ced09b06c73b2c7bdef67dedd0c5f227'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ced09b06c73b2c7bdef67dedd0c5f227'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'molten magma that cools below the Earth''s surface'),
            ('B', 'sedimentary deposits compacted by the weight of overlying rocks'),
            ('C', 'volcanic ejecta deposited on the sea floor'),
            ('D', 'existing rocks altered by heat and pressure')
           ) as v(label, option_text)
 where q.question_hash = 'ced09b06c73b2c7bdef67dedd0c5f227'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'According to W.M. Davis, the stage of the erosional cycle of a river marked by the greatest stream power and maximum relief is the:',
    'Davis'' cycle passes through youth, maturity and old age; in the mature stage the river has cut a deep valley with the maximum relief, after which the landscape is graded in the old age stage.',
    'hard',
    'Standard Reference',
    null,
    '2eac82bde9efdd60e003d8b3cf983b87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2eac82bde9efdd60e003d8b3cf983b87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Old age'),
            ('B', 'Peneplanation'),
            ('C', 'Youth'),
            ('D', 'Maturity')
           ) as v(label, option_text)
 where q.question_hash = '2eac82bde9efdd60e003d8b3cf983b87'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'A horst and a graben are landforms produced by:',
    'A horst is an uplifted block and a graben a depressed block between parallel faults; the Narmada and Tapi valleys are classic graben examples in India.',
    'medium',
    'NCERT Class XI',
    null,
    'bc4f344794af05a30d6f8f4c9781965a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bc4f344794af05a30d6f8f4c9781965a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'folding of sedimentary strata'),
            ('B', 'glacial abrasion'),
            ('C', 'faulting of the Earth''s crust'),
            ('D', 'riverine erosion')
           ) as v(label, option_text)
 where q.question_hash = 'bc4f344794af05a30d6f8f4c9781965a'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'In geology, an unconformity indicates:',
    'An unconformity is a surface of erosion or non-deposition separating two rock sequences of different ages, and it is important in relative age determination.',
    'hard',
    'Standard Reference',
    null,
    'baaaaf577ed407c253c3e973f9ad044b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'baaaaf577ed407c253c3e973f9ad044b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a gap in the geological record caused by a period of erosion or non-deposition'),
            ('B', 'a fold in the strata'),
            ('C', 'an igneous intrusion into older rock'),
            ('D', 'a zone of contact metamorphism')
           ) as v(label, option_text)
 where q.question_hash = 'baaaaf577ed407c253c3e973f9ad044b'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The term ''batholith'' refers to:',
    'A batholith is a very large, irregular body of intrusive igneous rock with no clear margins, while a laccolith is a dome-shaped intrusion within sedimentary rock.',
    'medium',
    'Standard Reference',
    null,
    'f2f4d65d337b785babae0130b2e3fb35'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f2f4d65d337b785babae0130b2e3fb35'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a narrow ridge of folded sedimentary rock'),
            ('B', 'a deep-seated, irregular mass of igneous rock'),
            ('C', 'a dome-shaped volcanic cone built of ash and cinders'),
            ('D', 'a sheet of lava that has intruded between rock layers')
           ) as v(label, option_text)
 where q.question_hash = 'f2f4d65d337b785babae0130b2e3fb35'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Mercalli scale measures:',
    'The Mercalli scale describes the observed effects of an earthquake at a place, while the Richter scale and the moment magnitude scale measure the energy released.',
    'easy',
    'NCERT Class XI',
    null,
    '3d7b6fa3101fb52b4732584c66bc01b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3d7b6fa3101fb52b4732584c66bc01b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the energy released by an earthquake'),
            ('B', 'the intensity of an earthquake at a particular place'),
            ('C', 'the depth of the hypocentre'),
            ('D', 'the magnitude of an earthquake')
           ) as v(label, option_text)
 where q.question_hash = '3d7b6fa3101fb52b4732584c66bc01b2'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The State Disaster Management Authority in a State is chaired by the:',
    'Under the Disaster Management Act, 2005 the State Disaster Management Authority is chaired by the Chief Minister, while the District Authority is chaired by the District Collector.',
    'easy',
    'Standard Reference',
    null,
    '2012aebc93a376f9978445c759fe4ccd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2012aebc93a376f9978445c759fe4ccd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chief Minister'),
            ('B', 'District Collector'),
            ('C', 'Governor'),
            ('D', 'Union Home Minister')
           ) as v(label, option_text)
 where q.question_hash = '2012aebc93a376f9978445c759fe4ccd'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The District Disaster Management Authority is chaired by the:',
    'Section 11 of the Disaster Management Act, 2005 provides that the District Disaster Management Authority is chaired by the District Collector or the District Magistrate.',
    'easy',
    'Standard Reference',
    null,
    '49afeb5ac725ad62b6d90d6ddef3e586'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '49afeb5ac725ad62b6d90d6ddef3e586'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chief Executive Officer of the Zila Parishad'),
            ('B', 'the elected district magistrate'),
            ('C', 'District Collector'),
            ('D', 'State Chief Minister')
           ) as v(label, option_text)
 where q.question_hash = '49afeb5ac725ad62b6d90d6ddef3e586'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Which of the following is NOT one of the four priorities of the Sendai Framework for Disaster Risk Reduction?',
    'The four Sendai priorities are understanding disaster risk, strengthening governance, investing in resilience and preparedness with effective response and building back better.',
    'hard',
    'Standard Reference',
    null,
    '8478410ce2e1897795af21f9329b6d68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8478410ce2e1897795af21f9329b6d68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Understanding disaster risk'),
            ('B', 'Strengthening disaster risk governance'),
            ('C', 'Investing in disaster risk resilience for development'),
            ('D', 'Promoting the use of nuclear energy in disaster response')
           ) as v(label, option_text)
 where q.question_hash = '8478410ce2e1897795af21f9329b6d68'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The National Cyclone Risk Mitigation Project (NCRMP) was financed by the:',
    'The NCRMP, which built coastal shelters, cyclone warning systems and coastal embankments, was financed by the World Bank and implemented with state governments.',
    'medium',
    'Standard Reference',
    null,
    '90efa67cf543910690af047a2e5f8f88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90efa67cf543910690af047a2e5f8f88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'World Bank'),
            ('B', 'European Union'),
            ('C', 'United Nations Development Programme'),
            ('D', 'Asian Development Bank')
           ) as v(label, option_text)
 where q.question_hash = '90efa67cf543910690af047a2e5f8f88'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The Indian Tsunami Early Warning Centre is located at:',
    'The Indian Tsunami Early Warning Centre set up by the National Disaster Management Authority with INCOIS support is located at Hyderabad.',
    'medium',
    'Standard Reference',
    null,
    '1f316403bbca0512eff9a919f8bf1583'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f316403bbca0512eff9a919f8bf1583'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Bengaluru'),
            ('C', 'Hyderabad'),
            ('D', 'Port Blair')
           ) as v(label, option_text)
 where q.question_hash = '1f316403bbca0512eff9a919f8bf1583'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Under the Disaster Management Act, 2005, the National Executive Committee is chaired by the:',
    'The National Executive Committee, which prepares the national disaster management plan and monitors implementation, is chaired by the Prime Minister.',
    'hard',
    'Standard Reference',
    null,
    '2f7bb6ffb22f9eb09e509acab8f4795e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2f7bb6ffb22f9eb09e509acab8f4795e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Union Home Minister'),
            ('B', 'President of India'),
            ('C', 'Chief of Army Staff'),
            ('D', 'Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '2f7bb6ffb22f9eb09e509acab8f4795e'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The 1999 Odisha Super Cyclone caused comparatively few deaths mainly because:',
    'About two million people were evacuated to cyclone shelters before the October 1999 super cyclone hit Odisha, which is why the death toll stayed far below the estimated figure.',
    'medium',
    'Standard Reference',
    null,
    'bc975e8305907f9271bceb540d33077f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bc975e8305907f9271bceb540d33077f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the cyclone struck only at low tide'),
            ('B', 'the state had built cyclone shelters and evacuated people on a massive scale'),
            ('C', 'the cyclone was unusually weak'),
            ('D', 'the army restored the coastline before the surge arrived')
           ) as v(label, option_text)
 where q.question_hash = 'bc975e8305907f9271bceb540d33077f'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The National Earthquake Management Organisation, the nodal agency for seismic hazards, is under the:',
    'NEMO operates the National Seismic Monitoring Network and is an autonomous body under the Department of Earth Sciences in the Ministry of Earth Sciences.',
    'medium',
    'Standard Reference',
    null,
    '86199c3ace5c5cb0c96ff4d1e5766150'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86199c3ace5c5cb0c96ff4d1e5766150'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Science and Technology'),
            ('B', 'Ministry of Defence'),
            ('C', 'Ministry of Home Affairs'),
            ('D', 'Ministry of Earth Sciences')
           ) as v(label, option_text)
 where q.question_hash = '86199c3ace5c5cb0c96ff4d1e5766150'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'Mica is used principally in the manufacture of:',
    'Because of its excellent dielectric properties, mica is used in electrical insulation, capacitors and electronic components; it is also used in cosmetics and paints.',
    'easy',
    'NCERT Class XII',
    null,
    '196bc5b95f53a5d9571cfa4c31ca5c96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '196bc5b95f53a5d9571cfa4c31ca5c96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'machine tools'),
            ('B', 'jewellery'),
            ('C', 'electrical and electronic insulators'),
            ('D', 'refractory bricks')
           ) as v(label, option_text)
 where q.question_hash = '196bc5b95f53a5d9571cfa4c31ca5c96'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The Mumbai High oil field was discovered in:',
    'The Mumbai High field in the Arabian Sea off the coast of Maharashtra was discovered in 1974 and remains the largest onshore-offshore oil field of India.',
    'easy',
    'Standard Reference',
    null,
    '1ae862e7e1b23607300e2506208edeab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1ae862e7e1b23607300e2506208edeab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1984'),
            ('B', '1956'),
            ('C', '1964'),
            ('D', '1974')
           ) as v(label, option_text)
 where q.question_hash = '1ae862e7e1b23607300e2506208edeab'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The Digboi oil field in Assam is notable because it is:',
    'The Digboi field in upper Assam, discovered in 1889, is the oldest oil field in India and the first one where crude oil was found in the country.',
    'easy',
    'Standard Reference',
    null,
    '5ea85b234a4958cd488182052ec82591'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ea85b234a4958cd488182052ec82591'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the oldest oil field in India'),
            ('B', 'the largest oil field in India'),
            ('C', 'the only offshore oil field in India'),
            ('D', 'the first field to produce natural gas')
           ) as v(label, option_text)
 where q.question_hash = '5ea85b234a4958cd488182052ec82591'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The monazite sands of the Kerala coast are an important source of:',
    'Monazite beach sands along the Kerala coast carry thorium, which is why India has one of the world''s largest thorium reserves and can pursue thorium-based nuclear fuel cycles.',
    'medium',
    'Standard Reference',
    null,
    'dd4fadc6ce770e47126f8354bbbd65dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd4fadc6ce770e47126f8354bbbd65dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'manganese'),
            ('B', 'uranium'),
            ('C', 'thorium'),
            ('D', 'bauxite')
           ) as v(label, option_text)
 where q.question_hash = 'dd4fadc6ce770e47126f8354bbbd65dc'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'India''s largest reserves of thorium are found in the monazite sands of:',
    'The monazite beach sands of the Thiruvananthapuram district, particularly Manavalakkurathil, hold India''s largest thorium reserves, followed by the sands of Odisha and Tamil Nadu.',
    'hard',
    'Standard Reference',
    null,
    '42eed4e18f8247075379d1895a38e4f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '42eed4e18f8247075379d1895a38e4f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Jharkhand'),
            ('C', 'Odisha'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '42eed4e18f8247075379d1895a38e4f1'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The Khetri copper mines are located in:',
    'The Khetri and Zawar belt in Rajasthan is the principal copper producing belt of India, with the Khetri copper mines dating back to the colonial period.',
    'medium',
    'Standard Reference',
    null,
    'd66ab1d6032003db9ed4748bba90e91e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd66ab1d6032003db9ed4748bba90e91e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Rajasthan'),
            ('C', 'Gujarat'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'd66ab1d6032003db9ed4748bba90e91e'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'The Singhbhum mineral belt is particularly rich in:',
    'The Singhbhum belt of Jharkhand and Odisha is the classic mineral heartland of India, famous for iron ore, copper, mica and uranium deposits.',
    'hard',
    'Standard Reference',
    null,
    'a9d967b76122e40c5dd61fdc814304ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9d967b76122e40c5dd61fdc814304ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'iron ore, copper and mica'),
            ('B', 'coal and lignite'),
            ('C', 'manganese and chromite'),
            ('D', 'bauxite and mica')
           ) as v(label, option_text)
 where q.question_hash = 'a9d967b76122e40c5dd61fdc814304ea'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The trade winds blow:',
    'The trade winds blow from the subtropical high pressure belts towards the equatorial low pressure belt, deflected to the right in the Northern Hemisphere and to the left in the Southern Hemisphere.',
    'easy',
    'NCERT Class XI',
    null,
    'f576389690fe59b7a9e3736a9c0c11db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f576389690fe59b7a9e3736a9c0c11db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'from the equatorial low towards the poles'),
            ('B', 'from the subtropical high pressure belt towards the equatorial low pressure belt'),
            ('C', 'from west to east along the equator'),
            ('D', 'from the polar high towards the equator')
           ) as v(label, option_text)
 where q.question_hash = 'f576389690fe59b7a9e3736a9c0c11db'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Roaring Forties'', ''Furious Fifties'' and ''Screaming Sixties'' denote:',
    'These are the names for the persistent strong westerly winds of the Southern Ocean, which are unobstructed by land and were used by early sailing ships to reach Australia and the Americas.',
    'medium',
    'Standard Reference',
    null,
    'fb7ad1927c4ae9aa3d10d86b6e14441f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fb7ad1927c4ae9aa3d10d86b6e14441f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the trade winds of the Pacific'),
            ('B', 'the polar easterlies of Antarctica'),
            ('C', 'the strong westerly winds of the Southern Ocean'),
            ('D', 'the monsoon winds of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'fb7ad1927c4ae9aa3d10d86b6e14441f'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Koppen classification of the world''s climate is based mainly on:',
    'Koppen''s scheme classifies climate using mean monthly temperature and precipitation thresholds, which is why it is the most widely used world climate classification.',
    'medium',
    'NCERT Class XI',
    null,
    '08bcb0d74652d62088df4ee1c6d0a06c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '08bcb0d74652d62088df4ee1c6d0a06c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'monthly mean temperature and precipitation'),
            ('B', 'wind speed and humidity'),
            ('C', 'potential evapotranspiration and rainfall'),
            ('D', 'soil texture and natural vegetation')
           ) as v(label, option_text)
 where q.question_hash = '08bcb0d74652d62088df4ee1c6d0a06c'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Thornthwaite classification of climate is based on:',
    'Thornthwaite''s method uses the water balance, comparing potential evapotranspiration with precipitation, which is why his classification is also called the moisture index classification.',
    'hard',
    'Standard Reference',
    null,
    '9340dcc03e19e361799ddf034bb82c28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9340dcc03e19e361799ddf034bb82c28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the annual range of temperature'),
            ('B', 'the frequency of cyclones'),
            ('C', 'the average length of the dry season only'),
            ('D', 'the ratio of potential evapotranspiration to precipitation')
           ) as v(label, option_text)
 where q.question_hash = '9340dcc03e19e361799ddf034bb82c28'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The albedo of a surface is:',
    'Albedo is the reflecting power of a surface expressed as the ratio of reflected to incident radiation; fresh snow has a high albedo while forest and dark ocean surfaces have a low one.',
    'easy',
    'NCERT Class XI',
    null,
    '7b83442445dac387fbfbcc5782063c3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b83442445dac387fbfbcc5782063c3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the total radiation absorbed by the atmosphere'),
            ('B', 'the ratio of reflected to incident solar radiation'),
            ('C', 'the ratio of outgoing long-wave radiation to incoming short-wave radiation'),
            ('D', 'the measure of atmospheric transparency')
           ) as v(label, option_text)
 where q.question_hash = '7b83442445dac387fbfbcc5782063c3e'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Hadley cell of atmospheric circulation extends:',
    'The Hadley cell is the low latitude circulation cell in which air rises at the equator and descends near 30 degrees latitude, producing the subtropical high pressure belts and the trade winds.',
    'hard',
    'Standard Reference',
    null,
    'd2a3a90f9eedf23debdb40242f29615a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd2a3a90f9eedf23debdb40242f29615a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only over the Indian subcontinent'),
            ('B', 'vertically from the surface to the stratosphere'),
            ('C', 'from the equator to about 30 degrees latitude in each hemisphere'),
            ('D', 'from the poles to 60 degrees latitude')
           ) as v(label, option_text)
 where q.question_hash = 'd2a3a90f9eedf23debdb40242f29615a'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Walker Circulation in the Pacific Ocean is a component of:',
    'The Walker Circulation is the east-west overturning cell in the equatorial Pacific, and its weakening or reversal during an El Nino event is the core of the ENSO system.',
    'medium',
    'Standard Reference',
    null,
    'e869db16bfcd60e6a7af1d52f3c5be02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e869db16bfcd60e6a7af1d52f3c5be02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the El Nino-Southern Oscillation'),
            ('B', 'the monsoon trough'),
            ('C', 'the Southern Oscillation Index only'),
            ('D', 'the Madden-Julian Oscillation')
           ) as v(label, option_text)
 where q.question_hash = 'e869db16bfcd60e6a7af1d52f3c5be02'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Horn of Africa'' comprises mainly:',
    'The Horn of Africa projects into the Indian Ocean and comprises Ethiopia, Eritrea, Somalia and Djibouti, the region that guards the Bab el-Mandeb strait.',
    'easy',
    'Standard Reference',
    null,
    'b6a15cb970d6215bb606102347e051ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b6a15cb970d6215bb606102347e051ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sudan, Chad, Niger and Mali'),
            ('B', 'Kenya, Uganda, Tanzania and Rwanda'),
            ('C', 'Libya, Tunisia, Algeria and Morocco'),
            ('D', 'Ethiopia, Eritrea, Somalia and Djibouti')
           ) as v(label, option_text)
 where q.question_hash = 'b6a15cb970d6215bb606102347e051ea'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Serengeti plains are located mainly in:',
    'The Serengeti ecosystem lies in northern Tanzania and adjoining Kenya and is famous for the annual wildebeest migration and the Maasai Mara game reserve.',
    'easy',
    'Standard Reference',
    null,
    '9a47e8d97944069f20426318055fa2c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9a47e8d97944069f20426318055fa2c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'South Africa'),
            ('B', 'Namibia'),
            ('C', 'Kenya'),
            ('D', 'Tanzania')
           ) as v(label, option_text)
 where q.question_hash = '9a47e8d97944069f20426318055fa2c7'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Cape Fold Mountains of South Africa are especially noted for:',
    'The old folded mountains of the Cape region hold the diamond belt of Kimberley and the gold reefs of the Witwatersrand, which shaped the country''s mining economy.',
    'hard',
    'Standard Reference',
    null,
    'a180df5f81cddff02945cfc534927148'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a180df5f81cddff02945cfc534927148'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'rich deposits of gold, diamonds and other minerals'),
            ('B', 'the largest expanse of tropical rainforest'),
            ('C', 'the greatest concentration of volcanoes in Africa'),
            ('D', 'the highest waterfalls on the continent')
           ) as v(label, option_text)
 where q.question_hash = 'a180df5f81cddff02945cfc534927148'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Great Artesian Basin, the largest artesian basin in the world, is located in:',
    'The Great Artesian Basin underlies about one-fifth of Australia and yields the deep artesian bores that supply water to the dry interior and the artesian spa towns of the region.',
    'easy',
    'Standard Reference',
    null,
    '84b1a45734c02fd9efbc5a0091194ed8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84b1a45734c02fd9efbc5a0091194ed8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Argentina'),
            ('B', 'Australia'),
            ('C', 'Brazil'),
            ('D', 'China')
           ) as v(label, option_text)
 where q.question_hash = '84b1a45734c02fd9efbc5a0091194ed8'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Lake Titicaca, the highest navigable lake in the world, lies between:',
    'Titicaca straddles the Peru-Bolivia border at about 3,800 metres, drains into the Lake Poopó and supports the reed boat tradition of the Uros islands.',
    'medium',
    'Standard Reference',
    null,
    'bc010b6f35279cbc12836090086dbb61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bc010b6f35279cbc12836090086dbb61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Colombia and Venezuela'),
            ('B', 'Chile and Argentina'),
            ('C', 'Peru and Bolivia'),
            ('D', 'Ecuador and Peru')
           ) as v(label, option_text)
 where q.question_hash = 'bc010b6f35279cbc12836090086dbb61'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Irrawaddy river flows through which country?',
    'The Irrawaddy flows through Myanmar and forms the axis of the country''s rice-growing delta before reaching the Andaman Sea.',
    'easy',
    'Standard Reference',
    null,
    '0c425d706177db59377d253d1971a350'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0c425d706177db59377d253d1971a350'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cambodia'),
            ('B', 'Myanmar'),
            ('C', 'Thailand'),
            ('D', 'Laos')
           ) as v(label, option_text)
 where q.question_hash = '0c425d706177db59377d253d1971a350'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Mozambique Channel separates:',
    'The Mozambique Channel lies between Madagascar and the African mainland, roughly 400 kilometres wide at its narrowest, and is rich in marine life.',
    'easy',
    'Standard Reference',
    null,
    '6c5f8a48836cdb35d9d99ad524d7e1f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6c5f8a48836cdb35d9d99ad524d7e1f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madagascar from the African mainland'),
            ('B', 'Great Britain from continental Europe'),
            ('C', 'Indonesia from Australia'),
            ('D', 'Sri Lanka from the Indian mainland')
           ) as v(label, option_text)
 where q.question_hash = '6c5f8a48836cdb35d9d99ad524d7e1f5'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Palghat Gap lies between the:',
    'The Palghat or Palakkad Gap, about 15 kilometres wide, separates the Nilgiri Hills from the Anaimalai Hills and lets the south-west monsoon winds pass into the interior of the peninsula.',
    'medium',
    'Standard Reference',
    null,
    'c0ff5c979d612ebaef9d0d835ba83282'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c0ff5c979d612ebaef9d0d835ba83282'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Palni Hills and the Cardamom Hills'),
            ('B', 'Anamalai Hills and the Western Ghats'),
            ('C', 'Nilgiri Hills and the Javadi Hills'),
            ('D', 'Nilgiri Hills and the Anaimalai Hills')
           ) as v(label, option_text)
 where q.question_hash = 'c0ff5c979d612ebaef9d0d835ba83282'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Andaman and Nicobar Islands are separated from the mainland of India by the:',
    'The Ten Degree Channel separates the Andaman group from the Nicobar group, while the Coco Channel separates the Nicobars from the Indonesian island of Sumatra.',
    'easy',
    'NCERT Class XI',
    null,
    '1008c94488a1b5455fd6d8c84ef72df5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1008c94488a1b5455fd6d8c84ef72df5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nine Degree Channel'),
            ('B', 'Ten Degree Channel'),
            ('C', 'Great Channel'),
            ('D', 'Coco Channel')
           ) as v(label, option_text)
 where q.question_hash = '1008c94488a1b5455fd6d8c84ef72df5'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Barren Island, in the Andaman group, is notable as:',
    'Barren Island, about 135 kilometres north-east of Port Blair, hosts India''s only active volcano, whose eruptions have continued intermittently.',
    'medium',
    'Standard Reference',
    null,
    '7c90d7c6fdb630603771e98b5f00aff5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c90d7c6fdb630603771e98b5f00aff5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the site of India''s first rocket launching station'),
            ('B', 'the southernmost point of India'),
            ('C', 'the only active volcano in India'),
            ('D', 'the largest coral island of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '7c90d7c6fdb630603771e98b5f00aff5'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Bhabar and the Terai belts along the southern Himalayan foothills are formed by:',
    'As Himalayan rivers descend they deposit coarse boulders and sand in the Bhabar belt and finer, fertile alluvium in the Terai, and the belt is marked by disappearing streams.',
    'medium',
    'NCERT Class XI',
    null,
    '5aaf5251be14191f17e58f465de6a8a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5aaf5251be14191f17e58f465de6a8a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'alluvium carried down by the Himalayan rivers'),
            ('B', 'marine deposits of the Cretaceous period'),
            ('C', 'black soil deposited by the Deccan rivers'),
            ('D', 'aeolian sand of the Thar')
           ) as v(label, option_text)
 where q.question_hash = '5aaf5251be14191f17e58f465de6a8a6'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Khasi and Jaintia hills with the Shillong Plateau form part of which physiographic division of India?',
    'The North-Eastern Hills, also called the Purvanchal, include the Patkai, Naga, Manipur and Mizo hills along with the Shillong Plateau, and are separated from the Himalayan ranges by the Bengal gap.',
    'medium',
    'NCERT Class XI',
    null,
    '5cc7d321f32a60cd503178298b695f37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5cc7d321f32a60cd503178298b695f37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Deccan Plateau'),
            ('B', 'the North-Eastern Hills'),
            ('C', 'the Peninsular Plateau'),
            ('D', 'the Northern Plains')
           ) as v(label, option_text)
 where q.question_hash = '5cc7d321f32a60cd503178298b695f37'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Panchmarhi hills form the highest point of the:',
    'Panchmarhi at 1,050 metres is the highest point of the Satpura range, whose Maikal spur forms the northern edge of the Deccan Plateau.',
    'hard',
    'Standard Reference',
    null,
    'a0f8d4e0207faeedf441f56ceed5f565'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a0f8d4e0207faeedf441f56ceed5f565'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aravalli range'),
            ('B', 'Nilgiri hills'),
            ('C', 'Gondwana hills'),
            ('D', 'Maikal range of the Satpura')
           ) as v(label, option_text)
 where q.question_hash = 'a0f8d4e0207faeedf441f56ceed5f565'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The physiographic division of India that is bounded on the west by the Arabian Sea and on the east by the Bay of Bengal is the:',
    'The Peninsular Plateau is the broad tableland flanked by the Western Ghats and the Eastern Ghats, with the Arabian Sea to the west and the Bay of Bengal to the east.',
    'easy',
    'NCERT Class XI',
    null,
    '26e4bbf0537248ce131914ec0c943408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '26e4bbf0537248ce131914ec0c943408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Northern Plains'),
            ('B', 'Thar Desert'),
            ('C', 'North-Eastern Hills'),
            ('D', 'Peninsular Plateau')
           ) as v(label, option_text)
 where q.question_hash = '26e4bbf0537248ce131914ec0c943408'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The abyssal plain of the ocean floor lies at a depth of about:',
    'Below the continental slope lies the abyssal plain, the flattest and largest area of the ocean floor at depths of roughly 4,000 to 6,000 metres, covered by fine ooze.',
    'medium',
    'NCERT Class XI',
    null,
    '85576e99e85a45728c0bab287edf2dd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '85576e99e85a45728c0bab287edf2dd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '200 to 500 metres'),
            ('B', '1,000 to 2,000 metres'),
            ('C', '4,000 to 6,000 metres'),
            ('D', '10,000 to 11,000 metres')
           ) as v(label, option_text)
 where q.question_hash = '85576e99e85a45728c0bab287edf2dd5'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Atlantic Ocean has a higher average salinity than the Pacific Ocean mainly because it has:',
    'Salinity is controlled by evaporation and precipitation; the Atlantic loses more water by evaporation than it gains, and its narrower basin allows less freshening from river discharge, so it averages about 35 parts per thousand.',
    'easy',
    'NCERT Class XI',
    null,
    '9545897c42c3dc39d348ff3bf0179f7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9545897c42c3dc39d348ff3bf0179f7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'lower evaporation than precipitation'),
            ('B', 'a much larger inflow of river water'),
            ('C', 'greater precipitation over the ocean surface'),
            ('D', 'higher evaporation than precipitation')
           ) as v(label, option_text)
 where q.question_hash = '9545897c42c3dc39d348ff3bf0179f7d'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Mediterranean Sea is remarkable because it is:',
    'The Mediterranean is a semi-enclosed sea with a narrow outlet at Gibraltar, so intense evaporation makes its salinity very high, well above the average of the open ocean.',
    'medium',
    'NCERT Class XI',
    null,
    'a3eb26a2b8459e8e69f362415a4c055d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a3eb26a2b8459e8e69f362415a4c055d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a deep ocean basin of the Pacific'),
            ('B', 'almost landlocked, with exchange restricted to the Strait of Gibraltar'),
            ('C', 'a marginal sea of the Atlantic with free exchange of water'),
            ('D', 'a part of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'a3eb26a2b8459e8e69f362415a4c055d'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Spring tides occur during the:',
    'When the sun, moon and earth are in a straight line, as at the new and full moon, the solar and lunar tidal forces reinforce each other and produce spring tides of greatest range.',
    'easy',
    'NCERT Class XI',
    null,
    '39825ba4d5f7ca239c7a710d391548e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '39825ba4d5f7ca239c7a710d391548e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'solstices only'),
            ('B', 'new moon and full moon'),
            ('C', 'first and third quarter phases'),
            ('D', 'equinoxes only')
           ) as v(label, option_text)
 where q.question_hash = '39825ba4d5f7ca239c7a710d391548e4'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The thermohaline circulation of the ocean is also known as:',
    'Differences in temperature and salinity drive a slow global overturning of deep water from the North Atlantic towards the Pacific, the great ocean conveyor belt that also stores carbon in the deep ocean.',
    'medium',
    'Standard Reference',
    null,
    '65b702f2d7e94eacc88e8edc88f24c57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65b702f2d7e94eacc88e8edc88f24c57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the monsoon drift of the Indian Ocean'),
            ('B', 'the great ocean conveyor belt'),
            ('C', 'the subtropical gyre circulation'),
            ('D', 'the Antarctic Circumpolar Current')
           ) as v(label, option_text)
 where q.question_hash = '65b702f2d7e94eacc88e8edc88f24c57'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Caspian Sea is notable because it is:',
    'The Caspian Sea is the largest enclosed inland body of water, a saline lake fed by the Volga, the Ural and the Kura rivers, and its shores are shared by five countries.',
    'medium',
    'Standard Reference',
    null,
    '19e4c6955773f390b524ea67867ea80d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '19e4c6955773f390b524ea67867ea80d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a large lagoon of the Pacific'),
            ('B', 'a landlocked salt lake, the largest enclosed inland body of water'),
            ('C', 'a deep sea connected to the Atlantic Ocean'),
            ('D', 'a fjord of the Arctic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '19e4c6955773f390b524ea67867ea80d'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''tropical evergreen forest'' of India:',
    'The tropical evergreen forests need more than 200 cm of the rainfall and they are found in the Western Ghats, the Andaman and the Nicobar, the upper Assam, the Tamil Nadu and the coastal Karnataka.',
    'easy',
    'NCERT Class XI',
    null,
    '3e5901bc5f55323d2f6f8f0224d51849'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e5901bc5f55323d2f6f8f0224d51849'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gets more than 200 cm of the rainfall and is found in the Western Ghats, the Andaman and the North-East'),
            ('B', 'Gets 100 to 200 cm of the rainfall'),
            ('C', 'Is found in the Rajasthan'),
            ('D', 'Is found in the Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '3e5901bc5f55323d2f6f8f0224d51849'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''tropical deciduous forest'' of India:',
    'The tropical deciduous or the monsoon forests get 70 to 200 cm of the rainfall and the teak, the sal, the shisham and the sandalwood are the dominant species.',
    'easy',
    'NCERT Class XI',
    null,
    '2d0bc3fbec24049f4172d9009f19363e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2d0bc3fbec24049f4172d9009f19363e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gets more than 200 cm'),
            ('B', 'Gets less than 70 cm'),
            ('C', 'Is found only in the north-east'),
            ('D', 'Gets 70 to 200 cm of the rainfall and is dominated by the teak and the sal')
           ) as v(label, option_text)
 where q.question_hash = '2d0bc3fbec24049f4172d9009f19363e'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Western coastal forest'' of India:',
    'The western coastal forests get more than 250 cm of the rainfall with the evergreen trees, the laterite and the teak, and the canopy is dense and the commercial timber is the teak.',
    'medium',
    'NCERT Class XI',
    null,
    '83d61668e5cec77f54eed2abcdfd207e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '83d61668e5cec77f54eed2abcdfd207e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is found in the Ladakh'),
            ('B', 'Gets 250 cm of the rainfall with the evergreen trees and the laterite and the teak'),
            ('C', 'Gets less than 70 cm'),
            ('D', 'Is a mangrove forest')
           ) as v(label, option_text)
 where q.question_hash = '83d61668e5cec77f54eed2abcdfd207e'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''mangrove forest'' of the Sundarban:',
    'The Sundarban mangrove is formed in the delta of the Ganga, the Brahmaputra and the Meghna and the Rhizophora is the characteristic genus.',
    'medium',
    'NCERT Class XI',
    null,
    'd28e93ef50fd91b7986258ec3c26deb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd28e93ef50fd91b7986258ec3c26deb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the montane forest'),
            ('B', 'Is the tropical dry forest'),
            ('C', 'Is formed in the delta of the Ganga, the Brahmaputra and the Meghna with the Rhizophora'),
            ('D', 'Is a coniferous forest')
           ) as v(label, option_text)
 where q.question_hash = 'd28e93ef50fd91b7986258ec3c26deb3'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The alpine forests are:',
    'The montane or the alpine forests are found at a height of about 3,000 metres and above and they consist of the conifers, the deodar, the pine, the silver fir and the juniper.',
    'easy',
    'NCERT Class XI',
    null,
    'd696cd90189b6c189fc791f8a1b43036'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd696cd90189b6c189fc791f8a1b43036'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'found in the mountains at a height of 3,000 metres and above'),
            ('B', 'in the plains'),
            ('C', 'in the coastal areas'),
            ('D', 'in the desert')
           ) as v(label, option_text)
 where q.question_hash = 'd696cd90189b6c189fc791f8a1b43036'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Consider the following statements. Which of them is correct with regard to the Bhabar?',
    'The Bhabar is the pebbly tract at the foot of the Himalaya where the rivers lose their identity and the streams disappear and the Terai is the marshy tract where they reappear.',
    'medium',
    'NCERT Class XI',
    null,
    '27967a4be80ed1bdd8cffcc08203aa23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27967a4be80ed1bdd8cffcc08203aa23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bhabar is the fertile plain'),
            ('B', 'It is the mangrove belt'),
            ('C', 'It is the laterite region'),
            ('D', 'The Bhabar is the pebbly tract of the Himalayan foothills where the streams disappear')
           ) as v(label, option_text)
 where q.question_hash = '27967a4be80ed1bdd8cffcc08203aa23'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''black soil'' of the Deccan is also known as the:',
    'The black soil is also called the regur or the black cotton soil and it is ideal for the cotton and it is a clayey and the retentive soil.',
    'easy',
    'NCERT Class XI',
    null,
    '4751afb1894575fb1434a60bea4f16c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4751afb1894575fb1434a60bea4f16c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regur soil'),
            ('B', 'Laterite soil'),
            ('C', 'Red soil'),
            ('D', 'Alluvial soil')
           ) as v(label, option_text)
 where q.question_hash = '4751afb1894575fb1434a60bea4f16c7'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''laterite soil'' of India:',
    'The laterite is formed by the intense leaching and it is poor in the nitrogen and the phosphates but it is rich in the iron and the aluminium and it is used with the manures and the irrigation.',
    'easy',
    'NCERT Class XI',
    null,
    '44f22a8022f5d3e03116256079897a3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '44f22a8022f5d3e03116256079897a3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the alluvial soil of the Gangetic plain'),
            ('B', 'Is the soil of the Ladakh'),
            ('C', 'Is formed by the intense leaching of the rainfall and it is poor in the nitrogen and the phosphates'),
            ('D', 'Is the most fertile of India')
           ) as v(label, option_text)
 where q.question_hash = '44f22a8022f5d3e03116256079897a3a'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The saline soil is:',
    'The saline soil is found in the arid and the coastal regions and the areas of the flood plains and it is reclaimed with the gypsum and the organic manure.',
    'medium',
    'NCERT Class XI',
    null,
    '6ae2e378d632791f34c70634dd0a09c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6ae2e378d632791f34c70634dd0a09c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a forest soil'),
            ('B', 'found in the arid regions and the coastal areas and it is reclaimed with the gypsum and the manure'),
            ('C', 'the most fertile soil'),
            ('D', 'found in the wet areas')
           ) as v(label, option_text)
 where q.question_hash = '6ae2e378d632791f34c70634dd0a09c8'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Khadar'' and the ''Bhabar'' of the plains:',
    'The Bhabar is the older alluvium and the Khadar is the new alluvium of the flood plains and the Bhabar is the most fertile.',
    'medium',
    'NCERT Class XI',
    null,
    '722e1fdec1b22f2f9b44cbddda476f9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '722e1fdec1b22f2f9b44cbddda476f9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Khadar is the new alluvium of the flood plain and the Bhabar is the older alluvium above the flood level'),
            ('B', 'The Khadar is the older and the Bhabar the newer'),
            ('C', 'They are the same zone'),
            ('D', 'The Khadar is in the mountains')
           ) as v(label, option_text)
 where q.question_hash = '722e1fdec1b22f2f9b44cbddda476f9a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements is/are correct in relation to the Podu?',
    'The Podu, the shifting cultivation, is the dominant form in the Andhra Pradesh and the Bewar or the Dahiya in the Madhya Pradesh and the Bamil in the north-west.',
    'medium',
    'Standard Reference',
    null,
    '69507d0487cfc0e16428410e52a6192d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '69507d0487cfc0e16428410e52a6192d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a type of the soil'),
            ('B', 'The Podu is the shifting cultivation in the Andhra Pradesh and the Bewar in the Madhya Pradesh'),
            ('C', 'The Podu is the irrigation'),
            ('D', 'It is a variety of rice')
           ) as v(label, option_text)
 where q.question_hash = '69507d0487cfc0e16428410e52a6192d'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Rabi crops are:',
    'The Rabi crops are sown in the winter and the major ones are the wheat, the barley and the gram and the sowing is in October-November with the harvest in April-May.',
    'easy',
    'NCERT Class XI',
    null,
    '9e593fa38f1eca2199eea8dcfa2a2604'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9e593fa38f1eca2199eea8dcfa2a2604'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the monsoon crops'),
            ('B', 'the summer crops'),
            ('C', 'only the rice'),
            ('D', 'sown in the winter and the major ones are the wheat, the barley and the gram')
           ) as v(label, option_text)
 where q.question_hash = '9e593fa38f1eca2199eea8dcfa2a2604'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which crop is a ''cash crop'' of the Assam?',
    'The tea is the famous cash crop of the Assam and the state is the largest producer of the tea in India and the tea gardens are located in the Brahmaputra and the Surma valleys.',
    'easy',
    'Standard Reference',
    null,
    'f5c80e09167ae7a6d6e38e4ec76088c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f5c80e09167ae7a6d6e38e4ec76088c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Millets'),
            ('B', 'Barley'),
            ('C', 'Tea'),
            ('D', 'Wheat')
           ) as v(label, option_text)
 where q.question_hash = 'f5c80e09167ae7a6d6e38e4ec76088c3'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''rubber'' is grown in:',
    'The rubber is grown in the Kerala, the Tamil Nadu and the Karnataka and it needs a heavy rainfall, a high temperature and the well-drained soil.',
    'easy',
    'Standard Reference',
    null,
    '4fd46a0ba46d82f3ec21cb6f7e0c68f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4fd46a0ba46d82f3ec21cb6f7e0c68f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan and Gujarat'),
            ('B', 'West Bengal and Odisha'),
            ('C', 'Kerala, Tamil Nadu and Karnataka'),
            ('D', 'Punjab and Haryana')
           ) as v(label, option_text)
 where q.question_hash = '4fd46a0ba46d82f3ec21cb6f7e0c68f1'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Goa, the Kerala, the Karnataka and the Tamil Nadu are:',
    'The cashew is a tropical evergreen grown in the Goa, the Kerala, the Karnataka and the Tamil Nadu and the Andhra Pradesh with the Kerala leading in the production.',
    'medium',
    'Standard Reference',
    null,
    '44c78ec0530e2c58a1e91cfd9ecba02a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '44c78ec0530e2c58a1e91cfd9ecba02a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'grown only in the Andaman'),
            ('B', 'the cashew growing states'),
            ('C', 'grown in the Punjab'),
            ('D', 'a crop of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '44c78ec0530e2c58a1e91cfd9ecba02a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Arabica coffee is:',
    'The Arabica is the high-altitude variety and the Baba Budan Hills in the Karnataka is the famous native home of the coffee, while the Robusta is grown in the lower altitudes.',
    'hard',
    'Standard Reference',
    null,
    '45cd0345fe385dd878af52e41890b32c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '45cd0345fe385dd878af52e41890b32c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'grown in the plains of the Assam'),
            ('B', 'grown in the Nilgiris'),
            ('C', 'the Robusta'),
            ('D', 'grown at a higher altitude and the Robusta in the lower and the Baba Budan Hills is the famous one')
           ) as v(label, option_text)
 where q.question_hash = '45cd0345fe385dd878af52e41890b32c'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is correct in the case of the jalebi?',
    'The jalebi is the traditional variety of the sweet potato of the Uttar Pradesh and it is the most widely grown in the state.',
    'hard',
    'Standard Reference',
    null,
    '2bd4dbd4080a798e74ef2c4bbd53ebde'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2bd4dbd4080a798e74ef2c4bbd53ebde'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Jalebi is the traditional variety of the sweet potato of the Uttar Pradesh'),
            ('B', 'It is a variety of the rice'),
            ('C', 'It is a variety of the mango'),
            ('D', 'It is a millet')
           ) as v(label, option_text)
 where q.question_hash = '2bd4dbd4080a798e74ef2c4bbd53ebde'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is correct in the case of the lathyrus?',
    'The lathyrus, a pulse crop of the Uttar Pradesh, is the largest producer of the peas in the country.',
    'medium',
    'Standard Reference',
    null,
    'fdb21082f447a7e6987e8975e15755af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fdb21082f447a7e6987e8975e15755af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a variety of the mango'),
            ('B', 'The Lathyrus is a pulse crop of the Uttar Pradesh and it is the largest producer of the peas'),
            ('C', 'It is a variety of the wheat'),
            ('D', 'It is a cold water fish')
           ) as v(label, option_text)
 where q.question_hash = 'fdb21082f447a7e6987e8975e15755af'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements is/are correct in relation to the mango?',
    'The Uttar Pradesh is the largest producer of the mango and the Andhra Pradesh of the banana, and the India is the largest producer of the mango in the world.',
    'medium',
    'Standard Reference',
    null,
    '6f62b90329307184cad678b7fac3e817'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6f62b90329307184cad678b7fac3e817'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kerala is the largest producer of the mango'),
            ('B', 'The Tamil Nadu is the largest producer of the banana'),
            ('C', 'The Maharashtra is the largest producer of the mango'),
            ('D', 'The Uttar Pradesh is the largest producer of the mango and the Andhra Pradesh of the banana')
           ) as v(label, option_text)
 where q.question_hash = '6f62b90329307184cad678b7fac3e817'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Consider the following statements. Which of them is correct with regard to the orange?',
    'The Maharashtra, with the Nagpur, is the largest producer of the orange in India and the citrus in general, and the India is the largest producer of the citrus in the world.',
    'hard',
    'Standard Reference',
    null,
    '80582b607892d8848065689935ba8473'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '80582b607892d8848065689935ba8473'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The orange is the largest in the Tamil Nadu'),
            ('B', 'The orange is the largest in the Assam'),
            ('C', 'The orange is the largest producer in the Maharashtra and the largest producer of the citrus in India'),
            ('D', 'The orange is the largest in the Kerala')
           ) as v(label, option_text)
 where q.question_hash = '80582b607892d8848065689935ba8473'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements is/are correct in relation to the areca nut?',
    'The Karnataka is the largest producer of the areca nut with about 40 per cent of the production and the Kerala is the largest producer of the spices.',
    'medium',
    'Standard Reference',
    null,
    '7d8656ee3c88a1f99e802c0ba58a179a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7d8656ee3c88a1f99e802c0ba58a179a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Karnataka is the largest producer of the areca nut and the Kerala of the spices'),
            ('B', 'The Kerala is the largest producer of the areca nut'),
            ('C', 'The Tamil Nadu is the largest producer of the areca nut'),
            ('D', 'The Maharashtra is the largest producer of the areca nut')
           ) as v(label, option_text)
 where q.question_hash = '7d8656ee3c88a1f99e802c0ba58a179a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The wonder of the Indian agriculture is:',
    'The horticulture, with the fruits and the vegetables, is the wonder of the Indian agriculture and the India is the largest producer of the fruits and the vegetables in the world.',
    'medium',
    'Standard Reference',
    null,
    '642dc1bd42ac4207ae625b562561b934'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '642dc1bd42ac4207ae625b562561b934'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the wheat'),
            ('B', 'the tea'),
            ('C', 'the horticulture and the India is the largest producer of the fruits and the vegetables'),
            ('D', 'the rice')
           ) as v(label, option_text)
 where q.question_hash = '642dc1bd42ac4207ae625b562561b934'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Golden Revolution'' in India refers to:',
    'The Golden Revolution of 1991-2003 covered the horticulture, the honey, the poultry, the milk and the eggs and it was led by the M.S. Swaminathan.',
    'medium',
    'Standard Reference',
    null,
    'ef11b4a39a65147b41df84897a6e3a69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ef11b4a39a65147b41df84897a6e3a69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The foodgrain production'),
            ('B', 'The white revolution'),
            ('C', 'The non-conventional energy'),
            ('D', 'The horticulture and the honey and the milk and the eggs')
           ) as v(label, option_text)
 where q.question_hash = 'ef11b4a39a65147b41df84897a6e3a69'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Evergreen Revolution'' was advocated by:',
    'The Evergreen Revolution, a term coined by the M.S. Swaminathan, meant a revolution in the productivity that is sustainable and it was about the mixed farming of the nutrients and the biofertilisers.',
    'hard',
    'Standard Reference',
    null,
    'c2ee9fffdd2f1908cbf027e08833121d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c2ee9fffdd2f1908cbf027e08833121d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M.S. Swaminathan'),
            ('B', 'Norman Borlaug'),
            ('C', 'Willy Brown'),
            ('D', 'M.S. Swaminathan and the Norman Borlaug')
           ) as v(label, option_text)
 where q.question_hash = 'c2ee9fffdd2f1908cbf027e08833121d'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Blue Revolution'' in India:',
    'The Blue Revolution refers to the rapid increase in the fish production, the shrimp and the fish culture, and the Dr. Arun Krishnan is called the father of the Blue Revolution.',
    'medium',
    'Standard Reference',
    null,
    '70774614977f1356ddc624757461575a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '70774614977f1356ddc624757461575a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the honey production'),
            ('B', 'Is the rapid increase in the fish production'),
            ('C', 'Is the milk production'),
            ('D', 'Is the egg production')
           ) as v(label, option_text)
 where q.question_hash = '70774614977f1356ddc624757461575a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Verghese Kurien is:',
    'The Verghese Kurien is the father of the White Revolution and the D. Sundaram, a marine biologist of the Tamil Nadu, is known as the father of the Blue Revolution in India.',
    'medium',
    'Standard Reference',
    null,
    '6fb0a7cc2b6f9e02aedda31c7e704498'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6fb0a7cc2b6f9e02aedda31c7e704498'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the father of the Green Revolution'),
            ('B', 'the father of the Golden Revolution'),
            ('C', 'the father of the White Revolution and the D. Sundaram of the Blue Revolution'),
            ('D', 'the father of the Blue Revolution')
           ) as v(label, option_text)
 where q.question_hash = '6fb0a7cc2b6f9e02aedda31c7e704498'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Assam and the West Bengal are:',
    'The Assam and the West Bengal are the largest tea producers and the tea was introduced in the Assam in the 1830s by the British and the Robert Bruce discovered it in 1823.',
    'medium',
    'Standard Reference',
    null,
    '5c818e36b73aad53e19a3fba2291402a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5c818e36b73aad53e19a3fba2291402a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest tea producers and the tea was first grown in the Assam by the British'),
            ('B', 'the largest producer of the tea'),
            ('C', 'first grown in the Darjeeling'),
            ('D', 'a native crop of the India')
           ) as v(label, option_text)
 where q.question_hash = '5c818e36b73aad53e19a3fba2291402a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements regarding the sugarcane is correct?',
    'The Uttar Pradesh is the largest producer of the sugarcane in India, followed by the Maharashtra, and the crop needs a hot and humid climate with the fertile soil and the ample irrigation.',
    'easy',
    'Standard Reference',
    null,
    'abe4d1f4d52409d684ac66d91859d039'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'abe4d1f4d52409d684ac66d91859d039'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Maharashtra is the largest producer of the sugarcane'),
            ('B', 'The Tamil Nadu is the largest producer of the sugarcane'),
            ('C', 'The sugarcane is a temperate crop'),
            ('D', 'The Uttar Pradesh is the largest producer of the sugarcane and the tropical climate with the fertile soil suits it')
           ) as v(label, option_text)
 where q.question_hash = 'abe4d1f4d52409d684ac66d91859d039'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements regarding the jute is correct?',
    'The jute, called the golden fibre, is the main cash crop of the West Bengal and the Bihar and it needs the alluvial soil of the Gangetic delta and the humid climate.',
    'easy',
    'Standard Reference',
    null,
    '70ebd3f490727dfb2253f6fe54604e17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '70ebd3f490727dfb2253f6fe54604e17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a temperate crop'),
            ('B', 'The jute is the ''golden fibre'' and the West Bengal and the Bihar are the main producers'),
            ('C', 'It is the silver fibre of the Assam'),
            ('D', 'It is a tropical fibre of the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '70ebd3f490727dfb2253f6fe54604e17'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements regarding the cotton is correct?',
    'The Gujarat and the Maharashtra are the largest cotton producers and the crop needs a well-drained black soil, high temperature and 150 to 200 mm of the rainfall.',
    'medium',
    'Standard Reference',
    null,
    'd2dd2744ef19f3ea0dcbacf454f4b13b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd2dd2744ef19f3ea0dcbacf454f4b13b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cotton needs a cold climate'),
            ('B', 'The Kerala is the largest producer of the cotton'),
            ('C', 'The Gujarat and the Maharashtra are the largest cotton producers and the crop needs a black soil with a 21 to 30 degree C temperature'),
            ('D', 'The Punjab is the largest producer of the cotton')
           ) as v(label, option_text)
 where q.question_hash = 'd2dd2744ef19f3ea0dcbacf454f4b13b'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Uttar Pradesh and the Punjab are the largest wheat producers and the crop is:',
    'The Uttar Pradesh and the Punjab are the largest wheat producers and the wheat is a rabi crop needing a cool growing season with the mean temperature of 10 to 15 degree C.',
    'easy',
    'Standard Reference',
    null,
    '681c622e6eb92d48f834af6604eb8bff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '681c622e6eb92d48f834af6604eb8bff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a winter crop'),
            ('B', 'the largest producer of the wheat'),
            ('C', 'a monsoon crop'),
            ('D', 'The wheat needs a temperature of 40 degrees')
           ) as v(label, option_text)
 where q.question_hash = '681c622e6eb92d48f834af6604eb8bff'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The West Bengal and the Uttar Pradesh are:',
    'The West Bengal, the Uttar Pradesh and the Punjab are the largest rice producers and the crop needs the highest rainfall, the clayey soil and the assured irrigation.',
    'medium',
    'Standard Reference',
    null,
    'd75cc132534763b8b45a37138fc3b03f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd75cc132534763b8b45a37138fc3b03f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a rabi crop'),
            ('B', 'the largest rice producers and the crop needs the highest rainfall and the alluvial soil'),
            ('C', 'the largest producer of the rice'),
            ('D', 'The rice needs a dry climate')
           ) as v(label, option_text)
 where q.question_hash = 'd75cc132534763b8b45a37138fc3b03f'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Madhya Pradesh and the Maharashtra are the largest producers of the pulses and the crop is:',
    'The Madhya Pradesh and the Maharashtra are the largest producers of the pulses and the gram, the tur and the urad are the major varieties.',
    'medium',
    'Standard Reference',
    null,
    '2e0899747d5019906f76c8d97a7fe3ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e0899747d5019906f76c8d97a7fe3ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest producer of the pulses'),
            ('B', 'the monsoon crops'),
            ('C', 'the summer crops'),
            ('D', 'mostly a rabi crop')
           ) as v(label, option_text)
 where q.question_hash = '2e0899747d5019906f76c8d97a7fe3ab'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is correct in the case of the oilseeds?',
    'The Rajasthan is the largest producer of the oilseeds and the mustard, the groundnut and the soybean are the main sources, and the soybean is largely the kharif crop.',
    'medium',
    'Standard Reference',
    null,
    '9c1757e9cad368db9c9c0d4cd020b7e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9c1757e9cad368db9c9c0d4cd020b7e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oilseeds are the monsoon crops only'),
            ('B', 'The Rajasthan is the largest producer of the oilseeds and the mustard and the groundnut are the main sources'),
            ('C', 'The Kerala is the largest producer of the oilseeds'),
            ('D', 'The Tamil Nadu is the largest producer of the oilseeds')
           ) as v(label, option_text)
 where q.question_hash = '9c1757e9cad368db9c9c0d4cd020b7e5'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Food Security Act of 2013 provides:',
    'The National Food Security Act of 2013 provides for the food security and the nutrition and it institutionalises the right to food with the entitlements of about 75 per cent of the rural and 50 per cent of the urban population.',
    'easy',
    'Standard Reference',
    null,
    '5c58ae729f1667d7a431508c7e0fb162'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c58ae729f1667d7a431508c7e0fb162'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a trade law'),
            ('B', 'for the PDS of the states only'),
            ('C', 'for the food security and the nutrition and it institutionalises the right to food'),
            ('D', 'for the subsidies only')
           ) as v(label, option_text)
 where q.question_hash = '5c58ae729f1667d7a431508c7e0fb162'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The MSP for the 22 mandated:',
    'The MSP is recommended by the Commission for Agricultural Costs and Prices and though it is announced every season there is no legal obligation on any agency to purchase at that price.',
    'medium',
    'Standard Reference',
    null,
    '43e7114925f889c046affd0861e7c6ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '43e7114925f889c046affd0861e7c6ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'crops is recommended by the CACP and there is no legal obligation to buy at that price'),
            ('B', 'fixed by the Parliament and it is mandatory'),
            ('C', 'only to the wheat and the rice'),
            ('D', 'paid only in the Punjab and the Haryana')
           ) as v(label, option_text)
 where q.question_hash = '43e7114925f889c046affd0861e7c6ea'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The Isabgol or the psyllium is grown in the Rajasthan and is used:',
    'The Isabgol, a important cash crop of the Rajasthan, is used in the pharmaceutical and the food industries and the India is the largest producer and the exporter of it.',
    'medium',
    'Standard Reference',
    null,
    '74075f274632c8a07f8621f045c41782'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '74075f274632c8a07f8621f045c41782'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a variety of the rice'),
            ('B', 'a cold water fish'),
            ('C', 'a variety of the wheat'),
            ('D', 'in the pharma and the food')
           ) as v(label, option_text)
 where q.question_hash = '74075f274632c8a07f8621f045c41782'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Kinnow'' is:',
    'The Kinnow, a hybrid of the lemon and the orange, is the citrus fruit of the Punjab and the Rajasthan and the Nagpur in the Maharashtra is the largest citrus producing region.',
    'hard',
    'Standard Reference',
    null,
    '8c773ddde2d222bdbe137aed0bd137aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8c773ddde2d222bdbe137aed0bd137aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A variety of the rice'),
            ('B', 'A breed of the cattle'),
            ('C', 'A citrus fruit of the Punjab and the Rajasthan'),
            ('D', 'A variety of the apple')
           ) as v(label, option_text)
 where q.question_hash = '8c773ddde2d222bdbe137aed0bd137aa'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ancient Indian caravanserai was:',
    'The caravanserai of the ancient India was a place where the traders and their animals could rest and the water and the food were provided and it was also a centre of the trade.',
    'medium',
    'Standard Reference',
    null,
    '001152fcd46836e5160aa68cac835596'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '001152fcd46836e5160aa68cac835596'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a stopover for the traders with the water and the rest house'),
            ('B', 'a fort for the horses'),
            ('C', 'a temple of the traders'),
            ('D', 'a customs house')
           ) as v(label, option_text)
 where q.question_hash = '001152fcd46836e5160aa68cac835596'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Gondwana is the ancient supercontinent that included:',
    'The Gondwana was the ancient supercontinent that included India, Africa, South America, Antarctica and Australia and the Indian Gondwana fragment is the Deccan.',
    'easy',
    'Standard Reference',
    null,
    'ba5a9ccb12e35ee9f1ffa6da73c03844'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ba5a9ccb12e35ee9f1ffa6da73c03844'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a lake'),
            ('B', 'a mountain range of the Himalaya'),
            ('C', 'a forest type'),
            ('D', 'India')
           ) as v(label, option_text)
 where q.question_hash = 'ba5a9ccb12e35ee9f1ffa6da73c03844'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Tethys'' sea:',
    'The Tethys was the ancient sea between the Gondwana and the Laurasia and its closure about 50 million years ago raised the Himalayas.',
    'medium',
    'Standard Reference',
    null,
    '448c3e7a8e72fcafcbad52f73290d8e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '448c3e7a8e72fcafcbad52f73290d8e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the sea of the Deccan'),
            ('B', 'Was the ancient sea between the Gondwana and the Laurasia and the Himalaya arose from its closure'),
            ('C', 'Was the sea of the Jurassic only'),
            ('D', 'Was in the Southern Hemisphere')
           ) as v(label, option_text)
 where q.question_hash = '448c3e7a8e72fcafcbad52f73290d8e5'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Pangaea'' was:',
    'The Pangaea was the single supercontinent that existed about 250 million years ago in the Mesozoic era and its breakup is the base of the continental drift theory.',
    'easy',
    'Standard Reference',
    null,
    'dba0f501c887dc81bfceb9d91a8e6382'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dba0f501c887dc81bfceb9d91a8e6382'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A single supercontinent of the Mesozoic era'),
            ('B', 'A continental drift theory of Wegener'),
            ('C', 'An ancient sea'),
            ('D', 'A mountain range')
           ) as v(label, option_text)
 where q.question_hash = 'dba0f501c887dc81bfceb9d91a8e6382'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''block mountains'' of the world:',
    'The block mountains include the Aravalli, the Vosges, the Black Forest, the Appalachians, the Western Ghats and the Great Dividing Range and they are the old and the eroded mountains.',
    'medium',
    'Standard Reference',
    null,
    'f72743f7b2d9b8b5f84f494302503e05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f72743f7b2d9b8b5f84f494302503e05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include only the Rockies'),
            ('B', 'Include the Aravalli, the Vosges, the Black Forest and the Appalachians'),
            ('C', 'Include the Himalaya and the Alps'),
            ('D', 'Include only the Western Ghats')
           ) as v(label, option_text)
 where q.question_hash = 'f72743f7b2d9b8b5f84f494302503e05'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Himalaya, the Alps, the Andes, the Rockies and the Urals are:',
    'The young fold mountains are the Himalaya, the Alps, the Andes, the Rockies and the Urals, and the old fold mountains are the Appalachians and the Scottish Highlands.',
    'easy',
    'Standard Reference',
    null,
    '16021cd4c278940a82f52de9564bd25b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16021cd4c278940a82f52de9564bd25b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'all the old fold mountains'),
            ('B', 'the block mountains'),
            ('C', 'the volcanic mountains'),
            ('D', 'the young fold mountains')
           ) as v(label, option_text)
 where q.question_hash = '16021cd4c278940a82f52de9564bd25b'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Kashmir valley is:',
    'The Kashmir valley is a structural basin and the Kullu, the Kangra, the Vale of Kashmir and the Assam are the intermontane basins of the Himalayan range.',
    'medium',
    'Standard Reference',
    null,
    'daeb36bbe1834b448fa86abc16e250b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'daeb36bbe1834b448fa86abc16e250b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a structural basin'),
            ('B', 'all the river valleys'),
            ('C', 'a structural basin and the Kullu, the Kangra and the Assam are the intermontane basins'),
            ('D', 'a volcanic basin')
           ) as v(label, option_text)
 where q.question_hash = 'daeb36bbe1834b448fa86abc16e250b9'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Consider the following statements. Which of them is correct with regard to the Chambal?',
    'The Chambal, with the Banas, the Kali Sindh and the Parbati, has the largest basin in India and the Chambal valley is the home of the Bhimbetka rock shelters.',
    'medium',
    'Standard Reference',
    null,
    'f1f1322a21ae7a93e4946167122a8a3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f1f1322a21ae7a93e4946167122a8a3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chambal has the smallest basin in India'),
            ('B', 'The Chambal has the largest basin in India with the tributaries of the Banas, the Kali Sindh and the Parbati'),
            ('C', 'The Chambal is a west flowing river'),
            ('D', 'The Chambal is a tributary of the Godavari')
           ) as v(label, option_text)
 where q.question_hash = 'f1f1322a21ae7a93e4946167122a8a3e'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Bhabaratma is:',
    'The Bhabaratma is the water divide of the Peninsular India between the Arabian Sea and the Bay of Bengal and it runs parallel to the Western Ghats.',
    'medium',
    'Standard Reference',
    null,
    '0e8fd976218d5e0d0210690ca0bdd7b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e8fd976218d5e0d0210690ca0bdd7b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a river'),
            ('B', 'a mountain range'),
            ('C', 'a plateau'),
            ('D', 'the water divide between the Arabian Sea and the Bay of Bengal in the Peninsular India')
           ) as v(label, option_text)
 where q.question_hash = '0e8fd976218d5e0d0210690ca0bdd7b7'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Malwa plateau is:',
    'The Malwa plateau is a volcanic formation and the Vindhya range is the residual of the Gondwana and the Satpura is the residual of the volcanic rifts of the Deccan.',
    'medium',
    'Standard Reference',
    null,
    '6482cffc8c2ac38f62393d8c7f2f4e4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6482cffc8c2ac38f62393d8c7f2f4e4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a volcanic formation and the Vindhyas are the residual of the Gondwana'),
            ('B', 'a sedimentary basin'),
            ('C', 'a part of the Deccan trap'),
            ('D', 'a coastal plain')
           ) as v(label, option_text)
 where q.question_hash = '6482cffc8c2ac38f62393d8c7f2f4e4f'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Consider the following statements. Which of them is correct with regard to the Meghalaya?',
    'The Meghalaya plateau was carved out of the erosional action of the Brahmaputra and the Shillong peak, the highest point of the Eastern hills, is at 1,960 metres.',
    'medium',
    'Standard Reference',
    null,
    'f4b1ecc43a81a827aaab80d2a873da60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f4b1ecc43a81a827aaab80d2a873da60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Shillong peak is in the Western Ghats'),
            ('B', 'The Meghalaya is a coastal plain'),
            ('C', 'The Meghalaya is a plateau carved out by the erosional action of the Brahmaputra and the Shillong is the highest point of the Eastern hills at 1,960 m'),
            ('D', 'The Meghalaya is a part of the Vindhya range')
           ) as v(label, option_text)
 where q.question_hash = 'f4b1ecc43a81a827aaab80d2a873da60'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Chota Nagpur plateau is:',
    'The Chota Nagpur plateau, the oldest landmass of India, is one of the richest mineral belts with the coal, the iron ore, the manganese and the mica.',
    'medium',
    'Standard Reference',
    null,
    '229aae4cbae9d4e60b75deade8c0a314'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '229aae4cbae9d4e60b75deade8c0a314'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a coastal plain'),
            ('B', 'the oldest landmass and it is rich in the minerals'),
            ('C', 'the youngest fold mountain'),
            ('D', 'a part of the Deccan trap')
           ) as v(label, option_text)
 where q.question_hash = '229aae4cbae9d4e60b75deade8c0a314'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Peninsular India is:',
    'The Peninsular India, the oldest landmass, is a great tableland and the Deccan trap of the volcanic origin is the most important part of it.',
    'easy',
    'NCERT Class XI',
    null,
    'fdaee5929e3eae8cd6cd4596dad49546'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fdaee5929e3eae8cd6cd4596dad49546'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the youngest fold mountain'),
            ('B', 'the Indo-Gangetic plain'),
            ('C', 'a raised block of the Himalaya'),
            ('D', 'the oldest landmass and it is a tableland with the Deccan trap')
           ) as v(label, option_text)
 where q.question_hash = 'fdaee5929e3eae8cd6cd4596dad49546'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Deccan trap'' is:',
    'The Deccan trap is the volcanic formation of the western Deccan of the Tertiary period and it was formed by the enormous volcanic eruptions and the weathering of the basalt has given the black soil.',
    'medium',
    'Standard Reference',
    null,
    'acbd02583d8b54102558efb39b96f109'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'acbd02583d8b54102558efb39b96f109'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A group of the Gondwana rocks'),
            ('B', 'A river system'),
            ('C', 'The volcanic formation of the western Deccan of the Tertiary period'),
            ('D', 'A fold mountain')
           ) as v(label, option_text)
 where q.question_hash = 'acbd02583d8b54102558efb39b96f109'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Cardamom hills are:',
    'The Cardamom hills, the higher peaks of the Western Ghats in the Kerala, are the largest producer of the cardamom in the world.',
    'medium',
    'Standard Reference',
    null,
    'f820df8d6cf19d91e8b2606596c98617'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f820df8d6cf19d91e8b2606596c98617'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the higher peaks of the Western Ghats in the Kerala and they are the largest producer of the cardamom'),
            ('B', 'in the Nilgiris'),
            ('C', 'the highest of the Himalaya'),
            ('D', 'in the Aravalli')
           ) as v(label, option_text)
 where q.question_hash = 'f820df8d6cf19d91e8b2606596c98617'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Jaintia hills are:',
    'The Jaintia hills are the southernmost extension of the Khasi hills of the Meghalaya and they are separated from the Khasi hills by the Shillong plateau.',
    'hard',
    'Standard Reference',
    null,
    'b52ce66bc1b40acb61dcefd893bd2c4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b52ce66bc1b40acb61dcefd893bd2c4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Ladakh'),
            ('B', 'the southernmost extension of the Khasi hills of the Meghalaya'),
            ('C', 'in the Assam'),
            ('D', 'in the Arunachal')
           ) as v(label, option_text)
 where q.question_hash = 'b52ce66bc1b40acb61dcefd893bd2c4f'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Khamm and the Khasi hills are:',
    'The Khamm and the Khasi hills are the outliers of the Meghalaya plateau and they are separated by the Shillong plateau with the Dieng and the Kopili valleys.',
    'hard',
    'Standard Reference',
    null,
    '7d102d8058c580e3e9ec140c111be5a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7d102d8058c580e3e9ec140c111be5a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the outliers of the Meghalaya plateau'),
            ('B', 'in the Rajasthan'),
            ('C', 'in the Ladakh'),
            ('D', 'the highest of the peninsula')
           ) as v(label, option_text)
 where q.question_hash = '7d102d8058c580e3e9ec140c111be5a8'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'In the context of the Purvanchal, which of the following is correct?',
    'The Patkai, the Naga, the Mizo and the Manipur hills together with the associated rivers form the Purvanchal or the eastern mountain range of India.',
    'medium',
    'Standard Reference',
    null,
    'c8194e20781bc15bf1eacb966946130e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c8194e20781bc15bf1eacb966946130e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Purvanchal is the western Ghats'),
            ('B', 'The Purvanchal is the Deccan plateau'),
            ('C', 'The Purvanchal is a part of the Himalaya'),
            ('D', 'The Patkai hills, the Naga hills, the Mizo hills and the Manipur hills form the Purvanchal')
           ) as v(label, option_text)
 where q.question_hash = 'c8194e20781bc15bf1eacb966946130e'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Consider the following statements. Which of them is correct with regard to the Vindhya?',
    'The Vindhyas are the old fold mountains that run across the central India and they separate the northern plain from the Deccan plateau.',
    'medium',
    'Standard Reference',
    null,
    'a61ab5cd9460a5623216fdb8c671c3cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a61ab5cd9460a5623216fdb8c671c3cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the western Ghats'),
            ('B', 'They are the Satpuras'),
            ('C', 'The Vindhyas are the old fold mountains of the central India and they separate the Ganga plain from the Deccan'),
            ('D', 'They are the youngest fold mountains')
           ) as v(label, option_text)
 where q.question_hash = 'a61ab5cd9460a5623216fdb8c671c3cb'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Aravallis are:',
    'The Aravallis, the oldest fold mountains, run from Gujarat through Rajasthan to the Delhi region with the highest peak of the Guru Shikhar at 1,722 metres.',
    'easy',
    'Standard Reference',
    null,
    '1dead480fd8d54ced9a780c4baf35b02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1dead480fd8d54ced9a780c4baf35b02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the block mountains of the east'),
            ('B', 'the offshoots of the Himalaya'),
            ('C', 'the oldest fold mountains and they run from Gujarat to Delhi'),
            ('D', 'the youngest fold mountains')
           ) as v(label, option_text)
 where q.question_hash = '1dead480fd8d54ced9a780c4baf35b02'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which of the following is correct in the case of the Jaisalmer?',
    'The Jaisalmer is a physiographic region of the western Rajasthan with the Longewala, at 1,050 metres, as the highest point.',
    'hard',
    'Standard Reference',
    null,
    '3e4264c0068c375f969df220b401c9b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3e4264c0068c375f969df220b401c9b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a river valley'),
            ('B', 'It is a hill range of the Eastern Ghats'),
            ('C', 'It is a plateau of the Deccan'),
            ('D', 'The Jaisalmer is a physiographic region of the western Rajasthan and the Longewala is the highest point')
           ) as v(label, option_text)
 where q.question_hash = '3e4264c0068c375f969df220b401c9b8'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Telangana plateau is:',
    'The Telangana plateau, the largest of the peninsular plateaus, is the main drainage basin of the Godavari and the Krishna and it slopes eastward.',
    'medium',
    'Standard Reference',
    null,
    'aa9e50f25baf6c9bd5a8f88f04ab7047'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aa9e50f25baf6c9bd5a8f88f04ab7047'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the main drainage basin of the Godavari and the Krishna'),
            ('B', 'the main basin of the Narmada'),
            ('C', 'the main basin of the Kaveri'),
            ('D', 'the main basin of the Tapti')
           ) as v(label, option_text)
 where q.question_hash = 'aa9e50f25baf6c9bd5a8f88f04ab7047'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which of the following is correct in the case of the Kutch?',
    'The Kutch is the peninsula of the Gujarat surrounded by the Rann of Kutch, the Gulf of Kutch and the Arabian Sea, and it is separated from the mainland by the Nal Sarovar.',
    'medium',
    'Standard Reference',
    null,
    'cdcfea26f0f7f1ab9509b88f14ffc721'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cdcfea26f0f7f1ab9509b88f14ffc721'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a river valley of the Assam'),
            ('B', 'The Kutch is the peninsula of the Gujarat between the Rann, the Gulf of Kutch and the Arabian Sea'),
            ('C', 'It is an island of the Tamil Nadu'),
            ('D', 'It is a district of the Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'cdcfea26f0f7f1ab9509b88f14ffc721'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Kathiawar'' peninsula:',
    'The Kathiawar or the Saurashtra peninsula is the part of the Gujarat between the Gulf of Kutch and the Gulf of Khambhat, and it is connected by the small isthmus of the Gedi.',
    'hard',
    'Standard Reference',
    null,
    '09e431aa7e728f8796da6c0392bf2c56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '09e431aa7e728f8796da6c0392bf2c56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a part of the Kathmandu valley'),
            ('B', 'Is the southern tip of the peninsula'),
            ('C', 'Is the part of the Gujarat between the Gulf of Kutch and the Gulf of Khambhat'),
            ('D', 'Is in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '09e431aa7e728f8796da6c0392bf2c56'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which of the following is correct in the case of the structural basin?',
    'The Kashmir valley is a synclinal depression filled with the Karewa sediments, the remnant of a vast lake that once occupied the valley.',
    'medium',
    'Standard Reference',
    null,
    '2285c94f33495b11b83d56700c2ac03b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2285c94f33495b11b83d56700c2ac03b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a structural basin of the synclinal depression of the Karewa'),
            ('B', 'a volcanic basin'),
            ('C', 'a river valley of the Assam'),
            ('D', 'a part of the Deccan')
           ) as v(label, option_text)
 where q.question_hash = '2285c94f33495b11b83d56700c2ac03b'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Garhwal Himalaya is:',
    'The Garhwal Himalaya is the central division of the Himalaya and it has the Kailash and the Gangotri groups of the peaks, with the Nanda Devi and the Trishul.',
    'hard',
    'Standard Reference',
    null,
    '4a0394354c63933ce50310ee1c8ad94b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a0394354c63933ce50310ee1c8ad94b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the westernmost division'),
            ('B', 'the easternmost division'),
            ('C', 'only the Nanda Devi group'),
            ('D', 'the central division of the Himalaya and it has the Kailash and the Gangotri groups of the peaks')
           ) as v(label, option_text)
 where q.question_hash = '4a0394354c63933ce50310ee1c8ad94b'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Kanchenjunga is:',
    'The Kanchenjunga, at 7,698 metres, is the highest peak of the Eastern Himalaya and the Eastern division is the last of the three divisions of the Himalaya.',
    'medium',
    'Standard Reference',
    null,
    '8114e02ad13174868239741c98fc0340'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8114e02ad13174868239741c98fc0340'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the only peak of the Purvanchal'),
            ('B', 'the highest peak of the Eastern Himalaya and the Eastern division is the last of the Himalayan divisions'),
            ('C', 'the highest peak of the world'),
            ('D', 'the highest of the Western Himalaya')
           ) as v(label, option_text)
 where q.question_hash = '8114e02ad13174868239741c98fc0340'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Narmada is:',
    'The Narmada, about 1,312 km long, is the largest of the west flowing rivers and the largest river basin in India after the Ganga.',
    'medium',
    'Standard Reference',
    null,
    'd03d42c9a5cc13b645a2f717978c3d6b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd03d42c9a5cc13b645a2f717978c3d6b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the longest river of India'),
            ('B', 'It is the largest of the east flowing rivers'),
            ('C', 'It is the largest river of the Deccan'),
            ('D', 'The Narmada is the largest of the west flowing rivers and the largest basin in India after the Ganga')
           ) as v(label, option_text)
 where q.question_hash = 'd03d42c9a5cc13b645a2f717978c3d6b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Consider the following statements. Which of them is correct with regard to the Tapi?',
    'The Tapi, about 724 km long, is the second largest of the west flowing rivers and it flows in a parallel rift valley to the Narmada with the two meeting at the Gulf of Khambhat.',
    'medium',
    'Standard Reference',
    null,
    '2d1051cb7ad272cdaf543ade9f19af41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2d1051cb7ad272cdaf543ade9f19af41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tapi is the second largest of the west flowing rivers and it flows in a parallel rift to the Narmada'),
            ('B', 'It is the largest of the west flowing rivers'),
            ('C', 'It flows into the Bay of Bengal'),
            ('D', 'It is a tributary of the Godavari')
           ) as v(label, option_text)
 where q.question_hash = '2d1051cb7ad272cdaf543ade9f19af41'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following is correct in the case of the Mahanadi?',
    'The Mahanadi, about 851 km, is the fourth longest river of India and the largest of the east flowing rivers and it is called the Dakshina Ganga of the south.',
    'medium',
    'Standard Reference',
    null,
    '917f5d04da53b31693bb422149899069'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '917f5d04da53b31693bb422149899069'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the largest of the west flowing rivers'),
            ('B', 'It flows into the Arabian Sea'),
            ('C', 'The Mahanadi is the fourth longest river of India and the largest of the east flowing rivers'),
            ('D', 'It is the longest river of India')
           ) as v(label, option_text)
 where q.question_hash = '917f5d04da53b31693bb422149899069'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Godavari is the longest of the peninsular rivers and it is called:',
    'The Godavari, about 1,465 km, is the longest of the peninsular rivers and it is popularly called the Dakshin Ganga or the Ganga of the south.',
    'easy',
    'Standard Reference',
    null,
    'd3744719d353d4a08b7a0abdb52eafcd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd3744719d353d4a08b7a0abdb52eafcd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a tributary of the Krishna'),
            ('B', 'the Dakshin Ganga'),
            ('C', 'the longest river of India'),
            ('D', 'the longest of the west flowing rivers')
           ) as v(label, option_text)
 where q.question_hash = 'd3744719d353d4a08b7a0abdb52eafcd'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Krishna is the second longest of the peninsular rivers and it has:',
    'The Krishna, about 1,400 km, is the second longest of the peninsular rivers and it has a large delta with the Godavari.',
    'medium',
    'Standard Reference',
    null,
    'fa300af87d5d108371f16c9b80ab1c64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fa300af87d5d108371f16c9b80ab1c64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'it flows into the Arabian Sea'),
            ('B', 'a tributary of the Kaveri'),
            ('C', 'the delta with the Godavari'),
            ('D', 'the longest of the peninsular rivers')
           ) as v(label, option_text)
 where q.question_hash = 'fa300af87d5d108371f16c9b80ab1c64'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Kaveri is the fourth longest of the peninsular rivers and it forms:',
    'The Kaveri, about 800 km, is the fourth longest of the peninsular rivers and it forms a large delta with its distributaries.',
    'medium',
    'Standard Reference',
    null,
    '535f515d11c5a518ffc74cc14956c638'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '535f515d11c5a518ffc74cc14956c638'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a tributary of the Godavari'),
            ('B', 'the delta with the Cauvery'),
            ('C', 'the longest of the peninsular rivers'),
            ('D', 'it flows into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '535f515d11c5a518ffc74cc14956c638'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tungabhadra'' is:',
    'The Tungabhadra, about 724 km, is a tributary of the Krishna and the Penna, the Penne and the Javara are its chief tributaries.',
    'hard',
    'Standard Reference',
    null,
    'dc98cb183449b52d37548cba002b25d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dc98cb183449b52d37548cba002b25d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A tributary of the Krishna and the Penna is its other chief tributary'),
            ('B', 'A tributary of the Godavari'),
            ('C', 'A west flowing river of the north'),
            ('D', 'A tributary of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'dc98cb183449b52d37548cba002b25d8'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Periyar'' is:',
    'The Periyar, the largest river of the Kerala, is the lifeline of the state and the Paravur is its major distributary.',
    'medium',
    'Standard Reference',
    null,
    '6a008422001640bb57c76d0954481cbf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a008422001640bb57c76d0954481cbf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The longest river of the Tamil Nadu'),
            ('B', 'A tributary of the Godavari'),
            ('C', 'A river of the Rajasthan'),
            ('D', 'The river of Kerala that is the largest of the state and it is the lifeline of the state')
           ) as v(label, option_text)
 where q.question_hash = '6a008422001640bb57c76d0954481cbf'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Bharathapuzha'' is:',
    'The Bharathapuzha, the longest river of the Kerala, is formed by the confluence of the Ponnai and the Kodai and it empties into the Arabian Sea.',
    'medium',
    'Standard Reference',
    null,
    '5b06533b419edde90ec20d5418003382'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5b06533b419edde90ec20d5418003382'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest river of the Tamil Nadu'),
            ('B', 'A tributary of the Periyar'),
            ('C', 'A river of the Karnataka'),
            ('D', 'The longest river of Kerala and it is formed by the Ponnai and the Kodai')
           ) as v(label, option_text)
 where q.question_hash = '5b06533b419edde90ec20d5418003382'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Son is the largest tributary of the Ganga and it is called:',
    'The Son, the largest tributary of the Ganga by the discharge, rises at the Amarkantak and it is also called the Sone and the Rihand is its largest tributary.',
    'medium',
    'Standard Reference',
    null,
    '68c7229c6e91279315b4531c552504c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '68c7229c6e91279315b4531c552504c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Sone'),
            ('B', 'the longest tributary of the Ganga'),
            ('C', 'a tributary of the Brahmaputra'),
            ('D', 'it flows into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '68c7229c6e91279315b4531c552504c1'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following is correct in the case of the Gandak?',
    'The Gandak, the Kosi, the Ghaghara, the Saryu and the Teesta form the flood plain of the north Bihar, the granary of India.',
    'medium',
    'Standard Reference',
    null,
    '147fb4410dd38eaae2f54703273a0457'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '147fb4410dd38eaae2f54703273a0457'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the rivers of the Deccan'),
            ('B', 'They are the west flowing rivers'),
            ('C', 'The Gandak, the Kosi and the Ghaghara form the flood plain of the north Bihar'),
            ('D', 'They are the rivers of the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '147fb4410dd38eaae2f54703273a0457'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Damodar'' is:',
    'The Damodar, a river of the Chota Nagpur plateau, was the first river valley project of India with the Damodar Valley Corporation of 1947.',
    'medium',
    'Standard Reference',
    null,
    '2fa58e636cdfc5cb26fc4c61cefae23a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2fa58e636cdfc5cb26fc4c61cefae23a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A river of the Nilgiris'),
            ('B', 'A river of the Chota Nagpur and the first river valley project of India'),
            ('C', 'A tributary of the Ganga of the north Bihar'),
            ('D', 'A west flowing river of the Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '2fa58e636cdfc5cb26fc4c61cefae23a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Subarnarekha'' is:',
    'The Subarnarekha, about 692 km, flows through the Jharkhand and it joins the Hooghly in West Bengal and it forms the eastern boundary of the Chota Nagpur.',
    'hard',
    'Standard Reference',
    null,
    'dd1857c6a67998cb45e5962bb89c68f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd1857c6a67998cb45e5962bb89c68f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A west flowing river of the Gujarat'),
            ('B', 'A river of the Deccan'),
            ('C', 'A river of the Chota Nagpur that joins the Hooghly and it is a boundary of the Jharkhand'),
            ('D', 'A tributary of the Ganga of the north Bihar')
           ) as v(label, option_text)
 where q.question_hash = 'dd1857c6a67998cb45e5962bb89c68f9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements regarding the Bhadra is correct?',
    'The Bhadra, the Varahi and the Aghanashini are the tributaries of the Tungabhadra and the Sharavathi and the Kali are the west flowing rivers of the Karnataka.',
    'medium',
    'Standard Reference',
    null,
    '1a1c055b433a49293f1fbceccc864e61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1a1c055b433a49293f1fbceccc864e61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the tributaries of the Kaveri'),
            ('B', 'The Bhadra is the tributary of the Tungabhadra and the Sharavathi is a west flowing river of the Karnataka'),
            ('C', 'They are the rivers of the Konkan'),
            ('D', 'They are the rivers of the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '1a1c055b433a49293f1fbceccc864e61'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following is correct in the case of the Kabini?',
    'The Kabini is a tributary of the Kaveri and the Sharavathi of the Karnataka has the famous Jog Falls, and the Kaveri itself has the Sivasamudram falls.',
    'medium',
    'Standard Reference',
    null,
    '8073551700aef3b4dce3d6f90585014d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8073551700aef3b4dce3d6f90585014d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kabini is a tributary of the Kaveri and the Sharavathi of the Karnataka has the Jog Falls'),
            ('B', 'The Kabini is a tributary of the Godavari'),
            ('C', 'The Kabini flows into the Arabian Sea directly'),
            ('D', 'The Kabini is a tributary of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = '8073551700aef3b4dce3d6f90585014d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'In the context of the Tapti, which of the following is correct?',
    'The Tapti rises at the Multai in the Satpura range of the Madhya Pradesh and it flows west in a parallel rift to the Narmada to the Gulf of Khambhat.',
    'medium',
    'Standard Reference',
    null,
    '2c98c9b355f92cd2a3150f0bfda4a895'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c98c9b355f92cd2a3150f0bfda4a895'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It rises in the Himalaya'),
            ('B', 'It is a tributary of the Godavari'),
            ('C', 'It flows into the Bay of Bengal'),
            ('D', 'The Tapti rises in the Multai in the Satpura and it flows west in a parallel rift to the Narmada')
           ) as v(label, option_text)
 where q.question_hash = '2c98c9b355f92cd2a3150f0bfda4a895'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Purna, the largest of the tributaries of the Godavari is:',
    'The Purna, the largest of the tributaries of the Godavari, is also called the Palkhed and it joins the Godavari in the Maharashtra.',
    'hard',
    'Standard Reference',
    null,
    'd231be440b2a94be1207597f4a397724'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd231be440b2a94be1207597f4a397724'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a tributary of the Kaveri'),
            ('B', 'also called the Palkhed'),
            ('C', 'a tributary of the Krishna'),
            ('D', 'a tributary of the Narmada')
           ) as v(label, option_text)
 where q.question_hash = 'd231be440b2a94be1207597f4a397724'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following statements regarding the Hugli is correct?',
    'The Hugli, the Bhagirathi and the Ganga together form the Hooghly and the Farakka Barrage diverts the water to keep the Calcutta port navigable and to flush the silt.',
    'medium',
    'Standard Reference',
    null,
    '58de7650c9a4930e067fc8b2da6a0f3b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58de7650c9a4930e067fc8b2da6a0f3b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hugli flows into the Arabian Sea'),
            ('B', 'The Hugli is a natural lake'),
            ('C', 'The Hugli, the Bhagirathi and the Ganga form the Hooghly and the Farakka Barrage diverts the water'),
            ('D', 'The Hugli is a tributary of the Brahmaputra')
           ) as v(label, option_text)
 where q.question_hash = '58de7650c9a4930e067fc8b2da6a0f3b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Teesta is:',
    'The Teesta, the largest of the tributaries of the Brahmaputra, flows through the Sikkim and the Jalpaiguri and the Farakka and the Teesta barrages regulate the flow into the Hooghly.',
    'medium',
    'Standard Reference',
    null,
    'e82b9a7877364c9162ec7c983fbf802b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e82b9a7877364c9162ec7c983fbf802b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Teesta is a tributary of the Ganga'),
            ('B', 'The Teesta flows into the Arabian Sea'),
            ('C', 'The Teesta is a west flowing river'),
            ('D', 'The Teesta is a tributary of the Brahmaputra and the Farakka Barrage and the Teesta Barrage control the flow')
           ) as v(label, option_text)
 where q.question_hash = 'e82b9a7877364c9162ec7c983fbf802b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'In the context of the Sharavathi, which of the following is correct?',
    'The Sharavathi is one of the west flowing rivers of the Karnataka and the Jog Falls on it is one of the highest in the country.',
    'medium',
    'Standard Reference',
    null,
    '7c1d8217e4f288a018d985f27d163fd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7c1d8217e4f288a018d985f27d163fd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sharavathi is a west flowing river of the Karnataka with the Jog Falls'),
            ('B', 'It is an east flowing river of the Tamil Nadu'),
            ('C', 'It is a tributary of the Kaveri'),
            ('D', 'It flows into the Arabian Sea directly')
           ) as v(label, option_text)
 where q.question_hash = '7c1d8217e4f288a018d985f27d163fd8'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'It is the only ocean named:',
    'The Indian Ocean is the only ocean named after a country and it is the third largest of the oceans with about one-fifth of the land area of the earth.',
    'easy',
    'Standard Reference',
    null,
    'e5e29dcd708e33b8aa8b9925202944cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e5e29dcd708e33b8aa8b9925202944cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the smallest of the oceans'),
            ('B', 'the largest of the oceans'),
            ('C', 'the deepest of the oceans'),
            ('D', 'after a country')
           ) as v(label, option_text)
 where q.question_hash = 'e5e29dcd708e33b8aa8b9925202944cd'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Arabian Sea is:',
    'The Arabian Sea is the western part of the Indian Ocean and it is connected with the Red Sea through the Gulf of Aden and with the Persian Gulf through the Gulf of Oman.',
    'medium',
    'Standard Reference',
    null,
    '74536fc7aadd6c0c0ed06fb53dc39979'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '74536fc7aadd6c0c0ed06fb53dc39979'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a landlocked sea'),
            ('B', 'the western part of the Indian Ocean and it is connected with the Red Sea by the Gulf of Aden and the Gulf of Oman'),
            ('C', 'a part of the Pacific Ocean'),
            ('D', 'a part of the Atlantic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '74536fc7aadd6c0c0ed06fb53dc39979'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Bay of Bengal is:',
    'The Bay of Bengal, the largest bay of the world, is the deepest of the bays with a maximum depth of about 2,158 metres.',
    'medium',
    'Standard Reference',
    null,
    'a4430271be22f23b2d734dc97a468621'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a4430271be22f23b2d734dc97a468621'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest bay of the world and it is the deepest of the bays'),
            ('B', 'the smallest bay of the world'),
            ('C', 'a part of the Arabian Sea'),
            ('D', 'a part of the Atlantic Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'a4430271be22f23b2d734dc97a468621'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Southern Ocean'' was designated by the:',
    'The International Hydrographic Organization in 2000 designated the Southern Ocean as the ocean extending up to the 60 degrees south latitude, which was later endorsed by the IMO.',
    'hard',
    'Standard Reference',
    null,
    'e78f8278fef646625ffd66e43464bd33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e78f8278fef646625ffd66e43464bd33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'IMO in 1950'),
            ('B', 'WMO in 1970'),
            ('C', 'International Hydrographic Organization in 2000'),
            ('D', 'United Nations in 1980')
           ) as v(label, option_text)
 where q.question_hash = 'e78f8278fef646625ffd66e43464bd33'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Exclusive Economic Zone'' of India:',
    'The Exclusive Economic Zone of a coastal state extends to 200 nautical miles from the baseline and the continental shelf is a distinct part of the maritime zones.',
    'medium',
    'Standard Reference',
    null,
    'daba8583c80d850d4ba3928dcdf1b79c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'daba8583c80d850d4ba3928dcdf1b79c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Extends to 12 nautical miles'),
            ('B', 'Extends to 350 nautical miles'),
            ('C', 'Is the same as the continental shelf'),
            ('D', 'Extends to 200 nautical miles from the baseline')
           ) as v(label, option_text)
 where q.question_hash = 'daba8583c80d850d4ba3928dcdf1b79c'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following is correct in the case of the deepest ocean trench?',
    'The Mariana Trench in the western Pacific contains the Challenger Deep, the deepest known point of the ocean floor at over 10,900 metres.',
    'easy',
    'Standard Reference',
    null,
    'c0ef805d0876884960e7a1e256eb3105'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c0ef805d0876884960e7a1e256eb3105'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sunda Trench'),
            ('B', 'The Mariana Trench with the Challenger Deep'),
            ('C', 'The Tonga Trench'),
            ('D', 'The Puerto Rico Trench')
           ) as v(label, option_text)
 where q.question_hash = 'c0ef805d0876884960e7a1e256eb3105'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Tides'' are caused by:',
    'The tides are caused mainly by the gravitational pull of the Moon, with a smaller contribution from the Sun, and the height of the tidal range varies with the shape of the coast.',
    'medium',
    'Standard Reference',
    null,
    'b1fe67313db450d5dfbc7333b43727ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b1fe67313db450d5dfbc7333b43727ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The gravitational pull of the Moon and the Sun'),
            ('B', 'The rotation of the earth alone'),
            ('C', 'The winds of the monsoon'),
            ('D', 'The pressure of the atmosphere')
           ) as v(label, option_text)
 where q.question_hash = 'b1fe67313db450d5dfbc7333b43727ca'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''spring tides'' occur when:',
    'The spring tides occur at the new and the full moon when the sun, the moon and the earth are in one line, and the neap tides occur at the quarter moon when they are at right angles.',
    'medium',
    'Standard Reference',
    null,
    '5528d7208267c5bc87dc910851ef2880'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5528d7208267c5bc87dc910851ef2880'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The moon is at the zenith'),
            ('B', 'The sun and the moon are at right angles'),
            ('C', 'The sun, the moon and the earth are in one line at the new and the full moon'),
            ('D', 'The earth is between the sun and the moon only at the quarter moon')
           ) as v(label, option_text)
 where q.question_hash = '5528d7208267c5bc87dc910851ef2880'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'In the context of the El Nino, which of the following is correct?',
    'The El Nino is the warm current off the Peru coast and it is associated with the weakened Indian monsoon, while the La Nina is the cold counterpart.',
    'medium',
    'Standard Reference',
    null,
    '2133ab3c46515670d4654c4b1dfa573c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2133ab3c46515670d4654c4b1dfa573c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a cold current off the Peru coast'),
            ('B', 'The El Nino is the warm current off the Peru coast and it weakens the Indian monsoon'),
            ('C', 'It is a cold current of the Atlantic'),
            ('D', 'It is a warm current of the Pacific that strengthens the Indian monsoon')
           ) as v(label, option_text)
 where q.question_hash = '2133ab3c46515670d4654c4b1dfa573c'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Labrador Current is:',
    'The cold currents of the North Atlantic are the Labrador, the East Greenland, the West Greenland, the California and the Canary and they make the north-west Europe colder.',
    'medium',
    'Standard Reference',
    null,
    '49d0f7fa9dfebb3c94b411f529345c84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '49d0f7fa9dfebb3c94b411f529345c84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cold current of the North Atlantic flowing along the North America coast'),
            ('B', 'a warm current of the Pacific'),
            ('C', 'it flows along the South America coast'),
            ('D', 'the warm current of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '49d0f7fa9dfebb3c94b411f529345c84'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Gulf Stream is:',
    'The Gulf Stream, the western boundary current of the North Atlantic, is a warm current that keeps the north-west Europe warmer at the same latitude and it continues as the North Atlantic Drift.',
    'medium',
    'Standard Reference',
    null,
    'e57ce41fd968e08ff830a90a130559fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e57ce41fd968e08ff830a90a130559fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a warm current of the South Atlantic'),
            ('B', 'a cold current of the Indian Ocean'),
            ('C', 'a warm current of the North Atlantic and it makes the north-west Europe warmer'),
            ('D', 'a cold current of the Pacific')
           ) as v(label, option_text)
 where q.question_hash = 'e57ce41fd968e08ff830a90a130559fd'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements regarding the Kuroshio is correct?',
    'The Kuroshio, the Japan Current, is the western boundary warm current of the North Pacific and it flows past the Philippines and the Japan.',
    'medium',
    'Standard Reference',
    null,
    '57ec05ddbe32908acf0010886e8a5ec2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '57ec05ddbe32908acf0010886e8a5ec2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a cold current of the North Pacific'),
            ('B', 'It is a warm current of the South Atlantic'),
            ('C', 'It is a cold current of the Indian Ocean'),
            ('D', 'The Kuroshio is the warm current of the North Pacific flowing past Japan')
           ) as v(label, option_text)
 where q.question_hash = '57ec05ddbe32908acf0010886e8a5ec2'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The California Current is:',
    'The California Current is the cold eastern boundary current of the North Pacific and it contributes to the aridity of the western coast of the North America.',
    'hard',
    'Standard Reference',
    null,
    'a2c79b2dc461d832005f6cee0ac4147b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2c79b2dc461d832005f6cee0ac4147b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cold current of the Indian Ocean'),
            ('B', 'a warm current of the Pacific'),
            ('C', 'a cold current of the North Pacific'),
            ('D', 'a warm current of the Atlantic')
           ) as v(label, option_text)
 where q.question_hash = 'a2c79b2dc461d832005f6cee0ac4147b'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Benguela Current is:',
    'The Benguela, a cold current of the South Atlantic, is responsible for the arid conditions of the Namib desert on the west coast of Africa.',
    'medium',
    'Standard Reference',
    null,
    '83fd6bffa532865d58c7ac76cd22043c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '83fd6bffa532865d58c7ac76cd22043c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a cold current of the South Atlantic and it causes the Namib desert'),
            ('B', 'a warm current of the Indian Ocean'),
            ('C', 'a cold current of the North Pacific'),
            ('D', 'a warm current of the Pacific')
           ) as v(label, option_text)
 where q.question_hash = '83fd6bffa532865d58c7ac76cd22043c'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''salinity'' of the ocean water:',
    'The average salinity of the ocean is 35 parts per thousand, it is over 40 in the Red Sea and the Persian Gulf and it is the lowest in the polar seas because of the melting of the ice.',
    'medium',
    'Standard Reference',
    null,
    'd5df467c64b7b09157766dd5a84dff01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd5df467c64b7b09157766dd5a84dff01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the lowest in the Red Sea'),
            ('B', 'Is 35 parts per thousand on the average and it is higher in the Red Sea and the lower in the polar seas'),
            ('C', 'Is 3.5 per cent on the average'),
            ('D', 'Is the highest in the equatorial region')
           ) as v(label, option_text)
 where q.question_hash = 'd5df467c64b7b09157766dd5a84dff01'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The polar seas have:',
    'The polar seas have the lowest salinity of about 30 to 32 ppt because of the influx of the fresh water from the melting of the ice and the polar rivers.',
    'hard',
    'Standard Reference',
    null,
    'fcc29bddf9b0e90daa7dc2b652b150bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fcc29bddf9b0e90daa7dc2b652b150bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the highest salinity'),
            ('B', 'the salinity of 40 ppt'),
            ('C', 'no salinity'),
            ('D', 'a salinity of about 30 to 32 ppt because of the melting of the ice')
           ) as v(label, option_text)
 where q.question_hash = 'fcc29bddf9b0e90daa7dc2b652b150bf'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements regarding the thermocline is correct?',
    'The thermocline is the layer of the ocean in which the temperature decreases rapidly with the depth and below it the deep water has a nearly uniform low temperature.',
    'medium',
    'Standard Reference',
    null,
    '1efd3be3a52efa077b685e113943b5df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1efd3be3a52efa077b685e113943b5df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the surface layer of the ocean'),
            ('B', 'Is the layer of the constant temperature'),
            ('C', 'Is the zone of the plankton'),
            ('D', 'Is the layer of the ocean where the temperature drops rapidly with the depth')
           ) as v(label, option_text)
 where q.question_hash = '1efd3be3a52efa077b685e113943b5df'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''mid-oceanic ridges'':',
    'The mid-oceanic ridges are the sites of the creation of the new oceanic crust with the continuous upwelling of the magma and the formation of the new sea floor.',
    'medium',
    'Standard Reference',
    null,
    'f6e6b7e318814913caf632bbb53a0dc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f6e6b7e318814913caf632bbb53a0dc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the sites of the creation of the new oceanic crust'),
            ('B', 'Are the deepest parts of the ocean'),
            ('C', 'Are the zones of the coral growth'),
            ('D', 'Are the trenches of the subduction')
           ) as v(label, option_text)
 where q.question_hash = 'f6e6b7e318814913caf632bbb53a0dc2'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'It is the largest of the oceans and it covers:',
    'The Pacific is the largest of the oceans with an area of about 165.25 million square kilometres and it covers about a third of the earth''s surface.',
    'easy',
    'Standard Reference',
    null,
    '8c2d0d8bea38d4eb58d226078be6ea13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8c2d0d8bea38d4eb58d226078be6ea13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the least explored'),
            ('B', 'about a third of the earth''s surface'),
            ('C', 'the smallest of the oceans'),
            ('D', 'the deepest of the oceans')
           ) as v(label, option_text)
 where q.question_hash = '8c2d0d8bea38d4eb58d226078be6ea13'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Atlantic Ocean is:',
    'The Atlantic is the second largest of the oceans and it is the youngest of them with the S-shaped of the coastline and it is bordered by the Europe and the Africa on the east and the America on the west.',
    'medium',
    'Standard Reference',
    null,
    '641ca727581a329ceffd2a3c22172fb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '641ca727581a329ceffd2a3c22172fb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the deepest of the oceans'),
            ('B', 'the smallest of the oceans'),
            ('C', 'the second largest of the oceans and the S-shaped of it is the youngest'),
            ('D', 'the largest of the oceans')
           ) as v(label, option_text)
 where q.question_hash = '641ca727581a329ceffd2a3c22172fb9'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following is correct in the case of the Arctic Ocean?',
    'The Arctic Ocean, the smallest and the shallowest of the oceans, is nearly circular and it surrounds the North Pole and it is ice-covered for most of the year.',
    'medium',
    'Standard Reference',
    null,
    '6d8ee587cb8917aec3361f7b5e45de47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6d8ee587cb8917aec3361f7b5e45de47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the largest of the oceans'),
            ('B', 'It is the deepest of the oceans'),
            ('C', 'It is entirely in the Southern Hemisphere'),
            ('D', 'It is the smallest of the oceans and it is nearly circular and the shallowest')
           ) as v(label, option_text)
 where q.question_hash = '6d8ee587cb8917aec3361f7b5e45de47'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements regarding the Red Sea is correct?',
    'The Red Sea, the saltiest of the seas with the salinity of over 40 ppt, is the northwestern part of the Indian Ocean with the Gulf of Aden and the Gulf of Suez.',
    'medium',
    'Standard Reference',
    null,
    'b63638a5724caf1ca10503cf478e7bc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b63638a5724caf1ca10503cf478e7bc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the saltiest of the seas and it is a part of the Indian Ocean'),
            ('B', 'It is the deepest of the seas'),
            ('C', 'It is the largest of the seas'),
            ('D', 'It is a part of the Atlantic Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'b63638a5724caf1ca10503cf478e7bc8'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Coral reefs'' are found in the:',
    'The coral reefs are found in the warm and the shallow seas of the tropics with the optimal temperature of 20 to 30 degrees C and they are also sensitive to the temperature and the salinity.',
    'medium',
    'Standard Reference',
    null,
    '82201cae5df7bd4c61eeaa6ae54b2d5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '82201cae5df7bd4c61eeaa6ae54b2d5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Arctic Ocean'),
            ('B', 'The deep trenches'),
            ('C', 'The warm shallow seas of the tropics between the 30 degrees north and the 30 degrees south'),
            ('D', 'The deep seas of the poles')
           ) as v(label, option_text)
 where q.question_hash = '82201cae5df7bd4c61eeaa6ae54b2d5f'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements is/are correct in relation to the Atoll?',
    'An atoll is a coral reef that surrounds a lagoon, sometimes with a few islands, and the Lakshadweep of India is the union territory of the coral atolls.',
    'medium',
    'Standard Reference',
    null,
    '91b55f03e3ef78cc57a3923e93a5c2c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '91b55f03e3ef78cc57a3923e93a5c2c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An atoll is a continental shelf'),
            ('B', 'An atoll is a coral reef enclosing a lagoon with the reefs around it'),
            ('C', 'An atoll is a deep sea trench'),
            ('D', 'An atoll is a volcanic island')
           ) as v(label, option_text)
 where q.question_hash = '91b55f03e3ef78cc57a3923e93a5c2c9'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'In the context of the Diatoms, which of the following is correct?',
    'The diatoms are the microscopic algae of the phytoplankton and the radiolarians and the copepods are the zooplankton and the diatomaceous earth is the source of the chalk.',
    'medium',
    'Standard Reference',
    null,
    'c34e5a6be1578e425859c9360cd867e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c34e5a6be1578e425859c9360cd867e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The diatoms are the microscopic algae of the phytoplankton and the radiolarians are the zooplankton'),
            ('B', 'They are the seaweeds'),
            ('C', 'They are the coral polyps'),
            ('D', 'They are the crabs')
           ) as v(label, option_text)
 where q.question_hash = 'c34e5a6be1578e425859c9360cd867e0'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The marginal seas of the Pacific are:',
    'The marginal seas of the Pacific are the Bering, the Sea of Japan, the Sea of Okhotsk, the Yellow Sea and the South China Sea, and the Indian Ocean has the Arabian, the Bay of Bengal, the Andaman and the Timor seas.',
    'hard',
    'Standard Reference',
    null,
    '596e91dea8aa05dda9f81dd880d3f64f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '596e91dea8aa05dda9f81dd880d3f64f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the deep ocean basins'),
            ('B', 'the Bering Sea, the Sea of Japan, the Sea of Okhotsk and the Yellow Sea'),
            ('C', 'the open ocean'),
            ('D', 'the landlocked seas')
           ) as v(label, option_text)
 where q.question_hash = '596e91dea8aa05dda9f81dd880d3f64f'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''seas'' of the Atlantic:',
    'The marginal seas of the Atlantic are the Caribbean, the North, the Baltic, the Mediterranean, the Black Sea, the Labrador and the Gulf of Mexico.',
    'hard',
    'Standard Reference',
    null,
    'db03d02711c22eb42916c0f45f907812'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db03d02711c22eb42916c0f45f907812'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the only inland seas'),
            ('B', 'Are the deep ocean basins'),
            ('C', 'Are the marginal seas of the Pacific'),
            ('D', 'Are the Caribbean, the North, the Baltic, the Mediterranean and the Black Sea')
           ) as v(label, option_text)
 where q.question_hash = 'db03d02711c22eb42916c0f45f907812'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Baltic Sea'' is:',
    'The Baltic Sea, one of the largest and the coldest of the marginal seas with the lowest salinity of about 10 ppt or less, is almost a freshwater sea.',
    'medium',
    'Standard Reference',
    null,
    'aad577b7d11cf8c13f7c9d9b02b6021e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aad577b7d11cf8c13f7c9d9b02b6021e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Indian Ocean'),
            ('B', 'A deep ocean basin'),
            ('C', 'A cold sea of the Atlantic and the world''s largest inland sea with the low salinity'),
            ('D', 'The warmest sea of the tropics')
           ) as v(label, option_text)
 where q.question_hash = 'aad577b7d11cf8c13f7c9d9b02b6021e'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'In the context of the westerly drift, which of the following is correct?',
    'The West Wind Drift or the Antarctic Circumpolar Current flows from west to east around the Antarctic and it is the only current that connects the three oceans.',
    'medium',
    'Standard Reference',
    null,
    'f45b1430520823d1ca2d54ccef0542fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f45b1430520823d1ca2d54ccef0542fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a tidal current'),
            ('B', 'Is the ocean current of the southern hemisphere and it flows from west to east'),
            ('C', 'Is the current of the northern hemisphere and it flows from west to east'),
            ('D', 'It flows from the east to the west')
           ) as v(label, option_text)
 where q.question_hash = 'f45b1430520823d1ca2d54ccef0542fb'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''El Nino Southern Oscillation'':',
    'The El Nino Southern Oscillation is the coupled ocean and the atmosphere phenomenon of the Pacific with the 3 to 7 year cycle of the El Nino and the La Nina.',
    'hard',
    'Standard Reference',
    null,
    '086fe1837175221a04de911862edfbb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '086fe1837175221a04de911862edfbb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a 11 year solar cycle'),
            ('B', 'Is the ozone variation'),
            ('C', 'Is a volcanic phenomenon'),
            ('D', 'Is the coupled ocean and the atmosphere phenomenon of the Pacific and it has a 3 to 7 year cycle')
           ) as v(label, option_text)
 where q.question_hash = '086fe1837175221a04de911862edfbb9'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Southern Ocean is:',
    'The Southern Ocean, with the West Wind Drift, is the only ocean that circumnavigates the globe and it was designated in 2000.',
    'medium',
    'Standard Reference',
    null,
    '8e5515d0d0319126dc8010c4309a68dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8e5515d0d0319126dc8010c4309a68dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the only ocean that circumnavigates the globe'),
            ('B', 'the largest of the oceans'),
            ('C', 'the deepest of the oceans'),
            ('D', 'the smallest of the oceans')
           ) as v(label, option_text)
 where q.question_hash = '8e5515d0d0319126dc8010c4309a68dc'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Antarctic Circumpolar Current'':',
    'The Antarctic Circumpolar Current, the West Wind Drift, is the largest of the ocean currents with a flow of about 1.3 billion cubic metres per second.',
    'hard',
    'Standard Reference',
    null,
    '673544e0ba0dae67001685086c86efea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '673544e0ba0dae67001685086c86efea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the Kuroshio'),
            ('B', 'It is the Somali Current'),
            ('C', 'Is the West Wind Drift and it is the largest of the ocean currents'),
            ('D', 'It is the Gulf Stream')
           ) as v(label, option_text)
 where q.question_hash = '673544e0ba0dae67001685086c86efea'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Somali Current'' is:',
    'The Somali Current is a cold current of the Indian Ocean that reverses its direction with the monsoon and it is a notable exception to the rule.',
    'hard',
    'Standard Reference',
    null,
    'cce1f6d153aaf6e7129d9eaac2d850b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cce1f6d153aaf6e7129d9eaac2d850b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A current of the Atlantic'),
            ('B', 'A tidal current'),
            ('C', 'A cold current of the Indian Ocean that changes the direction with the monsoon'),
            ('D', 'A warm current of the Pacific')
           ) as v(label, option_text)
 where q.question_hash = 'cce1f6d153aaf6e7129d9eaac2d850b8'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following is correct in the case of the mangroves?',
    'The mangroves grow in the intertidal zone of the tropical coasts with the stilt roots and the pneumatophores and they are the nurseries of the commercial fisheries.',
    'medium',
    'Standard Reference',
    null,
    'be29be46b735d799db9810dbbd838221'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be29be46b735d799db9810dbbd838221'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Grow in the deep ocean'),
            ('B', 'Grow in the arid coast'),
            ('C', 'Grow only in the cold waters'),
            ('D', 'Grow in the intertidal zone with the stilt roots and they are the nurseries of the marine fisheries')
           ) as v(label, option_text)
 where q.question_hash = 'be29be46b735d799db9810dbbd838221'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''sea level'' has risen over the last century mainly due to:',
    'The sea level has risen by about 20 cm over the last century mainly due to the thermal expansion of the seawater and the melting of the land ice of the glaciers and the ice sheets.',
    'medium',
    'Standard Reference',
    null,
    '984945ecc6d2372085e4c040a7be18ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '984945ecc6d2372085e4c040a7be18ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The thermal expansion of the water and the melting of the land ice'),
            ('B', 'The increase of the gravity'),
            ('C', 'The slowing of the rotation of the earth'),
            ('D', 'The increase of the salt in the ocean')
           ) as v(label, option_text)
 where q.question_hash = '984945ecc6d2372085e4c040a7be18ba'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The deep ocean below the thermocline is:',
    'The deep ocean waters below the thermocline are cold and are rich in the dissolved oxygen because of the sinking of the cold and the oxygen rich polar waters.',
    'medium',
    'Standard Reference',
    null,
    'a24f78c46638b0df72067f0aa319b7da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a24f78c46638b0df72067f0aa319b7da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the shallowest of the ocean'),
            ('B', 'cold with the high dissolved oxygen in the deep water'),
            ('C', 'warm and the low oxygen'),
            ('D', 'the richest in the nutrients')
           ) as v(label, option_text)
 where q.question_hash = 'a24f78c46638b0df72067f0aa319b7da'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''continental slope'' of the ocean:',
    'The continental slope, with a gradient of about 1 in 40, descends from the edge of the continental shelf to the abyssal plain and it is the steepest part of the ocean floor.',
    'hard',
    'Standard Reference',
    null,
    'a86a69518664b85b1aa222ee737cd37d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a86a69518664b85b1aa222ee737cd37d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the zone of the coral growth'),
            ('B', 'Has the steep gradient between the continental shelf and the abyssal plain'),
            ('C', 'Is the flat plain of the deep ocean'),
            ('D', 'Is the shallow flooded margin of the continent')
           ) as v(label, option_text)
 where q.question_hash = 'a86a69518664b85b1aa222ee737cd37d'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Consider the following statements. Which of them is correct with regard to the ocean floor?',
    'The ocean floor has the abyssal plains, the mid-oceanic ridges, the deep sea trenches, the seamounts and the abyssal hills and it is far from being flat.',
    'medium',
    'Standard Reference',
    null,
    'af7485673ca0108bfba4ae41ee4954d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af7485673ca0108bfba4ae41ee4954d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has only the continental shelf'),
            ('B', 'Is covered with the coral'),
            ('C', 'Has the abyssal plain, the oceanic ridges, the trenches and the seamounts'),
            ('D', 'Is entirely flat')
           ) as v(label, option_text)
 where q.question_hash = 'af7485673ca0108bfba4ae41ee4954d3'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''waves'' are caused by:',
    'The waves on the surface of the ocean are caused by the wind and the swell and the tsunami is the exception with the earthquake and the volcanic origin.',
    'easy',
    'Standard Reference',
    null,
    'cf55533490dd5a6b16b9fd59da0d4559'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cf55533490dd5a6b16b9fd59da0d4559'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The wind'),
            ('B', 'The tidal pull'),
            ('C', 'The submarine earthquakes only'),
            ('D', 'The Earth''s rotation')
           ) as v(label, option_text)
 where q.question_hash = 'cf55533490dd5a6b16b9fd59da0d4559'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Is a series of the water waves caused:',
    'A tsunami is a series of the water waves caused by the undersea earthquake, the submarine landslide or the volcanic eruption, and the 2004 Sumatra earthquake generated one.',
    'medium',
    'Standard Reference',
    null,
    '31ae732efee2746e1f62c9c8b751979a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '31ae732efee2746e1f62c9c8b751979a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a tidal wave'),
            ('B', 'a wind wave'),
            ('C', 'a tsunami of the volcano'),
            ('D', 'by the undersea earthquake or the volcanic eruption')
           ) as v(label, option_text)
 where q.question_hash = '31ae732efee2746e1f62c9c8b751979a'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements is/are correct in relation to the plankton?',
    'The plankton are the organisms that drift with the currents and the phytoplankton are the plant-like ones, the diatoms and the dinoflagellates, that form the base of the marine food chain.',
    'medium',
    'Standard Reference',
    null,
    '7fd79016aea8486cdf51312c52933600'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7fd79016aea8486cdf51312c52933600'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The plankton are the free-floating organisms and the phytoplankton are the plant-like organisms'),
            ('B', 'They are the bottom dwellers'),
            ('C', 'They are the deep sea creatures'),
            ('D', 'They are the corals')
           ) as v(label, option_text)
 where q.question_hash = '7fd79016aea8486cdf51312c52933600'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Sargasso Sea'' is in the:',
    'The Sargasso Sea in the North Atlantic is the only sea without a land boundary and it is bounded by the Gulf Stream, the North Atlantic Drift, the Canary Current and the North Equatorial Current.',
    'medium',
    'Standard Reference',
    null,
    'd566a9f66ef7a618a40a8b85be0e8960'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd566a9f66ef7a618a40a8b85be0e8960'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indian Ocean'),
            ('B', 'Southern Ocean'),
            ('C', 'North Atlantic Ocean'),
            ('D', 'Pacific Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'd566a9f66ef7a618a40a8b85be0e8960'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following is correct in the case of the Ross Sea?',
    'The Ross Sea, the largest of the Antarctic seas, was the site of the ill-fated Scott expedition and the earlier Amundsen expedition.',
    'hard',
    'Standard Reference',
    null,
    '586233f51085c2f085c4b538d0e15067'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '586233f51085c2f085c4b538d0e15067'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a gulf of the Atlantic'),
            ('B', 'Is the largest of the Antarctic seas and it was the site of the Scott expedition'),
            ('C', 'Is a part of the Arctic Ocean'),
            ('D', 'Is a sea of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '586233f51085c2f085c4b538d0e15067'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Weddell Sea'' is:',
    'The Weddell Sea is a marginal sea of the Southern Ocean and it is the largest of the Antarctic seas other than the Ross and the Ronne.',
    'hard',
    'Standard Reference',
    null,
    'c5ce9b7a50d166c2fec723c6452f0f7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5ce9b7a50d166c2fec723c6452f0f7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Arctic Ocean'),
            ('B', 'A sea of the Indian Ocean'),
            ('C', 'A gulf of the Atlantic'),
            ('D', 'A marginal sea of the Southern Ocean adjacent to the Antarctic Peninsula')
           ) as v(label, option_text)
 where q.question_hash = 'c5ce9b7a50d166c2fec723c6452f0f7a'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''North Pacific Ocean'' is:',
    'The North Pacific is the largest of the ocean basins and it has about 3,000 islands, more than the total of all the other oceans.',
    'medium',
    'Standard Reference',
    null,
    '24b7b0644bdea9b4f4f9d395ef01bf34'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '24b7b0644bdea9b4f4f9d395ef01bf34'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The smallest of the ocean basins'),
            ('B', 'A part of the Atlantic'),
            ('C', 'The deepest of the oceans'),
            ('D', 'The largest of the ocean basins and it has the most islands')
           ) as v(label, option_text)
 where q.question_hash = '24b7b0644bdea9b4f4f9d395ef01bf34'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''continental island'' of the India:',
    'The continental islands of India include the Andaman and the Nicobar, the Diu, the Salsette, the Majuli, the Diu and the Elephanta, while the Lakshadweep is the coral one.',
    'hard',
    'Standard Reference',
    null,
    'cbf98b73da4f98c106ae419b3309d2ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cbf98b73da4f98c106ae419b3309d2ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Includes the Salsette'),
            ('B', 'Includes only the Majuli'),
            ('C', 'Includes the Andaman and the Nicobar and the Diu'),
            ('D', 'Includes the Lakshadweep')
           ) as v(label, option_text)
 where q.question_hash = 'cbf98b73da4f98c106ae419b3309d2ec'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Lakshadweep'' is:',
    'The Lakshadweep, the coral islands of the Arabian Sea, was formed in 1956 with the merger of the eight islands of the Laccadive, the Minicoy and the Amindivi.',
    'medium',
    'Standard Reference',
    null,
    'c1a4e22bae67d3cd3e61f2fa6881f4e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c1a4e22bae67d3cd3e61f2fa6881f4e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A group of the continental islands'),
            ('B', 'A group of the coral islands in the Arabian Sea and it was formed in 1956'),
            ('C', 'A group of the volcanic islands'),
            ('D', 'A group of the riverine islands')
           ) as v(label, option_text)
 where q.question_hash = 'c1a4e22bae67d3cd3e61f2fa6881f4e1'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Andaman and the Nicobar'' are:',
    'The Andaman and the Nicobar, the volcanic islands of the Bay of Bengal, are of the coral and the volcanic origin and they are the home of the Andamanese tribes.',
    'medium',
    'Standard Reference',
    null,
    'b8a7d012cfeb137f58d7f91a6286b7a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b8a7d012cfeb137f58d7f91a6286b7a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The volcanic islands of the Bay of Bengal'),
            ('B', 'The coral islands of the Arabian Sea'),
            ('C', 'The riverine islands of the Ganga'),
            ('D', 'The barrier islands of the Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'b8a7d012cfeb137f58d7f91a6286b7a8'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''strait of Hormuz'' is between:',
    'The Strait of Hormuz connects the Persian Gulf with the Gulf of Oman and it is the critical maritime chokepoint for the oil shipments of the Gulf.',
    'medium',
    'Standard Reference',
    null,
    'ddf26451cb769c98a38ea3839b8d16e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ddf26451cb769c98a38ea3839b8d16e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Persian Gulf and the Gulf of Oman'),
            ('B', 'The Red Sea and the Gulf of Aden'),
            ('C', 'The Mediterranean and the Atlantic'),
            ('D', 'The Black Sea and the Marmara')
           ) as v(label, option_text)
 where q.question_hash = 'ddf26451cb769c98a38ea3839b8d16e2'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Strait of Gibraltar'' separates:',
    'The Strait of Gibraltar, about 13 km wide at its narrowest, separates Spain from Morocco and it connects the Mediterranean with the Atlantic.',
    'easy',
    'Standard Reference',
    null,
    '4cf7209ca1ceb3be1e6218a43f987d04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4cf7209ca1ceb3be1e6218a43f987d04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yemen and Oman'),
            ('B', 'Spain and Morocco'),
            ('C', 'Italy and Tunisia'),
            ('D', 'Greece and Turkey')
           ) as v(label, option_text)
 where q.question_hash = '4cf7209ca1ceb3be1e6218a43f987d04'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Strait of Malacca'' is between:',
    'The Strait of Malacca, between the Malay Peninsula and the Sumatra, is one of the busiest of the shipping lanes with about a quarter of the world trade passing through it.',
    'medium',
    'Standard Reference',
    null,
    '5f3bb4b6ec4af5b5eab03f8d62430ab3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5f3bb4b6ec4af5b5eab03f8d62430ab3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Korea and the Japan'),
            ('B', 'The Borneo and the Sulawesi'),
            ('C', 'The Malay Peninsula and the Sumatra'),
            ('D', 'The India and the Sri Lanka')
           ) as v(label, option_text)
 where q.question_hash = '5f3bb4b6ec4af5b5eab03f8d62430ab3'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Bab-el-Mandeb'' is between:',
    'The Bab-el-Mandeb connects the Red Sea with the Gulf of Aden and it is the narrow strait between the Yemen and the Djibouti and the Eritrea.',
    'medium',
    'Standard Reference',
    null,
    '32a84281a389f1c6472305188016428a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '32a84281a389f1c6472305188016428a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Persian Gulf and the Arabian Sea'),
            ('B', 'The Mediterranean and the Atlantic'),
            ('C', 'The Black Sea and the Bosphorus'),
            ('D', 'The Red Sea and the Gulf of Aden')
           ) as v(label, option_text)
 where q.question_hash = '32a84281a389f1c6472305188016428a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Bering Strait'' separates:',
    'The Bering Strait, 82 km wide at its narrowest, separates the Asia from the North America and it has the International Date Line running through it.',
    'easy',
    'Standard Reference',
    null,
    '3e5eeed4a2b02e49393c40f657895b0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e5eeed4a2b02e49393c40f657895b0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Asia and North America'),
            ('B', 'Europe and Asia'),
            ('C', 'Africa and Europe'),
            ('D', 'Australia and Asia')
           ) as v(label, option_text)
 where q.question_hash = '3e5eeed4a2b02e49393c40f657895b0a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following statements regarding the Madagascar and the African mainland is correct?',
    'The Mozambique Channel separates the Madagascar from the African mainland and it is a key shipping route for the oil of the Persian Gulf.',
    'medium',
    'Standard Reference',
    null,
    'f4ff6931f9386065f3c0b5fe520f34aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f4ff6931f9386065f3c0b5fe520f34aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Australia and New Zealand'),
            ('B', 'Sri Lanka and the India'),
            ('C', 'Japan and the Korea'),
            ('D', 'Madagascar and the African mainland')
           ) as v(label, option_text)
 where q.question_hash = 'f4ff6931f9386065f3c0b5fe520f34aa'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Dover Strait'' separates:',
    'The Dover Strait, or the Calais Strait, separates England from France and the English Channel connects it with the North Sea.',
    'easy',
    'Standard Reference',
    null,
    '4b67836f746e117faecb195b6e685615'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4b67836f746e117faecb195b6e685615'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Italy and Tunisia'),
            ('B', 'Denmark and Sweden'),
            ('C', 'England and France'),
            ('D', 'Spain and Morocco')
           ) as v(label, option_text)
 where q.question_hash = '4b67836f746e117faecb195b6e685615'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Tsugaru Strait'' separates:',
    'The Tsugaru Strait, between the Honshu and the Hokkaido, is the route of the ferry and the shipping between the two Japanese islands.',
    'hard',
    'Standard Reference',
    null,
    '677e4323129d027e8ce16d0a9e365def'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '677e4323129d027e8ce16d0a9e365def'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Spain and Morocco'),
            ('B', 'Honshu and Hokkaido'),
            ('C', 'Honshu and Kyushu'),
            ('D', 'Sicily and Italy')
           ) as v(label, option_text)
 where q.question_hash = '677e4323129d027e8ce16d0a9e365def'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Palk Strait'' separates:',
    'The Palk Strait separates the India from the Sri Lanka and the Rameswaram is on the Indian side and the Jaffna on the Sri Lankan.',
    'easy',
    'Standard Reference',
    null,
    'd93a16b2c7fdcd00511056c6dfab56be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd93a16b2c7fdcd00511056c6dfab56be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Honshu and Hokkaido'),
            ('B', 'Cuba and Florida'),
            ('C', 'India and Sri Lanka'),
            ('D', 'Sumatra and Malaysia')
           ) as v(label, option_text)
 where q.question_hash = 'd93a16b2c7fdcd00511056c6dfab56be'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Bering Sea'' is:',
    'The Bering Sea, at the northern end of the Pacific, has the cold currents and the rich fisheries and it is the source of the Bering Strait.',
    'medium',
    'Standard Reference',
    null,
    '83c7931a4ac0181a1410b2f26cc6a2ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '83c7931a4ac0181a1410b2f26cc6a2ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The saltiest of the seas'),
            ('B', 'The northernmost of the seas of the Pacific with the cold currents'),
            ('C', 'The warmest of the seas'),
            ('D', 'The smallest of the seas')
           ) as v(label, option_text)
 where q.question_hash = '83c7931a4ac0181a1410b2f26cc6a2ed'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Caribbean Sea'' is:',
    'The Caribbean Sea, with the warm currents and the hurricanes, is the sea of the Americas and the deepest of the seas of the Atlantic at about 7,000 metres.',
    'medium',
    'Standard Reference',
    null,
    'dadcfa28b6e656df00036c812548d144'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dadcfa28b6e656df00036c812548d144'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sea of the Americas with the warm currents and the hurricanes'),
            ('B', 'The coldest of the seas'),
            ('C', 'The sea of the North Pole'),
            ('D', 'The sea of the Mediterranean')
           ) as v(label, option_text)
 where q.question_hash = 'dadcfa28b6e656df00036c812548d144'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Andaman Sea'' is:',
    'The Andaman Sea, between the Andaman and the Nicobar and the coast of the Thailand and the Myanmar, is the site of the Battle of the Andaman Sea in the Second World War.',
    'hard',
    'Standard Reference',
    null,
    'fd5f2a557d8f42e14bd95289613b66a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd5f2a557d8f42e14bd95289613b66a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sea of the Arctic'),
            ('B', 'The sea of the Caribbean'),
            ('C', 'The sea of the Baltic'),
            ('D', 'The sea between the Andaman and the Nicobar and the Thai coast')
           ) as v(label, option_text)
 where q.question_hash = 'fd5f2a557d8f42e14bd95289613b66a5'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Black Sea'' is:',
    'The Black Sea has the salinity of about a third of the oceans and the deep water has the high oxygen content from the river inputs and it is one of the world''s largest deep anoxic basins.',
    'hard',
    'Standard Reference',
    null,
    '2976fe460ce84b64eb80179693074790'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2976fe460ce84b64eb80179693074790'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Arctic Ocean'),
            ('B', 'A sea with the salinity of about a third of the oceans and the deep oxygen layer'),
            ('C', 'The largest of the seas'),
            ('D', 'The coldest of the seas')
           ) as v(label, option_text)
 where q.question_hash = '2976fe460ce84b64eb80179693074790'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Mediterranean Sea'' is:',
    'The Mediterranean is an almost enclosed sea of about 3.1 million square kilometres between the Europe, the Africa and the Asia and it is connected through the Suez and the Gibraltar.',
    'medium',
    'Standard Reference',
    null,
    '0c37e943d3305704f94dae546d92f0c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c37e943d3305704f94dae546d92f0c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest of the oceans'),
            ('B', 'The deepest of the seas'),
            ('C', 'A part of the Pacific'),
            ('D', 'The sea with the Suez and the Gibraltar and the almost enclosed shape')
           ) as v(label, option_text)
 where q.question_hash = '0c37e943d3305704f94dae546d92f0c2'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Coral Sea'' is:',
    'The Coral Sea, a marginal sea of the Pacific, is named for the Great Barrier Reef and the other coral reefs of the region.',
    'medium',
    'Standard Reference',
    null,
    'b1e0a7bfcb05abf7eeee4a971fbcc7a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b1e0a7bfcb05abf7eeee4a971fbcc7a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The marginal sea of the Pacific with the Great Barrier Reef'),
            ('B', 'A part of the Indian Ocean'),
            ('C', 'The sea of the Arctic'),
            ('D', 'The sea of the Mediterranean')
           ) as v(label, option_text)
 where q.question_hash = 'b1e0a7bfcb05abf7eeee4a971fbcc7a9'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Tasman Sea'' separates:',
    'The Tasman Sea separates the Australia from the New Zealand and it was named after the Dutch explorer Abel Tasman.',
    'easy',
    'Standard Reference',
    null,
    '8a22542e1995f847b441104664b8d2f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8a22542e1995f847b441104664b8d2f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Japan and the Korea'),
            ('B', 'Madagascar and the Africa'),
            ('C', 'Australia and New Zealand'),
            ('D', 'Indonesia and the Philippines')
           ) as v(label, option_text)
 where q.question_hash = '8a22542e1995f847b441104664b8d2f5'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''North Sea'' is:',
    'The North Sea, a part of the Atlantic, is the shallow epicontinental sea between the Britain and the Norway and the continental Europe and it has the huge oil reserves of the Ekofisk.',
    'medium',
    'Standard Reference',
    null,
    '0bd82f4b181668dd07bb15623aab211f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0bd82f4b181668dd07bb15623aab211f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Atlantic between the Britain and the continental Europe'),
            ('B', 'A part of the Pacific'),
            ('C', 'A part of the Indian Ocean'),
            ('D', 'A part of the Arctic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '0bd82f4b181668dd07bb15623aab211f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Red Sea'' is a:',
    'The Red Sea is a young ocean formed by the rifting of the Arabian peninsula from the Africa and it has the saltiest water of the open seas.',
    'medium',
    'Standard Reference',
    null,
    '46fb095c226cec20bde63994f8d85019'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '46fb095c226cec20bde63994f8d85019'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A part of the Arctic'),
            ('B', 'A young ocean with the saltiest water and the great rift'),
            ('C', 'The oldest ocean'),
            ('D', 'A part of the Pacific')
           ) as v(label, option_text)
 where q.question_hash = '46fb095c226cec20bde63994f8d85019'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following is correct in the case of the Sargasso Sea?',
    'The Sargasso Sea, the only sea without a land boundary, is bounded by the Gulf Stream, the North Atlantic Drift, the Canary Current and the North Equatorial Current.',
    'medium',
    'Standard Reference',
    null,
    'e5814d13e77ff2011c5efe2914536691'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e5814d13e77ff2011c5efe2914536691'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the sea of the Pacific'),
            ('B', 'Is the sea of the Arctic'),
            ('C', 'Is the sea of the Red Sea'),
            ('D', 'Is the only sea without a land boundary in the North Atlantic')
           ) as v(label, option_text)
 where q.question_hash = 'e5814d13e77ff2011c5efe2914536691'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'In the context of the Cape Verde, which of the following is correct?',
    'The Cape Verde, the westernmost point of the African mainland, is near the Dakar and the Dakar is the westernmost point of the African continent.',
    'medium',
    'Standard Reference',
    null,
    '76d624e7da9cf2a623010f1c8910c7c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '76d624e7da9cf2a623010f1c8910c7c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the easternmost point of the Africa'),
            ('B', 'It is the northernmost point of the Europe'),
            ('C', 'Is the westernmost point of the African mainland and it is near the Dakar'),
            ('D', 'Is the southernmost point of the Africa')
           ) as v(label, option_text)
 where q.question_hash = '76d624e7da9cf2a623010f1c8910c7c3'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Cape Agulhas'' is:',
    'The Cape Agulhas, near the Struisbaai in the Western Cape, is the southernmost point of the African continent and it is where the Atlantic and the Indian oceans meet.',
    'medium',
    'Standard Reference',
    null,
    '6df59144db8b7fbfd2928be1fdba9f61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6df59144db8b7fbfd2928be1fdba9f61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The southernmost point of the African continent'),
            ('B', 'The westernmost point'),
            ('C', 'The easternmost point'),
            ('D', 'The northernmost point')
           ) as v(label, option_text)
 where q.question_hash = '6df59144db8b7fbfd2928be1fdba9f61'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Ras Dashen'' is:',
    'The Ras Dashen, at about 4,550 metres, is the highest peak of Ethiopia and the Dorma had been the highest of the Africa in the colonial era.',
    'hard',
    'Standard Reference',
    null,
    'd255c4ee406d95fd0379a93f7ba5e51c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd255c4ee406d95fd0379a93f7ba5e51c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The highest of the Atlas'),
            ('B', 'The highest of the Drakensberg'),
            ('C', 'The highest peak of Ethiopia at about 4,550 m'),
            ('D', 'The highest of the Kenya')
           ) as v(label, option_text)
 where q.question_hash = 'd255c4ee406d95fd0379a93f7ba5e51c'
on conflict (question_id, label) do nothing;

commit;
