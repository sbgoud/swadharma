-- =============================================================================
-- polity_03.sql — polity question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''World Trade Organization'' and the ''Article'' of the Constitution:',
    'Article 294 provides that the agreements with the foreign states and the other international agreements of the character of the treaties and the agreements are valid, and this provides the constitutional basis for the WTO.',
    'hard',
    'Standard Reference',
    null,
    '5ae8c806c59ab0aafc9ec6161f901b0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5ae8c806c59ab0aafc9ec6161f901b0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 253 provides for them'),
            ('B', 'Article 261 provides for them'),
            ('C', 'There is no such provision'),
            ('D', 'Article 294 provides for the agreements with the foreign states')
           ) as v(label, option_text)
 where q.question_hash = '5ae8c806c59ab0aafc9ec6161f901b0d'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''International Court of Justice'' at The Hague is composed of:',
    'The ICJ has fifteen judges elected for nine years by the General Assembly and the Security Council, and the seat is at The Hague.',
    'medium',
    'Standard Reference',
    null,
    'e153b7e5899ae1a1d094d33c46eb5145'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e153b7e5899ae1a1d094d33c46eb5145'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifteen judges elected by the General Assembly and the Security Council for nine years'),
            ('B', 'Eleven judges elected by the General Assembly'),
            ('C', 'Twenty judges appointed by the states'),
            ('D', 'Fifteen judges elected by the states')
           ) as v(label, option_text)
 where q.question_hash = 'e153b7e5899ae1a1d094d33c46eb5145'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Indian Diplomatic Service'' is under the:',
    'The Ministry of External Affairs administers the Indian Diplomatic Service, the foreign service of India, and the ministry is under the charge of the Prime Minister.',
    'easy',
    'Standard Reference',
    null,
    'f5720baf2c691eccdba383aa71363021'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f5720baf2c691eccdba383aa71363021'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cabinet Secretariat'),
            ('B', 'Ministry of External Affairs'),
            ('C', 'Ministry of Home Affairs'),
            ('D', 'Ministry of Commerce')
           ) as v(label, option_text)
 where q.question_hash = 'f5720baf2c691eccdba383aa71363021'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Ministry of External Affairs'' is also known as the MEA and it is under the charge of:',
    'The Ministry of External Affairs is under the charge of the Prime Minister and it administers the Indian Diplomatic Service, which was created in 1921.',
    'easy',
    'Standard Reference',
    null,
    '6cdf8e2b58d507ae5f99aeb946b14f28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6cdf8e2b58d507ae5f99aeb946b14f28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Parliament'),
            ('B', 'The Finance Minister'),
            ('C', 'The Prime Minister'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = '6cdf8e2b58d507ae5f99aeb946b14f28'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following statements regarding the Article 253 is correct?',
    'The international agreements are valid in India under Article 294 and the Parliament implements them by legislating under Article 253.',
    'hard',
    'Standard Reference',
    null,
    '0c5de5bfdfb8f9d2594150fc7103d29f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c5de5bfdfb8f9d2594150fc7103d29f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the executive can implement the treaties'),
            ('B', 'The treaties are valid under Article 294 and the Parliament has the power to legislate under Article 253'),
            ('C', 'The treaties are valid only with the President''s assent'),
            ('D', 'The treaties are not binding in India')
           ) as v(label, option_text)
 where q.question_hash = '0c5de5bfdfb8f9d2594150fc7103d29f'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The SCO and the SAARC are the two regional groupings of which India is:',
    'India is a member of both the South Asian Association for Regional Cooperation and the Shanghai Cooperation Organisation, the latter in the capacity of a dialogue partner.',
    'medium',
    'Standard Reference',
    null,
    '7d55e19fa1685de4c5b00c0de3956e8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7d55e19fa1685de4c5b00c0de3956e8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a member of only the SAARC'),
            ('B', 'a member of neither'),
            ('C', 'a member'),
            ('D', 'a member of only the SCO')
           ) as v(label, option_text)
 where q.question_hash = '7d55e19fa1685de4c5b00c0de3956e8b'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'It was set up in 1990 and is:',
    'The Indian Council of Foreign Affairs, set up in 1990, is the successor of the Indian Institute of International Affairs founded in 1927.',
    'hard',
    'Standard Reference',
    null,
    'cfa26c4305b1e7bf285dd4ce4de9e4b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cfa26c4305b1e7bf285dd4ce4de9e4b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up in 1927'),
            ('B', 'a part of the UN'),
            ('C', 'set up in 1962'),
            ('D', 'the successor of the Indian Institute of International Affairs')
           ) as v(label, option_text)
 where q.question_hash = 'cfa26c4305b1e7bf285dd4ce4de9e4b9'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Article 19(1)(g) is:',
    'The freedom of trade and of the profession guaranteed by Article 19(1)(g) is the constitutional basis of the economic reforms and the liberalisation after 1991.',
    'medium',
    'Standard Reference',
    null,
    'c8441842e022db1c4ecf38fb39555b9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c8441842e022db1c4ecf38fb39555b9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the constitutional basis of the economic liberalisation'),
            ('B', 'the speech'),
            ('C', 'the religion'),
            ('D', 'about the elections')
           ) as v(label, option_text)
 where q.question_hash = 'c8441842e022db1c4ecf38fb39555b9a'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Marrakesh Agreement'' of 1994 established:',
    'The Marrakesh Agreement of April 1994 established the WTO as the successor of the GATT with effect from 1 January 1995.',
    'easy',
    'Standard Reference',
    null,
    '02f26257ed5fd51d6e54bf5c255d7dab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02f26257ed5fd51d6e54bf5c255d7dab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Trade Organization'),
            ('B', 'The IMF'),
            ('C', 'The World Bank'),
            ('D', 'The ASEAN')
           ) as v(label, option_text)
 where q.question_hash = '02f26257ed5fd51d6e54bf5c255d7dab'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''General Agreement on Tariffs and Trade'' was signed in:',
    'The GATT was signed in Geneva in October 1947 and it governed the world trade for almost half a century before the WTO replaced it.',
    'medium',
    'Standard Reference',
    null,
    'a297db5dd27ab8accb3add2497534167'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a297db5dd27ab8accb3add2497534167'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951'),
            ('B', '1964'),
            ('C', '1947'),
            ('D', '1944')
           ) as v(label, option_text)
 where q.question_hash = 'a297db5dd27ab8accb3add2497534167'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''WTO'' and the ''India'' and the ''1995'':',
    'India was a founding member of the WTO and it had signed the GATT in 1948, and it was also a member of the Uruguay Round.',
    'medium',
    'Standard Reference',
    null,
    'cd89ce31270e48536397271856818f38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd89ce31270e48536397271856818f38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India was not a member'),
            ('B', 'India was a founding member of the WTO'),
            ('C', 'India joined in 2008'),
            ('D', 'India joined in 1994 as an observer only')
           ) as v(label, option_text)
 where q.question_hash = 'cd89ce31270e48536397271856818f38'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''TRIPS'' agreement in the WTO deals with:',
    'The Agreement on Trade-Related Aspects of Intellectual Property Rights is the WTO agreement on the intellectual property rights.',
    'easy',
    'Standard Reference',
    null,
    '75910476ccd61d4df1614c24a9721483'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '75910476ccd61d4df1614c24a9721483'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The agriculture'),
            ('B', 'The services'),
            ('C', 'The textiles'),
            ('D', 'The intellectual property rights')
           ) as v(label, option_text)
 where q.question_hash = '75910476ccd61d4df1614c24a9721483'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''GATS'' in the WTO is the agreement on:',
    'The General Agreement on Trade in Services is the WTO agreement that covers the cross-border trade in the services.',
    'easy',
    'Standard Reference',
    null,
    '6de4f3342395f00b07da5fc743bc6d6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6de4f3342395f00b07da5fc743bc6d6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Textiles'),
            ('B', 'Trade in services'),
            ('C', 'Trade in goods'),
            ('D', 'Agriculture')
           ) as v(label, option_text)
 where q.question_hash = '6de4f3342395f00b07da5fc743bc6d6c'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Agreement on Agriculture'' of the WTO:',
    'The Agreement on Agriculture came into force in 1995 and it deals with the market access, the domestic support and the export subsidies in the agriculture.',
    'medium',
    'Standard Reference',
    null,
    'a5c349fdceffbec766e9358995e912ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a5c349fdceffbec766e9358995e912ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Covers the agriculture and the commitments on the subsidies and the market access'),
            ('B', 'Covers the intellectual property'),
            ('C', 'Covers the services'),
            ('D', 'Covers the textiles')
           ) as v(label, option_text)
 where q.question_hash = 'a5c349fdceffbec766e9358995e912ac'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''IMF'' and the ''Article'' of the Constitution:',
    'Article 282 empowers the Union to enter into the agreements with the international organisations and the international financial institutions like the IMF and the World Bank.',
    'hard',
    'Standard Reference',
    null,
    '4714c13f01c537aa60909927eaa5a15f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4714c13f01c537aa60909927eaa5a15f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 253 provides for them'),
            ('B', 'There is no provision'),
            ('C', 'Article 294 provides for them'),
            ('D', 'Article 282 provides for the agreements with the international financial institutions')
           ) as v(label, option_text)
 where q.question_hash = '4714c13f01c537aa60909927eaa5a15f'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The World Bank has:',
    'The World Bank comprises the International Bank for Reconstruction and Development and the International Development Association, and the other members are the IFC, the MIGA and the ICSID.',
    'medium',
    'Standard Reference',
    null,
    '2613257afc914faa5a68caf9863abddc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2613257afc914faa5a68caf9863abddc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a UN agency'),
            ('B', 'three entities'),
            ('C', 'two entities, the IDA and the IBRD'),
            ('D', 'a single entity')
           ) as v(label, option_text)
 where q.question_hash = '2613257afc914faa5a68caf9863abddc'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''UNEP'' is headquartered at:',
    'The United Nations Environment Programme, established in 1972, has its headquarters at Nairobi in Kenya, and its UNEP Emissions Gap Report is published annually.',
    'medium',
    'Standard Reference',
    null,
    'f37eca6346c2b66ffec557edd56c8524'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f37eca6346c2b66ffec557edd56c8524'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nairobi'),
            ('B', 'Geneva'),
            ('C', 'New York'),
            ('D', 'Paris')
           ) as v(label, option_text)
 where q.question_hash = 'f37eca6346c2b66ffec557edd56c8524'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following statements is/are correct in relation to the UN Security Council?',
    'India has been a non-permanent member of the Security Council since 1950 and it has served as a non-permanent member eight times, the most for any country.',
    'medium',
    'Standard Reference',
    null,
    'b0731ccd7f43f5da339e8ae955bbefe8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b0731ccd7f43f5da339e8ae955bbefe8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India joined the UNSC in 1991'),
            ('B', 'India has never been a member'),
            ('C', 'India has been a non-permanent member since 1950'),
            ('D', 'India was a permanent member till 1971')
           ) as v(label, option_text)
 where q.question_hash = 'b0731ccd7f43f5da339e8ae955bbefe8'
on conflict (question_id, label) do nothing;

