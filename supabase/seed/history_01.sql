-- =============================================================================
-- history_01.sql — history question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Harappan site is famous for a dockyard with an inlet, a circular kiln for firing fire bricks and a warehouse complex?',
    'Lothal in Gujarat had a tidal dockyard with a warehouse complex and a circular fire-brick kiln, showing the Harappans'' maritime trading and brick-firing technology.',
    'easy',
    'NCERT Class XI',
    null,
    '645d2dca96f847ab9b984a59f4f36038'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '645d2dca96f847ab9b984a59f4f36038'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalibangan'),
            ('B', 'Lothal'),
            ('C', 'Harappa'),
            ('D', 'Banawali')
           ) as v(label, option_text)
 where q.question_hash = '645d2dca96f847ab9b984a59f4f36038'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The rock-cut signboard inscription found at Dholavira directs the authorities to do what?',
    'The Dholavira signboard inscription tells the authorities to keep the signboard in good repair so that the royal message continues to be displayed to the people.',
    'hard',
    'Standard Reference',
    null,
    '23103cb2374cf5230ccfd6843e2ee0c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23103cb2374cf5230ccfd6843e2ee0c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Store the royal orders in the treasury vault'),
            ('B', 'Use it as a boundary marker for the city walls'),
            ('C', 'Record the names of the city officials on it'),
            ('D', 'Keep the signboard in good repair and display the king''s message')
           ) as v(label, option_text)
 where q.question_hash = '23103cb2374cf5230ccfd6843e2ee0c5'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Great Bath at Mohenjo-daro was most probably used for what purpose?',
    'The Great Bath, with its watertight layer of bitumen and side drains, is generally interpreted as a public ritual bathing structure used by the Harappan people.',
    'easy',
    'NCERT Class XI',
    null,
    '335f674970a7f2d3207af9f47a52ccb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '335f674970a7f2d3207af9f47a52ccb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ritual bathing'),
            ('B', 'Storing drinking water'),
            ('C', 'Royal ceremonies of the king'),
            ('D', 'Storing the royal treasury')
           ) as v(label, option_text)
 where q.question_hash = '335f674970a7f2d3207af9f47a52ccb7'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Who first discovered the site of Harappa in 1921?',
    'Daya Ram Sahni discovered Harappa in 1921, and R. D. Banerji discovered Mohenjo-daro the following year, giving the civilisation its name.',
    'medium',
    'Standard Reference',
    null,
    '0b4b13421d797aac9d7a4e457a926073'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b4b13421d797aac9d7a4e457a926073'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M. S. Vats'),
            ('B', 'R. N. Mehta'),
            ('C', 'Daya Ram Sahni'),
            ('D', 'R. D. Banerji')
           ) as v(label, option_text)
 where q.question_hash = '0b4b13421d797aac9d7a4e457a926073'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Harappan site of Mohenjo-daro was discovered in 1922 by which archaeologist?',
    'R. D. Banerji discovered Mohenjo-daro in 1922 while Daya Ram Sahni had found Harappa a year earlier; both sites were excavated under John Marshall''s directorate.',
    'medium',
    'Standard Reference',
    null,
    '2f1a32fac04f9facb90407ad025abedc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f1a32fac04f9facb90407ad025abedc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'John Marshall'),
            ('B', 'A. H. Dan'),
            ('C', 'R. D. Banerji'),
            ('D', 'Daya Ram Sahni')
           ) as v(label, option_text)
 where q.question_hash = '2f1a32fac04f9facb90407ad025abedc'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which archaeologist first conducted systematic excavations at the Harappan site of Lothal in the 1950s?',
    'M. S. Vats excavated Lothal in 1955 and brought to light the dockyard, warehouse and the famed terracotta figurines known as the ''Music Party''.',
    'hard',
    'Standard Reference',
    null,
    '9e2156f79fe16e1ebaa5888045ac3a5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9e2156f79fe16e1ebaa5888045ac3a5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M. S. Vats'),
            ('B', 'J. P. Joshi'),
            ('C', 'S. R. Rao'),
            ('D', 'B. B. Lal')
           ) as v(label, option_text)
 where q.question_hash = '9e2156f79fe16e1ebaa5888045ac3a5c'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Who discovered the Harappan site of Dholavira in Kutch in the late 1960s?',
    'J. P. Joshi discovered Dholavira in 1967-68, and the site is remarkable for its three-part city plan, massive stone walls and elaborate water-harvesting system.',
    'medium',
    'Standard Reference',
    null,
    'ceb100bcb917d176bbabf06a0eb534bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ceb100bcb917d176bbabf06a0eb534bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'B. M. Chatterjee'),
            ('B', 'J. P. Joshi'),
            ('C', 'R. N. Mehta'),
            ('D', 'V. N. Misra')
           ) as v(label, option_text)
 where q.question_hash = 'ceb100bcb917d176bbabf06a0eb534bb'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which animal is most frequently depicted on the seal impressions of the Indus Valley Civilisation?',
    'The single-horned or unicorn bull is the animal most frequently represented on Harappan seals; the horse appears only rarely and in a debased form.',
    'easy',
    'NCERT Class XI',
    null,
    '01ec73099f619ecf6db03e212a16e882'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '01ec73099f619ecf6db03e212a16e882'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A horse'),
            ('B', 'A camel'),
            ('C', 'An elephant'),
            ('D', 'A unicorn or one-horned bull')
           ) as v(label, option_text)
 where q.question_hash = '01ec73099f619ecf6db03e212a16e882'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The script of the Indus Valley Civilisation is best described as',
    'The Harappan script remains undeciphered; only a few signs can be read with confidence and the underlying language is still debated.',
    'easy',
    'NCERT Class XI',
    null,
    '1071f608644e86e509476ac9bbd20c83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1071f608644e86e509476ac9bbd20c83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Still undeciphered and mostly pictographic in character'),
            ('B', 'Fully deciphered with phonetic values known'),
            ('C', 'A known variety of Brahmi'),
            ('D', 'A known variety of Kharoshthi')
           ) as v(label, option_text)
 where q.question_hash = '1071f608644e86e509476ac9bbd20c83'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Dholavira was divided into which three major divisions?',
    'Dholavira had a three-part plan: the Upper City on the highest mound, the Middle City on the lower plateau with sophisticated architecture, and the Lower City for residential settlement.',
    'medium',
    'Standard Reference',
    null,
    '31242d104ae07f23dd509e91d1de5b7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '31242d104ae07f23dd509e91d1de5b7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Royal City, Trading City and Temple Town'),
            ('B', 'Northern, Central and Southern City'),
            ('C', 'Upper City, Middle City and Lower City'),
            ('D', 'Citadel, Lower Town and Outer Town')
           ) as v(label, option_text)
 where q.question_hash = '31242d104ae07f23dd509e91d1de5b7d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The famous bronze statuette known as the Dancing Girl was found at which site?',
    'The Dancing Girl, cast by the lost-wax method, was unearthed at Mohenjo-daro and is the finest example of Harappan bronze art.',
    'easy',
    'NCERT Class XI',
    null,
    '367be0176ee272d7e4544b4a481e27fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '367be0176ee272d7e4544b4a481e27fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalibangan'),
            ('B', 'Mohenjo-daro'),
            ('C', 'Harappa'),
            ('D', 'Lothal')
           ) as v(label, option_text)
 where q.question_hash = '367be0176ee272d7e4544b4a481e27fc'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'In Mesopotamian records, the name Meluhha refers to which civilisation?',
    'Mesopotamian texts name the Harappan country Meluhha, and Mesopotamian-style seals, lapis lazuli and carnelian have been found at Harappan sites.',
    'hard',
    'Standard Reference',
    null,
    '7bf5cdccf8b1821548729de7503fc41e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7bf5cdccf8b1821548729de7503fc41e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sumerian city of Ur'),
            ('B', 'The Egyptian kingdom'),
            ('C', 'The Hittite empire'),
            ('D', 'The Harappan civilisation')
           ) as v(label, option_text)
 where q.question_hash = '7bf5cdccf8b1821548729de7503fc41e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which of the following was NOT known to the people of the Indus Valley Civilisation?',
    'The Harappans used copper, bronze and gold but the use of iron began in India only around the end of the first millennium BCE.',
    'medium',
    'NCERT Class XI',
    null,
    '4b3aa07dbbea4515b25a40db1df12253'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4b3aa07dbbea4515b25a40db1df12253'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Copper'),
            ('B', 'Bronze'),
            ('C', 'Gold'),
            ('D', 'Iron')
           ) as v(label, option_text)
 where q.question_hash = '4b3aa07dbbea4515b25a40db1df12253'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which textile material is definitely attested at Harappan sites?',
    'Thousands of copper and bronze spindle whorls at Harappan sites and the preservation of cotton fibres show that cotton textiles were woven and worn by the Harappans.',
    'medium',
    'NCERT Class XI',
    null,
    '1fe068032e5837872104aaeecbe36c9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1fe068032e5837872104aaeecbe36c9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wool of the Himalayan sheep'),
            ('B', 'Rayon'),
            ('C', 'Cotton'),
            ('D', 'Silk')
           ) as v(label, option_text)
 where q.question_hash = '1fe068032e5837872104aaeecbe36c9d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Harappan site in Rajasthan is known for fire altars and terracotta figures of standing men and dancing women?',
    'Kalibangan on the banks of the Ghaggar in Rajasthan yielded fire altars with burnt offering cakes and a notable series of terracotta figurines.',
    'medium',
    'NCERT Class XI',
    null,
    '0c5456408cb3f0efc4baa0476b68ab0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c5456408cb3f0efc4baa0476b68ab0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhir'),
            ('B', 'Kalibangan'),
            ('C', 'Banawali'),
            ('D', 'Rakhigarhi')
           ) as v(label, option_text)
 where q.question_hash = '0c5456408cb3f0efc4baa0476b68ab0c'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which is the largest Harappan site in India by area?',
    'Rakhigarhi in Haryana, covering about 100 hectares, is the largest known Harappan settlement in India, followed by Mohenjo-daro at around 100 hectares of the occupied area.',
    'medium',
    'Standard Reference',
    null,
    '3a8d6ec89b263291657fb81c2a2e094a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3a8d6ec89b263291657fb81c2a2e094a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rakhigarhi'),
            ('B', 'Mohenjo-daro'),
            ('C', 'Harappa'),
            ('D', 'Dholavira')
           ) as v(label, option_text)
 where q.question_hash = '3a8d6ec89b263291657fb81c2a2e094a'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The dockyard at Lothal was connected to which river?',
    'The Lothal dockyard was linked to an old course of the Sabarmati river through a channel; the present course of the river was later diverted for the Sardar Sarovar dam.',
    'hard',
    'Standard Reference',
    null,
    '059051f83d7fcb55d7c09993363db76d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '059051f83d7fcb55d7c09993363db76d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sabarmati'),
            ('B', 'Narmada'),
            ('C', 'Tapti'),
            ('D', 'Mahanadi')
           ) as v(label, option_text)
 where q.question_hash = '059051f83d7fcb55d7c09993363db76d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The large structures containing rows of square compartments found at Harappa and Mohenjo-daro are identified as',
    'The so-called granaries at Harappa and Mohenjo-daro, with their regular compartments of mud-brick floors, are generally taken to be storehouses for grain rather than royal palaces.',
    'medium',
    'NCERT Class XI',
    null,
    '66b085476da3450446a3a6b0cbab8824'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '66b085476da3450446a3a6b0cbab8824'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Temples'),
            ('B', 'Barracks of the army'),
            ('C', 'Granaries'),
            ('D', 'Palaces of the king')
           ) as v(label, option_text)
 where q.question_hash = '66b085476da3450446a3a6b0cbab8824'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Dholavira is sometimes described as the City of Water. What best explains this description?',
    'Dholavira had a sophisticated water-harvesting system with large reservoirs, check dams, channels and nearly every house had a rooftop rainwater collection system.',
    'medium',
    'Standard Reference',
    null,
    '94e9282535c24675850a499fa9660139'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '94e9282535c24675850a499fa9660139'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its houses had sloping roofs for collecting rain water'),
            ('B', 'It had an elaborate system of reservoirs and channels for collecting and conserving rain water'),
            ('C', 'It was built on an island surrounded by the sea'),
            ('D', 'It had the largest number of wells of any ancient city')
           ) as v(label, option_text)
 where q.question_hash = '94e9282535c24675850a499fa9660139'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Mesopotamian-style cylinder seals and Mesopotamian goods found at Harappan sites point to which conclusion?',
    'Harappan seals, weights and goods of Mesopotamian origin, together with Mesopotamian records of Meluhha, establish direct long-distance trade between the two regions.',
    'medium',
    'NCERT Class XI',
    null,
    'a04507d70a4d088df3d7b8f31cab7b41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a04507d70a4d088df3d7b8f31cab7b41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harappan merchants had settled permanently in Iraq'),
            ('B', 'The Harappan script was derived from cuneiform'),
            ('C', 'Harappan culture was an offshoot of Sumerian culture'),
            ('D', 'Harappan traders had direct contact with Mesopotamia')
           ) as v(label, option_text)
 where q.question_hash = 'a04507d70a4d088df3d7b8f31cab7b41'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The boat motif is significant on the seals of the Indus Valley Civilisation because it',
    'The seal impression of a boat with paddlers is widely read as evidence of the maritime trade that Harappa and Lothal depended on; similar boat motifs appear in Mesopotamia.',
    'medium',
    'Standard Reference',
    null,
    '538737e66dc6dcdd002478daf44c6b97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '538737e66dc6dcdd002478daf44c6b97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indicates the Harappans used boats only for religious ritual'),
            ('B', 'Suggests the importance of water transport in Harappan trade'),
            ('C', 'Shows that the Harappans were expert shipbuilders in the Mediterranean'),
            ('D', 'Proves the Harappans had conquered Mesopotamia')
           ) as v(label, option_text)
 where q.question_hash = '538737e66dc6dcdd002478daf44c6b97'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The well-known Pashupati seal was discovered at which Harappan site?',
    'The Pashupati seal, showing a horned seated figure surrounded by animals, was found at Mohenjo-daro and is often linked with proto-Shiva imagery.',
    'medium',
    'Standard Reference',
    null,
    'f4c8f78e9f6e7d34a720f7e8ff4d7539'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f4c8f78e9f6e7d34a720f7e8ff4d7539'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harappa'),
            ('B', 'Lothal'),
            ('C', 'Dholavira'),
            ('D', 'Mohenjo-daro')
           ) as v(label, option_text)
 where q.question_hash = 'f4c8f78e9f6e7d34a720f7e8ff4d7539'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which of the following is true of Harappan economic life?',
    'No coins are known from the Harappan period; goods were exchanged through barter, with the use of standardised weights and measures and of shell, copper and stone currencies.',
    'medium',
    'NCERT Class XI',
    null,
    '8c7650cafc2c6e643746400f3258f56e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c7650cafc2c6e643746400f3258f56e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Metallic currency was unknown; trade was conducted through barter and weighed goods'),
            ('B', 'Coins of gold and silver were minted by the Harappan state'),
            ('C', 'Trade was carried on with wooden punch-marked coins'),
            ('D', 'The state issued copper coins for paying taxes')
           ) as v(label, option_text)
 where q.question_hash = '8c7650cafc2c6e643746400f3258f56e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Copper and stone balance beams recovered from Harappan sites indicate that the Harappans',
    'The beams and the geometrically graded cubical weights testify to a carefully regulated system of weighing that made long-distance trade possible.',
    'medium',
    'NCERT Class XI',
    null,
    '0b41100ffcdfc44b3acc0a1431788c48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b41100ffcdfc44b3acc0a1431788c48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Imposed a uniform system of land revenue'),
            ('B', 'Measured land by the square yard'),
            ('C', 'Used a standardised system of weighing in trade'),
            ('D', 'Practised coin minting')
           ) as v(label, option_text)
 where q.question_hash = '0b41100ffcdfc44b3acc0a1431788c48'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which feature of Harappan urban life is conspicuously absent, as compared to other Bronze Age societies of the time?',
    'No palaces, royal tombs or monumental structures have been found at Harappan sites, and no inscription names a king, so the form of Harappan political authority remains uncertain.',
    'medium',
    'NCERT Class XI',
    null,
    'bff6a1ad671e879b7dfe71d89bd30e31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bff6a1ad671e879b7dfe71d89bd30e31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Weighted trade goods'),
            ('B', 'Palaces and clear evidence of royal authority'),
            ('C', 'Street drainage'),
            ('D', 'Standardised bricks')
           ) as v(label, option_text)
 where q.question_hash = 'bff6a1ad671e879b7dfe71d89bd30e31'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The typical Harappan town consisted of a citadel and a lower town. What was the usual position of the citadel?',
    'At Harappa, Mohenjo-daro, Kalibangan and Lothal the citadel stood on the higher mound and the lower town of residential quarters spread around it.',
    'medium',
    'NCERT Class XI',
    null,
    '45d2a4e19fbba04855776b49532523f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45d2a4e19fbba04855776b49532523f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'At the same level as the lower town'),
            ('B', 'Only in the north-west corner of the settlement'),
            ('C', 'On the higher mound, with the lower town spreading around it'),
            ('D', 'Always to the west of the lower town')
           ) as v(label, option_text)
 where q.question_hash = '45d2a4e19fbba04855776b49532523f4'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which team of archaeologists excavated Kalibangan in 1961?',
    'A. H. Dan and B. B. Lal excavated Kalibangan in 1961 and identified the prehistoric portion of the site along with the Harappan citadel and lower town.',
    'hard',
    'Standard Reference',
    null,
    'ca39a23792132983f16779360863a2fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ca39a23792132983f16779360863a2fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'R. N. Mehta and B. B. Lal'),
            ('B', 'S. R. Rao and D. R. Sahni'),
            ('C', 'M. S. Vats and J. P. Joshi'),
            ('D', 'A. H. Dan and B. B. Lal')
           ) as v(label, option_text)
 where q.question_hash = 'ca39a23792132983f16779360863a2fb'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Who discovered the Harappan site of Rakhigarhi in Haryana in 1963?',
    'Surbhi Singh identified Rakhigarhi in 1963; systematic excavation was later carried out by Amarendra Nath, who recovered the skeleton of a woman buried with gold ornaments.',
    'hard',
    'Standard Reference',
    null,
    '6f010dedb4a634372da2ae5205c70b63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6f010dedb4a634372da2ae5205c70b63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Surbhi Singh'),
            ('B', 'Amarendra Nath'),
            ('C', 'J. P. Joshi'),
            ('D', 'R. N. Mehta')
           ) as v(label, option_text)
 where q.question_hash = '6f010dedb4a634372da2ae5205c70b63'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which archaeologist directed the first scientific excavations at Harappa and later at Mohenjo-daro?',
    'Mortimer Wheeler excavated at Harappa in 1946 and led the excavations at Mohenjo-daro from 1954, when the division of the site into citadel and lower town was confirmed.',
    'medium',
    'Standard Reference',
    null,
    '875edf6a8e57d0a466672a9fa0844df4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '875edf6a8e57d0a466672a9fa0844df4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'H. D. Sankalia'),
            ('B', 'R. D. Banerji'),
            ('C', 'Mortimer Wheeler'),
            ('D', 'John Marshall')
           ) as v(label, option_text)
 where q.question_hash = '875edf6a8e57d0a466672a9fa0844df4'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Harappan site of Kalibangan was brought to light in 1962 by which archaeologist?',
    'R. N. Mehta discovered Kalibangan in 1962, and the Harappan phase of the site was excavated in the following years.',
    'hard',
    'Standard Reference',
    null,
    '693463abac2a4337dfd48baacaa02f96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '693463abac2a4337dfd48baacaa02f96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'S. R. Rao'),
            ('B', 'R. N. Mehta'),
            ('C', 'A. H. Dan'),
            ('D', 'B. B. Lal')
           ) as v(label, option_text)
 where q.question_hash = '693463abac2a4337dfd48baacaa02f96'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Banawali, a Harappan site in Haryana, is located on the banks of which river?',
    'Banawali in Bhiwani district of Haryana lies on the bank of the Saraswati and has yielded both pre-Harappan and Harappan levels of occupation.',
    'hard',
    'Standard Reference',
    null,
    '10ce304153ed7684f81d6657541922e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '10ce304153ed7684f81d6657541922e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ghaggar'),
            ('B', 'Sutlej'),
            ('C', 'Yamuna'),
            ('D', 'Saraswati')
           ) as v(label, option_text)
 where q.question_hash = '10ce304153ed7684f81d6657541922e5'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Indus script found on Harappan seals consists of roughly how many distinct signs?',
    'The Harappan script contains roughly 400 known signs, of which only a small number can be read with any confidence.',
    'hard',
    'Standard Reference',
    null,
    'fc29102770d85b8e2f89038ad442b2c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc29102770d85b8e2f89038ad442b2c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'About 400'),
            ('B', 'About 40'),
            ('C', 'About 4,000'),
            ('D', 'About 60')
           ) as v(label, option_text)
 where q.question_hash = 'fc29102770d85b8e2f89038ad442b2c4'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Harappan seals have been found at sites in Bahrain, in the Persian Gulf region. Which Gulf island is this?',
    'Harappan seals and Harappan-type goods found at Qal''at al-Bahrain on the island of Dilmun testify to Gulf trade routes linking the Indus with Mesopotamia.',
    'hard',
    'Standard Reference',
    null,
    '35a41cb727444de89891255b5256ee10'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '35a41cb727444de89891255b5256ee10'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muscat'),
            ('B', 'Dilmun'),
            ('C', 'Ubar'),
            ('D', 'Socotra')
           ) as v(label, option_text)
 where q.question_hash = '35a41cb727444de89891255b5256ee10'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Lapis lazuli imported by the Harappans most probably came from',
    'Lapis lazuli reached Harappan sites from the Badakhshan region of Afghanistan, evidence of Harappan trade into the north-west and of the Aryan-speaking peoples'' presence there.',
    'hard',
    'Standard Reference',
    null,
    '7f135462b713057a3db65fa606819a78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7f135462b713057a3db65fa606819a78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sri Lanka'),
            ('B', 'Rajasthan'),
            ('C', 'Afghanistan'),
            ('D', 'Burma')
           ) as v(label, option_text)
 where q.question_hash = '7f135462b713057a3db65fa606819a78'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Rigveda consists of how many mandalas?',
    'The Rigveda is divided into ten mandalas, of which the second is the collection of the family hymns of the Vishvamitra and other rishis, and the last is the famous Hymn of Creation.',
    'easy',
    'NCERT Class XI',
    null,
    '61a0624bd9ed6baf5a3919081b0939c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '61a0624bd9ed6baf5a3919081b0939c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ten'),
            ('B', 'Seven'),
            ('C', 'Twelve'),
            ('D', 'Eight')
           ) as v(label, option_text)
 where q.question_hash = '61a0624bd9ed6baf5a3919081b0939c1'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which four categories of priests performed the sacrifices of the early Vedic period?',
    'The hotri supervised the ritual, the udgatri sang the hymns, the adhvaryu managed the offerings and the brahman acted as the priestly supervisor of the whole sacrifice.',
    'medium',
    'NCERT Class XI',
    null,
    '95349ce0dc1233b0e7857fa916be1ad7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '95349ce0dc1233b0e7857fa916be1ad7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hotri, Brahmana, Kshatriya and Vaishya'),
            ('B', 'Hotra, Brahmana, Vanaprastha and Sannyasa'),
            ('C', 'Adhvaryu, Udgatri, Grihastha and Vanaprastha'),
            ('D', 'Hotri, Udgatri, Adhvaryu and Brahman')
           ) as v(label, option_text)
 where q.question_hash = '95349ce0dc1233b0e7857fa916be1ad7'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Samaveda consists mainly of',
    'The Samaveda is essentially a collection of melodies borrowed from the Rigveda and set to tunes for the soma sacrifice, with only a few original verses.',
    'easy',
    'NCERT Class XI',
    null,
    '0f92ef6df5097ec55c396dd73fc7d53b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f92ef6df5097ec55c396dd73fc7d53b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Spells and charms for healing'),
            ('B', 'Prose accounts of royal sacrifices'),
            ('C', 'Philosophical dialogues between sages'),
            ('D', 'Melodies or chants taken from the Rigveda for use in sacrifices')
           ) as v(label, option_text)
 where q.question_hash = '0f92ef6df5097ec55c396dd73fc7d53b'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Veda is known as the Veda of Mantras containing sacrificial formulas and some prose, and is the oldest of the four in prose style?',
    'The Yajurveda gives the sacrificial formulas in prose, as in the Shatru Shuddhi, and the Brihadaranyaka Upanishad, its appendix, contains some of the earliest prose in Sanskrit.',
    'medium',
    'NCERT Class XI',
    null,
    '04dbd4c46eb88ae289966c7ce7322e29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '04dbd4c46eb88ae289966c7ce7322e29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Samaveda'),
            ('B', 'Rigveda'),
            ('C', 'Yajurveda'),
            ('D', 'Atharvaveda')
           ) as v(label, option_text)
 where q.question_hash = '04dbd4c46eb88ae289966c7ce7322e29'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Atharvaveda is primarily a collection of',
    'The Atharvaveda deals with everyday concerns such as disease, childbirth, agriculture and sorcery, and reflects the survival of pre-Vedic belief and practice.',
    'easy',
    'NCERT Class XI',
    null,
    '1bc9b0060e25126b2b6f66d130e5607d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1bc9b0060e25126b2b6f66d130e5607d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rules for the conduct of kings'),
            ('B', 'Spells, charms and prayers for health, prosperity and protection'),
            ('C', 'Hymns praising the god Indra'),
            ('D', 'Sacrificial formulae for the soma rite')
           ) as v(label, option_text)
 where q.question_hash = '1bc9b0060e25126b2b6f66d130e5607d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Satapatha Brahmana, a key later Vedic text, belongs to which region?',
    'The Satapatha Brahmana was composed in the region of Kuru and Panchala and contains many legends and myths of the Vedic period.',
    'hard',
    'Standard Reference',
    null,
    '15f9a1178d2ef5792c3d7b2e65184c42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '15f9a1178d2ef5792c3d7b2e65184c42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kuru-Panchala'),
            ('B', 'Gandhara'),
            ('C', 'Kosala'),
            ('D', 'Avanti')
           ) as v(label, option_text)
 where q.question_hash = '15f9a1178d2ef5792c3d7b2e65184c42'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Rigvedic king famous for performing the Ashvamedha horse sacrifice was',
    'The Rigveda describes the sacrifices of the king Dilipa of the Ikshvaku lineage, including the famous horse sacrifice praised in the Sudra Sukta.',
    'hard',
    'Standard Reference',
    null,
    'bc0ba1061b396bfff739eac3dbcb4b26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bc0ba1061b396bfff739eac3dbcb4b26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dilipa'),
            ('B', 'Janaka'),
            ('C', 'Harishchandra'),
            ('D', 'Raja Harishchandra of the Puranic era')
           ) as v(label, option_text)
 where q.question_hash = 'bc0ba1061b396bfff739eac3dbcb4b26'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The four varnas are first clearly described in which Rigvedic hymn?',
    'The tenth mandala''s Purusha Sukta describes the sacrifice of the primordial being Purusha from whose body the four varnas and the world were born.',
    'medium',
    'NCERT Class XI',
    null,
    '2cf3edf31158c97c3b75e2de3b77c92f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2cf3edf31158c97c3b75e2de3b77c92f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sukta of the Horse'),
            ('B', 'Purusha Sukta'),
            ('C', 'Nasadiya Sukta'),
            ('D', 'Hymn of the Frogs')
           ) as v(label, option_text)
 where q.question_hash = '2cf3edf31158c97c3b75e2de3b77c92f'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The concept of Rta, the divinely ordained order that regulates the universe, is associated in the Rigveda with which deity?',
    'Varuna is the upholder of Rta in the Rigveda, the moral and cosmic order whose transgressors bring on their own punishment.',
    'medium',
    'Standard Reference',
    null,
    '72da097b1d7008de11581e1ad911de96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '72da097b1d7008de11581e1ad911de96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indra'),
            ('B', 'Soma'),
            ('C', 'Varuna'),
            ('D', 'Agni')
           ) as v(label, option_text)
 where q.question_hash = '72da097b1d7008de11581e1ad911de96'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The famous Hymn of Creation, or Nasadiya Sukta, occurs in which mandala of the Rigveda?',
    'The Nasadiya Sukta, in the closing verses of the tenth mandala, reflects on how the universe was created out of a formless void.',
    'easy',
    'NCERT Class XI',
    null,
    '5bbf0dfa59b9105b326d2710f8afbaa0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5bbf0dfa59b9105b326d2710f8afbaa0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The second'),
            ('B', 'The fifth'),
            ('C', 'The seventh'),
            ('D', 'The tenth')
           ) as v(label, option_text)
 where q.question_hash = '5bbf0dfa59b9105b326d2710f8afbaa0'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The four stages of life, or ashramas, recognised in later Vedic and post-Vedic society were',
    'Life was divided into the student stage, the householder stage, the forest-dweller stage and the renouncer stage, as set out in the later Vedic texts and the Dharmashastra.',
    'easy',
    'NCERT Class XI',
    null,
    '1a4b57e5a9ef1e91c6abd3e11003b6de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1a4b57e5a9ef1e91c6abd3e11003b6de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guru, Acharya, Upadhyaya and Purohita'),
            ('B', 'Raja, Mantri, purohita and Vaideya'),
            ('C', 'Brahmacharin, Grihastha, Vanaprastha and Sannyasa'),
            ('D', 'Brahmin, Kshatriya, Vaishya and Shudra')
           ) as v(label, option_text)
 where q.question_hash = '1a4b57e5a9ef1e91c6abd3e11003b6de'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'In early Vedic polity, the Sabha and the Samiti are usually understood as',
    'The Sabha was a smaller council of elders that dealt with matters of importance, while the Samiti was the assembly of the whole people that elected the king and decided common issues.',
    'hard',
    'NCERT Class XI',
    null,
    '0c5797aed9c64c7386a9e2483749d458'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c5797aed9c64c7386a9e2483749d458'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The king''s assembly and the judicial court'),
            ('B', 'The Sabha of elders and the Samiti of the whole community'),
            ('C', 'Two names for the royal court'),
            ('D', 'A council of priests and a council of soldiers')
           ) as v(label, option_text)
 where q.question_hash = '0c5797aed9c64c7386a9e2483749d458'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'In the Rigvedic polity, the king was chosen by',
    'Rigvedic kings were chosen by the Jana or the Kula, and the texts emphasise that a king who harms his people should be abandoned, as in the fable of the frogs and the cranes.',
    'hard',
    'NCERT Class XI',
    null,
    '040aef826e4efd58dbff0ee98c68e669'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '040aef826e4efd58dbff0ee98c68e669'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hereditary succession from father to son'),
            ('B', 'Election by the Brahmana scholars alone'),
            ('C', 'Appointment by the tribal assembly of neighbouring clans'),
            ('D', 'The people or the clan, and remained answerable to them')
           ) as v(label, option_text)
 where q.question_hash = '040aef826e4efd58dbff0ee98c68e669'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which goddess in the Rigveda is associated with speech, learning and the flow of rivers?',
    'Sarasvati appears in the Rigveda as a river goddess and as the deity of speech and learning, a forerunner of the later goddess of learning.',
    'easy',
    'NCERT Class XI',
    null,
    '4df058aa68392de3afd982f242711db7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4df058aa68392de3afd982f242711db7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarasvati'),
            ('B', 'Indrani'),
            ('C', 'Prithvi'),
            ('D', 'Urvashi')
           ) as v(label, option_text)
 where q.question_hash = '4df058aa68392de3afd982f242711db7'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The distinction between a Guru and an Acharya in ancient India was that',
    'Gurus taught one or two pupils free of charge, whereas Acharyas took fees and taught larger numbers of students, which helped sustain the expanding system of education.',
    'hard',
    'NCERT Class XI',
    null,
    '0f552c45fba9a05b43363cecab3bf42d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0f552c45fba9a05b43363cecab3bf42d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Guru was a teacher of warriors while the Acharya taught only Brahmins'),
            ('B', 'The Guru taught one or two disciples without charging fees, while the Acharya taught many students'),
            ('C', 'The Guru taught the Vedas while the Acharya taught medicine'),
            ('D', 'The Guru was a priest while the Acharya was a king')
           ) as v(label, option_text)
 where q.question_hash = '0f552c45fba9a05b43363cecab3bf42d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The earliest Vedic literature in India was written in which script?',
    'The Rigveda was composed orally and later written in the Devanagari script; the Brahmana and Sutra literature of the later Vedic period was also recorded in early Brahmi.',
    'medium',
    'Standard Reference',
    null,
    '8621bd74c23a868c4350b858e621f6c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8621bd74c23a868c4350b858e621f6c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Devanagari'),
            ('B', 'Brahmi'),
            ('C', 'Kharoshthi'),
            ('D', 'Sharada')
           ) as v(label, option_text)
 where q.question_hash = '8621bd74c23a868c4350b858e621f6c5'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Ashtadhyayi, the earliest known Sanskrit grammar, was composed by',
    'Panini''s Ashtadhyayi, written around the fourth century BCE, describes Sanskrit in about four thousand rules and marks the beginning of the scientific study of language.',
    'easy',
    'NCERT Class XI',
    null,
    '2629a55d1d71ceac61304a0519a868b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2629a55d1d71ceac61304a0519a868b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yaska'),
            ('B', 'Patanjali'),
            ('C', 'Bharadvaja'),
            ('D', 'Panini')
           ) as v(label, option_text)
 where q.question_hash = '2629a55d1d71ceac61304a0519a868b2'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Nirukta, an early etymological work explaining the meaning of Vedic words, was written by',
    'Yaska''s Nirukta is a significant early work on the etymology of Vedic words and throws light on the religious and social background of the Rigvedic period.',
    'hard',
    'Standard Reference',
    null,
    '937d0b81e564916c7e8520380e65c5a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '937d0b81e564916c7e8520380e65c5a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Patanjali'),
            ('B', 'Sakyamitra'),
            ('C', 'Yaska'),
            ('D', 'Panini')
           ) as v(label, option_text)
 where q.question_hash = '937d0b81e564916c7e8520380e65c5a8'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Mahabhashya, a commentary on Panini''s grammar, was written by',
    'Patanjali''s Mahabhashya of the second century BCE is the first dated grammatical work of the Indian tradition and discusses both language and polity.',
    'hard',
    'Standard Reference',
    null,
    '0c9811b0b8d5ad89eeaa3cf756c7a8c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0c9811b0b8d5ad89eeaa3cf756c7a8c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Patanjali'),
            ('B', 'Yaska'),
            ('C', 'Vararuci'),
            ('D', 'Bhamaha')
           ) as v(label, option_text)
 where q.question_hash = '0c9811b0b8d5ad89eeaa3cf756c7a8c7'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which deity was the most prominent in the Rigveda and is celebrated for slaying the drought demon Vritra?',
    'Indra is the most frequently invoked deity in the Rigveda and is celebrated as the slayer of Vritra and as the giver of rain and cattle.',
    'easy',
    'NCERT Class XI',
    null,
    'cf3bb48f9822598193e564badad56e8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf3bb48f9822598193e564badad56e8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yama'),
            ('B', 'Indra'),
            ('C', 'Agni'),
            ('D', 'Soma')
           ) as v(label, option_text)
 where q.question_hash = 'cf3bb48f9822598193e564badad56e8f'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Hymn of the Frogs, notable for its democratic overtones, occurs in which mandala?',
    'The seventh mandala of the Rigveda contains the Hymn of the Frogs, which describes the Frogs as bold, singing warriors who ask their leader for a king.',
    'hard',
    'Standard Reference',
    null,
    '55813cf463d822e7763a22d087e349cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '55813cf463d822e7763a22d087e349cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tenth'),
            ('B', 'The first'),
            ('C', 'The third'),
            ('D', 'The seventh')
           ) as v(label, option_text)
 where q.question_hash = '55813cf463d822e7763a22d087e349cc'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The later Vedic period in India is generally dated as',
    'Historians date the Rigvedic or early Vedic period to about 1500-1000 BCE and the later Vedic period to about 1000-600 BCE.',
    'medium',
    'NCERT Class XI',
    null,
    'f38ab1aff3d87f191f68e2aedfa9f9b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f38ab1aff3d87f191f68e2aedfa9f9b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '600 to 300 BCE'),
            ('B', '300 BCE to 200 CE'),
            ('C', '1000 to 600 BCE'),
            ('D', '1500 to 1000 BCE')
           ) as v(label, option_text)
 where q.question_hash = 'f38ab1aff3d87f191f68e2aedfa9f9b7'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The position of women in early Vedic society is best described as',
    'Early Vedic texts speak of women as educated, able to own property and to participate in sacrifices; the harsher restrictions belong to the later post-Vedic codes.',
    'medium',
    'NCERT Class XI',
    null,
    '1f0f455cac250fa0817e222156d8e620'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1f0f455cac250fa0817e222156d8e620'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They were regarded as inauspicious and were not permitted to enter temples'),
            ('B', 'They could own property, be educated and take part in religious ceremonies'),
            ('C', 'They were strictly confined to the household'),
            ('D', 'They were excluded from all Vedic sacrifices')
           ) as v(label, option_text)
 where q.question_hash = '1f0f455cac250fa0817e222156d8e620'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which region is identified as the homeland of the later Vedic texts such as the Brihadaranyaka Upanishad?',
    'The later Vedic literature emerged in the Kuru-Panchala region of the Ganga-Yamuna Doab, where the Kurus and Panchalas were the dominant tribes.',
    'medium',
    'NCERT Class XI',
    null,
    'cee0f037fab47304d4cffaafabd95563'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cee0f037fab47304d4cffaafabd95563'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamraparni'),
            ('B', 'Panchala-Nanda country'),
            ('C', 'Kuru-Panchala'),
            ('D', 'Magadha')
           ) as v(label, option_text)
 where q.question_hash = 'cee0f037fab47304d4cffaafabd95563'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The region of the later Vedic period that is clearly identifiable archaeologically with the Ghaggar-Hakra area was',
    'The Sapta Sindhu, the land of the seven rivers in the Rigveda, is generally identified with the Ghaggar-Hakra region in north-west India and Punjab.',
    'medium',
    'NCERT Class XI',
    null,
    'd667c3d96768cd37b0a7ab8c802ee7bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd667c3d96768cd37b0a7ab8c802ee7bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sapta Sindhu region'),
            ('B', 'The Magadha basin'),
            ('C', 'The Deccan plateau'),
            ('D', 'The Konkan coast')
           ) as v(label, option_text)
 where q.question_hash = 'd667c3d96768cd37b0a7ab8c802ee7bf'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Bhagavad Gita, a key text of later Vedic literature, belongs to which original text?',
    'The Bhagavad Gita is a philosophical discourse within the Mahabharata and forms part of the later Vedic corpus of Hindu religious literature.',
    'easy',
    'NCERT Class XI',
    null,
    'ed23e2e1f96caced0cdfeac6751ce9d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ed23e2e1f96caced0cdfeac6751ce9d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ramayana'),
            ('B', 'The Arthashastra'),
            ('C', 'The Mahabhashya'),
            ('D', 'The Mahabharata')
           ) as v(label, option_text)
 where q.question_hash = 'ed23e2e1f96caced0cdfeac6751ce9d9'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The earliest reference to the region of Magadha is found in which text?',
    'Magadha is mentioned in the Atharvaveda as a region, and it is only in later Buddhist and Puranic texts that it emerges as an imperial power.',
    'hard',
    'Standard Reference',
    null,
    '82500e3cde4da427c7f434ba9b198219'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '82500e3cde4da427c7f434ba9b198219'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Mahabharata'),
            ('B', 'The Atharvaveda'),
            ('C', 'The Rigveda'),
            ('D', 'The Yajurveda')
           ) as v(label, option_text)
 where q.question_hash = '82500e3cde4da427c7f434ba9b198219'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Who founded the Magadha kingdom with its capital at Rajagriha?',
    'Shishunaga founded the Magadha kingdom and made Rajagriha the capital; the Haryanka ruler Bimbisara later expanded the empire and the Nandas made it a great power.',
    'medium',
    'Standard Reference',
    null,
    'a589967da05ad3f979fe06de3fd8cd81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a589967da05ad3f979fe06de3fd8cd81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bimbisara'),
            ('B', 'Gautama Buddha'),
            ('C', 'Mahapadma Nanda'),
            ('D', 'Shishunaga')
           ) as v(label, option_text)
 where q.question_hash = 'a589967da05ad3f979fe06de3fd8cd81'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Bimbisara, the first important Haryanka ruler of Magadha, is known to have',
    'Bimbisara extended Magadha at the cost of Kosala and the Gangaridai, and through marriage to Kosala and other royal houses he built alliances with most of the Mahajanapadas.',
    'medium',
    'NCERT Class XI',
    null,
    '145958f5cf78ddc538caf1932418e86b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '145958f5cf78ddc538caf1932418e86b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Expanded Magadha into an imperial power by conquering Kosala and the Gangaridai'),
            ('B', 'Founded the first Maurya dynasty'),
            ('C', 'Defeated the Persians at Hydaspes'),
            ('D', 'Compiled the Arthashastra')
           ) as v(label, option_text)
 where q.question_hash = '145958f5cf78ddc538caf1932418e86b'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Ajatashatru of Magadha is traditionally credited with',
    'Buddhist sources credit Ajatashatru with the ratha-mushti, a war chariot with a sharp rotating blade on its axle, used in his war against the Mallas.',
    'hard',
    'Standard Reference',
    null,
    '99427a3d444b777368fbad24d5ef7d18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '99427a3d444b777368fbad24d5ef7d18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The conquest of Egypt for trade'),
            ('B', 'The erection of the first Ashokan pillar'),
            ('C', 'The use of the war chariot with a wooden arm and siege devices against the Malla republic'),
            ('D', 'The founding of the Haryanka dynasty')
           ) as v(label, option_text)
 where q.question_hash = '99427a3d444b777368fbad24d5ef7d18'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Gangaridai, the region conquered by Bimbisara, lay in the',
    'Gangaridai, the region of the Ganga delta, is one of the areas Bimbisara is said to have brought under Magadha''s control.',
    'hard',
    'Standard Reference',
    null,
    '188425de6981dac6bf6bdcd3ec0aebb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '188425de6981dac6bf6bdcd3ec0aebb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deccan plateau'),
            ('B', 'Kabul valley'),
            ('C', 'Thar desert'),
            ('D', 'Ganga delta region')
           ) as v(label, option_text)
 where q.question_hash = '188425de6981dac6bf6bdcd3ec0aebb4'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Nanda dynasty of Magadha is described in Greek accounts as being ruled by',
    'Megasthenes, writing in the Mauryan period, refers to the Nanda king Dhana Nanda as prapotamos, implying that the Nandas had already built a large empire before the Mauryas.',
    'medium',
    'Standard Reference',
    null,
    'a39bdffe01d11a09b60c5b1e7a70457f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a39bdffe01d11a09b60c5b1e7a70457f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhana Nanda'),
            ('B', 'Chandragupta'),
            ('C', 'Pushyamitra'),
            ('D', 'Bimbisara')
           ) as v(label, option_text)
 where q.question_hash = 'a39bdffe01d11a09b60c5b1e7a70457f'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'How many Mahajanapadas are conventionally listed in the post-Vedic period?',
    'Sixteen Mahajanapadas are listed in the Buddhist texts as powerful states of the period, with Magadha gradually rising over them.',
    'easy',
    'NCERT Class XI',
    null,
    '8ec014c02f23a5ea64a68405c4574776'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8ec014c02f23a5ea64a68405c4574776'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Twelve'),
            ('B', 'Thirty-two'),
            ('C', 'Sixteen'),
            ('D', 'Eight')
           ) as v(label, option_text)
 where q.question_hash = '8ec014c02f23a5ea64a68405c4574776'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Mahajanapada had its capital at Ayodhya?',
    'Kosala, one of the foremost Mahajanapadas, had its capital at Ayodhya and was ruled during the Buddha''s lifetime by Prasenajit, a contemporary of the Buddha.',
    'easy',
    'NCERT Class XI',
    null,
    'd2519b9112f7229030d4f876ca10b53e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2519b9112f7229030d4f876ca10b53e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Avanti'),
            ('B', 'Kosala'),
            ('C', 'Vatsa'),
            ('D', 'Chedi')
           ) as v(label, option_text)
 where q.question_hash = 'd2519b9112f7229030d4f876ca10b53e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Mahajanapada of Vatsa, whose capital was Matsya, was ruled by the well-known king',
    'Kuchela, the king of Vatsa, is remembered in Buddhist literature for befriending the Buddha and for sending valuable gifts to him.',
    'hard',
    'Standard Reference',
    null,
    '3a64fd4f26ef01873f652a12a79cee9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3a64fd4f26ef01873f652a12a79cee9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prithudhana'),
            ('B', 'Mahishmati'),
            ('C', 'Kuchela'),
            ('D', 'Prasenajit')
           ) as v(label, option_text)
 where q.question_hash = '3a64fd4f26ef01873f652a12a79cee9e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Vajji or Vrijji confederacy was a republic made up of how many ganas or clans?',
    'The Vajji gana-sangha was a republic of eight clans, and the Buddha is said to have advised its leader Bimbisara to keep them united.',
    'hard',
    'Standard Reference',
    null,
    'f7b0195cc8fba4cf1e14480646268786'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f7b0195cc8fba4cf1e14480646268786'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sixteen'),
            ('B', 'Eight'),
            ('C', 'Four'),
            ('D', 'Twelve')
           ) as v(label, option_text)
 where q.question_hash = 'f7b0195cc8fba4cf1e14480646268786'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Mahajanapada had Ujjain as its capital and was ruled by Prithudhana?',
    'Avanti, with its capital at Ujjain, was a powerful Mahajanapada whose ruler Prithudhana was a contemporary of the Buddha.',
    'medium',
    'Standard Reference',
    null,
    '58d8fc4d62ee64ec1f04a0db6ec35951'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '58d8fc4d62ee64ec1f04a0db6ec35951'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Avanti'),
            ('B', 'Chedi'),
            ('C', 'Kamboja'),
            ('D', 'Anga')
           ) as v(label, option_text)
 where q.question_hash = '58d8fc4d62ee64ec1f04a0db6ec35951'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Mahajanapada of Chedi had its capital at',
    'Chedi, one of the oldest Mahajanapadas, was centred at Mahishmati in modern Madhya Pradesh.',
    'medium',
    'Standard Reference',
    null,
    'a9791e5c663a4551d2e5facb9c3fd793'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9791e5c663a4551d2e5facb9c3fd793'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kampilya'),
            ('B', 'Champa'),
            ('C', 'Asaligrama'),
            ('D', 'Mahishmati')
           ) as v(label, option_text)
 where q.question_hash = 'a9791e5c663a4551d2e5facb9c3fd793'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Mahajanapada of Kamboja was especially noted for its',
    'Kamboja, in north-west India beyond the Indus, was famous for its horses, which were traded as prized assets and appear as a standard gift in ancient texts.',
    'medium',
    'Standard Reference',
    null,
    'b19e3e0a8d9bf987f20c406039ef2941'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b19e3e0a8d9bf987f20c406039ef2941'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Spices'),
            ('B', 'Pearls'),
            ('C', 'Horses'),
            ('D', 'Iron ore')
           ) as v(label, option_text)
 where q.question_hash = 'b19e3e0a8d9bf987f20c406039ef2941'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Mahajanapada had its capital at Kampilya?',
    'Panchala, with its capital at Kampilya, was a powerful Mahajanapada that supplied the Buddha''s two chief disciples, Sariputta and Moggallana.',
    'medium',
    'NCERT Class XI',
    null,
    '8ee6e18280bd6998da82814587d72494'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8ee6e18280bd6998da82814587d72494'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vajji'),
            ('B', 'Panchala'),
            ('C', 'Vatsa'),
            ('D', 'Anga')
           ) as v(label, option_text)
 where q.question_hash = '8ee6e18280bd6998da82814587d72494'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Anga Mahajanapada had its capital at',
    'Anga, the earliest of the Mahajanapadas, was centred at Champa in Bihar, where the Buddha is said to have first encountered the caste system.',
    'medium',
    'Standard Reference',
    null,
    'd15020fc1320a07440fd0713410c2894'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd15020fc1320a07440fd0713410c2894'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kampilya'),
            ('B', 'Ujjain'),
            ('C', 'Ayodhya'),
            ('D', 'Champa')
           ) as v(label, option_text)
 where q.question_hash = 'd15020fc1320a07440fd0713410c2894'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Gautama Buddha was born at',
    'Buddha was born at Lumbini, attained enlightenment at Bodh Gaya, gave his first sermon at Sarnath and passed away at Kushinagar.',
    'easy',
    'NCERT Class XI',
    null,
    '34fe7f1d2b175e0789f830f3bb22a779'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '34fe7f1d2b175e0789f830f3bb22a779'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lumbini'),
            ('B', 'Bodh Gaya'),
            ('C', 'Sarnath'),
            ('D', 'Kushinagar')
           ) as v(label, option_text)
 where q.question_hash = '34fe7f1d2b175e0789f830f3bb22a779'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Dhammacakkappavattana Sutta, the first sermon of the Buddha, was delivered at',
    'The Buddha preached his first sermon at Sarnath on the deer park, setting out the Four Noble Truths and the Middle Way, the basis of the first sermon of Buddhism.',
    'easy',
    'NCERT Class XI',
    null,
    '8e2b28cf0fd403195ae80468711fd9df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e2b28cf0fd403195ae80468711fd9df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lumbini'),
            ('B', 'Rajgir'),
            ('C', 'Sarnath'),
            ('D', 'Bodh Gaya')
           ) as v(label, option_text)
 where q.question_hash = '8e2b28cf0fd403195ae80468711fd9df'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Buddha attained enlightenment under the Bodhi tree at',
    'After years of meditation, the Buddha attained enlightenment at Bodh Gaya, and the Mahabodhi temple there marks the spot.',
    'easy',
    'NCERT Class XI',
    null,
    '7060ed81f9da182a143a177021cf1291'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7060ed81f9da182a143a177021cf1291'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kushinagar'),
            ('B', 'Lumbini'),
            ('C', 'Sarnath'),
            ('D', 'Bodh Gaya')
           ) as v(label, option_text)
 where q.question_hash = '7060ed81f9da182a143a177021cf1291'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Mahaparinirvana of the Buddha took place at',
    'The Buddha died at Kushinagar in 483 BCE; he was cremated there and the Mahaparinirvana stupa marks the site.',
    'easy',
    'NCERT Class XI',
    null,
    'c59e5c1c59edae0dd9bbdbcceff286e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c59e5c1c59edae0dd9bbdbcceff286e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vaishali'),
            ('B', 'Kushinagar'),
            ('C', 'Sarnath'),
            ('D', 'Rajgir')
           ) as v(label, option_text)
 where q.question_hash = 'c59e5c1c59edae0dd9bbdbcceff286e5'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which of the following is NOT one of the Four Noble Truths preached by the Buddha?',
    'The Four Noble Truths are the truths about suffering, its origin, its cessation and the path; the eight-limbed path is the fourth element and not a separate truth.',
    'medium',
    'NCERT Class XI',
    null,
    '7c2d99635d322acf916af74ba45ab00b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7c2d99635d322acf916af74ba45ab00b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The path of eight limbs leading to the cessation of suffering'),
            ('B', 'The origin of suffering'),
            ('C', 'The cessation of suffering'),
            ('D', 'The truth that life consists of suffering')
           ) as v(label, option_text)
 where q.question_hash = '7c2d99635d322acf916af74ba45ab00b'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which of the following is NOT among the eight limbs of the Noble Eightfold Path?',
    'The eight limbs are right view, thought, speech, action, livelihood, effort, mindfulness and concentration; the knowledge of the four truths is the content of right view.',
    'medium',
    'Standard Reference',
    null,
    'd49fb9b0d707f5ae6e5c482108a2911e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd49fb9b0d707f5ae6e5c482108a2911e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Right understanding'),
            ('B', 'Right speech'),
            ('C', 'Right livelihood'),
            ('D', 'Right knowledge of the four truths')
           ) as v(label, option_text)
 where q.question_hash = 'd49fb9b0d707f5ae6e5c482108a2911e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'In Buddhist terminology, the Buddha, the Dhamma and the Sangha together constitute the',
    'The Three Jewels or Triratna are the Buddha, the Dhamma and the Sangha, and a lay Buddhist takes refuge in them.',
    'easy',
    'NCERT Class XI',
    null,
    '6a00557c60fa2406d11959418f67f3c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a00557c60fa2406d11959418f67f3c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Five Precepts'),
            ('B', 'Eightfold Path'),
            ('C', 'Three Jewels'),
            ('D', 'Four Councils')
           ) as v(label, option_text)
 where q.question_hash = '6a00557c60fa2406d11959418f67f3c1'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The first Buddhist Council was held at Rajgir in 483 BCE under the presidency of',
    'The first council, held shortly after the Buddha''s death at Rajgir, was presided over by Mahakashyapa and compiled the first version of the Tripitaka.',
    'medium',
    'Standard Reference',
    null,
    '38d5a8483ad4af8ba8d8b7bd6aa7e905'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '38d5a8483ad4af8ba8d8b7bd6aa7e905'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vasumitra'),
            ('B', 'Mahakashyapa'),
            ('C', 'Kalashoka'),
            ('D', 'Moggaliputta Tissa')
           ) as v(label, option_text)
 where q.question_hash = '38d5a8483ad4af8ba8d8b7bd6aa7e905'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The second Buddhist Council was held at Vaishali in 383 BCE. It is associated especially with',
    'At the second council the Abhidhamma texts were compiled and the doctrine of the Mahasanghika school was raised for discussion.',
    'hard',
    'Standard Reference',
    null,
    '6234a0522439eb771c6888555d72acbd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6234a0522439eb771c6888555d72acbd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The division of the Sangha into Mahasanghika and Theravada'),
            ('B', 'The compilation of the Sutta pitaka'),
            ('C', 'The adoption of the Pali canon'),
            ('D', 'The compilation of the Abhidhamma pitaka')
           ) as v(label, option_text)
 where q.question_hash = '6234a0522439eb771c6888555d72acbd'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The third Buddhist Council was held at Pataliputra in 251 BCE under the patronage of Ashoka and was presided over by',
    'The third council at Pataliputra, presided over by Moggaliputta Tissa, settled the schism between the Mahasanghika and Theravada schools and sanctioned missions to Sri Lanka and elsewhere.',
    'medium',
    'Standard Reference',
    null,
    '03333a48516fa24d22b4290d63158c7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '03333a48516fa24d22b4290d63158c7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ananda'),
            ('B', 'Moggaliputta Tissa'),
            ('C', 'Mahakashyapa'),
            ('D', 'Kalashoka')
           ) as v(label, option_text)
 where q.question_hash = '03333a48516fa24d22b4290d63158c7c'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The fourth Buddhist Council, held in 72 CE during the reign of Kanishka, took place at',
    'The fourth council was held at Kundalvana in Kashmir under Kanishka, with Vasumitra presiding and Asvaghosa serving as secretary; the Kashmir scholars also composed the Mahavibhasha.',
    'medium',
    'Standard Reference',
    null,
    '2e6b0cea6fd69fc921c384fdf27609be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e6b0cea6fd69fc921c384fdf27609be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajgir'),
            ('B', 'Vaishali'),
            ('C', 'Pataliputra'),
            ('D', 'Kundalvana in Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '2e6b0cea6fd69fc921c384fdf27609be'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Tripitaka of Buddhism consists of',
    'The Tipitaka comprises the Vinaya pitaka of discipline, the Sutta pitaka of discourses and the Abhidhamma pitaka of the higher truth.',
    'easy',
    'NCERT Class XI',
    null,
    'c99e5ea096b873c9d9a708d120b6a63e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c99e5ea096b873c9d9a708d120b6a63e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brahmi, Kharoshthi and Devanagari'),
            ('B', 'Pitaka, Sutra and Smriti'),
            ('C', 'Vinaya, Sutta and Abhidhamma'),
            ('D', 'Rigveda, Yajurveda and Atharvaveda')
           ) as v(label, option_text)
 where q.question_hash = 'c99e5ea096b873c9d9a708d120b6a63e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Mahavagga and the Cullavagga, which together make up the Vinaya Pitaka, were placed on the agenda by which Buddhist council?',
    'At the first council the newly composed Mahavagga and Cullavagga, recounting the rules and the first sermon of the Buddha, were placed on the agenda.',
    'hard',
    'Standard Reference',
    null,
    '1aa97c9f5ae000fbfc3bffc59058bb27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1aa97c9f5ae000fbfc3bffc59058bb27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The first council at Rajgir'),
            ('B', 'The second council at Vaishali'),
            ('C', 'The third council at Pataliputra'),
            ('D', 'The fourth council at Kundalvana')
           ) as v(label, option_text)
 where q.question_hash = '1aa97c9f5ae000fbfc3bffc59058bb27'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which of the following collections does NOT belong to the Sutta Pitaka?',
    'The Sutta Pitaka has the Digha, Majjhima, Samyutta and Anguttara Nikayas; the Abhidhamma Samyutta belongs to the Abhidhamma Pitaka.',
    'medium',
    'Standard Reference',
    null,
    '5ae18906d61699b4b54873b37b48c759'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5ae18906d61699b4b54873b37b48c759'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anguttara Nikaya'),
            ('B', 'Abhidhamma Samyutta'),
            ('C', 'Digha Nikaya'),
            ('D', 'Majjhima Nikaya')
           ) as v(label, option_text)
 where q.question_hash = '5ae18906d61699b4b54873b37b48c759'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Dipavamsa and the Mahavamsa, which record the early history of Buddhism in Sri Lanka, were composed in',
    'The Dipavamsa and the Mahavamsa, the oldest chronicles of Sri Lanka, were written in Pali; the Mahavamsa is attributed to Mahanama of the fifth century CE.',
    'medium',
    'NCERT Class XI',
    null,
    '0001175d93680ab414e7715f263764e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0001175d93680ab414e7715f263764e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sinhala'),
            ('B', 'Pali'),
            ('C', 'Tamil'),
            ('D', 'Sanskrit')
           ) as v(label, option_text)
 where q.question_hash = '0001175d93680ab414e7715f263764e9'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Visuddhimagga, the classic Buddhist treatise on the path of purification, was written by',
    'Buddhaghosha''s Visuddhimagga, composed in the fifth century CE in Sri Lanka, is the most authoritative Theravada summary of Buddhist doctrine and practice.',
    'medium',
    'Standard Reference',
    null,
    'dadecf20ea1ec9ed0ef5f79edd3e349c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dadecf20ea1ec9ed0ef5f79edd3e349c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Asvaghosa'),
            ('B', 'Dharmapala'),
            ('C', 'Buddhaghosha'),
            ('D', 'Nagarjuna')
           ) as v(label, option_text)
 where q.question_hash = 'dadecf20ea1ec9ed0ef5f79edd3e349c'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Madhyamaka school of Buddhist philosophy, associated with the doctrine of emptiness, was founded by',
    'Nagarjuna, of the second century CE, founded the Madhyamaka school and is often regarded as the father of Buddhist philosophical speculation.',
    'hard',
    'Standard Reference',
    null,
    'aca78907cc384913d2a8c26abf1399c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aca78907cc384913d2a8c26abf1399c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Buddhaghosha'),
            ('B', 'Vallebhi'),
            ('C', 'Dharmapala'),
            ('D', 'Nagarjuna')
           ) as v(label, option_text)
 where q.question_hash = 'aca78907cc384913d2a8c26abf1399c2'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Third Buddhist Council at Pataliputra sent a mission to Sri Lanka led by',
    'Mahinda, a son of Ashoka and the brother of Tissa, led the mission to Sri Lanka and converted the island''s king, as recorded in the Mahavamsa.',
    'medium',
    'NCERT Class XI',
    null,
    '85cbce18a2d76e1575d90d2c15ecfeaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '85cbce18a2d76e1575d90d2c15ecfeaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahinda'),
            ('B', 'Tissa'),
            ('C', 'Ananda'),
            ('D', 'Sona Utari')
           ) as v(label, option_text)
 where q.question_hash = '85cbce18a2d76e1575d90d2c15ecfeaa'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Queen''s Edict at Sanchi was issued at the instance of',
    'The Sanchi Queen''s Edict is a minor rock edict in which the queen, probably Ashoka''s wife, endorses the dhamma and non-violence and asks the officials to follow it.',
    'hard',
    'Standard Reference',
    null,
    'aa26bc12f2f82b9c99712d8450a3623a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aa26bc12f2f82b9c99712d8450a3623a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Queen''s appointment as governor'),
            ('B', 'The Queen''s grant of land to the Sangha'),
            ('C', 'The Queen''s endorsement of Ashoka''s dhamma policy'),
            ('D', 'The Queen''s own conquest of Kalinga')
           ) as v(label, option_text)
 where q.question_hash = 'aa26bc12f2f82b9c99712d8450a3623a'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The bilingual inscriptions of Ashoka in which Greek and an Aramaic or Kharoshthi script appear include',
    'Ashoka''s bilingual inscriptions at Kandahar, Shahbazgarhi, Mansehra, Taxila and elsewhere used Greek alongside Aramaic or Kharoshthi, showing the reach of his dhamma and the influence of the Hellenistic world.',
    'medium',
    'NCERT Class XI',
    null,
    'f46a5ee275c3b348015774544be4779f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f46a5ee275c3b348015774544be4779f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hathigumpha, Nasik and Junagadh'),
            ('B', 'Kandahar, Shahbazgarhi and Mansehra'),
            ('C', 'Sanchi, Sarnath and Bodh Gaya'),
            ('D', 'Dhauli, Jaugada and Erragudi')
           ) as v(label, option_text)
 where q.question_hash = 'f46a5ee275c3b348015774544be4779f'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The ancient kingdom of Kalinga, conquered by Ashoka, corresponds broadly to which modern state?',
    'Kalinga, whose conquest in 261 BCE changed Ashoka''s life, corresponds to the Odisha region of eastern India.',
    'easy',
    'NCERT Class XI',
    null,
    '39b4abea64dbccebd86c98fcdcadf4ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '39b4abea64dbccebd86c98fcdcadf4ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jharkhand'),
            ('B', 'West Bengal'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '39b4abea64dbccebd86c98fcdcadf4ef'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Hathigumpha inscription, an important record of Kalinga''s political history, is attributed to',
    'The Hathigumpha inscription in the Udayagiri caves records the achievements of the Mahameghavahana ruler Kharavela in the first century BCE and his conflicts with the Mauryas.',
    'medium',
    'Standard Reference',
    null,
    '0fc2091fc2cae8333309e8901be8ec23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0fc2091fc2cae8333309e8901be8ec23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandragupta Maurya'),
            ('B', 'Samudragupta'),
            ('C', 'Kharavela'),
            ('D', 'Ashoka')
           ) as v(label, option_text)
 where q.question_hash = '0fc2091fc2cae8333309e8901be8ec23'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Ashoka appointed provincial viceroys (Mahamatras) at several centres of his empire. Which of the following was NOT one of them?',
    'Textual references to Mauryan viceroys include Pushyabhuti at Taxila, Pushyabhuti or Dhanyaka at Tosali and Dhanyaka at Ujjain; Kausambi is not recorded as a viceroyal centre.',
    'hard',
    'Standard Reference',
    null,
    '8a1fe07c99df89f4c6e340bc372820bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8a1fe07c99df89f4c6e340bc372820bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kausambi'),
            ('B', 'Ujjain'),
            ('C', 'Taxila'),
            ('D', 'Tosali')
           ) as v(label, option_text)
 where q.question_hash = '8a1fe07c99df89f4c6e340bc372820bb'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Pataliputra, the capital of the Mauryan Empire, was located at',
    'Pataliputra stood on the southern bank of the Ganga near its confluence with the Son and is today the city of Patna in Bihar.',
    'easy',
    'NCERT Class XI',
    null,
    'f713ddbac4f8103cc792cc620d7e7136'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f713ddbac4f8103cc792cc620d7e7136'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The present city of Patna in Bihar'),
            ('B', 'The present city of Allahabad'),
            ('C', 'The present city of Ayodhya'),
            ('D', 'The present city of Ujjain')
           ) as v(label, option_text)
 where q.question_hash = 'f713ddbac4f8103cc792cc620d7e7136'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Maurya-Chandragupta met Seleucus Nicator in 302 BCE in which region?',
    'The two rulers met in the Punjab region near the Hydaspes, where Seleucus accepted Chandragupta''s ascendancy and ceded territories in the west to the Mauryas.',
    'medium',
    'NCERT Class XI',
    null,
    '6fc74b8e037e68bc3e977df0f1f3723d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6fc74b8e037e68bc3e977df0f1f3723d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Magadha'),
            ('B', 'Kalinga'),
            ('C', 'Kabul'),
            ('D', 'The Punjab, near the Hydaspes')
           ) as v(label, option_text)
 where q.question_hash = '6fc74b8e037e68bc3e977df0f1f3723d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Arthashastra, the classic treatise on statecraft and political economy, was written by',
    'The Arthashastra is attributed to Kautilya, the minister of Chandragupta Maurya, and consists of fifteen books dealing with administration, economics, warfare and statecraft.',
    'easy',
    'NCERT Class XI',
    null,
    '3c59d6edf74c0805d7dcba9c1456892d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c59d6edf74c0805d7dcba9c1456892d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sukraniti'),
            ('B', 'Kautilya, also known as Vishnugupta or Chanakya'),
            ('C', 'Megasthenes'),
            ('D', 'Panini')
           ) as v(label, option_text)
 where q.question_hash = '3c59d6edf74c0805d7dcba9c1456892d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Megasthenes, the Greek ambassador at the court of Chandragupta Maurya, wrote a work called',
    'Megasthenes'' Indica described Mauryan administration, society and the city of Pataliputra, though the text survives only in fragments quoted by later writers.',
    'medium',
    'NCERT Class XI',
    null,
    '50d4e29baf3f2e2e018676756ebe35fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '50d4e29baf3f2e2e018676756ebe35fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indica'),
            ('B', 'Historia Indica'),
            ('C', 'Pandissaka'),
            ('D', 'Geography')
           ) as v(label, option_text)
 where q.question_hash = '50d4e29baf3f2e2e018676756ebe35fb'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Mauryan ruler is referred to as Vindasara in the Sri Lankan chronicle Tissa''s Chronicle?',
    'Tissa''s Chronicle names Ashoka''s father as Vindasara, which corresponds to Bindusara, the middle of the three Mauryan emperors.',
    'hard',
    'Standard Reference',
    null,
    'c34a71c918c75d47d107a051c663883c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c34a71c918c75d47d107a051c663883c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandragupta'),
            ('B', 'Ashoka'),
            ('C', 'Pushyamitra'),
            ('D', 'Bindusara')
           ) as v(label, option_text)
 where q.question_hash = 'c34a71c918c75d47d107a051c663883c'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'According to Buddhist sources, the Mauryan army was organised into how many divisions?',
    'The six-fold Mauryan army comprised infantry, cavalry, chariots, elephants, sailors and non-combatant auxiliaries, with the infantry being the largest component.',
    'hard',
    'Standard Reference',
    null,
    'cb28c39590458750ef61e6eb618c46b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb28c39590458750ef61e6eb618c46b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Four'),
            ('B', 'Twelve'),
            ('C', 'Six'),
            ('D', 'Three')
           ) as v(label, option_text)
 where q.question_hash = 'cb28c39590458750ef61e6eb618c46b5'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Buddhist literature mentions three kinds of taxes collected in the Mauryan period. Which of the following is NOT one of them?',
    'The Anguttara Nikaya lists three taxes, namely nisita (produce tax), sannata (customs duty) and samhita (tax on wealth); kara is a later revenue term.',
    'hard',
    'Standard Reference',
    null,
    '640689e7483a3365a928980ccee33197'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '640689e7483a3365a928980ccee33197'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Samhita'),
            ('B', 'Kara'),
            ('C', 'Nisita'),
            ('D', 'Sannata')
           ) as v(label, option_text)
 where q.question_hash = '640689e7483a3365a928980ccee33197'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Mauryan administrative function was exercised by the city officials known as Nagarikas?',
    'Nagarikas were town officials responsible for civic administration, justice and public order, as described in the Arthashastra.',
    'medium',
    'Standard Reference',
    null,
    'eceec4c47364f49b5b7aabbc30f0008d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eceec4c47364f49b5b7aabbc30f0008d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Judging cases in the royal court'),
            ('B', 'Commanding the royal armies in the field'),
            ('C', 'Supervising municipal administration and civic order in towns'),
            ('D', 'Collecting taxes in the rural districts')
           ) as v(label, option_text)
 where q.question_hash = 'eceec4c47364f49b5b7aabbc30f0008d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Taxila was an important centre of learning under the Mauryas. Which Mauryan viceroy is mentioned as having been appointed there?',
    'A reference in the Ashokan inscriptions to Pushyabhuti as viceroy at Taxila shows the Mauryan system of provincial governorships.',
    'hard',
    'Standard Reference',
    null,
    'c3118e99d1fda324c8ecd11a6f2b8f93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c3118e99d1fda324c8ecd11a6f2b8f93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhanyaka'),
            ('B', 'Tissa'),
            ('C', 'Ravana'),
            ('D', 'Pushyabhuti')
           ) as v(label, option_text)
 where q.question_hash = 'c3118e99d1fda324c8ecd11a6f2b8f93'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Western Kshatriya ruler Nahapana had his capital at',
    'Nahapana, the Kshaharata ruler of the western Deccan, ruled from Dhanyakataka, and his control of the Konkan and the trade route to the Roman world is attested by the Nashik inscriptions.',
    'hard',
    'Standard Reference',
    null,
    '4477ddacb3eef83e2f977703614c927d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4477ddacb3eef83e2f977703614c927d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dhanyakataka'),
            ('B', 'Pataliputra'),
            ('C', 'Ujjain'),
            ('D', 'Mathura')
           ) as v(label, option_text)
 where q.question_hash = '4477ddacb3eef83e2f977703614c927d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Nashik cave inscriptions are important because they record',
    'The Nashik inscription of Gautamiputra Satakarni boasts of destroying the Kshatriya confederacy of Nahapana, and another records the marriage of Vasisthiputra to a daughter of the same family.',
    'hard',
    'Standard Reference',
    null,
    '7bf80767f8d9d8fd428e82d324018404'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7bf80767f8d9d8fd428e82d324018404'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The donations of Ashoka to the Buddhist Sangha'),
            ('B', 'The land grants of the Gupta kings'),
            ('C', 'The revenue arrangements of the Vakatakas'),
            ('D', 'The campaigns of the Satavahana ruler Gautamiputra against the Western Kshatriyas')
           ) as v(label, option_text)
 where q.question_hash = '7bf80767f8d9d8fd428e82d324018404'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Pushyamitra, who founded the Shunga dynasty, is known for',
    'Pushyamitra''s conflict with the Greeks in the northwest is mentioned in the Mahabharata and in his Ashvamedha inscription from Ayodhya, and his gold coins bear his name.',
    'hard',
    'Standard Reference',
    null,
    'ac708c0fab4f7bb633deab4571a9514d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ac708c0fab4f7bb633deab4571a9514d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'His erection of the first cave temple'),
            ('B', 'His gold coins and his conflict with the Yavanas, recorded in the Mahabharata and the Ashvamedha inscription of Ayodhya'),
            ('C', 'His conversion to Buddhism at the council of Pataliputra'),
            ('D', 'His conquest of the Deccan')
           ) as v(label, option_text)
 where q.question_hash = 'ac708c0fab4f7bb633deab4571a9514d'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The play Malavikagnimitram, which dramatises the conflict between Pushyamitra and his son Agnimitra, was written by',
    'Kalidasa''s Malavikagnimitram, his first play, dramatises Agnimitra''s love for the princess Malavika and the quarrel over the performing actress Vasumati.',
    'easy',
    'NCERT Class XI',
    null,
    'd3c36e8f34a5e0aaeed981e7f1d2057e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd3c36e8f34a5e0aaeed981e7f1d2057e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalidasa'),
            ('B', 'Vishakhadatta'),
            ('C', 'Dandin'),
            ('D', 'Vararuci')
           ) as v(label, option_text)
 where q.question_hash = 'd3c36e8f34a5e0aaeed981e7f1d2057e'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which poet of the Shunga period wrote the Saundarananda and the Devadarshana, and later worked at Kanishka''s court?',
    'Asvaghosa, the court poet of Kanishka, wrote the Saundarananda and the Devadarshana and is traditionally credited with the Buddha Charita.',
    'medium',
    'Standard Reference',
    null,
    '5fc4af2f4b85dbd205ecf01cda23a617'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5fc4af2f4b85dbd205ecf01cda23a617'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Panini'),
            ('B', 'Bharata'),
            ('C', 'Asvaghosa'),
            ('D', 'Kalidasa')
           ) as v(label, option_text)
 where q.question_hash = '5fc4af2f4b85dbd205ecf01cda23a617'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The last ruler of the Kanva dynasty of Magadha was',
    'Susarman, the last Kanva king, was defeated and displaced by Simuka, the founder of the Satavahana dynasty, around the end of the first century BCE.',
    'hard',
    'Standard Reference',
    null,
    'cbe596216261efb6ea8edefdb5d00a7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cbe596216261efb6ea8edefdb5d00a7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pushyamitra'),
            ('B', 'Agnimitra'),
            ('C', 'Devanampiya Tissa'),
            ('D', 'Susarman')
           ) as v(label, option_text)
 where q.question_hash = 'cbe596216261efb6ea8edefdb5d00a7b'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Indo-Greek kings of Bactria are known to have invaded north-western India. The most famous of them was',
    'Menander, called Milinda in the Milindapanha, invaded the Punjab and reached Pataliputra before being driven back by the Satavahana ruler Vasisthiputra.',
    'medium',
    'Standard Reference',
    null,
    'e5b6a3e7974149c8c35376ab37ba7eee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e5b6a3e7974149c8c35376ab37ba7eee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Demetrius'),
            ('B', 'Menander, also called Milinda'),
            ('C', 'Chandragupta Maurya'),
            ('D', 'Antiochus')
           ) as v(label, option_text)
 where q.question_hash = 'e5b6a3e7974149c8c35376ab37ba7eee'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Milindapanha, a dialogue between the Bactrian king Menander and the Buddhist monk Nagasena, is significant because it',
    'The Milindapanha, rendered into Pali as the Milindakatha, combines Greek kingship with Buddhist dialectic and was probably composed in the second century CE.',
    'medium',
    'Standard Reference',
    null,
    '7c466bedc775d53818ded65c81024113'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c466bedc775d53818ded65c81024113'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Contains the earliest Buddhist inscriptions'),
            ('B', 'Documents the trade with Rome'),
            ('C', 'Shows the mingling of Hellenistic and Buddhist intellectual traditions'),
            ('D', 'Records the Mauryan land revenue system')
           ) as v(label, option_text)
 where q.question_hash = '7c466bedc775d53818ded65c81024113'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Rudradaman''s Junagadh inscription of 130 CE is remarkable because it is',
    'Rudradaman''s Junagadh record, celebrating his victories and his gift of a golden sudarsana to Brahmanas, is the earliest lengthy Sanskrit inscription known.',
    'hard',
    'Standard Reference',
    null,
    'a78538d23af4764715332df4b1ca32db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a78538d23af4764715332df4b1ca32db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The first full-length inscription in Sanskrit'),
            ('B', 'The earliest known record of trade with Rome'),
            ('C', 'The earliest example of the Brahmi script'),
            ('D', 'The first inscription naming a dynasty of the Deccan')
           ) as v(label, option_text)
 where q.question_hash = 'a78538d23af4764715332df4b1ca32db'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Satavahana ruler Gautamiputra Satakarni claimed the epithet',
    'Gautamiputra Satakarni''s Nasik inscription describes him as having destroyed the Kshatriya confederacy of Nahapana and restored the glory of the Satavahana line.',
    'medium',
    'Standard Reference',
    null,
    'c8c4d8ea62eecfe834b070d7a911bffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c8c4d8ea62eecfe834b070d7a911bffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lord of the Dakshinapatha'),
            ('B', 'Prakasa of the Andhra'),
            ('C', 'Conqueror of Magadha'),
            ('D', 'Destroyer of the Kshatriya confederacy')
           ) as v(label, option_text)
 where q.question_hash = 'c8c4d8ea62eecfe834b070d7a911bffd'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Amaravati and Nagarjunakonda stupas belong to which dynasty?',
    'The great brick stupas of Amaravati on the Krishna in Andhra and Nagarjunakonda on the Krishna were built under the Satavahanas, with Nagarjunakonda rising in the third century CE.',
    'medium',
    'Standard Reference',
    null,
    '4b10c5ae08d2f70d8483dc81456d2eb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4b10c5ae08d2f70d8483dc81456d2eb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chalukya'),
            ('B', 'Mughal'),
            ('C', 'Satavahana'),
            ('D', 'Vakataka')
           ) as v(label, option_text)
 where q.question_hash = '4b10c5ae08d2f70d8483dc81456d2eb1'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Vakataka ruler Harishena is best known from',
    'The Eran inscription of Harishena, dated to the fifth century CE, celebrates his gifts to Brahmins and his victory over the Hunas.',
    'hard',
    'Standard Reference',
    null,
    '283f6e67366c85409ffde6b5e85bb511'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '283f6e67366c85409ffde6b5e85bb511'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Eran inscription praising his generosity to Brahmins and his war with the Hunas'),
            ('B', 'The Junagadh inscription'),
            ('C', 'The Nashik cave inscriptions'),
            ('D', 'The Allahabad pillar inscription')
           ) as v(label, option_text)
 where q.question_hash = '283f6e67366c85409ffde6b5e85bb511'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which ancient site is famed for the remains of a Roman trading settlement, with glass beads and amphorae, excavated by Mortimer Wheeler in 1945?',
    'Arikamedu near Pondicherry yielded beads, an ocarina and Roman amphorae, and is regarded as the earliest known Indo-Roman trading port.',
    'medium',
    'Standard Reference',
    null,
    'bf16cdb62292aa5a4235c5495a358c53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bf16cdb62292aa5a4235c5495a358c53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamralipti'),
            ('B', 'Arikamedu'),
            ('C', 'Kaveripattinam'),
            ('D', 'Muziris')
           ) as v(label, option_text)
 where q.question_hash = 'bf16cdb62292aa5a4235c5495a358c53'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which ancient port of the Sangam age was the chief centre of the pepper trade with the Roman world?',
    'Muziris in modern Kerala, identified by many scholars with Kodungallur or Pattanam, was the great port of the Chera and the hub of the pepper trade with Rome.',
    'easy',
    'Standard Reference',
    null,
    'd6eb27c6758356452adfdd507fdb61ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd6eb27c6758356452adfdd507fdb61ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muziris'),
            ('B', 'Kaveripattinam'),
            ('C', 'Madurai'),
            ('D', 'Karur')
           ) as v(label, option_text)
 where q.question_hash = 'd6eb27c6758356452adfdd507fdb61ed'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Sangam polity had its capital at Muziris?',
    'The Chera kingdom of the Sangam age had its capital at Muziris, while the Cholas ruled from Kaveripattinam and the Pandyas from Madurai.',
    'easy',
    'NCERT Class XI',
    null,
    'd9ee2bdd672b52614b7d48adeb2b3399'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd9ee2bdd672b52614b7d48adeb2b3399'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Satavahana'),
            ('B', 'Chera'),
            ('C', 'Chola'),
            ('D', 'Pandya')
           ) as v(label, option_text)
 where q.question_hash = 'd9ee2bdd672b52614b7d48adeb2b3399'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The three crowned kings, or Muvendar Adigal, of the Sangam age were the rulers of',
    'The Sangam age is remembered for three crowned kings ruling from the Chera, Chola and Pandya countries, with the title of Muvendar Adigal.',
    'easy',
    'NCERT Class XI',
    null,
    '51d7bb70f01bca98561c79d99c115206'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '51d7bb70f01bca98561c79d99c115206'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chera, Chola and Satavahana'),
            ('B', 'Chola, Pandya and Pallava'),
            ('C', 'Chera, Pandya and Kadamba'),
            ('D', 'Chera, Chola and Pandya')
           ) as v(label, option_text)
 where q.question_hash = '51d7bb70f01bca98561c79d99c115206'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Tamil grammar is considered the earliest work of Tamil literature and was probably composed around the third century BCE?',
    'The Tolkappiyam, written in old Tamil and traditionally ascribed to a generation of poets called the Tolkappiyars, is the earliest extant Tamil grammar.',
    'medium',
    'Standard Reference',
    null,
    '18ef1d87ac5d5b2e22a5abe7a6a89018'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '18ef1d87ac5d5b2e22a5abe7a6a89018'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tirukkural'),
            ('B', 'Sivappirakkam'),
            ('C', 'Tolkappiyam'),
            ('D', 'Silappadikaram')
           ) as v(label, option_text)
 where q.question_hash = '18ef1d87ac5d5b2e22a5abe7a6a89018'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Tirukkural, the classic Tamil work on virtue, wealth and love, was written by',
    'The Tirukkural, written in about 1,330 couplets, is attributed to Tiruvalluvar, and the Rajagaram inscription records his Tiruvalluvar-Daiban at Kanyakumari.',
    'easy',
    'Standard Reference',
    null,
    'c23b306abcce3e91be4f2c4fcbe54e14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c23b306abcce3e91be4f2c4fcbe54e14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ilango Adigal'),
            ('B', 'Sattanar'),
            ('C', 'Tolkappiyar'),
            ('D', 'Tiruvalluvar')
           ) as v(label, option_text)
 where q.question_hash = 'c23b306abcce3e91be4f2c4fcbe54e14'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Silappadikaram, the earliest Tamil epic, was written by',
    'The Silappadikaram by Ilango Adigal, a Chera prince who renounced the world, tells of Kannagi''s story and is a landmark of early Tamil literature.',
    'medium',
    'Standard Reference',
    null,
    'f9a04076122503982ea469c36d4b0c39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9a04076122503982ea469c36d4b0c39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cattanar'),
            ('B', 'Bharathi'),
            ('C', 'Ilango Adigal'),
            ('D', 'Tiruvalluvar')
           ) as v(label, option_text)
 where q.question_hash = 'f9a04076122503982ea469c36d4b0c39'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The poet Cattanar, who wrote the Sivappirakkam and the Civappirakkam, is regarded as a contemporary of which Sangam ruler?',
    'Cattanar is usually placed in the second century CE and is linked with the reign of the Chera king Senguttuvan, who is celebrated in the Silappadikaram.',
    'hard',
    'Standard Reference',
    null,
    '6d5f75f5d07edde6c15ee9bbbefe0237'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6d5f75f5d07edde6c15ee9bbbefe0237'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chera Senguttuvan'),
            ('B', 'Rajaraja Chola'),
            ('C', 'Pandyan Kadungon'),
            ('D', 'Chola Rajendra')
           ) as v(label, option_text)
 where q.question_hash = '6d5f75f5d07edde6c15ee9bbbefe0237'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Tamil text describes the five great landscapes of the Sangam age and the customs of each region?',
    'The Tolkappiyam''s Porulatikaram section describes the five tinai, or ecological and cultural landscapes, of the Tamil country.',
    'hard',
    'Standard Reference',
    null,
    '7554e7ba1cf14c41d605548d2282be8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7554e7ba1cf14c41d605548d2282be8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sivappirakkam'),
            ('B', 'Tolkappiyam'),
            ('C', 'Silappadikaram'),
            ('D', 'Tirukkural')
           ) as v(label, option_text)
 where q.question_hash = '7554e7ba1cf14c41d605548d2282be8c'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kalabhra interregnum in the Tamil country is generally placed between the periods of',
    'After the Sangam age, the Kalabhras, possibly of foreign origin, held power in the Tamil country until they were defeated by Simhavishnu of the Pallavas and the early Pandyas.',
    'hard',
    'Standard Reference',
    null,
    '3c3fa203082ae5a1db062e6b2fb61a2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c3fa203082ae5a1db062e6b2fb61a2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chola and Pandya periods'),
            ('B', 'The Pallava and Vijayanagara periods'),
            ('C', 'The Chera and Chola periods'),
            ('D', 'The Sangam age and the rise of the Pallavas and Pandyas')
           ) as v(label, option_text)
 where q.question_hash = '3c3fa203082ae5a1db062e6b2fb61a2d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The famous terracotta plaques of the Chola period were found mainly at which site?',
    'Gangaikonda Cholapuram, the capital of Rajaraja Chola, has yielded a rich series of Chola terracotta plaques showing temple ritual and daily life.',
    'hard',
    'Standard Reference',
    null,
    'f79a30619c069632973ab84d8f3b1441'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f79a30619c069632973ab84d8f3b1441'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gangaikonda Cholapuram'),
            ('B', 'Thanjavur'),
            ('C', 'Kaveripattinam'),
            ('D', 'Madurai')
           ) as v(label, option_text)
 where q.question_hash = 'f79a30619c069632973ab84d8f3b1441'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chera capital Karur was an important centre of which trade?',
    'Karur on the Kaveri was the capital of the Cheras and a major centre for the export of gold, pepper and other produce from the uplands.',
    'hard',
    'Standard Reference',
    null,
    'f020e54023ebfa9f17c289f5ea580545'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f020e54023ebfa9f17c289f5ea580545'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pearl trade from the Gulf of Kutch'),
            ('B', 'Gold trade from the Deccan'),
            ('C', 'Pepper trade with Rome'),
            ('D', 'Salt from the Gulf of Mannar')
           ) as v(label, option_text)
 where q.question_hash = 'f020e54023ebfa9f17c289f5ea580545'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which ancient site is famous for the excavation of an archaeological deposit that includes a Roman trading quarter and a bead factory of the first century BCE?',
    'Arikamedu on the Puducherry coast has been excavated repeatedly, revealing bead-making furnaces and a trading settlement with Roman and Mediterranean material.',
    'medium',
    'Standard Reference',
    null,
    '18231cf28da6fcc6940b1e5e3302c6d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '18231cf28da6fcc6940b1e5e3302c6d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhir'),
            ('B', 'Kalibangan'),
            ('C', 'Arikamedu'),
            ('D', 'Sanchi')
           ) as v(label, option_text)
 where q.question_hash = '18231cf28da6fcc6940b1e5e3302c6d4'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Sangam-era Tamil work gives the famous description of the sea port of Kaveripattinam?',
    'The Silappadikaram gives a celebrated description of the Chola port of Puhar, or Kaveripattinam, and of the sea voyage of the protagonist''s family.',
    'hard',
    'Standard Reference',
    null,
    '41d64bc8aaf0093c6f0d5bd0031a9472'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '41d64bc8aaf0093c6f0d5bd0031a9472'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manimekalai'),
            ('B', 'Silappadikaram'),
            ('C', 'Tolkappiyam'),
            ('D', 'Sivappirakkam')
           ) as v(label, option_text)
 where q.question_hash = '41d64bc8aaf0093c6f0d5bd0031a9472'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which two Tamil dynasties fought the Chola-Chola-Pallava (Three Hundred Years'' War) in the Tamil country?',
    'The Cholas and the Pandyas fought a long series of wars for supremacy over the Kaveri delta and the Pandyan country during the eighth to tenth centuries CE.',
    'hard',
    'Standard Reference',
    null,
    'e9f9751bfc6ebfd02422859457fe3333'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e9f9751bfc6ebfd02422859457fe3333'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cholas and Pandyas'),
            ('B', 'Cholas and Cheras'),
            ('C', 'Pallavas and Cheras'),
            ('D', 'Pallavas and Pandyas')
           ) as v(label, option_text)
 where q.question_hash = 'e9f9751bfc6ebfd02422859457fe3333'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Manimekalai, a classic Tamil Buddhist epic of the sixth century CE, was written by',
    'The Manimekalai, traditionally attributed to Cattanar, centres on a Buddhist heroine and reflects the deep influence of Buddhism on Tamil society.',
    'hard',
    'Standard Reference',
    null,
    'c3c3f018aaed4a3fb1928e9791c5033f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c3c3f018aaed4a3fb1928e9791c5033f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tiruvalluvar'),
            ('B', 'Sattanar'),
            ('C', 'Cattanar'),
            ('D', 'Ilango Adigal')
           ) as v(label, option_text)
 where q.question_hash = 'c3c3f018aaed4a3fb1928e9791c5033f'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which ancient Indian university was famous for law, medicine and astronomy and was situated in modern Bihar?',
    'Vikramashila, founded by the Pala king Dharmapala, was a noted centre of Buddhist learning in Bihar and was destroyed in the twelfth century CE.',
    'medium',
    'NCERT Class XII',
    null,
    'fc7a64098db984d60eb3c10f570c2fa7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fc7a64098db984d60eb3c10f570c2fa7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Takshashila'),
            ('B', 'Vikramashila'),
            ('C', 'Vallabhi'),
            ('D', 'Nalanda')
           ) as v(label, option_text)
 where q.question_hash = 'fc7a64098db984d60eb3c10f570c2fa7'
