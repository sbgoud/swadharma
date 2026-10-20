-- =============================================================================
-- geography_01.sql — geography question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Which layer of the Earth lies directly beneath the crust?',
    'The crust is the thin outer shell of the Earth and rests on the much thicker mantle, which in turn surrounds the outer and inner core.',
    'easy',
    'NCERT Class XI',
    null,
    'bd175eaf85a4d44d18f1efeffd511ed3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bd175eaf85a4d44d18f1efeffd511ed3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inner core'),
            ('B', 'Lithosphere'),
            ('C', 'Mantle'),
            ('D', 'Outer core')
           ) as v(label, option_text)
 where q.question_hash = 'bd175eaf85a4d44d18f1efeffd511ed3'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Hawaiian Islands are an example of which type of volcanic cone?',
    'Hawaiian volcanoes are shield volcanoes built by repeated flows of fluid basaltic lava, which gives them their broad, gently sloping shield shape.',
    'medium',
    'NCERT Class XI',
    null,
    'ce91fba6678906f450a01f2240101a4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ce91fba6678906f450a01f2240101a4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Composite volcano'),
            ('B', 'Caldera'),
            ('C', 'Lava dome'),
            ('D', 'Shield volcano')
           ) as v(label, option_text)
 where q.question_hash = 'ce91fba6678906f450a01f2240101a4f'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Richter scale measures which of the following?',
    'The Richter scale expresses the magnitude, i.e. the energy released at the focus, while the intensity scale measures the shaking felt at a particular place.',
    'easy',
    'NCERT Class XI',
    null,
    'cc09dffa6ca464fab2190547254c39a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cc09dffa6ca464fab2190547254c39a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Magnitude of an earthquake'),
            ('B', 'Depth of the focus'),
            ('C', 'Period of seismic waves'),
            ('D', 'Intensity of an earthquake')
           ) as v(label, option_text)
 where q.question_hash = 'cc09dffa6ca464fab2190547254c39a4'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Continental drift theory was propounded by which scientist?',
    'Alfred Wegener proposed continental drift in 1912, arguing that continents were once joined in the supercontinent Pangaea and later drifted apart.',
    'easy',
    'Standard Reference',
    null,
    'c591cbb3384fe23b755bd801d006a1b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c591cbb3384fe23b755bd801d006a1b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Edward Suess'),
            ('B', 'Alfred Wegener'),
            ('C', 'Harry Hess'),
            ('D', 'Wegener''s student Holmes')
           ) as v(label, option_text)
 where q.question_hash = 'c591cbb3384fe23b755bd801d006a1b8'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The theory of seafloor spreading was put forward by which geologist?',
    'Harry Hess in 1962 proposed that new oceanic crust is created at mid-ocean ridges and spreads outward, later confirmed by Vine and Matthews through magnetic anomalies.',
    'medium',
    'Standard Reference',
    null,
    'fafd0b1be7aec4d0ead2a27b790aede6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fafd0b1be7aec4d0ead2a27b790aede6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Robert Dietz'),
            ('B', 'Vine and Matthews'),
            ('C', 'Holmes'),
            ('D', 'Harry Hess')
           ) as v(label, option_text)
 where q.question_hash = 'fafd0b1be7aec4d0ead2a27b790aede6'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which is the highest point of the Indian subcontinent?',
    'Kanchenjunga at 8,586 m is the highest peak in India and the third highest in the world; Kamet (7,760 m) is the highest peak entirely within India.',
    'easy',
    'NCERT Class XI',
    null,
    'fcd772ef71c70803519c8f3023ade16a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fcd772ef71c70803519c8f3023ade16a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanchenjunga'),
            ('B', 'Nanda Devi'),
            ('C', 'Kamet'),
            ('D', 'Saltoro Kangri')
           ) as v(label, option_text)
 where q.question_hash = 'fcd772ef71c70803519c8f3023ade16a'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Bhabhar and Terai belts are found at the foot of which mountain range?',
    'The Bhabhar is a gravelly belt and the Terai a marshy tract running along the foothills of the Himalayas, created by the deposition of Himalayan streams.',
    'medium',
    'NCERT Class XI',
    null,
    '97e39269bce471225ed56b10eb10b6a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '97e39269bce471225ed56b10eb10b6a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nilgiri'),
            ('B', 'Aravalli'),
            ('C', 'Himalaya'),
            ('D', 'Satpura')
           ) as v(label, option_text)
 where q.question_hash = '97e39269bce471225ed56b10eb10b6a8'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Chambal River is known as the lifeline of which state?',
    'The Chambal flows through Madhya Pradesh and Rajasthan and is called the lifeline of Rajasthan because of its deep valleys and fertile black-soil basin.',
    'medium',
    'NCERT Class XI',
    null,
    'a33c7808ce94e864e378ee3f55187738'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a33c7808ce94e864e378ee3f55187738'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Rajasthan'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'a33c7808ce94e864e378ee3f55187738'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which hill range separates the Chota Nagpur Plateau from the Deccan Plateau?',
    'The Satpura range, running between the Narmada and the Tapi, forms the dividing line between the Chota Nagpur Plateau and the Deccan Plateau.',
    'hard',
    'Standard Reference',
    null,
    'dc0b06f6a1bc8db3d40b1daafe8304f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dc0b06f6a1bc8db3d40b1daafe8304f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vindhya Range'),
            ('B', 'Malwa Plateau'),
            ('C', 'Mahadeo Hills'),
            ('D', 'Satpura Range')
           ) as v(label, option_text)
 where q.question_hash = 'dc0b06f6a1bc8db3d40b1daafe8304f0'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which of the following is the highest peak of the Western Ghats?',
    'Anamudi (2,695 m) in Kerala is the highest peak of the Western Ghats; Doddabetta is the highest point of the Nilgiris and Kalsubai of the Sahyadris proper.',
    'medium',
    'NCERT Class XI',
    null,
    '2fc35d5c475c49a77a32c243670d11e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2fc35d5c475c49a77a32c243670d11e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pushpagiri'),
            ('B', 'Anamudi'),
            ('C', 'Doddabetta'),
            ('D', 'Kalsubai')
           ) as v(label, option_text)
 where q.question_hash = '2fc35d5c475c49a77a32c243670d11e5'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Thar Desert lies primarily between which two states?',
    'The Thar Desert extends across western Rajasthan and the Kutch and western Rajasthan region of Gujarat, bounded by the Aravalli Range to the east.',
    'easy',
    'NCERT Class XI',
    null,
    'cca87dda55fec6da8362642d225da242'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cca87dda55fec6da8362642d225da242'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan and Gujarat'),
            ('B', 'Rajasthan and Punjab'),
            ('C', 'Gujarat and Madhya Pradesh'),
            ('D', 'Rajasthan and Haryana')
           ) as v(label, option_text)
 where q.question_hash = 'cca87dda55fec6da8362642d225da242'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'Which is the largest coral reef lagoon in India?',
    'The Gulf of Kutch in Gujarat forms the largest tidal lagoon in India, and the Gulf of Mannar has the fringing coral reefs of the Gulf of Mannar Biosphere Reserve.',
    'medium',
    'Standard Reference',
    null,
    'e5c8687c259137310d59f50f806c7d27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e5c8687c259137310d59f50f806c7d27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gulf of Cambay'),
            ('B', 'Gulf of Mannar'),
            ('C', 'Gulf of Kutch'),
            ('D', 'Lakshadweep Lagoon')
           ) as v(label, option_text)
 where q.question_hash = 'e5c8687c259137310d59f50f806c7d27'
on conflict (question_id, label) do nothing;

-- geography | indian-physical-features | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'indian-physical-features'),
    'The Silent Valley National Park is located in which state?',
    'Silent Valley in the Nilgiri Biosphere Reserve in Kerala is the country''s oldest tropical evergreen forest and home to the lion-tailed macaque.',
    'medium',
    'Standard Reference',
    null,
    '4ac09153b46c88be1bae0aa643fd06b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4ac09153b46c88be1bae0aa643fd06b1'
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
 where q.question_hash = '4ac09153b46c88be1bae0aa643fd06b1'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Ganga is the longest river in India. Which is the largest river basin in India?',
    'The Ganga basin, covering about a quarter of India''s land area, is the largest river basin in the country and supports the largest population.',
    'easy',
    'NCERT Class XI',
    null,
    '0e0f9e2c5b336d28cd14d9e8cf315558'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e0f9e2c5b336d28cd14d9e8cf315558'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brahmaputra Basin'),
            ('B', 'Godavari Basin'),
            ('C', 'Narmada Basin'),
            ('D', 'Ganga Basin')
           ) as v(label, option_text)
 where q.question_hash = '0e0f9e2c5b336d28cd14d9e8cf315558'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which river is known as the ''Dakshin Ganga''?',
    'The Godavari, the longest river of peninsular India, is popularly known as the Dakshin Ganga or the Ganga of the South.',
    'easy',
    'NCERT Class XI',
    null,
    '8161500b96892d3238c97d467582a25d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8161500b96892d3238c97d467582a25d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari'),
            ('B', 'Krishna'),
            ('C', 'Kaveri'),
            ('D', 'Narmada')
           ) as v(label, option_text)
 where q.question_hash = '8161500b96892d3238c97d467582a25d'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Narmada and the Tapi flow through which rift?',
    'Both rivers flow through the Narmada-Son Rift Valley, a fault-bounded trough that separates the Vindhya and Satpura ranges from the Vindhya plateau proper.',
    'medium',
    'NCERT Class XI',
    null,
    'd54a3f815666e28d0be5c24a9a8664eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd54a3f815666e28d0be5c24a9a8664eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kashmir Trough'),
            ('B', 'Narmada-Son Rift'),
            ('C', 'Doda-Betta'),
            ('D', 'Malwa Rift')
           ) as v(label, option_text)
 where q.question_hash = 'd54a3f815666e28d0be5c24a9a8664eb'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which of the following rivers flows through the Rann of Kutch?',
    'The Saraswati flows into the Rann of Kutch and also drains into the Arabian Sea through the Gulf of Kutch; the Narmada and Tapi reach the sea directly.',
    'medium',
    'Standard Reference',
    null,
    '77907391c6d24444110b6d4110cd5092'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '77907391c6d24444110b6d4110cd5092'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saraswati'),
            ('B', 'Narmada'),
            ('C', 'Tapti'),
            ('D', 'Mahanadi')
           ) as v(label, option_text)
 where q.question_hash = '77907391c6d24444110b6d4110cd5092'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Wular Lake, the largest freshwater lake in India, is located in which state?',
    'Wular Lake in the Kashmir Valley is the largest freshwater lake in India and is fed by the Jhelum River.',
    'easy',
    'NCERT Class XI',
    null,
    'b8faa90e307685d12f4f8450fdebcbcb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b8faa90e307685d12f4f8450fdebcbcb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bihar'),
            ('B', 'Jammu and Kashmir'),
            ('C', 'Uttarakhand'),
            ('D', 'Assam')
           ) as v(label, option_text)
 where q.question_hash = 'b8faa90e307685d12f4f8450fdebcbcb'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Loktak Lake, known for its floating national park, is in which state?',
    'Loktak Lake in Manipur hosts Keibul Lamjao, the world''s only floating national park, on its southern-eastern fringes.',
    'medium',
    'Standard Reference',
    null,
    '31edaa04fe1f69cb2e6783558b553477'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '31edaa04fe1f69cb2e6783558b553477'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mizoram'),
            ('B', 'Tripura'),
            ('C', 'Nagaland'),
            ('D', 'Manipur')
           ) as v(label, option_text)
 where q.question_hash = '31edaa04fe1f69cb2e6783558b553477'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Bhakra Nangal Dam is built across which river?',
    'Bhakra Nangal, India''s highest gravity dam, is built on the Sutlej and forms the Gobind Sagar Lake in Punjab and Himachal Pradesh.',
    'easy',
    'NCERT Class XI',
    null,
    '2413912ce471483738eb2e46e6cb740f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2413912ce471483738eb2e46e6cb740f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chenab'),
            ('B', 'Ravi'),
            ('C', 'Sutlej'),
            ('D', 'Beas')
           ) as v(label, option_text)
 where q.question_hash = '2413912ce471483738eb2e46e6cb740f'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Anamudi, the highest peak of peninsular India, is located in which state?',
    'Anamudi (2,695 m) is in the Palni hills of Kerala, near the Kerala-Tamil Nadu border, within the Western Ghats.',
    'medium',
    'Standard Reference',
    null,
    'a88aab4c7d92ee2dd2f81c7212374096'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a88aab4c7d92ee2dd2f81c7212374096'
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
 where q.question_hash = 'a88aab4c7d92ee2dd2f81c7212374096'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'Which is the largest lake of India by surface area?',
    'Vembanad Lake in Kerala is the largest lake in India by surface area, and the Chilika Lake in Odisha is the largest brackish water lagoon.',
    'medium',
    'Standard Reference',
    null,
    '09c9a56722d7edf80886d50c09cc689b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '09c9a56722d7edf80886d50c09cc689b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chilika Lake'),
            ('B', 'Vembanad Lake'),
            ('C', 'Sambhar Lake'),
            ('D', 'Pulicat Lake')
           ) as v(label, option_text)
 where q.question_hash = '09c9a56722d7edf80886d50c09cc689b'
on conflict (question_id, label) do nothing;