-- polity | international-relations | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The UNESCO World Heritage Convention was:',
    'The Convention concerning the Protection of the World Cultural and Natural Heritage was adopted in 1972 and the first list was inscribed in 1978.',
    'easy',
    'Standard Reference',
    null,
    '428f1a18ec6dbf68029eb7d13fbb8f72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '428f1a18ec6dbf68029eb7d13fbb8f72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'adopted in 1971'),
            ('B', 'adopted in 1978'),
            ('C', 'adopted in 1945'),
            ('D', 'adopted in 1972')
           ) as v(label, option_text)
 where q.question_hash = '428f1a18ec6dbf68029eb7d13fbb8f72'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'Which of the following is correct in the case of the ILO?',
    'The ILO, established in 1919 as a part of the Treaty of Versailles, has its headquarters in Geneva, and the first conference was held in Washington.',
    'medium',
    'Standard Reference',
    null,
    '87333967028d363962b7bb61df6438f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '87333967028d363962b7bb61df6438f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is headquartered in Rome and was established in 1951'),
            ('B', 'The ILO is headquartered in Geneva and was established in 1919'),
            ('C', 'It is headquartered in Paris and was established in 1919'),
            ('D', 'It is headquartered in New York and was established in 1946')
           ) as v(label, option_text)
 where q.question_hash = '87333967028d363962b7bb61df6438f9'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The Constitution of the WHO was:',
    'The Constitution of the WHO was adopted at the International Health Conference in Geneva on 7 April 1948 with the 61st state ratifying it.',
    'medium',
    'Standard Reference',
    null,
    '85b355041594126936d6b441d920ef8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '85b355041594126936d6b441d920ef8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'adopted in 1950'),
            ('B', 'adopted in 1967'),
            ('C', 'adopted on 7 April 1948'),
            ('D', 'adopted in 1945')
           ) as v(label, option_text)
 where q.question_hash = '85b355041594126936d6b441d920ef8e'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 9'' of the Constitution provides for:',
    'Article 9 of the Constitution lists the uniform civil code for the citizens and it is not enforceable by the courts.',
    'medium',
    'Standard Reference',
    null,
    '7df335ec50a49e10d8f1a073f3d904e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7df335ec50a49e10d8f1a073f3d904e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the monuments'),
            ('B', 'The uniform civil code'),
            ('C', 'The right to the constitutional remedy'),
            ('D', 'The abolition of the untouchability')
           ) as v(label, option_text)
 where q.question_hash = '7df335ec50a49e10d8f1a073f3d904e2'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 8'' of the Constitution provides for:',
    'Article 8 gives every person the right to enforce the fundamental rights by moving the Supreme Court under Article 32 and the High Courts under Article 226.',
    'easy',
    'Standard Reference',
    null,
    '078995e53a03b2e4f979893ca197f713'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '078995e53a03b2e4f979893ca197f713'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The abolition of the untouchability'),
            ('B', 'The Directive Principles'),
            ('C', 'The special status of the Sikkim'),
            ('D', 'The Right to constitutional remedies')
           ) as v(label, option_text)
 where q.question_hash = '078995e53a03b2e4f979893ca197f713'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 29 and 30'' provide for the:',
    'Articles 29 and 30 protect the cultural and the educational rights of the minorities and the right of the minorities to establish and administer the educational institutions of their choice.',
    'medium',
    'Standard Reference',
    null,
    '3f2a9ffea6aa51be501fe5cffd394002'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3f2a9ffea6aa51be501fe5cffd394002'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cultural and educational rights of the minorities'),
            ('B', 'Right to freedom of religion'),
            ('C', 'Right to life'),
            ('D', 'Right to equality')
           ) as v(label, option_text)
 where q.question_hash = '3f2a9ffea6aa51be501fe5cffd394002'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 30'' of the Constitution guarantees:',
    'Article 30 guarantees the right of all the minorities, whether religious or linguistic, to establish and administer the educational institutions of their choice.',
    'easy',
    'Standard Reference',
    null,
    '764e2e2029d9ea88199404149c59de05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '764e2e2029d9ea88199404149c59de05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The right to the constitutional remedy'),
            ('B', 'The right to vote'),
            ('C', 'The right to the information'),
            ('D', 'The right of the minorities to establish and administer the educational institutions of their choice')
           ) as v(label, option_text)
 where q.question_hash = '764e2e2029d9ea88199404149c59de05'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 33'' provides that:',
    'Article 33 empowers Parliament to restrict the fundamental rights of the members of the armed forces, the paramilitary forces, the police and the intelligence agencies.',
    'hard',
    'Standard Reference',
    null,
    '9a66f88d0175406e53303c5a34d5beca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9a66f88d0175406e53303c5a34d5beca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parliament may restrict the fundamental rights of the members of the armed forces'),
            ('B', 'The fundamental rights are suspended in the emergency'),
            ('C', 'The courts may not enforce the fundamental rights'),
            ('D', 'The President may suspend the writs')
           ) as v(label, option_text)
 where q.question_hash = '9a66f88d0175406e53303c5a34d5beca'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 31A'' was inserted by:',
    'Article 31A, inserted by the First Amendment of 1951, protects the laws relating to the land reforms and the regulation of the Scheduled Areas from the judicial review.',
    'hard',
    'Standard Reference',
    null,
    'f92a887d6f3f1f6926c4c573dfa91a81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f92a887d6f3f1f6926c4c573dfa91a81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 7th Amendment'),
            ('B', 'The First Amendment'),
            ('C', 'The 42nd Amendment'),
            ('D', 'The 44th Amendment')
           ) as v(label, option_text)
 where q.question_hash = 'f92a887d6f3f1f6926c4c573dfa91a81'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 34'' of the Constitution provides:',
    'Article 34 provides that the members of the armed forces shall not be subject to the jurisdiction of any civil court and Article 33 empowers Parliament to restrict their fundamental rights.',
    'hard',
    'Standard Reference',
    null,
    'a343b2e774738f6b840e494a89b855c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a343b2e774738f6b840e494a89b855c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the monuments'),
            ('B', 'The reservation of the seats'),
            ('C', 'That the members of the armed forces shall not be tried by any civil court except as provided by Parliament'),
            ('D', 'The abolition of the untouchability')
           ) as v(label, option_text)
 where q.question_hash = 'a343b2e774738f6b840e494a89b855c5'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following statements regarding the Article 23 is correct?',
    'The 103rd Amendment of 2019 excluded the prohibition of the employment of the manual scavengers from the ambit of Article 23, which is a controversial retreat.',
    'hard',
    'Standard Reference',
    null,
    '31953af3fc643ca75c9c95d4b378b215'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31953af3fc643ca75c9c95d4b378b215'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 103rd Amendment created the NJAC'),
            ('B', 'The 103rd Amendment excluded the manual scavenging from the ambit of Article 23'),
            ('C', 'The 103rd Amendment added the right to education'),
            ('D', 'The 103rd Amendment added the GST Council')
           ) as v(label, option_text)
 where q.question_hash = '31953af3fc643ca75c9c95d4b378b215'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 359'' can be invoked only during:',
    'Article 359 can be invoked only on the proclamation of a national emergency, and the 44th Amendment limited it to the emergency and the ordinance period.',
    'medium',
    'Standard Reference',
    null,
    '064aafb128c607ffe2e1b64118975162'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '064aafb128c607ffe2e1b64118975162'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A national emergency'),
            ('B', 'The President''s Rule'),
            ('C', 'A financial emergency'),
            ('D', 'An ordinance')
           ) as v(label, option_text)
 where q.question_hash = '064aafb128c607ffe2e1b64118975162'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The Right of the Children to Free and Compulsory Education Act, 2009 gave:',
    'The Right of the Children to Free and Compulsory Education Act, 2009, which came into force on 1 April 2010, gave effect to Article 21A.',
    'medium',
    'Standard Reference',
    null,
    '756a520ccc2612f238184bbbbb2d2f37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '756a520ccc2612f238184bbbbb2d2f37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RTE Act amended Article 44'),
            ('B', 'only to the private schools'),
            ('C', 'effect to Article 21A'),
            ('D', 'of 2001')
           ) as v(label, option_text)
 where q.question_hash = '756a520ccc2612f238184bbbbb2d2f37'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 246A'' of the Constitution:',
    'Article 246A, inserted by the 42nd Amendment, gives the concurrent power of the Parliament and the state legislatures in the field of education.',
    'hard',
    'Standard Reference',
    null,
    '748349d6de20a045c95f888d24c4319e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '748349d6de20a045c95f888d24c4319e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the GST'),
            ('B', 'Deals with the cooperative societies'),
            ('C', 'Deals with the election commission'),
            ('D', 'Gives the concurrent power of the Parliament and the state legislatures over the education')
           ) as v(label, option_text)
 where q.question_hash = '748349d6de20a045c95f888d24c4319e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 269A'' of the Constitution deals with:',
    'Article 269A, inserted by the 101st Amendment, provides for the levy and the collection of the GST in the inter-state trade and the apportionment of the proceeds.',
    'hard',
    'Standard Reference',
    null,
    'bac3a3de88908d71b271601ab22f19fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bac3a3de88908d71b271601ab22f19fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The customs duty'),
            ('B', 'The levy and the collection of the goods and services tax in the inter-state trade and the apportionment of the proceeds'),
            ('C', 'The taxes on the sale of the petroleum products'),
            ('D', 'The income tax')
           ) as v(label, option_text)
 where q.question_hash = 'bac3a3de88908d71b271601ab22f19fb'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 279A'' of the Constitution deals with:',
    'Article 279A provides for the constitution of the GST Council, which is chaired by the Union Finance Minister with the state finance ministers as the members.',
    'medium',
    'Standard Reference',
    null,
    '72618d93a7a573847a3f13ccd5c429ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72618d93a7a573847a3f13ccd5c429ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GST Council'),
            ('B', 'The Election Commission'),
            ('C', 'The Finance Commission'),
            ('D', 'The Inter-State Council')
           ) as v(label, option_text)
 where q.question_hash = '72618d93a7a573847a3f13ccd5c429ee'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 280 recommended:',
    'The 15th Finance Commission recommended the health grants of Rs. 20,000 crore to the states for the primary health care and it raised the share of the health in the divisible pool.',
    'hard',
    'Standard Reference',
    null,
    '790a566b36c570ea3a874beff18a71d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '790a566b36c570ea3a874beff18a71d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the health grants of Rs. 2,000 crore'),
            ('B', 'it did not recommend the health grants'),
            ('C', 'the health grants of Rs. 1 lakh crore'),
            ('D', 'the health grants of Rs. 20,000 crore to the states')
           ) as v(label, option_text)
 where q.question_hash = '790a566b36c570ea3a874beff18a71d6'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Consider the following statements. Which of them is correct with regard to the Council of States?',
    'The elected members of the Rajya Sabha are elected by the state legislatures by the method of the proportional representation with the single transferable vote and the unanimity of the votes.',
    'hard',
    'Standard Reference',
    null,
    '2da5b86b8efc4b7effb29c2d4427e150'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2da5b86b8efc4b7effb29c2d4427e150'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are nominated by the President'),
            ('B', 'They are elected by the municipalities'),
            ('C', 'The members are elected by the state legislatures through the proportional representation with the single transferable vote'),
            ('D', 'They are elected by the direct election')
           ) as v(label, option_text)
 where q.question_hash = '2da5b86b8efc4b7effb29c2d4427e150'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Which of the following is correct in the case of the Rajya Sabha?',
    'The quorum in the Rajya Sabha is one-tenth of the total membership of the House and in the Lok Sabha it is also one-tenth.',
    'hard',
    'Standard Reference',
    null,
    '12ee002a53fca66c8aefd3bff192fb80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12ee002a53fca66c8aefd3bff192fb80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fifty members'),
            ('B', 'One-fourth of the total membership'),
            ('C', 'One-tenth of the total membership'),
            ('D', 'One-fifth of the total membership')
           ) as v(label, option_text)
 where q.question_hash = '12ee002a53fca66c8aefd3bff192fb80'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 80'' of the Constitution:',
    'Article 80 provides for the composition of the two houses of the Parliament and Article 81 for the duration of the Lok Sabha.',
    'medium',
    'Standard Reference',
    null,
    'fa835d402685488aa5482aa2d734cfdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fa835d402685488aa5482aa2d734cfdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the bills'),
            ('B', 'Provides for the composition of the two houses of the Parliament'),
            ('C', 'Provides for the sessions'),
            ('D', 'Provides for the privileges')
           ) as v(label, option_text)
 where q.question_hash = 'fa835d402685488aa5482aa2d734cfdb'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 84'' of the Constitution provides for:',
    'Article 84 provides for the qualifications of the members of the Parliament and Article 85 for the sessions.',
    'medium',
    'Standard Reference',
    null,
    '422f575e68eaedfec184b9c587025350'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '422f575e68eaedfec184b9c587025350'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The qualifications of the members of the Parliament'),
            ('B', 'The composition'),
            ('C', 'The sessions'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '422f575e68eaedfec184b9c587025350'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 86'' of the Constitution provides:',
    'Article 86 provides for the terms and conditions of the office of the Speaker and the Deputy Speaker of the Lok Sabha.',
    'hard',
    'Standard Reference',
    null,
    '5d44658af277abc7b5f702bd775444ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5d44658af277abc7b5f702bd775444ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the oath'),
            ('B', 'For the election'),
            ('C', 'For the privileges'),
            ('D', 'For the terms and conditions of the office of the Speaker and the Deputy Speaker')
           ) as v(label, option_text)
 where q.question_hash = '5d44658af277abc7b5f702bd775444ef'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 87'' of the Constitution deals with:',
    'Article 87 provides for the Chairman and the Deputy Chairman of the Rajya Sabha, and Article 88 provides for the vacancy of the office.',
    'medium',
    'Standard Reference',
    null,
    'b1766f1553b137c080a96570ce643495'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b1766f1553b137c080a96570ce643495'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chairman and the Deputy Chairman of the Rajya Sabha'),
            ('B', 'The Speaker of the Lok Sabha'),
            ('C', 'The quorum'),
            ('D', 'The privileges')
           ) as v(label, option_text)
 where q.question_hash = 'b1766f1553b137c080a96570ce643495'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 89'' of the Constitution deals with:',
    'Article 89 provides that the quorum of the Rajya Sabha is one-tenth of the total membership of the House.',
    'medium',
    'Standard Reference',
    null,
    '211dba3d87955cae224984dc0d2b13c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '211dba3d87955cae224984dc0d2b13c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sessions'),
            ('B', 'The quorum of the Rajya Sabha'),
            ('C', 'The composition'),
            ('D', 'The qualifications')
           ) as v(label, option_text)
 where q.question_hash = '211dba3d87955cae224984dc0d2b13c6'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 90'' of the Constitution deals with:',
    'Article 90 provides for the office of the Deputy Speaker of the Lok Sabha, and in his absence the Deputy Chairman of the Rajya Sabha presides over the House.',
    'hard',
    'Standard Reference',
    null,
    'eb0e312cbe3f86a8ef11da4eb721b450'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eb0e312cbe3f86a8ef11da4eb721b450'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chairman of the Rajya Sabha'),
            ('B', 'The quorum'),
            ('C', 'The privileges'),
            ('D', 'The office of the Deputy Speaker of the Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'eb0e312cbe3f86a8ef11da4eb721b450'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 81'' of the Constitution provides:',
    'Article 81 provides that the normal duration of the Lok Sabha shall be five years from the date on which the House first meets after the general election.',
    'easy',
    'Standard Reference',
    null,
    '53275cd1a15030cfdcf83394039fcd53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '53275cd1a15030cfdcf83394039fcd53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The qualifications'),
            ('B', 'The Speaker'),
            ('C', 'The duration of the Lok Sabha'),
            ('D', 'The composition')
           ) as v(label, option_text)
 where q.question_hash = '53275cd1a15030cfdcf83394039fcd53'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 82'' of the Constitution provides for:',
    'Article 82 provides for the constitution of a Delimitation Commission by the President and the power of the Parliament to enact the laws for the delimitation.',
    'medium',
    'Standard Reference',
    null,
    '8122dbd2e0b092bab7c730927f0a51e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8122dbd2e0b092bab7c730927f0a51e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The delimitation of the constituencies'),
            ('B', 'The composition'),
            ('C', 'The qualifications'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '8122dbd2e0b092bab7c730927f0a51e9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 88'' of the Constitution deals with:',
    'Article 88 provides for the vacancy of the office of the Chairman and the Deputy Chairman of the Rajya Sabha to be filled by the House.',
    'hard',
    'Standard Reference',
    null,
    '319feac140c70aadfe6d2579ecfb7fd6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '319feac140c70aadfe6d2579ecfb7fd6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The quorum'),
            ('B', 'The privileges'),
            ('C', 'The vacancy of the office of the Chairman and the Deputy Chairman of the Rajya Sabha'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '319feac140c70aadfe6d2579ecfb7fd6'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 91'' of the Constitution deals with:',
    'Article 91 provides for the office of the Speaker of the Lok Sabha and Article 92 for the vacancy of that office.',
    'medium',
    'Standard Reference',
    null,
    'ac0973e0f44f860fef3866925c646427'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ac0973e0f44f860fef3866925c646427'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition'),
            ('B', 'The office of the Speaker of the Lok Sabha'),
            ('C', 'The Chairman of the Rajya Sabha'),
            ('D', 'The quorum')
           ) as v(label, option_text)
 where q.question_hash = 'ac0973e0f44f860fef3866925c646427'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 92'' of the Constitution deals with:',
    'Article 92 provides for the vacancy of the office of the Speaker and the Deputy Speaker of the Lok Sabha to be filled by the House.',
    'medium',
    'Standard Reference',
    null,
    'e38089a31c3845a9732fa64aba3909b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e38089a31c3845a9732fa64aba3909b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The quorum'),
            ('B', 'The privileges'),
            ('C', 'The bills'),
            ('D', 'The vacancy of the office of the Speaker and the Deputy Speaker')
           ) as v(label, option_text)
 where q.question_hash = 'e38089a31c3845a9732fa64aba3909b0'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 93'' of the Constitution deals with:',
    'Article 93 provides that the quorum of the Lok Sabha shall be one-tenth of the total membership of the House.',
    'medium',
    'Standard Reference',
    null,
    'a6742f9cf545c15747c6fd7575c2a756'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a6742f9cf545c15747c6fd7575c2a756'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The sessions'),
            ('C', 'The quorum of the Lok Sabha'),
            ('D', 'The composition')
           ) as v(label, option_text)
 where q.question_hash = 'a6742f9cf545c15747c6fd7575c2a756'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 94'' of the Constitution deals with:',
    'Article 94 provides for the office of the Deputy Speaker of the Lok Sabha and Article 95 for the vacation of that office.',
    'hard',
    'Standard Reference',
    null,
    '5d7613ef242324f13173ad16c47b9bf4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d7613ef242324f13173ad16c47b9bf4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The office of the Deputy Speaker'),
            ('B', 'The Speaker'),
            ('C', 'The quorum'),
            ('D', 'The bills')
           ) as v(label, option_text)
 where q.question_hash = '5d7613ef242324f13173ad16c47b9bf4'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 96'' of the Constitution deals with:',
    'Article 96 provides for the office of the Chairman of the Rajya Sabha and Article 97 for the vacation of that office.',
    'medium',
    'Standard Reference',
    null,
    '649bf5817da5edd4028e239a36f6457d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '649bf5817da5edd4028e239a36f6457d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition'),
            ('B', 'The office of the Chairman of the Rajya Sabha'),
            ('C', 'The Speaker'),
            ('D', 'The quorum')
           ) as v(label, option_text)
 where q.question_hash = '649bf5817da5edd4028e239a36f6457d'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 97'' of the Constitution deals with:',
    'Article 97 provides for the vacancy of the office of the Chairman and the Deputy Chairman of the Rajya Sabha to be filled by the House.',
    'hard',
    'Standard Reference',
    null,
    'a0a5981b1e930cb1ba07669afa9651ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a0a5981b1e930cb1ba07669afa9651ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The quorum'),
            ('C', 'The composition'),
            ('D', 'The vacancy of the office of the Chairman and the Deputy Chairman of the Rajya Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'a0a5981b1e930cb1ba07669afa9651ba'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 98'' of the Constitution deals with:',
    'Article 98 provides that the quorum of the Rajya Sabha shall be one-tenth of the total membership of the House.',
    'medium',
    'Standard Reference',
    null,
    '6a3c758a5b45000b75ac72d36090be45'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a3c758a5b45000b75ac72d36090be45'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The privileges'),
            ('C', 'The quorum of the Rajya Sabha'),
            ('D', 'The composition')
           ) as v(label, option_text)
 where q.question_hash = '6a3c758a5b45000b75ac72d36090be45'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 99'' of the Constitution deals with:',
    'Article 99 provides for the procedure of the proceedings of the Parliament and the authority to make the rules of the procedure.',
    'medium',
    'Standard Reference',
    null,
    '3f12239a1d8e737f5e893244b44d78aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f12239a1d8e737f5e893244b44d78aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition'),
            ('B', 'The proceedings of the Parliament'),
            ('C', 'The quorum'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '3f12239a1d8e737f5e893244b44d78aa'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 104'' of the Constitution deals with:',
    'Article 104 provides for the privileges of the members of the Parliament and Article 105 for the restrictions on the freedom of speech.',
    'medium',
    'Standard Reference',
    null,
    '4590421e482c1bbab53bef44a50e1239'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4590421e482c1bbab53bef44a50e1239'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The qualification'),
            ('B', 'The election'),
            ('C', 'The oath'),
            ('D', 'The privileges of the members')
           ) as v(label, option_text)
 where q.question_hash = '4590421e482c1bbab53bef44a50e1239'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 106'' of the Constitution deals with:',
    'Article 106 provides for the privileges of the members of the state legislatures and Article 107 for the restrictions on the freedom of speech.',
    'hard',
    'Standard Reference',
    null,
    '34f06219d9ba5a37c908f8e0febe97ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '34f06219d9ba5a37c908f8e0febe97ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The privileges of the members of the state legislatures'),
            ('B', 'The Speaker'),
            ('C', 'The quorum'),
            ('D', 'The bills')
           ) as v(label, option_text)
 where q.question_hash = '34f06219d9ba5a37c908f8e0febe97ee'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 107'' of the Constitution deals with:',
    'Article 107 provides that the freedom of speech in the state legislatures shall not be subject to the restrictions in Article 104 except in the cases provided in Article 105.',
    'hard',
    'Standard Reference',
    null,
    '8494cd111ad8bc09532680639486edf3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8494cd111ad8bc09532680639486edf3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The quorum'),
            ('B', 'The bills'),
            ('C', 'The restrictions on the freedom of speech of the members of the state legislatures'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '8494cd111ad8bc09532680639486edf3'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Which of the following statements is/are correct in relation to the Article 107?',
    'Article 105 provides for the freedom of speech of the members of the Parliament and the freedom of expression in the matters of the debate and the immunity of the proceedings.',
    'medium',
    'Standard Reference',
    null,
    'da0cfb03a5d0fc4062d382ae10a506d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'da0cfb03a5d0fc4062d382ae10a506d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 105 is about the quorum'),
            ('B', 'Article 105 is about the elections'),
            ('C', 'Article 105 is about the bills'),
            ('D', 'Article 105 restricts the freedom of speech of the members of the Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'da0cfb03a5d0fc4062d382ae10a506d0'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 120'' of the Constitution deals with:',
    'Article 120 provides the right of the members of the Parliament to speak in the Parliament and the immunity of the proceedings.',
    'medium',
    'Standard Reference',
    null,
    'f3da98baefa7089ec00643029cada73f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3da98baefa7089ec00643029cada73f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The privileges'),
            ('B', 'The right of the members of the Parliament to speak in the Parliament'),
            ('C', 'The powers of the Parliament'),
            ('D', 'The procedures')
           ) as v(label, option_text)
 where q.question_hash = 'f3da98baefa7089ec00643029cada73f'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 121'' of the Constitution provides:',
    'Article 121 provides that the proceedings of the Parliament shall not be subject to the jurisdiction of any court and that the RTI Act does not apply to them.',
    'medium',
    'Standard Reference',
    null,
    'b55155e76d73b5424f997ac24e2088db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b55155e76d73b5424f997ac24e2088db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'That the proceedings of the Parliament are not subject to the jurisdiction of any court'),
            ('B', 'For the privileges'),
            ('C', 'For the Speaker'),
            ('D', 'For the bills')
           ) as v(label, option_text)
 where q.question_hash = 'b55155e76d73b5424f997ac24e2088db'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 122'' of the Constitution deals with:',
    'Article 122 provides for the vacancies of the seats of the members of the Parliament and the procedure of the by-election in the case of the pre-election vacation.',
    'medium',
    'Standard Reference',
    null,
    '614e268f32bf54665635aa70ab8a9672'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '614e268f32bf54665635aa70ab8a9672'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The vacancies of the seats of the members of the Parliament'),
            ('B', 'The privileges'),
            ('C', 'The Speaker'),
            ('D', 'The quorum')
           ) as v(label, option_text)
 where q.question_hash = '614e268f32bf54665635aa70ab8a9672'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 123'' and the ''ordinance'':',
    'Every ordinance must be laid before the Parliament and it ceases to operate six weeks after the Parliament reassembles, unless it is approved by the houses.',
    'hard',
    'Standard Reference',
    null,
    '735c6009b804a8bdd15eaae4176785d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '735c6009b804a8bdd15eaae4176785d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ordinance has a life of one year'),
            ('B', 'The ordinance needs the resolution of both the houses'),
            ('C', 'The ordinance must be laid before the Parliament within six weeks of the reassembly'),
            ('D', 'The ordinance must be laid within three months')
           ) as v(label, option_text)
 where q.question_hash = '735c6009b804a8bdd15eaae4176785d4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 124'' and the ''salaries of the judges'':',
    'The salaries, the allowances and the pensions of the Supreme Court judges are charged on the Consolidated Fund of India, and they cannot be varied to the disadvantage of a judge after the appointment.',
    'medium',
    'Standard Reference',
    null,
    'c46f950668e19831bc3b56ab28fa05f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c46f950668e19831bc3b56ab28fa05f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are paid from the discretionary fund'),
            ('B', 'Are charged on the Consolidated Fund of India'),
            ('C', 'Are paid by the states'),
            ('D', 'Are determined by the Executive')
           ) as v(label, option_text)
 where q.question_hash = 'c46f950668e19831bc3b56ab28fa05f5'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 146'' of the Constitution provides for:',
    'Article 146 provides that the salaries, the allowances and the pensions of the Supreme Court judges shall be charged on the Consolidated Fund and shall not be varied to their disadvantage after the appointment.',
    'hard',
    'Standard Reference',
    null,
    '24cc9b2d44280c1a144e75c2fc8cc9af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '24cc9b2d44280c1a144e75c2fc8cc9af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The salaries'),
            ('B', 'The oath'),
            ('C', 'The retirement'),
            ('D', 'The conditions of the service of the judges of the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '24cc9b2d44280c1a144e75c2fc8cc9af'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 147'' of the Constitution provides:',
    'Article 147 provides for the appointment of the judges of the High Courts by the Governor after consultation with the CJI, the state Chief Justice and the Governor.',
    'medium',
    'Standard Reference',
    null,
    '963a5a23edcdd88c8f2f5974995cfba9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '963a5a23edcdd88c8f2f5974995cfba9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For their qualifications'),
            ('B', 'For the appointment of the judges of the High Courts'),
            ('C', 'For their removal'),
            ('D', 'For their salaries')
           ) as v(label, option_text)
 where q.question_hash = '963a5a23edcdd88c8f2f5974995cfba9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 166'' of the Constitution deals with:',
    'Article 166 deals with the oath or the affirmation by the ministers and the governor and Article 163 with the advice of the Council of Ministers.',
    'hard',
    'Standard Reference',
    null,
    '6e22523fe9ca801d5428c76ec61e5794'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e22523fe9ca801d5428c76ec61e5794'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oath of the ministers and the governor'),
            ('B', 'The Council of Ministers'),
            ('C', 'The sessions of the assembly'),
            ('D', 'The bills')
           ) as v(label, option_text)
 where q.question_hash = '6e22523fe9ca801d5428c76ec61e5794'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 167'' of the Constitution provides:',
    'Article 167 provides that a minister shall not remain in office after the legislative assembly of the state has been dissolved and Article 164 provides for the Council of Ministers.',
    'hard',
    'Standard Reference',
    null,
    '1cf4426ac4c8f13b37b25e7b57d5c132'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1cf4426ac4c8f13b37b25e7b57d5c132'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the sessions'),
            ('B', 'For the bills'),
            ('C', 'For the tenure of the Council of Ministers at the state level'),
            ('D', 'For the oath')
           ) as v(label, option_text)
 where q.question_hash = '1cf4426ac4c8f13b37b25e7b57d5c132'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 163'' of the Constitution deals with:',
    'Article 163 provides that the ministers shall aid and advise the Governor and the Governor shall act in accordance with that advice except in the cases specified by the Constitution.',
    'medium',
    'Standard Reference',
    null,
    '4249e32881dca6079fe7ec600890d42b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4249e32881dca6079fe7ec600890d42b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oath'),
            ('B', 'The governor'),
            ('C', 'The bills'),
            ('D', 'The Council of Ministers at the state level')
           ) as v(label, option_text)
 where q.question_hash = '4249e32881dca6079fe7ec600890d42b'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 172'' of the Constitution deals with:',
    'Article 172 provides that the normal duration of the legislative assembly of a state shall be five years.',
    'medium',
    'Standard Reference',
    null,
    '591fb24860e3f264048a40afb0dc3ac8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '591fb24860e3f264048a40afb0dc3ac8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The qualifications'),
            ('C', 'The duration of the state legislative assemblies'),
            ('D', 'The composition')
           ) as v(label, option_text)
 where q.question_hash = '591fb24860e3f264048a40afb0dc3ac8'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 169'' of the Constitution provides:',
    'Article 169 provides for the abolition or the creation of the legislative councils in the states and the Parliament may by law abolish a council.',
    'medium',
    'Standard Reference',
    null,
    '6b4655c7769a05046416bc2534360f3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6b4655c7769a05046416bc2534360f3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the abolition or the creation of the legislative councils'),
            ('B', 'The composition'),
            ('C', 'The Speaker'),
            ('D', 'The bills')
           ) as v(label, option_text)
 where q.question_hash = '6b4655c7769a05046416bc2534360f3e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 170'' of the Constitution provides:',
    'Article 170 provides for the composition of the legislative assemblies of the states and the duration of the assemblies under Article 172.',
    'medium',
    'Standard Reference',
    null,
    '77b0fdd8f04d81da0c603f14e959c796'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '77b0fdd8f04d81da0c603f14e959c796'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The bills'),
            ('B', 'For the composition of the state legislative assemblies'),
            ('C', 'The abolition of the council'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '77b0fdd8f04d81da0c603f14e959c796'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 171'' of the Constitution deals with:',
    'Article 171 provides that the council shall consist of not more than one-third of the total number of the members of the assembly and the normal duration of the council is six years.',
    'hard',
    'Standard Reference',
    null,
    '8f672a800bcff0f000e9fc35c7327890'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8f672a800bcff0f000e9fc35c7327890'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition of the assembly'),
            ('B', 'The Speaker'),
            ('C', 'The bills'),
            ('D', 'The duration of the legislative council')
           ) as v(label, option_text)
 where q.question_hash = '8f672a800bcff0f000e9fc35c7327890'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 168'' of the Constitution provides:',
    'Article 168 provides for the constitution of the legislative councils in the states and the Article 169 for their abolition.',
    'medium',
    'Standard Reference',
    null,
    'bf70b58e67c848e20452fdf292e9b558'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bf70b58e67c848e20452fdf292e9b558'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the bills'),
            ('B', 'For the constitution of the state legislative councils'),
            ('C', 'For the duration of the assembly'),
            ('D', 'For the Speaker')
           ) as v(label, option_text)
 where q.question_hash = 'bf70b58e67c848e20452fdf292e9b558'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 174'' of the Constitution deals with:',
    'Article 174 provides for the duration of the legislative assembly of the state and Article 175 for the qualifications of the members.',
    'medium',
    'Standard Reference',
    null,
    '9a01751726dd2867cb192ab0034fb3d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9a01751726dd2867cb192ab0034fb3d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker'),
            ('B', 'The bills'),
            ('C', 'The duration of the legislative assembly'),
            ('D', 'The composition')
           ) as v(label, option_text)
 where q.question_hash = '9a01751726dd2867cb192ab0034fb3d2'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 175'' of the Constitution provides for:',
    'Article 175 lays down the qualifications of the members of the state legislative assemblies and Article 176 for the powers of the Legislative Council.',
    'medium',
    'Standard Reference',
    null,
    'bd0828071f9b07fd8ed87797823db0c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bd0828071f9b07fd8ed87797823db0c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The composition'),
            ('B', 'The Speaker'),
            ('C', 'The bills'),
            ('D', 'The qualifications of the members of the state legislature')
           ) as v(label, option_text)
 where q.question_hash = 'bd0828071f9b07fd8ed87797823db0c0'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 176'' of the Constitution provides:',
    'Article 176 provides for the composition of the legislative council of a state, which includes the elected and the nominated members and the members of the ministers and the speaker.',
    'hard',
    'Standard Reference',
    null,
    '2cc4498c4c94b470ca3296bca01bddf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2cc4498c4c94b470ca3296bca01bddf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the composition of the legislative council'),
            ('B', 'For the duration of the assembly'),
            ('C', 'For the Speaker'),
            ('D', 'For the bills')
           ) as v(label, option_text)
 where q.question_hash = '2cc4498c4c94b470ca3296bca01bddf9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 177'' of the Constitution provides:',
    'Article 177 provides for the duration of the legislative council of a state and Article 178 for the qualification for the membership.',
    'hard',
    'Standard Reference',
    null,
    'dc684002e302953cf7d7e97664edc242'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dc684002e302953cf7d7e97664edc242'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the bills'),
            ('B', 'For the duration of the legislative council'),
            ('C', 'For the composition'),
            ('D', 'For the Speaker')
           ) as v(label, option_text)
 where q.question_hash = 'dc684002e302953cf7d7e97664edc242'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 178'' of the Constitution provides for:',
    'Article 178 provides for the qualification of the members of the legislative council and Article 179 for the oath.',
    'hard',
    'Standard Reference',
    null,
    '2fab29c733bc0cd71d4d340b2c1d9eb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2fab29c733bc0cd71d4d340b2c1d9eb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The qualification of the members of the legislative council'),
            ('B', 'The composition'),
            ('C', 'The duration'),
            ('D', 'The Speaker')
           ) as v(label, option_text)
 where q.question_hash = '2fab29c733bc0cd71d4d340b2c1d9eb4'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 200'' of the Constitution provides:',
    'Article 200 provides that the expenditure of the state shall be subject to the provisions of the proviso to Article 256 and the annual statement of the estimates.',
    'hard',
    'Standard Reference',
    null,
    '81a04f342f3aa106617926f81678d0d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '81a04f342f3aa106617926f81678d0d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the taxes'),
            ('B', 'For the loans'),
            ('C', 'For the Consolidated Fund'),
            ('D', 'For the expenditure of the states')
           ) as v(label, option_text)
 where q.question_hash = '81a04f342f3aa106617926f81678d0d0'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 202'' of the Constitution provides:',
    'Article 202 provides for the taxes levied by the states and Article 203 for the application of the proceeds.',
    'hard',
    'Standard Reference',
    null,
    '4ab0d80c62049efed731fee191f9ad06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4ab0d80c62049efed731fee191f9ad06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the loans'),
            ('B', 'For the Finance Commission'),
            ('C', 'For the taxes of the states'),
            ('D', 'For the expenditure')
           ) as v(label, option_text)
 where q.question_hash = '4ab0d80c62049efed731fee191f9ad06'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 206'' of the Constitution provides for:',
    'Article 206 provides that the state may borrow, subject to the limits and the conditions of Article 199 and with the consent of the President in certain cases.',
    'hard',
    'Standard Reference',
    null,
    '2c652baa4b1ff9062002bf47a9867ce4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c652baa4b1ff9062002bf47a9867ce4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The taxes'),
            ('B', 'The expenditure'),
            ('C', 'The Consolidated Fund of the states'),
            ('D', 'The borrowing of the states')
           ) as v(label, option_text)
 where q.question_hash = '2c652baa4b1ff9062002bf47a9867ce4'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 207'' of the Constitution provides:',
    'Article 207 provides for the establishment of the Consolidated Fund of the state and the Public Account of the state.',
    'medium',
    'Standard Reference',
    null,
    '419b8002be42a980430e5e1ef2bcc679'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '419b8002be42a980430e5e1ef2bcc679'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the consolidated fund of the state'),
            ('B', 'For the taxes'),
            ('C', 'For the borrowing'),
            ('D', 'For the expenditure')
           ) as v(label, option_text)
 where q.question_hash = '419b8002be42a980430e5e1ef2bcc679'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 208'' of the Constitution provides:',
    'Article 208 provides for the Public Account of the state and Article 210 for the Contingency Fund of the state.',
    'medium',
    'Standard Reference',
    null,
    '3f296ae2fb95eb94c24c6cf59c837dc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3f296ae2fb95eb94c24c6cf59c837dc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For the borrowing'),
            ('B', 'For the public account of the state'),
            ('C', 'For the consolidated fund'),
            ('D', 'For the taxes')
           ) as v(label, option_text)
 where q.question_hash = '3f296ae2fb95eb94c24c6cf59c837dc2'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 266'' of the Constitution deals with:',
    'Article 266 deals with the Consolidated Fund of India and the Public Account of India and the Contingency Fund under Article 267.',
    'medium',
    'Standard Reference',
    null,
    'bb9a5aa6a4cb7a703d9f98414fc4e4d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bb9a5aa6a4cb7a703d9f98414fc4e4d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The budget'),
            ('B', 'The audit'),
            ('C', 'The Consolidated Fund of India and the Public Account of India'),
            ('D', 'The taxes')
           ) as v(label, option_text)
 where q.question_hash = 'bb9a5aa6a4cb7a703d9f98414fc4e4d4'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 267'' of the Constitution provides for:',
    'Article 267 provides for the Contingency Fund of India, which is placed at the disposal of the President to meet the unforeseen expenditure.',
    'medium',
    'Standard Reference',
    null,
    '805263ff0c26eeeb259d9e35d77fa3e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '805263ff0c26eeeb259d9e35d77fa3e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The budget'),
            ('B', 'The Contingency Fund of India'),
            ('C', 'The Consolidated Fund'),
            ('D', 'The Public Account')
           ) as v(label, option_text)
 where q.question_hash = '805263ff0c26eeeb259d9e35d77fa3e6'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 265'' of the Constitution deals with:',
    'Article 265 provides that no tax shall be levied or collected except by the authority of law and no grant shall be made except by the law, and it also provides for the Consolidated Fund and the Public Account of India.',
    'hard',
    'Standard Reference',
    null,
    '1ef4caa30877e9d46e51d6aa5e6549a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1ef4caa30877e9d46e51d6aa5e6549a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The no-tax and the no-grant clause'),
            ('B', 'The budget of the Union'),
            ('C', 'The audit by the CAG'),
            ('D', 'The Consolidated Fund of India')
           ) as v(label, option_text)
 where q.question_hash = '1ef4caa30877e9d46e51d6aa5e6549a9'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Which of the following statements regarding the Article 269A is correct?',
    'Article 269A provides for the levy and the collection of the GST in the inter-state trade and the apportionment of the proceeds, which was superseded by the Article 279A with the GST Council.',
    'hard',
    'Standard Reference',
    null,
    '86901bfdf99b94f948497ccc4336d408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '86901bfdf99b94f948497ccc4336d408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The apportionment of the customs duty'),
            ('B', 'The apportionment of the excise duty'),
            ('C', 'The apportionment of the GST proceeds between the Centre and the states'),
            ('D', 'The apportionment of the income tax')
           ) as v(label, option_text)
 where q.question_hash = '86901bfdf99b94f948497ccc4336d408'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 270'' of the Constitution deals with:',
    'Article 270 provides for the taxes levied by the Union but collected and appropriated by the states, including the stamp duties on the bills of exchange.',
    'hard',
    'Standard Reference',
    null,
    'a5ed3347913cdfe6cfdd3400fb86cd37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a5ed3347913cdfe6cfdd3400fb86cd37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The taxes levied by the states'),
            ('B', 'The income tax'),
            ('C', 'The customs duty'),
            ('D', 'The taxes levied by the Union but collected and appropriated by the states')
           ) as v(label, option_text)
 where q.question_hash = 'a5ed3347913cdfe6cfdd3400fb86cd37'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 271'' of the Constitution deals with:',
    'Article 271 provides for the taxes levied by the states but collected and appropriated by the Union, including the duties in respect of the succession to the property other than the agricultural land.',
    'hard',
    'Standard Reference',
    null,
    '3a202626ac96630f473abcd0df0a7c3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3a202626ac96630f473abcd0df0a7c3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The taxes levied by the Union'),
            ('B', 'The income tax'),
            ('C', 'The GST'),
            ('D', 'The taxes levied by the states but collected and appropriated by the Union')
           ) as v(label, option_text)
 where q.question_hash = '3a202626ac96630f473abcd0df0a7c3e'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 272'' of the Constitution deals with:',
    'Article 272 provides that no tax shall be levied by the Union or the state on the sale of goods in the Union territory of Delhi except the taxes on the supply of electricity and on the sale of liquor.',
    'hard',
    'Standard Reference',
    null,
    'd693138ebce0a76c48e1937185b7422a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd693138ebce0a76c48e1937185b7422a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GST'),
            ('B', 'The taxes levied by the Union and the states in the Union territory of Delhi'),
            ('C', 'The income tax'),
            ('D', 'The customs duty')
           ) as v(label, option_text)
 where q.question_hash = 'd693138ebce0a76c48e1937185b7422a'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 275'' of the Constitution deals with:',
    'Article 275 provides for the restrictions on the tax exemptions and the grants in aid and it was inserted by the 80th Amendment.',
    'hard',
    'Standard Reference',
    null,
    '79d8ccade90157ddce3456c4508d5928'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '79d8ccade90157ddce3456c4508d5928'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The budget'),
            ('B', 'The Finance Commission'),
            ('C', 'The restrictions on the tax exemptions and the grants in aid'),
            ('D', 'The taxes')
           ) as v(label, option_text)
 where q.question_hash = '79d8ccade90157ddce3456c4508d5928'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 277'' of the Constitution deals with:',
    'Article 277 provides that the Parliament may make the grants in aid to any state in need of assistance and it is charged on the Consolidated Fund of India.',
    'medium',
    'Standard Reference',
    null,
    '883569fe09205e8a4913f4d9b73b41a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '883569fe09205e8a4913f4d9b73b41a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The grants in aid from the Union to the states'),
            ('B', 'The taxes'),
            ('C', 'The budget'),
            ('D', 'The borrowing')
           ) as v(label, option_text)
 where q.question_hash = '883569fe09205e8a4913f4d9b73b41a7'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 282'' of the Constitution deals with:',
    'Article 282 empowers the Union to enter into the agreements with the international organisations and the financial institutions like the IMF and the World Bank and to guarantee the loans.',
    'hard',
    'Standard Reference',
    null,
    'bb3a763ad15053ea8b214172eeb2e34e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bb3a763ad15053ea8b214172eeb2e34e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ordinance'),
            ('B', 'The agreements with the international financial institutions'),
            ('C', 'The taxes'),
            ('D', 'The emergency')
           ) as v(label, option_text)
 where q.question_hash = 'bb3a763ad15053ea8b214172eeb2e34e'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 294'' of the Constitution provides that:',
    'Article 294 provides that the agreements with the foreign states and the other international agreements of the character of the treaties and the agreements are valid and that the federal government may enter into them.',
    'hard',
    'Standard Reference',
    null,
    'eb1c6024279505302fb506161f4d69fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eb1c6024279505302fb506161f4d69fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The treaties need the parliamentary approval only'),
            ('B', 'The treaties are not valid in India'),
            ('C', 'The agreements with the foreign states are valid'),
            ('D', 'The President can ratify the treaties alone')
           ) as v(label, option_text)
 where q.question_hash = 'eb1c6024279505302fb506161f4d69fb'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements is/are correct in relation to the Article 243ZD?',
    'The District Planning Committee consolidates the plans prepared by the Panchayats and the municipalities in the district and forwards them to the state government.',
    'medium',
    'Standard Reference',
    null,
    '0133edc582be1f6868531246db20d373'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0133edc582be1f6868531246db20d373'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It prepares the budget of the state'),
            ('B', 'It allocates the funds to the districts'),
            ('C', 'It conducts the elections'),
            ('D', 'The committee consolidates the plans of the Panchayats and the municipalities and forwards them to the state government')
           ) as v(label, option_text)
 where q.question_hash = '0133edc582be1f6868531246db20d373'