on conflict (question_id, label) do nothing;

-- history | ancient-india | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which ancient Indian university, situated in Gandhara near modern Taxila, was famous for the study of medicine and law?',
    'Takshashila, the great centre of learning in the Gandhara region, was associated with the study of medicine, law and astronomy and attracted students from across the world.',
    'easy',
    'NCERT Class XII',
    null,
    '974a2b183d2a8451f2465d3da8d99108'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '974a2b183d2a8451f2465d3da8d99108'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Takshashila'),
            ('B', 'Nalanda'),
            ('C', 'Vikramashila'),
            ('D', 'Vallabhi')
           ) as v(label, option_text)
 where q.question_hash = '974a2b183d2a8451f2465d3da8d99108'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which script was used for the Ashokan inscriptions at Sanchi?',
    'The Ashokan inscriptions at Sanchi and most of central India are carved in Brahmi, while the north-western inscriptions of Ashoka use Kharoshthi and Greek.',
    'medium',
    'NCERT Class XI',
    null,
    '4d95bdc7ec5ad55a64e32ab7cbd9a8c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d95bdc7ec5ad55a64e32ab7cbd9a8c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sharada'),
            ('B', 'Brahmi'),
            ('C', 'Kharoshthi'),
            ('D', 'Greek')
           ) as v(label, option_text)
 where q.question_hash = '4d95bdc7ec5ad55a64e32ab7cbd9a8c6'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The Sanchi stupa was originally commissioned by which ruler?',
    'The Sanchi stupa, one of the oldest stone structures in India, was commissioned by Ashoka in the third century BCE and enlarged later by Satavahana donors.',
    'medium',
    'NCERT Class XI',
    null,
    'b9fdf944e16fc45f65850ca6ca605ab5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b9fdf944e16fc45f65850ca6ca605ab5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanishka'),
            ('B', 'Harsha'),
            ('C', 'Ashoka'),
            ('D', 'Pushyamitra')
           ) as v(label, option_text)
 where q.question_hash = 'b9fdf944e16fc45f65850ca6ca605ab5'