-- geography | rivers-and-lakes | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'rivers-and-lakes'),
    'The Hirakud Dam is built on which river?',
    'The Hirakud Dam across the Mahanadi in Odisha is one of the longest earthen dams in India, built in the Mahanadi valley after the 1936 floods.',
    'easy',
    'Standard Reference',
    null,
    '043198e6b88f60217856e56da128170f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '043198e6b88f60217856e56da128170f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Godavari'),
            ('B', 'Tungabhadra'),
            ('C', 'Mahanadi'),
            ('D', 'Damodar')
           ) as v(label, option_text)
 where q.question_hash = '043198e6b88f60217856e56da128170f'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which of the following statements about the Western Disturbances is correct?',
    'Western disturbances are extratropical cyclones originating over the Mediterranean region that bring winter rain to the north-western plains and the Western Ghats.',
    'medium',
    'NCERT Class XI',
    null,
    'e218a4ec67f13483a973604cb3229925'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e218a4ec67f13483a973604cb3229925'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They originate over the Mediterranean Sea'),
            ('B', 'They originate over the Bay of Bengal'),
            ('C', 'They are easterly winds from the Arabian Sea'),
            ('D', 'They are responsible for the monsoon rains of the west coast')
           ) as v(label, option_text)
 where q.question_hash = 'e218a4ec67f13483a973604cb3229925'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'El Nino is associated with which of the following phenomena?',
    'El Nino is the anomalous warming of the central and eastern equatorial Pacific, which weakens the Walker circulation and often suppresses the Indian monsoon.',
    'medium',
    'NCERT Class XI',
    null,
    '08912e88a42fdc6e13331ce8222d8050'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '08912e88a42fdc6e13331ce8222d8050'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rise in the frequency of Indian cyclones'),
            ('B', 'Increase in the intensity of the southwest monsoon'),
            ('C', 'Warming of the central and eastern Pacific Ocean'),
            ('D', 'Cooling of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '08912e88a42fdc6e13331ce8222d8050'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The temperature inversion in the atmosphere occurs most commonly during which season and time?',
    'On clear winter nights, the ground cools rapidly and radiates heat away, so the air near the surface becomes colder than the air above, producing a temperature inversion.',
    'medium',
    'NCERT Class XI',
    null,
    'f1aadacf0b8f2e6b725509e7ba3f6c2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f1aadacf0b8f2e6b725509e7ba3f6c2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Monsoon afternoons'),
            ('B', 'Pre-dawn summer mornings'),
            ('C', 'Summer noon'),
            ('D', 'Winter nights')
           ) as v(label, option_text)
 where q.question_hash = 'f1aadacf0b8f2e6b725509e7ba3f6c2e'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which wind is a hot, dry summer wind of the Sahara that blows towards the Mediterranean?',
    'The Sirocco is a hot, dry, dust-laden wind that blows from the Sahara across the Mediterranean towards Italy, while the Khamsin is its Egyptian counterpart.',
    'hard',
    'Standard Reference',
    null,
    'c7b8ee78556f7e31b6d71baa5e335acf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7b8ee78556f7e31b6d71baa5e335acf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mistral'),
            ('B', 'Sirocco'),
            ('C', 'Chinook'),
            ('D', 'Khamsin')
           ) as v(label, option_text)
 where q.question_hash = 'c7b8ee78556f7e31b6d71baa5e335acf'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which type of rainfall occurs when air is forced to rise over a mountain barrier?',
    'Orographic (relief) rainfall occurs when moist air is forced to ascend a mountain, cooling and condensing on the windward slope.',
    'easy',
    'NCERT Class XI',
    null,
    'c6a58516c5003253fd5e18b2c7b7468a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6a58516c5003253fd5e18b2c7b7468a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Orographic rainfall'),
            ('B', 'Cyclonic rainfall'),
            ('C', 'Frontal rainfall'),
            ('D', 'Convectional rainfall')
           ) as v(label, option_text)
 where q.question_hash = 'c6a58516c5003253fd5e18b2c7b7468a'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Koppen climate classification system divides the world climate into how many major groups?',
    'Koppen''s system recognises five major groups — tropical, dry, temperate, continental and polar — each divided into further subgroups.',
    'hard',
    'Standard Reference',
    null,
    'e2d5614682f64019ee452a22c16e059d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e2d5614682f64019ee452a22c16e059d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Five'),
            ('C', 'Six'),
            ('D', 'Three')
           ) as v(label, option_text)
 where q.question_hash = 'e2d5614682f64019ee452a22c16e059d'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which is the climatic type of most of the north-western India under the Koppen system?',
    'Most of the north-western India, including the Thar Desert, has a hot arid (BWh) climate under the Koppen system.',
    'hard',
    'Standard Reference',
    null,
    '09fbfa48716e1337f984712cb7aaba7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '09fbfa48716e1337f984712cb7aaba7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cwa'),
            ('B', 'Am'),
            ('C', 'BWh'),
            ('D', 'Aw')
           ) as v(label, option_text)
 where q.question_hash = '09fbfa48716e1337f984712cb7aaba7b'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which current flows northward along the eastern coast of South America?',
    'The warm Brazil Current flows southward along the eastern coast of South America; the cold Peru or Humboldt Current flows northward along the west coast.',
    'medium',
    'NCERT Class XI',
    null,
    '155169354726d847cb3a9b5dd99609ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '155169354726d847cb3a9b5dd99609ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brazil Current'),
            ('B', 'Benguela Current'),
            ('C', 'Agulhas Current'),
            ('D', 'Peru Current')
           ) as v(label, option_text)
 where q.question_hash = '155169354726d847cb3a9b5dd99609ee'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'What is the average salinity of the ocean water?',
    'The average salinity of the oceans is about 35 parts per thousand, with higher values in the Red Sea (over 40 ppt) and the lowest in the Baltic Sea (under 10 ppt).',
    'easy',
    'NCERT Class XI',
    null,
    '2cbba295d086b75f8b4831cee11a9b31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cbba295d086b75f8b4831cee11a9b31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '50 parts per thousand'),
            ('B', '5 parts per thousand'),
            ('C', '10 parts per thousand'),
            ('D', '35 parts per thousand')
           ) as v(label, option_text)
 where q.question_hash = '2cbba295d086b75f8b4831cee11a9b31'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which ocean current is responsible for the cold climate of the north-west European coast?',
    'The cold Labrador Current flows along the north-eastern coast of North America and contributes to the cool climate of north-west Europe.',
    'medium',
    'Standard Reference',
    null,
    '4a9054c5bcdd3ce3a7083d1c4cc05b82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4a9054c5bcdd3ce3a7083d1c4cc05b82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gulf Stream'),
            ('B', 'Kuroshio'),
            ('C', 'Labrador Current'),
            ('D', 'California Current')
           ) as v(label, option_text)
 where q.question_hash = '4a9054c5bcdd3ce3a7083d1c4cc05b82'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The deepest point of the ocean is located in which trench?',
    'The Mariana Trench in the western Pacific contains the Challenger Deep, the deepest known point of the ocean floor at over 11,000 metres.',
    'easy',
    'Standard Reference',
    null,
    'd735348a817ec48271b1b14c0a3b95ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd735348a817ec48271b1b14c0a3b95ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tonga Trench'),
            ('B', 'Mariana Trench'),
            ('C', 'Philippine Trench'),
            ('D', 'Java Trench')
           ) as v(label, option_text)
 where q.question_hash = 'd735348a817ec48271b1b14c0a3b95ec'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following is a warm current of the North Atlantic?',
    'The North Atlantic Drift is the warm extension of the Gulf Stream that keeps the north-west European coast ice-free in winter.',
    'medium',
    'Standard Reference',
    null,
    'f8beaf393ce1e2f68122dee1dfe6ae15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f8beaf393ce1e2f68122dee1dfe6ae15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'East Greenland Current'),
            ('B', 'Labrador Current'),
            ('C', 'Canary Current'),
            ('D', 'North Atlantic Drift')
           ) as v(label, option_text)
 where q.question_hash = 'f8beaf393ce1e2f68122dee1dfe6ae15'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Mid-ocean ridges are best described as:',
    'Mid-ocean ridges are divergent plate boundaries where magma rises and new oceanic crust is created, later pushed away from the ridge axis.',
    'medium',
    'Standard Reference',
    null,
    '3d329ce21c3e7dbb5c038f1376832ad7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3d329ce21c3e7dbb5c038f1376832ad7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zones of new crust formation'),
            ('B', 'Zones of deep oceanic trenches'),
            ('C', 'Ancient fold mountains'),
            ('D', 'Submarine trenches')
           ) as v(label, option_text)
 where q.question_hash = '3d329ce21c3e7dbb5c038f1376832ad7'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following statements about the United Nations Convention on the Law of the Sea is correct?',
    'UNCLOS was adopted in 1982 and entered into force in 1994; it provides a 200-nautical-mile exclusive economic zone and regulates deep-sea mining through the International Seabed Authority.',
    'hard',
    'Standard Reference',
    null,
    '1079f431f591b327b7fc84f02ab61646'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1079f431f591b327b7fc84f02ab61646'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was adopted in 1982 and came into force in 1994'),
            ('B', 'It allows a country to mine the deep seabed without limits'),
            ('C', 'It provides for an exclusive economic zone of 200 nautical miles'),
            ('D', 'It gives coastal states sovereignty over the continental shelf beyond 200 nautical miles')
           ) as v(label, option_text)
 where q.question_hash = '1079f431f591b327b7fc84f02ab61646'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Sahara, the largest hot desert in the world, is located mainly in which part of Africa?',
    'The Sahara spans the northern part of Africa from the Atlantic coast to the Red Sea across more than a dozen countries.',
    'easy',
    'NCERT Class XI',
    null,
    '42f5c2532a7ac766fa43bf444ea8789e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '42f5c2532a7ac766fa43bf444ea8789e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central Africa'),
            ('B', 'East Africa'),
            ('C', 'Southern Africa'),
            ('D', 'Northern Africa')
           ) as v(label, option_text)
 where q.question_hash = '42f5c2532a7ac766fa43bf444ea8789e'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Gobi Desert is located primarily in which region?',
    'The Gobi lies in the drylands of Mongolia and northern China, forming part of the arid zone of Inner Asia.',
    'medium',
    'Standard Reference',
    null,
    '076f1a9c5cc205390865023fb1835de0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '076f1a9c5cc205390865023fb1835de0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central America'),
            ('B', 'Southern Africa'),
            ('C', 'Inner Asia'),
            ('D', 'Arabian Peninsula')
           ) as v(label, option_text)
 where q.question_hash = '076f1a9c5cc205390865023fb1835de0'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which strait separates Spain from Morocco?',
    'The Strait of Gibraltar, about 13 km wide at its narrowest, connects the Atlantic Ocean with the Mediterranean Sea and separates Spain from Morocco.',
    'easy',
    'Standard Reference',
    null,
    '7b272df6d403af2fedd03c96351b754f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b272df6d403af2fedd03c96351b754f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bab-el-Mandeb'),
            ('B', 'Gibraltar'),
            ('C', 'Bering Strait'),
            ('D', 'Strait of Hormuz')
           ) as v(label, option_text)
 where q.question_hash = '7b272df6d403af2fedd03c96351b754f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Strait of Hormuz connects the Persian Gulf with which sea/ocean?',
    'The Strait of Hormuz links the Persian Gulf with the Gulf of Oman and the Arabian Sea, and carries a large share of the world''s oil shipments.',
    'medium',
    'Standard Reference',
    null,
    '23b3311ff0b542f9cdb1f09b295205e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '23b3311ff0b542f9cdb1f09b295205e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arabian Sea'),
            ('B', 'Bay of Bengal'),
            ('C', 'Mediterranean Sea'),
            ('D', 'Red Sea')
           ) as v(label, option_text)
 where q.question_hash = '23b3311ff0b542f9cdb1f09b295205e7'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest island in the world?',
    'Greenland is the largest island in the world, while Australia is the largest continent and New Guinea the largest island in the tropical zone.',
    'easy',
    'Standard Reference',
    null,
    'b36c2d945a8cbb7291eeef717cd324d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b36c2d945a8cbb7291eeef717cd324d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Borneo'),
            ('B', 'Madagascar'),
            ('C', 'Greenland'),
            ('D', 'New Guinea')
           ) as v(label, option_text)
 where q.question_hash = 'b36c2d945a8cbb7291eeef717cd324d6'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Amazon River discharges into which ocean?',
    'The Amazon empties into the Atlantic Ocean through a broad estuary in northern Brazil.',
    'easy',
    'Standard Reference',
    null,
    '7f7dfcb6e5da4620d16efbeaa96d9b0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7f7dfcb6e5da4620d16efbeaa96d9b0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indian Ocean'),
            ('B', 'Arctic Ocean'),
            ('C', 'Pacific Ocean'),
            ('D', 'Atlantic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '7f7dfcb6e5da4620d16efbeaa96d9b0f'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which mountain range separates Europe from Asia?',
    'The Ural Mountains form the conventional boundary between Europe and Asia, running north-south through western Russia.',
    'easy',
    'NCERT Class XI',
    null,
    '51cb418d3e01df5886c546b69629af22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '51cb418d3e01df5886c546b69629af22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alps'),
            ('B', 'Ural Mountains'),
            ('C', 'Caucasus Mountains'),
            ('D', 'Carpathians')
           ) as v(label, option_text)
 where q.question_hash = '51cb418d3e01df5886c546b69629af22'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest country in South America by area?',
    'Brazil is the largest country in South America, covering about half the continent''s land area.',
    'easy',
    'Standard Reference',
    null,
    '9ea80bc11d1260197baefab220e92493'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9ea80bc11d1260197baefab220e92493'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Colombia'),
            ('B', 'Argentina'),
            ('C', 'Brazil'),
            ('D', 'Peru')
           ) as v(label, option_text)
 where q.question_hash = '9ea80bc11d1260197baefab220e92493'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which two countries share the longest international border in the world?',
    'The Canada-USA border, running along the 49th parallel, is about 8,890 km long and is the longest international border in the world.',
    'medium',
    'Standard Reference',
    null,
    '99a0a6329d4a5eab153c92112c5aecda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '99a0a6329d4a5eab153c92112c5aecda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'USA and Mexico'),
            ('B', 'Canada and USA'),
            ('C', 'Russia and China'),
            ('D', 'India and Bangladesh')
           ) as v(label, option_text)
 where q.question_hash = '99a0a6329d4a5eab153c92112c5aecda'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following countries is located in the Southern Hemisphere only?',
    'New Zealand lies entirely in the Southern Hemisphere; Indonesia straddles the equator, while Nepal and Sri Lanka are entirely in the Northern Hemisphere.',
    'medium',
    'Standard Reference',
    null,
    '85d55b293692fa6fb10596cac6748c38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '85d55b293692fa6fb10596cac6748c38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Zealand'),
            ('B', 'Sri Lanka'),
            ('C', 'Indonesia'),
            ('D', 'Nepal')
           ) as v(label, option_text)
 where q.question_hash = '85d55b293692fa6fb10596cac6748c38'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which of the following Indian states has the longest coastline?',
    'Gujarat, with about 1,600 km of coastline including its numerous inlets, has the longest coastline among Indian states.',
    'medium',
    'NCERT Class XI',
    null,
    '832731bfc3d398a17984bd43686cd9e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '832731bfc3d398a17984bd43686cd9e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Maharashtra'),
            ('C', 'Tamil Nadu'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '832731bfc3d398a17984bd43686cd9e4'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The highest point of the Indian Ocean island of Kanyakumari is the Vivekananda Rock Memorial. The southernmost point of mainland India is:',
    'Kanyakumari in Tamil Nadu is the southernmost point of the Indian mainland, while Indira Point in the Andaman and Nicobar Islands is the southernmost point of the Indian union.',
    'medium',
    'Standard Reference',
    null,
    'b374c29205243208dcff553a94da99f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b374c29205243208dcff553a94da99f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rameswaram'),
            ('B', 'Dhanushkodi'),
            ('C', 'Indira Point'),
            ('D', 'Kanyakumari')
           ) as v(label, option_text)
 where q.question_hash = 'b374c29205243208dcff553a94da99f0'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which state of India has the highest population density as per Census 2011?',
    'Bihar recorded the highest population density in Census 2011 at over 1,100 persons per square kilometre, ahead of Uttar Pradesh and West Bengal.',
    'medium',
    'Standard Reference',
    null,
    'd2ec0bd94329f52d541b70166ee268de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd2ec0bd94329f52d541b70166ee268de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bihar'),
            ('B', 'West Bengal'),
            ('C', 'Kerala'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'd2ec0bd94329f52d541b70166ee268de'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The Tropic of Cancer passes through which of the following Indian cities?',
    'Ranchi in Jharkhand lies close to the Tropic of Cancer, which also crosses the state at places such as Gumla and Chatra.',
    'hard',
    'Standard Reference',
    null,
    'f52ebc670e5a3d0be967c71a2c5f1cec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f52ebc670e5a3d0be967c71a2c5f1cec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jaipur'),
            ('B', 'Varanasi'),
            ('C', 'Ranchi'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = 'f52ebc670e5a3d0be967c71a2c5f1cec'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Indian state has the greatest length of the coastline along the Bay of Bengal?',
    'Andhra Pradesh has the longest coastline on the Bay of Bengal, followed by Tamil Nadu and Odisha.',
    'medium',
    'Standard Reference',
    null,
    'bfcbcf476fc5c87a309feea123ac96bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bfcbcf476fc5c87a309feea123ac96bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Odisha'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'bfcbcf476fc5c87a309feea123ac96bb'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which state of India borders the maximum number of other states?',
    'Uttar Pradesh shares a boundary with nine states and one union territory, the largest number of neighbours of any Indian state.',
    'medium',
    'Standard Reference',
    null,
    '6aa152722c431d5bfc12d01820aebb32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6aa152722c431d5bfc12d01820aebb32'
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
 where q.question_hash = '6aa152722c431d5bfc12d01820aebb32'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'India''s largest coal producing state is:',
    'Chhattisgarh is the largest coal producing state, supported by the massive reserves of the Gondwana coalfields.',
    'medium',
    'NCERT Class XI',
    null,
    '5cd7a7b22aa34bb24863e8bbaea9336a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5cd7a7b22aa34bb24863e8bbaea9336a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Jharkhand'),
            ('C', 'Chhattisgarh'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = '5cd7a7b22aa34bb24863e8bbaea9336a'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'Which state of India is the largest producer of mica?',
    'Rajasthan, with rich deposits around Bhilwara and Udaipur, is the leading producer of mica in India.',
    'medium',
    'NCERT Class XI',
    null,
    'c3533b3b61df6ab943acd0c61019b739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c3533b3b61df6ab943acd0c61019b739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jharkhand'),
            ('B', 'Rajasthan'),
            ('C', 'Odisha'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'c3533b3b61df6ab943acd0c61019b739'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'India''s largest bauxite producing state is:',
    'Odisha, with the extensive deposits in the Amarkantak plateau and the Koraput hills, is the largest producer of bauxite in India.',
    'medium',
    'NCERT Class XI',
    null,
    'e3ab27de180f46b1d15841b76c585fb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e3ab27de180f46b1d15841b76c585fb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Maharashtra'),
            ('C', 'Karnataka'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'e3ab27de180f46b1d15841b76c585fb3'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'Which is the only Indian state with a significant uranium deposit?',
    'Andhra Pradesh, in the Nallamala and Khammam regions, accounts for practically all of India''s uranium production, which is largely used in nuclear fuel cycles.',
    'hard',
    'Standard Reference',
    null,
    '1ec9cd7be8a6512eb924d7c46948b328'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ec9cd7be8a6512eb924d7c46948b328'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meghalaya'),
            ('B', 'Jharkhand'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '1ec9cd7be8a6512eb924d7c46948b328'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'Which mineral is known as ''black gold''?',
    'Petroleum is called black gold because of its economic value and its dark colour; coal is often called the ''black gold'' of the industrial world as well.',
    'easy',
    'Standard Reference',
    null,
    '939552e277bae19587a9a67cea6d3e14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '939552e277bae19587a9a67cea6d3e14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manganese'),
            ('B', 'Coal'),
            ('C', 'Petroleum'),
            ('D', 'Iron ore')
           ) as v(label, option_text)
 where q.question_hash = '939552e277bae19587a9a67cea6d3e14'
on conflict (question_id, label) do nothing;