on conflict (question_id, label) do nothing;

-- polity | local-government | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements regarding the It guarantees 100 days of is correct?',
    'The MGNREGA guarantees 100 days of wage employment in a year to the rural households whose adult members volunteer for the unskilled manual work.',
    'easy',
    'Standard Reference',
    null,
    '93e9124fbcb581d90967426941c6b68a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '93e9124fbcb581d90967426941c6b68a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It guarantees 100 days of wage employment to the rural households'),
            ('B', 'It guarantees 150 days'),
            ('C', 'It guarantees 200 days'),
            ('D', 'It guarantees 50 days')
           ) as v(label, option_text)
 where q.question_hash = '93e9124fbcb581d90967426941c6b68a'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The unemployment allowance is:',
    'The MGNREGA provides for the unemployment allowance to be paid by the state if the work is not provided within 15 days of the demand and within 30 days of the receipt of the application for the work.',
    'hard',
    'Standard Reference',
    null,
    '8efd3d4a7d95998f72ea3829315d9f3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8efd3d4a7d95998f72ea3829315d9f3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The plan is made within 60 days'),
            ('B', 'The unemployment allowance is paid after 60 days of the demand for work'),
            ('C', 'The work is allotted within 60 days'),
            ('D', 'The payment is made within 60 days')
           ) as v(label, option_text)
 where q.question_hash = '8efd3d4a7d95998f72ea3829315d9f3f'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The seats for the Scheduled Castes and the Scheduled Tribes are:',
    'The seats for the Scheduled Castes and the Scheduled Tribes in the Panchayats are reserved in proportion to their population in the state and the reservation of the offices of the chairpersons is in proportion to the seats.',
    'hard',
    'Standard Reference',
    null,
    '7753165bf11a37f4d2fdbc650ed25638'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7753165bf11a37f4d2fdbc650ed25638'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'reserved in proportion to their population'),
            ('B', 'reserved at 25 per cent each'),
            ('C', 'reserved at 10 per cent each'),
            ('D', 'no reservation')
           ) as v(label, option_text)
 where q.question_hash = '7753165bf11a37f4d2fdbc650ed25638'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Balwant Rai Mehta Committee'' of 1957 recommended:',
    'The Balwant Rai Mehta Committee recommended the three-tier Panchayati Raj system, and the Gopalan and the Wanchoo Committees had earlier endorsed the same idea.',
    'medium',
    'Standard Reference',
    null,
    '72981288a0d4049f7616b1b726a2093c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '72981288a0d4049f7616b1b726a2093c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The abolition of the Legislative Council'),
            ('B', 'The reservation of the seats for the women'),
            ('C', 'The urban local bodies'),
            ('D', 'A three-tier Panchayati Raj system')
           ) as v(label, option_text)
 where q.question_hash = '72981288a0d4049f7616b1b726a2093c'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'It was appointed in 1953 and recommended:',
    'The Fazl Ali Commission was appointed in 1953 to examine the reorganisation of the states and it recommended the reorganisation on the linguistic basis, which the 1956 Act implemented.',
    'medium',
    'Standard Reference',
    null,
    '22171e9034feb15faa38136d2db7f03d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '22171e9034feb15faa38136d2db7f03d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the three-tier system'),
            ('B', 'the commission of the states'),
            ('C', 'the reorganisation on the linguistic basis'),
            ('D', 'appointed in 1948')
           ) as v(label, option_text)
 where q.question_hash = '22171e9034feb15faa38136d2db7f03d'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements is/are correct in relation to the 74th Amendment?',
    'The 74th Amendment provides for three types of the municipalities, the municipality, the municipal corporation and the nagar panchayat, with the categories left to the state governments.',
    'medium',
    'Standard Reference',
    null,
    '386c6f84f0556b0a93db375757640cdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '386c6f84f0556b0a93db375757640cdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ward committee, the ward office and the nagar panchayat'),
            ('B', 'The municipality, the corporation and the gram panchayat'),
            ('C', 'The municipality, the municipal corporation and the nagar panchayat'),
            ('D', 'The grama panchayat, the mandal panchayat and the zila parishad')
           ) as v(label, option_text)
 where q.question_hash = '386c6f84f0556b0a93db375757640cdb'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Nagarpanchayat'' is a:',
    'The nagar panchayat is a transitional form of the local self-government in the areas between a gram panchayat and a municipality.',
    'hard',
    'Standard Reference',
    null,
    '78b4e8ad6a0da726065e2a9f237df73c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '78b4e8ad6a0da726065e2a9f237df73c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A ward committee'),
            ('B', 'A district council'),
            ('C', 'A tribal council'),
            ('D', 'A transitional form of the local self-government between the gram panchayat and the municipality')
           ) as v(label, option_text)
 where q.question_hash = '78b4e8ad6a0da726065e2a9f237df73c'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243ZB'' of the Constitution provides for the:',
    'Article 243ZB provides for the constitution of the metropolitan committees for the metropolitan areas.',
    'hard',
    'Standard Reference',
    null,
    'aeb4d0e6ac3fe5fb007941a9d4adbdcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aeb4d0e6ac3fe5fb007941a9d4adbdcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The District Planning Committee'),
            ('B', 'The constitution of the metropolitan committees'),
            ('C', 'The Gram Sabha'),
            ('D', 'The Ward Committee')
           ) as v(label, option_text)
 where q.question_hash = 'aeb4d0e6ac3fe5fb007941a9d4adbdcc'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements regarding the 73rd Amendment is correct?',
    'The Eleventh Schedule lists the powers and the responsibilities of the Panchayats and the Twelfth Schedule lists those of the municipalities.',
    'medium',
    'Standard Reference',
    null,
    '7109b4eb4c6cb88cfba4d929bcb68830'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7109b4eb4c6cb88cfba4d929bcb68830'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It contains the powers and the responsibilities of the Panchayats'),
            ('B', 'It contains the fundamental duties'),
            ('C', 'It contains the languages'),
            ('D', 'It contains the anti-defection provisions')
           ) as v(label, option_text)
 where q.question_hash = '7109b4eb4c6cb88cfba4d929bcb68830'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Article 243ZC'' of the Constitution provides for:',
    'Article 243ZC provides for the constitution of the metropolitan districts in the metropolitan areas and their councils.',
    'hard',
    'Standard Reference',
    null,
    'a8aa3a748d78b892f35804d106baf044'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8aa3a748d78b892f35804d106baf044'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State Election Commission'),
            ('B', 'The constitution of the metropolitan districts'),
            ('C', 'The Gram Sabha'),
            ('D', 'The District Planning Committee')
           ) as v(label, option_text)
 where q.question_hash = 'a8aa3a748d78b892f35804d106baf044'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'How many committees did the Constituent Assembly set up to draft the Constitution of India?',
    'The Constituent Assembly appointed eight committees in 1946 to draft different parts of the Constitution, the Drafting Committee being the most important of them.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '2b4909ea5dac5df1ba480e4f7b9f3686'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b4909ea5dac5df1ba480e4f7b9f3686'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sixteen'),
            ('B', 'Ten'),
            ('C', 'Twelve'),
            ('D', 'Eight')
           ) as v(label, option_text)
 where q.question_hash = '2b4909ea5dac5df1ba480e4f7b9f3686'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Advisory Committee'' of the Constituent Assembly was headed by:',
    'Sachchidananda Sinha, a prominent advocate, chaired the Advisory Committee which dealt with the better future political structure of India; B. N. Rau was the Constitutional Adviser to the Assembly.',
    'medium',
    'Standard Reference',
    null,
    'f7b342d1ec4dd7d95f826b1e5cb7980f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f7b342d1ec4dd7d95f826b1e5cb7980f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sachchidananda Sinha'),
            ('B', 'Benegal Narsing Rau'),
            ('C', 'N. Gopalaswami Ayyangar'),
            ('D', 'H. C. Mukherjee')
           ) as v(label, option_text)
 where q.question_hash = 'f7b342d1ec4dd7d95f826b1e5cb7980f'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Who was designated the Chief Draftsman of the Constitution of India?',
    'N. Gopalaswami Ayyangar was designated the Chief Draftsman, a role he relinquished in 1950; B. N. Rau prepared the initial draft as Constitutional Adviser before the Drafting Committee took over.',
    'hard',
    'Standard Reference',
    null,
    'd3488255d3f60a84911c9d237d6d0c95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd3488255d3f60a84911c9d237d6d0c95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Syama Prasad Mukherjee'),
            ('B', 'H. C. Mukherjee'),
            ('C', 'N. Gopalaswami Ayyangar'),
            ('D', 'Benegal Narsing Rau')
           ) as v(label, option_text)
 where q.question_hash = 'd3488255d3f60a84911c9d237d6d0c95'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The original handwritten Constitution of India was published in how many languages?',
    'The original Constitution, calligraphed by the calligraphers of the Legislative Department, was published in English and 13 alternative Hindi versions, making fourteen languages in total.',
    'easy',
    'Standard Reference',
    null,
    '09e0644e8f0da70d4a032ff7b757cecb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '09e0644e8f0da70d4a032ff7b757cecb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eight'),
            ('B', 'Twenty-two'),
            ('C', 'Fourteen'),
            ('D', 'Eleven')
           ) as v(label, option_text)
 where q.question_hash = '09e0644e8f0da70d4a032ff7b757cecb'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The Preamble to the Constitution of India was amended for the first time by which Amendment Act?',
    'The First Amendment Act of 1951 amended Article 368 and added the words ''Sovereign'' and ''Democratic'' to the Preamble, which was the first amendment made to it.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'dbe8f300bcb6d7888efb6f4fe6bc5f89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dbe8f300bcb6d7888efb6f4fe6bc5f89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 52nd Amendment Act, 1985'),
            ('B', 'The First Amendment Act, 1951'),
            ('C', 'The 42nd Amendment Act, 1976'),
            ('D', 'The 44th Amendment Act, 1978')
           ) as v(label, option_text)
 where q.question_hash = 'dbe8f300bcb6d7888efb6f4fe6bc5f89'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'In the Kesavananda Bharati case, the Supreme Court held that the Preamble:',
    'The majority opinion in Kesavananda Bharati (1973) held that the Preamble is a part of the Constitution and can be amended under Article 368, though it cannot destroy the basic structure.',
    'hard',
    'Standard Reference',
    null,
    '1070a45fc2785a6c7baaacc457c24481'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1070a45fc2785a6c7baaacc457c24481'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a part of the Constitution'),
            ('B', 'is not a part of the Constitution'),
            ('C', 'can be amended only by a simple majority of Parliament'),
            ('D', 'is a part of the Constitution only from the date of the 42nd Amendment')
           ) as v(label, option_text)
 where q.question_hash = '1070a45fc2785a6c7baaacc457c24481'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 21C of the Constitution of India provides for:',
    'Article 21C, inserted by the 86th Amendment Act of 2002, provides for early childhood care and development below the age of six; Article 21A deals with education between six and fourteen years.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '4f44b451c110f2526a1cae8c5c8be0c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4f44b451c110f2526a1cae8c5c8be0c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The right to a clean environment'),
            ('B', 'The right to information'),
            ('C', 'Free and compulsory education for children aged 6 to 14 years'),
            ('D', 'Early childhood care and development of children below six years of age')
           ) as v(label, option_text)
 where q.question_hash = '4f44b451c110f2526a1cae8c5c8be0c7'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 23(2) of the Constitution of India provides that:',
    'Article 23(1) prohibits traffic in human beings and forced labour, and clause (2) makes its violation a punishable offence; abolition of bonded labour was achieved through statute.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'a5a3058586e55ce3fd87eac88bb05c94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a5a3058586e55ce3fd87eac88bb05c94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the bonded labour system is abolished by law'),
            ('B', 'violation of clause (1) shall be a punishable offence'),
            ('C', 'children below fourteen years of age shall not work in factories'),
            ('D', 'the right to work is a fundamental right for all citizens')
           ) as v(label, option_text)
 where q.question_hash = 'a5a3058586e55ce3fd87eac88bb05c94'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 19(2) of the Constitution permits reasonable restrictions in the interest of all EXCEPT:',
    'The grounds in Article 19(2) are sovereignty and integrity of India, security of the State, friendly relations with foreign States, public order, decency or morality and prevention of incitement to an offence; protection of the environment is not a listed ground.',
    'medium',
    'Standard Reference',
    null,
    '639780de80d97562f0dc01bf1393fb93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '639780de80d97562f0dc01bf1393fb93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'friendly relations with foreign States'),
            ('B', 'security of the State'),
            ('C', 'protection of the environment'),
            ('D', 'public order')
           ) as v(label, option_text)
 where q.question_hash = '639780de80d97562f0dc01bf1393fb93'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which Article, inserted by the 42nd Amendment Act of 1976, was declared void by the Supreme Court in the ADM Jabalpur case?',
    'Article 32A, which enabled preventive detention for the preservation of national security, was inserted by the 42nd Amendment and struck down by the Supreme Court in ADM Jabalpur v. Shivkant Shukla (1976).',
    'hard',
    'Standard Reference',
    null,
    'a9aeb8dbca4205f3fb768ba967aecf1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9aeb8dbca4205f3fb768ba967aecf1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 32A'),
            ('B', 'Article 33'),
            ('C', 'Article 34'),
            ('D', 'Article 31A')
           ) as v(label, option_text)
 where q.question_hash = 'a9aeb8dbca4205f3fb768ba967aecf1c'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 18(2) of the Constitution of India provides that a person holding an office under the State:',
    'Article 18(1) abolishes titles, while Article 18(2) bars acceptance of any title from a foreign State without the consent of the President; the prohibition does not extend to military or academic distinctions.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '6a22c3d8287fbd51a91d4b9949a89801'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a22c3d8287fbd51a91d4b9949a89801'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'may accept a military title after five years of service in the army'),
            ('B', 'shall not retain any title after ceasing to hold office'),
            ('C', 'shall not accept any title from a foreign State at all'),
            ('D', 'shall not, without the consent of the President, accept any title from a foreign State')
           ) as v(label, option_text)
 where q.question_hash = '6a22c3d8287fbd51a91d4b9949a89801'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Article 30A of the Constitution of India protects:',
    'Article 30A, inserted by the 42nd Amendment Act of 1976, protects the right of minorities to establish and administer educational institutions of their choice.',
    'hard',
    'Standard Reference',
    null,
    '41c30d8c36d140c263d4bdfc354d5681'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '41c30d8c36d140c263d4bdfc354d5681'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the right of minorities to establish and administer educational institutions'),
            ('B', 'the right of the State to acquire private property for public purposes'),
            ('C', 'the freedom of the press and the freedom of speech'),
            ('D', 'the right to form trade unions and associations')
           ) as v(label, option_text)
 where q.question_hash = '41c30d8c36d140c263d4bdfc354d5681'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The 42nd Amendment Act of 1976 inserted Article 43A, which deals with:',
    'Article 43A provides for the participation of workers in the management of industries; Article 42 deals with co-operative societies and Article 43 with cottage industries in rural areas.',
    'easy',
    'Standard Reference',
    null,
    'bfda00f1c0429b25b1f5dae63120ab3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bfda00f1c0429b25b1f5dae63120ab3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the promotion of co-operative societies'),
            ('B', 'the right to work, education and public assistance'),
            ('C', 'the promotion of cottage industries in rural areas'),
            ('D', 'participation of workers in the management of industries')
           ) as v(label, option_text)
 where q.question_hash = 'bfda00f1c0429b25b1f5dae63120ab3d'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 41 of the Constitution of India directs the State to secure:',
    'Article 41 directs the State to secure the right to work, to education and to public assistance in certain cases; the social order clause appears in Article 38.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '52679bfcdf4fbccb0674bd3e1899c9b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '52679bfcdf4fbccb0674bd3e1899c9b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the organisation of village panchayats'),
            ('B', 'the promotion of co-operative societies'),
            ('C', 'the right to work, to education and to public assistance in certain cases'),
            ('D', 'a social order in which social, economic and political justice informs all institutions')
           ) as v(label, option_text)
 where q.question_hash = '52679bfcdf4fbccb0674bd3e1899c9b2'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 42 of the Constitution of India directs the State to promote:',
    'Article 42 asks the State to promote the promotion of co-operative societies, while Article 43A deals with workers'' participation in management and Article 44 with a uniform civil code.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'f3cb0454545c8a1576f1d405e9ce2413'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3cb0454545c8a1576f1d405e9ce2413'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a uniform civil code for the citizens'),
            ('B', 'the promotion of co-operative societies'),
            ('C', 'the participation of workers in the management of industries'),
            ('D', 'the raising of the level of living of workers')
           ) as v(label, option_text)
 where q.question_hash = 'f3cb0454545c8a1576f1d405e9ce2413'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 37 of the Constitution of India provides that the Directive Principles of State Policy:',
    'Article 37 makes the Directive Principles non-justiciable but fundamental in the governance of the country, and they apply to the Union as well as to the States.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '8d6d2e4aef4f9a6278b4855f3754094f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d6d2e4aef4f9a6278b4855f3754094f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'apply only to the Union Government and not to the States'),
            ('B', 'shall not be enforceable by any court but shall be the guiding principles of the State'),
            ('C', 'are enforceable in the High Courts on a discretionary basis'),
            ('D', 'are enforceable by the Supreme Court through writs')
           ) as v(label, option_text)
 where q.question_hash = '8d6d2e4aef4f9a6278b4855f3754094f'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Article 45 of the Constitution, as it originally stood, directed the State to provide free and compulsory education for children up to the age of:',
    'Original Article 45 promised free and compulsory education for children up to fourteen years; it was substituted by the 86th Amendment Act of 2002 in the light of the RTE Act.',
    'easy',
    'Standard Reference',
    null,
    '8590ce473929ca5101fd90e20030bb84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8590ce473929ca5101fd90e20030bb84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'fourteen years'),
            ('B', 'ten years'),
            ('C', 'twelve years'),
            ('D', 'six years')
           ) as v(label, option_text)
 where q.question_hash = '8590ce473929ca5101fd90e20030bb84'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The Fundamental Duties added to the Constitution by the 42nd Amendment Act of 1976 are:',
    'In Kirpal Singh v. State of Punjab (1962) the Supreme Court held that Fundamental Duties are not enforceable by courts directly but courts may enforce them in a ''different kind'' of proceedings.',
    'easy',
    'Standard Reference',
    null,
    '6e065def031c8f574aeb1001eea81956'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6e065def031c8f574aeb1001eea81956'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'enforceable in the High Courts only'),
            ('B', 'not enforceable at all, being merely moral obligations'),
            ('C', 'enforceable in courts of a different kind'),
            ('D', 'enforceable in the Supreme Court only')
           ) as v(label, option_text)
 where q.question_hash = '6e065def031c8f574aeb1001eea81956'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 371 of the Constitution, as it stood before 2019, provided special provisions with respect to:',
    'Article 371 granted special provisions to Jammu and Kashmir; Article 371A covers Sikkim, 371B Arunachal Pradesh and Mizoram, and 371C Nagaland.',
    'medium',
    'Standard Reference',
    null,
    '748e0dd016f6c7a3a5df10c175d8c682'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '748e0dd016f6c7a3a5df10c175d8c682'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nagaland'),
            ('B', 'Arunachal Pradesh'),
            ('C', 'Sikkim'),
            ('D', 'Jammu and Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '748e0dd016f6c7a3a5df10c175d8c682'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Constitution (Scheduled Tribes) Amendment Act, 2023 (107th Amendment) provides for:',
    'The 107th Amendment enables the nomination of Scheduled Tribe members to the legislatures of the listed States, filling the gap left by the delimitation freeze in the Fifth and Sixth Schedule areas.',
    'hard',
    'Standard Reference',
    2023,
    'ddb7ae56e2d5cb051f9132fbe48e1540'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ddb7ae56e2d5cb051f9132fbe48e1540'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'nomination of members of the Scheduled Tribes to the legislatures of certain States'),
            ('B', 'reservation of tribal judges in the High Courts'),
            ('C', 'extension of the 73rd Amendment to the tribal areas of Assam'),
            ('D', 'creation of tribal universities in the Fifth Schedule areas')
           ) as v(label, option_text)
 where q.question_hash = 'ddb7ae56e2d5cb051f9132fbe48e1540'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The 92nd Constitutional Amendment Act of 2003 added to the Eighth Schedule the languages:',
    'The 92nd Amendment added Bhojpuri, Maithili, Dogri and Sanskrit to the Eighth Schedule, raising the number of scheduled languages to 22; the others were already scheduled.',
    'medium',
    'Standard Reference',
    2003,
    '1c8ce560f43ed4ce77b30ab85c22503c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1c8ce560f43ed4ce77b30ab85c22503c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sindhi, Kashmiri, Tulu and Kodava'),
            ('B', 'Sanskrit, Tamil, Telugu and Malayalam'),
            ('C', 'Urdu, Persian, Nepali and Konkani'),
            ('D', 'Bhojpuri, Maithili, Dogri and Sanskrit')
           ) as v(label, option_text)
 where q.question_hash = '1c8ce560f43ed4ce77b30ab85c22503c'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Article 279A(9A), inserted by the 101st Amendment Act, provides for:',
    'Sub-article (9A) of Article 279A provides for compensation to any State in case of a reduction in its share of tax revenue on account of the implementation of GST, as recommended by the GST Council.',
    'medium',
    'Standard Reference',
    null,
    'fa0a6edc8e76181762759b139e3552ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fa0a6edc8e76181762759b139e3552ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the power of the GST Council to levy GST on inter-State supplies'),
            ('B', 'the apportionment of the proceeds of GST between the Union and the States'),
            ('C', 'the power of Parliament to levy GST in the States'),
            ('D', 'compensation to the States for loss of revenue on account of GST')
           ) as v(label, option_text)
 where q.question_hash = 'fa0a6edc8e76181762759b139e3552ff'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Inter-State Council is chaired by the:',
    'Article 263 provides for the Inter-State Council, which is chaired by the Prime Minister and investigates and advises on questions of common interest to several States.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'd750ae12a5dd25a2d0db8ede3bcd6123'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd750ae12a5dd25a2d0db8ede3bcd6123'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Governor of the State in which the Council meets'),
            ('B', 'President of India'),
            ('C', 'Prime Minister'),
            ('D', 'Home Minister')
           ) as v(label, option_text)
 where q.question_hash = 'd750ae12a5dd25a2d0db8ede3bcd6123'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Articles 395 and 396, inserted by the 26th Amendment Act of 1971, abolished:',
    'The 26th Amendment abolished the Privy Council''s jurisdiction for India and the privy purses of the erstwhile princely rulers; Legislative Councils are dealt with by Article 169.',
    'hard',
    'Standard Reference',
    null,
    'acbe64e07d3321fa16bf3798826e26b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'acbe64e07d3321fa16bf3798826e26b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the office of the Speaker of the Lok Sabha'),
            ('B', 'the office of the Governor-General of India'),
            ('C', 'the Legislative Councils of the States'),
            ('D', 'the jurisdiction of the Privy Council and privy purses')
           ) as v(label, option_text)
 where q.question_hash = 'acbe64e07d3321fa16bf3798826e26b6'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The President''s Rule in a State can continue for a maximum period of:',
    'Under Article 356, President''s Rule can continue for one year with an extension of one year at a time with the approval of both Houses, but it cannot exceed three years in all.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'da68daca8f2de900ecfe7b5f2746766f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'da68daca8f2de900ecfe7b5f2746766f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'two years'),
            ('B', 'three years'),
            ('C', 'six months'),
            ('D', 'one year')
           ) as v(label, option_text)
 where q.question_hash = 'da68daca8f2de900ecfe7b5f2746766f'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Lok Sabha was first constituted on:',
    'The first Lok Sabha was constituted after the first general elections in 1952 and held its inaugural sitting on 17 April 1952; the Rajya Sabha was constituted on 3 April 1952.',
    'medium',
    'Standard Reference',
    null,
    'd8489b4d5ee8df7635b58082bc1088a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8489b4d5ee8df7635b58082bc1088a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '17 April 1952'),
            ('B', '26 January 1950'),
            ('C', '15 August 1947'),
            ('D', '3 April 1952')
           ) as v(label, option_text)
 where q.question_hash = 'd8489b4d5ee8df7635b58082bc1088a3'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Business Advisory Committee of the Lok Sabha, which recommends the sequence and priority of business, is chaired by the:',
    'The Business Advisory Committee is a non-financial committee constituted by the Speaker, who chairs it, along with the Leader of the House, the Leader of the Opposition and other members.',
    'easy',
    'Standard Reference',
    null,
    '6a9892aa404e83d485fd1df95d2b1897'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a9892aa404e83d485fd1df95d2b1897'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deputy Speaker of the Lok Sabha'),
            ('B', 'Leader of the House in the Lok Sabha'),
            ('C', 'Speaker of the Lok Sabha'),
            ('D', 'Leader of the Opposition')
           ) as v(label, option_text)
 where q.question_hash = '6a9892aa404e83d485fd1df95d2b1897'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A no-confidence motion against the Council of Ministers in the Lok Sabha requires the support of at least:',
    'Under the Rules of Procedure, a no-confidence motion can be moved only with the support of at least fifty members, and the Council of Ministers is entitled to a fixed reply.',
    'easy',
    'Standard Reference',
    null,
    '8b5b438a5f59bd5c98825b54a5c67bab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8b5b438a5f59bd5c98825b54a5c67bab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '100 members'),
            ('B', '50 members'),
            ('C', 'one-tenth of the total strength of the House'),
            ('D', '10 members')
           ) as v(label, option_text)
 where q.question_hash = '8b5b438a5f59bd5c98825b54a5c67bab'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Which of the following is NOT a financial committee of the Parliament of India?',
    'The Committee on Petitions is a non-financial committee that examines petitions relating to matters of public interest; the Estimates Committee, Financial Advisory Council and Committee on Public Undertakings are financial committees.',
    'medium',
    'Standard Reference',
    null,
    '403927df7174c1e91293b39c950f6175'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '403927df7174c1e91293b39c950f6175'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Financial Advisory Council'),
            ('B', 'Committee on Public Undertakings'),
            ('C', 'Committee on Petitions'),
            ('D', 'Estimates Committee')
           ) as v(label, option_text)
 where q.question_hash = '403927df7174c1e91293b39c950f6175'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Under Article 100(3), if the House is dissolved before the expiry of its five-year term, the House is deemed to have completed:',
    'Article 100(3) provides that where a House is dissolved before the expiry of its five-year term, it is deemed to have completed five years, which prevents the incumbent government from seeking a fresh mandate.',
    'medium',
    'Standard Reference',
    null,
    '6a15bbef813c3fe1a8d6df8d2b63a202'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a15bbef813c3fe1a8d6df8d2b63a202'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'one year'),
            ('B', 'three years'),
            ('C', 'two years'),
            ('D', 'five years')
           ) as v(label, option_text)
 where q.question_hash = '6a15bbef813c3fe1a8d6df8d2b63a202'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The salaries of judges of the Supreme Court and of the High Courts are charged on:',
    'Salaries, allowances and pensions of Supreme Court and High Court judges are charged on the Consolidated Fund of India, though they are not subject to the vote of either House of Parliament.',
    'medium',
    'Standard Reference',
    null,
    '0887d4d52ef4d941a12110540e5446f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0887d4d52ef4d941a12110540e5446f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Consolidated Fund of India'),
            ('B', 'the Public Account of India'),
            ('C', 'the Consolidated Fund of the State concerned'),
            ('D', 'the Contingency Fund of India')
           ) as v(label, option_text)
 where q.question_hash = '0887d4d52ef4d941a12110540e5446f4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'In the Golak Nath case (1967), the Supreme Court held that:',
    'I.C. Golak Nath v. State of Punjab (1967) held that Fundamental Rights have a transcendental and immutable position, and Parliament cannot abridge them by ordinary legislation.',
    'hard',
    'Standard Reference',
    null,
    'de19623d0be8cf1f64575bc3101979d7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'de19623d0be8cf1f64575bc3101979d7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 32 is not itself a fundamental right'),
            ('B', 'Parliament may abridge Fundamental Rights by a simple majority'),
            ('C', 'the basic structure doctrine applies to every amendment'),
            ('D', 'Fundamental Rights have a transcendental position and cannot be abridged by ordinary legislation')
           ) as v(label, option_text)
 where q.question_hash = 'de19623d0be8cf1f64575bc3101979d7'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The Maneka Gandhi case (1978) is significant for propounding:',
    'Maneka Gandhi v. Union of India (1978) expanded Article 21 to include the right to a speedy trial, a free legal aid and the right to know the reasons for one''s detention.',
    'medium',
    'Standard Reference',
    null,
    'ffca636633433d5b214862e080456dc9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ffca636633433d5b214862e080456dc9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the right to legal aid and a wide interpretation of Article 21'),
            ('B', 'the right to privacy as a fundamental right'),
            ('C', 'the doctrine of separation of powers'),
            ('D', 'the jurisdiction of the Supreme Court cannot be curtailed by Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'ffca636633433d5b214862e080456dc9'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'In the A.K. Gopalan case (1950), the Supreme Court held that:',
    'A.K. Gopalan v. State of Madras (1950) treated personal liberty under Article 21 as a narrow right confined to protection against unlawful arrest, a view later overruled by Maneka Gandhi.',
    'medium',
    'Standard Reference',
    null,
    '0e6e5841c943fdec89f4bed2906de975'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0e6e5841c943fdec89f4bed2906de975'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fundamental Rights are enforceable only through Article 32'),
            ('B', 'personal liberty under Article 21 is narrow and confined to protection against unlawful arrest'),
            ('C', 'the Constitution confers a broad right to privacy'),
            ('D', 'the basic structure doctrine applies to every amendment')
           ) as v(label, option_text)
 where q.question_hash = '0e6e5841c943fdec89f4bed2906de975'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The oath of office of the President of India is administered by:',
    'Article 60 requires the oath of office to the President to be administered by the Chief Justice of India or, in his absence, the senior-most judge of the Supreme Court available.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    '1d8fa0318f459102fbbc254b5959db0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1d8fa0318f459102fbbc254b5959db0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the President of India himself'),
            ('B', 'the Vice-President of India'),
            ('C', 'the Chief Justice of India or, in his absence, the senior-most available judge'),
            ('D', 'the Speaker of the Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = '1d8fa0318f459102fbbc254b5959db0e'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The retirement age of a judge of a High Court in India is:',
    'Under Article 217 a High Court judge holds office until he attains the age of sixty-two years, while a Supreme Court judge retires at sixty-five years.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    '946ba36cbfab943a7793a04f56ba3af4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '946ba36cbfab943a7793a04f56ba3af4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '60 years'),
            ('B', '65 years'),
            ('C', '62 years'),
            ('D', '58 years')
           ) as v(label, option_text)
 where q.question_hash = '946ba36cbfab943a7793a04f56ba3af4'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'A High Court may be established for two or more States by:',
    'Article 231 enables Parliament by law to establish a High Court for two or more States or for a State and a Union Territory, and to curtail the jurisdiction of an existing High Court.',
    'easy',
    'Standard Reference',
    null,
    '66c4a2a09767437d76f0ca165f51952e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '66c4a2a09767437d76f0ca165f51952e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Supreme Court by administrative order'),
            ('B', 'Parliament by law'),
            ('C', 'the President by ordinance'),
            ('D', 'the Governor by notification')
           ) as v(label, option_text)
 where q.question_hash = '66c4a2a09767437d76f0ca165f51952e'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The Constitution (106th Amendment) Act, 2023 provides for reservation of seats for women in:',
    'The Nari Shakti Vandan Adhiniyam provides for one-third of the seats in the Lok Sabha and in state legislative assemblies to be reserved for women, including within seats reserved for SCs and STs.',
    'medium',
    'Standard Reference',
    2023,
    'efcbbc650c3860eecf1e320598be7dc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'efcbbc650c3860eecf1e320598be7dc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Lok Sabha and the state legislative assemblies'),
            ('B', 'the Rajya Sabha and the legislative councils'),
            ('C', 'the Panchayats and municipalities only'),
            ('D', 'all elected offices including the judiciary')
           ) as v(label, option_text)
 where q.question_hash = 'efcbbc650c3860eecf1e320598be7dc5'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'Under the 106th Amendment Act of 2023, the reservation of seats for women in the Lok Sabha will take effect after the next delimitation exercise undertaken on the basis of:',
    'The amendment ties the implementation of women''s reservation to the first census held after the law comes into force, so that the seat freeze on population can be applied at that delimitation.',
    'medium',
    'Standard Reference',
    2023,
    '44cf6f276eacda5a6832a2d343881c79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44cf6f276eacda5a6832a2d343881c79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the census of 2027'),
            ('B', 'the census of 2031'),
            ('C', 'the 2011 census'),
            ('D', 'the first census conducted after the commencement of the amendment')
           ) as v(label, option_text)
 where q.question_hash = '44cf6f276eacda5a6832a2d343881c79'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'In the Kihoto Hollohan case (1992), the Supreme Court held that the decision of the Speaker under the Tenth Schedule:',
    'Kihoto Hollohan v. Union of India (1992) held that the decision of the Speaker or Chairman on disqualification under the Tenth Schedule is subject to judicial review by the Supreme Court.',
    'hard',
    'Standard Reference',
    null,
    'af1cbdbbd1fdd2161c350a953bca6cee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'af1cbdbbd1fdd2161c350a953bca6cee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'may be overridden by the President'),
            ('B', 'is final and is not subject to any review'),
            ('C', 'binds only the concerned House and the Speaker'),
            ('D', 'is subject to judicial review by the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = 'af1cbdbbd1fdd2161c350a953bca6cee'
on conflict (question_id, label) do nothing;

-- polity | elections | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'A candidate for the office of President of India must be a citizen of India and have completed the age of:',
    'Article 58 prescribes the qualifications of the President, including completion of thirty-five years of age; the same minimum age applies to the Vice-President.',
    'easy',
    'NCERT Class XII (Polity)',
    null,
    'c5682e401974d84b7817ca058aa0189e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c5682e401974d84b7817ca058aa0189e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '40 years'),
            ('B', '35 years'),
            ('C', '30 years'),
            ('D', '25 years')
           ) as v(label, option_text)
 where q.question_hash = 'c5682e401974d84b7817ca058aa0189e'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The 87th Amendment Act of 2003 read with the 84th Amendment Act of 2001 freezes the allocation of seats in the Lok Sabha and the state assemblies on the basis of the population as per the 1971 census until:',
    'The freeze on readjustment of seats on the basis of population continues till 2026, and the 106th Amendment of 2023 links the first census after that date to the implementation of women''s reservation.',
    'medium',
    'Standard Reference',
    null,
    '3fcbe7f261a2db43b31d3ecc53fbf2e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3fcbe7f261a2db43b31d3ecc53fbf2e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2031'),
            ('B', '2036'),
            ('C', '2026'),
            ('D', '2011')
           ) as v(label, option_text)
 where q.question_hash = '3fcbe7f261a2db43b31d3ecc53fbf2e4'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Under the Lokpal and Lokayuktas Act, 2013, the Chairperson of the Lokpal shall be:',
    'Section 4 of the Lokpal and Lokayuktas Act, 2013 provides that the Chairperson of the Lokpal shall be an existing or retired judge of the Supreme Court or a Chief Justice of a High Court.',
    'medium',
    'Standard Reference',
    null,
    'fbdd9b612d4841274e714ca23a1116d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fbdd9b612d4841274e714ca23a1116d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an existing or retired judge of the Supreme Court or a Chief Justice of a High Court'),
            ('B', 'the Prime Minister'),
            ('C', 'any person recommended by the Comptroller and Auditor General'),
            ('D', 'a Cabinet Minister')
           ) as v(label, option_text)
 where q.question_hash = 'fbdd9b612d4841274e714ca23a1116d0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The Comptroller and Auditor General of India is a member of which committee of the Parliament?',
    'The CAG is the ex-officio member of the Public Accounts Committee, which scrutinises the reports of the CAG and the reports of the Finance Commission, besides examining the appropriation accounts.',
    'easy',
    'Standard Reference',
    null,
    '9b327d3bb8cf24af526e9e6b548f4b61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9b327d3bb8cf24af526e9e6b548f4b61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Business Advisory Committee'),
            ('B', 'the Estimates Committee'),
            ('C', 'the Committee on Public Undertakings'),
            ('D', 'the Public Accounts Committee')
           ) as v(label, option_text)
 where q.question_hash = '9b327d3bb8cf24af526e9e6b548f4b61'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 100th Constitutional Amendment Act of 2018 relates to:',
    'The 100th Amendment introduced cooperative federalism through Article 280A and recognised the right to reside and earn in any part of India, which was inserted in Article 19(1)(g).',
    'medium',
    'Standard Reference',
    null,
    'ed4e03112f0a83f946a6daad3110e35e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed4e03112f0a83f946a6daad3110e35e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the creation of the National Judicial Appointments Commission'),
            ('B', 'the reservation of one-third of seats for women'),
            ('C', 'cooperative federalism and the right to earn in any part of India'),
            ('D', 'the introduction of the Goods and Services Tax')
           ) as v(label, option_text)
 where q.question_hash = 'ed4e03112f0a83f946a6daad3110e35e'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The 42nd Amendment Act of 1976 reduced the term of the Lok Sabha and the state legislative assemblies from:',
    'The 42nd Amendment shortened the maximum term of the Lok Sabha and the state assemblies from five years to four years and extended the life of the incumbent governments; the 44th Amendment restored the five-year term.',
    'easy',
    'Standard Reference',
    null,
    'f1b2e189661c092d96e7bc76db0bf92c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f1b2e189661c092d96e7bc76db0bf92c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'five years to four years'),
            ('B', 'four years to three years'),
            ('C', 'six years to five years'),
            ('D', 'three years to two years')
           ) as v(label, option_text)
 where q.question_hash = 'f1b2e189661c092d96e7bc76db0bf92c'