on conflict (question_id, label) do nothing;

-- history | ancient-india | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'Which Ashokan inscription site is famous for the Great Stupa and the ornate gateways carved under the Satavahanas?',
    'Sanchi''s four elaborately carved toranas and its brick stupa, originally built by Ashoka, received most of its sculptural decoration from the Satavahana era.',
    'medium',
    'NCERT Class XI',
    null,
    '9ba46008d5c99fd885c4bf3bc7578a40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9ba46008d5c99fd885c4bf3bc7578a40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amaravati'),
            ('B', 'Nagarjunakonda'),
            ('C', 'Bharhut'),
            ('D', 'Sanchi')
           ) as v(label, option_text)
 where q.question_hash = '9ba46008d5c99fd885c4bf3bc7578a40'
on conflict (question_id, label) do nothing;

-- history | ancient-india | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'ancient-india'),
    'The earliest Indian sculpture to use the stone-railing (vedika) form around a sacred structure is seen at',
    'Bharhut, in Madhya Pradesh, dating to about the second century BCE, has the earliest carved stone vedikas and the finest Jataka narrative reliefs.',
    'hard',
    'Standard Reference',
    null,
    '4c94c236d316ca491247222bc74f3596'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c94c236d316ca491247222bc74f3596'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kushinagar'),
            ('B', 'Sanchi'),
            ('C', 'Bharhut'),
            ('D', 'Amaravati')
           ) as v(label, option_text)
 where q.question_hash = '4c94c236d316ca491247222bc74f3596'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Maurya ruler is credited with the destruction of the Nanda dynasty and the founding of the Mauryan empire?',
    'Chandragupta Maurya overthrew the Nandas around 321 BCE with the help of Chanakya and established the Mauryan empire with its capital at Pataliputra.',
    'easy',
    'NCERT Class XI',
    null,
    '25fd8023c572d3feff99fb3ab2c98b42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '25fd8023c572d3feff99fb3ab2c98b42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ashoka'),
            ('B', 'Pushyamitra'),
            ('C', 'Chandragupta Maurya'),
            ('D', 'Bindusara')
           ) as v(label, option_text)
 where q.question_hash = '25fd8023c572d3feff99fb3ab2c98b42'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kalinga war, which changed the course of Ashoka''s life, is conventionally dated to',
    'The Kalinga war is usually dated to 261 BCE, two years after Ashoka''s accession; Major Rock Edict XIII describes the slaughter that caused his remorse.',
    'medium',
    'NCERT Class XI',
    null,
    '28de8dfca248b94ffd12b4941a4e9e59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28de8dfca248b94ffd12b4941a4e9e59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '261 BCE'),
            ('B', '250 BCE'),
            ('C', '268 BCE'),
            ('D', '232 BCE')
           ) as v(label, option_text)
 where q.question_hash = '28de8dfca248b94ffd12b4941a4e9e59'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Ashoka succeeded to the throne in which year?',
    'Ashoka came to the throne in 268 BCE at about the age of 35; Bindusara died in 272 BCE and his son took over at Pataliputra.',
    'medium',
    'Standard Reference',
    null,
    'f1ad93d958697adf58117d407bb4c573'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f1ad93d958697adf58117d407bb4c573'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '261 BCE'),
            ('B', '232 BCE'),
            ('C', '321 BCE'),
            ('D', '268 BCE')
           ) as v(label, option_text)
 where q.question_hash = 'f1ad93d958697adf58117d407bb4c573'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The concept of Dhamma that Ashoka propagated through his rock and pillar edicts included',
    'Ashoka''s dhamma combined non-violence with religious tolerance, care for dependants and respect for all religious sects, as set out especially in Major Rock Edict VII.',
    'easy',
    'NCERT Class XI',
    null,
    '58e9577567a7e85876be2951f9122d7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58e9577567a7e85876be2951f9122d7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Unrestricted military expansion'),
            ('B', 'The exclusive worship of a single god'),
            ('C', 'Non-violence, tolerance, respect for elders and charity towards all sects'),
            ('D', 'Ritual sacrifice of animals on a large scale')
           ) as v(label, option_text)
 where q.question_hash = '58e9577567a7e85876be2951f9122d7b'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Major Rock Edict VII is important because it',
    'Major Rock Edict VII is the fullest statement of Ashoka''s dhamma, stressing non-violence, tolerance of all sects and care for the aged and the poor.',
    'medium',
    'NCERT Class XI',
    null,
    '7c1bd60122dfda4d3167ea298e3f7e82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7c1bd60122dfda4d3167ea298e3f7e82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Records the Kalinga war and Ashoka''s remorse'),
            ('B', 'Announces the grant of rain relief'),
            ('C', 'Proclaims the abolition of the bhogi system'),
            ('D', 'Describes Ashoka''s dhamma policy, including non-violence and religious tolerance')
           ) as v(label, option_text)
 where q.question_hash = '7c1bd60122dfda4d3167ea298e3f7e82'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Minor Rock Edict II of Ashoka refers to the king''s concern for',
    'Minor Rock Edict II reflects Ashoka''s earnest desire for the welfare of all beings and mentions the Hellenistic king (Amtiyoka), reflecting Mauryan contacts with the Greek world.',
    'hard',
    'Standard Reference',
    null,
    'cd08141a798f60de5f848dcde2d21281'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd08141a798f60de5f848dcde2d21281'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The revenue of the provinces'),
            ('B', 'The Hellenistic monarch of the West and the welfare of all creatures'),
            ('C', 'The famine in the Ganga valley'),
            ('D', 'The construction of stupas')
           ) as v(label, option_text)
 where q.question_hash = 'cd08141a798f60de5f848dcde2d21281'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Ashoka''s propagation of Buddhism across Asia is evidenced by his support for the',
    'Ashoka convened the third council at Pataliputra and dispatched missions, including Mahinda''s to Sri Lanka, and his patronage explains the spread of Buddhism beyond India.',
    'medium',
    'NCERT Class XI',
    null,
    'ffa76f81e7acc866e3f8a8a1f30b868f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ffa76f81e7acc866e3f8a8a1f30b868f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Third Buddhist Council at Pataliputra and missions to Sri Lanka and other lands'),
            ('B', 'Second Buddhist Council at Vaishali'),
            ('C', 'Fourth Buddhist Council at Kundalvana'),
            ('D', 'Disciplinary rules of the Vinaya alone')
           ) as v(label, option_text)
 where q.question_hash = 'ffa76f81e7acc866e3f8a8a1f30b868f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The decline of the Mauryan empire after Ashoka is generally attributed to',
    'The decline is linked to the disintegration of central control, heavy taxation, excessive military expenditure and the assertion of autonomy by provincial governors and Buddhist and Jain shramana communities.',
    'medium',
    'Standard Reference',
    null,
    '1c924f9447170736f23fe2869595f484'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1c924f9447170736f23fe2869595f484'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A foreign invasion from beyond the Indus'),
            ('B', 'A change in the official religion of the state'),
            ('C', 'A famine that emptied the treasury'),
            ('D', 'The weakening of central authority, excessive taxation and the rise of powerful regional satraps')
           ) as v(label, option_text)
 where q.question_hash = '1c924f9447170736f23fe2869595f484'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Pushyamitra, a general of the Mauryan king Ashoka, founded which dynasty?',
    'Pushyamitra assassinated the last Maurya ruler and founded the Shunga dynasty, marking the end of Mauryan rule in about 185 BCE.',
    'medium',
    'Standard Reference',
    null,
    '9df268c53d0889386dd3a9444717509a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9df268c53d0889386dd3a9444717509a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Shunga dynasty'),
            ('B', 'The Kanva dynasty'),
            ('C', 'The Satavahana dynasty'),
            ('D', 'The Indo-Greek dynasty')
           ) as v(label, option_text)
 where q.question_hash = '9df268c53d0889386dd3a9444717509a'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The famous play Malavikagnimitram, attributed to Kalidasa, was written in which Mauryan-era political context?',
    'The play, dated to about the fourth century CE, presents the tension between Pushyamitra, who had put his son Agnimitra away, and the young prince''s romantic involvement.',
    'medium',
    'Standard Reference',
    null,
    '0ccdec4ad3cafdc754b27ddda7b817c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ccdec4ad3cafdc754b27ddda7b817c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The campaigns of Samudragupta'),
            ('B', 'The war between the Cholas and Pandyas'),
            ('C', 'The succession struggle between Pushyamitra and his son Agnimitra'),
            ('D', 'The Kalinga war')
           ) as v(label, option_text)
 where q.question_hash = '0ccdec4ad3cafdc754b27ddda7b817c5'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Bhasa, an early Sanskrit dramatist whose plays were discovered at Kanjirapally, belonged to which dynasty?',
    'The thirteen plays attributed to Bhasa, unearthed at Kanjirapally in Kerala, are generally assigned to the Satavahana period and reflect the classical stage tradition.',
    'hard',
    'Standard Reference',
    null,
    '239e09a3177cce914b78bff8a56e569d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '239e09a3177cce914b78bff8a56e569d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gupta'),
            ('B', 'Satavahana'),
            ('C', 'Shunga'),
            ('D', 'Maurya')
           ) as v(label, option_text)
 where q.question_hash = '239e09a3177cce914b78bff8a56e569d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which dynasty in the Deccan is said to have issued coins with the legend ''Dinaraja'' and the figure of a lion?',
    'Satavahana lead coins bear the legend Dinaraja and a lion motif, a characteristic of their coinage in the Deccan.',
    'hard',
    'Standard Reference',
    null,
    '6449174b9ad81719e2f1b4dabc9da58f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6449174b9ad81719e2f1b4dabc9da58f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chalukya'),
            ('B', 'Satavahana'),
            ('C', 'Kshaharata'),
            ('D', 'Vakataka')
           ) as v(label, option_text)
 where q.question_hash = '6449174b9ad81719e2f1b4dabc9da58f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Pliny''s Natural History refers to the Indian trade and mentions the import of pepper from which region?',
    'Pliny complains that Rome was draining away fifty million sesterces a year to India, largely through the pepper trade of Malabar and the Coromandel coast.',
    'medium',
    'NCERT Class XII',
    null,
    'c84eb379434fe61de55d593b9bed0f12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c84eb379434fe61de55d593b9bed0f12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Malabar'),
            ('B', 'Bengal'),
            ('C', 'Gujarat'),
            ('D', 'Kashmir')
           ) as v(label, option_text)
 where q.question_hash = 'c84eb379434fe61de55d593b9bed0f12'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The anonymous Greek merchant''s account of Indian trade, written in the first century CE, is called the',
    'The Periplus of the Erythraean Sea describes Indian ports, commodities and the monsoons, and is a key source for Indo-Roman commerce.',
    'medium',
    'Standard Reference',
    null,
    'c41ab2d02860dad770915cd0445e01ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c41ab2d02860dad770915cd0445e01ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indica of Megasthenes'),
            ('B', 'Anabasis'),
            ('C', 'Geographia'),
            ('D', 'Periplus of the Erythraean Sea')
           ) as v(label, option_text)
 where q.question_hash = 'c41ab2d02860dad770915cd0445e01ed'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which region of south India was the main source of pepper exported to the Roman world?',
    'The Malabar coast, under the Cheras, was the chief source of pepper, while the Coromandel coast supplied carnelian beads and other goods.',
    'medium',
    'NCERT Class XII',
    null,
    '5705d5170e8e251775be3fb404f155c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5705d5170e8e251775be3fb404f155c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Konkan'),
            ('B', 'Kanara'),
            ('C', 'Malabar'),
            ('D', 'Coromandel')
           ) as v(label, option_text)
 where q.question_hash = '5705d5170e8e251775be3fb404f155c5'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'A Christian tradition associates the arrival of St Thomas the Apostle in India with which port?',
    'The Syrian Christian tradition holds that St Thomas landed at Muziris in 52 CE and founded the seven and a half churches of the Malabar coast, later moving to Madras.',
    'medium',
    'Standard Reference',
    null,
    '73ca8294b15e0ce408a20d103fc7ac29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '73ca8294b15e0ce408a20d103fc7ac29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muziris'),
            ('B', 'Kaveripattinam'),
            ('C', 'Tamralipti'),
            ('D', 'Arikamedu')
           ) as v(label, option_text)
 where q.question_hash = '73ca8294b15e0ce408a20d103fc7ac29'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Satavahana ruler Simuka is generally credited with',
    'Simuka is said to have expelled the last Kanva king Susarman from Magadha around 30 BCE, founding the Satavahana dynasty in the Dakshinapatha.',
    'hard',
    'Standard Reference',
    null,
    'cdee213f66b15b49652d619f843c0e27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cdee213f66b15b49652d619f843c0e27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Expanding into the Gangetic plain'),
            ('B', 'Sending missions to Sri Lanka'),
            ('C', 'Ending the Kanva rule in Magadha and founding the Satavahana dynasty'),
            ('D', 'Defeating the Indo-Greek king Menander')
           ) as v(label, option_text)
 where q.question_hash = 'cdee213f66b15b49652d619f843c0e27'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Satavahanas ruled mainly over which region?',
    'The Satavahanas ruled the Dakshinapatha, roughly the Deccan and the Krishna-Godavari basin, with their main capitals at Pratishthana and Amaravati.',
    'easy',
    'NCERT Class XII',
    null,
    'e4352de8feed1cc3a9fb18d44e60f176'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e4352de8feed1cc3a9fb18d44e60f176'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ganga valley'),
            ('B', 'The Indus valley'),
            ('C', 'The Tamil country'),
            ('D', 'The Deccan plateau and the Godavari-Krishna basin')
           ) as v(label, option_text)
 where q.question_hash = 'e4352de8feed1cc3a9fb18d44e60f176'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Who is often described as the greatest of the Gupta rulers, the Indian Napoleon?',
    'Samudragupta, called the Indian Napoleon, conquered much of northern India and is praised in his own Prayag Prashasti for his campaigns.',
    'easy',
    'NCERT Class XII',
    null,
    'b2bebf291bd4da7589b11cf3fec94f6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2bebf291bd4da7589b11cf3fec94f6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhavagupta'),
            ('B', 'Samudragupta'),
            ('C', 'Chandragupta I'),
            ('D', 'Skandagupta')
           ) as v(label, option_text)
 where q.question_hash = 'b2bebf291bd4da7589b11cf3fec94f6e'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Samudragupta''s campaigns are described in a long inscription found at',
    'The Allahabad or Prayag Prashasti inscription, engraved on an Ashokan pillar by the poet Harishena, praises Samudragupta''s conquests in a famous list of defeated rulers.',
    'medium',
    'NCERT Class XII',
    null,
    '99faf8af4417f365e82b3135ac4106ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '99faf8af4417f365e82b3135ac4106ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eran'),
            ('B', 'Udayagiri'),
            ('C', 'Sanchi'),
            ('D', 'Allahabad')
           ) as v(label, option_text)
 where q.question_hash = '99faf8af4417f365e82b3135ac4106ce'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Eran inscription of the Gupta period refers to the victory of',
    'The Eran inscription praises Skandagupta for defeating the Hunas and attributes to him the survival of the Gupta line, a key document in dating the Hunas'' arrival.',
    'medium',
    'Standard Reference',
    null,
    'c4661e0831a72b4e89a2a933f737848f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c4661e0831a72b4e89a2a933f737848f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Skandagupta over the Hunas'),
            ('B', 'Chandragupta II over the Yavanas'),
            ('C', 'Samudragupta over the Shakas'),
            ('D', 'Chandragupta I over the Vakatakas')
           ) as v(label, option_text)
 where q.question_hash = 'c4661e0831a72b4e89a2a933f737848f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Chandragupta II is also known by the title',
    'Chandragupta II bore the title Vikramaditya, and the gold coins of the period attributed to him show, uniquely in Gupta history, the likeness of the king and of his queen.',
    'easy',
    'NCERT Class XII',
    null,
    '6bcd896f37f4706ec894f60e385c05cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6bcd896f37f4706ec894f60e385c05cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Devagupta'),
            ('B', 'Vikramaditya'),
            ('C', 'Narendraditya'),
            ('D', 'Mahendravarman')
           ) as v(label, option_text)
 where q.question_hash = '6bcd896f37f4706ec894f60e385c05cf'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Mathura pillar inscription of the Gupta period was issued by',
    'The Mathura pillar inscription of Chandragupta II, dated to 400 CE, records the donation of a dinara for the feeding of animals and the maintenance of a goshala.',
    'hard',
    'Standard Reference',
    null,
    '201cf6845ce1dc90874476993dc32a8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '201cf6845ce1dc90874476993dc32a8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Skandagupta'),
            ('B', 'Kumaragupta I'),
            ('C', 'Chandragupta II'),
            ('D', 'Samudragupta')
           ) as v(label, option_text)
 where q.question_hash = '201cf6845ce1dc90874476993dc32a8d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Gupta administrative system was characterised above all by',
    'Gupta administration operated through the samanta system, in which local feudatories and officials held land and power in return for military service and dues.',
    'medium',
    'NCERT Class XII',
    null,
    'e19f744f66bec841a61b9de7c433261a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e19f744f66bec841a61b9de7c433261a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A confederacy of autonomous city-states'),
            ('B', 'Rule by an elected council of Brahmins'),
            ('C', 'The samanta or feudal relationship between the king and local rulers and officials'),
            ('D', 'A highly centralised bureaucratic state with salaried officials')
           ) as v(label, option_text)
 where q.question_hash = 'e19f744f66bec841a61b9de7c433261a'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The samanta system of the Gupta period is also known as',
    'Many historians describe the Gupta samanta arrangement as a form of feudalism, though this characterisation is debated in Indian historiography.',
    'medium',
    'Standard Reference',
    null,
    'ab1c5243d4f4529144f3fc182b01ee3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ab1c5243d4f4529144f3fc182b01ee3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ryotwari'),
            ('B', 'Feudalism'),
            ('C', 'Mansabdari'),
            ('D', 'Zabt')
           ) as v(label, option_text)
 where q.question_hash = 'ab1c5243d4f4529144f3fc182b01ee3f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'In Gupta administration, which land category was revenue free and enjoyed by Brahmins and people of learning?',
    'Land assigned to Brahmins and learned men for religious and scholarly use was called devasena and was exempt from regular revenue.',
    'hard',
    'Standard Reference',
    null,
    '42717c041a69d1c36696826f12effdb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '42717c041a69d1c36696826f12effdb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Devasena'),
            ('B', 'Bhumibhaga'),
            ('C', 'Sannata'),
            ('D', 'Raja sasana')
           ) as v(label, option_text)
 where q.question_hash = '42717c041a69d1c36696826f12effdb0'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta land category was given in reward for meritorious service and carried the obligation to provide troops?',
    'Bhumibhaga land was assigned in reward of service; the recipient held the land on condition of providing military support, which is why it is often described as a feudal arrangement.',
    'hard',
    'Standard Reference',
    null,
    '0d11b8da7eba64fe928998c87e6b3910'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0d11b8da7eba64fe928998c87e6b3910'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Devasena'),
            ('B', 'Nisita'),
            ('C', 'Sannata'),
            ('D', 'Bhumibhaga or bhumi')
           ) as v(label, option_text)
 where q.question_hash = '0d11b8da7eba64fe928998c87e6b3910'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The official in Gupta administration who looked after judicial and administrative affairs in the district was the',
    'The rajukrit (district judge) dealt with justice and administrative matters at the district level; the prakasa handled revenue and the upayukta was the chief revenue officer of a division.',
    'hard',
    'Standard Reference',
    null,
    'e4ae6cb586bd3eb42be80c33968b98b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e4ae6cb586bd3eb42be80c33968b98b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Upayukta'),
            ('B', 'Dutaka'),
            ('C', 'Rajukrit'),
            ('D', 'Prakasa')
           ) as v(label, option_text)
 where q.question_hash = 'e4ae6cb586bd3eb42be80c33968b98b1'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta official was responsible for the administration of a bhumi or district?',
    'The prakasa was the officer in charge of a district (bhumi), responsible above all for revenue collection and its transmission to the treasury.',
    'hard',
    'Standard Reference',
    null,
    '0e22281efbaef1299cd2b59b0e21be58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e22281efbaef1299cd2b59b0e21be58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajukrit'),
            ('B', 'Dharmadhikari'),
            ('C', 'Sarvabhauma'),
            ('D', 'Prakasa')
           ) as v(label, option_text)
 where q.question_hash = '0e22281efbaef1299cd2b59b0e21be58'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Varnashrama Brahmana, an important Gupta-period treatise on social and legal matters, was written by',
    'The Varnashrama Brahmana of Baudhayana, a contemporary of the Guptas, is an important source on the working of the four varnas and on inheritance and contracts.',
    'hard',
    'Standard Reference',
    null,
    'e4cce9abc04ed782cc92805572d38a21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e4cce9abc04ed782cc92805572d38a21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manu'),
            ('B', 'Baudhayana'),
            ('C', 'Yajnavalkya'),
            ('D', 'Narada')
           ) as v(label, option_text)
 where q.question_hash = 'e4cce9abc04ed782cc92805572d38a21'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta ruler is described as the father of Indian theatre by Kalidasa in his third play?',
    'Kalidasa''s Prayaga Prashasti praises Kumaragupta I as the destroyer of enemies and the protector of the learned, and the play Malavikagnimitram was staged during his reign.',
    'medium',
    'Standard Reference',
    null,
    'e5b067cba554beff6d5209776070441d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e5b067cba554beff6d5209776070441d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kumaragupta I'),
            ('B', 'Skandagupta'),
            ('C', 'Samudragupta'),
            ('D', 'Chandragupta II')
           ) as v(label, option_text)
 where q.question_hash = 'e5b067cba554beff6d5209776070441d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The celebrated literary work Malavikagnimitram is associated with which Gupta ruler''s reign?',
    'The play was written for the court of Kumaragupta I, and the Prayag Prashasti written in the same reign credits the king with the revival of learning.',
    'medium',
    'Standard Reference',
    null,
    'af2c484cc26a01971a2d9b02fc17d4c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'af2c484cc26a01971a2d9b02fc17d4c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kumaragupta I'),
            ('B', 'Samudragupta'),
            ('C', 'Skandagupta'),
            ('D', 'Chandragupta I')
           ) as v(label, option_text)
 where q.question_hash = 'af2c484cc26a01971a2d9b02fc17d4c5'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Who among the following was the author of the Mudrarakshasa, a famous Sanskrit play about the rise of the Mauryas?',
    'Vishakhadatta''s Mudrarakshasa, in which Chanakya engineers the restoration of Chandragupta Maurya, was written during the Gupta period.',
    'easy',
    'NCERT Class XII',
    null,
    'd7d6c951e38e1804c274e7c64e4a7220'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd7d6c951e38e1804c274e7c64e4a7220'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalidasa'),
            ('B', 'Dandin'),
            ('C', 'Bana'),
            ('D', 'Vishakhadatta')
           ) as v(label, option_text)
 where q.question_hash = 'd7d6c951e38e1804c274e7c64e4a7220'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which of the following was the work of Kalidasa?',
    'The Raghuvamsha is one of Kalidasa''s seven great works; the Mudrarakshasa is by Vishakhadatta, the Harshacharita by Bana and the Kavyadarsha by Dandin.',
    'easy',
    'NCERT Class XII',
    null,
    '3f8e000e15240d7dea4b4af6a1c3f721'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f8e000e15240d7dea4b4af6a1c3f721'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kavyadarsha'),
            ('B', 'Raghuvamsha'),
            ('C', 'Mudrarakshasa'),
            ('D', 'Harshacharita')
           ) as v(label, option_text)
 where q.question_hash = '3f8e000e15240d7dea4b4af6a1c3f721'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Dandin, a Gupta-period writer, is known for',
    'Dandin wrote the Kavyadarsha, an early treatise on the theory of literary style, and the Dasakumaracharita, a tale of ten princes.',
    'medium',
    'NCERT Class XII',
    null,
    '51314ddaa75a9c43c7000d378d8b7b7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '51314ddaa75a9c43c7000d378d8b7b7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Uttararamacharita and the Pratimanasaka'),
            ('B', 'The Harshacharita and the Kadambari'),
            ('C', 'The Kavyadarsha and the Dasakumaracharita'),
            ('D', 'The Raghuvamsha and the Meghaduta')
           ) as v(label, option_text)
 where q.question_hash = '51314ddaa75a9c43c7000d378d8b7b7d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Bana, the author of the Harshacharita, was a pupil of',
    'Bana was a pupil of the court poet Virasena and, as a Chandala by birth, took pride in his background in the Harshacharita.',
    'hard',
    'Standard Reference',
    null,
    '033a0a387e9a084cac29342de2133b09'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '033a0a387e9a084cac29342de2133b09'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sariputta'),
            ('B', 'Dharmapala'),
            ('C', 'Virasena'),
            ('D', 'Kashyapa')
           ) as v(label, option_text)
 where q.question_hash = '033a0a387e9a084cac29342de2133b09'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Amarakosha, the famous Sanskrit lexicon of the Gupta period, was compiled by',
    'Amarasimha''s Amarakosha, a verse lexicon written under the patronage of the Later Guptas, remains a standard reference for Sanskrit vocabulary.',
    'medium',
    'Standard Reference',
    null,
    '548a4f1e3ee3004bce7058a7dca5ad48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '548a4f1e3ee3004bce7058a7dca5ad48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Varahamihira'),
            ('B', 'Dandin'),
            ('C', 'Kshemendra'),
            ('D', 'Amarasimha')
           ) as v(label, option_text)
 where q.question_hash = '548a4f1e3ee3004bce7058a7dca5ad48'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Varahamihira, the sixth-century polymath, was one of the Navaratnas of which ruler?',
    'Varahamihira, author of the Brihat Samhita and the Panchasiddhantika, was one of the Navaratnas of Chandragupta II Vikramaditya.',
    'medium',
    'NCERT Class XII',
    null,
    '964b25cfc011edf453cdb69da986d6bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '964b25cfc011edf453cdb69da986d6bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lalitaditya'),
            ('B', 'Chandragupta II'),
            ('C', 'Samudragupta'),
            ('D', 'Harsha')
           ) as v(label, option_text)
 where q.question_hash = '964b25cfc011edf453cdb69da986d6bd'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Navaratnas of the court of Vikramaditya included',
    'The nine gems of Vikramaditya''s court included Varahamihira, Dhanvantari, Amarasimha, Kalidasa, Dhanvantari, Shanku, Kshapanaka, Vararuci and Ghatakarpara.',
    'hard',
    'Standard Reference',
    null,
    '065c20a99c910b884922832b092f0996'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '065c20a99c910b884922832b092f0996'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Varahamihira, Dhanvantari and Amarasimha'),
            ('B', 'Bana and Dandin only'),
            ('C', 'Narada and Yaska'),
            ('D', 'Patanjali and Panini')
           ) as v(label, option_text)
 where q.question_hash = '065c20a99c910b884922832b092f0996'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The cave temples at Badami were cut under which dynasty?',
    'The Badami cave temples, with their magnificent sculptures of Shiva, Vishnu and Durga, were excavated by the Chalukyas of Badami under kings like Mangalesha and Pulakeshin II.',
    'medium',
    'Standard Reference',
    null,
    '2733cae9aaf25bb777f63aec2a12f2c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2733cae9aaf25bb777f63aec2a12f2c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pallavas'),
            ('B', 'Rashtrakutas'),
            ('C', 'Pandyas'),
            ('D', 'Chalukyas of Badami')
           ) as v(label, option_text)
 where q.question_hash = '2733cae9aaf25bb777f63aec2a12f2c4'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Ajanta caves at Aurangabad were excavated chiefly under which dynasty?',
    'The Ajanta caves, with their superb painting and sculpture, were executed under the Vakataka ruler Harishena and his successors in the fifth and sixth centuries CE.',
    'medium',
    'NCERT Class XII',
    null,
    '7d349c4bcde04fbf57d6eea16a3d2266'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7d349c4bcde04fbf57d6eea16a3d2266'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pallava'),
            ('B', 'Vakataka'),
            ('C', 'Chalukya'),
            ('D', 'Rashtrakuta')
           ) as v(label, option_text)
 where q.question_hash = '7d349c4bcde04fbf57d6eea16a3d2266'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The votive stupas at Sanchi and the Bharhut railing belong to which phase of Buddhist art?',
    'Bharhut and Sanchi belong to the Shunga and Satavahana phase, the age of Puranic Hinduism and the proliferation of stupas, when the doctrine of the Buddha was not yet pictorial.',
    'hard',
    'Standard Reference',
    null,
    '13e584c319cb6e4fc5cec41db3fae7f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '13e584c319cb6e4fc5cec41db3fae7f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kushana phase'),
            ('B', 'The Mughal phase'),
            ('C', 'The Shunga and early Satavahana phase'),
            ('D', 'The Gupta phase')
           ) as v(label, option_text)
 where q.question_hash = '13e584c319cb6e4fc5cec41db3fae7f9'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The first representations of the Buddha in anthropomorphic form appeared in which school of art?',
    'Under Kanishka and his successors, the Gandhara school produced a Hellenistic-style standing Buddha while Mathura developed a markedly indigenous image, both in the first century CE.',
    'medium',
    'NCERT Class XII',
    null,
    '96977caa2e432084a0bcfb31fca8a06a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96977caa2e432084a0bcfb31fca8a06a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gandhara and Mathura'),
            ('B', 'Pallava and Chalukya'),
            ('C', 'Chola and Vijayanagara'),
            ('D', 'Deccan and Rashtrakuta')
           ) as v(label, option_text)
 where q.question_hash = '96977caa2e432084a0bcfb31fca8a06a'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kanishka coins found in the hoards of the northwest, numbering thirty-three, are significant because',
    'The coin hoards of the Kushana period, together with the Rabatak inscription dated to 58 CE, help fix Kanishka''s accession and the chronology of the fourth council.',
    'hard',
    'Standard Reference',
    null,
    'fdfe34b9f76855219a66d7be84c807d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fdfe34b9f76855219a66d7be84c807d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They show a trading guild of the Kushanas'),
            ('B', 'They record the Buddhist council at Pataliputra'),
            ('C', 'They establish the chronology of Kanishka''s reign with the help of datable coins and inscriptions'),
            ('D', 'They are the earliest gold coins of India')
           ) as v(label, option_text)
 where q.question_hash = 'fdfe34b9f76855219a66d7be84c807d8'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Rabatak inscription, dated to 58 CE, is important for the study of',
    'The Rabatak inscription, found near Peshawar, records the dedication of a great Hinayana monastery by Kanishka and gives the earliest secure date for his reign.',
    'hard',
    'Standard Reference',
    null,
    '89ad953ef22040e1967a23584ceda50f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '89ad953ef22040e1967a23584ceda50f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sanchi stupa'),
            ('B', 'The Ajanta paintings'),
            ('C', 'The trade route to Rome'),
            ('D', 'Kanishka''s accession and the Great Hinayana monastery at Peshawar')
           ) as v(label, option_text)
 where q.question_hash = '89ad953ef22040e1967a23584ceda50f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kanishka era, an era used in inscriptions and coins in north-west India, began in',
    'The Saka era began in 78 CE and the Kanishka era, widely used in north-western India, is conventionally dated from 78 CE as well.',
    'hard',
    'Standard Reference',
    null,
    '9600571e6ac59e8f2dd4ddef2053a7f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9600571e6ac59e8f2dd4ddef2053a7f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1280 CE'),
            ('B', '78 CE'),
            ('C', '248 CE'),
            ('D', '320 CE')
           ) as v(label, option_text)
 where q.question_hash = '9600571e6ac59e8f2dd4ddef2053a7f2'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Huna ruler is associated with the invasion of northern India in the fifth century CE?',
    'Mihirakula, also called Mihirakula or the Huna king, ruled about 500 CE and is remembered in the Chinese pilgrim accounts and the Kalhana''s Rajatarangini.',
    'medium',
    'Standard Reference',
    null,
    '6acbebb6105a7b6f3e5431bdd92679a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6acbebb6105a7b6f3e5431bdd92679a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mihirakula'),
            ('B', 'Toramana'),
            ('C', 'Prithivishena'),
            ('D', 'Yashodharman')
           ) as v(label, option_text)
 where q.question_hash = '6acbebb6105a7b6f3e5431bdd92679a8'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Yashodharman''s inscription at Khonmukh in the Ganga valley describes',
    'The Khonmukh inscription celebrates Yashodharman''s victory over the Hunas and his independence from their suzerainty, a key landmark in the history of the Ganga valley.',
    'hard',
    'Standard Reference',
    null,
    '640287d40e210057541f4053eb9c0b56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '640287d40e210057541f4053eb9c0b56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'His conflict with the Pallavas'),
            ('B', 'His donation to a Buddhist monastery'),
            ('C', 'His victory over the Hunas and his rejection of a Huna overlord'),
            ('D', 'His subjugation by the Hunas')
           ) as v(label, option_text)
 where q.question_hash = '640287d40e210057541f4053eb9c0b56'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Toramana inscription of 470 CE, found at Eran, records',
    'The Toramana inscription records grants of land to Brahmins and shows the Huna presence in the Ganga valley in the fifth century CE.',
    'hard',
    'Standard Reference',
    null,
    '22ad9d24ab0e1a8ce3bce04bd57c2b9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '22ad9d24ab0e1a8ce3bce04bd57c2b9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The victory of Skandagupta over the Hunas'),
            ('B', 'The dedication of the Badami cave temple'),
            ('C', 'The donation of a dinara by Chandragupta II'),
            ('D', 'The Huna ruler Toramana''s grant of land in northern India')
           ) as v(label, option_text)
 where q.question_hash = '22ad9d24ab0e1a8ce3bce04bd57c2b9e'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chinese pilgrim Hiuen Tsang, who visited India during Harsha''s reign, is also known as',
    'Hiuen Tsang, the Buddhist monk who travelled to India between 629 and 645 CE, is called Xuanzang in Chinese sources and wrote the Great Tang Records on the Western Regions.',
    'easy',
    'NCERT Class XII',
    null,
    'f14c47fe8b18cda3c4a0ad8b3bd91292'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f14c47fe8b18cda3c4a0ad8b3bd91292'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Xuanzang'),
            ('B', 'Fa-Hien'),
            ('C', 'I-Ching'),
            ('D', 'Megasthenes')
           ) as v(label, option_text)
 where q.question_hash = 'f14c47fe8b18cda3c4a0ad8b3bd91292'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Chinese pilgrit visited India during the reign of Harsha, about two centuries after Fa-Hien?',
    'Hiuen Tsang visited India in the seventh century CE during Harsha''s reign and gave a detailed account of Indian cities, monasteries and society.',
    'medium',
    'NCERT Class XII',
    null,
    '840d390d617c656ba44afafe0498b0f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '840d390d617c656ba44afafe0498b0f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Taibai'),
            ('B', 'Hiuen Tsang'),
            ('C', 'I-Ching'),
            ('D', 'Marco Polo')
           ) as v(label, option_text)
 where q.question_hash = '840d390d617c656ba44afafe0498b0f7'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chinese pilgrim who visited India in the early fifth century CE and wrote the Record of Buddhist Kingdoms was',
    'Fa-Hien, who came to India about 399-414 CE, wrote the Record of Buddhist Kingdoms and gives a valuable account of the Gupta age.',
    'medium',
    'NCERT Class XII',
    null,
    'ed203d6493e55a884b413635999254bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ed203d6493e55a884b413635999254bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fa-Hien'),
            ('B', 'Hiuen Tsang'),
            ('C', 'I-Ching'),
            ('D', 'Taibai')
           ) as v(label, option_text)
 where q.question_hash = 'ed203d6493e55a884b413635999254bc'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chinese monk who travelled to India and Sri Lanka between 671 and 695 CE and wrote the Chronicle of Buddhist Kingdoms was',
    'I-Ching, a Chinese monk, travelled to India and Sri Lanka between 671 and 695 CE and wrote a detailed account of Buddhist sites and monasteries.',
    'hard',
    'Standard Reference',
    null,
    '6fafdaf451922a29565393c2715912b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6fafdaf451922a29565393c2715912b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'I-Ching'),
            ('B', 'Xuanzang'),
            ('C', 'Fa-Hien'),
            ('D', 'Hiuen Tsang')
           ) as v(label, option_text)
 where q.question_hash = '6fafdaf451922a29565393c2715912b3'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Huna ruler who was defeated by Skandagupta was',
    'Skandagupta''s victory over the Hunas, described in the Eran inscription, halted their advance into the Ganga valley, and Mihirakula was his likely successor.',
    'hard',
    'Standard Reference',
    null,
    '64d5e69232ad0ff82215d2b79ca56d9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '64d5e69232ad0ff82215d2b79ca56d9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yashodharman'),
            ('B', 'Toramana'),
            ('C', 'Mihirakula'),
            ('D', 'Prithivishena')
           ) as v(label, option_text)
 where q.question_hash = '64d5e69232ad0ff82215d2b79ca56d9d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The decline of the Gupta empire is generally attributed to',
    'The Guptas declined after the Huna incursions of the fifth century CE, the growth of pushyabhuti and other regional states, and the erosion of the samanta system.',
    'medium',
    'NCERT Class XII',
    null,
    'cd7dda168ac8312012217790bcc5647b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cd7dda168ac8312012217790bcc5647b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A direct invasion by the Chinese'),
            ('B', 'The spread of Islam'),
            ('C', 'A change in the copper coinage'),
            ('D', 'Huna invasions, the rise of regional powers and administrative weakness')
           ) as v(label, option_text)
 where q.question_hash = 'cd7dda168ac8312012217790bcc5647b'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta ruler is generally credited with the title of the father of Indian historiography?',
    'Harsha is described in Banabhatta''s Harshacharita as an eager patron of learning and the author of the Ratnavali, Pratimanasaka and Nagananda.',
    'medium',
    'NCERT Class XII',
    null,
    '926809da18fe3783b9b2f10d9cf5c033'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '926809da18fe3783b9b2f10d9cf5c033'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Skandagupta'),
            ('B', 'Harsha'),
            ('C', 'Samudragupta'),
            ('D', 'Chandragupta II')
           ) as v(label, option_text)
 where q.question_hash = '926809da18fe3783b9b2f10d9cf5c033'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chinese pilgrim Hiuen Tsang described which Indian ruler as a chakravartin, a universal monarch?',
    'Hiuen Tsang attended Harsha''s court at Kannauj and wrote that the king was a chakravartin whose authority extended over all the lands on the southern side of the Himalaya.',
    'medium',
    'NCERT Class XII',
    null,
    '38fc7de3fed85b2ec038677ea1457e32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '38fc7de3fed85b2ec038677ea1457e32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harsha'),
            ('B', 'Samudragupta'),
            ('C', 'Chandragupta II'),
            ('D', 'Pulakeshin II')
           ) as v(label, option_text)
 where q.question_hash = '38fc7de3fed85b2ec038677ea1457e32'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Pushyabhuti or Later Gupta dynasty, which ruled Kannauj, was founded by',
    'Pushyabhuti, a grandson of the Gupta ruler Chandragupta II, founded the Later Gupta line at Kannauj; his son Shashanka is also well known.',
    'hard',
    'Standard Reference',
    null,
    '53d1b74d42a74f7376e6ee330e5b27a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '53d1b74d42a74f7376e6ee330e5b27a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shashanka'),
            ('B', 'Grahavarman'),
            ('C', 'Pushyabhuti'),
            ('D', 'Harsha')
           ) as v(label, option_text)
 where q.question_hash = '53d1b74d42a74f7376e6ee330e5b27a2'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which dynasty claimed descent from the Gupta line and ruled at Kannauj in the seventh century CE?',
    'The Later Guptas or Pushyabhutis, with capitals at Kannauj, traced their lineage to the Guptas, and Harsha belonged to this line.',
    'medium',
    'Standard Reference',
    null,
    'df48054f6563e7b1bdb41e5de3373ace'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'df48054f6563e7b1bdb41e5de3373ace'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chalukyas of Badami'),
            ('B', 'Palas of Bengal'),
            ('C', 'Kalachuris of Tripuri'),
            ('D', 'Pushyabhuti or Later Guptas')
           ) as v(label, option_text)
 where q.question_hash = 'df48054f6563e7b1bdb41e5de3373ace'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'In the Gupta period, the term samanta designated',
    'The samanta was a feudatory or royal official who governed a territory on the king''s behalf and provided troops and revenue.',
    'medium',
    'Standard Reference',
    null,
    'b533396aece05953bbdaea2d8dacdca0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b533396aece05953bbdaea2d8dacdca0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A class of artisan guilds'),
            ('B', 'A type of Buddhist monastery'),
            ('C', 'A subordinate or feudatory governor who held land in return for service'),
            ('D', 'A state tax on merchandise')
           ) as v(label, option_text)
 where q.question_hash = 'b533396aece05953bbdaea2d8dacdca0'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta-period text is an early Sanskrit treatise on astronomy and mathematics attributed to Brahmagupta?',
    'Brahmagupta''s Brahmasphutasiddhanta, written in 628 CE, contains the earliest known statement of the rules of zero in arithmetic.',
    'hard',
    'Standard Reference',
    null,
    '8514403b8032d6444f7649107be4c51e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8514403b8032d6444f7649107be4c51e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Brahmasphutasiddhanta'),
            ('B', 'Siddhanta Shiromani'),
            ('C', 'Aryabhatiya'),
            ('D', 'Pancha Siddhantika')
           ) as v(label, option_text)
 where q.question_hash = '8514403b8032d6444f7649107be4c51e'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Aryabhata, who wrote the Aryabhatiya in 499 CE, is associated with which Gupta-period ruler''s court?',
    'Aryabhata wrote the Aryabhatiya during the reign of the Gupta ruler Skandagupta and stated his astronomical position of the earth on an orbit.',
    'hard',
    'Standard Reference',
    null,
    '73c1c4764ce857b3e832e80fe5dd10c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '73c1c4764ce857b3e832e80fe5dd10c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harsha'),
            ('B', 'Chalukyas of Badami'),
            ('C', 'Palas of Bengal'),
            ('D', 'Gupta rulers of Magadha')
           ) as v(label, option_text)
 where q.question_hash = '73c1c4764ce857b3e832e80fe5dd10c8'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kamasutra, a classical text on love and life, was written by',
    'Vatsyayana''s Kamasutra, a second-century-CE text, is a treatise on the nature of love and the life of the courtly and urbanite.',
    'medium',
    'Standard Reference',
    null,
    '93613856b3dab0e11f08d7593e591223'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93613856b3dab0e11f08d7593e591223'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dandin'),
            ('B', 'Vatsyayana'),
            ('C', 'Vatsyayana''s teacher Panchatatra'),
            ('D', 'Kamandaka')
           ) as v(label, option_text)
 where q.question_hash = '93613856b3dab0e11f08d7593e591223'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Charaka Samhita and the Sushruta Samhita are ancient Indian texts on',
    'Charaka''s treatise deals with internal medicine while Sushruta''s deals with surgery, including ophthalmic and plastic surgery, forming the core of Ayurveda.',
    'easy',
    'Standard Reference',
    null,
    'a55c384547bbf8c3c19963293b90ae84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a55c384547bbf8c3c19963293b90ae84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Drama and poetics'),
            ('B', 'Medicine and surgery'),
            ('C', 'Law and taxation'),
            ('D', 'Astronomy and mathematics')
           ) as v(label, option_text)
 where q.question_hash = 'a55c384547bbf8c3c19963293b90ae84'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Lion Capital of Sarni or Sarnath, the national emblem of India, was originally erected by',
    'The four lions back to back atop the Ashokan pillar at Sarnath was originally a Buddhist monument and is now the State Emblem of India.',
    'easy',
    'Static GK',
    null,
    'b29b9add433b19a386bfbbca0006b2ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b29b9add433b19a386bfbbca0006b2ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandragupta II'),
            ('B', 'Kanishka'),
            ('C', 'Harsha'),
            ('D', 'Ashoka')
           ) as v(label, option_text)
 where q.question_hash = 'b29b9add433b19a386bfbbca0006b2ac'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Sanchi inscription of the Gupta period records the donation of a village by',
    'The Sanchi inscription of Chandragupta II, dated to 400-402 CE, records the grant of the village of Besnagar to the Buddhist Sangha at Sanchi.',
    'medium',
    'Standard Reference',
    null,
    'd373d51e9323d442fb03cb6fe0ae2a1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd373d51e9323d442fb03cb6fe0ae2a1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chandragupta II'),
            ('B', 'Samudragupta'),
            ('C', 'Skandagupta'),
            ('D', 'Kumaragupta I')
           ) as v(label, option_text)
 where q.question_hash = 'd373d51e9323d442fb03cb6fe0ae2a1b'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'During the Gupta period, which two cults became increasingly popular alongside the worship of Vishnu?',
    'The Bhagavata or Vaishnava cult and the Shaiva cult, associated respectively with the Bhagavata Purana and the Pancharatra literature, flourished in the Gupta age.',
    'medium',
    'NCERT Class XII',
    null,
    '5aae63a3fcb284d6014a1a799c60a8db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5aae63a3fcb284d6014a1a799c60a8db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jain and Buddhist'),
            ('B', 'Skanda and Ganapati alone'),
            ('C', 'Vaishnava and Shaiva'),
            ('D', 'Shaiva and Jain')
           ) as v(label, option_text)
 where q.question_hash = '5aae63a3fcb284d6014a1a799c60a8db'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Sarvajna or Pasupata sect, which flourished in the Gupta age, was',
    'The Pasupatas, devotees of Pashupati, taught that reality pervades all substances, and they were patronised by several Gupta rulers.',
    'hard',
    'Standard Reference',
    null,
    '404eee1fb916e818dfa58c772c434660'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '404eee1fb916e818dfa58c772c434660'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A Vaishnava sect of the Pancharatra'),
            ('B', 'A Buddhist esoteric school'),
            ('C', 'A Jain reform movement'),
            ('D', 'A Shaiva sect holding the doctrine of Pashupati and panRealism')
           ) as v(label, option_text)
 where q.question_hash = '404eee1fb916e818dfa58c772c434660'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Hiuen Tsang studied at which ancient university that had been founded during the Gupta period and was later enlarged by Harsha?',
    'Hiuen Tsang studied at Nalanda under the guidance of Sighabhuti and Shinasena and described the university in glowing terms.',
    'easy',
    'NCERT Class XII',
    null,
    '8d5ba69f41c926c7108cc6794eff3447'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8d5ba69f41c926c7108cc6794eff3447'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nalanda'),
            ('B', 'Takshashila'),
            ('C', 'Vikramashila'),
            ('D', 'Vallabhi')
           ) as v(label, option_text)
 where q.question_hash = '8d5ba69f41c926c7108cc6794eff3447'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which South Indian king is said to have built the rock-cut temple at Mahabalipuram?',
    'The rock-cut monolithic rathas and cave temples at Mahabalipuram were created under Narasimhavarman I Mamalla of the Pallava dynasty in the seventh century CE.',
    'medium',
    'Standard Reference',
    null,
    '297d67ce5feebba3d78f042ec406b500'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '297d67ce5feebba3d78f042ec406b500'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajaraja Chola'),
            ('B', 'Narasimhavarman I, popularly known as Mamalla'),
            ('C', 'Rajasimha II'),
            ('D', 'Mahendravarman I')
           ) as v(label, option_text)
 where q.question_hash = '297d67ce5feebba3d78f042ec406b500'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kailasanatha temple at Kanchipuram was built by which Pallava ruler?',
    'Rajasimha II, also called Narasimhavarman II, built the Kailasanatha temple at Kanchipuram and the Shore Temple at Mahabalipuram.',
    'hard',
    'Standard Reference',
    null,
    '68fa9b0a1b89505385917c35488582cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '68fa9b0a1b89505385917c35488582cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mahendravarman I'),
            ('B', 'Avani Rajendra Pulakeshin II'),
            ('C', 'Rajasimha II'),
            ('D', 'Narasimhavarman I')
           ) as v(label, option_text)
 where q.question_hash = '68fa9b0a1b89505385917c35488582cf'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Shakas or Indo-Scythians who invaded north-west India are known in the Purana as',
    'Purana sources name the Scythians Shaka, while the term Yavana is used for the Greeks and Pahlava for the Parthians.',
    'medium',
    'Standard Reference',
    null,
    '753cd62a4d0a9854cb3bdab3b1b5b81f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '753cd62a4d0a9854cb3bdab3b1b5b81f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yavana'),
            ('B', 'Pahlava'),
            ('C', 'Chuluka'),
            ('D', 'Saka')
           ) as v(label, option_text)
 where q.question_hash = '753cd62a4d0a9854cb3bdab3b1b5b81f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Kushana ruler is said to have conquered the whole of northern India, from Bactria to Pataliputra?',
    'Kanishka''s empire stretched from Bactria in the west to the Ganga valley in the east and from Central Asia to the Deccan in the south.',
    'medium',
    'Standard Reference',
    null,
    'c2ce5dca6f9d81a3eb25811905a2e62f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c2ce5dca6f9d81a3eb25811905a2e62f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Vima Kadphises'),
            ('B', 'Huvishka'),
            ('C', 'Kanishka'),
            ('D', 'Kujula Kadphises')
           ) as v(label, option_text)
 where q.question_hash = 'c2ce5dca6f9d81a3eb25811905a2e62f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kujula Kadphises, the founder of the Kushana dynasty, was of uncertain origin. Which origin is generally accepted?',
    'Kujula Kadphises is described as a Yavana or Central Asian chief who founded the Kushana line in north-west India.',
    'hard',
    'Standard Reference',
    null,
    '5ac1799579232526e18ff679bd82e86d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5ac1799579232526e18ff679bd82e86d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nanda'),
            ('B', 'Greek or Central Asian'),
            ('C', 'Gupta'),
            ('D', 'Satavahana')
           ) as v(label, option_text)
 where q.question_hash = '5ac1799579232526e18ff679bd82e86d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Kanishka''s support for the Mahayana school is attested by',
    'Kanishka convened the fourth council at Kundalvana and supported the Kashmir scholars who wrote the Mahavibhasha, and his reign marks the high tide of Mahayana Buddhism.',
    'medium',
    'Standard Reference',
    null,
    '4587868046a8f6a03cadc0edbbf2f6e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4587868046a8f6a03cadc0edbbf2f6e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'His sponsorship of the Fourth Buddhist Council and the Mahavibhasha at Kashmir'),
            ('B', 'His support for the Theravada school in Sri Lanka'),
            ('C', 'His prohibition of Buddhist monasteries'),
            ('D', 'His patronage of the Ajanta caves alone')
           ) as v(label, option_text)
 where q.question_hash = '4587868046a8f6a03cadc0edbbf2f6e0'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Mahavibhasha, a commentary on the Buddhist scriptures composed under Kanishka, was written by which group of scholars?',
    'The fourth council appointed a committee of Kashmir scholars under Vasumitra to compose the Mahavibhasha, the great Sanskrit commentary on the Tripitaka.',
    'medium',
    'Standard Reference',
    null,
    '4444802a8a5f97f95530a617ce44228e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4444802a8a5f97f95530a617ce44228e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Pali scholars of Sri Lanka'),
            ('B', 'The Nalanda monks of the Gupta age'),
            ('C', 'The Gandhara school of artists'),
            ('D', 'The Kashmir scholars led by Vasumitra')
           ) as v(label, option_text)
 where q.question_hash = '4444802a8a5f97f95530a617ce44228e'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Puranas, which were reshaped during the post-Mauryan period, are important because they',
    'The Puranas combine genealogical lists with religious narratives and were used to legitimate dynastic claims, particularly by the Guptas and the Vakatakas.',
    'medium',
    'Standard Reference',
    null,
    '6132b883cb054f24e4aac11ee753e178'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6132b883cb054f24e4aac11ee753e178'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were the earliest inscriptions of India'),
            ('B', 'Provide a continuous dynastic and religious narrative and support the sectarian cults'),
            ('C', 'Were the official administrative manuals of the Mauryas'),
            ('D', 'Record the trade with Rome in detail')
           ) as v(label, option_text)
 where q.question_hash = '6132b883cb054f24e4aac11ee753e178'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Mauryan-era development is reflected in the Ashokan emphasis on roads, wells, rest houses and the planting of trees?',
    'Ashoka''s inscriptions mention roads, wells, bridges and shade trees, showing attention to infrastructure that also served trade and administrative movement.',
    'medium',
    'NCERT Class XI',
    null,
    '171324197a4fa84f11fe34fa0c1ffd06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '171324197a4fa84f11fe34fa0c1ffd06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A state concern for public works and the movement of trade'),
            ('B', 'The creation of a standing professional army'),
            ('C', 'The introduction of the feudal system'),
            ('D', 'The beginning of the postal system of the British era')
           ) as v(label, option_text)
 where q.question_hash = '171324197a4fa84f11fe34fa0c1ffd06'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Megasthenes'' account of Mauryan society mentions six classes. Which of the following is NOT among them?',
    'Megasthenes lists philosophers, hunters, farmers, artisans, traders and hired labourers, but Brahmins appear in the fourth and fifth stages of life rather than as a separate occupational class.',
    'hard',
    'Standard Reference',
    null,
    '1d1ebb2ff01e412b9c86dc316630c2a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1d1ebb2ff01e412b9c86dc316630c2a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Farmers'),
            ('B', 'Artisans'),
            ('C', 'Brahmins engaged in philosophical debate'),
            ('D', 'Hunters and wild tribesmen')
           ) as v(label, option_text)
 where q.question_hash = '1d1ebb2ff01e412b9c86dc316630c2a2'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Megasthenes described the city of Pataliputra as having',
    'Megasthenes describes Pataliputra''s regularity, its palaces of wood and its great wooden palisade, and the arch of the royal palace was occupied by the king''s court.',
    'hard',
    'Standard Reference',
    null,
    '896f1f64fcb8285d67e44e7a593e14d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '896f1f64fcb8285d67e44e7a593e14d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parallel wooden palaces and the Mauryan royal court at the centre of a grid of streets'),
            ('B', 'Circular ramparts with a single northern gate'),
            ('C', 'No royal palace but a large merchant quarter'),
            ('D', 'A network of canals with no streets')
           ) as v(label, option_text)
 where q.question_hash = '896f1f64fcb8285d67e44e7a593e14d5'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Mauryan state''s revenue resources included taxes on land, trade and manufactures. Which tax is known to have existed?',
    'The bhogi or bhaga was a land tax on crops levied under the Mauryas, whereas zabt, peshkash and jamabandi belong to the Sultanate and later revenue systems.',
    'medium',
    'Standard Reference',
    null,
    '57d733d08c87bddeb536effd035bb694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '57d733d08c87bddeb536effd035bb694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The jamabandi'),
            ('B', 'The bhogi or bhaga land tax'),
            ('C', 'The zabt'),
            ('D', 'The peshkash')
           ) as v(label, option_text)
 where q.question_hash = '57d733d08c87bddeb536effd035bb694'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta-period literary work is a collection of stories about the loves of gods and is also attributed to Vyasa?',
    'The Harivamsha, part of the Mahabharata, narrates the childhood of Krishna and is generally dated to the Gupta period.',
    'hard',
    'Standard Reference',
    null,
    'cafdb2e9b660729d49a6f98aae56e4b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cafdb2e9b660729d49a6f98aae56e4b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Brahmavaivarta Purana'),
            ('B', 'The Uttararamacharita'),
            ('C', 'The Harivamsha'),
            ('D', 'The Mahabharata')
           ) as v(label, option_text)
 where q.question_hash = 'cafdb2e9b660729d49a6f98aae56e4b9'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Bhagavata Purana, which helped consolidate the Vaishnava cult, was composed in which language?',
    'The Bhagavata Purana was written in Sanskrit, probably in the Gupta period, and helped establish the worship of Vishnu and his avataras.',
    'medium',
    'Standard Reference',
    null,
    'fa17a36fad22f38271f8346a9743ea73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fa17a36fad22f38271f8346a9743ea73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pali'),
            ('B', 'Prakrit'),
            ('C', 'Tamil'),
            ('D', 'Sanskrit')
           ) as v(label, option_text)
 where q.question_hash = 'fa17a36fad22f38271f8346a9743ea73'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta-period poet wrote the Uttararamacharita and the Pratimanasaka?',
    'Vararuci, also called Vararuci or Bhuvaruchi, wrote the Uttararamacharita on the story of the Ramayana and the Pratimanasaka, a play on the recognition of Rama.',
    'medium',
    'Standard Reference',
    null,
    '86a4000751c22d4339c6d81064171e5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86a4000751c22d4339c6d81064171e5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dandin'),
            ('B', 'Bana'),
            ('C', 'Bhavabhuti'),
            ('D', 'Vararuci')
           ) as v(label, option_text)
 where q.question_hash = '86a4000751c22d4339c6d81064171e5c'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Kamandakiya Nitisara, an early Indian treatise on statecraft, was written by',
    'Kamandaka''s Kamandakiya Nitisara is a short Artha-shastra text that discusses the acquisition and preservation of the kingdom and the training of the king.',
    'hard',
    'Standard Reference',
    null,
    '4abd1201f63734e4bbcfeee0bacbc923'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4abd1201f63734e4bbcfeee0bacbc923'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kamandaka'),
            ('B', 'Kautilya'),
            ('C', 'Chanakya'),
            ('D', 'Yaska')
           ) as v(label, option_text)
 where q.question_hash = '4abd1201f63734e4bbcfeee0bacbc923'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Sev Sacrifice described in the Mahabharata was performed by which ruler as an act of atonement?',
    'The Sev or Sarvamedha sacrifice is described in the Mahabharata as being performed by the serpent king Takshaka and later by Janamejaya, who sought to destroy the serpents.',
    'hard',
    'Standard Reference',
    null,
    'fed5e8537977002b2c9471c9a109c3af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fed5e8537977002b2c9471c9a109c3af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raja Janamejaya'),
            ('B', 'Duryodhana'),
            ('C', 'Yama'),
            ('D', 'Krishna')
           ) as v(label, option_text)
 where q.question_hash = 'fed5e8537977002b2c9471c9a109c3af'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta-era development is associated with the Bhitargaon temple in Kanpur?',
    'The Bhitargaon temple, one of the earliest surviving stone temples in the Nagara tradition, is generally assigned to the Gupta period.',
    'hard',
    'Standard Reference',
    null,
    '37b6711abcd0c5dc8bdfacc0f2a4445b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '37b6711abcd0c5dc8bdfacc0f2a4445b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A brick stupa of the Nalanda type'),
            ('B', 'A stone temple showing a Nagara style with a curvilinear roof'),
            ('C', 'A rock-cut cave temple of the Pallava type'),
            ('D', 'A stupa of the Sanchi type')
           ) as v(label, option_text)
 where q.question_hash = '37b6711abcd0c5dc8bdfacc0f2a4445b'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Dashavatara temple at Deogarh, near modern Khajuraho, is attributed to which Gupta ruler?',
    'The Dashavatara temple at Deogarh is generally attributed to Chandragupta II Vikramaditya and shows the Nagara style of temple architecture with a curvilinear roof.',
    'hard',
    'Standard Reference',
    null,
    '8fc59213ab2c12500986744596373488'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8fc59213ab2c12500986744596373488'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Samudragupta'),
            ('B', 'Harsha'),
            ('C', 'Bhavavarman'),
            ('D', 'Chandragupta II')
           ) as v(label, option_text)
 where q.question_hash = '8fc59213ab2c12500986744596373488'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which inscription records that Harsha''s reign saw the production of the silver coin Suvarnanka?',
    'The Aihole inscription of Pulakeshin II, written by Ravikirti, mentions the silver coin Suvarnanka struck by Harsha and the story of the courtesan Vasavadatta.',
    'medium',
    'NCERT Class XII',
    null,
    'fb597b2f29dd312c45e3fb43cb379110'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fb597b2f29dd312c45e3fb43cb379110'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Eran inscription'),
            ('B', 'The Sanchi inscription'),
            ('C', 'The Aihole inscription of Pulakeshin II'),
            ('D', 'The Harsha inscription of Thanesar')
           ) as v(label, option_text)
 where q.question_hash = 'fb597b2f29dd312c45e3fb43cb379110'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Maukhari dynasty, which rose in the Ganga valley after the Guptas, had its capital at',
    'The Maukhari rulers of the Ganga valley, with their capital at Kannauj, were contemporaries and rivals of the Later Guptas or Pushyabhutis.',
    'hard',
    'Standard Reference',
    null,
    '408c4a9cd52240f4be12e241fbbffd00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '408c4a9cd52240f4be12e241fbbffd00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ujjain'),
            ('B', 'Kannauj'),
            ('C', 'Thanesar'),
            ('D', 'Tosali')
           ) as v(label, option_text)
 where q.question_hash = '408c4a9cd52240f4be12e241fbbffd00'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chinese pilgrim Hiuen Tsang noticed at Mathura the image of a colossal standing Buddha. Which king had built it?',
    'Hiuen Tsang described a huge standing Buddha image at Mathura erected by Kanishka, which was one of the first such colossal images in India.',
    'hard',
    'Standard Reference',
    null,
    'cfa355427e830e34a0f30100ab58b28c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cfa355427e830e34a0f30100ab58b28c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanishka'),
            ('B', 'Chandragupta II'),
            ('C', 'Harsha'),
            ('D', 'Ashoka')
           ) as v(label, option_text)
 where q.question_hash = 'cfa355427e830e34a0f30100ab58b28c'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Chalukyan ruler Pulakeshin II defeated the Nanda king of the Gangetic Doab and the Pallava king of Kanchi in which year?',
    'The Aihole inscription states that Pulakeshin II defeated the armies of the Nanda, the Pallava of Kanchi and the Chalukya of Vatapi, and raided the Chalukya capital in 634 CE.',
    'hard',
    'NCERT Class XII',
    null,
    'dc35eee3baafdeea2729dcb8c227e6a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dc35eee3baafdeea2729dcb8c227e6a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '634 CE'),
            ('B', '712 CE'),
            ('C', '753 CE'),
            ('D', '972 CE')
           ) as v(label, option_text)
 where q.question_hash = 'dc35eee3baafdeea2729dcb8c227e6a7'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Maharashtrian dynasty founded the Badami cave temples and the temple at Aihole?',
    'The Chalukyas of Badami, with capitals at Badami in Karnataka, patronised the cave temples of Badami, Aihole and Pattadakal and the Kailasa temple at Ellora.',
    'medium',
    'Standard Reference',
    null,
    '240bc60cdc7aa9d0fcd57eef55ff944d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '240bc60cdc7aa9d0fcd57eef55ff944d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rashtrakutas'),
            ('B', 'Pallavas'),
            ('C', 'Pandyas'),
            ('D', 'Chalukyas of Badami')
           ) as v(label, option_text)
 where q.question_hash = '240bc60cdc7aa9d0fcd57eef55ff944d'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which inscription, written by the court poet Ravikirti, praises the Rashtrakuta chieftain Dantidurga for reviving the fortunes of his family?',
    'The Aihole inscription praises Dantidurga for rescuing the fallen fortunes of the Rashtrakuta family, an important source for their early history.',
    'hard',
    'Standard Reference',
    null,
    '0004aa5d7ea10eaf9ceda2e41e98124a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0004aa5d7ea10eaf9ceda2e41e98124a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Allahabad pillar inscription'),
            ('B', 'The Sanchi inscription of Chandragupta II'),
            ('C', 'The Aihole inscription of Pulakeshin II'),
            ('D', 'The Junagadh inscription')
           ) as v(label, option_text)
 where q.question_hash = '0004aa5d7ea10eaf9ceda2e41e98124a'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Rashtrakuta ruler is credited with the Kailasa temple at Ellora cut out of a single rock?',
    'The Kailasa temple at Ellora was commissioned by Krishna I in the eighth century CE and was excavated top down from a single mass of rock.',
    'medium',
    'Standard Reference',
    null,
    'a7189906f0abc9589627f3da639bf70f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a7189906f0abc9589627f3da639bf70f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amoghavarsha I'),
            ('B', 'Krishna I'),
            ('C', 'Dantidurga'),
            ('D', 'Govinda III')
           ) as v(label, option_text)
 where q.question_hash = 'a7189906f0abc9589627f3da639bf70f'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Rashtrakuta king wrote the encyclopaedic Kavirajamarga?',
    'Amoghavarsha I, a noted patron of learning, wrote the Kavirajamarga, an early work of old Kannada literature, and his court included the playwright Adikavi Pujapari.',
    'hard',
    'Standard Reference',
    null,
    '1b677e0f4d6a00a1fb34de904ab388ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1b677e0f4d6a00a1fb34de904ab388ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dantidurga'),
            ('B', 'Amoghavarsha I'),
            ('C', 'Krishna I'),
            ('D', 'Govinda III')
           ) as v(label, option_text)
 where q.question_hash = '1b677e0f4d6a00a1fb34de904ab388ee'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Dakhshina Ramayana, an important early work of Kannada literature, was written by',
    'Adikavi Pujapari, a court poet of Amoghavarsha I, wrote the Dakhshina Ramayana, a Kannada rendering of the Ramayana story.',
    'hard',
    'Standard Reference',
    null,
    '250a62028ac6562b9ead12dfedb90014'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '250a62028ac6562b9ead12dfedb90014'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adikavi Pujapari'),
            ('B', 'Amoghavarsha I'),
            ('C', 'Basavanna'),
            ('D', 'Pampa')
           ) as v(label, option_text)
 where q.question_hash = '250a62028ac6562b9ead12dfedb90014'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Pallava ruler is credited with the musical treatise called the Abhinava Dasakumara Charita?',
    'Mahendravarman I, a great scholar, wrote the Abhinava Dasakumara Charita, a play of rare literary merit and an early landmark of Sanskrit drama.',
    'hard',
    'Standard Reference',
    null,
    '264778dbc3bde39ef1a253009b7b3f36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '264778dbc3bde39ef1a253009b7b3f36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Narasimhavarman I'),
            ('B', 'Rajasimha II'),
            ('C', 'Simhavishnu'),
            ('D', 'Mahendravarman I')
           ) as v(label, option_text)
 where q.question_hash = '264778dbc3bde39ef1a253009b7b3f36'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Indian ruler is described by the Chinese pilgrim as having a golden statue of the Buddha and a stone figure of the Bodhisattva?',
    'Hiuen Tsang notes that in the monastery of the king''s own construction there was a golden image of the Buddha of the king''s own height, showing the extent of Harsha''s patronage.',
    'medium',
    'NCERT Class XII',
    null,
    '26fa2f352f179dcf931cedfb6606c9c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '26fa2f352f179dcf931cedfb6606c9c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanishka'),
            ('B', 'Samudragupta'),
            ('C', 'Harsha'),
            ('D', 'Ashoka')
           ) as v(label, option_text)
 where q.question_hash = '26fa2f352f179dcf931cedfb6606c9c1'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Chinese pilgrim visited the Gupta India and recorded that the cities were well governed and the people prosperous?',
    'Fa-Hien''s Record of Buddhist Kingdoms praises the efficient administration, the absence of cruelty and the general prosperity of Gupta India.',
    'medium',
    'NCERT Class XII',
    null,
    'baa85816f96f7cfd5bdd61c3351f7694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'baa85816f96f7cfd5bdd61c3351f7694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fa-Hien'),
            ('B', 'Hiuen Tsang'),
            ('C', 'I-Ching'),
            ('D', 'Taibai')
           ) as v(label, option_text)
 where q.question_hash = 'baa85816f96f7cfd5bdd61c3351f7694'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'Which Gupta-period development is associated with the Mathura school of sculpture?',
    'The Mathura school developed a distinctly Indian idiom drawing on the local tradition, the Kushana and the Hellenistic world, which later influenced the Gupta sculptors.',
    'hard',
    'Standard Reference',
    null,
    '23ebeebb1107d928d9260f83de4066cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23ebeebb1107d928d9260f83de4066cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The making of life-size metal images by lost-wax casting'),
            ('B', 'A synthesis of indigenous and foreign artistic elements'),
            ('C', 'The first anthropomorphic images of the Buddha'),
            ('D', 'Realistic portraiture of the Roman type')
           ) as v(label, option_text)
 where q.question_hash = '23ebeebb1107d928d9260f83de4066cb'