-- geography | resources-and-minerals | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'resources-and-minerals'),
    'Iron ore is mainly exported from India through which major port?',
    'Mundra, in Gujarat, along with Paradip and Vizag, is one of the main loading points for Indian iron ore exports.',
    'hard',
    'Standard Reference',
    null,
    '9564227246b457dcf609ef41a6f13c02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9564227246b457dcf609ef41a6f13c02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mangalore'),
            ('B', 'Mundra'),
            ('C', 'Haldia'),
            ('D', 'Paradip')
           ) as v(label, option_text)
 where q.question_hash = '9564227246b457dcf609ef41a6f13c02'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is a rabi crop in India?',
    'Wheat is the principal rabi crop, sown in winter and harvested in summer; rice, cotton and millets are kharif crops.',
    'easy',
    'NCERT Class XI',
    null,
    '25ebc674d1111503f2070a01c323dbe0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '25ebc674d1111503f2070a01c323dbe0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wheat'),
            ('B', 'Millets'),
            ('C', 'Rice'),
            ('D', 'Cotton')
           ) as v(label, option_text)
 where q.question_hash = '25ebc674d1111503f2070a01c323dbe0'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which crop is known as the ''brown gold'' of India?',
    'Rice, with about a quarter of the world''s production, is referred to as the brown gold of India because of its economic importance.',
    'medium',
    'Standard Reference',
    null,
    '517c7621ed75cad93ff799f8ed1eded0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '517c7621ed75cad93ff799f8ed1eded0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tea'),
            ('B', 'Wheat'),
            ('C', 'Rice'),
            ('D', 'Coffee')
           ) as v(label, option_text)
 where q.question_hash = '517c7621ed75cad93ff799f8ed1eded0'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The White Revolution in India was associated with which crop?',
    'The White Revolution, led by Dr Verghese Kurien through the National Dairy Development Board, made India the world''s largest producer of milk.',
    'easy',
    'NCERT Class XI',
    null,
    'b10ec3d43e2f6884b0eaf1d40b256139'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b10ec3d43e2f6884b0eaf1d40b256139'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sugarcane'),
            ('B', 'Milk'),
            ('C', 'Wheat'),
            ('D', 'Oilseeds')
           ) as v(label, option_text)
 where q.question_hash = 'b10ec3d43e2f6884b0eaf1d40b256139'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which Indian state is the largest producer of sugarcane?',
    'Uttar Pradesh has the largest area and production of sugarcane in India, with Maharashtra and Karnataka following.',
    'medium',
    'NCERT Class XI',
    null,
    '7ac04c77fac9d132da2ae40db6cf9536'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7ac04c77fac9d132da2ae40db6cf9536'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Karnataka'),
            ('C', 'Tamil Nadu'),
            ('D', 'Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '7ac04c77fac9d132da2ae40db6cf9536'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Jute is primarily grown in which region of India?',
    'Jute, called the golden fibre, is grown mainly in West Bengal, Bihar, Assam, Odisha and Andhra Pradesh along the Ganga delta and the Brahmaputra valley.',
    'easy',
    'NCERT Class XI',
    null,
    '52218a45479c4d45701676456bec684c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '52218a45479c4d45701676456bec684c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deccan Plateau'),
            ('B', 'Thar Desert'),
            ('C', 'Western coastal plain'),
            ('D', 'Gangetic delta and northeast')
           ) as v(label, option_text)
 where q.question_hash = '52218a45479c4d45701676456bec684c'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of tea in India?',
    'Assam is the largest tea producing state in India, followed by West Bengal, Tamil Nadu, Kerala and Karnataka.',
    'medium',
    'NCERT Class XI',
    null,
    'e07a9ba8bc693e677fb11d20e1d62eb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e07a9ba8bc693e677fb11d20e1d62eb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'Tamil Nadu'),
            ('C', 'Karnataka'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'e07a9ba8bc693e677fb11d20e1d62eb3'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Shifting cultivation in north-eastern India is locally known as:',
    'Jhum or shifting cultivation is practised on the slopes of the north-eastern hills, where plots are cleared and cultivated for a few years and then left fallow.',
    'medium',
    'NCERT Class XI',
    null,
    '123d8930b6ddfec3b056857a517c6d94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '123d8930b6ddfec3b056857a517c6d94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bera'),
            ('B', 'Podu'),
            ('C', 'Jhum'),
            ('D', 'Kyar')
           ) as v(label, option_text)
 where q.question_hash = '123d8930b6ddfec3b056857a517c6d94'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which one is a rabi crop of the Indian cropping season?',
    'Mustard is a rabi oilseed sown in winter, while groundnut, cotton and pearl millet are kharif crops.',
    'medium',
    'NCERT Class XI',
    null,
    'f30450d973315e565ecbc00afd571d3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f30450d973315e565ecbc00afd571d3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Groundnut'),
            ('B', 'Mustard'),
            ('C', 'Cotton'),
            ('D', 'Pearl millet')
           ) as v(label, option_text)
 where q.question_hash = 'f30450d973315e565ecbc00afd571d3c'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which of the following is the most populous state of India as per Census 2011?',
    'Uttar Pradesh remained the most populous state in Census 2011 with about 199 million people, followed by Maharashtra.',
    'easy',
    'Standard Reference',
    null,
    '78e566950ddcfa0eb17153171762eb06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '78e566950ddcfa0eb17153171762eb06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal'),
            ('B', 'Tamil Nadu'),
            ('C', 'Maharashtra'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '78e566950ddcfa0eb17153171762eb06'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The highest sex ratio (females per 1000 males) as per Census 2011 was recorded in which state?',
    'Kerala recorded the highest sex ratio of 1,084 females per 1,000 males in Census 2011, ahead of Puducherry and Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    '2b64e3ead5a53b884cad85d171082e99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b64e3ead5a53b884cad85d171082e99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Chhattisgarh'),
            ('C', 'Tamil Nadu'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '2b64e3ead5a53b884cad85d171082e99'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which state of India has the highest literacy rate as per Census 2011?',
    'Kerala had the highest literacy rate in Census 2011 at about 94 per cent, closely followed by Lakshadweep and Mizoram.',
    'easy',
    'Standard Reference',
    null,
    'e9f5f26dd198440025172ccbe47b6b43'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9f5f26dd198440025172ccbe47b6b43'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mizoram'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Goa')
           ) as v(label, option_text)
 where q.question_hash = 'e9f5f26dd198440025172ccbe47b6b43'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which of the following states recorded the largest decline in population in Census 2011?',
    'Andhra Pradesh recorded the sharpest fall in population in Census 2011 because Telangana was carved out of it before the census.',
    'medium',
    'Standard Reference',
    null,
    '034835f377de3eaacdf0404d2998c9aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '034835f377de3eaacdf0404d2998c9aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andhra Pradesh'),
            ('B', 'Bihar'),
            ('C', 'Maharashtra'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '034835f377de3eaacdf0404d2998c9aa'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The largest metropolitan city in India by population is:',
    'Delhi has overtaken Mumbai as the largest metropolitan area in India, though Mumbai remains the most populous city proper in many estimates.',
    'hard',
    'Standard Reference',
    null,
    '2d9b3224a883f694fde56f4bc385fce9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2d9b3224a883f694fde56f4bc385fce9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Mumbai'),
            ('C', 'Delhi'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '2d9b3224a883f694fde56f4bc385fce9'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which of the following is the largest urban agglomeration in India according to Census 2011?',
    'Delhi was the largest urban agglomeration in Census 2011 with about 28 million people, ahead of Mumbai.',
    'medium',
    'Standard Reference',
    null,
    'e762fefac23da7e1b14d84289b9a7fc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e762fefac23da7e1b14d84289b9a7fc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Mumbai'),
            ('C', 'Delhi'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = 'e762fefac23da7e1b14d84289b9a7fc2'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which institution carries out the decennial census of India?',
    'The Office of the Registrar General and Census Commissioner, under the Ministry of Home Affairs, conducts the census, which was last held in 2011.',
    'easy',
    'Standard Reference',
    null,
    'cfc1cb60d0472934ef796c91716064cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cfc1cb60d0472934ef796c91716064cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Finance Commission'),
            ('B', 'Planning Commission'),
            ('C', 'NITI Aayog'),
            ('D', 'Office of the Registrar General and Census Commissioner')
           ) as v(label, option_text)
 where q.question_hash = 'cfc1cb60d0472934ef796c91716064cf'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The National Disaster Management Authority is chaired by:',
    'The NDMA is chaired by the Prime Minister under the National Disaster Management Act, 2005, with the National Executive Committee also chaired by the Prime Minister.',
    'medium',
    'Standard Reference',
    null,
    'b028e2780813ece7f8b749a2dc3222d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b028e2780813ece7f8b749a2dc3222d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Justice of India'),
            ('B', 'The Prime Minister'),
            ('C', 'The President'),
            ('D', 'The Home Minister')
           ) as v(label, option_text)
 where q.question_hash = 'b028e2780813ece7f8b749a2dc3222d4'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The National Response Force is a body of which organisation?',
    'The NDRF is a specialised force of the SDRF set up for rescue and relief operations during disasters, and it is controlled by the state disaster management authorities.',
    'medium',
    'Standard Reference',
    null,
    'd3df9de23262968fada8de41dababd7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd3df9de23262968fada8de41dababd7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State Disaster Management Authorities'),
            ('B', 'Central Bureau of Investigation'),
            ('C', 'Indian Coast Guard'),
            ('D', 'National Security Council')
           ) as v(label, option_text)
 where q.question_hash = 'd3df9de23262968fada8de41dababd7e'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Which international framework guiding disaster risk reduction was adopted in 2015?',
    'The Sendai Framework for Disaster Risk Reduction 2015-2030, adopted in Sendai, Japan, replaced the Hyogo Framework and prioritises risk understanding, preparedness, response and recovery.',
    'easy',
    'Standard Reference',
    null,
    '8c5b23e5c7ac124db7c0dc857790b6e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8c5b23e5c7ac124db7c0dc857790b6e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sahel Framework'),
            ('B', 'Madrid Framework'),
            ('C', 'Hyogo Framework'),
            ('D', 'Sendai Framework')
           ) as v(label, option_text)
 where q.question_hash = '8c5b23e5c7ac124db7c0dc857790b6e6'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The National Disaster Management Act was enacted in which year?',
    'The National Disaster Management Act, 2005 created the NDMA, SDMAs, DDMA and NDRF and put the legal framework for disaster management in place.',
    'easy',
    'Standard Reference',
    null,
    '9546c0dcc07ce00f3e1befb23e17d68c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9546c0dcc07ce00f3e1befb23e17d68c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '2005'),
            ('C', '2010'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '9546c0dcc07ce00f3e1befb23e17d68c'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'Which Indian state was severely affected by the 2004 Indian Ocean tsunami?',
    'Tamil Nadu and the Andaman and Nicobar Islands bore the brunt of the December 2004 tsunami in India.',
    'medium',
    'Standard Reference',
    null,
    'a1c1e5a4437be70787e6fcc4e82865db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a1c1e5a4437be70787e6fcc4e82865db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu and the Andaman and Nicobar Islands'),
            ('B', 'Kerala and Karnataka'),
            ('C', 'West Bengal and Odisha'),
            ('D', 'Tamil Nadu only')
           ) as v(label, option_text)
 where q.question_hash = 'a1c1e5a4437be70787e6fcc4e82865db'
on conflict (question_id, label) do nothing;

-- geography | disaster-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'disaster-management'),
    'The cyclone early warning centre for the Indian Ocean is located at:',
    'The Indian Institute of Tropical Meteorology''s cyclone warning centre at Hyderabad issues bulletins for the Bay of Bengal and the Arabian Sea, while the INCOIS at Hyderabad monitors the ocean.',
    'medium',
    'Standard Reference',
    null,
    '1e0651464ea6829ce8fd78341fa9c3bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1e0651464ea6829ce8fd78341fa9c3bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Port Blair'),
            ('C', 'Hyderabad'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = '1e0651464ea6829ce8fd78341fa9c3bf'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which is the largest producer of black soil in India?',
    'Madhya Pradesh, with black soil spread over more than half its area, is the largest producer of black cotton soil in India.',
    'medium',
    'NCERT Class XI',
    null,
    '82d2ef80efabc82cff4bcc0ffe8610cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82d2ef80efabc82cff4bcc0ffe8610cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Gujarat'),
            ('C', 'Maharashtra'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '82d2ef80efabc82cff4bcc0ffe8610cc'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Black soil is also known as regur soil. Which of the following crops does it best support?',
    'Black soil retains moisture and is self-ploughing, which makes it ideal for cotton, soybean, sugarcane and pulses.',
    'easy',
    'NCERT Class XI',
    null,
    '67ee30aded093700e57cc293f7fd0b72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '67ee30aded093700e57cc293f7fd0b72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rubber'),
            ('B', 'Rice'),
            ('C', 'Cotton'),
            ('D', 'Tea')
           ) as v(label, option_text)
 where q.question_hash = '67ee30aded093700e57cc293f7fd0b72'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Laterite soil is chiefly found in which part of India?',
    'Laterite soil occurs in areas of heavy rainfall and high temperature, notably the Western Ghats, the northeastern hills and parts of the east coast.',
    'medium',
    'NCERT Class XI',
    null,
    'cf893ae9d8e14fe55bcb2f4ffed9b4c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf893ae9d8e14fe55bcb2f4ffed9b4c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Northern plains'),
            ('B', 'Western Ghats and parts of the east coast'),
            ('C', 'Thar Desert'),
            ('D', 'Himalayan foothills')
           ) as v(label, option_text)
 where q.question_hash = 'cf893ae9d8e14fe55bcb2f4ffed9b4c0'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The saline soil of India is largely found in:',
    'Saline soil is common in arid and semi-arid regions and along the coastal tracts, including the Rann of Kutch and the Sundarbans.',
    'easy',
    'NCERT Class XI',
    null,
    '17cb188c65aa35f57f6dcba3c46764dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '17cb188c65aa35f57f6dcba3c46764dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Gangetic plain'),
            ('B', 'The Deccan Plateau'),
            ('C', 'The Himalayan valleys'),
            ('D', 'Coastal areas and arid regions')
           ) as v(label, option_text)
 where q.question_hash = '17cb188c65aa35f57f6dcba3c46764dc'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which type of forest is found in areas with rainfall between 100 and 200 cm in India?',
    'Tropical deciduous (monsoon) forests grow in areas receiving 70 to 200 cm of rainfall, while evergreen forests need more than 200 cm.',
    'medium',
    'NCERT Class XI',
    null,
    'ac31fe360aa7091265620a2190f03b19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ac31fe360aa7091265620a2190f03b19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Montane forests'),
            ('B', 'Tropical thorn forests'),
            ('C', 'Tropical evergreen forests'),
            ('D', 'Tropical deciduous forests')
           ) as v(label, option_text)
 where q.question_hash = 'ac31fe360aa7091265620a2190f03b19'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Mangroves are best developed along the:',
    'Mangroves tolerate saline water and tidal flooding, so they are characteristic of the Sundarbans and the deltas of the east coast rivers.',
    'easy',
    'NCERT Class XI',
    null,
    '29f80d69d1faf8f215f959fc27032b99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '29f80d69d1faf8f215f959fc27032b99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deccan rivers'),
            ('B', 'Western coast'),
            ('C', 'Eastern coast and the Sundarbans delta'),
            ('D', 'Himalayan foothills')
           ) as v(label, option_text)
 where q.question_hash = '29f80d69d1faf8f215f959fc27032b99'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Tropic of Cancer, the Equator and the Tropic of Capricorn divide the earth into how many climatic zones?',
    'The earth is divided into five climatic zones: the torrid, the north temperate, the south temperate, the frigid and the polar zones.',
    'medium',
    'Standard Reference',
    null,
    '33c7ef9d01b7236a0b23cc5eded906f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '33c7ef9d01b7236a0b23cc5eded906f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Five'),
            ('B', 'Seven'),
            ('C', 'Nine'),
            ('D', 'Three')
           ) as v(label, option_text)
 where q.question_hash = '33c7ef9d01b7236a0b23cc5eded906f7'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Which is the outermost layer of the Earth?',
    'The crust is the outermost and thinnest layer, the mantle lies below it, and the core forms the innermost part of the Earth.',
    'easy',
    'NCERT Class XI',
    null,
    '9b8d7f41fc96e95dac009cefc5e7d0b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b8d7f41fc96e95dac009cefc5e7d0b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mantle'),
            ('B', 'Crust'),
            ('C', 'Inner core'),
            ('D', 'Outer core')
           ) as v(label, option_text)
 where q.question_hash = '9b8d7f41fc96e95dac009cefc5e7d0b9'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Sial and Sima correspond to which layers of the Earth?',
    'Sial (silica and alumina) is the continental crust while Sima (silica and magnesium) makes up the oceanic crust and the upper mantle.',
    'hard',
    'Standard Reference',
    null,
    'dbe2cc8f4326a803d61e4fc17d75056b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dbe2cc8f4326a803d61e4fc17d75056b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inner core and outer core'),
            ('B', 'Crust and mantle'),
            ('C', 'Mantle and core'),
            ('D', 'Core and mantle')
           ) as v(label, option_text)
 where q.question_hash = 'dbe2cc8f4326a803d61e4fc17d75056b'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Moho discontinuity'' separates the:',
    'The Mohorovicic discontinuity, discovered by Andrija Mohorovicic, separates the crust from the mantle.',
    'medium',
    'NCERT Class XI',
    null,
    '1c153186110207908cc6ce2076fe3630'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1c153186110207908cc6ce2076fe3630'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mantle and core'),
            ('B', 'Outer core and inner core'),
            ('C', 'Lithosphere and asthenosphere'),
            ('D', 'Crust and mantle')
           ) as v(label, option_text)
 where q.question_hash = '1c153186110207908cc6ce2076fe3630'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The Gutenberg discontinuity lies between the:',
    'The Gutenberg discontinuity marks the boundary between the lower mantle and the outer core at a depth of about 2,900 km.',
    'hard',
    'Standard Reference',
    null,
    '24226b96ca91116f1275bb2d871a9765'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '24226b96ca91116f1275bb2d871a9765'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lithosphere and asthenosphere'),
            ('B', 'Crust and mantle'),
            ('C', 'Upper mantle and lower mantle'),
            ('D', 'Outer core and inner core')
           ) as v(label, option_text)
 where q.question_hash = '24226b96ca91116f1275bb2d871a9765'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'Which is the deepest point of the ocean floor?',
    'The Mariana Trench in the western Pacific, with the Challenger Deep at over 10,900 metres, is the deepest known part of the ocean floor.',
    'easy',
    'Standard Reference',
    null,
    '13bee7c88da14652a1a845753babad0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '13bee7c88da14652a1a845753babad0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mariana Trench'),
            ('B', 'Puerto Rico Trench'),
            ('C', 'Tonga Trench'),
            ('D', 'Philippine Trench')
           ) as v(label, option_text)
 where q.question_hash = '13bee7c88da14652a1a845753babad0f'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Ring of Fire'' is associated with:',
    'The Ring of Fire is the belt of active volcanoes and earthquake zones encircling the Pacific Ocean.',
    'easy',
    'Standard Reference',
    null,
    '91323a2ccf04c34600b8c94c35376add'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '91323a2ccf04c34600b8c94c35376add'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The great desert belt'),
            ('B', 'The belt of volcanoes around the Pacific Ocean'),
            ('C', 'The Coral Triangle'),
            ('D', 'The Mediterranean coast')
           ) as v(label, option_text)
 where q.question_hash = '91323a2ccf04c34600b8c94c35376add'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Great Dividing Range'' separates:',
    'The Great Dividing Range or the Eastern Highlands runs parallel to Australia''s east coast and separates the coastal plains from the interior basin.',
    'medium',
    'Standard Reference',
    null,
    '43f467809294b9b5bc1863e87b72916d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '43f467809294b9b5bc1863e87b72916d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eastern and western Australia'),
            ('B', 'The Pacific Ocean from the Indian Ocean'),
            ('C', 'China from Siberia'),
            ('D', 'Europe from Asia')
           ) as v(label, option_text)
 where q.question_hash = '43f467809294b9b5bc1863e87b72916d'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Caledonian'' mountains were formed in the:',
    'The Caledonian mountains formed in the Palaeozoic era and include the Scandinavian mountains and the Scottish Highlands.',
    'hard',
    'Standard Reference',
    null,
    '2f4698f6d9b2d93d73f7fdfdd706b48b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f4698f6d9b2d93d73f7fdfdd706b48b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cenozoic era'),
            ('B', 'Hercynian period'),
            ('C', 'Palaeozoic era'),
            ('D', 'Mesozoic era')
           ) as v(label, option_text)
 where q.question_hash = '2f4698f6d9b2d93d73f7fdfdd706b48b'