on conflict (question_id, label) do nothing;

-- polity | international-relations | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The International Solar Alliance, co-founded by India and France, is headquartered at:',
    'The International Solar Alliance, launched jointly by India and France in 2015, has its permanent secretariat at Gurugram in Haryana.',
    'medium',
    'PIB',
    null,
    '6546d39a435c3d94f0a990113feb5837'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6546d39a435c3d94f0a990113feb5837'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Gurugram, Haryana'),
            ('C', 'Chennai'),
            ('D', 'Ahmedabad')
           ) as v(label, option_text)
 where q.question_hash = '6546d39a435c3d94f0a990113feb5837'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Under the 74th Constitutional Amendment Act, the accounts of the municipalities are audited by:',
    'Article 149, inserted by the 74th Amendment, requires the accounts of the municipalities to be audited by the Comptroller and Auditor General or by an auditor appointed by him.',
    'medium',
    'Standard Reference',
    null,
    '1ad4da7e517fc34afb283f7a79208cf8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ad4da7e517fc34afb283f7a79208cf8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Finance Commission'),
            ('B', 'the State Government'),
            ('C', 'the Reserve Bank of India'),
            ('D', 'the Comptroller and Auditor General of India or an auditor appointed by him')
           ) as v(label, option_text)
 where q.question_hash = '1ad4da7e517fc34afb283f7a79208cf8'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'In State of Madras v. Champakam Dorairajan (1951), the Supreme Court held that:',
    'The Court held that the Union Parliament has power to legislate on matters that are in the domain of external affairs, and that the power of the Parliament under Article 253 is not restricted by the State List.',
    'hard',
    'Standard Reference',
    null,
    '24979808d5faafb285129966a292e867'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '24979808d5faafb285129966a292e867'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the President alone may conduct foreign relations'),
            ('B', 'treaties require the prior consent of every State'),
            ('C', 'the Union Parliament may legislate on external affairs notwithstanding the State List'),
            ('D', 'external affairs are a subject in the State List')
           ) as v(label, option_text)
 where q.question_hash = '24979808d5faafb285129966a292e867'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The State Election Commissioner is appointed by:',
    'Articles 243K and 243ZA provide that the State Election Commissioner shall be appointed by the Governor of the State, and his term and conditions are determined by the Governor.',
    'medium',
    'NCERT Class XII (Polity)',
    null,
    'd4437ff687b59e66787522035eb2ca7a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd4437ff687b59e66787522035eb2ca7a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the District Collector'),
            ('B', 'the Governor of the State'),
            ('C', 'the Chief Election Commissioner of India'),
            ('D', 'the State Government in consultation with the Election Commission')
           ) as v(label, option_text)
 where q.question_hash = 'd4437ff687b59e66787522035eb2ca7a'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Which Article of the Constitution declares that the laws in force at the commencement of the Constitution shall continue in force?',
    'Article 372 provided for the continuance of the laws in force at the commencement of the Constitution and it was repealed by the 24th Amendment.',
    'medium',
    'Standard Reference',
    null,
    'ba2185ff8747a06ffcbe613b247cf975'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba2185ff8747a06ffcbe613b247cf975'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 372'),
            ('B', 'Article 368'),
            ('C', 'Article 370'),
            ('D', 'Article 372A')
           ) as v(label, option_text)
 where q.question_hash = 'ba2185ff8747a06ffcbe613b247cf975'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Constituent Assembly took:',
    'The Constituent Assembly took 2 years, 11 months and 18 days to complete the Constitution and it held 11 sessions over 165 days.',
    'easy',
    'Standard Reference',
    null,
    'c1a8368b833dc2daa97b9c3c6aa2e1dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c1a8368b833dc2daa97b9c3c6aa2e1dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6 months to complete'),
            ('B', '4 years to complete'),
            ('C', '2 years, 11 months and 18 days to complete the Constitution'),
            ('D', '3 years to complete')
           ) as v(label, option_text)
 where q.question_hash = 'c1a8368b833dc2daa97b9c3c6aa2e1dd'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'Which schedule of the Constitution contains the list of the recognised languages?',
    'The Second Schedule lists the 24 languages recognised by the Constitution, with Hindi and English as the official languages of the Union under Article 343.',
    'easy',
    'Standard Reference',
    null,
    'b662eed12b40d2d49e328ce2a09c172c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b662eed12b40d2d49e328ce2a09c172c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Third Schedule'),
            ('B', 'Second Schedule'),
            ('C', 'First Schedule'),
            ('D', 'Eighth Schedule')
           ) as v(label, option_text)
 where q.question_hash = 'b662eed12b40d2d49e328ce2a09c172c'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Eighth Schedule'' now contains how many languages?',
    'The Eighth Schedule originally had 14 languages and it now has 22 after the additions of Bodo, Dogri, Maithili and Santhali by the 92nd Amendment.',
    'medium',
    'Standard Reference',
    null,
    '5ec8392c192d827a4eafcea40ccc00d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ec8392c192d827a4eafcea40ccc00d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '22'),
            ('B', '24'),
            ('C', '12'),
            ('D', '25')
           ) as v(label, option_text)
 where q.question_hash = '5ec8392c192d827a4eafcea40ccc00d8'