on conflict (question_id, label) do nothing;

-- history | maurya-gupta-classical | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'maurya-gupta-classical'),
    'The Mauryan and Gupta periods together are known for the development of which of the following?',
    'Indian trade with South and South-East Asia flourished from about the first century BCE and Mauryan and Gupta urban centres such as Pataliputra, Ayodhya and Kaveripattinam grew on this traffic.',
    'medium',
    'NCERT Class XII',
    null,
    'e4318db2a4160b64ef4705e3812d32fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e4318db2a4160b64ef4705e3812d32fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The plantation economy'),
            ('B', 'The joint stock company'),
            ('C', 'Land routes with South and South-East Asia and the growth of urban centres'),
            ('D', 'A fully developed maritime navy')
           ) as v(label, option_text)
 where q.question_hash = 'e4318db2a4160b64ef4705e3812d32fa'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Tamil Nadu inscription of Rajendra Chola I, issued in 1015 CE, records his campaigns against',
    'The Tamil Nadu inscription lists the countries subdued by Rajendra I, including Srivijaya, Kadaram, the islands of Southeast Asia and the Chola realm itself.',
    'medium',
    'NCERT Class XII',
    null,
    '0593283e3c954c1be4b3de614136ce38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0593283e3c954c1be4b3de614136ce38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chalukyas of Badami'),
            ('B', 'The Rashtrakutas of the Deccan'),
            ('C', 'The Pallavas of Kanchipuram'),
            ('D', 'The Srivijaya empire of Sumatra and the Kadaram or Srivijaya vassal states')
           ) as v(label, option_text)
 where q.question_hash = '0593283e3c954c1be4b3de614136ce38'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'Which temple at Gangaikonda Cholapuram is regarded as the last great monument of the imperial Cholas?',
    'The Brihadisvara temple at Gangaikonda Cholapuram, built by Rajaraja I''s son Rajendra I, marks the high point and end of the great Chola temple-building era.',
    'hard',
    'Standard Reference',
    null,
    'fc139ca0047b9545977820420c679b51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc139ca0047b9545977820420c679b51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kailasanatha temple'),
            ('B', 'The Shore Temple'),
            ('C', 'The Brihadisvara temple'),
            ('D', 'The Airavatesvara temple')
           ) as v(label, option_text)
 where q.question_hash = 'fc139ca0047b9545977820420c679b51'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola copper plates issued by Rajaraja I bear the title',
    'The Tamil Nadu inscription of Rajaraja I, issued in 1015 CE and engraved on the north wall of the Brihadeshwara temple, lists the titles of the king.',
    'medium',
    'Standard Reference',
    null,
    '7242a7bb8acb87e509b7eeef8b15cd56'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7242a7bb8acb87e509b7eeef8b15cd56'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kannanur inscription'),
            ('B', 'Tamil Nadu inscription'),
            ('C', 'Muar inscription'),
            ('D', 'Anamalai inscription')
           ) as v(label, option_text)
 where q.question_hash = '7242a7bb8acb87e509b7eeef8b15cd56'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola administration relied on a large network of officials. Which of the following was NOT a typical Chola office?',
    'Nadu, the major administrative division, and Kuruntalai were Chola provinces, and Bhandavari was an official title; the sarsubhoga belongs to later medieval administrative usage.',
    'hard',
    'Standard Reference',
    null,
    '39f4f989332e7ed9675d1212e3e60a36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '39f4f989332e7ed9675d1212e3e60a36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sarsubhoga'),
            ('B', 'Nadu'),
            ('C', 'Kuruntalai'),
            ('D', 'Bhandavari')
           ) as v(label, option_text)
 where q.question_hash = '39f4f989332e7ed9675d1212e3e60a36'