on conflict (question_id, label) do nothing;

-- geography | physical-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'physical-geography'),
    'The ''Alpine orogeny'' mainly affected which region?',
    'The Alpine orogeny formed the Alps, the Caucasus, the Atlas and the Himalayas during the Alpine or tertiary period.',
    'medium',
    'Standard Reference',
    null,
    '2e4ec4689472418d59ffc69bbe952af3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e4ec4689472418d59ffc69bbe952af3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Urals'),
            ('B', 'The Himalayas and Tibet'),
            ('C', 'The Appalachians'),
            ('D', 'Southern Europe and the Alps')
           ) as v(label, option_text)
 where q.question_hash = '2e4ec4689472418d59ffc69bbe952af3'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest island of the Mediterranean?',
    'Sicily, with an area of about 25,700 square kilometres, is the largest island in the Mediterranean Sea.',
    'medium',
    'Standard Reference',
    null,
    '59a9df5a7b4e701e0eaffd2073687a2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '59a9df5a7b4e701e0eaffd2073687a2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sardinia'),
            ('B', 'Crete'),
            ('C', 'Sicily'),
            ('D', 'Cyprus')
           ) as v(label, option_text)
 where q.question_hash = '59a9df5a7b4e701e0eaffd2073687a2c'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which river is the longest in South America?',
    'The Amazon is the largest river by discharge and the longest in South America, flowing about 6,400 kilometres into the Atlantic.',
    'easy',
    'Standard Reference',
    null,
    '309590eba2996bcbbde87ed9d4982d38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '309590eba2996bcbbde87ed9d4982d38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Magdalena'),
            ('B', 'Paraná'),
            ('C', 'Orinoco'),
            ('D', 'Amazon')
           ) as v(label, option_text)
 where q.question_hash = '309590eba2996bcbbde87ed9d4982d38'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which river drains the largest area in the world?',
    'The Amazon basin covers about 7 million square kilometres, the largest drainage basin in the world.',
    'medium',
    'Standard Reference',
    null,
    '89aee760a6a90d0716cf56803fcc7226'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89aee760a6a90d0716cf56803fcc7226'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nile'),
            ('B', 'Amazon'),
            ('C', 'Mississippi'),
            ('D', 'Yangtze')
           ) as v(label, option_text)
 where q.question_hash = '89aee760a6a90d0716cf56803fcc7226'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The Danube river flows into which sea?',
    'The Danube empties into the Black Sea through a large delta in Romania, after passing through ten countries.',
    'medium',
    'Standard Reference',
    null,
    '3ae080780b7159285c87e72139649447'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3ae080780b7159285c87e72139649447'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Black Sea'),
            ('B', 'Adriatic Sea'),
            ('C', 'Caspian Sea'),
            ('D', 'Baltic Sea')
           ) as v(label, option_text)
 where q.question_hash = '3ae080780b7159285c87e72139649447'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following is the world''s largest desert?',
    'The Sahara, at about 9.2 million square kilometres, is the largest hot desert, while the Antarctic desert is the largest desert overall.',
    'easy',
    'Standard Reference',
    null,
    '9f21564bd73288b5dd894f7c7ebddee3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9f21564bd73288b5dd894f7c7ebddee3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sahara Desert'),
            ('B', 'Gobi Desert'),
            ('C', 'Arabian Desert'),
            ('D', 'Thar Desert')
           ) as v(label, option_text)
 where q.question_hash = '9f21564bd73288b5dd894f7c7ebddee3'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Roof of the World'' is a description of:',
    'The Pamir mountains of Central Asia, known as the Roof of the World, contain several peaks above 7,000 metres.',
    'medium',
    'Standard Reference',
    null,
    '815cc23b69226a1294a1a52cc3180856'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '815cc23b69226a1294a1a52cc3180856'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Scandinavian mountains'),
            ('B', 'The Andes'),
            ('C', 'The Pamirs'),
            ('D', 'The Alps')
           ) as v(label, option_text)
 where q.question_hash = '815cc23b69226a1294a1a52cc3180856'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Land of the Midnight Sun'' refers to:',
    'Norway and Sweden, lying partly inside the Arctic Circle, are known as the land of the midnight sun in summer.',
    'medium',
    'Standard Reference',
    null,
    '15e496ad490d244794bd8cb4bc56307a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '15e496ad490d244794bd8cb4bc56307a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Iceland'),
            ('B', 'Finland'),
            ('C', 'Denmark'),
            ('D', 'Norway and Sweden')
           ) as v(label, option_text)
 where q.question_hash = '15e496ad490d244794bd8cb4bc56307a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which country has the longest coastline in the world?',
    'Canada has the longest coastline in the world, over 200,000 kilometres, because of its many islands.',
    'easy',
    'Standard Reference',
    null,
    'd9eea893ccaf1a4e8d00fe1a06118c37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd9eea893ccaf1a4e8d00fe1a06118c37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russia'),
            ('B', 'Canada'),
            ('C', 'Norway'),
            ('D', 'Indonesia')
           ) as v(label, option_text)
 where q.question_hash = 'd9eea893ccaf1a4e8d00fe1a06118c37'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Land of the Rising Sun'' is:',
    'Japan, the Land of the Rising Sun, is an archipelago of about 6,800 islands in East Asia.',
    'easy',
    'Standard Reference',
    null,
    '57b022ca278cb1b174587a77dd074a2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57b022ca278cb1b174587a77dd074a2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Japan'),
            ('B', 'Korea'),
            ('C', 'Thailand'),
            ('D', 'China')
           ) as v(label, option_text)
 where q.question_hash = '57b022ca278cb1b174587a77dd074a2a'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest country in the world by area?',
    'Russia, spanning eleven time zones, is the largest country in the world by area.',
    'easy',
    'Standard Reference',
    null,
    '11083df9d15049094f23f4ee4ded8dc0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '11083df9d15049094f23f4ee4ded8dc0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Canada'),
            ('B', 'Russia'),
            ('C', 'China'),
            ('D', 'United States')
           ) as v(label, option_text)
 where q.question_hash = '11083df9d15049094f23f4ee4ded8dc0'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the most populous country in the world as per recent estimates?',
    'India overtook China in 2023 to become the most populous country in the world.',
    'easy',
    'Standard Reference',
    null,
    'b7bd6ffa7b38ad48b5e9dfcc81754112'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7bd6ffa7b38ad48b5e9dfcc81754112'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China'),
            ('B', 'Indonesia'),
            ('C', 'USA'),
            ('D', 'India')
           ) as v(label, option_text)
 where q.question_hash = 'b7bd6ffa7b38ad48b5e9dfcc81754112'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which two countries share the longest land border between India and a neighbour?',
    'India and Pakistan share a border of about 3,323 kilometres, the longest between India and any neighbouring country.',
    'medium',
    'Standard Reference',
    null,
    'b9a79e920ffe02c081c7a116b4052dc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b9a79e920ffe02c081c7a116b4052dc6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India and Nepal'),
            ('B', 'India and China'),
            ('C', 'India and Pakistan'),
            ('D', 'India and Bangladesh')
           ) as v(label, option_text)
 where q.question_hash = 'b9a79e920ffe02c081c7a116b4052dc6'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the highest peak in Africa?',
    'Mount Kilimanjaro in Tanzania, at 5,895 metres, is the highest peak in Africa and the highest free-standing mountain in the world.',
    'easy',
    'Standard Reference',
    null,
    '211a1844beb9d0c2aba989aef02be5d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '211a1844beb9d0c2aba989aef02be5d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mount Kenya'),
            ('B', 'Mount Kilimanjaro'),
            ('C', 'Mount Elbrus'),
            ('D', 'Atlas Peak')
           ) as v(label, option_text)
 where q.question_hash = '211a1844beb9d0c2aba989aef02be5d4'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest island of Africa?',
    'Madagascar, in the Indian Ocean, is the largest island of Africa and the fourth largest in the world.',
    'medium',
    'Standard Reference',
    null,
    '00c927e94395f160b74fe04aaf0ef823'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '00c927e94395f160b74fe04aaf0ef823'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madagascar'),
            ('B', 'Zanzibar'),
            ('C', 'Mauritius'),
            ('D', 'Socotra')
           ) as v(label, option_text)
 where q.question_hash = '00c927e94395f160b74fe04aaf0ef823'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Pampas'' of Argentina are:',
    'The Pampas are the fertile grasslands of central Argentina, the country''s main agricultural region.',
    'medium',
    'Standard Reference',
    null,
    'ee0f8d40f52e94cd431d4c98a4f76467'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee0f8d40f52e94cd431d4c98a4f76467'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High plateaus'),
            ('B', 'Deserts'),
            ('C', 'Grasslands'),
            ('D', 'Floodplains')
           ) as v(label, option_text)
 where q.question_hash = 'ee0f8d40f52e94cd431d4c98a4f76467'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Cerrado'' of Brazil is a region of:',
    'The Cerrado is the vast savanna of central Brazil, known as the ''inverted forest'' because of its deep roots and twisted trunks.',
    'hard',
    'Standard Reference',
    null,
    'e23a51eb8f6616b857a06cd27bdc4fbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e23a51eb8f6616b857a06cd27bdc4fbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Desert'),
            ('B', 'Tundra'),
            ('C', 'Tropical rainforest'),
            ('D', 'Savanna')
           ) as v(label, option_text)
 where q.question_hash = 'e23a51eb8f6616b857a06cd27bdc4fbc'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest island of the Mediterranean by population?',
    'Cyprus is the most populous island of the Mediterranean with more than a million inhabitants.',
    'hard',
    'Standard Reference',
    null,
    '2e420dea90a140867f25353d157a2014'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e420dea90a140867f25353d157a2014'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cyprus'),
            ('B', 'Sardinia'),
            ('C', 'Crete'),
            ('D', 'Sicily')
           ) as v(label, option_text)
 where q.question_hash = '2e420dea90a140867f25353d157a2014'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Fertile Crescent'' region is associated with the early:',
    'The Fertile Crescent, extending from Mesopotamia through the Levant to Egypt, is where agriculture and settled civilisations first developed.',
    'medium',
    'Standard Reference',
    null,
    'ab481542a3c474478537c017bc5c8902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ab481542a3c474478537c017bc5c8902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maritime trade'),
            ('B', 'Gunpowder empires'),
            ('C', 'Rise of agriculture and settled civilisations'),
            ('D', 'Iron smelting')
           ) as v(label, option_text)
 where q.question_hash = 'ab481542a3c474478537c017bc5c8902'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following countries is a member of the European Union?',
    'Germany is a founding member of the European Union; Norway and Switzerland are not members and Turkey is an aspirant.',
    'easy',
    'Standard Reference',
    null,
    '4ede6f8b72fc366335067eef2e0508f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4ede6f8b72fc366335067eef2e0508f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Turkey'),
            ('B', 'Norway'),
            ('C', 'Switzerland'),
            ('D', 'Germany')
           ) as v(label, option_text)
 where q.question_hash = '4ede6f8b72fc366335067eef2e0508f3'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Chornobyl'' nuclear disaster occurred in:',
    'The 1986 Chernobyl disaster occurred at the plant in the Ukrainian SSR, in the then Soviet Union.',
    'easy',
    'Standard Reference',
    null,
    '365422f2163d68a9fd4179c7be4fe85b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '365422f2163d68a9fd4179c7be4fe85b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russia'),
            ('B', 'Ukraine'),
            ('C', 'Belarus'),
            ('D', 'Kazakhstan')
           ) as v(label, option_text)
 where q.question_hash = '365422f2163d68a9fd4179c7be4fe85b'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Panama Canal'' connects the:',
    'The Panama Canal links the Atlantic Ocean with the Pacific Ocean, cutting out the long route around South America.',
    'easy',
    'Standard Reference',
    null,
    '3aaa63b46c827ba7cfb0bca38df11640'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3aaa63b46c827ba7cfb0bca38df11640'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mediterranean and Atlantic Oceans'),
            ('B', 'Black Sea and Mediterranean'),
            ('C', 'Atlantic and Pacific Oceans'),
            ('D', 'Indian and Pacific Oceans')
           ) as v(label, option_text)
 where q.question_hash = '3aaa63b46c827ba7cfb0bca38df11640'
on conflict (question_id, label) do nothing;

-- geography | world-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Suez Canal'' connects the Mediterranean Sea with:',
    'The Suez Canal connects the Mediterranean Sea with the Red Sea and is a key part of the Europe-Asia maritime route.',
    'easy',
    'Standard Reference',
    null,
    '32033dff19cfbeeec1b093a96bfa70a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '32033dff19cfbeeec1b093a96bfa70a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Red Sea'),
            ('B', 'The Persian Gulf'),
            ('C', 'The Indian Ocean'),
            ('D', 'The Atlantic Ocean')
           ) as v(label, option_text)
 where q.question_hash = '32033dff19cfbeeec1b093a96bfa70a8'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which country has the largest number of islands in the world?',
    'Sweden has the greatest number of islands, more than 267,570, followed by Norway.',
    'hard',
    'Standard Reference',
    null,
    '6b0a2eb736356bbb1fd51a8a6e110bdf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6b0a2eb736356bbb1fd51a8a6e110bdf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Japan'),
            ('B', 'Sweden'),
            ('C', 'Indonesia'),
            ('D', 'Philippines')
           ) as v(label, option_text)
 where q.question_hash = '6b0a2eb736356bbb1fd51a8a6e110bdf'
on conflict (question_id, label) do nothing;

-- geography | world-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'The ''Weddell Sea'' is located in:',
    'The Weddell Sea is a marginal sea of the Southern Ocean adjacent to the Antarctic Peninsula.',
    'hard',
    'Standard Reference',
    null,
    '045f3137a3ae29a02e80f32cffaf85e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '045f3137a3ae29a02e80f32cffaf85e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'North Pacific'),
            ('B', 'Baltic Sea'),
            ('C', 'Arctic Ocean'),
            ('D', 'Antarctic region')
           ) as v(label, option_text)
 where q.question_hash = '045f3137a3ae29a02e80f32cffaf85e6'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which of the following is the largest bay in the world?',
    'The Bay of Fundy in Canada has the highest tidal range in the world, exceeding 16 metres.',
    'medium',
    'Standard Reference',
    null,
    '1a8e221ccd226187d2816c9c523d306c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1a8e221ccd226187d2816c9c523d306c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bay of Bengal'),
            ('B', 'Bay of Fundy'),
            ('C', 'Bengal Bay'),
            ('D', 'Gulf of Mexico')
           ) as v(label, option_text)
 where q.question_hash = '1a8e221ccd226187d2816c9c523d306c'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which two oceans border the southern tip of Africa?',
    'The Cape of Good Hope marks the meeting point of the Atlantic and the Indian Oceans.',
    'medium',
    'Standard Reference',
    null,
    '7f9be3c6e1fab08fcb4206683ea9a837'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7f9be3c6e1fab08fcb4206683ea9a837'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Atlantic and Indian'),
            ('B', 'Pacific and Atlantic'),
            ('C', 'Indian and Pacific'),
            ('D', 'Indian and Southern')
           ) as v(label, option_text)
 where q.question_hash = '7f9be3c6e1fab08fcb4206683ea9a837'
on conflict (question_id, label) do nothing;