on conflict (question_id, label) do nothing;

-- polity | constitution-making | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitution-making'),
    'The ''Seventh Schedule'' of the Constitution contains how many subjects in the Concurrent List?',
    'The Concurrent List has 52 subjects, the Union List has 100 and the State List has 61.',
    'medium',
    'Standard Reference',
    null,
    'bbe5f8c37f86777c21238fab62d15724'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bbe5f8c37f86777c21238fab62d15724'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '47'),
            ('B', '61'),
            ('C', '100'),
            ('D', '52')
           ) as v(label, option_text)
 where q.question_hash = 'bbe5f8c37f86777c21238fab62d15724'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'Sovereignty of India is:',
    'The sovereignty of India is not vested in any single authority and it is divided between the Union and the states as the Constitution provides.',
    'medium',
    'Standard Reference',
    null,
    '4d4e02d4793f727fdb2d6d5023a87827'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4d4e02d4793f727fdb2d6d5023a87827'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'vested in the Parliament alone'),
            ('B', 'vested in the judiciary'),
            ('C', 'divided between the Union and the states'),
            ('D', 'vested in the President alone')
           ) as v(label, option_text)
 where q.question_hash = '4d4e02d4793f727fdb2d6d5023a87827'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Citizenship Act, 1955'' provides for the acquisition of the citizenship by:',
    'The Citizenship Act of 1955 provides for the acquisition of the citizenship by the registration and the naturalisation and it also deals with the deprivation and the renunciation.',
    'medium',
    'Standard Reference',
    null,
    '526fda33b5003abe394559a50dd40ed7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '526fda33b5003abe394559a50dd40ed7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only by birth'),
            ('B', 'Only by descent'),
            ('C', 'Only by the naturalisation'),
            ('D', 'Registration and naturalisation')
           ) as v(label, option_text)
 where q.question_hash = '526fda33b5003abe394559a50dd40ed7'
