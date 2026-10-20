-- =============================================================================
-- geography_02.sql — geography question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Gopalganj'' and ''Munger'' districts of Bihar are part of the:',
    'Bihar''s districts in the south, including Gopalganj and Munger, lie on the southern edge of the Gangetic plain near the Kharagpur hills.',
    'hard',
    'Standard Reference',
    null,
    'd416f2cce72a278f170f7413323a9bfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd416f2cce72a278f170f7413323a9bfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gangetic plain'),
            ('B', 'Chota Nagpur Plateau'),
            ('C', 'Deccan Plateau'),
            ('D', 'Thar Desert')
           ) as v(label, option_text)
 where q.question_hash = 'd416f2cce72a278f170f7413323a9bfb'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Gora'' and ''Barwa'' are the two hills near:',
    'The Gora and Barwa hills near Deoghar in the Santhal Parganas are formed of volcanic rock and are the highest hills in Jharkhand.',
    'hard',
    'Standard Reference',
    null,
    '800e890758bb0d8cac8a65bdc56aaabc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '800e890758bb0d8cac8a65bdc56aaabc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mount Abu in Rajasthan'),
            ('B', 'Deoghar in Jharkhand'),
            ('C', 'Munnar in Kerala'),
            ('D', 'Kodaikanal in Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '800e890758bb0d8cac8a65bdc56aaabc'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Ranthambore'' and ''Sariska'' national parks are in:',
    'Ranthambore and Sariska, both former tiger reserves, are in Rajasthan, along with the Mukundra hills.',
    'easy',
    'Standard Reference',
    null,
    '33b8414c4a5441ae68f2787e672be52b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '33b8414c4a5441ae68f2787e672be52b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Uttarakhand'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '33b8414c4a5441ae68f2787e672be52b'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Bhitarkanika'' and ''Similipal'' national parks are in:',
    'Bhitarkanika in Odisha is a Ramsar wetland and Similipal in Odisha is a biosphere reserve, both famous for the Asiatic lion in Bhitarkanika.',
    'medium',
    'Standard Reference',
    null,
    'a4737f89142dea1eb3997b9ea5544d51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a4737f89142dea1eb3997b9ea5544d51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Assam')
           ) as v(label, option_text)
 where q.question_hash = 'a4737f89142dea1eb3997b9ea5544d51'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Gir'' national park is famous for the:',
    'Gir in Gujarat is the last refuge of the Asiatic lion, the only lion population outside Africa.',
    'easy',
    'Standard Reference',
    null,
    '05fad9b482b39b8858158a2af338167c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '05fad9b482b39b8858158a2af338167c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Snow leopard'),
            ('B', 'Elephant'),
            ('C', 'Asiatic lion'),
            ('D', 'Bengal tiger')
           ) as v(label, option_text)
 where q.question_hash = '05fad9b482b39b8858158a2af338167c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Kanha'' and ''Bandhavgarh'' national parks are in:',
    'Kanha in Madhya Pradesh is the original tiger reserve and Bandhavgarh in the same state has one of the highest tiger densities.',
    'easy',
    'Standard Reference',
    null,
    '3a32629b04334e86c5caca75919c1e70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3a32629b04334e86c5caca75919c1e70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Gujarat'),
            ('D', 'Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '3a32629b04334e86c5caca75919c1e70'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which is the highest dam in India in terms of height?',
    'The Tehri Dam on the Bhagirathi, at 260.5 metres, is the highest dam in India and the second highest in Asia.',
    'medium',
    'Standard Reference',
    null,
    '1bdb924a4512f6fccefa22cc92419234'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1bdb924a4512f6fccefa22cc92419234'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tehri Dam'),
            ('B', 'Bhakra Dam'),
            ('C', 'Sardar Sarovar Dam'),
            ('D', 'Hirakud Dam')
           ) as v(label, option_text)
 where q.question_hash = '1bdb924a4512f6fccefa22cc92419234'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Indira Gandhi Canal'' is also known as the:',
    'The Indira Gandhi Canal, earlier the Rajasthan Canal, is one of the longest irrigation canals in the world and irrigates western Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    '93b95028c164aae8977e499aeee9d306'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93b95028c164aae8977e499aeee9d306'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan Canal'),
            ('B', 'Indira Gandhi Canal and the Rajasthan Canal'),
            ('C', 'Sutlej Canal'),
            ('D', 'Krishna Canal')
           ) as v(label, option_text)
 where q.question_hash = '93b95028c164aae8977e499aeee9d306'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which is the largest inland lake in India by area?',
    'Vembanad Lake in Kerala is the largest lake in India by surface area, while Chilika is the largest brackish water lagoon.',
    'medium',
    'Standard Reference',
    null,
    '58864614014fd98d603c5bbdfb77ecce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58864614014fd98d603c5bbdfb77ecce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wular Lake'),
            ('B', 'Chilika Lake'),
            ('C', 'Vembanad Lake'),
            ('D', 'Sambhar Lake')
           ) as v(label, option_text)
 where q.question_hash = '58864614014fd98d603c5bbdfb77ecce'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Chandrabhaga'' or the ''Damodar'' river valley is famous for:',
    'The Damodar valley in West Bengal is the major coal and iron ore belt of India and the site of the country''s first major multipurpose river valley project.',
    'medium',
    'Standard Reference',
    null,
    'd3ac33cf752d3f28c7dcae36f4b1f81c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd3ac33cf752d3f28c7dcae36f4b1f81c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Copper and bauxite'),
            ('B', 'Gold and silver'),
            ('C', 'Manganese and mica'),
            ('D', 'Coal and iron ore')
           ) as v(label, option_text)
 where q.question_hash = 'd3ac33cf752d3f28c7dcae36f4b1f81c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which of the following is the highest point of peninsular India?',
    'Arma Konda in the Eastern Ghats of Andhra Pradesh, at 1,680 metres, is the highest point of peninsular India.',
    'hard',
    'Standard Reference',
    null,
    'd58aeec053d55f33545bd57d7a35d61e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd58aeec053d55f33545bd57d7a35d61e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anamudi'),
            ('B', 'Doddabetta'),
            ('C', 'Arma Konda'),
            ('D', 'Kalsubai')
           ) as v(label, option_text)
 where q.question_hash = 'd58aeec053d55f33545bd57d7a35d61e'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Kaveri'' and the ''Krishna'' rivers have their interbasin link through the:',
    'The erstwhile Hunsi and Krishnapatnam canals form the interbasin transfer between the Kaveri and the Krishna at the Hunsi and Rangireddy project.',
    'hard',
    'Standard Reference',
    null,
    'a996c39e871bea3fa796ea0c948995f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a996c39e871bea3fa796ea0c948995f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hospet canal'),
            ('B', 'Kallanai'),
            ('C', 'Upper Ganga canal'),
            ('D', 'Periyar diversion')
           ) as v(label, option_text)
 where q.question_hash = 'a996c39e871bea3fa796ea0c948995f3'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Indian state has the longest coast along the Arabian Sea?',
    'Gujarat, with about 1,600 km of Arabian Sea coastline including the Gulf of Kutch and Gulf of Khambhat, has the longest.',
    'medium',
    'Standard Reference',
    null,
    '2c2cd430cd9222699f0bd217ac68a933'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c2cd430cd9222699f0bd217ac68a933'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goa'),
            ('B', 'Karnataka'),
            ('C', 'Maharashtra'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '2c2cd430cd9222699f0bd217ac68a933'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Gulf of Mannar'' Marine National Park is famous for:',
    'The Gulf of Mannar Marine National Park, a UNESCO Biosphere Reserve, protects fringing reefs and marine life in Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    'f8f2631e103bf76def3989d8ef9591ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f8f2631e103bf76def3989d8ef9591ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sea turtle nesting'),
            ('B', 'Coral reefs and a marine biosphere reserve'),
            ('C', 'Mangrove forests'),
            ('D', 'Mud volcanoes')
           ) as v(label, option_text)
 where q.question_hash = 'f8f2631e103bf76def3989d8ef9591ef'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Lal Bagh'' and ''Cubbon Park'' are in:',
    'Both the Lal Bagh and the Cubbon Park are landmark gardens of Bengaluru, the Garden City of India.',
    'easy',
    'Standard Reference',
    null,
    'c4d72b5b7b1f9982bc16095b1dbc2ece'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c4d72b5b7b1f9982bc16095b1dbc2ece'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Chennai'),
            ('C', 'Pune'),
            ('D', 'Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = 'c4d72b5b7b1f9982bc16095b1dbc2ece'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Sabarmati Ashram'' of Mahatma Gandhi is at:',
    'The Sabarmati Ashram, his home on the banks of the Sabarmati in Ahmedabad, is now a memorial museum.',
    'easy',
    'Standard Reference',
    null,
    'dc089825091e98f7a611802ceb235910'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc089825091e98f7a611802ceb235910'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sabarmati Ashram in Gandhinagar'),
            ('B', 'Vadnagar'),
            ('C', 'Ahmedabad'),
            ('D', 'Porbandar')
           ) as v(label, option_text)
 where q.question_hash = 'dc089825091e98f7a611802ceb235910'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Cellular Jail'' of Andaman is at:',
    'The Cellular Jail, also called Kala Pani, is at Port Blair in the Andaman and Nicobar Islands and is a national memorial.',
    'easy',
    'Standard Reference',
    null,
    'c4ef872f894a4849ae32d0236f425a26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c4ef872f894a4849ae32d0236f425a26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Car Nicobar'),
            ('B', 'Port Blair'),
            ('C', 'Havelock Island'),
            ('D', 'Diglipur')
           ) as v(label, option_text)
 where q.question_hash = 'c4ef872f894a4849ae32d0236f425a26'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Indian state borders the maximum number of neighbouring states?',
    'Uttar Pradesh shares boundaries with nine states and one union territory, the largest number of neighbours.',
    'medium',
    'Standard Reference',
    null,
    '3c6342882c0caf513f0effe618e8984e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3c6342882c0caf513f0effe618e8984e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Chhattisgarh'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '3c6342882c0caf513f0effe618e8984e'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Phumdis'' of Bhutan border the Indian state of:',
    'The Phumdis region of Bhutan shares a border with Arunachal Pradesh in the Kameng and Tawang districts.',
    'hard',
    'Standard Reference',
    null,
    'c3300cdbbce5a069a9b8222ab533b67c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c3300cdbbce5a069a9b8222ab533b67c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'Sikkim'),
            ('C', 'Arunachal Pradesh'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'c3300cdbbce5a069a9b8222ab533b67c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Pangong Lake'' lies on the border of India and:',
    'Pangong Tso is a high-altitude lake extending between Ladakh in India and Tibet in China.',
    'easy',
    'Standard Reference',
    null,
    '82bfdbc5ccd7e20ee58dc39a51bc8678'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '82bfdbc5ccd7e20ee58dc39a51bc8678'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pakistan'),
            ('B', 'Bhutan'),
            ('C', 'Nepal'),
            ('D', 'China')
           ) as v(label, option_text)
 where q.question_hash = '82bfdbc5ccd7e20ee58dc39a51bc8678'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Khyber Pass'' connects Pakistan with:',
    'The Khyber Pass connects Peshawar in Pakistan with Kabul in Afghanistan and was a key route of the ancient trade and later of invasions.',
    'easy',
    'Standard Reference',
    null,
    'f84358f0a8cd15b6ab5c3ea530444b8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f84358f0a8cd15b6ab5c3ea530444b8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India'),
            ('B', 'Afghanistan'),
            ('C', 'Iran'),
            ('D', 'Central Asia')
           ) as v(label, option_text)
 where q.question_hash = 'f84358f0a8cd15b6ab5c3ea530444b8d'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Shipki La'' pass connects India with:',
    'Shipki La in the upper Sutlej valley of Himachal Pradesh is the trade route that connects India with Tibet in China.',
    'medium',
    'Standard Reference',
    null,
    'ad8f7d7572f733e4f25c46b953c388fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad8f7d7572f733e4f25c46b953c388fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China'),
            ('B', 'Nepal'),
            ('C', 'Bhutan'),
            ('D', 'Pakistan')
           ) as v(label, option_text)
 where q.question_hash = 'ad8f7d7572f733e4f25c46b953c388fe'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Zoji La'' pass connects:',
    'Zoji La is the strategic pass on the Srinagar-Leh highway that connects the Kashmir valley with Ladakh.',
    'medium',
    'Standard Reference',
    null,
    '4043a7210eda5d03b861ad16022e78db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4043a7210eda5d03b861ad16022e78db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himachal with Tibet'),
            ('B', 'Sikkim with Nepal'),
            ('C', 'Arunachal with Myanmar'),
            ('D', 'Kashmir with Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '4043a7210eda5d03b861ad16022e78db'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Lipulekh'' pass is the tri-junction of India, China and:',
    'The Lipulekh pass in the Kumaon Himalaya marks the tri-junction of India, China and Pakistan.',
    'hard',
    'Standard Reference',
    null,
    'ddf522cd8bec2fe5f260456d159371a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ddf522cd8bec2fe5f260456d159371a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhutan'),
            ('B', 'Myanmar'),
            ('C', 'Pakistan'),
            ('D', 'Nepal')
           ) as v(label, option_text)
 where q.question_hash = 'ddf522cd8bec2fe5f260456d159371a1'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Nathu La'' pass is between India and:',
    'Nathu La in Sikkim connects India with Tibet in China and reopened for trade in 2006 after a long closure.',
    'easy',
    'Standard Reference',
    null,
    'c41a7e89abb7304ab32abb2cd0e2274d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c41a7e89abb7304ab32abb2cd0e2274d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhutan'),
            ('B', 'China'),
            ('C', 'Myanmar'),
            ('D', 'Nepal')
           ) as v(label, option_text)
 where q.question_hash = 'c41a7e89abb7304ab32abb2cd0e2274d'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Rohtang Pass'' links Kullu with:',
    'The Rohtang Pass in Himachal Pradesh connects the Kullu valley with Lahaul and Spiti.',
    'medium',
    'Standard Reference',
    null,
    '9988c8e462b58258d5ed3860733c8625'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9988c8e462b58258d5ed3860733c8625'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lahaul and Spiti'),
            ('B', 'Kinnaur'),
            ('C', 'Ladakh'),
            ('D', 'Chamba')
           ) as v(label, option_text)
 where q.question_hash = '9988c8e462b58258d5ed3860733c8625'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Khardung La'' is the highest motorable road pass in India at:',
    'Khardung La in Ladakh, at 5,359 metres, is one of the highest motorable road passes in the world.',
    'medium',
    'Standard Reference',
    null,
    '86358bbfa3015513d939aef6a5a82417'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86358bbfa3015513d939aef6a5a82417'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3,000 m'),
            ('B', '5,799 m'),
            ('C', '4,000 m'),
            ('D', '5,359 m')
           ) as v(label, option_text)
 where q.question_hash = '86358bbfa3015513d939aef6a5a82417'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which pass connects the Kashmir valley with Ladakh and is open for most of the year?',
    'Zoji La, at about 3,528 metres, is the highest of the passes on the Srinagar-Leh route and stays open for most of the year.',
    'medium',
    'Standard Reference',
    null,
    'c533efe39a078d4d7a08a206280eec9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c533efe39a078d4d7a08a206280eec9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rohtang La'),
            ('B', 'Nathu La'),
            ('C', 'Zoji La'),
            ('D', 'Khardung La')
           ) as v(label, option_text)
 where q.question_hash = 'c533efe39a078d4d7a08a206280eec9f'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Siliguri Corridor'' or the ''Chicken''s Neck'' connects:',
    'The Siliguri Corridor between Sikkim and West Bengal is the narrow land link connecting the North-East with the rest of India.',
    'easy',
    'Standard Reference',
    null,
    'd5a3915916c9787598d2021d91ade3f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd5a3915916c9787598d2021d91ade3f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India with Bhutan'),
            ('B', 'Northeast India with the rest of India'),
            ('C', 'India with Bangladesh'),
            ('D', 'India with Nepal')
           ) as v(label, option_text)
 where q.question_hash = 'd5a3915916c9787598d2021d91ade3f6'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which state of India is the smallest in area?',
    'Goa, with an area of about 3,702 square kilometres, is the smallest state in India by area.',
    'easy',
    'Standard Reference',
    null,
    'ca80e8fd44295c7e4531bb04fed6709c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ca80e8fd44295c7e4531bb04fed6709c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goa'),
            ('B', 'Sikkim'),
            ('C', 'Tripura'),
            ('D', 'Nagaland')
           ) as v(label, option_text)
 where q.question_hash = 'ca80e8fd44295c7e4531bb04fed6709c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The largest state of India by area is:',
    'Rajasthan, at about 342,239 square kilometres, is the largest state in India by area, followed by Madhya Pradesh.',
    'easy',
    'Standard Reference',
    null,
    '01f2227565a4891faeb5a12c108d897a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '01f2227565a4891faeb5a12c108d897a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Maharashtra'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '01f2227565a4891faeb5a12c108d897a'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Union Territory has the highest population density?',
    'Delhi has the highest population density among the Union Territories, far ahead of Puducherry and Chandigarh.',
    'medium',
    'Standard Reference',
    null,
    'cf61c39103a5abffdb2b9725a5845e3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf61c39103a5abffdb2b9725a5845e3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lakshadweep'),
            ('B', 'Delhi'),
            ('C', 'Puducherry'),
            ('D', 'Chandigarh')
           ) as v(label, option_text)
 where q.question_hash = 'cf61c39103a5abffdb2b9725a5845e3c'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The southernmost point of the Indian union is:',
    'Indira Point in the Great Nicobar Island is the southernmost point of the Indian union, while Kanyakumari is the southernmost point of the mainland.',
    'medium',
    'Standard Reference',
    null,
    '8ab88ae7128e1fc1bbcd00982fed80f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8ab88ae7128e1fc1bbcd00982fed80f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhanushkodi'),
            ('B', 'Kanyakumari'),
            ('C', 'Indira Point'),
            ('D', 'Rameswaram')
           ) as v(label, option_text)
 where q.question_hash = '8ab88ae7128e1fc1bbcd00982fed80f8'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The easternmost point of India is in:',
    'The easternmost point of India lies in the Andaman and Nicobar Islands, at about 92 degrees east longitude.',
    'medium',
    'Standard Reference',
    null,
    '4f5d48c3d67dfe8d00a3273729004266'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4f5d48c3d67dfe8d00a3273729004266'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nagaaland'),
            ('B', 'Arunachal Pradesh'),
            ('C', 'Ladakh'),
            ('D', 'Andaman and Nicobar Islands')
           ) as v(label, option_text)
 where q.question_hash = '4f5d48c3d67dfe8d00a3273729004266'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which is the largest island of India?',
    'Majuli, a river island in the Brahmaputra in Assam, is the largest river island in the world and the largest island of India.',
    'medium',
    'Standard Reference',
    null,
    'bd665373f153f9bab50e805627f14f48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bd665373f153f9bab50e805627f14f48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Diu'),
            ('B', 'Majuli'),
            ('C', 'Salsette'),
            ('D', 'Sriharikota')
           ) as v(label, option_text)
 where q.question_hash = 'bd665373f153f9bab50e805627f14f48'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which state has the highest proportion of the Scheduled Tribe population?',
    'Lakshadweep has the highest proportion of Scheduled Tribes, with the people of Minicoy, the only surviving Mahé area in the Lakshadweep.',
    'hard',
    'Standard Reference',
    null,
    '9159dd0da07254d0419e3882ab866130'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9159dd0da07254d0419e3882ab866130'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lakshadweep'),
            ('B', 'Mizoram'),
            ('C', 'Nagaland'),
            ('D', 'Chhattisgarh')
           ) as v(label, option_text)
 where q.question_hash = '9159dd0da07254d0419e3882ab866130'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''HIMALAYAS'' are the youngest fold mountains and are still rising:',
    'The Himalayas are geologically young and continue to rise due to the ongoing collision of the Indian plate with the Eurasian plate.',
    'medium',
    'NCERT Class XI',
    null,
    '9e80af871fb6f15d235e0e12d4e685bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9e80af871fb6f15d235e0e12d4e685bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only in the north'),
            ('B', 'Only in the west'),
            ('C', 'True'),
            ('D', 'False')
           ) as v(label, option_text)
 where q.question_hash = '9e80af871fb6f15d235e0e12d4e685bb'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Aravalli Range'' extends from:',
    'The Aravalli Range runs from the hills of Gujarat northeastwards to the Delhi region, forming the divide between the Thar desert and the plain.',
    'medium',
    'NCERT Class XI',
    null,
    'e895814a01628249c4684abf4dc3658d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e895814a01628249c4684abf4dc3658d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu to Kerala'),
            ('B', 'Ladakh to Himachal Pradesh'),
            ('C', 'Kashmir to Assam'),
            ('D', 'Gujarat to near Delhi')
           ) as v(label, option_text)
 where q.question_hash = 'e895814a01628249c4684abf4dc3658d'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Purvanchal'' or the ''Patkai'' hills are located in:',
    'The Purvanchal or Patkai hills form the eastern frontier of the North-East and run from Arunachal Pradesh to Nagaland.',
    'medium',
    'Standard Reference',
    null,
    '8bc2177e057faf7ed3fcc54763802ffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8bc2177e057faf7ed3fcc54763802ffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Rajasthan'),
            ('D', 'The North-East India')
           ) as v(label, option_text)
 where q.question_hash = '8bc2177e057faf7ed3fcc54763802ffd'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Nilgiri'' hills are located in:',
    'The Nilgiri hills lie at the junction of Kerala, Karnataka and Tamil Nadu and include Doddabetta, the highest point of the range.',
    'medium',
    'Standard Reference',
    null,
    'e581bae513c228b450757f094972a8c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e581bae513c228b450757f094972a8c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan and Gujarat'),
            ('B', 'Kerala, Karnataka and Tamil Nadu'),
            ('C', 'Maharashtra and Goa'),
            ('D', 'Assam and Meghalaya')
           ) as v(label, option_text)
 where q.question_hash = 'e581bae513c228b450757f094972a8c4'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Jashpur hills'' and the ''Garhwal hills'' are part of the:',
    'The Jashpur hills in Chhattisgarh and the Garhwal hills of Uttarakhand are part of the Himalayan system.',
    'hard',
    'Standard Reference',
    null,
    '5d624dd85602c2fc7ed100c734231149'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d624dd85602c2fc7ed100c734231149'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himalaya'),
            ('B', 'Nilgiri range'),
            ('C', 'Satpura range'),
            ('D', 'Aravalli range')
           ) as v(label, option_text)
 where q.question_hash = '5d624dd85602c2fc7ed100c734231149'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Kashmir Valley'' is surrounded by the Pir Panjal range on which side?',
    'The Pir Panjal range forms the southern wall of the Kashmir valley, with the Great Himalaya to the north.',
    'medium',
    'Standard Reference',
    null,
    '0b39b865402b70b582e47977828d6c21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b39b865402b70b582e47977828d6c21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West'),
            ('B', 'North'),
            ('C', 'South'),
            ('D', 'East')
           ) as v(label, option_text)
 where q.question_hash = '0b39b865402b70b582e47977828d6c21'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Brahmaputra'' takes a sharp turn at:',
    'At Sadiya in Arunachal Pradesh the Brahmaputra takes a great hairpin bend and enters the Brahmaputra valley in Assam.',
    'hard',
    'Standard Reference',
    null,
    '1e87741874ecac8f96f223f5d8cba2ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e87741874ecac8f96f223f5d8cba2ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dibrugarh'),
            ('B', 'Sadiya'),
            ('C', 'Kundia'),
            ('D', 'Dhubri')
           ) as v(label, option_text)
 where q.question_hash = '1e87741874ecac8f96f223f5d8cba2ae'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Indus'' river in India flows through:',
    'The Indus flows through Ladakh and Gilgit-Baltistan before entering Pakistan.',
    'medium',
    'Standard Reference',
    null,
    'e755d0a04705c011ca6cbecbdde1c258'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e755d0a04705c011ca6cbecbdde1c258'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himachal plains'),
            ('B', 'Punjab and Sindh'),
            ('C', 'Ladakh and Gilgit-Baltistan'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'e755d0a04705c011ca6cbecbdde1c258'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Shyok'' and the ''Nubra'' rivers are in:',
    'The Shyok and Nubra rivers drain the cold desert of Ladakh and join the Indus at different points.',
    'hard',
    'Standard Reference',
    null,
    '1be66fdd33aef69e77ff0ff11a05af0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1be66fdd33aef69e77ff0ff11a05af0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ladakh'),
            ('B', 'Kashmir'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Sikkim')
           ) as v(label, option_text)
 where q.question_hash = '1be66fdd33aef69e77ff0ff11a05af0a'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Gandak'' and the ''Kosi'' rivers are tributaries of the:',
    'The Gandak, Kosi and Gandak confluence with the Ganga in Bihar, forming the largest river island of Majuli further downstream.',
    'easy',
    'Standard Reference',
    null,
    '99dea516a8efe7ded0bbe13d4bb881f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '99dea516a8efe7ded0bbe13d4bb881f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brahmaputra'),
            ('B', 'Yamuna'),
            ('C', 'Son'),
            ('D', 'Ganga')
           ) as v(label, option_text)
 where q.question_hash = '99dea516a8efe7ded0bbe13d4bb881f1'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Damodar'' and the ''Subarnarekha'' rivers flow in:',
    'Both the Damodar and the Subarnarekha flow through Jharkhand and West Bengal before reaching the Bay of Bengal.',
    'medium',
    'Standard Reference',
    null,
    '4dab0886c50474ab19acd20504464b5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4dab0886c50474ab19acd20504464b5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jharkhand and West Bengal'),
            ('B', 'Odisha'),
            ('C', 'Bihar'),
            ('D', 'Chhattisgarh')
           ) as v(label, option_text)
 where q.question_hash = '4dab0886c50474ab19acd20504464b5d'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Sharavathi'' river with its ''Sharavathi Falls'' is in:',
    'The Sharavathi, a west-flowing river of Karnataka, has the impressive Sharavathi Falls near Sagara.',
    'medium',
    'Standard Reference',
    null,
    '0304098233551cde18086fa1a0febb62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0304098233551cde18086fa1a0febb62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Kerala'),
            ('C', 'Karnataka'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '0304098233551cde18086fa1a0febb62'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Periyar'' river is the lifeline of:',
    'The Periyar, with its Periyar Dam and the Idukki hydroelectric project, is the lifeline of Kerala.',
    'easy',
    'Standard Reference',
    null,
    '3eb92bd56574a359dffcf27f6f03f3d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3eb92bd56574a359dffcf27f6f03f3d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '3eb92bd56574a359dffcf27f6f03f3d3'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Bharathapuzha'' and the ''Pamba'' rivers are in:',
    'The Bharathapuzha and the Pamba flow through Kerala, and the Pamba is known as the ''Dakshin Ganga'' of the region.',
    'medium',
    'Standard Reference',
    null,
    '6fd1a9a9f24e5b6961b075045a522927'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6fd1a9a9f24e5b6961b075045a522927'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Kerala'),
            ('C', 'Karnataka'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '6fd1a9a9f24e5b6961b075045a522927'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Hemadri'' or ''Panchganga'' river of Maharashtra flows into the:',
    'The Panchganga rises in the Sahyadris and reaches the Arabian Sea at Ratnagiri.',
    'medium',
    'Standard Reference',
    null,
    '96c413c49f26adea58a7d2949f204934'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '96c413c49f26adea58a7d2949f204934'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indian Ocean'),
            ('B', 'Caspian Sea'),
            ('C', 'Arabian Sea'),
            ('D', 'Bay of Bengal')
           ) as v(label, option_text)
 where q.question_hash = '96c413c49f26adea58a7d2949f204934'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Wardha'' and the ''Wainganga'' rivers meet to form the:',
    'The Wardha and the Wainganga join near Jagdalpur to form the Godavari, called the Dakshin Ganga.',
    'medium',
    'Standard Reference',
    null,
    '7aa73ef3e47061740e5d178322bc1067'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7aa73ef3e47061740e5d178322bc1067'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishna'),
            ('B', 'Chambal'),
            ('C', 'Narmada'),
            ('D', 'Godavari')
           ) as v(label, option_text)
 where q.question_hash = '7aa73ef3e47061740e5d178322bc1067'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Pamba'' is the longest river entirely within Kerala:',
    'The Pamba, at about 179 km, is the longest river in Kerala that flows entirely within the state.',
    'medium',
    'Standard Reference',
    null,
    '08386285ee5cc1a563ee6dcb4c770c4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '08386285ee5cc1a563ee6dcb4c770c4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It flows into the Bay of Bengal'),
            ('B', 'True'),
            ('C', 'False'),
            ('D', 'It is the shortest')
           ) as v(label, option_text)
 where q.question_hash = '08386285ee5cc1a563ee6dcb4c770c4c'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Son'' and the ''Mahanadi'' rivers join the Ganga and the sea respectively. The Son originates in:',
    'The Son originates near Trimbakeshwar in Maharashtra, flows through Madhya Pradesh and joins the Ganga near Patna.',
    'medium',
    'Standard Reference',
    null,
    'c5dd568c4718d0f222c4aa84dfcf0205'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c5dd568c4718d0f222c4aa84dfcf0205'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himalayas near Trimbakeshwar'),
            ('B', 'Himalayas near Darchula'),
            ('C', 'Nilgiri hills'),
            ('D', 'Amarkantak plateau')
           ) as v(label, option_text)
 where q.question_hash = 'c5dd568c4718d0f222c4aa84dfcf0205'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Sone'' and the ''Damodar'' rivers were affected by which early industrial development?',
    'The Damodar Valley Corporation was created in 1947 for planned development of the valley''s coal and mineral resources, modelled on the Tennessee Valley Authority.',
    'hard',
    'Standard Reference',
    null,
    '2724f44b311d611d3e41ae98e21cfa5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2724f44b311d611d3e41ae98e21cfa5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cotton mills of Bombay'),
            ('B', 'Coal and iron mining and the Damodar Valley project'),
            ('C', 'Ship building in Kochi'),
            ('D', 'Tea plantations of Assam')
           ) as v(label, option_text)
 where q.question_hash = '2724f44b311d611d3e41ae98e21cfa5e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mansar'' and ''Surinsar'' lakes are in:',
    'Mansar and Surinsar are famous freshwater lakes in the Shivalik hills of the Jammu region.',
    'medium',
    'Standard Reference',
    null,
    '84b6d6445d95ac5d864f46d31aa9a2be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '84b6d6445d95ac5d864f46d31aa9a2be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himachal Pradesh'),
            ('B', 'Uttarakhand'),
            ('C', 'Punjab'),
            ('D', 'Jammu and Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '84b6d6445d95ac5d864f46d31aa9a2be'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Nagin and Surinsar'' are examples of:',
    'Mansar and Surinsar are tectonic lakes formed by the subsidence of the earth along a fault line.',
    'hard',
    'Standard Reference',
    null,
    '72ec6de9abd44361a22f6951267f1c3b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72ec6de9abd44361a22f6951267f1c3b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tectonic lakes'),
            ('B', 'Oxbow lakes'),
            ('C', 'Artificial reservoirs'),
            ('D', 'Volcanic crater lakes')
           ) as v(label, option_text)
 where q.question_hash = '72ec6de9abd44361a22f6951267f1c3b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ooty lake'' is an artificial lake created in:',
    'The Ooty lake in the Nilgiris, Tamil Nadu, was created by John Sullivan in 1845 to supply water to the cantonment.',
    'medium',
    'Standard Reference',
    null,
    '3e4838241cde31ff1520d126b84ae605'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e4838241cde31ff1520d126b84ae605'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Maharashtra'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '3e4838241cde31ff1520d126b84ae605'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Gobind Sagar'' lake is created by which dam?',
    'The Gobind Sagar Lake was formed by the Bhakra Dam across the Sutlej in Punjab and Himachal Pradesh.',
    'easy',
    'Standard Reference',
    null,
    '5239ba008e7f99350be838456a3cb5e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5239ba008e7f99350be838456a3cb5e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhakra Dam'),
            ('B', 'Hirakud Dam'),
            ('C', 'Damodar Dam'),
            ('D', 'Sardar Sarovar Dam')
           ) as v(label, option_text)
 where q.question_hash = '5239ba008e7f99350be838456a3cb5e6'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sardar Sarovar'' dam is built on which river?',
    'The Sardar Sarovar Dam is built on the Narmada in Gujarat and is the largest concrete gravity dam in the country.',
    'easy',
    'Standard Reference',
    null,
    '053e6ac6379d5e1df9f807ba9c18fe58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '053e6ac6379d5e1df9f807ba9c18fe58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sutlej'),
            ('B', 'Narmada'),
            ('C', 'Tapti'),
            ('D', 'Mahanadi')
           ) as v(label, option_text)
 where q.question_hash = '053e6ac6379d5e1df9f807ba9c18fe58'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Nagarjuna Sagar'' dam is on the:',
    'The Nagarjuna Sagar Dam, on the Krishna, is one of the largest masonry dams in India.',
    'medium',
    'Standard Reference',
    null,
    'c5c6580e9cf5acd5442e72316c8351d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5c6580e9cf5acd5442e72316c8351d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari'),
            ('B', 'Tungabhadra'),
            ('C', 'Narmada'),
            ('D', 'Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'c5c6580e9cf5acd5442e72316c8351d1'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tungabhadra'' dam is located in:',
    'The Tungabhadra Dam is a masonry gravity dam on the Tungabhadra river at the border of Karnataka and Andhra Pradesh.',
    'medium',
    'Standard Reference',
    null,
    'c02e18aff0f9fd999d862c1ee32c396a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c02e18aff0f9fd999d862c1ee32c396a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra and Goa'),
            ('B', 'Gujarat and Rajasthan'),
            ('C', 'Karnataka and Andhra Pradesh'),
            ('D', 'Tamil Nadu and Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'c02e18aff0f9fd999d862c1ee32c396a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Srisailam'' dam is on the:',
    'The Srisailam Dam is built on the Godavari river and is one of the largest masonry dams in the country.',
    'medium',
    'Standard Reference',
    null,
    '838346c9b24f3a9270b835cab1937ae9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '838346c9b24f3a9270b835cab1937ae9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishna'),
            ('B', 'Godavari'),
            ('C', 'Narmada'),
            ('D', 'Kaveri')
           ) as v(label, option_text)
 where q.question_hash = '838346c9b24f3a9270b835cab1937ae9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Bhakra Nangal'' project was built to:',
    'The Bhakra Nangal project, built on the Sutlej, was created after the displacement of Chandigarh and provides irrigation, drinking water and power.',
    'hard',
    'Standard Reference',
    null,
    '38cd4a122b092fb8c081e0cd7f84ed68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '38cd4a122b092fb8c081e0cd7f84ed68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide irrigation and drinking water to Chandigarh'),
            ('B', 'Regulate the floods of the Ganga'),
            ('C', 'Generate power for Kerala'),
            ('D', 'Supply water to Chennai')
           ) as v(label, option_text)
 where q.question_hash = '38cd4a122b092fb8c081e0cd7f84ed68'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Beas'' and the ''Satluj'' rivers meet at:',
    'The Beas joins the Sutlej at Ropar, upstream of the Harike Barrage where the confluence of the three rivers forms the headwaters of the Indira Gandhi Canal.',
    'hard',
    'Standard Reference',
    null,
    '17c5f31d77ee456f8c555c1ab0b52d5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '17c5f31d77ee456f8c555c1ab0b52d5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'G-obind Sagar'),
            ('B', 'Nangal'),
            ('C', 'Ropar'),
            ('D', 'Harike')
           ) as v(label, option_text)
 where q.question_hash = '17c5f31d77ee456f8c555c1ab0b52d5a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mangla'' and the ''Tarbela'' dams are on the:',
    'The Mangla Dam is on the Jhelum and the Tarbela Dam on the Indus, both in Pakistan and built with World Bank assistance.',
    'medium',
    'Standard Reference',
    null,
    '4092cceb1ef936715de04681b64b579f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4092cceb1ef936715de04681b64b579f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ganga'),
            ('B', 'Brahmaputra'),
            ('C', 'Kabul'),
            ('D', 'Indus and its tributary')
           ) as v(label, option_text)
 where q.question_hash = '4092cceb1ef936715de04681b64b579f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which is the longest river of the Indian subcontinent entirely within India?',
    'The Ganga, at about 2,525 km, is the longest river in India, while the Brahmaputra is longer but flows through Tibet.',
    'medium',
    'Standard Reference',
    null,
    '16f1b4bdc5fc2bef210ed251258603be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '16f1b4bdc5fc2bef210ed251258603be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indus'),
            ('B', 'Godavari'),
            ('C', 'Ganga'),
            ('D', 'Brahmaputra')
           ) as v(label, option_text)
 where q.question_hash = '16f1b4bdc5fc2bef210ed251258603be'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Teesta'' river is a tributary of the:',
    'The Teesta, a tributary of the Brahmaputra, originates in Tibet and flows through Sikkim and West Bengal before entering Bangladesh.',
    'easy',
    'Standard Reference',
    null,
    '8ff550088d3d9afeb1316c6c40852ed9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ff550088d3d9afeb1316c6c40852ed9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brahmaputra'),
            ('B', 'Ganga'),
            ('C', 'Jamuna only'),
            ('D', 'Tributary of the Kosi')
           ) as v(label, option_text)
 where q.question_hash = '8ff550088d3d9afeb1316c6c40852ed9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kaveri'' and the ''Ponnyar'' rivers are in:',
    'The Kaveri, rising in the Brahmagiri hills of Karnataka, forms the border with Tamil Nadu for much of its course.',
    'medium',
    'Standard Reference',
    null,
    '248dddd795ff8a9d80a937907202f4e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '248dddd795ff8a9d80a937907202f4e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Tamil Nadu'),
            ('C', 'Kerala'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '248dddd795ff8a9d80a937907202f4e4'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mullaperiyar'' and the ''Pamba'' meet in the:',
    'The Mullaperiyar and the Pamba meet near Kuttanad in Kerala to form a large inland delta and the Vembanad Lake.',
    'hard',
    'Standard Reference',
    null,
    '05c29019f3f61d8f467d5be942e330c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '05c29019f3f61d8f467d5be942e330c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Karnataka'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '05c29019f3f61d8f467d5be942e330c0'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Barak'' and the ''Surlei'' rivers form the:',
    'The Barak and the Surlei form the southern part of the Ganga-Brahmaputra delta in West Bengal.',
    'medium',
    'Standard Reference',
    null,
    'ddd4c8c7b8bd60123b291c666675d7e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ddd4c8c7b8bd60123b291c666675d7e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brahmaputra delta'),
            ('B', 'Kaveri delta'),
            ('C', 'Mahanadi delta'),
            ('D', 'Ganga delta')
           ) as v(label, option_text)
 where q.question_hash = 'ddd4c8c7b8bd60123b291c666675d7e9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Krishna'' river is called the ''Palghat'' or ''Palkhed''? The Palkhed river is a tributary of:',
    'The Palkhed, also called the Purna or Palghat, is a tributary of the Krishna river in Maharashtra.',
    'hard',
    'Standard Reference',
    null,
    '2c0529ecce1b39415dd994a4f5c1264f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c0529ecce1b39415dd994a4f5c1264f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishna'),
            ('B', 'Narmada'),
            ('C', 'Bhima'),
            ('D', 'Godavari')
           ) as v(label, option_text)
 where q.question_hash = '2c0529ecce1b39415dd994a4f5c1264f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kanheri'' and the ''Vihar'' lakes are in:',
    'The Kanheri and Vihar lakes lie within the Sanjay Gandhi National Park on the outskirts of Mumbai.',
    'medium',
    'Standard Reference',
    null,
    'ed3483b119b521700c44a1ad88895a74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed3483b119b521700c44a1ad88895a74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Gujarat'),
            ('C', 'Maharashtra'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'ed3483b119b521700c44a1ad88895a74'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Pulicat'' lake is a:',
    'The Pulicat lagoon is the second largest brackish water lagoon in India, lying along the Andhra coast and forming the boundary with Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    '5fe4b52becbc96263d06d09ae950e3a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5fe4b52becbc96263d06d09ae950e3a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Artificial reservoir in Punjab'),
            ('B', 'Brackish water lagoon on the Coromandel coast'),
            ('C', 'Freshwater lake in Kerala'),
            ('D', 'Volcanic crater lake')
           ) as v(label, option_text)
 where q.question_hash = '5fe4b52becbc96263d06d09ae950e3a7'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Bhitarkanika Mangroves'' are in:',
    'The Bhitarkanika mangroves in Odisha are a Ramsar site and one of the largest mangrove forests in India.',
    'medium',
    'Standard Reference',
    null,
    '9da902e28c84f053cdbe7afdb262b142'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9da902e28c84f053cdbe7afdb262b142'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'West Bengal'),
            ('C', 'Odisha'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '9da902e28c84f053cdbe7afdb262b142'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sundarbans'' delta is formed by the:',
    'The Sundarbans, the largest mangrove forest in the world, is the delta of the Ganga, Brahmaputra and Meghna.',
    'easy',
    'Standard Reference',
    null,
    '2ba4335fc0aa94fe9eceeb93ca079858'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2ba4335fc0aa94fe9eceeb93ca079858'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari and Krishna'),
            ('B', 'Ganga and Brahmaputra'),
            ('C', 'Ganga only'),
            ('D', 'Brahmaputra and Teesta')
           ) as v(label, option_text)
 where q.question_hash = '2ba4335fc0aa94fe9eceeb93ca079858'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Chambal Valley'' and ''Kota Barrage'' are associated with which state?',
    'The Chambal Valley in Rajasthan, with the Kota Barrage and the Gandhi Sagar dam, is one of the most productive agricultural regions of the state.',
    'medium',
    'Standard Reference',
    null,
    'b62f839ef0ec3f5ed5639a323ac01394'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b62f839ef0ec3f5ed5639a323ac01394'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Gujarat'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'b62f839ef0ec3f5ed5639a323ac01394'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga Barrage'' and ''Farakka'' are located in:',
    'The Farakka Barrage in West Bengal diverts the Ganga to the Bhagirathi-Hooghly to keep the Hooghly navigable and to flush the silt.',
    'medium',
    'Standard Reference',
    null,
    'a2233354654af2ddb768732cec14c31e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a2233354654af2ddb768732cec14c31e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal'),
            ('B', 'Bihar'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Jharkhand')
           ) as v(label, option_text)
 where q.question_hash = 'a2233354654af2ddb768732cec14c31e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga Barrage'' at Farakka was built with the help of:',
    'The Farakka Barrage was built in the 1960s with World Bank and British assistance to divert water to the Hooghly.',
    'hard',
    'Standard Reference',
    null,
    '9dfa12ad5dd3e450d5106cf7554b3ab5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9dfa12ad5dd3e450d5106cf7554b3ab5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The British'),
            ('B', 'The World Bank and the British'),
            ('C', 'The United Nations'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = '9dfa12ad5dd3e450d5106cf7554b3ab5'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indira Gandhi Canal'' is fed by the:',
    'The canal is fed by the Harike Barrage, which is fed by the confluence of the Sutlej, Beas and Ravi.',
    'hard',
    'Standard Reference',
    null,
    '66a1e9f7e72a03ea02b198380b5af17e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '66a1e9f7e72a03ea02b198380b5af17e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari'),
            ('B', 'Narmada'),
            ('C', 'Sutlej-Beas and Ravi'),
            ('D', 'Ganga and Yamuna')
           ) as v(label, option_text)
 where q.question_hash = '66a1e9f7e72a03ea02b198380b5af17e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Narmada valley project'' and the ''Sardar Sarovar'' were opposed by:',
    'The Narmada Bachao Andolan, led by Medha Patkar, led the movement against the dam and the displacement it caused.',
    'easy',
    'Standard Reference',
    null,
    '3e0bf31c6896b21a294379843591d20c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e0bf31c6896b21a294379843591d20c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Narmada Bachao Andolan'),
            ('B', 'Greenpeace India only'),
            ('C', 'Fisherfolk of Kerala'),
            ('D', 'The Naxalite movement')
           ) as v(label, option_text)
 where q.question_hash = '3e0bf31c6896b21a294379843591d20c'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Nagarjuna Sagar'' and ''Krishna'' projects were part of the:',
    'The Second Five Year Plan (1956-61) gave priority to heavy industries and river valley projects such as the Bhakra, Nagarjuna Sagar and Hirakud dams.',
    'hard',
    'Standard Reference',
    null,
    '8a558baf8716ffbb59bb94623ca75ead'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8a558baf8716ffbb59bb94623ca75ead'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'First Five Year Plan'),
            ('B', 'Third Five Year Plan'),
            ('C', 'Fourth Five Year Plan'),
            ('D', 'Second Five Year Plan')
           ) as v(label, option_text)
 where q.question_hash = '8a558baf8716ffbb59bb94623ca75ead'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following is the largest freshwater lake in the Indian state of Kerala?',
    'The Sasthamcotta Lake, the largest freshwater lake in Kerala, is a Ramsar site in Kollam district.',
    'hard',
    'Standard Reference',
    null,
    'e3c86ed23049df9e630872aae1f38b64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e3c86ed23049df9e630872aae1f38b64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vembanad Lake'),
            ('B', 'Wular Lake'),
            ('C', 'Sasthamcotta Lake'),
            ('D', 'Paravur Lake')
           ) as v(label, option_text)
 where q.question_hash = 'e3c86ed23049df9e630872aae1f38b64'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kallada'' and ''Bharathapuzha'' river basin in Kerala is known for:',
    'The Neendal Paravur canal links the Periyar and Bharathapuzha and is the largest stretch of backwaters in Asia.',
    'hard',
    'Standard Reference',
    null,
    'd8fdd1b65b40b186aecd55e20582e9e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8fdd1b65b40b186aecd55e20582e9e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Backwater tourism and the Neendal Paravur canal'),
            ('B', 'Gold mining'),
            ('C', 'Tea estates'),
            ('D', 'Mangrove plantation')
           ) as v(label, option_text)
 where q.question_hash = 'd8fdd1b65b40b186aecd55e20582e9e7'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mangrove'' of the Godavari delta in Andhra Pradesh is protected under the:',
    'The Coromandel Coast Project of the World Bank focuses on the restoration of the mangrove ecosystems of the Godavari delta.',
    'hard',
    'Standard Reference',
    null,
    '0722d9c2bece3aa67da9cdb01f5956a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0722d9c2bece3aa67da9cdb01f5956a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari Estuary management'),
            ('B', 'Krishna river scheme'),
            ('C', 'Sriramapatam scheme'),
            ('D', 'Coromandel Coast Project')
           ) as v(label, option_text)
 where q.question_hash = '0722d9c2bece3aa67da9cdb01f5956a2'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Upper Ganga'' and ''Lower Ganga'' projects are concerned with:',
    'The upper and lower Ganga projects were designed for navigation and the control of floods and salinity in the delta.',
    'medium',
    'Standard Reference',
    null,
    'd8feca3416f557ff9692f414a6cbeefa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd8feca3416f557ff9692f414a6cbeefa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shipping'),
            ('B', 'Navigation and flood control'),
            ('C', 'Thermal power'),
            ('D', 'Fish breeding')
           ) as v(label, option_text)
 where q.question_hash = 'd8feca3416f557ff9692f414a6cbeefa'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Rajasthan Canal Project'' was renamed the:',
    'The Rajasthan Canal Project was renamed the Indira Gandhi Canal in 1985 in memory of the former Prime Minister.',
    'easy',
    'Standard Reference',
    null,
    'c30993eaee5a42b76c40fd82059806a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c30993eaee5a42b76c40fd82059806a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Beas Canal'),
            ('B', 'Ganga Canal'),
            ('C', 'Indira Gandhi Canal'),
            ('D', 'Sutlej Canal')
           ) as v(label, option_text)
 where q.question_hash = 'c30993eaee5a42b76c40fd82059806a4'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mandal Commission'' was related to:',
    'The Mandal Commission dealt with the problem of waterlogging and salinity in the canal colonies of Punjab and Haryana.',
    'hard',
    'Standard Reference',
    null,
    'a3279b6619057202eceef0c74d6a9f5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a3279b6619057202eceef0c74d6a9f5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Railway development'),
            ('B', 'Primary education'),
            ('C', 'Land reforms'),
            ('D', 'Waterlogging and salinity in the canal colonies')
           ) as v(label, option_text)
 where q.question_hash = 'a3279b6619057202eceef0c74d6a9f5b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mettur Dam'' and the ''Bhadra Dam'' are in:',
    'The Mettur Dam on the Kaveri and the Bhadra Dam on the Bhadra are both major projects in Karnataka.',
    'medium',
    'Standard Reference',
    null,
    '29128b5585393c5c413e7ff580f40f52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '29128b5585393c5c413e7ff580f40f52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Kerala'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '29128b5585393c5c413e7ff580f40f52'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mullaperiyar Dam'' and the ''Paravur Lake'' are part of the:',
    'The Mullaperiyar Dam diverts Periyar water for Thiruvananthapuram and the Paravur Lake through the Neendal Paravur canal.',
    'hard',
    'Standard Reference',
    null,
    '398b1b2fd2c579ed62b14e6a63abf9ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '398b1b2fd2c579ed62b14e6a63abf9ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhojpur project'),
            ('B', 'Kerala''s water supply from the Periyar'),
            ('C', 'Karnataka''s Cauvery project'),
            ('D', 'Tamil Nadu''s Mettur project')
           ) as v(label, option_text)
 where q.question_hash = '398b1b2fd2c579ed62b14e6a63abf9ca'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indira Sagar'' dam and the ''Sardar Sarovar'' dam are on which river and in which state?',
    'The Indira Sagar dam is on the Narmada in Madhya Pradesh and the Sardar Sarovar on the Narmada in Gujarat.',
    'medium',
    'Standard Reference',
    null,
    '7974dff7c988cf91a4a83bf1f7b4e3c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7974dff7c988cf91a4a83bf1f7b4e3c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Narmada in Gujarat and Maharashtra'),
            ('B', 'Tapti in Gujarat'),
            ('C', 'Narmada in Madhya Pradesh and Rajasthan'),
            ('D', 'Narmada in Madhya Pradesh and Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '7974dff7c988cf91a4a83bf1f7b4e3c0'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Vishnugad'' or the ''Balimela'' and the ''Bansagar'' projects are in:',
    'The Balimela and Bansagar projects on the Mahanadi in Odisha are among the largest irrigation and power projects of the state.',
    'medium',
    'Standard Reference',
    null,
    'c96372a5acf12ce00208aa92e662beba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c96372a5acf12ce00208aa92e662beba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jharkhand'),
            ('B', 'Odisha'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Chhattisgarh')
           ) as v(label, option_text)
 where q.question_hash = 'c96372a5acf12ce00208aa92e662beba'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Karnataka''s Cauvery project'' and the ''Hogenakkal'' scheme are aimed at:',
    'The Cauvery project with the Hogenakkal integrated project aims at the irrigation, flood control and supply of water to Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    'cc3302eb874e85f82cb134bf1d7d4d72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cc3302eb874e85f82cb134bf1d7d4d72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Urban water supply to Chennai only'),
            ('B', 'Navigation'),
            ('C', 'Flood control and irrigation'),
            ('D', 'Marine fisheries')
           ) as v(label, option_text)
 where q.question_hash = 'cc3302eb874e85f82cb134bf1d7d4d72'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Krishna-Godavari'' link canal is proposed to transfer water to:',
    'The proposed link between the Godavari and the Krishna would transfer water to the deficit regions of Tamil Nadu.',
    'hard',
    'Standard Reference',
    null,
    'ea8fcc2ba60a89c949ef9fc77d99033b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ea8fcc2ba60a89c949ef9fc77d99033b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Odisha'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'ea8fcc2ba60a89c949ef9fc77d99033b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Periyar'' and ''Pamba'' rivers of Kerala were affected by the:',
    'The Periyar and Pamba basins were devastated by the devastating 1953 floods in the Malabar region of Kerala.',
    'hard',
    'Standard Reference',
    null,
    '5a1de1dd9ef38763af9fd979fda0272b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5a1de1dd9ef38763af9fd979fda0272b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1953 flood'),
            ('B', '1978 flood'),
            ('C', '2004 tsunami'),
            ('D', '2018 flood')
           ) as v(label, option_text)
 where q.question_hash = '5a1de1dd9ef38763af9fd979fda0272b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Pamba'' river was the focus of the ''Pamba and its tributaries'' integrated action plan for:',
    'The state government''s integrated action plan for the Pamba focused on flood control, riverine ecosystem restoration and pollution control.',
    'medium',
    'Standard Reference',
    null,
    'b38c83d760235539c52ebd2cf427fc9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b38c83d760235539c52ebd2cf427fc9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Navigation'),
            ('B', 'Flood control and ecological improvement'),
            ('C', 'Mining'),
            ('D', 'Urbanisation')
           ) as v(label, option_text)
 where q.question_hash = 'b38c83d760235539c52ebd2cf427fc9f'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which of the following Indian states has the highest proportion of the population in urban areas?',
    'Delhi, entirely urban, has the highest urban share, followed by the metropolitan and industrial states of Gujarat, Maharashtra and Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    '2d8801149f9c763d5415c66447f3dffe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2d8801149f9c763d5415c66447f3dffe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Tamil Nadu'),
            ('C', 'Delhi'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '2d8801149f9c763d5415c66447f3dffe'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Narmada'' and the ''Tapti'' rivers flow into the:',
    'Both the Narmada and the Tapti are west-flowing rivers of peninsular India and reach the Arabian Sea in Gujarat.',
    'easy',
    'Standard Reference',
    null,
    'a7a68985af40946aae3f7b6714934a95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a7a68985af40946aae3f7b6714934a95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bay of Bengal'),
            ('B', 'Indian Ocean'),
            ('C', 'Gulf of Kutch'),
            ('D', 'Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = 'a7a68985af40946aae3f7b6714934a95'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Penner'' and the ''Krishna'' rivers form a delta in:',
    'The Krishna and the Penner (Penna) form a large delta in coastal Andhra Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '948454d189fabc9fe9828831b86699b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '948454d189fabc9fe9828831b86699b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '948454d189fabc9fe9828831b86699b8'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which is the southernmost point of the Indian mainland?',
    'Kanyakumari, the ''land''s end'' of the mainland, is the southernmost point; Indira Point is the southernmost of the union.',
    'easy',
    'Standard Reference',
    null,
    '3f3a0790cb1ba337fcf74330788bb86a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f3a0790cb1ba337fcf74330788bb86a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rameswaram'),
            ('B', 'Kanyakumari'),
            ('C', 'Dhanushkodi'),
            ('D', 'Indira Point')
           ) as v(label, option_text)
 where q.question_hash = '3f3a0790cb1ba337fcf74330788bb86a'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Kanyakumari'' temple of the Sun and the ''Thiruvalluvar'' statue are located in:',
    'Kanyakumari, on the tip of the peninsula, has the Vivekananda Rock Memorial and the Thiruvalluvar statue.',
    'easy',
    'Standard Reference',
    null,
    'b0a4aba06981a71616e358600fce5719'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b0a4aba06981a71616e358600fce5719'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tirunelveli'),
            ('B', 'Rameswaram'),
            ('C', 'Kanyakumari'),
            ('D', 'Thanjavur')
           ) as v(label, option_text)
 where q.question_hash = 'b0a4aba06981a71616e358600fce5719'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Indian state has the maximum number of Ramsar sites?',
    'Tamil Nadu has the highest number of Ramsar sites in India, with several including the Vembanad and the Suchindram Theroor wetlands.',
    'hard',
    'Standard Reference',
    null,
    '8bce700dacd278822f34baff5fee7bf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8bce700dacd278822f34baff5fee7bf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Kerala'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '8bce700dacd278822f34baff5fee7bf9'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Ramsar'' sites of India include the:',
    'Chilika in Odisha and Vembanad in Kerala are Ramsar sites, as are many others including Dal, Wular and Loktak.',
    'medium',
    'Standard Reference',
    null,
    'f59a5af9a1af3577725ec4d87c7085fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f59a5af9a1af3577725ec4d87c7085fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loktak and Keibul'),
            ('B', 'Dal Lake and Wular Lake'),
            ('C', 'Chilika and Vembanad'),
            ('D', 'Sambhar and Didwana')
           ) as v(label, option_text)
 where q.question_hash = 'f59a5af9a1af3577725ec4d87c7085fb'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Indus Valley'' of the Indian subcontinent corresponds to the region of:',
    'The Indus Valley civilisation centred on the plains of the Indus in present-day Punjab and Sindh in Pakistan.',
    'easy',
    'Standard Reference',
    null,
    'a20fd347cc4d38b877cf14082ea915c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a20fd347cc4d38b877cf14082ea915c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab and Sindh'),
            ('B', 'Gangetic plain'),
            ('C', 'Deccan Plateau'),
            ('D', 'Brahmaputra valley')
           ) as v(label, option_text)
 where q.question_hash = 'a20fd347cc4d38b877cf14082ea915c7'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Kashmir valley'' is separated from the rest of India by:',
    'The Great Himalayan range to the north and the Pir Panjal to the south bound the Kashmir valley.',
    'hard',
    'Standard Reference',
    null,
    'a3c1aab69c8e847bce9e2c826ae6fc91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a3c1aab69c8e847bce9e2c826ae6fc91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pir Panjal range'),
            ('B', 'The Great Himalayan range'),
            ('C', 'The Shivaliks'),
            ('D', 'The Zanskar range')
           ) as v(label, option_text)
 where q.question_hash = 'a3c1aab69c8e847bce9e2c826ae6fc91'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Ganga plain'' extends in India from:',
    'The Indo-Gangetic plain stretches from the Punjab through the Ganga valley to the Brahmaputra valley in Assam.',
    'easy',
    'NCERT Class XI',
    null,
    '54c3fe330bfbc629b7e3242550f16c7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '54c3fe330bfbc629b7e3242550f16c7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Himalaya to the Deccan'),
            ('B', 'Kashmir to Kanyakumari'),
            ('C', 'The Indus to the Brahmaputra'),
            ('D', 'The Punjab to Assam')
           ) as v(label, option_text)
 where q.question_hash = '54c3fe330bfbc629b7e3242550f16c7d'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Malwa Plateau'' is drained mainly by the:',
    'The rivers of the Malwa Plateau, chiefly the Chambal and the Betwa, flow north to the Yamuna and the Ganga.',
    'medium',
    'Standard Reference',
    null,
    '59c2adf0d5dcaf6d1ee8ae3c3eeccfb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '59c2adf0d5dcaf6d1ee8ae3c3eeccfb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Son and Damodar'),
            ('B', 'Chambal and Betwa'),
            ('C', 'Godavari and Krishna'),
            ('D', 'Narmada and Tapi')
           ) as v(label, option_text)
 where q.question_hash = '59c2adf0d5dcaf6d1ee8ae3c3eeccfb0'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Bundelkhand plateau'' lies between the:',
    'The Bundelkhand plateau lies between the Ganga valley to the north and the Narmada to the south.',
    'medium',
    'Standard Reference',
    null,
    '1b693b0ca2e6b40047769a01448958c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b693b0ca2e6b40047769a01448958c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari and Krishna'),
            ('B', 'Brahmaputra and Teesta'),
            ('C', 'Son and Damodar'),
            ('D', 'Ganga and Narmada')
           ) as v(label, option_text)
 where q.question_hash = '1b693b0ca2e6b40047769a01448958c9'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Chota Nagpur plateau'' is bounded on the north by the:',
    'The Chota Nagpur plateau is bounded on the north by the Damodar and Subarnarekha rivers and on the east by the Subarnarekha and the Ranchi plateau.',
    'medium',
    'Standard Reference',
    null,
    'c8a8313bf501e54a0b3b51a3b749b3c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c8a8313bf501e54a0b3b51a3b749b3c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Son and Betwa'),
            ('B', 'Narmada and Tapi'),
            ('C', 'Damodar and Subarnarekha'),
            ('D', 'Ganga and Yamuna')
           ) as v(label, option_text)
 where q.question_hash = 'c8a8313bf501e54a0b3b51a3b749b3c1'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Mahanadi basin'' is bounded by the:',
    'The Mahanadi basin, marked by the Hirakud dam, is bounded by the Garhwal hills and the Rajmahal hills.',
    'hard',
    'Standard Reference',
    null,
    '91d53b577f0f30b06abf16220227f708'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '91d53b577f0f30b06abf16220227f708'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Garhwal and Rajmahal hills'),
            ('B', 'Himalaya and Aravalli'),
            ('C', 'Nilgiri and Western Ghats'),
            ('D', 'Satpura and Vindhya')
           ) as v(label, option_text)
 where q.question_hash = '91d53b577f0f30b06abf16220227f708'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Narmada basin'' is bounded by the:',
    'The Narmada flows through a rift valley between the Vindhyas to the north and the Satpuras to the south.',
    'medium',
    'Standard Reference',
    null,
    '4ac0458ad10a8ef45aa83ec56722b247'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4ac0458ad10a8ef45aa83ec56722b247'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aravalli and Malwa hills'),
            ('B', 'Vindhya and Satpura ranges'),
            ('C', 'Garhwal and Kumaon hills'),
            ('D', 'Nilgiri and Javadi hills')
           ) as v(label, option_text)
 where q.question_hash = '4ac0458ad10a8ef45aa83ec56722b247'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Ganga basin'' in India extends from the:',
    'The Ganga basin, the largest in India, extends from the Himalayas to the Deccan Plateau, covering about a quarter of the country''s area.',
    'medium',
    'Standard Reference',
    null,
    '5c9e6a4903d2a042ef773ff25590529b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c9e6a4903d2a042ef773ff25590529b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vindhyas to the coast'),
            ('B', 'Deccan to the coast'),
            ('C', 'Himalayas to the Deccan Plateau'),
            ('D', 'Himalayas to the Peninsula only')
           ) as v(label, option_text)
 where q.question_hash = '5c9e6a4903d2a042ef773ff25590529b'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Brahmaputra'' in India is known as the:',
    'The Brahmaputra is known as the Tsangpo in Tibet and as the Siang and Dihang in Arunachal Pradesh before it is called the Brahmaputra in Assam.',
    'easy',
    'Standard Reference',
    null,
    'b289c790cde478ee1b0af44ee698beda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b289c790cde478ee1b0af44ee698beda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tsangpo'),
            ('B', 'Siang'),
            ('C', 'Dihang'),
            ('D', 'Saraswati')
           ) as v(label, option_text)
 where q.question_hash = 'b289c790cde478ee1b0af44ee698beda'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which state of India has the maximum number of coastal districts?',
    'Gujarat, with its long and deeply indented coast, has the largest number of coastal districts.',
    'hard',
    'Standard Reference',
    null,
    '9ae24da9692262032a9228ef2408ad36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9ae24da9692262032a9228ef2408ad36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Odisha'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '9ae24da9692262032a9228ef2408ad36'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Diu'' and the ''Daman and Diu'' were former Union Territories merged with:',
    'Diu and Daman were merged with Gujarat, and Dadra and Nagar Haveli with the Andaman and Nicobar Islands, in 2020.',
    'medium',
    'Standard Reference',
    null,
    'b15ba22648d717b87537c8f635a9eeca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b15ba22648d717b87537c8f635a9eeca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Dadra and Nagar Haveli'),
            ('C', 'Goa'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'b15ba22648d717b87537c8f635a9eeca'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Union Territory was formed in 2019 by merging Dadra and Nagar Haveli with Daman and Diu?',
    'Dadra and Nagar Haveli and Daman and Diu was formed as a new Union Territory in 2020.',
    'medium',
    'Standard Reference',
    null,
    'd2123c0522e7714313899a9938130242'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2123c0522e7714313899a9938130242'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ladakh'),
            ('B', 'Dadra and Nagar Haveli and Daman and Diu'),
            ('C', 'Jammu and Kashmir'),
            ('D', 'Lakshadweep')
           ) as v(label, option_text)
 where q.question_hash = 'd2123c0522e7714313899a9938130242'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Chandigarh'' is the capital of:',
    'Chandigarh serves as the joint capital of Punjab and Haryana and is a Union Territory with its own administrator.',
    'easy',
    'Standard Reference',
    null,
    '14d94ec57283938ce26742edf930a558'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '14d94ec57283938ce26742edf930a558'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab and Haryana'),
            ('B', 'Punjab only'),
            ('C', 'Haryana only'),
            ('D', 'Punjab and Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '14d94ec57283938ce26742edf930a558'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which state was formed in 2019 from the erstwhile state of Jammu and Kashmir?',
    'The former state of Jammu and Kashmir was reorganised on 31 October 2019 into the Union Territories of Jammu and Kashmir and Ladakh.',
    'medium',
    'Standard Reference',
    null,
    'de7263754a55dfa9e92f2f1a0c643f38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'de7263754a55dfa9e92f2f1a0c643f38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Puducherry'),
            ('B', 'Telangana'),
            ('C', 'Ladakh'),
            ('D', 'Jammu and Kashmir')
           ) as v(label, option_text)
 where q.question_hash = 'de7263754a55dfa9e92f2f1a0c643f38'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Puducherry'' capital of the Union Territory is:',
    'Puducherry is the capital of the Union Territory, which also includes Karaikal, Mahe, Yanam and Puducherry.',
    'easy',
    'Standard Reference',
    null,
    'f7e27500e5744730164a54e94fabd3f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f7e27500e5744730164a54e94fabd3f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Puducherry'),
            ('B', 'Mahe'),
            ('C', 'Yanam'),
            ('D', 'Karaikal')
           ) as v(label, option_text)
 where q.question_hash = 'f7e27500e5744730164a54e94fabd3f7'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Bahawalpur'' and the ''Ganga Ram'' are the two major canals of the:',
    'The Bahawalpur canal and the Ganga Ram canal are the two main canals of the Indus river system in Punjab and Rajasthan.',
    'hard',
    'Standard Reference',
    null,
    'af596d92e5c025fb18c6afcf40af82d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'af596d92e5c025fb18c6afcf40af82d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ganga system'),
            ('B', 'Cauvery system'),
            ('C', 'Krishna system'),
            ('D', 'Indus system')
           ) as v(label, option_text)
 where q.question_hash = 'af596d92e5c025fb18c6afcf40af82d6'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Upper Ganga Canal'' takes off from the:',
    'The Upper Ganga Canal takes off from the Ramganga barrage at Kalagarh in Uttar Pradesh.',
    'hard',
    'Standard Reference',
    null,
    'be89b5a3a138bb12544e72e6e72f0bb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'be89b5a3a138bb12544e72e6e72f0bb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harike Barrage'),
            ('B', 'Ramganga barrage'),
            ('C', 'Hirakud Dam'),
            ('D', 'Nagarjuna Sagar')
           ) as v(label, option_text)
 where q.question_hash = 'be89b5a3a138bb12544e72e6e72f0bb9'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Krishna-Godavari'' basin is bounded by the ''Rajmahal hills'' in the:',
    'The Rajmahal hills form the northern boundary of the Krishna-Godavari basin.',
    'hard',
    'Standard Reference',
    null,
    '30c6b794da5b1ead83504c540d706f5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30c6b794da5b1ead83504c540d706f5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'East'),
            ('B', 'West'),
            ('C', 'North'),
            ('D', 'South')
           ) as v(label, option_text)
 where q.question_hash = '30c6b794da5b1ead83504c540d706f5f'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Saurashtra'' region''s inland drainage is provided by the:',
    'Saurashtra has no major rivers; the Sabarmati, Mahi and Sabarmati tributaries drain its inland region to the Gulf of Kutch.',
    'medium',
    'Standard Reference',
    null,
    '72462d7f5c7731509702bc2747aa6ac8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '72462d7f5c7731509702bc2747aa6ac8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Krishna and Godavari'),
            ('B', 'Sabarmati and Mahi'),
            ('C', 'Narmada and Tapti'),
            ('D', 'Ganga and Yamuna')
           ) as v(label, option_text)
 where q.question_hash = '72462d7f5c7731509702bc2747aa6ac8'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which state is known for the ''Dhol'' and the ''Terah Tali'' folk dances?',
    'The Bhangra, Giddha, Dhol and Terah Tali are the folk dances of Punjab.',
    'easy',
    'Standard Reference',
    null,
    '11a3a26581fc9b8b112e97a4b0c3959b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11a3a26581fc9b8b112e97a4b0c3959b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Bihar'),
            ('C', 'Punjab'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '11a3a26581fc9b8b112e97a4b0c3959b'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Bharat Mata'' and the ''Vande Mataram'' are associated with:',
    'Bankim Chandra Chattopadhyay composed Vande Mataram and Rabindranath Tagore wrote the song Bharat Mata, both taken up by the nationalist movement.',
    'medium',
    'Standard Reference',
    null,
    '4e0ddf5c227db70e87ba6d23dd0e3204'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e0ddf5c227db70e87ba6d23dd0e3204'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bankim Chandra Chattopadhyay and Rabindranath Tagore'),
            ('B', 'Rabindranath Tagore only'),
            ('C', 'Sarojini Naidu'),
            ('D', 'Subhash Chandra Bose')
           ) as v(label, option_text)
 where q.question_hash = '4e0ddf5c227db70e87ba6d23dd0e3204'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Seven Pagodas'' or the ''Mahabalipuram'' monuments belong to which dynasty?',
    'The rock-cut cave temples and the Shore Temple at Mahabalipuram were built under the Pallava ruler Narasimhavarman I.',
    'medium',
    'Standard Reference',
    null,
    'e271bdd90b1f15d04af29cff64e47ab3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e271bdd90b1f15d04af29cff64e47ab3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vijayanagara'),
            ('B', 'Hoysala'),
            ('C', 'Chola'),
            ('D', 'Pallava')
           ) as v(label, option_text)
 where q.question_hash = 'e271bdd90b1f15d04af29cff64e47ab3'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Hampi'' monuments belong to which empire?',
    'The Hampi monuments, including the Virupaksha temple and the Vittala temple, belong to the Vijayanagara Empire.',
    'easy',
    'Standard Reference',
    null,
    '87652343cbf0f2f2edd52559fd1f1a32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '87652343cbf0f2f2edd52559fd1f1a32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chola'),
            ('B', 'Vijayanagara'),
            ('C', 'Bahmani'),
            ('D', 'Mughal')
           ) as v(label, option_text)
 where q.question_hash = '87652343cbf0f2f2edd52559fd1f1a32'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Khajuraho'' temples were built by the:',
    'The Chandela rulers of Bundelkhand built the temples of Khajuraho in the 10th and 11th centuries.',
    'medium',
    'Standard Reference',
    null,
    '24035cda1e15ed0dbf468003a6450ce7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24035cda1e15ed0dbf468003a6450ce7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandela'),
            ('B', 'Paramara'),
            ('C', 'Kalachuri'),
            ('D', 'Karkota')
           ) as v(label, option_text)
 where q.question_hash = '24035cda1e15ed0dbf468003a6450ce7'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Ellora'' caves were hewn out under the:',
    'The Ellora cave complex was excavated between the 6th and 10th centuries under the Kalachuri, Chalukya and Rashtrakuta rulers.',
    'hard',
    'Standard Reference',
    null,
    '16bb2e34c06af08a41b35876aa923fbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16bb2e34c06af08a41b35876aa923fbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalachuri and Chalukya'),
            ('B', 'Chola'),
            ('C', 'Vijayanagara'),
            ('D', 'Kalachuri')
           ) as v(label, option_text)
 where q.question_hash = '16bb2e34c06af08a41b35876aa923fbb'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Great Stupa'' at Sanchi was originally commissioned by:',
    'The Great Stupa at Sanchi was commissioned by Ashoka in the 3rd century BCE, though the brick stupa was later enlarged in stone.',
    'medium',
    'Standard Reference',
    null,
    'b09b7589dbe8efca527c887fcda55f28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b09b7589dbe8efca527c887fcda55f28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta rulers'),
            ('B', 'Harishchandra'),
            ('C', 'Ashoka'),
            ('D', 'Kanishka')
           ) as v(label, option_text)
 where q.question_hash = 'b09b7589dbe8efca527c887fcda55f28'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Elliptical'' Mauryan capital of Pataliputra was located on the:',
    'Pataliputra, the Mauryan capital, stood on the southern bank of the Ganga near modern Patna.',
    'easy',
    'Standard Reference',
    null,
    'b8f3b0f4bf2bf44d64bbc3f343a9c6bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b8f3b0f4bf2bf44d64bbc3f343a9c6bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ganga near Patna'),
            ('B', 'Yamuna near Delhi'),
            ('C', 'Son near Rewa'),
            ('D', 'Godavari near Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = 'b8f3b0f4bf2bf44d64bbc3f343a9c6bc'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Taxila'' and the ''Sanchi'' sites belong to which ancient period?',
    'Taxila, an ancient university town, and Sanchi, with its great stupa, both flourished under the Mauryan period.',
    'medium',
    'Standard Reference',
    null,
    'a2524c6e76549a8e719cb75b88a0d10c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a2524c6e76549a8e719cb75b88a0d10c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta'),
            ('B', 'Sangam'),
            ('C', 'Vijayanagara'),
            ('D', 'Mauryan')
           ) as v(label, option_text)
 where q.question_hash = 'a2524c6e76549a8e719cb75b88a0d10c'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Badami'' caves were cut under the:',
    'The Badami cave temples were excavated in the sixth century by the Chalukya ruler Pulakeshin I.',
    'hard',
    'Standard Reference',
    null,
    'fed654ea62679c15f4c618081f4b21a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fed654ea62679c15f4c618081f4b21a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kakatiyas'),
            ('B', 'Chalukyas of Badami'),
            ('C', 'Pallavas'),
            ('D', 'Cholas')
           ) as v(label, option_text)
 where q.question_hash = 'fed654ea62679c15f4c618081f4b21a4'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Pataliputra'' university and the ''Nalanda'' university belong to:',
    'Pataliputra University dates from the Mauryan era and Nalanda flourished from the 5th to the 12th century CE.',
    'medium',
    'Standard Reference',
    null,
    '9ba2d0be3b54c8678c6e3080919f6176'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9ba2d0be3b54c8678c6e3080919f6176'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both medieval'),
            ('B', 'Both modern'),
            ('C', 'Ancient and medieval India respectively'),
            ('D', 'Both ancient')
           ) as v(label, option_text)
 where q.question_hash = '9ba2d0be3b54c8678c6e3080919f6176'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Kanheri'' caves are located near:',
    'The Kanheri caves, more than a hundred in number, are in the Sanjay Gandhi National Park near Mumbai.',
    'medium',
    'Standard Reference',
    null,
    '6049f9625766ed22015c66f0ed9a6f2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6049f9625766ed22015c66f0ed9a6f2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhubaneswar'),
            ('B', 'Mumbai'),
            ('C', 'Pune'),
            ('D', 'Aurangabad')
           ) as v(label, option_text)
 where q.question_hash = '6049f9625766ed22015c66f0ed9a6f2b'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Aihole'' and the ''Pattadakal'' temples belong to the:',
    'The Aihole and Pattadakal experimental temples were built under the early Chalukyas of Badami between the 6th and 8th centuries.',
    'hard',
    'Standard Reference',
    null,
    'c1753f6b21b7d531ef345dcc50814af0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c1753f6b21b7d531ef345dcc50814af0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pallava dynasty'),
            ('B', 'Kakatiya dynasty'),
            ('C', 'Chalukya dynasty'),
            ('D', 'Hoysala dynasty')
           ) as v(label, option_text)
 where q.question_hash = 'c1753f6b21b7d531ef345dcc50814af0'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Sun Temple'' of Modhera is in:',
    'The Sun Temple at Modhera in Gujarat was built in the eleventh century by the Solanki ruler Bhima I.',
    'medium',
    'Standard Reference',
    null,
    '762222c1a43e3bba1446d338196cbc36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '762222c1a43e3bba1446d338196cbc36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Odisha'),
            ('C', 'Rajasthan'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '762222c1a43e3bba1446d338196cbc36'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Thanjavur'' temple of Brihadisvara was built by:',
    'The Brihadisvara temple at Thanjavur was completed by Rajaraja Chola I in 1010 CE.',
    'easy',
    'Standard Reference',
    null,
    '842b1a4c7e565e0ccb964bfd512230e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '842b1a4c7e565e0ccb964bfd512230e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kulothunga Chola I'),
            ('B', 'Vikrama Chola'),
            ('C', 'Rajaraja II'),
            ('D', 'Rajaraja Chola I')
           ) as v(label, option_text)
 where q.question_hash = '842b1a4c7e565e0ccb964bfd512230e4'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Devaraja'' and the ''Cholas'' temple at Gangaikonda Cholapuram was built by:',
    'The Gangaikonda Cholapuram temple was built by Rajendra Chola I and completed under Kulothunga Chola I.',
    'hard',
    'Standard Reference',
    null,
    'e55c944af47d88114fb56c55fbe418ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e55c944af47d88114fb56c55fbe418ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aditya Chola'),
            ('B', 'Rajaraja I'),
            ('C', 'Kulothunga Chola I'),
            ('D', 'Vikrama Chola')
           ) as v(label, option_text)
 where q.question_hash = 'e55c944af47d88114fb56c55fbe418ec'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Hoysala'' temples at Somnathpur and Halebidu were built in the:',
    'The Hoysala temples of Somnathpur, Halebidu and Belur were built in the 12th and 13th centuries.',
    'medium',
    'Standard Reference',
    null,
    '81d402c243d299c3155288c5a5afb8f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '81d402c243d299c3155288c5a5afb8f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10th century'),
            ('B', '12th and 13th centuries'),
            ('C', '15th century'),
            ('D', '9th century')
           ) as v(label, option_text)
 where q.question_hash = '81d402c243d299c3155288c5a5afb8f2'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Qutub complex'' in Delhi includes the:',
    'The Qutb complex contains the Qutb Minar, the Iron Pillar of Delhi and the Quwwat-ul-Islam mosque, all a UNESCO World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    '18585899cda8d24abbf1d396b5bfec27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '18585899cda8d24abbf1d396b5bfec27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Red Fort and Jama Masjid'),
            ('B', 'Jahangir''s Tomb and Safdarjung''s Tomb'),
            ('C', 'Fatehpur Sikri and Agra Fort'),
            ('D', 'Qutb Minar, Iron Pillar and Quwwat-ul-Islam Mosque')
           ) as v(label, option_text)
 where q.question_hash = '18585899cda8d24abbf1d396b5bfec27'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Fatehpur Sikri'' was built by Akbar as the capital of:',
    'Akbar built Fatehpur Sikri between 1571 and 1585 as the Mughal capital before shifting to Agra.',
    'easy',
    'Standard Reference',
    null,
    '4d90634e9bb159c8f29d4a582a41576e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4d90634e9bb159c8f29d4a582a41576e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mughal Empire'),
            ('B', 'Sultanate of Delhi'),
            ('C', 'Vijayanagara Empire'),
            ('D', 'Maratha Empire')
           ) as v(label, option_text)
 where q.question_hash = '4d90634e9bb159c8f29d4a582a41576e'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Mehtab Bagh'' in Agra is famous for its:',
    'The Mehtab Bagh, opposite the Taj Mahal, was laid out as a charbagh garden and is famous for its aligned view of the Taj Mahal.',
    'medium',
    'Standard Reference',
    null,
    'db8420361523997490e9188a27e7b4c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'db8420361523997490e9188a27e7b4c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Taj Mahal view and the charbagh garden'),
            ('B', 'Mughal tombs'),
            ('C', 'Hindu temple architecture'),
            ('D', 'British cemetery')
           ) as v(label, option_text)
 where q.question_hash = 'db8420361523997490e9188a27e7b4c1'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Red Fort'' of Delhi was built by:',
    'The Red Fort, called the Lal Qila, was built by Akbar between 1638 and 1648 and completed by Shah Jahan.',
    'medium',
    'Standard Reference',
    null,
    'e9947c52f20ec5d6e8926818425c3748'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9947c52f20ec5d6e8926818425c3748'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shah Jahan'),
            ('B', 'Akbar'),
            ('C', 'Humayun'),
            ('D', 'Jahangir')
           ) as v(label, option_text)
 where q.question_hash = 'e9947c52f20ec5d6e8926818425c3748'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Humayun''s Tomb'' was designed by:',
    'Humayun''s Tomb in Delhi was designed by Mirak Mirza Ghiyas, a Persian architect, and is a precursor of the Taj Mahal.',
    'hard',
    'Standard Reference',
    null,
    'a55bdf7a39f0d5ab5b8a3cf6005485cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a55bdf7a39f0d5ab5b8a3cf6005485cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ustad Isa'),
            ('B', 'Muhammad Shah'),
            ('C', 'Mirak Mirza Ghiyas'),
            ('D', 'Sinan')
           ) as v(label, option_text)
 where q.question_hash = 'a55bdf7a39f0d5ab5b8a3cf6005485cf'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Charminar'' was built to commemorate the end of:',
    'Muhammad Quli Qutb Shah built the Charminar in 1591 to commemorate the end of a plague epidemic in Hyderabad.',
    'medium',
    'Standard Reference',
    null,
    'eafb019003c4e77f02bb4ac6d206205b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eafb019003c4e77f02bb4ac6d206205b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A famine'),
            ('B', 'The Mughal rule'),
            ('C', 'A war'),
            ('D', 'A plague epidemic')
           ) as v(label, option_text)
 where q.question_hash = 'eafb019003c4e77f02bb4ac6d206205b'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Gateway of India'' was built to commemorate:',
    'The Gateway of India was erected in 1924 to commemorate the landing in 1911 of King George V, then the Prince of Wales.',
    'medium',
    'Standard Reference',
    null,
    '401ec9da9a6a6414711237b0d1dd6946'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '401ec9da9a6a6414711237b0d1dd6946'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The opening of the Suez Canal'),
            ('B', 'The visit of King George V'),
            ('C', 'The Indian independence'),
            ('D', 'The Second World War')
           ) as v(label, option_text)
 where q.question_hash = '401ec9da9a6a6414711237b0d1dd6946'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Ellora'' and the ''Ajanta'' caves were discovered in the 19th century by:',
    'The caves were first documented by the British officer Alexander Cunningham, the founder of the Archaeological Survey of India.',
    'hard',
    'Standard Reference',
    null,
    '440d75c1ccfb25dad6541abfea2e9435'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '440d75c1ccfb25dad6541abfea2e9435'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Henry Cousens'),
            ('B', 'James Burgess'),
            ('C', 'Alexander Cunningham'),
            ('D', 'John Marshall')
           ) as v(label, option_text)
 where q.question_hash = '440d75c1ccfb25dad6541abfea2e9435'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Buddhist stupa'' of Sanchi and the ''Great Bath'' of Mohenjo-daro belong respectively to:',
    'The Sanchi stupa was commissioned under Ashoka and the Great Bath is a Harappan structure at Mohenjo-daro.',
    'medium',
    'Standard Reference',
    null,
    '10536c5e902a65ce3a30045613e371a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '10536c5e902a65ce3a30045613e371a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mauryan and Harappan'),
            ('B', 'Gupta and Vedic'),
            ('C', 'Vijayanagara and Sangam'),
            ('D', 'Kushan and Maurya')
           ) as v(label, option_text)
 where q.question_hash = '10536c5e902a65ce3a30045613e371a7'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Thar desert'' of India extends chiefly in the state of:',
    'The Thar desert, the largest hot desert of Asia, lies mainly in Rajasthan and extends into Gujarat, Punjab and Haryana.',
    'easy',
    'Standard Reference',
    null,
    'c21922fea4ec782582307141f20d0ccb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c21922fea4ec782582307141f20d0ccb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Haryana'),
            ('B', 'Punjab'),
            ('C', 'Gujarat'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'c21922fea4ec782582307141f20d0ccb'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Cold desert'' of Ladakh is also known as:',
    'The cold desert of Ladakh is known as the Sindhu valley region, bounded by the Karakoram and the Zanskar ranges.',
    'hard',
    'Standard Reference',
    null,
    'cd6b758c3e22bf527e64098ad18edd08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cd6b758c3e22bf527e64098ad18edd08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shyok'),
            ('B', 'Karakoram'),
            ('C', 'Thar'),
            ('D', 'Sindhu')
           ) as v(label, option_text)
 where q.question_hash = 'cd6b758c3e22bf527e64098ad18edd08'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Rann of Kutch'' region is famous for:',
    'The Rann of Kutch is the largest salt producing region of India and hosts the annual Rann Utsav festival.',
    'medium',
    'Standard Reference',
    null,
    'b06144978286ba92a21a95828f81fe7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b06144978286ba92a21a95828f81fe7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Coal mining'),
            ('B', 'Salt production and the Rann Utsav'),
            ('C', 'Rice cultivation'),
            ('D', 'Tea gardens')
           ) as v(label, option_text)
 where q.question_hash = 'b06144978286ba92a21a95828f81fe7e'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Nokrek'' biosphere reserve and the ''Nongkhrem'' are in:',
    'The Nokrek biosphere reserve, the home of the red panda in Meghalaya, and the Nongkhrem sanctuary are in the North-East hills.',
    'hard',
    'Standard Reference',
    null,
    '8f25f3e2b41eedf6ac1fbaa6c95d46c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8f25f3e2b41eedf6ac1fbaa6c95d46c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meghalaya'),
            ('B', 'Nagaland'),
            ('C', 'Manipur'),
            ('D', 'Mizoram')
           ) as v(label, option_text)
 where q.question_hash = '8f25f3e2b41eedf6ac1fbaa6c95d46c4'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Phang Nga'' and the ''Similan'' marine national parks are in:',
    'Phang Nga and Similan are marine national parks of Thailand, with Similan known for its coral reefs.',
    'medium',
    'Standard Reference',
    null,
    '39fafef82f58884077fe05ac38db229f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '39fafef82f58884077fe05ac38db229f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Philippines'),
            ('B', 'Indonesia'),
            ('C', 'Thailand'),
            ('D', 'Malaysia')
           ) as v(label, option_text)
 where q.question_hash = '39fafef82f58884077fe05ac38db229f'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Chitwan'' national park and the ''Everest'' lie in:',
    'Chitwan National Park, the first park of Nepal, and Mount Everest lie within Nepal.',
    'easy',
    'Standard Reference',
    null,
    '43feb348b71f103b63ef50048d5b6cea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '43feb348b71f103b63ef50048d5b6cea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhutan'),
            ('B', 'India'),
            ('C', 'Sri Lanka'),
            ('D', 'Nepal')
           ) as v(label, option_text)
 where q.question_hash = '43feb348b71f103b63ef50048d5b6cea'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Kaziranga'' and the ''Manas'' national parks of Assam are famous for:',
    'Kaziranga protects the one-horned rhinoceros and Manas the tiger, both UNESCO World Heritage sites in Assam.',
    'easy',
    'Standard Reference',
    null,
    '81835b0ca0f95ce6b2505239a8ce1201'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '81835b0ca0f95ce6b2505239a8ce1201'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The one-horned rhinoceros and the tiger'),
            ('B', 'The Asiatic lion and the elephant'),
            ('C', 'The snow leopard and the markhor'),
            ('D', 'The crocodile and the gharial')
           ) as v(label, option_text)
 where q.question_hash = '81835b0ca0f95ce6b2505239a8ce1201'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Periyar'' and the ''Nagarjunsagar'' sanctuaries are in:',
    'Periyar is in Kerala and Nagarjunsagar-Srisailam in Andhra Pradesh.',
    'medium',
    'Standard Reference',
    null,
    'a90871f1ff4865866677dc36f388598d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a90871f1ff4865866677dc36f388598d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala and Tamil Nadu'),
            ('B', 'Tamil Nadu and Karnataka'),
            ('C', 'Tamil Nadu and Andhra Pradesh'),
            ('D', 'Kerala and Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'a90871f1ff4865866677dc36f388598d'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Ranthambore'' and the ''Sariska'' are the two tiger reserves of:',
    'Rajasthan has the Ranthambore, Sariska, Mukundra and Raksha reserves, and hosts the successful tiger relocation programme.',
    'medium',
    'Standard Reference',
    null,
    '7a6629865d11722535dbd76c1cacb633'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7a6629865d11722535dbd76c1cacb633'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '7a6629865d11722535dbd76c1cacb633'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Corbett'' national park, India''s first, is in:',
    'Corbett, established in 1936 as Hailey National Park, was India''s first national park and lies in Uttarakhand.',
    'easy',
    'Standard Reference',
    null,
    '08f18fa8a58182dcf2d287559958cbf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '08f18fa8a58182dcf2d287559958cbf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttarakhand'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Nepal'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '08f18fa8a58182dcf2d287559958cbf9'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Similipal'' biosphere reserve and the ''Gopalpur-on-Bay'' are in:',
    'Similipal, the largest biosphere reserve of India, and Gopalpur-on-Bay are in Odisha.',
    'hard',
    'Standard Reference',
    null,
    '45049879171ff291806a4cdaa0f226f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '45049879171ff291806a4cdaa0f226f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '45049879171ff291806a4cdaa0f226f4'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Sunderbans'' and the ''Sundarbans Biosphere Reserve'' are in:',
    'The Sundarbans, the largest mangrove forest of the world, straddles West Bengal and Bangladesh; the Indian part lies in West Bengal.',
    'medium',
    'Standard Reference',
    null,
    '4a15440c7a8943da34ed74ee5e092b50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a15440c7a8943da34ed74ee5e092b50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Bangladesh only'),
            ('C', 'West Bengal and Bangladesh'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = '4a15440c7a8943da34ed74ee5e092b50'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Point Calimere'' bird sanctuary is in:',
    'Point Calimere, on the Coromandel coast of Tamil Nadu, is a coastal and marine bird sanctuary.',
    'hard',
    'Standard Reference',
    null,
    'bc314975087996c23cac903255e07a61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bc314975087996c23cac903255e07a61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'bc314975087996c23cac903255e07a61'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Painted Hills'' and the ''Ranthambore'' of Rajasthan are known for:',
    'The Bharatpur bird sanctuary, called the Keoladeo Ghana, and Ranthambore together make the ''tiger and bird'' circuit of Rajasthan.',
    'hard',
    'Standard Reference',
    null,
    '4fea2a06bade91275f49fd33cd1a2809'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4fea2a06bade91275f49fd33cd1a2809'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Birds and tigers'),
            ('B', 'Elephants'),
            ('C', 'Crocodiles'),
            ('D', 'Tigers')
           ) as v(label, option_text)
 where q.question_hash = '4fea2a06bade91275f49fd33cd1a2809'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Deccan Plateau'' is bounded on the west by the:',
    'The Deccan Plateau is bounded on the west by the Western Ghats, on the east by the Eastern Ghats and on the north by the Satpura range.',
    'easy',
    'NCERT Class XI',
    null,
    '962a5130c7a49dba32bfe2fa801d2f25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '962a5130c7a49dba32bfe2fa801d2f25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eastern Ghats'),
            ('B', 'Nilgiri hills'),
            ('C', 'Satpura range'),
            ('D', 'Western Ghats')
           ) as v(label, option_text)
 where q.question_hash = '962a5130c7a49dba32bfe2fa801d2f25'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Telangana plateau'' is drained mainly by the:',
    'The Telangana plateau is mainly drained by the Godavari and its tributaries, and the Musi, the Manjira and the Pranahita are the chief of them.',
    'medium',
    'Standard Reference',
    null,
    'e01c19404fcb86f3750d0a99a5e92360'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e01c19404fcb86f3750d0a99a5e92360'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tungabhadra'),
            ('B', 'Musi'),
            ('C', 'Godavari'),
            ('D', 'Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'e01c19404fcb86f3750d0a99a5e92360'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Rayalseema'' and the ''Interior Deccan'':',
    'The Rayalseema, the semi-arid region of the interior Deccan of Andhra Pradesh, receives about 50 to 60 cm of the annual rainfall and is crossed by the Tungabhadra.',
    'hard',
    'Standard Reference',
    null,
    'dc4a9d2cc2f4622d821235ccec74190b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc4a9d2cc2f4622d821235ccec74190b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rayalseema is a hill range'),
            ('B', 'The Rayalseema is the semi-arid plateau of the interior Deccan of Andhra Pradesh'),
            ('C', 'The Rayalseema is the coastal plain of Odisha'),
            ('D', 'The Rayalseema is the delta of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'dc4a9d2cc2f4622d821235ccec74190b'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Malwa plateau'' is composed of:',
    'The Malwa plateau is mainly composed of the black cotton soil, which makes it agriculturally rich and it is drained by the Chambal and the Betwa.',
    'medium',
    'Standard Reference',
    null,
    'd29e16db05c7867ccbd2002b6e021674'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd29e16db05c7867ccbd2002b6e021674'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The alluvium'),
            ('B', 'The laterite'),
            ('C', 'The red and the yellow soil'),
            ('D', 'The black cotton soil')
           ) as v(label, option_text)
 where q.question_hash = 'd29e16db05c7867ccbd2002b6e021674'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Chota Nagpur plateau'' is the watershed of which rivers?',
    'The Chota Nagpur plateau is the watershed of the Damodar, the Subarnarekha, the North and the South Koel, the Son and the Rihand and it is the richest mineral belt of India.',
    'medium',
    'Standard Reference',
    null,
    'cc642f7a098c184b951b4bf71b9c0d1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc642f7a098c184b951b4bf71b9c0d1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Narmada and the Tapi'),
            ('B', 'The Damodar, the Subarnarekha, the North and the South Koel and the Son'),
            ('C', 'The Ganga and the Yamuna'),
            ('D', 'The Godavari and the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'cc642f7a098c184b951b4bf71b9c0d1f'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Bastar plateau'' and the ''Dakota'':',
    'The Dakota, a part of the Bastar plateau in Chhattisgarh, is the home of the Maria and the Muria tribes.',
    'hard',
    'Standard Reference',
    null,
    '0a384236b6f4d99b6a1a200646758a61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0a384236b6f4d99b6a1a200646758a61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Dakota is a part of the Bastar plateau in Chhattisgarh'),
            ('B', 'The Dakota is in Kerala'),
            ('C', 'The Dakota is a river'),
            ('D', 'The Dakota is a national park')
           ) as v(label, option_text)
 where q.question_hash = '0a384236b6f4d99b6a1a200646758a61'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Himalayas'' extend in three parallel longitudinal ranges:',
    'The three parallel ranges of the Himalayas are the Himadri or the Great Himalaya, the Himachal or the Lesser Himalaya and the outermost Shivalik or the Siwalik.',
    'medium',
    'NCERT Class XI',
    null,
    '01a70316ab2ca7978221484157c6a91b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '01a70316ab2ca7978221484157c6a91b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Northern and the Southern'),
            ('B', 'The Aravalli and the Satpura'),
            ('C', 'The Himadri, the Himachal and the Shivalik'),
            ('D', 'The Greater and the Lesser')
           ) as v(label, option_text)
 where q.question_hash = '01a70316ab2ca7978221484157c6a91b'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Karakoram'' and the ''K2'':',
    'K2 or Godwin Austen at 8,611 m is the highest peak of the Karakoram, and it is the second highest peak in the world.',
    'easy',
    'Standard Reference',
    null,
    '9e1840f170c895776e442d982d5025ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9e1840f170c895776e442d982d5025ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'K2 is in the Nilgiri'),
            ('B', 'K2 or Godwin Austen is the highest peak of the Karakoram'),
            ('C', 'K2 is the highest peak of the Himalaya'),
            ('D', 'K2 is in the Garhwal')
           ) as v(label, option_text)
 where q.question_hash = '9e1840f170c895776e442d982d5025ab'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Nanda Devi'' and the ''Nanda Kot'':',
    'Nanda Devi at 7,816 m is the highest peak of the Kumaon and the Garhwal Himalaya, and the Nanda Kot is the highest peak of the Garhwal.',
    'medium',
    'Standard Reference',
    null,
    '81c616ee5eb6640363f3cbce812f2589'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '81c616ee5eb6640363f3cbce812f2589'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nanda Devi is the highest peak of the Kumaon and the Garhwal Himalaya'),
            ('B', 'Nanda Devi is in the Karakoram'),
            ('C', 'Nanda Devi is in the Pir Panjal'),
            ('D', 'Nanda Devi is in the Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '81c616ee5eb6640363f3cbce812f2589'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Dhauladhar'' range is in:',
    'The Dhauladhar range forms the southernmost part of the Himachal or the Greater Himalaya in Himachal Pradesh and the Dhauladhar peak is the highest of the range.',
    'hard',
    'Standard Reference',
    null,
    '8d613337f01fdb0730423fa02e910ee6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8d613337f01fdb0730423fa02e910ee6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ladakh'),
            ('B', 'Sikkim'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Uttarakhand')
           ) as v(label, option_text)
 where q.question_hash = '8d613337f01fdb0730423fa02e910ee6'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Pir Panjal'' range separates:',
    'The Pir Panjal range separates the Kashmir valley from the plains, and the Jhelum, the Ravi and the Chenab flow through it.',
    'hard',
    'Standard Reference',
    null,
    'f0f991437f214cb53779f83464a895eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f0f991437f214cb53779f83464a895eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kangra valley from the Ladakh'),
            ('B', 'The Kullu valley from the Kangra'),
            ('C', 'The Kashmir valley from the Pir Panjal and the Jhelum'),
            ('D', 'The Kangra valley from the plains')
           ) as v(label, option_text)
 where q.question_hash = 'f0f991437f214cb53779f83464a895eb'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Greater Himalayas'' and the ''Lesser Himalayas'':',
    'The Greater Himalaya is about 150 km wide with the average height of 6,000 m and the Lesser Himalaya is 50 to 100 km wide with the height of 3,700 to 4,500 m.',
    'medium',
    'NCERT Class XI',
    null,
    'a7e9c2d57d4d64c450d714ac1edeb47b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a7e9c2d57d4d64c450d714ac1edeb47b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Greater Himalaya is about 150 km wide and the Lesser about 50 to 100 km'),
            ('B', 'The Lesser is wider'),
            ('C', 'Both are of the same width'),
            ('D', 'The Lesser is the outermost')
           ) as v(label, option_text)
 where q.question_hash = 'a7e9c2d57d4d64c450d714ac1edeb47b'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Kashmir or the Vale of Kashmir'':',
    'The Kashmir valley is a structural basin between the Pir Panjal and the Great Himalaya, and it was formerly a lake of which the Karewa are the remnants.',
    'medium',
    'Standard Reference',
    null,
    '44f5221726c7f0e3be404d56c4ebdb29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '44f5221726c7f0e3be404d56c4ebdb29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a desert in the Ladakh'),
            ('B', 'Is a structural basin between the Pir Panjal and the Great Himalaya'),
            ('C', 'Is a river valley in the Deccan'),
            ('D', 'Is a plateau in the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '44f5221726c7f0e3be404d56c4ebdb29'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Karewas'' are:',
    'The Karewas are the remnants of a vast lake that once occupied the Kashmir valley, and they are the fertile land of the valley.',
    'hard',
    'Standard Reference',
    null,
    '4a506de42dc7e6f6256b49f56225357a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a506de42dc7e6f6256b49f56225357a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sand dunes of the Thar'),
            ('B', 'The glaciers of Ladakh'),
            ('C', 'The river terraces of the Ganga'),
            ('D', 'The remnants of a vast lake that once occupied the Kashmir valley')
           ) as v(label, option_text)
 where q.question_hash = '4a506de42dc7e6f6256b49f56225357a'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The ''Siwalik'' range and the ''Shiwalik fossils'':',
    'The Siwalik fossils of the Punjab and the Haryana, the horse, the elephant and the camel, provided the evidence of the evolution and the migration of the species.',
    'medium',
    'Standard Reference',
    null,
    'd8aaeaa78bf9bd5c7e66859de7e4f60d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd8aaeaa78bf9bd5c7e66859de7e4f60d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Siwalik fossils are in the Deccan'),
            ('B', 'The Siwalik fossils are marine'),
            ('C', 'The Siwalik fossils gave the evidence of the evolution of the horses and the elephants'),
            ('D', 'The Siwalik fossils are the oldest rocks of India')
           ) as v(label, option_text)
 where q.question_hash = 'd8aaeaa78bf9bd5c7e66859de7e4f60d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indus'' and the ''Indus valley'':',
    'The Indus, the principal river of the northwestern region, was the lifeline of the Harappan civilisation, and the Ghaggar and the Hakra were its ancient tributaries.',
    'easy',
    'NCERT Class XI',
    null,
    'ad59fe0a188218f004e2bc1474a350fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ad59fe0a188218f004e2bc1474a350fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indus originates in the Deccan'),
            ('B', 'The Indus is the principal river of the northwestern region and it was the lifeline of the Harappan civilisation'),
            ('C', 'The Indus is a tributary of the Ganga'),
            ('D', 'The Indus flows into the Bay of Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'ad59fe0a188218f004e2bc1474a350fb'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Jhelum'' and the ''Wular Lake'' and the ''Mansabal'':',
    'The Jhelum rises at the Verinag spring in the Kashmir valley and flows through the Wular Lake and the Mansabal before entering the Punjab through the Jhelum valley.',
    'medium',
    'Standard Reference',
    null,
    '2d292a3f2c4f940e99d2bdf27e0c5e8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2d292a3f2c4f940e99d2bdf27e0c5e8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Jhelum flows into the Godavari'),
            ('B', 'The Jhelum rises in the Kumaon'),
            ('C', 'The Jhelum rises at Verinag and flows through the Wular Lake and the Mansabal'),
            ('D', 'The Jhelum rises at Trimbakeshwar')
           ) as v(label, option_text)
 where q.question_hash = '2d292a3f2c4f940e99d2bdf27e0c5e8a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Chenab'' and the ''Indus'':',
    'The Chenab, also called the Chandra, is the largest of the five rivers of the Indus system and the largest tributary of the Indus.',
    'medium',
    'Standard Reference',
    null,
    '5355e0186a2f2fe694682026f523a41a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5355e0186a2f2fe694682026f523a41a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chenab is the largest of the five rivers of the Indus system'),
            ('B', 'The Chenab is a tributary of the Ganga'),
            ('C', 'The Chenab is the longest of the Himalayan rivers'),
            ('D', 'The Chenab is in the Deccan')
           ) as v(label, option_text)
 where q.question_hash = '5355e0186a2f2fe694682026f523a41a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ravi'' and the ''Beas'' and the ''Harike'':',
    'The Harike Barrage, built in 1952 at the confluence of the Beas and the Sutlej, is the head of the Indira Gandhi Canal, and the heads of the three rivers are called the Headwaters.',
    'hard',
    'Standard Reference',
    null,
    'a127d39a17b054cd228d4e39030a6e4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a127d39a17b054cd228d4e39030a6e4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Harike Barrage is on the Ganga'),
            ('B', 'The Harike Barrage is at the confluence of the Jhelum and the Chenab'),
            ('C', 'The Harike Barrage is on the Godavari'),
            ('D', 'The Harike Barrage is at the confluence of the Beas and the Sutlej')
           ) as v(label, option_text)
 where q.question_hash = 'a127d39a17b054cd228d4e39030a6e4b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ghaggar'' and the ''Hakra'' and the ''Sutlej'':',
    'The Ghaggar and the Hakra, the ancient tributaries of the Indus and the Saraswati, are the rivers of the Harappan civilisation and the reference to them is in the Rigveda.',
    'hard',
    'Standard Reference',
    null,
    'a62b4ed078e5095f73aa90152140121a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a62b4ed078e5095f73aa90152140121a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the tributaries of the Ganga'),
            ('B', 'They are in the Deccan'),
            ('C', 'They are the tributaries of the Brahmaputra'),
            ('D', 'The Ghaggar and the Hakra are the ancient tributaries of the Indus and the Saraswati')
           ) as v(label, option_text)
 where q.question_hash = 'a62b4ed078e5095f73aa90152140121a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Brahmaputra'' and the ''Dihang'' and the ''Dihang gorge'':',
    'The Dihang gorge of Arunachal Pradesh is the point where the Tsangpo enters India and it takes the name of the Brahmaputra.',
    'medium',
    'Standard Reference',
    null,
    'ad8788dabe52fc068ee9122c65ef7d68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad8788dabe52fc068ee9122c65ef7d68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Dihang gorge is in Arunachal Pradesh where the Brahmaputra enters India'),
            ('B', 'The Dihang gorge is in Ladakh'),
            ('C', 'The Dihang gorge is in the Western Ghats'),
            ('D', 'The Dihang gorge is in the Sundarbans')
           ) as v(label, option_text)
 where q.question_hash = 'ad8788dabe52fc068ee9122c65ef7d68'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sadiyar'' and the ''Kaveri'' and the ''Sivasamudram'':',
    'The Sivasamudram island, formed by the Kaveri, is the largest river island in India, and the Tungabhadra dam was built downstream of it.',
    'medium',
    'Standard Reference',
    null,
    '2357cc759fba15ca71a8c4eff2cbc59b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2357cc759fba15ca71a8c4eff2cbc59b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sivasamudram is in Kerala'),
            ('B', 'The Sivasamudram is a mountain'),
            ('C', 'The Sivasamudram island is the largest river island in India'),
            ('D', 'The Sivasamudram is the largest lake')
           ) as v(label, option_text)
 where q.question_hash = '2357cc759fba15ca71a8c4eff2cbc59b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mullaperiyar'' and the ''Periyar'' and the ''Paravur'':',
    'The Neendal Paravur canal, opened in 1957, links the Periyar and the Bharathapuzha and it is the largest stretch of the backwaters in Asia.',
    'hard',
    'Standard Reference',
    null,
    'bbba5c6d9f2595e912a233d788891ae8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bbba5c6d9f2595e912a233d788891ae8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Paravur is a hill station'),
            ('B', 'The Neendal Paravur canal links the Periyar and the Bharathapuzha and is the largest stretch of the backwaters in Asia'),
            ('C', 'The Paravur is a dam in Tamil Nadu'),
            ('D', 'The Paravur is a river of Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'bbba5c6d9f2595e912a233d788891ae8'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kolkata'' and the ''Hugli'' and the ''Ganges'':',
    'The Hugli is the distributary of the Ganga that flows past Kolkata, and the Farakka Barrage diverts the Ganga to the Bhagirathi and the Hooghly.',
    'easy',
    'Standard Reference',
    null,
    '1a22c636aa6a73d9e92e6be445ba5227'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1a22c636aa6a73d9e92e6be445ba5227'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hugli is in the Punjab'),
            ('B', 'The Hugli is the distributary of the Ganga that flows past Kolkata'),
            ('C', 'The Hugli is a tributary of the Brahmaputra'),
            ('D', 'The Hugli is a river of Odisha')
           ) as v(label, option_text)
 where q.question_hash = '1a22c636aa6a73d9e92e6be445ba5227'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Narmada'' and the ''Amarkantak'' and the ''Bhit'':',
    'The Narmada, about 1,312 km long, rises at the Amarkantak in the Maikala range in Madhya Pradesh and flows west in a rift valley to the Arabian Sea.',
    'medium',
    'Standard Reference',
    null,
    'd5a8db02403def216b8b2731711a307e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd5a8db02403def216b8b2731711a307e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Narmada is a west flowing river of the Konkan'),
            ('B', 'The Narmada is a tributary of the Godavari'),
            ('C', 'The Narmada rises at the Amarkantak and the Bhit and the Maikala range'),
            ('D', 'The Narmada rises in the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = 'd5a8db02403def216b8b2731711a307e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tapti'' and the ''Multai'':',
    'The Tapti, about 724 km long, rises at the Multai in the Satpura range of Madhya Pradesh and flows west in a parallel rift to the Narmada.',
    'hard',
    'Standard Reference',
    null,
    'd0986f0fca56e62866d900ec6f59bb5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd0986f0fca56e62866d900ec6f59bb5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tapti rises in the Himalaya'),
            ('B', 'The Tapti is a tributary of the Godavari'),
            ('C', 'The Tapti flows east into the Bay of Bengal'),
            ('D', 'The Tapti rises at the Multai in the Satpura range of Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'd0986f0fca56e62866d900ec6f59bb5b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mahanadi'' and the ''Sihawa'' and the ''Sonepur'':',
    'The Mahanadi, about 851 km long, rises at the Sihawa in the Dandakaranya hills of Chhattisgarh and the Jonk and the Sonakhan are its chief tributaries.',
    'medium',
    'Standard Reference',
    null,
    'fb740951a3844ccb245fc8c63b749fe3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb740951a3844ccb245fc8c63b749fe3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mahanadi rises at the Sihawa in the Dandakaranya hills of Chhattisgarh'),
            ('B', 'The Mahanadi rises in the Himalaya'),
            ('C', 'The Mahanadi flows west'),
            ('D', 'The Mahanadi is a tributary of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'fb740951a3844ccb245fc8c63b749fe3'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Godavari'' and the ''Trimbakeshwar'' and the ''Nasik'':',
    'The Godavari, about 1,465 km long, is the longest river of peninsular India and it rises at the Trimbakeshwar near Nashik and flows east to the Bay of Bengal.',
    'easy',
    'NCERT Class XI',
    null,
    '8d656aed47ca0861d22d52a5982e3c5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d656aed47ca0861d22d52a5982e3c5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Godavari is the longest river of the Himalaya'),
            ('B', 'The Godavari rises at the Trimbakeshwar near Nashik in the Western Ghats'),
            ('C', 'The Godavari rises in the Himalaya'),
            ('D', 'The Godavari flows east into the Bay of Bengal from the north')
           ) as v(label, option_text)
 where q.question_hash = '8d656aed47ca0861d22d52a5982e3c5d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Krishna'' and the ''Mahabaleshwar'':',
    'The Krishna, about 1,400 km long, rises at the Mahabaleshwar in the Western Ghats and it is the second longest river of peninsular India.',
    'easy',
    'NCERT Class XI',
    null,
    '770555c03d993b5793c096738f62d123'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '770555c03d993b5793c096738f62d123'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Krishna rises at the Mahabaleshwar in the Western Ghats'),
            ('B', 'The Krishna rises in the Himalaya'),
            ('C', 'The Krishna is the longest river of India'),
            ('D', 'The Krishna flows west into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '770555c03d993b5793c096738f62d123'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kaveri'' and the ''Brahmagiri'' and the ''Talakaveri'':',
    'The Kaveri, about 800 km long, rises at the Talakaveri on the Brahmagiri hills and forms the border with Tamil Nadu for a large part of its course.',
    'medium',
    'Standard Reference',
    null,
    '3bb821958b4026498b082e51589560c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3bb821958b4026498b082e51589560c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kaveri flows into the Arabian Sea'),
            ('B', 'The Kaveri is the longest river of the Deccan'),
            ('C', 'The Kaveri rises at the Talakaveri on the Brahmagiri hills of Karnataka'),
            ('D', 'The Kaveri rises in the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = '3bb821958b4026498b082e51589560c6'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tungabhadra'' and the ''Kodagar'' and the ''Hampi'':',
    'The Tungabhadra is the chief tributary of the Krishna and the ruins of Vijayanagara at Hampi stand on its banks.',
    'medium',
    'Standard Reference',
    null,
    'f588c1e89906e1ce9130d0d47e74a14e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f588c1e89906e1ce9130d0d47e74a14e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Tungabhadra is a tributary of the Kaveri'),
            ('B', 'The Hampi is on the Mahanadi'),
            ('C', 'The Tungabhadra flows into the Arabian Sea'),
            ('D', 'The Tungabhadra is the chief tributary of the Krishna and the Hampi is on its bank')
           ) as v(label, option_text)
 where q.question_hash = 'f588c1e89906e1ce9130d0d47e74a14e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Penner'' and the ''Kasinima'':',
    'The Penner or the Penna rises at the Kadinamala in the Eastern Ghats and it forms the delta with the Krishna in Andhra Pradesh.',
    'hard',
    'Standard Reference',
    null,
    '8aa04741af6a55d04053b2e9594f303c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8aa04741af6a55d04053b2e9594f303c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Penner rises in the Himalaya'),
            ('B', 'The Penner rises at the Kadinamala in the Eastern Ghats and forms the Krishna and the Godavari'),
            ('C', 'The Penner is a tributary of the Kaveri'),
            ('D', 'The Penner flows into the Arabian Sea')
           ) as v(label, option_text)
 where q.question_hash = '8aa04741af6a55d04053b2e9594f303c'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Damodar'' and the ''Chota Nagpur'':',
    'The Damodar, a river of the Chota Nagpur plateau, was the site of the Damodar Valley Corporation, the first major multipurpose river valley project of India.',
    'medium',
    'Standard Reference',
    null,
    '62a2ac8cfd6b81c76fc04e5527db9cb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62a2ac8cfd6b81c76fc04e5527db9cb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Damodar is in the Himalaya'),
            ('B', 'The Damodar flows into the Arabian Sea'),
            ('C', 'The Damodar is the longest river of the Deccan'),
            ('D', 'The Damodar is a river of the Chota Nagpur plateau and it was the site of the first multipurpose river valley project')
           ) as v(label, option_text)
 where q.question_hash = '62a2ac8cfd6b81c76fc04e5527db9cb0'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Subarnarekha'' and the ''Bihar'' and the ''Ranchi'':',
    'The Subarnarekha, about 692 km long, flows through the Ranchi plateau and the Singhbhum hills and it joins the Ganga in West Bengal.',
    'hard',
    'Standard Reference',
    null,
    '84a7fdd2ea56514426d09cdac054e473'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '84a7fdd2ea56514426d09cdac054e473'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Subarnarekha is a tributary of the Ganga'),
            ('B', 'The Subarnarekha flows into the Arabian Sea'),
            ('C', 'The Subarnarekha flows through the Ranchi plateau and the Singhbhum in Jharkhand'),
            ('D', 'The Subarnarekha is in Kerala')
           ) as v(label, option_text)
 where q.question_hash = '84a7fdd2ea56514426d09cdac054e473'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Gandak'' and the ''Gorakhpur'' and the ''Ganga'':',
    'The Gandak, about 445 km long, rises in the Gorakhpur district of Uttar Pradesh and joins the Ganga near Patna, and the Valmiki Tiger Reserve is in the Valmiki area.',
    'medium',
    'Standard Reference',
    null,
    '21b0cf9edbe246463bf19060522f9f4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '21b0cf9edbe246463bf19060522f9f4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gandak rises in the Gorakhpur district of Uttar Pradesh and joins the Ganga in Bihar'),
            ('B', 'The Gandak rises in the Himalaya of Nepal'),
            ('C', 'The Gandak is a west flowing river'),
            ('D', 'The Gandak joins the Brahmaputra')
           ) as v(label, option_text)
 where q.question_hash = '21b0cf9edbe246463bf19060522f9f4e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ghaghara'' and the ''Kaimur'':',
    'The Ghaghara, about 1023 km long, rises in the Kaimur range and it is the largest tributary of the Ganga and it flows through the Ganga and the Gandak and the Son valleys.',
    'hard',
    'Standard Reference',
    null,
    '0daa08c4fb0e1ebd699a6aa675f43686'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0daa08c4fb0e1ebd699a6aa675f43686'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ghaghara rises in the Kaimur range and is a tributary of the Ganga'),
            ('B', 'The Ghaghara is a west flowing river'),
            ('C', 'The Ghaghara rises in the Himalaya of Nepal'),
            ('D', 'The Ghaghara joins the Godavari')
           ) as v(label, option_text)
 where q.question_hash = '0daa08c4fb0e1ebd699a6aa675f43686'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Betwa'' and the ''Ken'' and the ''Tons'':',
    'The Betwa, about 640 km long, is a tributary of the Yamuna and the Ken and the Tons are its chief tributaries, and the Tawa and the Matla are the dams.',
    'medium',
    'Standard Reference',
    null,
    'c7d8cdb9062567f202854007423939f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7d8cdb9062567f202854007423939f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Betwa flows west into the Arabian Sea'),
            ('B', 'The Betwa is a tributary of the Yamuna and the Ken and the Tons join it'),
            ('C', 'The Betwa is a tributary of the Godavari'),
            ('D', 'The Betwa rises in the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = 'c7d8cdb9062567f202854007423939f5'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Chambal'' and the ''Jalgaon'' and the ''Prava'':',
    'The Chambal, about 1,000 km long, rises in the Janapav hills of Madhya Pradesh and it forms the Bundi and the Kota plains in Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    'd8fd4810b47da1f78571616dee1983d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8fd4810b47da1f78571616dee1983d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chambal rises in the Himalaya'),
            ('B', 'The Chambal is a tributary of the Narmada'),
            ('C', 'The Chambal flows into the Bay of Bengal'),
            ('D', 'The Chambal rises in the Janapav hills of Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'd8fd4810b47da1f78571616dee1983d1'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Banas'' and the ''Aravalli'':',
    'The Banas, the largest tributary of the Chambal, rises in the Aravalli range of Rajasthan and the Swarnrekha is its chief tributary.',
    'medium',
    'Standard Reference',
    null,
    '53106501d2f328b38c96c2187994e198'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '53106501d2f328b38c96c2187994e198'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Banas rises in the Himalaya'),
            ('B', 'The Banas flows into the Arabian Sea directly'),
            ('C', 'The Banas is a tributary of the Chambla and it rises in the Aravalli'),
            ('D', 'The Banas is a tributary of the Godavari')
           ) as v(label, option_text)
 where q.question_hash = '53106501d2f328b38c96c2187994e198'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Luni'' and the ''Saurashtra'':',
    'The Luni, 495 km long, is the only river of Rajasthan that flows into the Arabian Sea and it is the only seasonal river of the state and the only one of the state that does not form a delta.',
    'hard',
    'Standard Reference',
    null,
    '1e444dac64060536ce1780489ba745c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e444dac64060536ce1780489ba745c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Luni is a perennial river'),
            ('B', 'The Luni is the only river of Rajasthan that flows into the Arabian Sea and it is the only seasonal river of the state'),
            ('C', 'The Luni flows into the Ganga'),
            ('D', 'The Luni is the longest river of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '1e444dac64060536ce1780489ba745c8'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Saraswati'' and the ''Sutlej'' and the ''Ghaggar'':',
    'The Saraswati of the Rigveda is generally identified with the Ghaggar and the Sutlej and the upper reaches of these rivers in the Punjab region are the Saraswati of the Vedic age.',
    'hard',
    'Standard Reference',
    null,
    '86ee67d514b30cf321d76879baf62f20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '86ee67d514b30cf321d76879baf62f20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Saraswati of the Rigveda is identified with the Ghaggar and the Sutlej'),
            ('B', 'The Saraswati is the Yamuna'),
            ('C', 'The Saraswati is a river of Kerala'),
            ('D', 'The Saraswati is the Narmada')
           ) as v(label, option_text)
 where q.question_hash = '86ee67d514b30cf321d76879baf62f20'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Betel'' and the ''Sabarmati'':',
    'The Sabarmati, about 474 km long, rises at the Bori on the Amarkantak and it flows into the Gulf of Khambhat in Gujarat.',
    'medium',
    'Standard Reference',
    null,
    '2cb8c95f4f0c94b3fd35691b3e9e721c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cb8c95f4f0c94b3fd35691b3e9e721c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sabarmati rises in the Himalaya'),
            ('B', 'The Sabarmati is a tributary of the Godavari'),
            ('C', 'The Sabarmati flows into the Bay of Bengal'),
            ('D', 'The Sabarmati rises at the Bori on the Amarkantak in Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '2cb8c95f4f0c94b3fd35691b3e9e721c'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Mahanadi'' and the ''Hirakud'':',
    'The Hirakud dam, one of the longest earthen dams in the world, was built on the Mahanadi in Odisha after the devastating 1936 floods.',
    'easy',
    'Standard Reference',
    null,
    'ba99c909326c699d101275320d8a728b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ba99c909326c699d101275320d8a728b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hirakud dam is on the Krishna'),
            ('B', 'The Hirakud dam is on the Kaveri'),
            ('C', 'The Hirakud dam is on the Mahanadi and it was built after the 1936 floods'),
            ('D', 'The Hirakud dam is on the Godavari')
           ) as v(label, option_text)
 where q.question_hash = 'ba99c909326c699d101275320d8a728b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indira Gandhi Canal'' and the ''Rajasthan'':',
    'The Indira Gandhi Canal, with a length of about 649 km, is the longest canal in India and it irrigates the western Rajasthan through the series of the distributaries.',
    'medium',
    'Standard Reference',
    null,
    'f3661933c1d53c85e54f7e23584e0e21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3661933c1d53c85e54f7e23584e0e21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a feeder of the Bhakra'),
            ('B', 'It is the longest canal in India and irrigates the western Rajasthan'),
            ('C', 'It is the shortest canal in India'),
            ('D', 'It irrigates the coastal Andhra')
           ) as v(label, option_text)
 where q.question_hash = 'f3661933c1d53c85e54f7e23584e0e21'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Chambal Valley Project'':',
    'The Chambal Valley Project, begun in 1948 with the Jawahar Sagar, the Gandhi Sagar and the Kota Barrage, was the first major multipurpose project after the Damodar.',
    'hard',
    'Standard Reference',
    null,
    '72af4ca9e9e94597048466ca0f4a2a93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72af4ca9e9e94597048466ca0f4a2a93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first major multipurpose river valley project after the Damodar and it involves the Gandhi Sagar and the Kota Barrage'),
            ('B', 'It was the first project of the British'),
            ('C', 'It was a power project only'),
            ('D', 'It is in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '72af4ca9e9e94597048466ca0f4a2a93'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Tungabhadra dam'' and the ''Harihara'':',
    'The Tungabhadra dam is at the confluence of the Tungabhadra with the Krishna and it was built jointly by the Andhra and the Mysore states.',
    'medium',
    'Standard Reference',
    null,
    'b58bb8097b8ec60d2af5b6a65a0f9af9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b58bb8097b8ec60d2af5b6a65a0f9af9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in Maharashtra'),
            ('B', 'It was built by the British'),
            ('C', 'The Tungabhadra dam is at the confluence of the Tungabhadra and the Krishna'),
            ('D', 'It is on the Kaveri alone')
           ) as v(label, option_text)
 where q.question_hash = 'b58bb8097b8ec60d2af5b6a65a0f9af9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sardar Sarovar'' and the ''Narmada'':',
    'The Sardar Sarovar dam is on the Narmada in Gujarat and the Indira Sagar dam is on the same river in Madhya Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '104d7580219c4b65c4ac559e34c04cdf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '104d7580219c4b65c4ac559e34c04cdf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are on the Tapti'),
            ('B', 'Both are in Gujarat'),
            ('C', 'The Indira Sagar is in Maharashtra'),
            ('D', 'The Sardar Sarovar dam is on the Narmada and the Indira Sagar is in Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '104d7580219c4b65c4ac559e34c04cdf'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Nagarjunsagar'' and the ''Krishna'':',
    'The Nagarjunsagar dam is on the Krishna in Andhra Pradesh and the Srisailam dam is on the same river further downstream, and the two together are the Srisailam project.',
    'hard',
    'Standard Reference',
    null,
    'c1e415838350dc8bdb8f39d95df9e06b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c1e415838350dc8bdb8f39d95df9e06b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Nagarjunsagar dam is on the Krishna and the Srisailam dam is on the same river downstream'),
            ('B', 'The Nagarjunsagar is on the Godavari'),
            ('C', 'The Srisailam is on the Tungabhadra'),
            ('D', 'Both are on the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'c1e415838350dc8bdb8f39d95df9e06b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Neyyar'' and the ''Pamba'' and the ''Kallada'':',
    'The Neyyar, the Pamba and the Kallada are the principal rivers of Kerala, and the Periyar is the most important of them.',
    'easy',
    'Standard Reference',
    null,
    '3bb17545ea6e771492f2c573027b576f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3bb17545ea6e771492f2c573027b576f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the rivers of Karnataka'),
            ('B', 'They are the rivers of Odisha'),
            ('C', 'The Neyyar, the Pamba and the Kallada are the rivers of Kerala'),
            ('D', 'They are the rivers of Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '3bb17545ea6e771492f2c573027b576f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Bharathapuzha'' and the ''Kerala'' and the ''Nilgiri'':',
    'The Bharathapuzha, the longest river of Kerala at about 290 km, rises in the Brahmagiri hills of the Nilgiris and it empties into the Arabian Sea at Ponnani.',
    'medium',
    'Standard Reference',
    null,
    '34004bf23c02061a2bb8d38beb1942ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '34004bf23c02061a2bb8d38beb1942ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bharathapuzha rises in the Himalaya'),
            ('B', 'The Bharathapuzha is the longest river of India'),
            ('C', 'The Bharathapuzha flows into the Arabian Sea at Kollam'),
            ('D', 'The Bharathapuzha, the longest river of Kerala, rises in the Nilgiri hills')
           ) as v(label, option_text)
 where q.question_hash = '34004bf23c02061a2bb8d38beb1942ec'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kabini'' and the ''Karnataka'' and the ''Pananchery'':',
    'The Kabini, a tributary of the Kaveri, rises in the Brahmagiri hills and the Pananchery and the Kuppachi are its tributaries.',
    'hard',
    'Standard Reference',
    null,
    'a0aa0188a09ee1af13727cc83469af20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a0aa0188a09ee1af13727cc83469af20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kabini flows into the Arabian Sea directly'),
            ('B', 'The Kabini rises in the Brahmagiri hills and the Pananchery is a tributary'),
            ('C', 'The Kabini is in Kerala'),
            ('D', 'The Kabini is a tributary of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'a0aa0188a09ee1af13727cc83469af20'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Hemavati'' and the ''Dakshina Kanara'':',
    'The Hemavati, a tributary of the Kaveri, rises in the Kodachadri hills of the Dakshina Kanara and the Greedihalli and the Nagamangala are its tributaries.',
    'hard',
    'Standard Reference',
    null,
    'c956d7b5218dafb96def8aff0d3d6af9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c956d7b5218dafb96def8aff0d3d6af9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hemavati flows into the Arabian Sea'),
            ('B', 'The Hemavati is a tributary of the Kaveri in the Dakshina Kanara'),
            ('C', 'The Hemavati is a tributary of the Krishna'),
            ('D', 'The Hemavati is in Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'c956d7b5218dafb96def8aff0d3d6af9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sharavathi'' and the ''Aghanashini'':',
    'The Sharavathi, the Aghanashini, the Kali and the Varahi are the principal west flowing rivers of Karnataka.',
    'medium',
    'Standard Reference',
    null,
    '225982425255f0a34a2801ef50a4a3f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '225982425255f0a34a2801ef50a4a3f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are in Kerala'),
            ('B', 'They are the tributaries of the Godavari'),
            ('C', 'The Sharavathi and the Aghanashini are the west flowing rivers of Karnataka'),
            ('D', 'They are the east flowing rivers of Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '225982425255f0a34a2801ef50a4a3f8'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kabini'' and the ''Kaveri'' and the ''Srirangapatna'':',
    'The Kabini joins the Kaveri near Srirangapatna, and the point of the confluence is marked by the Gumbaz at the confluence of the Kaveri and the Kabini.',
    'hard',
    'Standard Reference',
    null,
    '5d1181e79c4137c4cfbad352df8f71b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d1181e79c4137c4cfbad352df8f71b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kabini joins the Kaveri near Srirangapatna'),
            ('B', 'The Kabini joins the Krishna'),
            ('C', 'The Kabini joins the Tunga'),
            ('D', 'The Kabini is in Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '5d1181e79c4137c4cfbad352df8f71b3'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Pampa'' and the ''Arunachal'':',
    'The Pampa, the Subansiri and the Bhomor are the main rivers of Arunachal Pradesh that flow into the Brahmaputra or the Dihang.',
    'hard',
    'Standard Reference',
    null,
    '595c24b1e9893976684ddb4aa815acfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '595c24b1e9893976684ddb4aa815acfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pampa is in Kerala'),
            ('B', 'The Pampa is a tributary of the Ganga'),
            ('C', 'The Pampa flows into the Arabian Sea'),
            ('D', 'The Pampa is the river of the Arunachal Pradesh that flows into the Dihang')
           ) as v(label, option_text)
 where q.question_hash = '595c24b1e9893976684ddb4aa815acfb'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Umngot'' and the ''Daw'' and the ''Dudhkumar'':',
    'The Umngot, the Daw and the Dudhkumar are the main rivers of the Tripura and the Mizoram and the Gumti is the important river of the Tripura.',
    'hard',
    'Standard Reference',
    null,
    '27429a1317cab16a26a8fdcec7c0f4d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27429a1317cab16a26a8fdcec7c0f4d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the rivers of the Kerala'),
            ('B', 'They are the rivers of the Rajasthan'),
            ('C', 'They are the rivers of the Punjab'),
            ('D', 'The Umngot, the Daw and the Dudhkumar are the rivers of the Tripura and the Mizoram')
           ) as v(label, option_text)
 where q.question_hash = '27429a1317cab16a26a8fdcec7c0f4d9'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Bhagirathi'' and the ''Alaknanda'':',
    'The Ganga is formed by the confluence of the Bhagirathi and the Alaknanda at Devprayag in Uttarakhand and it flows first to the northwest and then to the southeast.',
    'easy',
    'NCERT Class XI',
    null,
    '7fd929dc6c5f5f7f022ee37da031a53d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7fd929dc6c5f5f7f022ee37da031a53d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ganga is formed by the confluence of the Bhagirathi and the Alaknanda at Devprayag'),
            ('B', 'The Ganga is formed at Haridwar'),
            ('C', 'The Ganga is formed by the Yamuna and the Son'),
            ('D', 'The Ganga is formed at Rishikesh')
           ) as v(label, option_text)
 where q.question_hash = '7fd929dc6c5f5f7f022ee37da031a53d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Brahmaputra'' and the ''Majuli'':',
    'Majuli, in the Brahmaputra in Assam, is the largest river island in the world and it was made a district in 2003.',
    'medium',
    'Standard Reference',
    null,
    '9957601b32e89ef550c127c2e69df60a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9957601b32e89ef550c127c2e69df60a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Majuli is in Kerala'),
            ('B', 'Majuli is a mountain peak'),
            ('C', 'Majuli is the largest river island in the world and it is a notified district now'),
            ('D', 'Majuli is the largest lake')
           ) as v(label, option_text)
 where q.question_hash = '9957601b32e89ef550c127c2e69df60a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sundarbans'' and the ''Ganga'' and the ''Brahmaputra'':',
    'The Sundarbans, the largest mangrove forest of the world, is the delta of the Ganga, the Brahmaputra and the Meghna and it is a UNESCO World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    '0a32afe852d6ef632c4ff7349dad6da4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0a32afe852d6ef632c4ff7349dad6da4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sundarbans is on the west coast'),
            ('B', 'The Sundarbans is the delta of the Ganga, the Brahmaputra and the Meghna'),
            ('C', 'The Sundarbans is the delta of the Kaveri'),
            ('D', 'The Sundarbans is a lake')
           ) as v(label, option_text)
 where q.question_hash = '0a32afe852d6ef632c4ff7349dad6da4'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Nagarhole'' and the ''Bandipur'' and the ''Kaveri'':',
    'The Nagarhole, the Bandipur and the Mudumalai, along with the BRT, are the elephant reserves of the Kaveri valley in Karnataka and Tamil Nadu.',
    'hard',
    'Standard Reference',
    null,
    '955508f505de0af0005d424de351205d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '955508f505de0af0005d424de351205d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are in Kerala'),
            ('B', 'They are in Rajasthan'),
            ('C', 'They are the sanctuaries of the Ganga'),
            ('D', 'The Nagarhole, the Bandipur and the Mudumalai are the elephant reserves of the Kaveri valley')
           ) as v(label, option_text)
 where q.question_hash = '955508f505de0af0005d424de351205d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Cauvery'' and the ''Srirangapatna'' and the ''Wodeyars'':',
    'The Kaveri is the lifeline of the Wodeyars of Mysore and the Kabini and the Hemavati are its tributaries and the Ranganathittu bird sanctuary is on its bank.',
    'medium',
    'Standard Reference',
    null,
    '448ce491cdf00242eef1071b8e6dd9f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '448ce491cdf00242eef1071b8e6dd9f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kaveri is the lifeline of the Wodeyars of Mysore'),
            ('B', 'The Kaveri is the lifeline of the Nizams'),
            ('C', 'The Kaveri is the lifeline of the Nawabs of Awadh'),
            ('D', 'The Kaveri is the lifeline of the rulers of Travancore')
           ) as v(label, option_text)
 where q.question_hash = '448ce491cdf00242eef1071b8e6dd9f2'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Bharathapuzha'' and the ''Malappuram'':',
    'The Bharathapuzha, the longest river of Kerala, flows through the Malappuram district and forms the longest estuary in the state.',
    'medium',
    'Standard Reference',
    null,
    'f1453b1e8f8dc4aeda4bb0ff8fcfca76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1453b1e8f8dc4aeda4bb0ff8fcfca76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bharathapuzha is a tributary of the Krishna'),
            ('B', 'The Bharathapuzha rises in the Karakoram'),
            ('C', 'The Bharathapuzha is the longest river of Kerala and it flows through the Malappuram district'),
            ('D', 'The Bharathapuzha is in Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'f1453b1e8f8dc4aeda4bb0ff8fcfca76'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Chaliyar'' and the ''Nilgiri'':',
    'The Chaliyar, the fourth longest river of Kerala, rises in the Nilgiri hills and flows through the Wayanad and the Kozhikode districts.',
    'hard',
    'Standard Reference',
    null,
    'b396fad8cf3600ffc48a300af5e1ba67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b396fad8cf3600ffc48a300af5e1ba67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chaliyar flows west into the Arabian Sea at Kannur'),
            ('B', 'The Chaliyar rises in the Nilgiri hills and flows through the Wayanad and Kozhikode'),
            ('C', 'The Chaliyar rises in the Himalaya'),
            ('D', 'The Chaliyar is a tributary of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'b396fad8cf3600ffc48a300af5e1ba67'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Bharathapuzha'' and the ''Kuttanad'':',
    'The Kuttanad region of Alappuzha is the largest below sea level farming region in the world and the uniqueness of the region is recognised by the World Wetlands Day.',
    'hard',
    'Standard Reference',
    null,
    '461705b9e9668206ae1ea706e45b205a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '461705b9e9668206ae1ea706e45b205a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kuttanad is the region of the below sea level farming along the Pamba'),
            ('B', 'The Kuttanad is a plateau'),
            ('C', 'The Kuttanad is a desert'),
            ('D', 'The Kuttanad is in Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '461705b9e9668206ae1ea706e45b205a'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Backwaters'' and the ''Vembanad'' and the ''Kuttanad'':',
    'The Vembanad Lake, about 125 km long, is the longest lake in India and it connects the backwaters of the Kuttanad, the Kuttanad, the Kainakudy and the Alappuzha regions.',
    'medium',
    'Standard Reference',
    null,
    '77218fff57ee8fc08a558c2ad92266df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '77218fff57ee8fc08a558c2ad92266df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Vembanad is a river'),
            ('B', 'The Vembanad is a reservoir in Karnataka'),
            ('C', 'The Vembanad Lake connects the backwaters of Kerala and it is the longest lake in India'),
            ('D', 'The Vembanad is in Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '77218fff57ee8fc08a558c2ad92266df'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Asia''s first wetlands'' and the ''Kuttanad'':',
    'The Vembanad-Kol Wetland is the first of the Ramsar sites in Asia, and it was designated in 2021.',
    'hard',
    'Standard Reference',
    null,
    'a44c24e4a27a68c0556930af6308743d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a44c24e4a27a68c0556930af6308743d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kuttanad is a Ramsar site in Nepal'),
            ('B', 'The Kuttanad is in Bangladesh'),
            ('C', 'There is no Ramsar site in Kerala'),
            ('D', 'The Vembanad-Kol Wetland is the first of the Ramsar sites in Asia')
           ) as v(label, option_text)
 where q.question_hash = 'a44c24e4a27a68c0556930af6308743d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Chilika Lake'' and the ''Odisha'' and the ''Nalagarh'':',
    'The Chilika Lake, the largest brackish water lagoon in India, is a Ramsar site in Odisha, and it was separated from the Bay of Bengal by a sand bar.',
    'easy',
    'Standard Reference',
    null,
    'b43f9bb60e6efa8495353641fee91a26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b43f9bb60e6efa8495353641fee91a26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chilika is a man-made lake'),
            ('B', 'The Chilika is the largest brackish water lagoon in India and it is a Ramsar site'),
            ('C', 'The Chilika is the largest freshwater lake in India'),
            ('D', 'The Chilika is in West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'b43f9bb60e6efa8495353641fee91a26'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Sambhar Lake'' in Rajasthan:',
    'The Sambhar Lake, the largest inland salt water lake of India, is a Ramsar site and it is the source of the salt production.',
    'medium',
    'Standard Reference',
    null,
    'e76209ab1c2ab7a613b16c62a2d1eb93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e76209ab1c2ab7a613b16c62a2d1eb93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a volcanic crater lake'),
            ('B', 'Is a man-made lake of the Punjab'),
            ('C', 'Is the largest inland salt water lake of India and is a Ramsar site'),
            ('D', 'Is a freshwater lake of the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = 'e76209ab1c2ab7a613b16c62a2d1eb93'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Dal Lake'' and the ''Nigeen'' and the ''Nagin'':',
    'The Dal lake of Srinagar, with the Nigeen lake, is a freshwater lake and the houseboat is a distinctive feature of the Kashmir valley.',
    'medium',
    'Standard Reference',
    null,
    'caaf33cfe0cdb01ec314f8c1a68c4137'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'caaf33cfe0cdb01ec314f8c1a68c4137'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Dal is in Himachal Pradesh'),
            ('B', 'The Dal is a salt lake'),
            ('C', 'The Dal is the largest lake of the Deccan'),
            ('D', 'The Dal lake of Srinagar has the Nigeen lake and the water is of the Nagin')
           ) as v(label, option_text)
 where q.question_hash = 'caaf33cfe0cdb01ec314f8c1a68c4137'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Wular Lake'' is:',
    'The Wular Lake, the largest freshwater lake in India, is the winter home of a large number of migratory birds, and it was the site of the first bird sanctuary in India in 1954.',
    'easy',
    'Standard Reference',
    null,
    '2c913990175b81ddbbad9584e7083405'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c913990175b81ddbbad9584e7083405'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest freshwater lake in India and it is the winter home of the migratory birds'),
            ('B', 'A salt lake of Rajasthan'),
            ('C', 'A man-made lake of the Punjab'),
            ('D', 'A tidal lagoon of Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '2c913990175b81ddbbad9584e7083405'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Loktak Lake'' of Manipur:',
    'The Loktak Lake is the largest freshwater lake in the North-East India and it hosts the Keibul Lamjao, the only floating national park in the world.',
    'medium',
    'Standard Reference',
    null,
    '0109d29c244ec4a23a2bd2cbd33b3115'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0109d29c244ec4a23a2bd2cbd33b3115'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a man-made lake in Tamil Nadu'),
            ('B', 'Is the largest freshwater lake in the North-East India and hosts the Keibul Lamjao'),
            ('C', 'Is a salt lake in Rajasthan'),
            ('D', 'Is the largest lake in India')
           ) as v(label, option_text)
 where q.question_hash = '0109d29c244ec4a23a2bd2cbd33b3115'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kolleru'' and the ''Godavari'' and the ''Kakinada'':',
    'The Kolleru Lake, formed by the Krishna and the Godavari, is the largest lagoon in India and it is a Ramsar site.',
    'hard',
    'Standard Reference',
    null,
    'c6897ccf47970300a3b02100a86b8a3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c6897ccf47970300a3b02100a86b8a3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kolleru is a salt lake of Rajasthan'),
            ('B', 'The Kolleru is in Kerala'),
            ('C', 'The Kolleru is a mountain lake'),
            ('D', 'The Kolleru Lake is the largest lagoon in India and it is a Ramsar site')
           ) as v(label, option_text)
 where q.question_hash = 'c6897ccf47970300a3b02100a86b8a3e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Gadisar'' and the ''Sardar Sarovar'':',
    'The Gadisar Lake, a large freshwater reservoir in the Sardar Sarovar complex in Gujarat, was the first such reservoir in the western India.',
    'hard',
    'Standard Reference',
    null,
    'df8079d4850bdedb9108ddf3aa9c68e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df8079d4850bdedb9108ddf3aa9c68e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gadisar is a natural lake of the Gangetic plain'),
            ('B', 'The Gadisar Lake is a large freshwater reservoir in the Sardar Sarovar complex'),
            ('C', 'The Gadisar is in Kerala'),
            ('D', 'The Gadisar is a salt lake of Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'df8079d4850bdedb9108ddf3aa9c68e1'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Gobind Sagar'' and the ''Bhakra'':',
    'The Gobind Sagar, the reservoir of the Bhakra dam, has a gross storage capacity of about 9 billion cubic metres and it was created by the construction of the Bhakra Nangal dam.',
    'medium',
    'Standard Reference',
    null,
    '8beeab38e4ba173bf209ae32c471593f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8beeab38e4ba173bf209ae32c471593f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gobind Sagar is the reservoir of the Bhakra dam and it has a capacity of about 9 billion cubic metres'),
            ('B', 'The Gobind Sagar is a natural lake in the Deccan'),
            ('C', 'The Gobind Sagar is in Rajasthan'),
            ('D', 'The Gobind Sagar is the largest lake of the Ganga plain')
           ) as v(label, option_text)
 where q.question_hash = '8beeab38e4ba173bf209ae32c471593f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Indira Sagar'' and the ''Narmada'' and the ''Gujarat'':',
    'The Indira Sagar, the reservoir of the Narmada dam in Madhya Pradesh, is the largest reservoir in India by the volume of water and it is a World Heritage site with the Bhimbetka.',
    'hard',
    'Standard Reference',
    null,
    'ae86ce1b912e1fb6a5e4dc4b2d04e524'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ae86ce1b912e1fb6a5e4dc4b2d04e524'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Indira Sagar is in Maharashtra'),
            ('B', 'The Indira Sagar is a natural lake'),
            ('C', 'The Indira Sagar is the reservoir of the dam in Madhya Pradesh that is the largest in India by the volume'),
            ('D', 'The Indira Sagar is in Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'ae86ce1b912e1fb6a5e4dc4b2d04e524'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Omkareshwar'' and the ''Narmada'' and the ''Maheshwar'':',
    'The Omkareshwar and the Maheshwar, along with the Omkareshwar and the Maheshwar, are the two important pilgrimage centres on the Narmada, and the Sardar Sarovar dam is between them.',
    'hard',
    'Standard Reference',
    null,
    'bc5270da17fa436c3de3d3a896b34517'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bc5270da17fa436c3de3d3a896b34517'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the two hills of the Deccan'),
            ('B', 'They are the two forts of Rajasthan'),
            ('C', 'The Omkareshwar and the Maheshwar are the two important ghats of the Narmada'),
            ('D', 'They are the two dams of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'bc5270da17fa436c3de3d3a896b34517'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Hirakud'' and the ''Mahanadi'' and the ''Chhattisgarh'':',
    'The Mahanadi, the lifeline of Chhattisgarh and Odisha, rises at the Sihawa in the Dandakaranya hills and the Hirakud dam is built on it in Odisha.',
    'medium',
    'Standard Reference',
    null,
    'b18843b66afbc86efd705b6cb7517b4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b18843b66afbc86efd705b6cb7517b4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mahanadi has its source in the Dandakaranya hills of Chhattisgarh and the Hirakud dam in Odisha'),
            ('B', 'The Mahanadi rises in the Himalaya'),
            ('C', 'The Mahanadi flows west'),
            ('D', 'The Mahanadi is a tributary of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'b18843b66afbc86efd705b6cb7517b4e'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Subarnarekha'' and the ''Chotanagpur'' and the ''Jamshedpur'':',
    'The Subarnarekha flows through the Chotanagpur plateau and the Jamshedpur city stands at the confluence of the Subarnarekha and the Kharkai rivers.',
    'hard',
    'Standard Reference',
    null,
    '619d65322803afde1b40683ccc19dbf2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '619d65322803afde1b40683ccc19dbf2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Subarnarekha is in Kerala'),
            ('B', 'The Subarnarekha joins the Krishna'),
            ('C', 'The Subarnarekha flows into the Arabian Sea'),
            ('D', 'The Subarnarekha flows through the Chotanagpur and the Jamshedpur is on the Subarnarekha and the Kharkai')
           ) as v(label, option_text)
 where q.question_hash = '619d65322803afde1b40683ccc19dbf2'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Damodar'' and the ''Bengal'':',
    'The Damodar, the Sorrow of Bengal, was severely affected by the mining and the industrial pollution and the Damodar Valley Corporation was set up in 1947.',
    'medium',
    'Standard Reference',
    null,
    '1c1d2c057a56e9c50636e42eb289ca97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1c1d2c057a56e9c50636e42eb289ca97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Damodar flows into the Arabian Sea'),
            ('B', 'The Damodar is known as the Sorrow of Bengal because of the flooding and the industrial pollution'),
            ('C', 'The Damodar is the lifeline of the Bengal'),
            ('D', 'The Damodar is a tributary of the Brahmaputra')
           ) as v(label, option_text)
 where q.question_hash = '1c1d2c057a56e9c50636e42eb289ca97'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Damodar Valley Corporation'' was modelled on the:',
    'The Damodar Valley Corporation, set up in 1947, was modelled on the Tennessee Valley Authority of the United States.',
    'medium',
    'Standard Reference',
    null,
    '4a4cd3820da3032872323674fb5b156f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4a4cd3820da3032872323674fb5b156f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ruhr valley of Germany'),
            ('B', 'The Po valley of Italy'),
            ('C', 'Tennessee Valley Authority of the USA'),
            ('D', 'Murray-Darling basin of Australia')
           ) as v(label, option_text)
 where q.question_hash = '4a4cd3820da3032872323674fb5b156f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Kundah'' and the ''Mettur'' and the ''Bhavani'':',
    'The Mettur dam is on the Kaveri and the Bhavani, the Ponnai and the Noyyal are its tributaries in the Tamil Nadu.',
    'hard',
    'Standard Reference',
    null,
    '1f067f427da7d173d97d8730930d8609'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1f067f427da7d173d97d8730930d8609'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mettur dam is on the Krishna'),
            ('B', 'The Bhavani is a tributary of the Godavari'),
            ('C', 'They are in Kerala'),
            ('D', 'The Mettur dam is on the Kaveri and the Bhavani is its main tributary in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '1f067f427da7d173d97d8730930d8609'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Papanasam'' and the ''Gadana'' and the ''Ganga'':',
    'The Tambraparani, the main river of the Tirunelveli district, has the Papanasam, the Gadana, the Manimuthar and the Ganga as its tributaries.',
    'hard',
    'Standard Reference',
    null,
    '80a59725aaa2fead31632096894ee5f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '80a59725aaa2fead31632096894ee5f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Papanasam, the Gadana and the Manimuthar are the tributaries of the Tambraparani'),
            ('B', 'They are the tributaries of the Krishna'),
            ('C', 'They are in Kerala'),
            ('D', 'They are the tributaries of the Narmada')
           ) as v(label, option_text)
 where q.question_hash = '80a59725aaa2fead31632096894ee5f5'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Sone'' and the ''Son'':',
    'The Son or the Sone, the largest tributary of the Ganga by the discharge, rises in the Amarkantak and it joins the Ganga near Patna with the Gandak and the Kosi.',
    'medium',
    'Standard Reference',
    null,
    '98538fb4215e01356a26ae39d6b6dc6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '98538fb4215e01356a26ae39d6b6dc6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Son is in Kerala'),
            ('B', 'The Son is the largest tributary of the Ganga by the discharge and the Sone is the same river'),
            ('C', 'The Son is a tributary of the Godavari'),
            ('D', 'The Son is a tributary of the Krishna')
           ) as v(label, option_text)
 where q.question_hash = '98538fb4215e01356a26ae39d6b6dc6c'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Hugli'' and the ''Hooghly'':',
    'The Hugli, the Bhagirathi and the Ganga together form the Hooghly, the distributary that flows past Kolkata and the Haldia and the Paradip are the river ports.',
    'hard',
    'Standard Reference',
    null,
    '7be2fec224c0f17cbf530d120cda77c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7be2fec224c0f17cbf530d120cda77c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Hooghly is a tributary of the Brahmaputra'),
            ('B', 'The Hooghly flows into the Arabian Sea'),
            ('C', 'The Hooghly is a natural lake'),
            ('D', 'The Hugli and the Bhagirathi have become the Hooghly, the distributary that flows past Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '7be2fec224c0f17cbf530d120cda77c6'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Rajmahal'' and the ''Rajmahal hills'':',
    'The Ganga cuts a dramatic gorge through the volcanic Rajmahal hills in Bihar and the Sarauni and the Rajmahal are the important passes there.',
    'medium',
    'Standard Reference',
    null,
    'c799bde5ac837ae8e69a7e89fad54ba2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c799bde5ac837ae8e69a7e89fad54ba2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rajmahal hills are of the Deccan trap'),
            ('B', 'The Ganga cuts a gorge through the Rajmahal hills, which is a volcanic formation'),
            ('C', 'The Rajmahal hills are in the Himalaya'),
            ('D', 'The Ganga does not pass the Rajmahal hills')
           ) as v(label, option_text)
 where q.question_hash = 'c799bde5ac837ae8e69a7e89fad54ba2'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Ganga'' and the ''Farakka'' and the ''Hooghly'':',
    'The Farakka Barrage, completed in 1975, diverts the Ganga to the Bhagirathi-Hooghly to flush the silt and to maintain the navigability of the Calcutta port.',
    'medium',
    'Standard Reference',
    null,
    'b712b6ed9b552bc166d132caea85d4f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b712b6ed9b552bc166d132caea85d4f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Farakka Barrage diverts the Ganga to the Hooghly to flush the silt and to keep the navigation open'),
            ('B', 'The Farakka Barrage supplies the irrigation to the Punjab'),
            ('C', 'The Farakka Barrage is on the Brahmaputra'),
            ('D', 'The Farakka Barrage is a hydroelectric project')
           ) as v(label, option_text)
 where q.question_hash = 'b712b6ed9b552bc166d132caea85d4f4'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The ''Narmada'' and the ''Betasia'' and the ''Bori'':',
    'The Narmada valley in the Bori and the Betasia hills is a part of the rugged Satpura and the Maikala ranges and the Narmada cuts through it in a rift.',
    'hard',
    'Standard Reference',
    null,
    '9e4767b238476b6aeedd7ab1f234dcd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9e4767b238476b6aeedd7ab1f234dcd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Narmada valley is in the Deccan plateau'),
            ('B', 'The Narmada valley is in the Aravalli'),
            ('C', 'The Narmada valley in the Bori and the Betasia is a part of the Satpura and the Maikala'),
            ('D', 'The Narmada valley is in the Himalaya')
           ) as v(label, option_text)
 where q.question_hash = '9e4767b238476b6aeedd7ab1f234dcd1'
on conflict (question_id, label) do nothing;

commit;