-- geography | world-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'world-geography'),
    'Which is the largest island of the Pacific Ocean?',
    'New Guinea, the world''s second largest island, is the largest island in the Pacific Ocean.',
    'medium',
    'Standard Reference',
    null,
    '49109b52c89c6379320176e8f18333cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '49109b52c89c6379320176e8f18333cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Oahu'),
            ('B', 'Madagascar'),
            ('C', 'New Guinea'),
            ('D', 'Borneo')
           ) as v(label, option_text)
 where q.question_hash = '49109b52c89c6379320176e8f18333cf'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which current is the cold current flowing along the coast of Peru?',
    'The Peru or Humboldt Current is a cold current that supports the world''s richest anchovy fishery.',
    'medium',
    'Standard Reference',
    null,
    '312f0b89801c5d15deeb94bcd2417cd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '312f0b89801c5d15deeb94bcd2417cd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'El Nino Current'),
            ('B', 'Brazil Current'),
            ('C', 'Benguela Current'),
            ('D', 'Peru Current')
           ) as v(label, option_text)
 where q.question_hash = '312f0b89801c5d15deeb94bcd2417cd7'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Great Pacific Garbage Patch'' is located in the:',
    'The Great Pacific Garbage Patch is a system of marine debris in the North Pacific Subtropical Convergence Zone.',
    'medium',
    'Standard Reference',
    null,
    'b6de346a91d6b3ece74d3305275ec2b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b6de346a91d6b3ece74d3305275ec2b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mediterranean Sea'),
            ('B', 'North Atlantic Ocean'),
            ('C', 'North Pacific Ocean'),
            ('D', 'Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'b6de346a91d6b3ece74d3305275ec2b0'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following is the deepest ocean trench in the Indian Ocean?',
    'The Sunda Trench, also called the Java Trench, is the deepest point of the Indian Ocean at about 7,290 metres.',
    'hard',
    'Standard Reference',
    null,
    '36d77f4a077a4d2ec608ed1fadd21738'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '36d77f4a077a4d2ec608ed1fadd21738'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sunda Trench'),
            ('B', 'Mariana Trench'),
            ('C', 'Tonga Trench'),
            ('D', 'Java Trench')
           ) as v(label, option_text)
 where q.question_hash = '36d77f4a077a4d2ec608ed1fadd21738'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Ocean currents are influenced by the:',
    'The Coriolis force caused by the Earth''s rotation deflects moving water to the right in the northern hemisphere, producing the great subtropical gyres.',
    'medium',
    'NCERT Class XI',
    null,
    '1b8bfe22b9a5e96765782314a2ea5a22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1b8bfe22b9a5e96765782314a2ea5a22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Earth''s rotation and the Coriolis effect'),
            ('B', 'Only the direction of the wind'),
            ('C', 'Salinity alone'),
            ('D', 'The moon''s gravity')
           ) as v(label, option_text)
 where q.question_hash = '1b8bfe22b9a5e96765782314a2ea5a22'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The Sargasso Sea is located in the:',
    'The Sargasso Sea in the North Atlantic is the only sea without a land boundary, bordered by the Gulf Stream, the North Atlantic Drift and the Canary Current.',
    'hard',
    'Standard Reference',
    null,
    'd5febcc363ac4295f5093f8531fbe413'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd5febcc363ac4295f5093f8531fbe413'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mediterranean Sea'),
            ('B', 'North Atlantic Ocean'),
            ('C', 'Pacific Ocean'),
            ('D', 'Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'd5febcc363ac4295f5093f8531fbe413'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which ocean current warms the coast of Norway in winter?',
    'The warm North Atlantic Drift, an extension of the Gulf Stream, keeps the Norwegian coast ice-free in winter.',
    'medium',
    'Standard Reference',
    null,
    '4dee4f9e2b9e3d68e95d925b8eb85ff9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4dee4f9e2b9e3d68e95d925b8eb85ff9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Labrador Current'),
            ('B', 'North Atlantic Drift'),
            ('C', 'Norwegian Current'),
            ('D', 'East Greenland Current')
           ) as v(label, option_text)
 where q.question_hash = '4dee4f9e2b9e3d68e95d925b8eb85ff9'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Whaling'' and ''high seas'' freedom to fish beyond 200 nautical miles is governed by:',
    'The United Nations Convention on the Law of the Sea governs maritime zones, the rights of coastal states and the freedom of the high seas.',
    'medium',
    'Standard Reference',
    null,
    '897586fa7ab37e90d6ea736bbfbad6c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '897586fa7ab37e90d6ea736bbfbad6c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ramsar Convention'),
            ('B', 'The London Convention'),
            ('C', 'UNCLOS'),
            ('D', 'The Kyoto Protocol')
           ) as v(label, option_text)
 where q.question_hash = '897586fa7ab37e90d6ea736bbfbad6c3'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Coral bleaching is caused primarily by:',
    'Rising sea temperatures cause corals to expel their symbiotic zooxanthellae, which produces bleaching.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    'adb55d5d03398965c87883fe58c002a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'adb55d5d03398965c87883fe58c002a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rise in sea temperature'),
            ('B', 'Ocean acidification only'),
            ('C', 'Reduction in salinity'),
            ('D', 'Increase in oxygen')
           ) as v(label, option_text)
 where q.question_hash = 'adb55d5d03398965c87883fe58c002a9'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following organisms form the base of the ocean food chain?',
    'Phytoplankton, mainly diatoms and dinoflagellates, are the primary producers at the base of marine food webs.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '9c462f13df97daf9574c6652b73e7aac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c462f13df97daf9574c6652b73e7aac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Squids'),
            ('B', 'Coral polyps'),
            ('C', 'Copepods'),
            ('D', 'Phytoplankton')
           ) as v(label, option_text)
 where q.question_hash = '9c462f13df97daf9574c6652b73e7aac'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''continental shelf'' of India extends up to:',
    'The continental shelf of India extends to about 200 nautical miles or the edge of the continental margin, whichever is closer, in some cases beyond 200 nautical miles by continental shelf rules.',
    'medium',
    'Standard Reference',
    null,
    '31a6301d1baed645d35aea58edb21c40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '31a6301d1baed645d35aea58edb21c40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '350 nautical miles'),
            ('B', '50 nautical miles'),
            ('C', '200 nautical miles'),
            ('D', '12 nautical miles')
           ) as v(label, option_text)
 where q.question_hash = '31a6301d1baed645d35aea58edb21c40'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following best describes the salinity of the Red Sea?',
    'The Red Sea has very high salinity, over 40 parts per thousand, because of intense evaporation and low freshwater inflow.',
    'medium',
    'Standard Reference',
    null,
    '88ef82b63f72c5e998e72c4900f017e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '88ef82b63f72c5e998e72c4900f017e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'About 5 ppt'),
            ('B', 'About 10 ppt'),
            ('C', 'About 35 ppt'),
            ('D', 'Over 40 ppt')
           ) as v(label, option_text)
 where q.question_hash = '88ef82b63f72c5e998e72c4900f017e6'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'The ''Thermocline'' is the layer in the ocean where:',
    'Below the mixed layer lies the thermocline, a zone of rapid decrease in temperature with depth that separates surface waters from the deep ocean.',
    'medium',
    'NCERT Class XI',
    null,
    '02aac1d14f02b052488645b31a793413'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02aac1d14f02b052488645b31a793413'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Temperature decreases rapidly with depth'),
            ('B', 'Salinity increases with depth'),
            ('C', 'Light penetrates fully'),
            ('D', 'Pressure is constant')
           ) as v(label, option_text)
 where q.question_hash = '02aac1d14f02b052488645b31a793413'
on conflict (question_id, label) do nothing;

-- geography | oceanography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which instrument is used to measure the depth of the ocean?',
    'An echo sounder measures depth by timing the echo of sound waves from the sea bed, while a simple sounding line was used traditionally.',
    'easy',
    'NCERT Class XI',
    null,
    '3342287a57bb291f2a772e451d02cf52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3342287a57bb291f2a772e451d02cf52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Secchi disc'),
            ('B', 'Sounding line or echo sounder'),
            ('C', 'Thermometer'),
            ('D', 'Current meter')
           ) as v(label, option_text)
 where q.question_hash = '3342287a57bb291f2a772e451d02cf52'
on conflict (question_id, label) do nothing;

-- geography | oceanography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of the following currents is a warm current of the southern hemisphere?',
    'The East Australian Current, a warm western boundary current, flows southward along eastern Australia.',
    'hard',
    'Standard Reference',
    null,
    '8a570fedeb1731f1220be3eefa0c8345'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8a570fedeb1731f1220be3eefa0c8345'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Peru Current'),
            ('B', 'Benguela Current'),
            ('C', 'West Australian Current'),
            ('D', 'East Australian Current')
           ) as v(label, option_text)
 where q.question_hash = '8a570fedeb1731f1220be3eefa0c8345'
on conflict (question_id, label) do nothing;

-- geography | oceanography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'oceanography'),
    'Which of these is the only sea without a land boundary?',
    'The Sargasso Sea in the North Atlantic is bounded only by currents and has no continental coastline.',
    'medium',
    'Standard Reference',
    null,
    '8fbc5fce983bdad4c37cfb577d76bda0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8fbc5fce983bdad4c37cfb577d76bda0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sea of Marmara'),
            ('B', 'The Adriatic Sea'),
            ('C', 'The Sargasso Sea'),
            ('D', 'The Baltic Sea')
           ) as v(label, option_text)
 where q.question_hash = '8fbc5fce983bdad4c37cfb577d76bda0'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The Coriolis force is maximum at the:',
    'The Coriolis force is proportional to the sine of the latitude and is therefore zero at the equator and maximum at the poles.',
    'medium',
    'Standard Reference',
    null,
    '88601c172654b0cdfed028ac304fb18c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '88601c172654b0cdfed028ac304fb18c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Equator'),
            ('B', 'Poles'),
            ('C', 'Tropics'),
            ('D', 'Subtropics')
           ) as v(label, option_text)
 where q.question_hash = '88601c172654b0cdfed028ac304fb18c'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Horse latitudes'' are the regions of:',
    'The subtropical high-pressure belts around 30 degrees are known as the horse latitudes, where descending air produces calm and dry conditions.',
    'hard',
    'Standard Reference',
    null,
    'd23543efe70f2fe366345e7dce688912'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd23543efe70f2fe366345e7dce688912'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Calm winds around 30 degrees latitude'),
            ('B', 'Heavy rainfall at the equator'),
            ('C', 'Persistent cyclones'),
            ('D', 'Very cold winds')
           ) as v(label, option_text)
 where q.question_hash = 'd23543efe70f2fe366345e7dce688912'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''ITCZ'' is also known as:',
    'The Inter-Tropical Convergence Zone is the low-pressure belt near the equator where the trade winds converge and heavy convectional rainfall occurs.',
    'medium',
    'NCERT Class XI',
    null,
    '905d7b37a949ad7451e7867b040ddccf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '905d7b37a949ad7451e7867b040ddccf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The subtropical high belt'),
            ('B', 'The equatorial trough of low pressure'),
            ('C', 'The polar front'),
            ('D', 'The westerly wind belt')
           ) as v(label, option_text)
 where q.question_hash = '905d7b37a949ad7451e7867b040ddccf'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Subtropical jet stream'' is located over which latitudes?',
    'The subtropical jet stream, which drives the westerly cyclonic systems, lies around 25 to 35 degrees latitude in both hemispheres.',
    'hard',
    'Standard Reference',
    null,
    'a4a6cf681a4f669de27467bfef0cb599'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a4a6cf681a4f669de27467bfef0cb599'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25 to 35 degrees'),
            ('B', '50 to 60 degrees'),
            ('C', '70 to 80 degrees'),
            ('D', '5 to 10 degrees')
           ) as v(label, option_text)
 where q.question_hash = 'a4a6cf681a4f669de27467bfef0cb599'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Chinook'' is a warm dry wind of:',
    'The Chinook, also called the snow eater, is a warm dry wind that descends the eastern slopes of the Rockies and melts snow rapidly.',
    'medium',
    'Standard Reference',
    null,
    '88f08e921914bec3f1ff9a734707b0f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '88f08e921914bec3f1ff9a734707b0f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Central Asia'),
            ('B', 'Southern Africa'),
            ('C', 'North America'),
            ('D', 'Australia')
           ) as v(label, option_text)
 where q.question_hash = '88f08e921914bec3f1ff9a734707b0f3'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Mistral'' is a cold wind blowing over:',
    'The Mistral is a strong cold north-westerly wind that descends the Rhone valley and the Alps into the Mediterranean.',
    'hard',
    'Standard Reference',
    null,
    '03b0e13b0b7a591616803542da0244c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '03b0e13b0b7a591616803542da0244c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Balkans in winter'),
            ('B', 'The Ganga plain'),
            ('C', 'The Iberian Peninsula'),
            ('D', 'The Rhone valley and the Mediterranean')
           ) as v(label, option_text)
 where q.question_hash = '03b0e13b0b7a591616803542da0244c8'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Bora'' is a wind of:',
    'The Bora is a strong cold north-easterly wind that blows from the Balkans across the Adriatic coast.',
    'hard',
    'Standard Reference',
    null,
    '886b8c22c00d9f3c5c8072382fe2ffc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '886b8c22c00d9f3c5c8072382fe2ffc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Adriatic coast'),
            ('B', 'The Siberian plain'),
            ('C', 'The Thar Desert'),
            ('D', 'The Deccan Plateau')
           ) as v(label, option_text)
 where q.question_hash = '886b8c22c00d9f3c5c8072382fe2ffc8'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Loo'' is the hot dry summer wind blowing over:',
    'The Loo is a strong hot and dry summer wind that blows over the north-western Indian plains during May and June.',
    'medium',
    'NCERT Class XI',
    null,
    '9acc9d874404ba9eba86b0799b999fc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9acc9d874404ba9eba86b0799b999fc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Deccan Plateau'),
            ('B', 'The Konkan coast'),
            ('C', 'The Brahmaputra valley'),
            ('D', 'The Thar Desert and the Gangetic plain')
           ) as v(label, option_text)
 where q.question_hash = '9acc9d874404ba9eba86b0799b999fc7'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Mawsynram'' and ''Cherrapunji'' are famous for:',
    'Mawsynram in Meghalaya holds the record for the highest average annual rainfall, on the windward slope of the Khasi hills.',
    'easy',
    'Standard Reference',
    null,
    'ff97d7af3948964c03113d64d86c696c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ff97d7af3948964c03113d64d86c696c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Highest wind speed'),
            ('B', 'Longest coastline'),
            ('C', 'Highest recorded rainfall'),
            ('D', 'Lowest temperature')
           ) as v(label, option_text)
 where q.question_hash = 'ff97d7af3948964c03113d64d86c696c'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Bengal Bay'' and the ''Chadwick'' rainfall:',
    'Rain near the head of the Bay of Bengal and the retreating monsoon, called the ''Chadwick'' or ''October'' rain, is a local feature of the Bay region.',
    'hard',
    'Standard Reference',
    null,
    'a6c33bf241307ac3f64aad9eb6c1903c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6c33bf241307ac3f64aad9eb6c1903c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Occurs in winter due to western disturbances'),
            ('B', 'Occurs in summer due to convection and the retreating monsoon'),
            ('C', 'Occurs in spring due to western cyclones'),
            ('D', 'Occurs in autumn due to the western jet')
           ) as v(label, option_text)
 where q.question_hash = 'a6c33bf241307ac3f64aad9eb6c1903c'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which is the main cause of the winter rainfall of the Mediterranean climate?',
    'The Mediterranean climate has mild wet winters caused by the westerly cyclonic systems of the temperate latitudes.',
    'medium',
    'Standard Reference',
    null,
    '318b8d6e02ddc77f397d296fd84eb2a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '318b8d6e02ddc77f397d296fd84eb2a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Westerly cyclones of the temperate zone'),
            ('B', 'Local convection'),
            ('C', 'The subtropical jet'),
            ('D', 'The retreating monsoon')
           ) as v(label, option_text)
 where q.question_hash = '318b8d6e02ddc77f397d296fd84eb2a2'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Tropical wet and dry'' climate is also called:',
    'The tropical wet and dry climate, also called the monsoon or savanna climate, has a short wet and a long dry season.',
    'easy',
    'Standard Reference',
    null,
    '7b4f4854a5d8c5df185afad7616f3843'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7b4f4854a5d8c5df185afad7616f3843'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Steppe climate'),
            ('B', 'Savanna climate'),
            ('C', 'Monsoon climate'),
            ('D', 'Equatorial climate')
           ) as v(label, option_text)
 where q.question_hash = '7b4f4854a5d8c5df185afad7616f3843'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Sturm'' in European weather refers to:',
    'A Sturm is a severe snowstorm with strong winds, common in the alpine regions of Europe.',
    'hard',
    'Standard Reference',
    null,
    'e93409e0ee54c3c0440d2ed7dcaadcd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e93409e0ee54c3c0440d2ed7dcaadcd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A foggy spell'),
            ('B', 'A dry wind'),
            ('C', 'A heat wave'),
            ('D', 'A blizzard of snow and wind')
           ) as v(label, option_text)
 where q.question_hash = 'e93409e0ee54c3c0440d2ed7dcaadcd6'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Western Disturbances'' that cause winter rain in north India originate over the:',
    'Western disturbances are extratropical storms from the Mediterranean region that travel eastwards and bring rain and snow to the western Himalayas and the plains.',
    'easy',
    'NCERT Class XI',
    null,
    'b6758ef5b5254bd373ca247b39d5e11d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6758ef5b5254bd373ca247b39d5e11d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bay of Bengal'),
            ('B', 'Mediterranean Sea'),
            ('C', 'Arabian Sea'),
            ('D', 'Pacific Ocean')
           ) as v(label, option_text)
 where q.question_hash = 'b6758ef5b5254bd373ca247b39d5e11d'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Kal Baisakhi'' storms occur in which part of India?',
    'Kal Baisakhi is the pre-monsoon convective rainfall and hailstorm activity of West Bengal and Odisha in April and May.',
    'medium',
    'NCERT Class XI',
    null,
    '68c73aa2f530895cdf4adb9adf2eab84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '68c73aa2f530895cdf4adb9adf2eab84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan desert'),
            ('B', 'North-west India'),
            ('C', 'West Bengal and Odisha'),
            ('D', 'Tamil Nadu coast')
           ) as v(label, option_text)
 where q.question_hash = '68c73aa2f530895cdf4adb9adf2eab84'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which is the wettest place in India?',
    'Mawsynram in Meghalaya records the highest average annual rainfall in India, slightly ahead of nearby Cherrapunji.',
    'medium',
    'Standard Reference',
    null,
    '72e704609ec68b1cf4bb77dc0c169d32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '72e704609ec68b1cf4bb77dc0c169d32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cherrapunji in Meghalaya'),
            ('B', 'Amarkantak in Madhya Pradesh'),
            ('C', 'Agumbe in Maharashtra'),
            ('D', 'Mawsynram in Meghalaya')
           ) as v(label, option_text)
 where q.question_hash = '72e704609ec68b1cf4bb77dc0c169d32'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Tropical cyclones that form in the Bay of Bengal and strike the Odisha and West Bengal coasts are locally called:',
    'Cyclones forming in the Bay of Bengal that strike the Odisha and West Bengal coasts are known locally as Kal Baisakhi or Nor''westers.',
    'easy',
    'NCERT Class XI',
    null,
    '9ba9fd1a3ef42cca1c8c821a9b0afeab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ba9fd1a3ef42cca1c8c821a9b0afeab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aila'),
            ('B', 'Nor''westers or Kal Baisakhi'),
            ('C', 'Maha'),
            ('D', 'Chapala')
           ) as v(label, option_text)
 where q.question_hash = '9ba9fd1a3ef42cca1c8c821a9b0afeab'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which of the following is a rain shadow area for the southwest monsoon?',
    'The interior of the Deccan Plateau lies in the rain shadow of the Western Ghats and receives far less rainfall than the windward Konkan and Malabar coasts.',
    'medium',
    'NCERT Class XI',
    null,
    'bb2bb548789fa3eb15f3f258929f20d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bb2bb548789fa3eb15f3f258929f20d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Deccan Plateau interior'),
            ('B', 'The Malabar coast'),
            ('C', 'The Coromandel coast'),
            ('D', 'The Konkan coast')
           ) as v(label, option_text)
 where q.question_hash = 'bb2bb548789fa3eb15f3f258929f20d1'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Apu'' or ''Mistral'' type of local wind in India is:',
    'The Loo is the hot dry wind of the north Indian plains in summer.',
    'medium',
    'NCERT Class XI',
    null,
    '5b9d10367b6331949c706fca572a81d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5b9d10367b6331949c706fca572a81d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loo'),
            ('B', 'Mawsynram'),
            ('C', 'Kal Baisakhi'),
            ('D', 'Nor''westers')
           ) as v(label, option_text)
 where q.question_hash = '5b9d10367b6331949c706fca572a81d8'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which atmospheric layer contains the ozone layer?',
    'The ozone layer is found in the stratosphere at roughly 15 to 35 kilometres above the surface.',
    'easy',
    'NCERT Class XI',
    null,
    '032037396f3fc0c676b464cdd53fceba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '032037396f3fc0c676b464cdd53fceba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mesosphere'),
            ('B', 'Thermosphere'),
            ('C', 'Troposphere'),
            ('D', 'Stratosphere')
           ) as v(label, option_text)
 where q.question_hash = '032037396f3fc0c676b464cdd53fceba'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The greenhouse effect is caused mainly by:',
    'Carbon dioxide, methane, water vapour, nitrous oxide and ozone are the principal greenhouse gases that trap outgoing long-wave radiation.',
    'easy',
    'NCERT Class XI',
    null,
    '47f93179ca399d871424a6169de5fc74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '47f93179ca399d871424a6169de5fc74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nitrogen oxides only'),
            ('B', 'Dust and aerosols'),
            ('C', 'Carbon dioxide, methane and water vapour'),
            ('D', 'Oxygen and nitrogen')
           ) as v(label, option_text)
 where q.question_hash = '47f93179ca399d871424a6169de5fc74'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which is the largest climatic zone of India in terms of area?',
    'The tropical wet and dry climate covers the largest part of India, with the tropical monsoon climate covering the remaining wetter north-east and coastal areas.',
    'hard',
    'Standard Reference',
    null,
    'b4280bae1469adf57133c5c030fe9421'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b4280bae1469adf57133c5c030fe9421'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tropical wet and dry'),
            ('B', 'Tropical wet (monsoon)'),
            ('C', 'Semi-arid and arid'),
            ('D', 'Temperate')
           ) as v(label, option_text)
 where q.question_hash = 'b4280bae1469adf57133c5c030fe9421'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'Which of the following is the driest place in India?',
    'Jaisalmer in western Rajasthan, with under 150 mm of annual rainfall, is the driest inhabited place in India.',
    'medium',
    'Standard Reference',
    null,
    '502ebffa567f48486d49cae805693656'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '502ebffa567f48486d49cae805693656'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhopal'),
            ('B', 'Chennai'),
            ('C', 'Kolkata'),
            ('D', 'Jaisalmer')
           ) as v(label, option_text)
 where q.question_hash = '502ebffa567f48486d49cae805693656'