on conflict (question_id, label) do nothing;

-- polity | preamble-and-union | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'preamble-and-union'),
    'The ''Citizenship (Amendment) Act of 2023'' provides for:',
    'The Citizenship (Amendment) Act of 2023 removed the condition of the three years of residence for the naturalisation and the waiver of the deprivation for those born in India.',
    'hard',
    'Standard Reference',
    2023,
    '42e15243822366887ffb531428ff4eee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '42e15243822366887ffb531428ff4eee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The change of the citizenship to the dual'),
            ('B', 'The removal of the condition of the three years of residence and the waiver of the deprivation for the persons born in India'),
            ('C', 'The introduction of the fast track citizenship'),
            ('D', 'The abolition of the naturalisation')
           ) as v(label, option_text)
 where q.question_hash = '42e15243822366887ffb531428ff4eee'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 15(3)'' enables the state to make special provisions for:',
    'Article 15(3) enables the state to make the special provisions for the women and the children and Article 15(4) for the socially and the educationally backward classes.',
    'medium',
    'Standard Reference',
    null,
    '7f4f758705e4d0c1cd9871f0a906e9a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7f4f758705e4d0c1cd9871f0a906e9a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Women and children'),
            ('B', 'The disadvantaged groups'),
            ('C', 'The Scheduled Castes'),
            ('D', 'The minorities')
           ) as v(label, option_text)
 where q.question_hash = '7f4f758705e4d0c1cd9871f0a906e9a0'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 15(5)'' was inserted by the:',
    'The 93rd Amendment of 2005 inserted Article 15(5) to provide for the admission of the socially and the educationally backward classes, including the SC and the ST, in the private educational institutions.',
    'hard',
    'Standard Reference',
    null,
    '3c0ad3b811930b0bc46b254f24485195'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3c0ad3b811930b0bc46b254f24485195'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '93rd Amendment of 2005'),
            ('B', '86th Amendment of 2002'),
            ('C', '97th Amendment of 2011'),
            ('D', '103rd Amendment of 2019')
           ) as v(label, option_text)
 where q.question_hash = '3c0ad3b811930b0bc46b254f24485195'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 16(4A)'' provides for:',
    'Article 16(4A), inserted by the 77th Amendment of 1995, provides for the reservation of the promotions for the Scheduled Castes and the Scheduled Tribes in the services.',
    'hard',
    'Standard Reference',
    null,
    '4baf2a801d0bbec13d96e62c2e7c4366'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4baf2a801d0bbec13d96e62c2e7c4366'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The abolition of the reservation'),
            ('B', 'The extension of the reservation to the private sector'),
            ('C', 'The reservation for the women'),
            ('D', 'The reservation of the promotions for the SC and the ST in the services')
           ) as v(label, option_text)
 where q.question_hash = '4baf2a801d0bbec13d96e62c2e7c4366'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 16(6)'' was inserted by the:',
    'Article 16(6), inserted by the 103rd Amendment of 2019, provides for the reservation of the seats for the economically weaker sections in the services.',
    'medium',
    'Standard Reference',
    2019,
    '8437d91277ed0bbe050f3eaeaa586271'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8437d91277ed0bbe050f3eaeaa586271'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '101st Amendment of 2016'),
            ('B', '86th Amendment of 2002'),
            ('C', '103rd Amendment of 2019'),
            ('D', '102nd Amendment of 2018')
           ) as v(label, option_text)
 where q.question_hash = '8437d91277ed0bbe050f3eaeaa586271'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The freedom of trade and the profession is:',
    'Article 19(1)(g) guarantees the freedom of the profession but it is subject to the reasonable restrictions in the public interest, as the Supreme Court held in the M.P. Association of Dealers case of 2021.',
    'medium',
    'Standard Reference',
    null,
    '869b4c52093a0e343578e605c08036a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '869b4c52093a0e343578e605c08036a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only to the corporations'),
            ('B', 'subject to the public interest and the reasonable restrictions'),
            ('C', 'an absolute right'),
            ('D', 'removed in 2020')
           ) as v(label, option_text)
 where q.question_hash = '869b4c52093a0e343578e605c08036a1'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right to privacy and the right to a clean environment and the right to livelihood are:',
    'The Supreme Court has read the right to privacy, the right to a clean environment, the right to livelihood, the right to health and the right to shelter into Article 21.',
    'medium',
    'Standard Reference',
    null,
    'd1ccd85dd5e2ef5356b032a0579ce861'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd1ccd85dd5e2ef5356b032a0579ce861'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only to the citizens'),
            ('B', 'read into Article 21'),
            ('C', 'absolute'),
            ('D', 'inserted in 1950')
           ) as v(label, option_text)
 where q.question_hash = 'd1ccd85dd5e2ef5356b032a0579ce861'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 20(2)'' provides that:',
    'Article 20(2) provides that no person shall be tried and convicted of any offence except in accordance with the procedure established by law, and the narrower interpretation of the double jeopardy was given in the Sajjan Singh case.',
    'hard',
    'Standard Reference',
    null,
    '0c9063ec48a9e62bc5ae233443a42674'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c9063ec48a9e62bc5ae233443a42674'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No person shall be arrested without the warrant'),
            ('B', 'No person shall be deprived of his life'),
            ('C', 'No person shall be prevented from the speech'),
            ('D', 'No person shall be tried and convicted for an offence except as provided by the law')
           ) as v(label, option_text)
 where q.question_hash = '0c9063ec48a9e62bc5ae233443a42674'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 22(1)'' requires that:',
    'Article 22(1) provides that no person who is arrested shall be denied the right to be informed of the grounds of the arrest and Article 22(2) provides the right to be produced before the magistrate within 24 hours.',
    'medium',
    'Standard Reference',
    null,
    'e2ef9bcb9d6b79274aca1d35481e8511'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e2ef9bcb9d6b79274aca1d35481e8511'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'No person arrested shall be denied the right to be informed of the grounds of the arrest'),
            ('B', 'The arrest must be with a warrant'),
            ('C', 'The arrested must be produced within 48 hours'),
            ('D', 'The arrested must be given a lawyer')
           ) as v(label, option_text)
 where q.question_hash = 'e2ef9bcb9d6b79274aca1d35481e8511'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The ''Article 25(1)'' guarantees the freedom of religion and it is subject to:',
    'Article 25(1) guarantees the freedom of conscience and the religion but it is subject to the public order, morality, health and the other provisions of Part III.',
    'medium',
    'Standard Reference',
    null,
    'eaaa299159bc36af6171a7e82ec30fa6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eaaa299159bc36af6171a7e82ec30fa6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The discretion of the executive'),
            ('B', 'Nothing'),
            ('C', 'Public order, morality, health and the other provisions of Part III'),
            ('D', 'Only the public order')
           ) as v(label, option_text)
 where q.question_hash = 'eaaa299159bc36af6171a7e82ec30fa6'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'Which of the following statements regarding the Article 30(1) is correct?',
    'Article 30(1) guarantees to all the minorities, whether religious or linguistic, the right to establish and administer the educational institutions of their choice.',
    'medium',
    'Standard Reference',
    null,
    '8e6205609156a0acf99a7da2a99aaaa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e6205609156a0acf99a7da2a99aaaa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the linguistic minorities have this right'),
            ('B', 'It applies only to the government institutions'),
            ('C', 'All the minorities, whether religious or linguistic, have the right to establish and administer the educational institutions of their choice'),
            ('D', 'Only the religious minorities have this right')
           ) as v(label, option_text)
 where q.question_hash = '8e6205609156a0acf99a7da2a99aaaa5'
on conflict (question_id, label) do nothing;

-- polity | fundamental-rights | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-rights'),
    'The right under Article 32 cannot be suspended except as provided:',
    'Article 32, the heart and soul of the Constitution, cannot be suspended except as provided by Article 359 during a national emergency.',
    'medium',
    'Standard Reference',
    null,
    '58f10bc1ab99b8ee089a025ad50f32c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '58f10bc1ab99b8ee089a025ad50f32c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'available only to the citizens'),
            ('B', 'by Article 359 during a national emergency'),
            ('C', 'suspended during the President''s Rule'),
            ('D', 'suspended by an ordinance')
           ) as v(label, option_text)
 where q.question_hash = '58f10bc1ab99b8ee089a025ad50f32c2'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 39A'' was inserted by the 42nd Amendment and it directs the state to secure:',
    'Article 39A directs the state to secure that the legal system promotes justice on the basis of equal opportunity and to provide free legal aid to the citizens.',
    'medium',
    'Standard Reference',
    null,
    '2650f16d24b16de6540cac58eb8f9440'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2650f16d24b16de6540cac58eb8f9440'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the environment'),
            ('B', 'The promotion of the cottage industries'),
            ('C', 'The right to education'),
            ('D', 'The equal justice and the free legal aid')
           ) as v(label, option_text)
 where q.question_hash = '2650f16d24b16de6540cac58eb8f9440'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 38(1)'' directs the state to promote the welfare of the individual by securing and protecting:',
    'Article 38(1) directs the state to promote the welfare of the individual by securing and protecting a social order in which the justice, the social, the economic and the political justice shall inform all the national institutions.',
    'medium',
    'Standard Reference',
    null,
    'ec09c239cca26f3f729bb02dd904cfe7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ec09c239cca26f3f729bb02dd904cfe7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A social order in which justice, social, economic and political justice shall inform all the national institutions'),
            ('B', 'A purely capitalist order'),
            ('C', 'The development of the heavy industries'),
            ('D', 'The growth of the population')
           ) as v(label, option_text)
 where q.question_hash = 'ec09c239cca26f3f729bb02dd904cfe7'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'Which of the following statements regarding the Article 40 is correct?',
    'Article 40 directs the state to organise the village panchayats and to endow them with the powers to enable them to function as the units of the self-government.',
    'medium',
    'Standard Reference',
    null,
    'e2ecb1bb64f655ea7e06538320934016'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e2ecb1bb64f655ea7e06538320934016'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It directs the organisation of the village panchayats'),
            ('B', 'It directs the separation of the judiciary'),
            ('C', 'It directs the promotion of the cottage industries'),
            ('D', 'It directs the protection of the monuments')
           ) as v(label, option_text)
 where q.question_hash = 'e2ecb1bb64f655ea7e06538320934016'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 45'' was amended by the 86th Amendment and it now provides for:',
    'The 86th Amendment of 2002 replaced the provision of the free and compulsory education of the children of the age of six to fourteen with the early childhood care and education below the age of six.',
    'hard',
    'Standard Reference',
    null,
    '0f8d0be5d76e0a2889ce08f274fe5e4c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0f8d0be5d76e0a2889ce08f274fe5e4c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The free education till the age of fourteen'),
            ('B', 'The protection of the monuments'),
            ('C', 'The promotion of the cottage industries'),
            ('D', 'The early childhood care and education of the children below six years')
           ) as v(label, option_text)
 where q.question_hash = '0f8d0be5d76e0a2889ce08f274fe5e4c'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 47'' was amended in 1976 to include:',
    'The 42nd Amendment of 1976 amended Article 47 to add the raising of the level of nutrition and the improvement of the standard of living and the public health.',
    'medium',
    'Standard Reference',
    null,
    '34941f90f1e92afdf86289f1a4528d1b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '34941f90f1e92afdf86289f1a4528d1b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The organisation of the panchayats'),
            ('B', 'The raising of the level of nutrition and the improvement of the standard of living and the public health'),
            ('C', 'The promotion of the scientific research'),
            ('D', 'The protection of the cows')
           ) as v(label, option_text)
 where q.question_hash = '34941f90f1e92afdf86289f1a4528d1b'
on conflict (question_id, label) do nothing;

-- polity | directive-principles | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'directive-principles'),
    'The ''Article 49'' of the Constitution:',
    'Article 49 places on the state the duty to protect the monuments and the places of national importance and it was added by the 42nd Amendment.',
    'easy',
    'Standard Reference',
    null,
    '63979f91c1d8cf82c2638bbf37dc08c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '63979f91c1d8cf82c2638bbf37dc08c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the organisation of the panchayats'),
            ('B', 'Deals with the promotion of the peace'),
            ('C', 'Directs the state to protect the monuments and the places of national importance'),
            ('D', 'Deals with the separation of the judiciary')
           ) as v(label, option_text)
 where q.question_hash = '63979f91c1d8cf82c2638bbf37dc08c0'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''Article 51A(g)'' of the Constitution:',
    'The duty to protect and improve the natural environment, to have compassion for the living creatures, to develop the scientific temper and to safeguard the public property is in Article 51A.',
    'medium',
    'Standard Reference',
    null,
    '5cf4f70919adb882d38765fbedbf358a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5cf4f70919adb882d38765fbedbf358a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Requires the citizen to protect the natural environment and to have compassion for the living creatures'),
            ('B', 'Requires the citizen to pay the taxes'),
            ('C', 'Requires the citizen to serve the defence'),
            ('D', 'Requires the citizen to vote')
           ) as v(label, option_text)
 where q.question_hash = '5cf4f70919adb882d38765fbedbf358a'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''Article 51A(e)'' provides that:',
    'The 86th Amendment added Article 51A(k) to the list of the fundamental duties, with the education of the child between six and fourteen years as a duty of the parent.',
    'medium',
    'Standard Reference',
    null,
    'b551a7dcab493f6e995895d8a5ef78a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b551a7dcab493f6e995895d8a5ef78a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Every citizen shall serve the armed forces'),
            ('B', 'Every citizen shall protect the cows'),
            ('C', 'Every citizen shall be educated in the manner in which the State shall determine'),
            ('D', 'Every citizen shall pay the taxes')
           ) as v(label, option_text)
 where q.question_hash = 'b551a7dcab493f6e995895d8a5ef78a5'
on conflict (question_id, label) do nothing;

-- polity | fundamental-duties | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'fundamental-duties'),
    'The ''fundamental duties'' are not enforceable by the courts:',
    'The fundamental duties are not enforceable by the courts and they are, in the words of the Savarkar Committee, a ''summary of those social and political obligations which the Constitution expects the citizens to perform''.',
    'medium',
    'Standard Reference',
    null,
    '4735231475077161e723e1efca10384b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4735231475077161e723e1efca10384b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are enforceable in the High Courts'),
            ('B', 'True'),
            ('C', 'False'),
            ('D', 'They are enforceable in the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '4735231475077161e723e1efca10384b'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 246A'' gives the concurrent power of the Parliament and the state legislature in the field of:',
    'Article 246A, inserted by the 42nd Amendment, gives the concurrent power of the Parliament and the state legislatures in the field of education.',
    'medium',
    'Standard Reference',
    null,
    'a2b4e5b8305a22d23a26c529df04a215'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a2b4e5b8305a22d23a26c529df04a215'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agriculture'),
            ('B', 'Trade'),
            ('C', 'Defence'),
            ('D', 'Education')
           ) as v(label, option_text)
 where q.question_hash = 'a2b4e5b8305a22d23a26c529df04a215'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''Article 263'' provides for the Inter-State Council, which was set up in:',
    'The Inter-State Council was set up in 1990 by an executive resolution of the Union government, though Article 263 provides for its establishment by the President.',
    'medium',
    'Standard Reference',
    null,
    'da34e1a7526513f8120e08a352ab80f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'da34e1a7526513f8120e08a352ab80f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1950'),
            ('B', '1990'),
            ('C', '1975'),
            ('D', '1980')
           ) as v(label, option_text)
 where q.question_hash = 'da34e1a7526513f8120e08a352ab80f2'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'Which of the following statements is/are correct in relation to the Article 280?',
    'The Finance Commission is constituted by the President every fifth year or earlier if necessary and it is chaired by a person appointed by the President.',
    'easy',
    'Standard Reference',
    null,
    '2ce7f81ffab2493e97ef0ecd0314ee87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2ce7f81ffab2493e97ef0ecd0314ee87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Finance Commission is appointed every fifth year by the President'),
            ('B', 'It is elected by the Parliament'),
            ('C', 'It is a permanent body'),
            ('D', 'It is chaired by the Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '2ce7f81ffab2493e97ef0ecd0314ee87'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The ''GST Council'' decisions require:',
    'The GST Council is a joint forum of the Union and the states and the decisions need a three-fourths majority of the weighted votes of the states and a simple majority of the central government.',
    'medium',
    'Standard Reference',
    null,
    '1f6c674fb65a6def1ba14cc2cbb5d1da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1f6c674fb65a6def1ba14cc2cbb5d1da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A simple majority of the states'),
            ('B', 'The approval of the Parliament'),
            ('C', 'A three-fourths majority of the weighted votes of the states and a simple majority of the central government'),
            ('D', 'A unanimous decision')
           ) as v(label, option_text)
 where q.question_hash = '1f6c674fb65a6def1ba14cc2cbb5d1da'
on conflict (question_id, label) do nothing;

-- polity | union-and-states | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'union-and-states'),
    'The Union List has:',
    'The Seventh Schedule has the three lists: the Union List of 100 subjects, the State List of 61 subjects and the Concurrent List of 52 subjects.',
    'easy',
    'Standard Reference',
    null,
    '12836641a50e364476c53f53c12b7f9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '12836641a50e364476c53f53c12b7f9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '61 subjects'),
            ('B', '100 subjects'),
            ('C', '52 subjects'),
            ('D', '100 subjects and the State List has 61 and the Concurrent List has 52')
           ) as v(label, option_text)
 where q.question_hash = '12836641a50e364476c53f53c12b7f9c'
on conflict (question_id, label) do nothing;