on conflict (question_id, label) do nothing;

-- history | medieval-south | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola dynasty is described in inscriptions as taking pride in the title',
    'Chola inscriptions call their kings Cholappirar, and Rajaraja I styled himself Cholappiran at the head of a list of earlier Chola rulers.',
    'hard',
    'Standard Reference',
    null,
    '0b1653dad8a8fd793b2dac519d23d6fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0b1653dad8a8fd793b2dac519d23d6fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kalappirar'),
            ('B', 'Pallavar'),
            ('C', 'Cherar'),
            ('D', 'Cholappirar')
           ) as v(label, option_text)
 where q.question_hash = '0b1653dad8a8fd793b2dac519d23d6fd'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Cholas called their kingdom in inscriptions',
    'Chola inscriptions use the expression Cholamannigram for their country, and the term Tamilakam later came to denote the whole Tamil-speaking region.',
    'medium',
    'Standard Reference',
    null,
    'f41eb82594322eaf26a835407db99f04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f41eb82594322eaf26a835407db99f04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cholamannigram'),
            ('B', 'Tamuram'),
            ('C', 'Cheranadu'),
            ('D', 'Pandyanadu')
           ) as v(label, option_text)
 where q.question_hash = 'f41eb82594322eaf26a835407db99f04'
on conflict (question_id, label) do nothing;

-- history | medieval-south | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'history'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'history' and c.slug = 'medieval-south'),
    'The Chola navy fought the Srivijaya and Arab merchants. Which port was the chief naval base of the Cholas?',
    'The Cholas used Kaveripattinam and Nagapattinam, with a naval headquarters at Kaveripattinam, and built a large fleet for the campaigns of Rajendra I.',
    'medium',
    'Standard Reference',
    null,
    '87d7776225c2b5c2906123141f81b8ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '87d7776225c2b5c2906123141f81b8ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Muziris'),
            ('B', 'Kolkata'),
            ('C', 'Tamralipti'),
            ('D', 'Kaveripattinam and Nagapattinam')
           ) as v(label, option_text)
 where q.question_hash = '87d7776225c2b5c2906123141f81b8ed'
on conflict (question_id, label) do nothing;

commit;