on conflict (question_id, label) do nothing;

-- geography | climate-and-weather | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'climate-and-weather'),
    'The ''Western coastal plain'' of India receives most of its rainfall from:',
    'The west coast of India receives the bulk of its rainfall from the Arabian Sea branch of the south-west monsoon, making it one of the wettest regions.',
    'easy',
    'NCERT Class XI',
    null,
    'b70291a374c413c114a42bf4c87793a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b70291a374c413c114a42bf4c87793a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The retreating monsoon'),
            ('B', 'The south-west monsoon'),
            ('C', 'The western disturbances'),
            ('D', 'The north-east monsoon')
           ) as v(label, option_text)
 where q.question_hash = 'b70291a374c413c114a42bf4c87793a2'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The soil of the Terai region is:',
    'The Terai belt has deep, fertile alluvial deposits renewed by each year''s floods.',
    'easy',
    'NCERT Class XI',
    null,
    'fde82e890c0714c6483709331e45bae6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fde82e890c0714c6483709331e45bae6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Alluvial and fertile'),
            ('B', 'Black and sticky'),
            ('C', 'Saline'),
            ('D', 'Lateritic')
           ) as v(label, option_text)
 where q.question_hash = 'fde82e890c0714c6483709331e45bae6'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which of the following soils is most suitable for growing cotton?',
    'Black soil, with its high clay content and moisture retention, is the classic soil for cotton, soybean and sugarcane.',
    'easy',
    'NCERT Class XI',
    null,
    'cf841590e657c7b164ca8db6624d3a33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cf841590e657c7b164ca8db6624d3a33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Red soil'),
            ('B', 'Alluvial soil'),
            ('C', 'Black soil'),
            ('D', 'Laterite soil')
           ) as v(label, option_text)
 where q.question_hash = 'cf841590e657c7b164ca8db6624d3a33'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which soil is found in the north-western India and requires heavy irrigation?',
    'Desert soil, sandy and fertile enough with irrigation, covers large parts of Rajasthan and is the soil of the Indira Gandhi Canal command area.',
    'medium',
    'NCERT Class XI',
    null,
    '656d2a898f42750938a254c9d5215ef8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '656d2a898f42750938a254c9d5215ef8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Red soil'),
            ('B', 'Laterite soil'),
            ('C', 'Saline soil'),
            ('D', 'Desert soil')
           ) as v(label, option_text)
 where q.question_hash = '656d2a898f42750938a254c9d5215ef8'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Champaign'' or black soil region of India is mainly found in:',
    'The black soil or regur covers Maharashtra, much of Madhya Pradesh, parts of Karnataka, Andhra Pradesh and Tamil Nadu.',
    'easy',
    'NCERT Class XI',
    null,
    '6e98e52e8d8798c48086bf2785820790'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e98e52e8d8798c48086bf2785820790'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra, Madhya Pradesh and parts of Karnataka'),
            ('B', 'Punjab and Haryana'),
            ('C', 'Tamil Nadu coast'),
            ('D', 'North-East India')
           ) as v(label, option_text)
 where q.question_hash = '6e98e52e8d8798c48086bf2785820790'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Khadar'' and ''Bangar'' are the two types of:',
    'Alluvial soil is divided into khadar, the new alluvium of the flood plains, and bangar, the older alluvium above the flood level.',
    'medium',
    'NCERT Class XI',
    null,
    '6552097c04fc7b9a99f8448c3498705e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6552097c04fc7b9a99f8448c3498705e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Desert soil'),
            ('B', 'Laterite soil'),
            ('C', 'Alluvial soil'),
            ('D', 'Black soil')
           ) as v(label, option_text)
 where q.question_hash = '6552097c04fc7b9a99f8448c3498705e'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Soil erosion by wind is a serious problem in:',
    'Wind erosion and the movement of sand dunes are characteristic problems of the Thar Desert region.',
    'medium',
    'Standard Reference',
    null,
    '8e46776cf5913af837ba72ccd1b74016'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8e46776cf5913af837ba72ccd1b74016'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sundarbans delta'),
            ('B', 'The Thar Desert'),
            ('C', 'The Gangetic plain'),
            ('D', 'The Konkan coast')
           ) as v(label, option_text)
 where q.question_hash = '8e46776cf5913af837ba72ccd1b74016'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which of the following is a method of soil conservation in India?',
    'Terrace farming, contour ploughing, shelter belts and afforestation are the standard soil conservation techniques.',
    'easy',
    'Standard Reference',
    null,
    '295b87724fdf9c09a3715bc59f0eb9ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '295b87724fdf9c09a3715bc59f0eb9ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Over-irrigation'),
            ('B', 'Deep ploughing in the monsoon'),
            ('C', 'Terrace farming and contour ploughing'),
            ('D', 'Fallowing and burning')
           ) as v(label, option_text)
 where q.question_hash = '295b87724fdf9c09a3715bc59f0eb9ee'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Biosphere Reserve'' concept was developed by UNESCO under its:',
    'The Man and the Biosphere Programme, launched in 1971, designates biosphere reserves to reconcile conservation with development.',
    'medium',
    'Standard Reference',
    null,
    '242d1c0dadd98ebc662867da11832353'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '242d1c0dadd98ebc662867da11832353'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'World Heritage Programme'),
            ('B', 'World Network of Biosphere Reserves Programme only'),
            ('C', 'MAB and World Heritage Conventions'),
            ('D', 'Man and the Biosphere Programme')
           ) as v(label, option_text)
 where q.question_hash = '242d1c0dadd98ebc662867da11832353'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which of the following is a moist deciduous forest of India?',
    'Moist deciduous forests are dominated by teak and sal and cover a large part of the central Indian plateau.',
    'medium',
    'NCERT Class XI',
    null,
    '7fb12770d8341f1d2a316bc680f5d425'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7fb12770d8341f1d2a316bc680f5d425'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Teak and sal forests'),
            ('B', 'Bamboo forest of the north-east'),
            ('C', 'Khirgai forest'),
            ('D', 'Sandalwood forest')
           ) as v(label, option_text)
 where q.question_hash = '7fb12770d8341f1d2a316bc680f5d425'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Khirgai'' or ''Dry deciduous'' forests are typical of:',
    'The khirgai forests, with teak, sal and acacia, are typical of Rajasthan and the drier parts of central India.',
    'medium',
    'Standard Reference',
    null,
    '5117e07b29387f17c5c27c9b2389736f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5117e07b29387f17c5c27c9b2389736f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Western Ghats'),
            ('B', 'Rajasthan and Central India'),
            ('C', 'The north-east hills'),
            ('D', 'Kerala coast')
           ) as v(label, option_text)
 where q.question_hash = '5117e07b29387f17c5c27c9b2389736f'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'Which state has the largest area under mangrove forests in India?',
    'West Bengal, with the Sundarbans, has the largest mangrove cover in India, followed by Gujarat and Andhra Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '2e11f18bf8330e31da95ec49e57c09ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2e11f18bf8330e31da95ec49e57c09ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Goa'),
            ('C', 'West Bengal'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '2e11f18bf8330e31da95ec49e57c09ae'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Sandalwood'' forests of India are found mainly in:',
    'Sandalwood forests occur in the dry deciduous forests of Karnataka and Tamil Nadu, especially in the Sathyamangalam and Marayamalai hills.',
    'medium',
    'Standard Reference',
    null,
    '5d785bc68ddf376b6dfac842ee8059f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d785bc68ddf376b6dfac842ee8059f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka and Tamil Nadu'),
            ('B', 'Punjab'),
            ('C', 'Rajasthan'),
            ('D', 'The Gangetic plain')
           ) as v(label, option_text)
 where q.question_hash = '5d785bc68ddf376b6dfac842ee8059f2'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Pil'' cycle of forest harvesting in India refers to:',
    'In the pil system, a portion of the forest area is felled in rotation while the rest remains closed, ensuring sustained yield.',
    'hard',
    'Standard Reference',
    null,
    '70b533c9c12f5b399a8ff39f4837d15d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '70b533c9c12f5b399a8ff39f4837d15d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Clear felling'),
            ('B', 'Slash and burn'),
            ('C', 'Coppice system'),
            ('D', 'Selective felling over a fixed rotation')
           ) as v(label, option_text)
 where q.question_hash = '70b533c9c12f5b399a8ff39f4837d15d'
on conflict (question_id, label) do nothing;