-- polity | parliament | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Money Bill'' is defined in Article:',
    'Article 110 of the Constitution defines a money bill and the Speaker of the Lok Sabha certifies the bills under it.',
    'easy',
    'Standard Reference',
    null,
    '01c5dada6c5a3037e53f3f6805796604'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '01c5dada6c5a3037e53f3f6805796604'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '110'),
            ('B', '109'),
            ('C', '112'),
            ('D', '101')
           ) as v(label, option_text)
 where q.question_hash = '01c5dada6c5a3037e53f3f6805796604'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'A bill which provides:',
    'A financial bill is a bill which provides for the taxation, the borrowing or the appropriation of the money and the Financial Bill is a subset of the money bill.',
    'medium',
    'Standard Reference',
    null,
    '89478fafb164c1c588c9e48732a20fbe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '89478fafb164c1c588c9e48732a20fbe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A bill of the private member'),
            ('B', 'A bill of the state'),
            ('C', 'A bill which provides for the taxation and the borrowing and the appropriation of the money'),
            ('D', 'A bill of the money')
           ) as v(label, option_text)
 where q.question_hash = '89478fafb164c1c588c9e48732a20fbe'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Which of the following statements regarding the The President is correct?',
    'The Speaker and the Deputy Speaker of the Lok Sabha submit their resignations to the President, while the Speaker of the Rajya Sabha submits his to the Chairman of the Rajya Sabha.',
    'medium',
    'Standard Reference',
    null,
    '09dfa68bbf6543af9fecb50e9f10c4dc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '09dfa68bbf6543af9fecb50e9f10c4dc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Deputy Speaker'),
            ('C', 'The Chief Justice'),
            ('D', 'The President')
           ) as v(label, option_text)
 where q.question_hash = '09dfa68bbf6543af9fecb50e9f10c4dc'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'no-confidence motion can be:',
    'A no-confidence motion can be moved only in the Lok Sabha, where the government holds the collective responsibility, and it requires a simple majority of the members present and voting.',
    'medium',
    'Standard Reference',
    null,
    '09a27135aa802416fc317ffa01beef74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '09a27135aa802416fc317ffa01beef74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a one-third majority'),
            ('B', 'moved only in the Lok Sabha'),
            ('C', 'moved in both the houses'),
            ('D', 'a money bill')
           ) as v(label, option_text)
 where q.question_hash = '09a27135aa802416fc317ffa01beef74'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'Censure motion can be:',
    'A censure motion can be moved against a minister and it can be moved in either house, though in practice it is moved only in the Lok Sabha, and the Speaker''s decision is final.',
    'medium',
    'Standard Reference',
    null,
    '098938359ed260b14ea755f983c2e146'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '098938359ed260b14ea755f983c2e146'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'moved against the President'),
            ('B', 'a financial bill'),
            ('C', 'introduced by the opposition only'),
            ('D', 'moved against a minister and it can be moved in the Rajya Sabha')
           ) as v(label, option_text)
 where q.question_hash = '098938359ed260b14ea755f983c2e146'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The Speaker and the Deputy Speaker of the Lok Sabha are:',
    'Article 100 provides for the election of the Speaker and the Deputy Speaker by the members of the Lok Sabha from amongst themselves.',
    'medium',
    'Standard Reference',
    null,
    'eb6523502c363e30dd1c0582365473a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb6523502c363e30dd1c0582365473a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'elected by the members'),
            ('B', 'appointed by the President'),
            ('C', 'nominated'),
            ('D', 'chosen by the Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = 'eb6523502c363e30dd1c0582365473a0'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 122'' deals with:',
    'Article 122 provides for the vacancies of the seats of the members of the Parliament and the procedure of the by-election in the case of the pre-election vacancy.',
    'medium',
    'Standard Reference',
    null,
    '5b11efb54e0d8af7fe2a6a86c181803b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5b11efb54e0d8af7fe2a6a86c181803b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The privileges'),
            ('B', 'The Speaker'),
            ('C', 'The vacancies of the seats of the members of the Parliament'),
            ('D', 'The qualifications of the members')
           ) as v(label, option_text)
 where q.question_hash = '5b11efb54e0d8af7fe2a6a86c181803b'
on conflict (question_id, label) do nothing;

-- polity | parliament | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Article 123'' provides for the ordinance and every ordinance must be laid before the Parliament within:',
    'Every ordinance must be laid before the Parliament and it ceases to operate six weeks after the Parliament reassembles, unless it is approved by the houses.',
    'medium',
    'Standard Reference',
    null,
    '9b5dacc8393e2e3518af03ecb685ddf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9b5dacc8393e2e3518af03ecb685ddf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Immediately'),
            ('B', 'Six weeks of the reassembly'),
            ('C', 'Three months'),
            ('D', 'One year')
           ) as v(label, option_text)
 where q.question_hash = '9b5dacc8393e2e3518af03ecb685ddf9'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Public Accounts Committee'' is chaired by:',
    'The Public Accounts Committee has 22 members, 15 from the Lok Sabha and 7 from the Rajya Sabha, and it is chaired by the Chairman of the Committee of Estimates.',
    'hard',
    'Standard Reference',
    null,
    '3d59cb8ddc62aec0af2a95eb4d4d24d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d59cb8ddc62aec0af2a95eb4d4d24d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Speaker of the Lok Sabha'),
            ('B', 'The Leader of the House'),
            ('C', 'The Prime Minister'),
            ('D', 'The Chairman of the Committee of Estimates')
           ) as v(label, option_text)
 where q.question_hash = '3d59cb8ddc62aec0af2a95eb4d4d24d0'
on conflict (question_id, label) do nothing;

-- polity | parliament | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'parliament'),
    'The ''Estimates Committee'' has:',
    'The Estimates Committee has 30 members, all elected from the Lok Sabha, and it is the largest of the financial committees.',
    'hard',
    'Standard Reference',
    null,
    'adc3de9cdb9173c7cfe86748d6f15742'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'adc3de9cdb9173c7cfe86748d6f15742'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Thirty members, all from the Lok Sabha'),
            ('B', 'Fifteen members'),
            ('C', 'Twenty-two members'),
            ('D', 'Forty members')
           ) as v(label, option_text)
 where q.question_hash = 'adc3de9cdb9173c7cfe86748d6f15742'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Supreme Court'' has the power to do all except:',
    'The Supreme Court can take the suo motu notice, transfer the cases between the High Courts and transfer the cases to itself, but it cannot create a new High Court.',
    'hard',
    'Standard Reference',
    null,
    '05cdae607621d9d8ae65b65dd12fb87f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '05cdae607621d9d8ae65b65dd12fb87f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'To transfer the cases from the High Court to itself'),
            ('B', 'To create a new High Court'),
            ('C', 'To take the suo motu notice of the matters of the public importance'),
            ('D', 'To transfer the cases from one High Court to another')
           ) as v(label, option_text)
 where q.question_hash = '05cdae607621d9d8ae65b65dd12fb87f'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'It enables the Supreme Court to pass such orders as are:',
    'Article 142 empowers the Supreme Court to pass such decree or order as is necessary for doing complete justice in any cause or matter pending before it.',
    'medium',
    'Standard Reference',
    null,
    '7603986aa1b409ac666fc707930d2be1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7603986aa1b409ac666fc707930d2be1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the review of the judgments'),
            ('B', 'for the transfer of the judges'),
            ('C', 'necessary for doing complete justice'),
            ('D', 'the Supreme Court the power to make the laws')
           ) as v(label, option_text)
 where q.question_hash = '7603986aa1b409ac666fc707930d2be1'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 137'' provides for:',
    'Article 137 provides for the appellate jurisdiction of the Supreme Court in the criminal cases and Article 134 in the civil cases.',
    'medium',
    'Standard Reference',
    null,
    '2eaf38e178b5e507a71e7936d1c7dde3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2eaf38e178b5e507a71e7936d1c7dde3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The appellate jurisdiction of the Supreme Court in the criminal cases'),
            ('B', 'The advisory jurisdiction'),
            ('C', 'The original jurisdiction'),
            ('D', 'The writs')
           ) as v(label, option_text)
 where q.question_hash = '2eaf38e178b5e507a71e7936d1c7dde3'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''High Court'' can be moved for the enforcement of the fundamental rights under Article:',
    'The High Courts can be moved for the enforcement of the fundamental rights under Article 226, which is wider in scope than Article 32 of the Supreme Court.',
    'easy',
    'Standard Reference',
    null,
    'c51fef6b54a899c175bc8a1842d2354a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c51fef6b54a899c175bc8a1842d2354a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '131'),
            ('B', '227'),
            ('C', '226'),
            ('D', '32')
           ) as v(label, option_text)
 where q.question_hash = 'c51fef6b54a899c175bc8a1842d2354a'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The opinion of the Supreme Court on a presidential reference is:',
    'The opinion of the Supreme Court on a reference under Article 143 is not binding but is of great value and the authority and the Parliament and the executive are bound to take it into consideration.',
    'medium',
    'Standard Reference',
    null,
    'c9426b1e20cfdddb140bd4325d46405c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c9426b1e20cfdddb140bd4325d46405c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'binding on all the courts'),
            ('B', 'it binds only the President'),
            ('C', 'no value'),
            ('D', 'not binding but is authoritative')
           ) as v(label, option_text)
 where q.question_hash = 'c9426b1e20cfdddb140bd4325d46405c'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''High Court judges'' are appointed by:',
    'The High Court judges are appointed by the Governor in consultation with the CJI, the Chief Justice of the High Court and the Governor, and they hold office until the age of 62.',
    'medium',
    'Standard Reference',
    null,
    '75c389d2d6e68584523e13b45f06abbd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '75c389d2d6e68584523e13b45f06abbd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Chief Justice alone'),
            ('B', 'The Governor in consultation with the CJI, the Chief Justice and the state Chief Justice'),
            ('C', 'The President alone'),
            ('D', 'Parliament')
           ) as v(label, option_text)
 where q.question_hash = '75c389d2d6e68584523e13b45f06abbd'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Judicial review'' of the Indian Constitution was first asserted in:',
    'In the Shankari Prasad case of 1951 the Supreme Court asserted the power of the judicial review over the constitutional amendments, reversing the A.K. Gopalan decision of 1950.',
    'hard',
    'Standard Reference',
    null,
    '2c10f569cfea379ead923e5438bbd839'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c10f569cfea379ead923e5438bbd839'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kesavananda Bharati v. State of Kerala'),
            ('B', 'S.R. Bommai v. Union of India'),
            ('C', 'Shankari Prasad v. Union of India'),
            ('D', 'A.K. Gopalan v. State of Madras')
           ) as v(label, option_text)
 where q.question_hash = '2c10f569cfea379ead923e5438bbd839'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''basic structure'' doctrine was propounded in the:',
    'The Kesavananda Bharati case of 1973, by a 7-6 majority, laid down the basic structure doctrine and it was reaffirmed in the Minerva Mills case of 1980.',
    'medium',
    'Standard Reference',
    null,
    '202a1642887bac291b760825b5daa5c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '202a1642887bac291b760825b5daa5c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maneka Gandhi case'),
            ('B', 'Kesavananda Bharati case'),
            ('C', 'Golaknath case'),
            ('D', 'Minerva Mills case')
           ) as v(label, option_text)
 where q.question_hash = '202a1642887bac291b760825b5daa5c9'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Doctrine of Eclipse'' was propounded in:',
    'In the Golaknath case of 1967 the Supreme Court held that an unconstitutional law is dormant but not dead, and the Kesavananda Bharati case of 1973 modified it with the basic structure doctrine.',
    'hard',
    'Standard Reference',
    null,
    'dbfe898484b531a448fef7abaf90e8a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dbfe898484b531a448fef7abaf90e8a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Golaknath v. State of Punjab'),
            ('B', 'Kesavananda Bharati'),
            ('C', 'Minerva Mills'),
            ('D', 'S.R. Bommai')
           ) as v(label, option_text)
 where q.question_hash = 'dbfe898484b531a448fef7abaf90e8a7'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''K.S. Puttaswamy'' case of 2017 held that the right to privacy:',
    'In the K.S. Puttaswamy case of 2017 a nine-judge bench of the Supreme Court unanimously held that the right to privacy is a fundamental right protected under Article 21.',
    'medium',
    'Standard Reference',
    2017,
    '0e494d5cf384dd136a3d9a27462a73c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0e494d5cf384dd136a3d9a27462a73c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is not a right in India'),
            ('B', 'Can be restricted by the executive'),
            ('C', 'Applies only to the citizens'),
            ('D', 'Is a fundamental right under Article 21')
           ) as v(label, option_text)
 where q.question_hash = '0e494d5cf384dd136a3d9a27462a73c1'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''S.R. Bommai'' case of 1994 held that:',
    'In the S.R. Bommai case of 1994 the Supreme Court held that the proclamation of the President''s Rule under Article 356 is subject to the judicial review and it laid down the guidelines for the floor test.',
    'hard',
    'Standard Reference',
    1994,
    'd6f3c0a11dd26e6d019b201f7ec2e534'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6f3c0a11dd26e6d019b201f7ec2e534'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The emergency is unlimited'),
            ('B', 'The proclamation of the President''s Rule is subject to the judicial review and the federalism is a basic feature'),
            ('C', 'The President''s Rule is beyond the judicial review'),
            ('D', 'The Parliament may amend the basic structure')
           ) as v(label, option_text)
 where q.question_hash = 'd6f3c0a11dd26e6d019b201f7ec2e534'
on conflict (question_id, label) do nothing;

-- polity | judiciary | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The ''Article 124'' provides that the removal of a Supreme Court judge requires a resolution in each house of Parliament:',
    'The removal of a Supreme Court judge under Article 124(4) requires a resolution passed in each house of Parliament by a two-thirds majority of the total membership of that house and by a majority of the total membership of the house.',
    'hard',
    'Standard Reference',
    null,
    '5e1c16f4526da98c01d5d875a20f2919'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e1c16f4526da98c01d5d875a20f2919'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Passed by a three-fourths majority'),
            ('B', 'Passed by the President alone'),
            ('C', 'Passed by a two-thirds majority of the total membership of that house and by a majority of the total membership of the house'),
            ('D', 'Passed by a simple majority')
           ) as v(label, option_text)
 where q.question_hash = '5e1c16f4526da98c01d5d875a20f2919'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'It is a court of record and the law declared:',
    'The Supreme Court is a court of record and the law declared by it is binding on all the courts in India and it is the final court of appeal.',
    'medium',
    'Standard Reference',
    null,
    '40fcf1cb7b879e37eecb0c10ffa152c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '40fcf1cb7b879e37eecb0c10ffa152c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'by it is binding on all the courts in India'),
            ('B', 'only an appellate court'),
            ('C', 'no advisory jurisdiction'),
            ('D', 'not a court of record')
           ) as v(label, option_text)
 where q.question_hash = '40fcf1cb7b879e37eecb0c10ffa152c8'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'The district judges are:',
    'Article 233 provides for the appointment of the district judges by the Governor in consultation with the High Court and Article 235 gives the control of the subordinate courts to the High Court.',
    'medium',
    'Standard Reference',
    null,
    '49e03c9c36b5ea135e3e39bdf54b1952'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '49e03c9c36b5ea135e3e39bdf54b1952'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'appointed by the President'),
            ('B', 'elected by the people'),
            ('C', 'appointed by the District Collector'),
            ('D', 'appointed by the Governor in consultation with the High Court')
           ) as v(label, option_text)
 where q.question_hash = '49e03c9c36b5ea135e3e39bdf54b1952'
on conflict (question_id, label) do nothing;

-- polity | judiciary | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which of the following statements is/are correct in relation to the Article 136?',
    'Article 136 empowers the Supreme Court to grant the special leave to appeal from any judgment, determination, sentence or order passed by any court or tribunal in India.',
    'medium',
    'Standard Reference',
    null,
    'fd7f2b4f27c652f38caaece1d01acbf3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fd7f2b4f27c652f38caaece1d01acbf3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President may transfer the cases'),
            ('B', 'The tribunals may transfer the cases'),
            ('C', 'The Supreme Court may grant the special leave to appeal from any court or tribunal in India'),
            ('D', 'The High Courts may transfer the cases to the Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = 'fd7f2b4f27c652f38caaece1d01acbf3'
on conflict (question_id, label) do nothing;

-- polity | judiciary | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'judiciary'),
    'Which of the following statements is/are correct in relation to the Article 124?',
    'The Supreme Court judges hold office until the age of 65 and the High Court judges until the age of 62, and the retirement age was raised by the 15th Amendment of 1963.',
    'easy',
    'Standard Reference',
    null,
    '7a4bf19604160129b7772249dafff495'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7a4bf19604160129b7772249dafff495'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'For life'),
            ('B', 'The judges of the Supreme Court hold office until the age of 65 years'),
            ('C', 'Until the age of 62 years'),
            ('D', 'For a fixed term of 12 years')
           ) as v(label, option_text)
 where q.question_hash = '7a4bf19604160129b7772249dafff495'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Article 324'' provides that the Election Commissioner can be removed by:',
    'Before the 2023 law the Election Commissioners could be removed only on the CEC''s recommendation, and the 2023 amendment gave the CEC the status of a Supreme Court judge.',
    'hard',
    'Standard Reference',
    null,
    '5b279cda38718e7489d9a2a89ecbb06c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5b279cda38718e7489d9a2a89ecbb06c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Prime Minister'),
            ('B', 'The Parliament'),
            ('C', 'The Supreme Court'),
            ('D', 'The President on the recommendation of the Chief Election Commissioner')
           ) as v(label, option_text)
 where q.question_hash = '5b279cda38718e7489d9a2a89ecbb06c'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''NOTA'' was made mandatory to be counted from:',
    'The Election Commission made the counting of the NOTA votes mandatory with its order of 2022, although the number of the NOTA votes is still not published in the results.',
    'hard',
    'Standard Reference',
    2022,
    'b4bc61c2332dbbe1b010248f8eb30836'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b4bc61c2332dbbe1b010248f8eb30836'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 2022 elections'),
            ('B', 'The 2013 elections'),
            ('C', 'The 2010 elections'),
            ('D', 'The 2019 elections')
           ) as v(label, option_text)
 where q.question_hash = 'b4bc61c2332dbbe1b010248f8eb30836'
on conflict (question_id, label) do nothing;

-- polity | elections | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Delimitation Commission'' is chaired by:',
    'The Delimitation Commission, set up under Article 82, is chaired by a retired Supreme Court judge with two members of the Indian Civil Services and its orders have the force of law.',
    'medium',
    'Standard Reference',
    null,
    'ce9203f205cc4e62e3389a98e9dc5ccf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce9203f205cc4e62e3389a98e9dc5ccf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A retired Supreme Court judge'),
            ('B', 'The Chief Election Commissioner'),
            ('C', 'The President'),
            ('D', 'The Finance Minister')
           ) as v(label, option_text)
 where q.question_hash = 'ce9203f205cc4e62e3389a98e9dc5ccf'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Electoral Bonds'' were introduced in India in:',
    'The electoral bonds, issued by the State Bank of India, were introduced in 2018 and the Supreme Court struck them down in February 2024.',
    'hard',
    'Standard Reference',
    2018,
    '89e65c154ca94fc31dd46a0d6dfdaa68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '89e65c154ca94fc31dd46a0d6dfdaa68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016 and struck down in 2020'),
            ('B', '2004 and struck down in 2010'),
            ('C', '2018 and struck down in 2024'),
            ('D', '2008 and struck down in 2018')
           ) as v(label, option_text)
 where q.question_hash = '89e65c154ca94fc31dd46a0d6dfdaa68'
on conflict (question_id, label) do nothing;