-- geography | soil-and-vegetation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'soil-and-vegetation'),
    'The ''Agroforestry'' practice in India involves:',
    'Agroforestry integrates trees with crops and livestock on the same land, improving soil fertility and providing multiple outputs.',
    'medium',
    'Standard Reference',
    null,
    '759f9a5aed3ef514f72e325e0bcdc750'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '759f9a5aed3ef514f72e325e0bcdc750'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reclaiming saline land'),
            ('B', 'Growing trees together with agricultural crops'),
            ('C', 'Raising only fodder crops'),
            ('D', 'Planting pure forests')
           ) as v(label, option_text)
 where q.question_hash = '759f9a5aed3ef514f72e325e0bcdc750'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which Indian state has the largest area under tea gardens?',
    'Assam accounts for the largest share of Indian tea acreage, followed by West Bengal, Tamil Nadu, Kerala and Karnataka.',
    'medium',
    'NCERT Class XI',
    null,
    '23125a508adf9929ce8f09396b3cc89d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '23125a508adf9929ce8f09396b3cc89d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kerala'),
            ('B', 'Tamil Nadu'),
            ('C', 'Assam'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = '23125a508adf9929ce8f09396b3cc89d'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Golden Circle'' of coffee is mainly in:',
    'The coffee growing region of Karnataka, called the Golden Circle, accounts for most of India''s coffee production.',
    'medium',
    'Standard Reference',
    null,
    '043c1e511e744f506ba5f423ce10efc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '043c1e511e744f506ba5f423ce10efc6'
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
 where q.question_hash = '043c1e511e744f506ba5f423ce10efc6'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of rice in India?',
    'West Bengal is the largest producer of rice in India, followed by Uttar Pradesh, Punjab and Andhra Pradesh.',
    'medium',
    'NCERT Class XI',
    null,
    '305a08a90dc2081ba87a6805896986eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '305a08a90dc2081ba87a6805896986eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Andhra Pradesh'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = '305a08a90dc2081ba87a6805896986eb'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of wheat in India?',
    'Uttar Pradesh is the largest producer of wheat, though Punjab and Haryana have much higher yields per hectare.',
    'easy',
    'NCERT Class XI',
    null,
    'bacaf23e25c43b92c2cbd8b2c7b5c8f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bacaf23e25c43b92c2cbd8b2c7b5c8f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Punjab'),
            ('C', 'Haryana'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'bacaf23e25c43b92c2cbd8b2c7b5c8f0'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    '''Plantation agriculture'' in India is characterised by:',
    'Plantation agriculture involves large capital investment, a single crop, scientific methods and a processing plant near the plantation, as in tea, coffee, rubber and sugarcane.',
    'medium',
    'NCERT Class XI',
    null,
    'd6324a0b34fa76d2cca54f00cd6eec42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6324a0b34fa76d2cca54f00cd6eec42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fallow cultivation'),
            ('B', 'Large-scale capital-intensive farming of a single crop with a processing plant'),
            ('C', 'Small holdings with subsistence crops'),
            ('D', 'Mixed cropping with livestock')
           ) as v(label, option_text)
 where q.question_hash = 'd6324a0b34fa76d2cca54f00cd6eec42'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Kharif'' season in India corresponds to:',
    'Kharif crops are sown with the onset of the monsoon in June-July and harvested in September-October; the rabi crop follows in winter.',
    'easy',
    'NCERT Class XI',
    null,
    '4b9da415ae328ee96ed4693c2fae401e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4b9da415ae328ee96ed4693c2fae401e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sowing in spring and harvesting in summer'),
            ('B', 'Harvesting of the winter crop'),
            ('C', 'Sowing in autumn and harvesting in winter'),
            ('D', 'Sowing with the onset of the monsoon and harvesting in autumn')
           ) as v(label, option_text)
 where q.question_hash = '4b9da415ae328ee96ed4693c2fae401e'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which crop is called the ''queen of the cereals''?',
    'Maize is called the queen of the cereals because of its high nutritional value and wide industrial uses.',
    'easy',
    'Standard Reference',
    null,
    'd608c0ff54f5ef192a10dd37cb4822a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd608c0ff54f5ef192a10dd37cb4822a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maize'),
            ('B', 'Pearl millet'),
            ('C', 'Wheat'),
            ('D', 'Rice')
           ) as v(label, option_text)
 where q.question_hash = 'd608c0ff54f5ef192a10dd37cb4822a3'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Kharif'' and ''Rabi'' seasons in India are named after:',
    'The names derive from the traditional six-monthly seasons of the Hindu calendar, with Kharif harvested in autumn and Rabi in summer.',
    'hard',
    'Standard Reference',
    null,
    'cb82ae288d0fed1db21a681ed56607f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb82ae288d0fed1db21a681ed56607f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The type of soil'),
            ('B', 'The crops grown'),
            ('C', 'The harvest months of the traditional calendar'),
            ('D', 'The monsoon intensity')
           ) as v(label, option_text)
 where q.question_hash = 'cb82ae288d0fed1db21a681ed56607f8'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which Indian state leads in the production of pulses?',
    'Madhya Pradesh and Maharashtra together produce the largest share of India''s pulses.',
    'medium',
    'Standard Reference',
    null,
    '40dfb58d4838012814efabaf67615c2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '40dfb58d4838012814efabaf67615c2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'West Bengal'),
            ('C', 'Madhya Pradesh and Maharashtra'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '40dfb58d4838012814efabaf67615c2a'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''System of Rice Intensification'' (SRI) was developed in:',
    'The System of Rice Intensification was developed in Madagascar in the 1980s and later adapted widely in India.',
    'medium',
    'Standard Reference',
    null,
    'b33915be04e4044f2f62935c2f487446'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b33915be04e4044f2f62935c2f487446'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madagascar'),
            ('B', 'Indonesia'),
            ('C', 'Philippines'),
            ('D', 'India')
           ) as v(label, option_text)
 where q.question_hash = 'b33915be04e4044f2f62935c2f487446'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is a horticulture crop of the Nilgiri hills?',
    'Rubber, tea, coffee, spices and apples are the major horticultural crops of the Nilgiri hills.',
    'medium',
    'Standard Reference',
    null,
    '1bc561665363c5f18d9a44140fb6abd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1bc561665363c5f18d9a44140fb6abd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wheat and mustard'),
            ('B', 'Rubber and tea'),
            ('C', 'Coconut and rice'),
            ('D', 'Jute and maize')
           ) as v(label, option_text)
 where q.question_hash = '1bc561665363c5f18d9a44140fb6abd7'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Blue Revolution'' in India is associated with:',
    'The Blue Revolution refers to the rapid growth of fish and shrimp production in India, championed by Dr. Arun Krishnan and later by the government.',
    'medium',
    'Standard Reference',
    null,
    '1d634fd76eb3c818a3e3447a629c4afe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1d634fd76eb3c818a3e3447a629c4afe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Milk production'),
            ('B', 'Poultry'),
            ('C', 'Oilseeds'),
            ('D', 'Fish production')
           ) as v(label, option_text)
 where q.question_hash = '1d634fd76eb3c818a3e3447a629c4afe'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of milk in India?',
    'Uttar Pradesh is the largest milk producer in India, with Kerala, Rajasthan, Gujarat and Karnataka following.',
    'medium',
    'Standard Reference',
    null,
    '8826d0ab6716b3fece63b6929d551bd8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8826d0ab6716b3fece63b6929d551bd8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Gujarat'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '8826d0ab6716b3fece63b6929d551bd8'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Green Revolution'' in India was associated with the:',
    'The Green Revolution, led by M.S. Swaminathan with high-yielding varieties of wheat and rice, transformed Indian food security.',
    'easy',
    'NCERT Class XI',
    null,
    '8482677a7f7ff529e246168022206099'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8482677a7f7ff529e246168022206099'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pulses and millets'),
            ('B', 'Wheat and rice'),
            ('C', 'Cotton and jute'),
            ('D', 'Tea and coffee')
           ) as v(label, option_text)
 where q.question_hash = '8482677a7f7ff529e246168022206099'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of sugarcane in the world?',
    'India is the largest producer of sugarcane in the world, followed by Brazil and China.',
    'medium',
    'Standard Reference',
    null,
    'af429310ffbe66b8d40f2f7b6ae8ea8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af429310ffbe66b8d40f2f7b6ae8ea8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'China'),
            ('B', 'Thailand'),
            ('C', 'India'),
            ('D', 'Brazil')
           ) as v(label, option_text)
 where q.question_hash = 'af429310ffbe66b8d40f2f7b6ae8ea8b'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Arhar'' or pigeon pea is known in India as:',
    'Arhar, the most widely grown pulse in India, is known as tur dal.',
    'easy',
    'Standard Reference',
    null,
    '5cedb7d50c7a8742bbb0cb74e4ad15a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5cedb7d50c7a8742bbb0cb74e4ad15a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Urad dal'),
            ('B', 'Moong dal'),
            ('C', 'Masoor dal'),
            ('D', 'Tur dal')
           ) as v(label, option_text)
 where q.question_hash = '5cedb7d50c7a8742bbb0cb74e4ad15a5'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of oilseeds in India?',
    'Rajasthan, with mustard and groundnut, is the largest producer of oilseeds in India, followed by Gujarat and Madhya Pradesh.',
    'hard',
    'Standard Reference',
    null,
    'c607220c556cbc76fdf9f287961a2ab2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c607220c556cbc76fdf9f287961a2ab2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Rajasthan'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'c607220c556cbc76fdf9f287961a2ab2'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Zaid'' season crop in India is:',
    'Zaid, the short season between rabi and kharif, is used for watermelon, fodder maize, muskmelon and other summer vegetables.',
    'medium',
    'NCERT Class XI',
    null,
    'cc717693ffa876c09064042668d3f5dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cc717693ffa876c09064042668d3f5dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wheat'),
            ('B', 'Cotton'),
            ('C', 'Rice'),
            ('D', 'Watermelon and fodder maize')
           ) as v(label, option_text)
 where q.question_hash = 'cc717693ffa876c09064042668d3f5dc'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which agricultural practice is the ''Drip irrigation'' also called?',
    'Drip irrigation, which delivers water drop by drop to the root zone, is part of micro irrigation along with sprinkler systems.',
    'easy',
    'Standard Reference',
    null,
    'dcee0479c82069b136475807da0112c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dcee0479c82069b136475807da0112c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Well irrigation'),
            ('B', 'Sprinkler irrigation'),
            ('C', 'Micro irrigation'),
            ('D', 'Flood irrigation')
           ) as v(label, option_text)
 where q.question_hash = 'dcee0479c82069b136475807da0112c8'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following statements regarding the 2015 is correct?',
    'The Soil Health Card scheme was launched in 2015 to provide farmers with soil testing and crop-wise recommendations.',
    'medium',
    'Standard Reference',
    null,
    '23ffa65a81c69e9b9dfdfb434cf9915b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '23ffa65a81c69e9b9dfdfb434cf9915b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '23ffa65a81c69e9b9dfdfb434cf9915b'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of maize in India?',
    'Karnataka is the largest producer of maize in India, followed by Bihar and Uttar Pradesh.',
    'medium',
    'Standard Reference',
    null,
    'e003712843b34055877d72ea4ff92a2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e003712843b34055877d72ea4ff92a2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Bihar'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = 'e003712843b34055877d72ea4ff92a2f'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is the major producer of coconut in India?',
    'Kerala, with its vast coastal areas, is the largest producer of coconut in India.',
    'easy',
    'Standard Reference',
    null,
    '2ec0c0951ae39076855e92b747ea01a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2ec0c0951ae39076855e92b747ea01a0'
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
 where q.question_hash = '2ec0c0951ae39076855e92b747ea01a0'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Marigold'' and ''Gladiolus'' flowers that fill the floriculture export market are grown mainly in:',
    'Tamil Nadu, with its floriculture clusters around Madurai, is a leading exporter of marigold and gladiolus.',
    'medium',
    'Standard Reference',
    null,
    'cb69adee9c0d23b07ddfaefd90ed5286'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb69adee9c0d23b07ddfaefd90ed5286'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttarakhand'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'cb69adee9c0d23b07ddfaefd90ed5286'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The largest producer of rubber in India is:',
    'Kerala is the largest producer of rubber in India, followed by Tamil Nadu and Karnataka.',
    'easy',
    'NCERT Class XI',
    null,
    'f6e9459ddf1e95b849c992c5ab3129a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f6e9459ddf1e95b849c992c5ab3129a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Kerala'),
            ('C', 'Karnataka'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'f6e9459ddf1e95b849c992c5ab3129a7'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which type of farming is practised in the ''D|System'' of Nepal and the terrace fields of the Philippines?',
    'Shifting cultivation, known as jhum or dahiya in Nepal and as camarling in the Philippines, is practised on slash-and-burn slopes.',
    'medium',
    'Standard Reference',
    null,
    '9baee80e53da1d2df999a11d3ee3cb92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9baee80e53da1d2df999a11d3ee3cb92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mixed farming'),
            ('B', 'Shifting cultivation'),
            ('C', 'Intensive subsistence farming'),
            ('D', 'Commercial plantation farming')
           ) as v(label, option_text)
 where q.question_hash = '9baee80e53da1d2df999a11d3ee3cb92'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Borewell irrigation'' is most common in:',
    'Borewell and tubewell irrigation dominate in Punjab and Haryana, where the alluvial aquifers are deep and the canal network is extensive.',
    'hard',
    'Standard Reference',
    null,
    '01dcff0e1a2c99beb96f528cf8e89921'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '01dcff0e1a2c99beb96f528cf8e89921'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'West Bengal'),
            ('C', 'Rajasthan'),
            ('D', 'Punjab')
           ) as v(label, option_text)
 where q.question_hash = '01dcff0e1a2c99beb96f528cf8e89921'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which of the following is the largest producer of wheat in the world?',
    'China is the largest producer of wheat in the world, followed by India and the United States.',
    'medium',
    'Standard Reference',
    null,
    '7608ee4f341834a95fd31f2235adbc30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7608ee4f341834a95fd31f2235adbc30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Russia'),
            ('B', 'USA'),
            ('C', 'China'),
            ('D', 'India')
           ) as v(label, option_text)
 where q.question_hash = '7608ee4f341834a95fd31f2235adbc30'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'The ''Matsushita'' and ''Paddy'' cropping in the Kerala model of rice farming refers to:',
    'The Kerala model combines canal and well irrigation with multiple cropping to raise yields per hectare.',
    'hard',
    'Standard Reference',
    null,
    '32d36fb285d83e00c65e6c73fad13099'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '32d36fb285d83e00c65e6c73fad13099'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Multiple cropping with irrigation'),
            ('B', 'Shifting cultivation'),
            ('C', 'Dryland farming'),
            ('D', 'Contract farming')
           ) as v(label, option_text)
 where q.question_hash = '32d36fb285d83e00c65e6c73fad13099'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which state of India is the largest producer of spices?',
    'Kerala, particularly Wayanad and Idukki, is the largest producer of spices in India.',
    'medium',
    'Standard Reference',
    null,
    'b3bf12b5fc722dc32d2c88939ab72b2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b3bf12b5fc722dc32d2c88939ab72b2c'
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
 where q.question_hash = 'b3bf12b5fc722dc32d2c88939ab72b2c'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    'Which is the largest producer of millets in India?',
    'Rajasthan is the largest producer of millets such as jowar and bajra in India.',
    'medium',
    'Standard Reference',
    null,
    '1518155fd2a526641aca5e0a2b3fb7de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1518155fd2a526641aca5e0a2b3fb7de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Rajasthan'),
            ('C', 'Bihar'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '1518155fd2a526641aca5e0a2b3fb7de'
on conflict (question_id, label) do nothing;

-- geography | agriculture-and-cropping | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'agriculture-and-cropping'),
    '''Assam'' is famous for which one-crop plantation?',
    'Assam is the birthplace of the Indian tea industry, with estates established by the British in the 19th century.',
    'easy',
    'Standard Reference',
    null,
    'a41e0972fb86158d9fef74ee1ac72d07'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a41e0972fb86158d9fef74ee1ac72d07'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tea'),
            ('B', 'Rubber'),
            ('C', 'Coconut'),
            ('D', 'Coffee')
           ) as v(label, option_text)
 where q.question_hash = 'a41e0972fb86158d9fef74ee1ac72d07'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Pushy'' or ''Fertile crescent'' of high density in India is in:',
    'Population is concentrated in the Gangetic plain, the coastal plains and the major river valleys, while the desert and mountain regions are sparsely populated.',
    'medium',
    'Standard Reference',
    null,
    'd784c5303524b52a260c79778310277e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd784c5303524b52a260c79778310277e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ladakh region'),
            ('B', 'The Western Ghats'),
            ('C', 'The Gangetic plain and coastal areas'),
            ('D', 'The Thar Desert')
           ) as v(label, option_text)
 where q.question_hash = 'd784c5303524b52a260c79778310277e'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The main cause of the decline of India''s population growth rate is:',
    'The death rate has fallen sharply while the birth rate has declined more slowly, which is the demographer''s explanation of the population transition.',
    'hard',
    'Standard Reference',
    null,
    '0874e04499ce47890f47108d1f19d4e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0874e04499ce47890f47108d1f19d4e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mass migration abroad'),
            ('B', 'Emigration of the educated'),
            ('C', 'Falling death rates with a lagging birth rate'),
            ('D', 'Rising death rates')
           ) as v(label, option_text)
 where q.question_hash = '0874e04499ce47890f47108d1f19d4e5'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'India''s decadal population growth between 2001 and 2011 was about:',
    'The decadal growth rate in Census 2011 was about 17.7 per cent, down from about 21.6 per cent in 1991-2001.',
    'medium',
    'Standard Reference',
    null,
    'a780c1ddc424c4c4b7f0ace159dd42ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a780c1ddc424c4c4b7f0ace159dd42ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12 per cent'),
            ('B', '18 per cent'),
            ('C', '24 per cent'),
            ('D', '32 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'a780c1ddc424c4c4b7f0ace159dd42ce'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The sex ratio of India as per Census 2011 was:',
    'The overall sex ratio in Census 2011 was 943 females per 1,000 males, up from 929 in 2001.',
    'medium',
    'Standard Reference',
    null,
    'e4274a7b30fe94e47d668d64fb14dfc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e4274a7b30fe94e47d668d64fb14dfc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '943 females per 1000 males'),
            ('B', '915 females per 1000 males'),
            ('C', '972 females per 1000 males'),
            ('D', '929 females per 1000 males')
           ) as v(label, option_text)
 where q.question_hash = 'e4274a7b30fe94e47d668d64fb14dfc8'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The child sex ratio (0-6 years) in Census 2011 was:',
    'The child sex ratio improved to 914 girls per 1,000 boys in Census 2011 from 909 in 2001.',
    'hard',
    'Standard Reference',
    null,
    '115a7fb8fbea7d5f5b48a6159d3d8b16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '115a7fb8fbea7d5f5b48a6159d3d8b16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '943 girls per 1000 boys'),
            ('B', '919 girls per 1000 boys'),
            ('C', '902 girls per 1000 boys'),
            ('D', '914 girls per 1000 boys')
           ) as v(label, option_text)
 where q.question_hash = '115a7fb8fbea7d5f5b48a6159d3d8b16'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which state had the highest literacy rate in Census 2011 after Kerala?',
    'Lakshadweep recorded a literacy rate of about 91.9 per cent, ahead of Tamil Nadu, Goa and Mizoram.',
    'medium',
    'Standard Reference',
    null,
    'c39e32d6dac542aacc583df9b5a6ef9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c39e32d6dac542aacc583df9b5a6ef9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lakshadweep'),
            ('B', 'Tamil Nadu'),
            ('C', 'Goa'),
            ('D', 'Mizoram')
           ) as v(label, option_text)
 where q.question_hash = 'c39e32d6dac542aacc583df9b5a6ef9a'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Census of India'' is conducted by:',
    'The Office of the Registrar General and Census Commissioner, under the Ministry of Home Affairs, conducts the census.',
    'easy',
    'Standard Reference',
    null,
    'd6f969b32d076aab6e85a7b57ad967f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd6f969b32d076aab6e85a7b57ad967f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Finance'),
            ('B', 'Planning Commission'),
            ('C', 'NITI Aayog'),
            ('D', 'The Registrar General and Census Commissioner')
           ) as v(label, option_text)
 where q.question_hash = 'd6f969b32d076aab6e85a7b57ad967f9'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''National Population Register'' is a database of:',
    'The National Population Register is a verified database of every usual resident in India, unique by National Identity Number.',
    'hard',
    'Standard Reference',
    null,
    '5740098911fc6d3c896ee5938649450f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5740098911fc6d3c896ee5938649450f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only voters'),
            ('B', 'Every Indian citizen'),
            ('C', 'Only urban households'),
            ('D', 'Only households below the poverty line')
           ) as v(label, option_text)
 where q.question_hash = '5740098911fc6d3c896ee5938649450f'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The term ''demographic dividend'' refers to:',
    'A demographic dividend arises when the share of the working-age population is high relative to the dependent population, provided jobs and skills are available.',
    'medium',
    'Standard Reference',
    null,
    '12ef23483a2d7cccf064df699f07b850'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12ef23483a2d7cccf064df699f07b850'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rapid urbanisation'),
            ('B', 'An increase in the elderly population'),
            ('C', 'A large working-age population relative to dependents'),
            ('D', 'A fall in the birth rate')
           ) as v(label, option_text)
 where q.question_hash = '12ef23483a2d7cccf064df699f07b850'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'India''s urbanisation level in Census 2011 was about:',
    'About 31 per cent of India''s population lived in urban areas in Census 2011, up from about 27.8 per cent in 2001.',
    'medium',
    'Standard Reference',
    null,
    '19e8dd628026784065e8938371f7f94b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19e8dd628026784065e8938371f7f94b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '31 per cent'),
            ('B', '45 per cent'),
            ('C', '60 per cent'),
            ('D', '17 per cent')
           ) as v(label, option_text)
 where q.question_hash = '19e8dd628026784065e8938371f7f94b'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Nagpur'' scheme of 1963 was related to:',
    'The Nagpur Formula of 1963, formulated by the States Reorganisation Commission, set the principles for reorganising Indian states on linguistic lines.',
    'medium',
    'Standard Reference',
    null,
    'a11fac792b6c4b0cb92c325aede7b993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a11fac792b6c4b0cb92c325aede7b993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Land reforms'),
            ('B', 'Panchayati Raj'),
            ('C', 'Green Revolution'),
            ('D', 'Reorganisation of states')
           ) as v(label, option_text)
 where q.question_hash = 'a11fac792b6c4b0cb92c325aede7b993'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''linguistic states'' reorganisation of India was completed in:',
    'The States Reorganisation Act of 1956 created the linguistic states, with further changes later including the creation of Haryana in 1966.',
    'easy',
    'Standard Reference',
    null,
    '6b67d4ee02bfe5fe2d37fda0b36ee3ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6b67d4ee02bfe5fe2d37fda0b36ee3ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1950'),
            ('B', '1956'),
            ('C', '1963'),
            ('D', '1972')
           ) as v(label, option_text)
 where q.question_hash = '6b67d4ee02bfe5fe2d37fda0b36ee3ec'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Official Languages Act'' was amended in 1963 to give Hindi and English the status of:',
    'The Official Languages Act, 1908 as amended in 1963 designated Hindi as the language of the Union, with English continuing for official purposes under Article 343.',
    'medium',
    'Standard Reference',
    null,
    '68dc0790cc70908ffe2bb59c8d84b0c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '68dc0790cc70908ffe2bb59c8d84b0c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Minority languages'),
            ('B', 'Provincial languages'),
            ('C', 'The languages of the Union'),
            ('D', 'Classical languages')
           ) as v(label, option_text)
 where q.question_hash = '68dc0790cc70908ffe2bb59c8d84b0c5'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which is the largest linguistic group of India by number of speakers?',
    'The Indo-Aryan languages, which include Hindi, Bengali, Punjabi, Marathi and Urdu, are spoken by the largest share of Indians.',
    'medium',
    'Standard Reference',
    null,
    'ec4e75aa6168bf7dc93e825aa3d820c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ec4e75aa6168bf7dc93e825aa3d820c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indo-Aryan'),
            ('B', 'Dravidian'),
            ('C', 'Austroasiatic'),
            ('D', 'Tibeto-Burman')
           ) as v(label, option_text)
 where q.question_hash = 'ec4e75aa6168bf7dc93e825aa3d820c0'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which of the following is the largest city of India by population according to the Census 2011?',
    'Delhi had the largest urban agglomeration population in Census 2011 at about 28 million, ahead of Mumbai.',
    'medium',
    'Standard Reference',
    null,
    'fd57c014960bcc4cedd6c0e30439a496'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fd57c014960bcc4cedd6c0e30439a496'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mumbai'),
            ('B', 'Delhi'),
            ('C', 'Kolkata'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = 'fd57c014960bcc4cedd6c0e30439a496'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''migration'' of rural workers to cities in India is called:',
    'Rural to urban migration is the dominant component of India''s urbanisation, driven by push factors in agriculture and pull factors of urban jobs.',
    'easy',
    'Standard Reference',
    null,
    '6b6e174b8cd55d3c4e2c42c088ac5d1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b6e174b8cd55d3c4e2c42c088ac5d1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transhumance'),
            ('B', 'Seasonal migration'),
            ('C', 'Urbanisation'),
            ('D', 'Ruralisation')
           ) as v(label, option_text)
 where q.question_hash = '6b6e174b8cd55d3c4e2c42c088ac5d1f'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Internal Migration'' in India is largest for which group?',
    'Seasonal migration of agricultural labourers between the plains and the eastern states during the agricultural cycle is the largest internal migration flow.',
    'medium',
    'Standard Reference',
    null,
    '00a3ca06fe96e86e29c2b436f68ae587'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '00a3ca06fe96e86e29c2b436f68ae587'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Skilled professionals'),
            ('B', 'Retired people'),
            ('C', 'Tourists'),
            ('D', 'Seasonal agricultural labourers')
           ) as v(label, option_text)
 where q.question_hash = '00a3ca06fe96e86e29c2b436f68ae587'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Majority religion'' of India as per Census 2011 is:',
    'Hinduism was the religion of about 79.8 per cent of the population in Census 2011.',
    'easy',
    'Standard Reference',
    null,
    'de802ed165fc99c44777fd74fe8a5d4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'de802ed165fc99c44777fd74fe8a5d4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sikhism'),
            ('B', 'Islam'),
            ('C', 'Hinduism'),
            ('D', 'Christianity')
           ) as v(label, option_text)
 where q.question_hash = 'de802ed165fc99c44777fd74fe8a5d4e'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Scheduled Castes'' population in India as per Census 2011 was about:',
    'Scheduled Castes constituted about 16.6 per cent of the population and Scheduled Tribes about 8.6 per cent in Census 2011.',
    'medium',
    'Standard Reference',
    null,
    '55845dbb413c778e1b58e51adb36ec17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '55845dbb413c778e1b58e51adb36ec17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5.4 per cent'),
            ('B', '26 per cent'),
            ('C', '8.6 per cent'),
            ('D', '16.6 per cent')
           ) as v(label, option_text)
 where q.question_hash = '55845dbb413c778e1b58e51adb36ec17'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Demographic Transition Model'' describes:',
    'The demographic transition model describes the shift from high birth and death rates with low growth to low birth and death rates with low growth, passing through a stage of rapid growth.',
    'medium',
    'Standard Reference',
    null,
    'eaec78941f387a475e725c122f7312cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eaec78941f387a475e725c122f7312cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The change in the age structure'),
            ('B', 'The shift from high birth and death rates to low birth and death rates'),
            ('C', 'Migration between countries'),
            ('D', 'Urban growth')
           ) as v(label, option_text)
 where q.question_hash = 'eaec78941f387a475e725c122f7312cb'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''dependency ratio'' of India as per Census 2011 was about:',
    'India''s dependency ratio of about 0.4 in 2011 means roughly four dependants per 100 working-age persons.',
    'hard',
    'Standard Reference',
    null,
    'c0bcdba0e598e875c54b5d97e079036b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c0bcdba0e598e875c54b5d97e079036b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '0.4'),
            ('B', '0.7'),
            ('C', '1.2'),
            ('D', '2.0')
           ) as v(label, option_text)
 where q.question_hash = 'c0bcdba0e598e875c54b5d97e079036b'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Naxalbari'' and the ''Telangana'' movements were:',
    'The Naxalbari movement in West Bengal and the Telangana movement were peasant and tribal struggles against the zamindars and the state.',
    'medium',
    'Standard Reference',
    null,
    'cc15500d18578fadd27c672f7671f4a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc15500d18578fadd27c672f7671f4a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anti-colonial non-cooperation movements'),
            ('B', 'Peasant and tribal struggles'),
            ('C', 'Labour movements'),
            ('D', 'Anti-liquidation movements')
           ) as v(label, option_text)
 where q.question_hash = 'cc15500d18578fadd27c672f7671f4a6'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The highest urbanisation in India is found in:',
    'The metropolitan cities of Delhi, Mumbai and Kolkata have the highest shares of urban population in India.',
    'medium',
    'Standard Reference',
    null,
    '58725ebba85c7492f0ece0c6643773a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '58725ebba85c7492f0ece0c6643773a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Small towns of Kerala'),
            ('B', 'Village clusters of Assam'),
            ('C', 'Hills of Himachal Pradesh'),
            ('D', 'Delhi and the metropolitan cities of Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '58725ebba85c7492f0ece0c6643773a0'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Great Leap Forward'' and the ''Cultural Revolution'' were associated with:',
    'The Great Leap Forward (1958-62) and the Cultural Revolution (1966-76) were campaigns in Mao Zedong''s China.',
    'easy',
    'Standard Reference',
    null,
    'cf3ab0d6edc2fa5ce32a030a29f1dc5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cf3ab0d6edc2fa5ce32a030a29f1dc5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mao Zedong''s China'),
            ('B', 'Nixon''s America'),
            ('C', 'Stalin''s Soviet Union'),
            ('D', 'Nehru''s India')
           ) as v(label, option_text)
 where q.question_hash = 'cf3ab0d6edc2fa5ce32a030a29f1dc5f'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Great Leap Forward'' and ''Land reforms in India'' share the common objective of:',
    'Both aimed at raising agricultural production, though by different means: collectivisation and forced procurement in China and land reform with better inputs in India.',
    'hard',
    'Standard Reference',
    null,
    'da3fa2fff3f697758b0cc4d37d0055ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da3fa2fff3f697758b0cc4d37d0055ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reducing population'),
            ('B', 'Land redistribution to the urban poor'),
            ('C', 'Increasing agricultural output'),
            ('D', 'Industrialisation')
           ) as v(label, option_text)
 where q.question_hash = 'da3fa2fff3f697758b0cc4d37d0055ce'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Chipko movement'' was:',
    'The Chipko movement, led by women like Gaura Devi, hugged trees to prevent commercial felling in the Uttarakhand Himalaya.',
    'medium',
    'Standard Reference',
    null,
    '8729805ca963aac2d224afa7bae401df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8729805ca963aac2d224afa7bae401df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A traders'' association in Gujarat'),
            ('B', 'A forest conservation movement led by women in Uttarakhand'),
            ('C', 'A peasant uprising in Bihar'),
            ('D', 'A labour movement in Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '8729805ca963aac2d224afa7bae401df'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Narmada Bachao Andolan'' was against:',
    'The Narmada Bachao Andolan, led by Medha Patkar, campaigned against the Sardar Sarovar dam and the displacement it caused.',
    'easy',
    'Standard Reference',
    null,
    '88884f67704e8bf3ccd527222aab1426'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '88884f67704e8bf3ccd527222aab1426'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bauxite mining in the Eastern Ghats'),
            ('B', 'Nuclear testing at Pokhran'),
            ('C', 'Coal mining in Jharkhand'),
            ('D', 'The Sardar Sarovar dam project')
           ) as v(label, option_text)
 where q.question_hash = '88884f67704e8bf3ccd527222aab1426'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Gandhian and Ambedkarite'' debate in land reform was about:',
    'Gandhi favoured a decentralised village economy with a compromise with the zamindar, while Ambedkar wanted the complete abolition of zamindari and land to the tiller.',
    'hard',
    'Standard Reference',
    null,
    '19c0650a8376472af67b6f952ff16ffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '19c0650a8376472af67b6f952ff16ffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Whether to adopt a monetary policy'),
            ('B', 'How to fund irrigation'),
            ('C', 'Whether land reform should be landlord and ryot based'),
            ('D', 'Whether to industrialise')
           ) as v(label, option_text)
 where q.question_hash = '19c0650a8376472af67b6f952ff16ffd'
on conflict (question_id, label) do nothing;

-- geography | human-geography | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'The ''Deccan Development'' and ''Tribal Areas'' movements relate to:',
    'The Deccan Development movement and the Jharkhand and tribal movements sought development of the tribal belt and forest dwellers'' rights.',
    'hard',
    'Standard Reference',
    null,
    '39e0df8c380a48b49343bc4fa407ca20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39e0df8c380a48b49343bc4fa407ca20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Development of forest and tribal regions'),
            ('B', 'Urban housing'),
            ('C', 'Industrial safety'),
            ('D', 'Flood control')
           ) as v(label, option_text)
 where q.question_hash = '39e0df8c380a48b49343bc4fa407ca20'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which Indian city is known as the ''Manchester of the East''?',
    'Coimbatore, the major centre of the cotton textile industry, is called the Manchester of the East.',
    'medium',
    'Standard Reference',
    null,
    'f94ea0dd2e108d0c3e8c0588057d231e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f94ea0dd2e108d0c3e8c0588057d231e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Coimbatore'),
            ('B', 'Kanpur'),
            ('C', 'Ahmedabad'),
            ('D', 'Surat')
           ) as v(label, option_text)
 where q.question_hash = 'f94ea0dd2e108d0c3e8c0588057d231e'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which city is known as the ''Silicon Valley of India''?',
    'Bengaluru, with its large information technology and research base, is known as the Silicon Valley of India.',
    'easy',
    'Standard Reference',
    null,
    'ed51fc3981d02017be277a21ffdea843'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ed51fc3981d02017be277a21ffdea843'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Pune'),
            ('C', 'Hyderabad'),
            ('D', 'Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = 'ed51fc3981d02017be277a21ffdea843'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which city is known as the ''City of Nawabs''?',
    'Lucknow, the capital of the Awadh nawabs, is known as the City of Nawabs.',
    'easy',
    'Standard Reference',
    null,
    'f7176634a89c3a0d9a69fcfeec6f6412'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f7176634a89c3a0d9a69fcfeec6f6412'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhopal'),
            ('B', 'Jaipur'),
            ('C', 'Lucknow'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = 'f7176634a89c3a0d9a69fcfeec6f6412'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which city is known as the ''City of Pearls''?',
    'Hyderabad, famed for its pearls, is called the City of Pearls, though Surat is known as the City of Diamonds.',
    'medium',
    'Standard Reference',
    null,
    'd3a18c970edb018d6dc875833e502c29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd3a18c970edb018d6dc875833e502c29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhopal'),
            ('B', 'Hyderabad'),
            ('C', 'Jodhpur'),
            ('D', 'Surat')
           ) as v(label, option_text)
 where q.question_hash = 'd3a18c970edb018d6dc875833e502c29'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which city is known as the ''Rice Bowl of India''?',
    'Cuttack in Odisha, on the Mahanadi delta, is called the Rice Bowl of India because of its huge paddy output.',
    'medium',
    'Standard Reference',
    null,
    '90b00f802e1ebe10a346051090693f9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '90b00f802e1ebe10a346051090693f9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Patna'),
            ('B', 'Chennai'),
            ('C', 'Kolkata'),
            ('D', 'Cuttack')
           ) as v(label, option_text)
 where q.question_hash = '90b00f802e1ebe10a346051090693f9d'
on conflict (question_id, label) do nothing;

-- geography | human-geography | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which city is known as the ''City of Lakes''?',
    'Udaipur, with its series of artificial lakes, is called the City of Lakes or the Venice of the East.',
    'easy',
    'Standard Reference',
    null,
    '367a8b9b2400f86cb8646c3023709d2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '367a8b9b2400f86cb8646c3023709d2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahmedabad'),
            ('B', 'Udaipur'),
            ('C', 'Pune'),
            ('D', 'Bhopal')
           ) as v(label, option_text)
 where q.question_hash = '367a8b9b2400f86cb8646c3023709d2e'
on conflict (question_id, label) do nothing;

-- geography | human-geography | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'human-geography'),
    'Which city is known as the ''Paris of the East''?',
    'Hyderabad, with its broad avenues and monuments, is sometimes called the Paris of the East.',
    'medium',
    'Standard Reference',
    null,
    '42f93c1c32e9a00e21b0b37dc0fdd7ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '42f93c1c32e9a00e21b0b37dc0fdd7ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Kolkata'),
            ('C', 'Patna'),
            ('D', 'Lucknow')
           ) as v(label, option_text)
 where q.question_hash = '42f93c1c32e9a00e21b0b37dc0fdd7ab'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Golden Temple'' of Amritsar is dedicated to:',
    'The Harmandir Sahib, in the complex of the Golden Temple at Amritsar, is dedicated to the fourth Sikh Guru, Guru Arjan Dev.',
    'medium',
    'Standard Reference',
    null,
    '8ef4d4663cf003250c1f843b63deadc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8ef4d4663cf003250c1f843b63deadc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru Angad Dev'),
            ('B', 'Guru Nanak'),
            ('C', 'Guru Gobind Singh'),
            ('D', 'Guru Arjan Dev')
           ) as v(label, option_text)
 where q.question_hash = '8ef4d4663cf003250c1f843b63deadc4'
on conflict (question_id, label) do nothing;

-- geography | map-locations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The highest civilian award of India is the:',
    'The Bharat Ratna, instituted in 1954, is India''s highest civilian award.',
    'easy',
    'Standard Reference',
    null,
    'd56d78d1c629dcb2ff6a0c9a65f77cbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd56d78d1c629dcb2ff6a0c9a65f77cbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bharat Ratna'),
            ('B', 'Padma Vibhushan'),
            ('C', 'Param Vir Chakra'),
            ('D', 'Sahitya Akademi Award')
           ) as v(label, option_text)
 where q.question_hash = 'd56d78d1c629dcb2ff6a0c9a65f77cbc'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The headquarters of the Indian Air Force is at:',
    'The headquarters of the Indian Air Force is in New Delhi, with the operational command at Bangalore.',
    'medium',
    'Standard Reference',
    null,
    '47fba542bd4798992526ef125b015f77'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '47fba542bd4798992526ef125b015f77'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dehradun'),
            ('B', 'Hyderabad'),
            ('C', 'New Delhi'),
            ('D', 'Bangalore')
           ) as v(label, option_text)
 where q.question_hash = '47fba542bd4798992526ef125b015f77'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Sualkuchi'' and the ''Chandratal'' lake are in which state?',
    'The Sualkuchi Lake and Chandratal are high-altitude lakes in the upper Spiti valley of Himachal Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '1b5a12204ac68decf16275cbe50e6eb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1b5a12204ac68decf16275cbe50e6eb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jammu and Kashmir'),
            ('B', 'Ladakh'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Uttarakhand')
           ) as v(label, option_text)
 where q.question_hash = '1b5a12204ac68decf16275cbe50e6eb3'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Indus'' river enters India at which place?',
    'The Indus enters India at Demchok in Ladakh before flowing through Baltistan and Gilgit-Baltistan into Pakistan.',
    'medium',
    'Standard Reference',
    null,
    'a8badf0d0d62432c525c8688c2cc7814'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8badf0d0d62432c525c8688c2cc7814'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hundar in Nubra'),
            ('B', 'Demchok in Ladakh'),
            ('C', 'Gurdaspur in Punjab'),
            ('D', 'Khardung in Ladakh')
           ) as v(label, option_text)
 where q.question_hash = 'a8badf0d0d62432c525c8688c2cc7814'
on conflict (question_id, label) do nothing;

-- geography | map-locations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'The ''Rann of Kutch'' was formed by the:',
    'The Rann of Kutch was formed by the periodic overflow of the Kori and the Saraswati and by the Narmada and Tapti deltas.',
    'hard',
    'Standard Reference',
    null,
    '96cf5342c233ae978c837fc0d615b3e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96cf5342c233ae978c837fc0d615b3e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sutlej and Beas'),
            ('B', 'Tapti and Godavari'),
            ('C', 'Brahmaputra and Teesta'),
            ('D', 'Saraswati and Narmada')
           ) as v(label, option_text)
 where q.question_hash = '96cf5342c233ae978c837fc0d615b3e5'
on conflict (question_id, label) do nothing;

-- geography | map-locations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'geography'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'geography' and c.slug = 'map-locations'),
    'Which Indian state has the maximum number of districts?',
    'Uttar Pradesh has the largest number of districts, followed by Madhya Pradesh and Rajasthan.',
    'medium',
    'Standard Reference',
    null,
    'f1e8f729b6f63ae2464d4e4a07bfc519'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f1e8f729b6f63ae2464d4e4a07bfc519'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Maharashtra'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'f1e8f729b6f63ae2464d4e4a07bfc519'
on conflict (question_id, label) do nothing;

commit;