-- polity | elections | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'elections'),
    'The ''Model Code of Conduct'' came into force with:',
    'The Model Code of Conduct was evolved in 1968 and it is enforced by the Election Commission, and the violations are not punishable in the courts.',
    'hard',
    'Standard Reference',
    null,
    'ab50c065b17d4d008e1f4aeab5d38084'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ab50c065b17d4d008e1f4aeab5d38084'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Model Code of Conduct of 1974'),
            ('B', 'The Model Code of Conduct of 1951'),
            ('C', 'The Model Code of Conduct of 1985'),
            ('D', 'The Model Code of Conduct of 1968')
           ) as v(label, option_text)
 where q.question_hash = 'ab50c065b17d4d008e1f4aeab5d38084'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Which of the following statements regarding the The accounts of the Union is correct?',
    'The CAG audits the accounts of the Union and of the states and of the bodies and the authorities that are substantially financed from the public revenues.',
    'easy',
    'Standard Reference',
    null,
    'd6b966cfaaff883acdb1f8b8efdfb7f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6b966cfaaff883acdb1f8b8efdfb7f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the ministries'),
            ('B', 'The accounts of the Union, the states and the bodies financed substantially by the public revenues'),
            ('C', 'Only the Union'),
            ('D', 'Only the companies')
           ) as v(label, option_text)
 where q.question_hash = 'd6b966cfaaff883acdb1f8b8efdfb7f7'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''CAG'' is:',
    'The CAG is a constitutional body under Article 148 and the CAG (DPC) Act of 1971 gave it the statutory status and the powers of the civil court.',
    'medium',
    'Standard Reference',
    null,
    '732b30a9c6a20ad611a06c79f538ba15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '732b30a9c6a20ad611a06c79f538ba15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A judicial body'),
            ('B', 'A constitutional body under Article 148'),
            ('C', 'A statutory body'),
            ('D', 'An executive body under the Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '732b30a9c6a20ad611a06c79f538ba15'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'Which of the following statements regarding the UPSC is correct?',
    'The UPSC is a constitutional body under Article 315 and it advises the President and the state governments on the recruitment and the service matters.',
    'easy',
    'Standard Reference',
    null,
    '50d1626d726d5ac6dc955e84463666b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '50d1626d726d5ac6dc955e84463666b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a constitutional body under Article 315'),
            ('B', 'It is a statutory body'),
            ('C', 'It is an executive body'),
            ('D', 'It is a judicial body')
           ) as v(label, option_text)
 where q.question_hash = '50d1626d726d5ac6dc955e84463666b9'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'State Public Service Commission is:',
    'The State Public Service Commissions are the constitutional bodies under Article 315 and they were made the constitutional bodies by the 42nd Amendment of 1976.',
    'medium',
    'Standard Reference',
    null,
    'f71552ef00f8422b32ca29ff18a7b7b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f71552ef00f8422b32ca29ff18a7b7b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a statutory body'),
            ('B', 'an executive body'),
            ('C', 'a judicial body'),
            ('D', 'a constitutional body under Article 315')
           ) as v(label, option_text)
 where q.question_hash = 'f71552ef00f8422b32ca29ff18a7b7b0'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Election Commission'' became a multi-member body on the recommendation of:',
    'The Dinesh Goswami Committee of 1975 recommended the multi-member Election Commission and the CEC and the ECs were given the statutory status in 1993.',
    'hard',
    'Standard Reference',
    null,
    '691592632c87111fe1a007fecb5834cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '691592632c87111fe1a007fecb5834cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Kothari Commission'),
            ('B', 'The Sarkar Commission'),
            ('C', 'The Dinesh Goswami Committee'),
            ('D', 'The Balwant Rai Mehta Committee')
           ) as v(label, option_text)
 where q.question_hash = '691592632c87111fe1a007fecb5834cc'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''Lokpal and Lokayuktas'' have their statutory basis in:',
    'The Lokpal and Lokayuktas Act of 2013 gave the statutory basis to the two ombudsmen, and the first Lokpal chairperson was Justice P. C. Ghose.',
    'medium',
    'Standard Reference',
    null,
    '6700db9d8bbf12dd6080304abca573b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6700db9d8bbf12dd6080304abca573b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Lokpal and Lokayuktas Act, 2013'),
            ('B', 'The Prevention of Corruption Act, 1988'),
            ('C', 'The Right to Information Act, 2005'),
            ('D', 'The Central Vigilance Commission Act, 2003')
           ) as v(label, option_text)
 where q.question_hash = '6700db9d8bbf12dd6080304abca573b4'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''NHRC'' was constituted under the:',
    'The National Human Rights Commission is a statutory body under the Protection of Human Rights Act of 1993 and the 2019 amendment brought the state commissions also under the Act.',
    'easy',
    'Standard Reference',
    null,
    'a48a4960675e7d7bba934c3b08b19161'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a48a4960675e7d7bba934c3b08b19161'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Anti-Defection Act'),
            ('B', 'Protection of Human Rights Act, 1993'),
            ('C', 'Right to Information Act, 2005'),
            ('D', 'Legal Services Authorities Act, 1987')
           ) as v(label, option_text)
 where q.question_hash = 'a48a4960675e7d7bba934c3b08b19161'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''CIC'' was constituted under:',
    'The Central Information Commission is a statutory body under the RTI Act of 2005 and it hears the appeals of the citizens who are denied the information by the public authorities.',
    'medium',
    'Standard Reference',
    null,
    '91335ca000dfbe96be355d0097259dc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '91335ca000dfbe96be355d0097259dc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Official Secrets Act, 1923'),
            ('B', 'The Press Council Act'),
            ('C', 'The CAG Act'),
            ('D', 'The Right to Information Act, 2005')
           ) as v(label, option_text)
 where q.question_hash = '91335ca000dfbe96be355d0097259dc3'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''NCBC'' was given the statutory status in:',
    'The National Commission for Backward Classes was given the statutory status by the NCBC Act of 1993 and it has the powers of the civil court.',
    'medium',
    'Standard Reference',
    null,
    'b7280f65a4a602af143438843c5d876d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b7280f65a4a602af143438843c5d876d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2003'),
            ('B', '1986'),
            ('C', '1993'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = 'b7280f65a4a602af143438843c5d876d'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'The ''National Commission for Women'' was set up in:',
    'The National Commission for Women was set up in 1990 under the NCW Act of 1990 following the recommendations of the Committee on the Status of Women in India.',
    'medium',
    'Standard Reference',
    null,
    'bfb2851eb012c691cee41876326118c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bfb2851eb012c691cee41876326118c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1985'),
            ('B', '1993'),
            ('C', '1997'),
            ('D', '1990')
           ) as v(label, option_text)
 where q.question_hash = 'bfb2851eb012c691cee41876326118c5'
on conflict (question_id, label) do nothing;

-- polity | governance-and-commissions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'governance-and-commissions'),
    'In the context of the Article 324, which of the following is correct?',
    'After the 2023 amendment the CEC holds office for six years or up to the age of 65 and can be removed only in the manner of a Supreme Court judge, and the other commissioners are removed on his recommendation.',
    'hard',
    'Standard Reference',
    2023,
    '08659f4733e8ddef74ecac3b3136de3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '08659f4733e8ddef74ecac3b3136de3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CEC has a fixed term of five years'),
            ('B', 'The CEC is appointed for life'),
            ('C', 'The CEC can be removed only like a judge of the Supreme Court after the 2023 amendment'),
            ('D', 'The CEC can be removed at will by the President')
           ) as v(label, option_text)
 where q.question_hash = '08659f4733e8ddef74ecac3b3136de3e'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''40th Amendment'' of 1976:',
    'The 40th and the 42nd Amendments of 1976 made the President''s election and the emergency provisions beyond the judicial review and the 43rd and the 44th Amendments of 1977-78 partly reversed them.',
    'hard',
    'Standard Reference',
    null,
    'ae3781e0cf9265cd8712e4f0b5acf56b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ae3781e0cf9265cd8712e4f0b5acf56b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Made the President''s election to the two houses and the state legislatures and the emergency provisions beyond judicial review'),
            ('B', 'It abolished the Lok Sabha'),
            ('C', 'It gave the President the power to dissolve the Lok Sabha'),
            ('D', 'It reduced the voting age')
           ) as v(label, option_text)
 where q.question_hash = 'ae3781e0cf9265cd8712e4f0b5acf56b'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''44th Amendment'' of 1978:',
    'The 44th Amendment of 1978 restricted the emergency and the ordinance, made the emergency approval by the Parliament mandatory within a month and restored the five-year term of the Lok Sabha.',
    'medium',
    'Standard Reference',
    null,
    'e5b0964d66350c9b7548f78a74bc863d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e5b0964d66350c9b7548f78a74bc863d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It ended the Emergency'),
            ('B', 'Restricted the emergency and the ordinance and restored the five-year term of the Lok Sabha'),
            ('C', 'It created the NITI Aayog'),
            ('D', 'It gave the President the ordinance power')
           ) as v(label, option_text)
 where q.question_hash = 'e5b0964d66350c9b7548f78a74bc863d'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''52nd Amendment'' of 1985:',
    'The 52nd Amendment of 1985 added the Tenth Schedule with the anti-defection provisions and the Supreme Court upheld it in the Kihoto Hollohan case of 1992.',
    'medium',
    'Standard Reference',
    null,
    'c9802d32d726e1c5fc17ae6f1e88c15d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c9802d32d726e1c5fc17ae6f1e88c15d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Added the Tenth Schedule with the anti-defection provisions'),
            ('B', 'Added the Eleventh Schedule'),
            ('C', 'Added the Ninth Schedule'),
            ('D', 'Created the Rajya Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'c9802d32d726e1c5fc17ae6f1e88c15d'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''61st Amendment'' of 1988:',
    'The 61st Amendment of 1988 reduced the voting age for the local body elections to 18 and the 61st and the 62nd Amendments together enabled the same for the parliamentary and the assembly elections.',
    'medium',
    'Standard Reference',
    null,
    'e90a6f0071e712b3b99e706c3417de98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e90a6f0071e712b3b99e706c3417de98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was about the delimitation'),
            ('B', 'Reduced the voting age from 21 to 18 years'),
            ('C', 'Created the Anti-Defection Act'),
            ('D', 'Gave the vote to the 18-year-olds in the parliamentary elections')
           ) as v(label, option_text)
 where q.question_hash = 'e90a6f0071e712b3b99e706c3417de98'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''73rd and 74th Amendments'' of 1992:',
    'The 73rd and the 74th Amendment Acts of 1992, which came into force on 24 April 1993, gave the constitutional status to the three-tier Panchayati Raj system and the urban local bodies.',
    'easy',
    'Standard Reference',
    null,
    '8f51a14f3dcd5a49771dc430690bc3b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8f51a14f3dcd5a49771dc430690bc3b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduced the voting age'),
            ('B', 'Added the Tenth Schedule'),
            ('C', 'Created the NCBC'),
            ('D', 'Gave the constitutional status to the Panchayats and the municipalities')
           ) as v(label, option_text)
 where q.question_hash = '8f51a14f3dcd5a49771dc430690bc3b3'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''102nd Amendment'' of 2018:',
    'The 102nd Amendment of 2018 gave the constitutional status to the Central Educational Institutions (Regulation) Act and the National Judicial Appointments Commission Act.',
    'hard',
    'Standard Reference',
    2018,
    'b93d5247d790db2d896f478ec03f62ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b93d5247d790db2d896f478ec03f62ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the GST Council'),
            ('B', 'It amended the Official Languages Act'),
            ('C', 'Gave the constitutional status to the Central Educational Institutions and the Higher Education Institutions Act and the NJAC Act'),
            ('D', 'It gave the EWS reservation')
           ) as v(label, option_text)
 where q.question_hash = 'b93d5247d790db2d896f478ec03f62ac'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''105th Amendment'' of 2021:',
    'The 105th Amendment of 2021 restored the legislative power of the states in the Eighth Schedule of the Official Languages Act, which the 43rd Amendment had abrogated in 1977.',
    'hard',
    'Standard Reference',
    2021,
    '5bba5de77706d4ce06e5c1b6d374f473'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5bba5de77706d4ce06e5c1b6d374f473'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Restored the power of the state legislatures in the Eighth Schedule of the Official Languages Act'),
            ('B', 'It gave the EWS reservation'),
            ('C', 'It created the GST Council'),
            ('D', 'It enabled the NJAC')
           ) as v(label, option_text)
 where q.question_hash = '5bba5de77706d4ce06e5c1b6d374f473'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''106th Amendment'' of 2021:',
    'The 106th Amendment of 2021, the Nari Shakti Vandan Adhiniyam, provided for the reservation of not less than one-third of the seats for the women in the Lok Sabha and the state assemblies.',
    'medium',
    'Standard Reference',
    2021,
    '5e76efe8dea7a4e5985b4358a8faaccf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e76efe8dea7a4e5985b4358a8faaccf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It gave the EWS reservation'),
            ('B', 'It created the Delhi market regulator'),
            ('C', 'Provided for the reservation of one-third of the seats for the women in the Lok Sabha and the state assemblies'),
            ('D', 'It amended the Official Languages Act')
           ) as v(label, option_text)
 where q.question_hash = '5e76efe8dea7a4e5985b4358a8faaccf'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''1st Amendment'' of 1951:',
    'The First Amendment of 1951 added the Ninth Schedule to protect the land reform laws, provided for the reasonable restrictions on the freedom of trade and the first set of the territorial changes.',
    'medium',
    'Standard Reference',
    null,
    'f5d2c272e342d6feb610063f1bab64d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f5d2c272e342d6feb610063f1bab64d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Created the Panchayats'),
            ('B', 'Added the Ninth Schedule and the reasonable restrictions on the freedom of trade'),
            ('C', 'Added the Tenth Schedule'),
            ('D', 'Added the Eleventh Schedule')
           ) as v(label, option_text)
 where q.question_hash = 'f5d2c272e342d6feb610063f1bab64d5'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'The ''7th Amendment'' of 1956:',
    'The Seventh Amendment of 1956 implemented the linguistic reorganisation and enlarged the Lok Sabha and the state assemblies, which restricted the representation of the Anglo-Indians.',
    'medium',
    'Standard Reference',
    null,
    'bd704e7f70d9dc718530b108b0bad391'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bd704e7f70d9dc718530b108b0bad391'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Added the Tenth Schedule'),
            ('B', 'Reduced the voting age'),
            ('C', 'Created the Planning Commission'),
            ('D', 'Reorganised the states on the linguistic lines and enlarged the Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = 'bd704e7f70d9dc718530b108b0bad391'
on conflict (question_id, label) do nothing;

-- polity | constitutional-amendments | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'constitutional-amendments'),
    'Which of the following statements regarding the Article 368 is correct?',
    'An amendment requires a special majority in each house and, for the provisions touching the federal structure, the ratification by the legislatures of half the states by a simple majority.',
    'easy',
    'Standard Reference',
    null,
    '62df31a6e075bcda9ca873ee9769a9cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62df31a6e075bcda9ca873ee9769a9cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A simple majority of the Parliament is enough'),
            ('B', 'The President alone can amend'),
            ('C', 'The Supreme Court must approve it'),
            ('D', 'The procedure requires a special majority in each house and the ratification by half the states for the federal provisions')
           ) as v(label, option_text)
 where q.question_hash = '62df31a6e075bcda9ca873ee9769a9cb'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements regarding the Gram Sabha is correct?',
    'The Gram Sabha examines the annual plan and the prepared budget of the Gram Panchayat and it may make the recommendations on the allocation of the funds.',
    'medium',
    'Standard Reference',
    null,
    'eb1ba6dfa2f053b06b643cc148884494'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eb1ba6dfa2f053b06b643cc148884494'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It can examine the annual plan and the budget of the Gram Panchayat'),
            ('B', 'It elects the Sarpanch'),
            ('C', 'It can impose the taxes'),
            ('D', 'It approves the master plan of the district')
           ) as v(label, option_text)
 where q.question_hash = 'eb1ba6dfa2f053b06b643cc148884494'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''reservation of the seats for the women'' in the local bodies after the 73rd and 74th Amendments:',
    'Not less than one-third of the total seats and of the offices of the chairpersons in every Panchayat and municipality are reserved for the women and the seats for the Scheduled Castes and the Scheduled Tribes are reserved in proportion to their population.',
    'medium',
    'Standard Reference',
    null,
    '443ffe1179ce78dd2d75a74b09eea448'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '443ffe1179ce78dd2d75a74b09eea448'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is at the discretion of the state'),
            ('B', 'Is not less than one-third of the total seats and of the offices of the chairpersons'),
            ('C', 'Is one-half of the seats'),
            ('D', 'Is only in the Panchayats')
           ) as v(label, option_text)
 where q.question_hash = '443ffe1179ce78dd2d75a74b09eea448'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''duration of the term'' of the Panchayats and the municipalities after the 73rd and 74th Amendments:',
    'The Panchayats and the municipalities shall continue for five years from the date of the first meeting and they must be dissolved if the fresh elections are not held before the expiry of that period.',
    'medium',
    'Standard Reference',
    null,
    '1a03dc41cd118251ba89b825aaf05ec0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1a03dc41cd118251ba89b825aaf05ec0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is six years'),
            ('B', 'Is at the pleasure of the state government'),
            ('C', 'Is five years from the date of the first meeting'),
            ('D', 'Is three years')
           ) as v(label, option_text)
 where q.question_hash = '1a03dc41cd118251ba89b825aaf05ec0'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'Which of the following statements regarding the The Governor is correct?',
    'The State Election Commissioner is appointed by the Governor and he is removed in the manner of the Election Commissioner, and the Article 243K provides for the State Election Commission.',
    'medium',
    'Standard Reference',
    null,
    'f3bb4818721a476aac7089e8ae143f32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f3bb4818721a476aac7089e8ae143f32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Chief Election Commissioner'),
            ('C', 'The state government'),
            ('D', 'The Governor')
           ) as v(label, option_text)
 where q.question_hash = 'f3bb4818721a476aac7089e8ae143f32'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Ward Committee'' in a municipality consists of:',
    'A Ward Committee consists of one or more elected members of the municipality and the elected members of the wards falling within the jurisdiction of the committee and the 74th Amendment makes it compulsory for every municipality with more than three wards.',
    'hard',
    'Standard Reference',
    null,
    '042fde0fdbbff65c8042a9f7fd14ae21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '042fde0fdbbff65c8042a9f7fd14ae21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the elected councillors of that ward'),
            ('B', 'The elected members of the municipality and of the wards within its jurisdiction'),
            ('C', 'The nominees of the state government'),
            ('D', 'The officials of the district administration')
           ) as v(label, option_text)
 where q.question_hash = '042fde0fdbbff65c8042a9f7fd14ae21'
on conflict (question_id, label) do nothing;

-- polity | local-government | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The MGNREGA provides:',
    'The MGNREGA provides for the unemployment allowance to be paid by the state if the work is not provided within 15 days of the demand and within 30 days of the application.',
    'hard',
    'Standard Reference',
    null,
    '90d813d4fa278273cc2ce81ac74763be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90d813d4fa278273cc2ce81ac74763be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the unemployment allowance if the work is not provided within 15 days of the demand'),
            ('B', 'a pension'),
            ('C', 'the crop insurance'),
            ('D', 'the credit at a concessional rate')
           ) as v(label, option_text)
 where q.question_hash = '90d813d4fa278273cc2ce81ac74763be'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The ''Swachh Bharat Mission'' and the ''ODF+'':',
    'The rural component of the Swachh Bharat Mission has the ODF+ status, which adds the solid and the liquid waste management and the grey water management to the open defecation free status.',
    'medium',
    'Standard Reference',
    null,
    '9fc4b6ae84c7880584c3c60436d05a2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9fc4b6ae84c7880584c3c60436d05a2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a certification of the industrial waste'),
            ('B', 'It is the open defecation in the urban areas'),
            ('C', 'The ODF+ status under the rural component requires the waste management and the liquid waste management'),
            ('D', 'It is the urban component')
           ) as v(label, option_text)
 where q.question_hash = '9fc4b6ae84c7880584c3c60436d05a2c'
on conflict (question_id, label) do nothing;

-- polity | local-government | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'local-government'),
    'The Panchayati Raj was:',
    'The Panchayati Raj was first launched on 2 October 1959 in the Nagaur and the Moradabad districts of the Rajasthan and the Etawah district of the Uttar Pradesh and it was formally inaugurated on 15 August 1961.',
    'medium',
    'Standard Reference',
    null,
    'd722a57a7b5c8a99d848327a54641356'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd722a57a7b5c8a99d848327a54641356'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'first launched in 1959 in the Nagaur and the Moradabad districts of the Rajasthan and the Etawah of the Uttar Pradesh'),
            ('B', 'launched in 1977'),
            ('C', 'launched in 1993'),
            ('D', 'launched in 1952')
           ) as v(label, option_text)
 where q.question_hash = 'd722a57a7b5c8a99d848327a54641356'
on conflict (question_id, label) do nothing;

-- polity | international-relations | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'polity'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'polity' and c.slug = 'international-relations'),
    'The ''Article 294'' of the Constitution:',
    'Article 294 provides that the agreements with the foreign states and the other international agreements of the character of the treaties and the agreements are valid and that the federal government may enter into them.',
    'hard',
    'Standard Reference',
    null,
    '823f11d9d4e0e75fa67c7149746ad122'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '823f11d9d4e0e75fa67c7149746ad122'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deals with the emergency'),
            ('B', 'Provides that the agreements with the foreign states are valid'),
            ('C', 'Deals with the treaties only'),
            ('D', 'Deals with the war')
           ) as v(label, option_text)
 where q.question_hash = '823f11d9d4e0e75fa67c7149746ad122'
on conflict (question_id, label) do nothing;

commit;
