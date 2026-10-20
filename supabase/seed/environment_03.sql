-- =============================================================================
-- environment_03.sql — environment question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nalsarovar'' and the ''Khijadiya'' are:',
    'The Nalsarovar, the Khijadiya and the Nal Sarovar are among the Ramsar wetlands of Gujarat.',
    'hard',
    'Standard Reference',
    null,
    'f1c091e2761764b58bc543ca8699f072'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f1c091e2761764b58bc543ca8699f072'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wildlife sanctuaries in Rajasthan'),
            ('B', 'Tropical forests in Assam'),
            ('C', 'Rivers in Bihar'),
            ('D', 'Ramsar sites in Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'f1c091e2761764b58bc543ca8699f072'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Deepor Beel'' and the ''Ha-ha'' wetland are in:',
    'The Deepor Beel, a Ramsar site in Assam, is the only deep freshwater lake in the state and a haven of the greater adjutant stork.',
    'hard',
    'Standard Reference',
    null,
    '8a501efaffb2daffe2cd2bdfd1c7a253'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8a501efaffb2daffe2cd2bdfd1c7a253'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'West Bengal'),
            ('C', 'Meghalaya'),
            ('D', 'Manipur')
           ) as v(label, option_text)
 where q.question_hash = '8a501efaffb2daffe2cd2bdfd1c7a253'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Wadhvana'' and the ''Khijadiya'' are:',
    'The Wadhvana and the Khijadiya are Ramsar wetlands of Gujarat, in the Gulf of Kutch region.',
    'hard',
    'Standard Reference',
    null,
    '3caa22d0de784a3b54b79b7697be5a50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3caa22d0de784a3b54b79b7697be5a50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bays of Odisha'),
            ('B', 'Ramsar wetlands of Gujarat'),
            ('C', 'Sanctuaries of Maharashtra'),
            ('D', 'Lakes of Punjab')
           ) as v(label, option_text)
 where q.question_hash = '3caa22d0de784a3b54b79b7697be5a50'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Pariej Wetland'' and the ''Kanewal'' are:',
    'The Pariej and the Kanewal are among the Ramsar sites of Gujarat, notified along with the Nal Sarovar.',
    'hard',
    'Standard Reference',
    null,
    '9031c4f767cf2c2878c5ae258ee41f57'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9031c4f767cf2c2878c5ae258ee41f57'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bird sanctuaries in Bihar'),
            ('B', 'Marine parks in Tamil Nadu'),
            ('C', 'Ramsar sites in Gujarat'),
            ('D', 'National parks in Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '9031c4f767cf2c2878c5ae258ee41f57'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Khichan'' and the ''Banni'' villages are associated with:',
    'The Khichan and the Banni villages of Rajasthan are known for their community conservation of the migratory birds of the Indira Gandhi National Park and the desert wetlands.',
    'hard',
    'Standard Reference',
    null,
    'cd474d92c798625fbd5baba10a85af49'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd474d92c798625fbd5baba10a85af49'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Crocodile conservation'),
            ('B', 'Bird conservation, especially the bustard and the crane'),
            ('C', 'Elephant conservation'),
            ('D', 'Sea turtle conservation')
           ) as v(label, option_text)
 where q.question_hash = 'cd474d92c798625fbd5baba10a85af49'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhitarkanika'' and the ''Mahanadi'' delta in Odisha are important for:',
    'The Bhitarkanika mangrove forests are the home of the saltwater crocodile and a major breeding ground for the greater adjutant and other migratory birds.',
    'hard',
    'Standard Reference',
    null,
    '17290634633005053e35031f11627fb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '17290634633005053e35031f11627fb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tiger'),
            ('B', 'Elephant'),
            ('C', 'Snow leopard'),
            ('D', 'Migratory shorebirds and the saltwater crocodile')
           ) as v(label, option_text)
 where q.question_hash = '17290634633005053e35031f11627fb9'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ramsar Convention'' requires the parties to designate at least one wetland:',
    'At the time of ratifying the Ramsar Convention, each party was to designate at least one Ramsar site and to include further sites later.',
    'hard',
    'Standard Reference',
    null,
    'da23bda6799b5082d3e8e5b628e36c40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da23bda6799b5082d3e8e5b628e36c40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only on request of the Secretariat'),
            ('B', 'At the time of ratification'),
            ('C', 'Within five years of ratification'),
            ('D', 'At the next COP')
           ) as v(label, option_text)
 where q.question_hash = 'da23bda6799b5082d3e8e5b628e36c40'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Montreux Record'' under the Ramsar Convention concerns:',
    'The Montreux Record lists Ramsar sites where the ecological characteristics have changed or are likely to change through human interference and where timely action is needed.',
    'hard',
    'Standard Reference',
    null,
    '40ae13f6be662c06ae673a8120c2831a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '40ae13f6be662c06ae673a8120c2831a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wetlands of international importance especially waterfowl habitat'),
            ('B', 'Marine protected areas'),
            ('C', 'Ramsar sites in Europe'),
            ('D', 'The withdrawal from the Ramsar sites')
           ) as v(label, option_text)
 where q.question_hash = '40ae13f6be662c06ae673a8120c2831a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''World Network of Biosphere Reserves'' of UNESCO has over:',
    'The World Network of Biosphere Reserves comprises more than 700 reserves in 120 countries, of which India has 18.',
    'medium',
    'Standard Reference',
    null,
    'e034df8e022e10feab9ebda09e10bd67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e034df8e022e10feab9ebda09e10bd67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '500 reserves'),
            ('B', '700 reserves'),
            ('C', '1000 reserves'),
            ('D', '100 reserves')
           ) as v(label, option_text)
 where q.question_hash = 'e034df8e022e10feab9ebda09e10bd67'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Seshachalam Hills'' and the ''Kambalakonda'' are the two hills near:',
    'The Kambalakonda and the Seshachalam hills are the two hills of the Visakhapatnam area in Andhra Pradesh.',
    'hard',
    'Standard Reference',
    null,
    '1ab4ff6cc473913722d37456440c77cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1ab4ff6cc473913722d37456440c77cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Visakhapatnam'),
            ('B', 'Hyderabad'),
            ('C', 'Chennai'),
            ('D', 'Mysore')
           ) as v(label, option_text)
 where q.question_hash = '1ab4ff6cc473913722d37456440c77cd'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kasu Brahmananda Reddy'' and the ''Kawal'' are the two tiger reserves of:',
    'The Kawal and the Amrabad are in Telangana along with the Kasu Brahmananda Reddy bird sanctuary near Hyderabad.',
    'medium',
    'Standard Reference',
    null,
    'bb8bdfda33fa7493e7fd9564dd72a0ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bb8bdfda33fa7493e7fd9564dd72a0ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Tamil Nadu'),
            ('C', 'Telangana'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'bb8bdfda33fa7493e7fd9564dd72a0ea'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Pilibhit'' and the ''Tanda'' are the two tiger reserves of:',
    'Uttar Pradesh has the Pilibhit and the Tanda tiger reserves, which were created after the Sariska and the Kalakad tiger relocation exercises.',
    'hard',
    'Standard Reference',
    null,
    'd280b7cc0ed088210555bcb67daa4d5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd280b7cc0ed088210555bcb67daa4d5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Rajasthan'),
            ('C', 'Bihar'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'd280b7cc0ed088210555bcb67daa4d5b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Dampa Tiger Reserve'' and the ''Sanjay National Park'' are in:',
    'The Dampa Tiger Reserve and the Sanjay National Park in Madhya Pradesh form a contiguous forest block in the Satpura landscape.',
    'hard',
    'Standard Reference',
    null,
    'aecbcbe00aa93120a91cf3e1181536e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aecbcbe00aa93120a91cf3e1181536e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Maharashtra'),
            ('C', 'Rajasthan'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'aecbcbe00aa93120a91cf3e1181536e8'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nauradehi'' and the ''Sanjay'' are the wildlife sanctuaries of:',
    'The Nauradehi and the Sanjay are among the sanctuaries of Madhya Pradesh, which has the highest number of tiger reserves in the country.',
    'hard',
    'Standard Reference',
    null,
    '0892211b33be90a768c009f7287e2029'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0892211b33be90a768c009f7287e2029'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Madhya Pradesh'),
            ('B', 'Chhattisgarh'),
            ('C', 'Odisha'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '0892211b33be90a768c009f7287e2029'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Satpura National Park'' and the ''Pachmarhi Biosphere Reserve'' are in:',
    'The Satpura National Park and the Pachmarhi Biosphere Reserve are in the Satpura range of Madhya Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '1c522ce067d9a98886249057b8e610af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1c522ce067d9a98886249057b8e610af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rajasthan'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Gujarat'),
            ('D', 'Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '1c522ce067d9a98886249057b8e610af'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kaimur'' and the ''Ganga delta'' are:',
    'The Bakhira and the Kailash colonies of the Ganga delta and the Kaimur wetland are among the Ramsar sites of Uttar Pradesh.',
    'hard',
    'Standard Reference',
    null,
    'cfb93855490965bb030ce25644f5ddfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cfb93855490965bb030ce25644f5ddfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tigress reserves of Jharkhand'),
            ('B', 'Wildlife sanctuaries of Odisha'),
            ('C', 'Ramsar sites of Uttar Pradesh'),
            ('D', 'National parks of Bihar')
           ) as v(label, option_text)
 where q.question_hash = 'cfb93855490965bb030ce25644f5ddfe'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bakhira Wildlife Sanctuary'' is in:',
    'The Bakhira Wildlife Sanctuary in the Sant Kabir Nagar and the Kushinagar districts of Uttar Pradesh is a Ramsar wetland.',
    'hard',
    'Standard Reference',
    null,
    '848045c9242835d761847f11244156d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '848045c9242835d761847f11244156d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bihar'),
            ('B', 'West Bengal'),
            ('C', 'Assam'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '848045c9242835d761847f11244156d2'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Loktak'' and the ''Keibul Lamjao'' are in:',
    'Both are in Manipur, the Loktak Lake being a Ramsar site and the Keibul Lamjao the only floating national park.',
    'medium',
    'Standard Reference',
    null,
    '9e8c5ebd819e8aef0f6e67bcf148c4f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9e8c5ebd819e8aef0f6e67bcf148c4f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manipur'),
            ('B', 'Nagaland'),
            ('C', 'Tripura'),
            ('D', 'Mizoram')
           ) as v(label, option_text)
 where q.question_hash = '9e8c5ebd819e8aef0f6e67bcf148c4f1'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Wadhvana'' and the ''Gulf of Kutch'' area of Gujarat:',
    'The coastal and the saline wetlands of the Gulf of Kutch, including the Chhari Dhand and the Wadhvana, are crucial feeding grounds for the lesser flamingo.',
    'hard',
    'Standard Reference',
    null,
    'e823de528417d678d1f7c9ee426faac7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e823de528417d678d1f7c9ee426faac7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the site of the tiger relocation programme'),
            ('B', 'Are important for the nesting of the lesser flamingo'),
            ('C', 'Are the site of the Sardar Sarovar dam'),
            ('D', 'Are the site of the Dholera project')
           ) as v(label, option_text)
 where q.question_hash = 'e823de528417d678d1f7c9ee426faac7'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Great Himalayan National Park'' and the ''Tirthan Valley'' are in:',
    'The Great Himalayan National Park, a UNESCO World Heritage site, and the Tirthan Valley are in Himachal Pradesh.',
    'medium',
    'Standard Reference',
    null,
    '3c88c8ed7824774e6bfca31d409314e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c88c8ed7824774e6bfca31d409314e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jammu and Kashmir'),
            ('B', 'Sikkim'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Uttarakhand')
           ) as v(label, option_text)
 where q.question_hash = '3c88c8ed7824774e6bfca31d409314e8'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kibber Wildlife Sanctuary'' and the ''Changthang'' are in:',
    'The Kibber Wildlife Sanctuary and the Changthang of Ladakh protect the snow leopard and the kiang, and the Changthang is a Ramsar site.',
    'hard',
    'Standard Reference',
    null,
    '6d1fc911abfc4dbc8441e3f4d6972398'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6d1fc911abfc4dbc8441e3f4d6972398'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Himachal Pradesh'),
            ('B', 'Zanskar in Uttarakhand'),
            ('C', 'Sikkim'),
            ('D', 'Ladakh')
           ) as v(label, option_text)
 where q.question_hash = '6d1fc911abfc4dbc8441e3f4d6972398'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Himalayan fly valley'' and the ''Sukhna Wetland'' of Chandigarh:',
    'The Sukhna Wetland is a Ramsar site, and the Himalayan fly valley in the same region is a noted bird habitat.',
    'hard',
    'Standard Reference',
    null,
    '266658e4f7b2bbb6ca97be9049e992fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '266658e4f7b2bbb6ca97be9049e992fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are both in Himachal Pradesh'),
            ('B', 'Are both sanctuaries in Uttarakhand'),
            ('C', 'Are both Ramsar sites'),
            ('D', 'Are both national parks')
           ) as v(label, option_text)
 where q.question_hash = '266658e4f7b2bbb6ca97be9049e992fe'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhitarkanika'' and the ''Chandoli'' are Ramsar sites in:',
    'The Chilika Lake, the Bhitarkanika Mangroves and the Chandoli Dam are the Ramsar sites of Odisha.',
    'medium',
    'Standard Reference',
    null,
    '66cf68b59e4330b7c3769d12041e939e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '66cf68b59e4330b7c3769d12041e939e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'West Bengal'),
            ('C', 'Assam'),
            ('D', 'Meghalaya')
           ) as v(label, option_text)
 where q.question_hash = '66cf68b59e4330b7c3769d12041e939e'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Vembanad'' and the ''Sasthamcotta'' are in:',
    'The Vembanad Lake and the Sasthamcotta Lake are the two famous Ramsar wetlands of Kerala.',
    'easy',
    'Standard Reference',
    null,
    '9a3356f9144bae006de5c93bfea40bb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9a3356f9144bae006de5c93bfea40bb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goa'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '9a3356f9144bae006de5c93bfea40bb6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kurji and the Surinsar'' lakes of:',
    'The Surinsar and the Mansar lakes of the Jammu region are important wetland bird habitats.',
    'hard',
    'Standard Reference',
    null,
    'f2b26abcd1c583e7ea133ffc1b218b67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f2b26abcd1c583e7ea133ffc1b218b67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jammu and Kashmir'),
            ('B', 'Himachal Pradesh'),
            ('C', 'Uttarakhand'),
            ('D', 'Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'f2b26abcd1c583e7ea133ffc1b218b67'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Hazarikhil Wildlife Sanctuary'' and the ''Barail'' are in:',
    'The Barail and the Hazarikhil sanctuaries are among the important protected areas of Assam, home of the white winged wood duck and the hoolock gibbon.',
    'hard',
    'Standard Reference',
    null,
    'f7503791f4bf8c8d074d8d21e0b68fa1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f7503791f4bf8c8d074d8d21e0b68fa1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Meghalaya'),
            ('B', 'West Bengal'),
            ('C', 'Manipur'),
            ('D', 'Assam')
           ) as v(label, option_text)
 where q.question_hash = 'f7503791f4bf8c8d074d8d21e0b68fa1'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Pakke Tiger Reserve'' and the ''Nameri'' are in:',
    'The Pakke and the Nameri tiger reserves are in Assam, and the Nameri is the only tiger reserve in the Brahmaputra valley.',
    'medium',
    'Standard Reference',
    null,
    'f29f28cada38b65009e00214ed8d3712'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f29f28cada38b65009e00214ed8d3712'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manipur'),
            ('B', 'Assam'),
            ('C', 'West Bengal'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'f29f28cada38b65009e00214ed8d3712'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhitarkanika'' and the ''Ramsar'' convention:',
    'The Bhitarkanika Mangroves in Odisha are the only mangrove Ramsar site in India, and they are also a Wildlife Sanctuary.',
    'hard',
    'Standard Reference',
    null,
    'aa5eacaa3d83bdc129ab8949fdafc729'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aa5eacaa3d83bdc129ab8949fdafc729'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhitarkanika is a biosphere reserve only'),
            ('B', 'Bhitarkanika is in West Bengal'),
            ('C', 'Bhitarkanika is the only mangrove Ramsar site of India'),
            ('D', 'Bhitarkanika is not a Ramsar site')
           ) as v(label, option_text)
 where q.question_hash = 'aa5eacaa3d83bdc129ab8949fdafc729'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ramgarh'' and the ''Sukna'' are:',
    'The Ramgarh wetland in Jharkhand and the Sukhna wetland in Chandigarh are both Ramsar sites.',
    'hard',
    'Standard Reference',
    null,
    'f036f62dca1f900e52aff0a838ac602e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f036f62dca1f900e52aff0a838ac602e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsar sites in Odisha and Punjab'),
            ('B', 'Ramsar sites in Jharkhand and Chandigarh'),
            ('C', 'National parks in Bihar'),
            ('D', 'Sanctuaries in West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'f036f62dca1f900e52aff0a838ac602e'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Indus River'' and the ''Kori Wetlands'' of Gujarat:',
    'The Kori, the Nalsarovar, the Khijadiya, the Wadhvana and the Chhari Dhand are the Ramsar wetlands of Gujarat.',
    'medium',
    'Standard Reference',
    null,
    '5b20036014b30e69aed3b6a83af01e0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5b20036014b30e69aed3b6a83af01e0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are tiger reserves'),
            ('B', 'Are national parks'),
            ('C', 'Are biosphere reserves'),
            ('D', 'Are Ramsar sites')
           ) as v(label, option_text)
 where q.question_hash = '5b20036014b30e69aed3b6a83af01e0a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhairab'' and the ''Bishazari'' are:',
    'Nepal has the Koshi Tappu, the Parsa Wildlife Reserve, the Jagadishpur Reservoir, the Rara and the Gosaikunda as Ramsar sites.',
    'hard',
    'Standard Reference',
    null,
    'baaf6fbe5aca7a6cdef66cd57e123d48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'baaf6fbe5aca7a6cdef66cd57e123d48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ramsar sites of Nepal'),
            ('B', 'Sanctuaries of Bhutan'),
            ('C', 'National parks of Bangladesh'),
            ('D', 'Wetlands of Sri Lanka')
           ) as v(label, option_text)
 where q.question_hash = 'baaf6fbe5aca7a6cdef66cd57e123d48'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Great Himalayan National Park'' inscribed in 2014 is in:',
    'The Great Himalayan National Park in Himachal Pradesh was inscribed as a UNESCO World Heritage site in 2014.',
    'medium',
    'Standard Reference',
    null,
    '3a7464b52ac8fb78529057e0947aa7f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3a7464b52ac8fb78529057e0947aa7f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sikkim'),
            ('B', 'Uttarakhand'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Jammu and Kashmir')
           ) as v(label, option_text)
 where q.question_hash = '3a7464b52ac8fb78529057e0947aa7f2'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Archaeological Survey of India'' was founded in:',
    'The Archaeological Survey of India was founded in 1861 by Alexander Cunningham, the first official archaeologist of India.',
    'medium',
    'Standard Reference',
    null,
    'e2e242cce98805c95211e9f0af236fc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e2e242cce98805c95211e9f0af236fc6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1901'),
            ('B', '1947'),
            ('C', '1905'),
            ('D', '1861')
           ) as v(label, option_text)
 where q.question_hash = 'e2e242cce98805c95211e9f0af236fc6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''ASI'' is under the Ministry of:',
    'The Archaeological Survey of India, the National Museum, the National Archives and the National Library are under the Ministry of Culture.',
    'medium',
    'Standard Reference',
    null,
    'f47ae2df39a13a681c7a09e8b89296b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f47ae2df39a13a681c7a09e8b89296b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Culture'),
            ('B', 'Tourism'),
            ('C', 'Home Affairs'),
            ('D', 'Education')
           ) as v(label, option_text)
 where q.question_hash = 'f47ae2df39a13a681c7a09e8b89296b8'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''National Museum'' and the ''Indian Museum'' are located in:',
    'The National Museum is in New Delhi and the Indian Museum, the oldest museum in India, is in Kolkata.',
    'easy',
    'Standard Reference',
    null,
    '8092974801a5f1e079840c710672e17f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8092974801a5f1e079840c710672e17f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai and Kolkata'),
            ('B', 'Delhi and Chennai'),
            ('C', 'New Delhi and Kolkata'),
            ('D', 'Mumbai and Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '8092974801a5f1e079840c710672e17f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''National Archives of India'' is at:',
    'The National Archives of India, established in 1891 and presently in the Ridge area of Delhi, preserves the records of the government.',
    'medium',
    'Standard Reference',
    null,
    'ba7cf8d691a137bec9bb069f015dcf02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba7cf8d691a137bec9bb069f015dcf02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mumbai'),
            ('B', 'New Delhi'),
            ('C', 'Kolkata'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = 'ba7cf8d691a137bec9bb069f015dcf02'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''National Museum Institute'' and the ''Lalit Kala Akademi'' and the ''Sangeet Natak Akademi'' are under the Ministry of:',
    'The Lalit Kala Akademi, the Sangeet Natak Akademi, the National Museum and the NFAI are autonomous bodies under the Ministry of Culture.',
    'medium',
    'Standard Reference',
    null,
    'c4c5ac3631335267263cacab79f56275'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c4c5ac3631335267263cacab79f56275'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Education'),
            ('B', 'Home Affairs'),
            ('C', 'Tourism'),
            ('D', 'Culture')
           ) as v(label, option_text)
 where q.question_hash = 'c4c5ac3631335267263cacab79f56275'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Indian Museum'' of Kolkata was founded in:',
    'The Indian Museum in Kolkata, founded in 1814, is the oldest museum in India and the fifth oldest in the world.',
    'hard',
    'Standard Reference',
    null,
    '272fe0ba8a73cdb5cbb3e9e822894f20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '272fe0ba8a73cdb5cbb3e9e822894f20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1861'),
            ('B', '1901'),
            ('C', '1814'),
            ('D', '1854')
           ) as v(label, option_text)
 where q.question_hash = '272fe0ba8a73cdb5cbb3e9e822894f20'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Salarjung Museum'' is in:',
    'The Salarjung Museum in Hyderabad holds one of the largest collections of artefacts, with over 40,000 objects.',
    'medium',
    'Standard Reference',
    null,
    'd6556a27879839100833e44b403deae9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd6556a27879839100833e44b403deae9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Hyderabad'),
            ('B', 'Bhopal'),
            ('C', 'Jaipur'),
            ('D', 'Patna')
           ) as v(label, option_text)
 where q.question_hash = 'd6556a27879839100833e44b403deae9'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Chhatrapati Shivaji Maharaj Vastu Sangrahalaya'' is the new name of:',
    'The Prince of Wales Museum in Mumbai was renamed the Chhatrapati Shivaji Maharaj Vastu Sangrahalaya.',
    'medium',
    'Standard Reference',
    null,
    'f6eccfcef3d3692bf7c110adad0058a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f6eccfcef3d3692bf7c110adad0058a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Museum of New Delhi'),
            ('B', 'The Prince of Wales Museum, Mumbai'),
            ('C', 'The Indian Museum, Kolkata'),
            ('D', 'The Salarjung Museum')
           ) as v(label, option_text)
 where q.question_hash = 'f6eccfcef3d3692bf7c110adad0058a4'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ahmedabad'' and the ''Hampi'' group of monuments:',
    'The Hampi group of monuments in Karnataka and the Rock-Hewn Churches at Goa are among the Indian World Heritage sites inscribed in 1986.',
    'medium',
    'Standard Reference',
    null,
    '4438ad83ad65341704d2af48f900a487'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4438ad83ad65341704d2af48f900a487'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are both in Karnataka'),
            ('B', 'Are both in Maharashtra'),
            ('C', 'Are both in Andhra Pradesh'),
            ('D', 'Are both in Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '4438ad83ad65341704d2af48f900a487'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Victorian Gothic and Art Deco'' buildings of Mumbai were inscribed in:',
    'The Victorian Gothic and Art Deco Ensembles of Mumbai were inscribed as a UNESCO World Heritage site in 2004.',
    'medium',
    'Standard Reference',
    null,
    '41cd0db16a1d04bee19969990be910e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '41cd0db16a1d04bee19969990be910e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2012'),
            ('C', '1998'),
            ('D', '2004')
           ) as v(label, option_text)
 where q.question_hash = '41cd0db16a1d04bee19969990be910e9'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Le Corbusier'' Capitol Complex at Chandigarh was inscribed in:',
    'The Capitol Complex of Chandigarh, designed by Le Corbusier, was inscribed as a UNESCO World Heritage site in 2016.',
    'medium',
    'Standard Reference',
    null,
    'a16e1feec99e182d16c2b9507abfc18e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a16e1feec99e182d16c2b9507abfc18e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2002'),
            ('B', '2016'),
            ('C', '2004'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'a16e1feec99e182d16c2b9507abfc18e'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Hill Forts of Rajasthan'' were inscribed in:',
    'The six Hill Forts of Rajasthan, including Chittorgarh, Kumbhalgarh, Ranthambore, Gagron, Amber and Jaisalmer, were inscribed in 2013.',
    'hard',
    'Standard Reference',
    null,
    'b3c334c37987423879f322cdce7ff3e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b3c334c37987423879f322cdce7ff3e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '2007'),
            ('C', '2013'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'b3c334c37987423879f322cdce7ff3e8'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Mountain Railways of India'' were inscribed in:',
    'The three Mountain Railways of India, the Darjeeling, the Nilgiri Mountain and the Kalka-Shimla, were inscribed in 2005.',
    'hard',
    'Standard Reference',
    null,
    'a6e6ae3864a7cec6ad7ef170d0628079'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6e6ae3864a7cec6ad7ef170d0628079'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2008'),
            ('B', '2005'),
            ('C', '1999'),
            ('D', '2004')
           ) as v(label, option_text)
 where q.question_hash = 'a6e6ae3864a7cec6ad7ef170d0628079'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Red Fort Complex'' and the ''Qutb Minar'' in Delhi were inscribed in:',
    'The Red Fort Complex and the Qutb Minar at Delhi were inscribed as World Heritage sites in 1993, and the Fatehpur Sikri in 1986.',
    'medium',
    'Standard Reference',
    null,
    '4d32cf4128e349b1ebce3b7fe834d0c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4d32cf4128e349b1ebce3b7fe834d0c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1998'),
            ('C', '2000'),
            ('D', '1993')
           ) as v(label, option_text)
 where q.question_hash = '4d32cf4128e349b1ebce3b7fe834d0c4'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Churches of Goa'' were inscribed in:',
    'The Churches and Convents of Goa were inscribed in 1986, the same year as the Hampi monuments and the Rock-Hewn Churches of Goa were considered separately.',
    'hard',
    'Standard Reference',
    null,
    '97b9716c865340c720b471e96e2454db'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '97b9716c865340c720b471e96e2454db'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1983'),
            ('B', '2004'),
            ('C', '1986'),
            ('D', '1993')
           ) as v(label, option_text)
 where q.question_hash = '97b9716c865340c720b471e96e2454db'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nanda Devi and Valley of Flowers'' and the ''Ajanta and Ellora'' were inscribed in:',
    'The Nanda Devi and Valley of Flowers were inscribed in 1983, and the Buddhist Monuments at Sanchi and the Ellora caves also in 1983.',
    'medium',
    'Standard Reference',
    null,
    'dd96574e8aad76a1c92f703a472aa745'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd96574e8aad76a1c92f703a472aa745'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1983'),
            ('B', '1986'),
            ('C', '2005'),
            ('D', '1993')
           ) as v(label, option_text)
 where q.question_hash = 'dd96574e8aad76a1c92f703a472aa745'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Mountain Railways'' and the ''Kakatiya Rudreshwara'' temple at Telangana:',
    'In 2021 the Kakatiya Rudreshwara (Ramappa) Temple was inscribed, joining the 2016 additions of the Le Corbusier Capitol Complex and the Khajuraho group extension.',
    'hard',
    'Standard Reference',
    null,
    '55e8b22dd63e06d50256850d76dfb22f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55e8b22dd63e06d50256850d76dfb22f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the two sites inscribed in 2021'),
            ('B', 'Are in Himachal Pradesh'),
            ('C', 'Were inscribed in 1998'),
            ('D', 'Are in Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '55e8b22dd63e06d50256850d76dfb22f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Santiniketan'' and the ''Santiniketan'' of the Visva-Bharati:',
    'Santiniketan, the ashram and the university campus of Rabindranath Tagore, was inscribed as a UNESCO World Heritage site in 2023.',
    'medium',
    'Standard Reference',
    null,
    '696054ae551e18bf87784eb3463fdf2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '696054ae551e18bf87784eb3463fdf2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was inscribed in 2012'),
            ('B', 'Is a national park'),
            ('C', 'Is a Ramsar site'),
            ('D', 'Was inscribed in 2023')
           ) as v(label, option_text)
 where q.question_hash = '696054ae551e18bf87784eb3463fdf2b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sacred Ensembles of the Hoysalas'' in Karnataka were inscribed in:',
    'The Sacred Ensembles of the Hoysalas, covering the temples at Belur, Halebidu, Somnathpur and Doddagaddavalli, was inscribed in 2023.',
    'hard',
    'Standard Reference',
    null,
    '8249fb49efee0e50fb3607741446536c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8249fb49efee0e50fb3607741446536c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2024'),
            ('C', '2023'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '8249fb49efee0e50fb3607741446536c'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Moidams of the Ahom Dynasty'' in Assam were inscribed in:',
    'The Moidams, the royal burial mounds of the Ahom dynasty at Charaideo, were inscribed as a World Heritage site in 2021.',
    'hard',
    'Standard Reference',
    null,
    '01de8f25cae67acb44d97fb17f80525d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '01de8f25cae67acb44d97fb17f80525d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2021'),
            ('C', '2023'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '01de8f25cae67acb44d97fb17f80525d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Jog Falls'' and the ''Sethusamudram'' of Tamil Nadu:',
    'The Sethusamudram, a marine national park in the Gulf of Mannar, and the proposed Sethusamudram dam near the Jog Falls are both Tamil Nadu initiatives.',
    'hard',
    'Standard Reference',
    null,
    '97dddc0285f75bcbaf8edae295c75bf6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '97dddc0285f75bcbaf8edae295c75bf6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the site of the proposed dam and the marine park'),
            ('B', 'Are national parks'),
            ('C', 'Are Ramsar sites'),
            ('D', 'Are the site of the Auroville')
           ) as v(label, option_text)
 where q.question_hash = '97dddc0285f75bcbaf8edae295c75bf6'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Point Calimere'' bird sanctuary was declared in:',
    'The Point Calimere Bird Sanctuary in Tamil Nadu was one of the first bird sanctuaries of India, declared in 1965, and it is a Ramsar site.',
    'hard',
    'Standard Reference',
    null,
    'bf6376b69ef7285e9524d7a0ee6c86b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bf6376b69ef7285e9524d7a0ee6c86b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1962'),
            ('B', '1970'),
            ('C', '1965'),
            ('D', '1958')
           ) as v(label, option_text)
 where q.question_hash = 'bf6376b69ef7285e9524d7a0ee6c86b7'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sultanpur National Park'' of Haryana was declared in:',
    'The Sultanpur National Park was the first wetland sanctuary of Haryana, declared in 1971, and it was designated a Ramsar site in 1991.',
    'hard',
    'Standard Reference',
    null,
    'eb3f38b07cf999a2a8fd1b6a46f701ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eb3f38b07cf999a2a8fd1b6a46f701ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1961'),
            ('B', '1971'),
            ('C', '1981'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = 'eb3f38b07cf999a2a8fd1b6a46f701ee'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bharatpur Bird Sanctuary'' was declared in:',
    'The Keoladeo Ghana was declared a sanctuary in 1956 and later became a national park in 1981 and a World Heritage site in 1985.',
    'hard',
    'Standard Reference',
    null,
    '4b6767036e853c7ce06ff3ad70149a21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4b6767036e853c7ce06ff3ad70149a21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1981'),
            ('B', '1951'),
            ('C', '1971'),
            ('D', '1956')
           ) as v(label, option_text)
 where q.question_hash = '4b6767036e853c7ce06ff3ad70149a21'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Seshachalam Hills'' and the ''Kambalakonda'' are in:',
    'Both hills are near Visakhapatnam in Andhra Pradesh, and the Seshachalam hills are home to the golden gecko, the largest of its kind.',
    'hard',
    'Standard Reference',
    null,
    '8766797e5b55657c221f64678d8f1962'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8766797e5b55657c221f64678d8f1962'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Telangana'),
            ('B', 'Karnataka'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '8766797e5b55657c221f64678d8f1962'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Grizzled Giant Squirrel'' and the ''Nilgiri langur'' are:',
    'Both are threatened mammals of the Western Ghats, and the Nilgiri langur is the state animal of Tamil Nadu.',
    'medium',
    'Standard Reference',
    null,
    '5b3cf600b612a416dcf37c59736d97f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5b3cf600b612a416dcf37c59736d97f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reptiles of the Deccan'),
            ('B', 'Endangered mammals of the Western Ghats'),
            ('C', 'Critically endangered birds'),
            ('D', 'Fishes of the Western Ghats')
           ) as v(label, option_text)
 where q.question_hash = '5b3cf600b612a416dcf37c59736d97f3'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Black-necked Crane'' is the state bird of:',
    'The black-necked crane is the state bird of Arunachal Pradesh and is a highly threatened species found in the high-altitude wetlands of the eastern Himalaya.',
    'medium',
    'Standard Reference',
    null,
    '5f14a57c0864a8957abf22068ce037d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f14a57c0864a8957abf22068ce037d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttarakhand'),
            ('B', 'Himachal Pradesh'),
            ('C', 'Sikkim'),
            ('D', 'Arunachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '5f14a57c0864a8957abf22068ce037d8'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bengal Florican'' is the state bird of:',
    'The Bengal florican is the state bird of Assam and is found in the grasslands of the Brahmaputra valley.',
    'medium',
    'Standard Reference',
    null,
    '336b1de95c5d211aaae884c33e50da28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '336b1de95c5d211aaae884c33e50da28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'Meghalaya'),
            ('C', 'West Bengal'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '336b1de95c5d211aaae884c33e50da28'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''White-eared bulbul'' is the state bird of:',
    'The white-eared bulbul is the state bird of Gujarat and is also the emblem of the Bombay Natural History Society.',
    'hard',
    'Standard Reference',
    null,
    'd90d784cb040a46eaab8e0941d24e66a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd90d784cb040a46eaab8e0941d24e66a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Maharashtra'),
            ('C', 'Karnataka'),
            ('D', 'Goa')
           ) as v(label, option_text)
 where q.question_hash = 'd90d784cb040a46eaab8e0941d24e66a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Frigate bird'' and the ''Lakshadweep'' are associated with:',
    'The magnificent frigate bird of the Lakshadweep is the state bird of the Union Territory of Lakshadweep.',
    'hard',
    'Standard Reference',
    null,
    '5c70ab30a915b4608b933b276760152f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5c70ab30a915b4608b933b276760152f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Nicobar Islands'),
            ('B', 'The Lakshadweep Islands'),
            ('C', 'The Andaman Islands'),
            ('D', 'The Gulf of Mannar')
           ) as v(label, option_text)
 where q.question_hash = '5c70ab30a915b4608b933b276760152f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The state bird of the Andaman and Nicobar Islands is:',
    'The Nicobar megapode, also called the Nicobar jungle fowl, is the state bird of the Andaman and Nicobar Islands.',
    'hard',
    'Standard Reference',
    null,
    'd1272aa7b16abf57a7cb5eb59157c609'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd1272aa7b16abf57a7cb5eb59157c609'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Himalayan monal'),
            ('B', 'The Andaman teal'),
            ('C', 'The Nicobar megapode'),
            ('D', 'The white-eared bulbul')
           ) as v(label, option_text)
 where q.question_hash = 'd1272aa7b16abf57a7cb5eb59157c609'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Consider the following statements. Which of them is correct with regard to the Ecosystem?',
    'An ecosystem is a functional unit of nature in which the organisms and the physical environment interact with each other and it is the basic unit of the ecological study.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '2bc2b9fd1b599f61ca07e1d74c57479d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2bc2b9fd1b599f61ca07e1d74c57479d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a group of the same species in an area'),
            ('B', 'It is a group of the populations in an area'),
            ('C', 'It is the non-living part of the environment'),
            ('D', 'It is a functional unit of nature where the living organisms interact with each other and the physical environment')
           ) as v(label, option_text)
 where q.question_hash = '2bc2b9fd1b599f61ca07e1d74c57479d'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Which of the following is correct in the case of the Food chain?',
    'A food chain is the sequence of the organisms in which one feeds on the other and the energy flows from the producers to the consumers.',
    'easy',
    'NCERT Class XII (Biology)',
    null,
    '138ef56eeab7cc41dffc467e28301ab3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '138ef56eeab7cc41dffc467e28301ab3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the sequence of the organisms feeding on one another with the flow of the energy'),
            ('B', 'It is the group of the species of an area'),
            ('C', 'It is the total of the biomass'),
            ('D', 'It is the set of the decomposers')
           ) as v(label, option_text)
 where q.question_hash = '138ef56eeab7cc41dffc467e28301ab3'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Grazing food chain'' starts from:',
    'The grazing food chain begins with the green plants and it is the major conduit of the energy flow in the terrestrial ecosystem, while the detritus food chain operates in the soil.',
    'medium',
    'NCERT Class XII (Biology)',
    null,
    '88fc60de25b424406723baefbc97d5d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '88fc60de25b424406723baefbc97d5d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The decomposers'),
            ('B', 'The parasites'),
            ('C', 'The producers and it is the terrestrial food chain'),
            ('D', 'The carnivores')
           ) as v(label, option_text)
 where q.question_hash = '88fc60de25b424406723baefbc97d5d9'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''10 per cent law'' was given by:',
    'The 10 per cent law of the energy transfer was given by the R. Lindeman in 1942 and it explains the pyramid of energy.',
    'medium',
    'Standard Reference',
    null,
    '573f7dd890e2a415feb0a60f1d241477'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '573f7dd890e2a415feb0a60f1d241477'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A.G. Tansley'),
            ('B', 'R. Lindeman'),
            ('C', 'Charles Elton'),
            ('D', 'E.P. Odum')
           ) as v(label, option_text)
 where q.question_hash = '573f7dd890e2a415feb0a60f1d241477'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Pyramid of numbers'' in a grassland ecosystem is:',
    'The pyramid of numbers is upright in a grassland ecosystem while it is inverted in a tree ecosystem, where a single tree supports many herbivores.',
    'easy',
    'Standard Reference',
    null,
    'ceecb437d576c22bffc6c2093f090c69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ceecb437d576c22bffc6c2093f090c69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inverted'),
            ('B', 'Spindle shaped'),
            ('C', 'Always rectangular'),
            ('D', 'Upright')
           ) as v(label, option_text)
 where q.question_hash = 'ceecb437d576c22bffc6c2093f090c69'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Net primary productivity'' is:',
    'The net primary productivity is the rate at which the plants produce the biomass available for the consumption after the losses of the respiration and the heat.',
    'medium',
    'Standard Reference',
    null,
    'ba7b0fa2663525cdeb12d08cb5132a48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ba7b0fa2663525cdeb12d08cb5132a48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of the biomass production remaining after the respiratory losses'),
            ('B', 'The total biomass produced'),
            ('C', 'The biomass of the decomposers'),
            ('D', 'The productivity of the consumers')
           ) as v(label, option_text)
 where q.question_hash = 'ba7b0fa2663525cdeb12d08cb5132a48'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Primary succession'' occurs:',
    'The primary succession begins on a bare rock or in a new water body where there is no soil and the pioneer species are the lichens, while the secondary succession occurs on the disturbed area where the soil remains.',
    'easy',
    'Standard Reference',
    null,
    'f76f7fec574c29867e590375c9342935'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f76f7fec574c29867e590375c9342935'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'After a forest fire'),
            ('B', 'On the abandoned farmland'),
            ('C', 'On a bare rock or in a newly formed water body'),
            ('D', 'On a land where a community has existed before')
           ) as v(label, option_text)
 where q.question_hash = 'f76f7fec574c29867e590375c9342935'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Eutrophication'' of a lake results in:',
    'The eutrophication is the nutrient enrichment of the water that leads to the algal blooms and the subsequent depletion of the dissolved oxygen, and it is the main cause of the lake degradation.',
    'easy',
    'Standard Reference',
    null,
    'daa8f8f1a4bdb8ab3df134c5cbaafadd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'daa8f8f1a4bdb8ab3df134c5cbaafadd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rise of the water table'),
            ('B', 'The excessive growth of the algae and the depletion of the dissolved oxygen'),
            ('C', 'The cooling of the water'),
            ('D', 'The increase of the salinity')
           ) as v(label, option_text)
 where q.question_hash = 'daa8f8f1a4bdb8ab3df134c5cbaafadd'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Biomagnification'' of DDT resulted in:',
    'The biomagnification of the DDT led to the sharp decline of the bird population, particularly the birds of prey, in the United States and it led to the ban on the DDT in 1972.',
    'medium',
    'Standard Reference',
    null,
    '77a0930d7fc7565d01af902a2fa49b95'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '77a0930d7fc7565d01af902a2fa49b95'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rise of the fish population'),
            ('B', 'The increase of the crop yield'),
            ('C', 'The melting of the glaciers'),
            ('D', 'The decline of the bird population in the USA in the 1970s')
           ) as v(label, option_text)
 where q.question_hash = '77a0930d7fc7565d01af902a2fa49b95'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Keystone species have:',
    'The keystone species exert a controlling influence on the community structure and their removal can cause a major change in the ecosystem.',
    'medium',
    'Standard Reference',
    null,
    '84146db8f65e8e96f48b262206b31eea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84146db8f65e8e96f48b262206b31eea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the largest organisms'),
            ('B', 'Have a disproportionately large effect on the structure of the community'),
            ('C', 'Are always the producers'),
            ('D', 'Are the most numerous')
           ) as v(label, option_text)
 where q.question_hash = '84146db8f65e8e96f48b262206b31eea'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Biodiversity hotspots'' in India:',
    'India has four of the world''s 36 biodiversity hotspots: the Himalaya, the Indo-Burma, the Western Ghats and Sri Lanka and the Nicobar Islands.',
    'medium',
    'Standard Reference',
    null,
    '23ea941682b416c154739c86e79ab3a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23ea941682b416c154739c86e79ab3a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are six in number'),
            ('B', 'There are no hotspots in India'),
            ('C', 'Only the Western Ghats is a hotspot'),
            ('D', 'Are four in number, the Himalaya, the Indo-Burma, the Western Ghats and Sri Lanka and the Nicobar Islands')
           ) as v(label, option_text)
 where q.question_hash = '23ea941682b416c154739c86e79ab3a6'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Indo-Burma'' biodiversity hotspot includes:',
    'The Indo-Burma hotspot extends from the north-east India through the Myanmar, the Thailand and the Malaysia and it is the most species rich of the Indian hotspots.',
    'medium',
    'Standard Reference',
    null,
    '77ed50ff78e36601c01426d100d8504f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '77ed50ff78e36601c01426d100d8504f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the Western Ghats'),
            ('B', 'Only the Nicobar Islands'),
            ('C', 'The north-east India and the Myanmar and the Thailand and the Malaysia'),
            ('D', 'Only the Andaman Islands')
           ) as v(label, option_text)
 where q.question_hash = '77ed50ff78e36601c01426d100d8504f'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'In the context of the IUCN Red List, which of the following is correct?',
    'The IUCN Red List has eight categories, from the Extinct to the Data Deficient, and the categories indicate the level of the extinction risk.',
    'medium',
    'Standard Reference',
    null,
    '03196ea2b4b067f42ac2adc9608c17e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '03196ea2b4b067f42ac2adc9608c17e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Extinct, Extinct in the Wild, Critically Endangered, Endangered, Vulnerable, Near Threatened, Least Concern and Data Deficient'),
            ('B', 'Only Endangered and Vulnerable'),
            ('C', 'Only the Extinct and the Vulnerable'),
            ('D', 'There are four categories')
           ) as v(label, option_text)
 where q.question_hash = '03196ea2b4b067f42ac2adc9608c17e4'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Red Data Book'' of India is the:',
    'The Red Data Book of India is the Red List of the endangered species of India and it is published by the Zoological Survey of India.',
    'medium',
    'Standard Reference',
    null,
    '409b8148425a1974f4d913d8a9de2750'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '409b8148425a1974f4d913d8a9de2750'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The book of the Indian birds'),
            ('B', 'The plant census'),
            ('C', 'The wetland register'),
            ('D', 'The Red List of the endangered species of India published by the Zoological Survey of India')
           ) as v(label, option_text)
 where q.question_hash = '409b8148425a1974f4d913d8a9de2750'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''CITES'' appendices:',
    'The CITES has three appendices and the Appendix I lists the species threatened with extinction for which the trade is generally banned, and the Appendix II the ones that need a permit.',
    'medium',
    'Standard Reference',
    null,
    'c7187d6b1efc3a50aaaf55fb5481ab2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7187d6b1efc3a50aaaf55fb5481ab2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Appendix III is the most restrictive'),
            ('B', 'The Appendix I lists the species threatened with extinction and the trade is banned'),
            ('C', 'The Appendix I lists the species of the least concern'),
            ('D', 'There is only one appendix')
           ) as v(label, option_text)
 where q.question_hash = 'c7187d6b1efc3a50aaaf55fb5481ab2a'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Ramsar'' convention was signed in:',
    'The Convention on the Wetlands of International Importance, the Ramsar Convention, was signed in 1971 at Ramsar in Iran and it was the first treaty of its kind on the wetlands.',
    'easy',
    'Standard Reference',
    null,
    'af49a786e1d4c0ae56b4487e77b2e151'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'af49a786e1d4c0ae56b4487e77b2e151'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1980 in Nairobi'),
            ('B', '1969 in Vienna'),
            ('C', '1971 at Ramsar in Iran'),
            ('D', '1972 in Paris')
           ) as v(label, option_text)
 where q.question_hash = 'af49a786e1d4c0ae56b4487e77b2e151'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Migratory species'' in India come under the:',
    'The migratory birds of India come under the Central Asian Flyway and the East Asian-Australasian Flyway, and the Central Asian Flyway covers the Arctic, Central Asia and South Asia.',
    'medium',
    'Standard Reference',
    null,
    'd69da780c306c10924416199da20ce0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd69da780c306c10924416199da20ce0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central Asian Flyway and the East Asian-Australasian Flyway'),
            ('B', 'The Mediterranean Flyway only'),
            ('C', 'The Pacific Flyway'),
            ('D', 'The African Flyway')
           ) as v(label, option_text)
 where q.question_hash = 'd69da780c306c10924416199da20ce0b'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Bengal tiger'' is the state animal of:',
    'The Bengal tiger is the state animal of the West Bengal and the national animal of the India and it is the most numerous of the tigers in the world.',
    'easy',
    'Standard Reference',
    null,
    'e349c5eab7da9c4fbccaa657099402f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e349c5eab7da9c4fbccaa657099402f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttar Pradesh'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Rajasthan'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'e349c5eab7da9c4fbccaa657099402f5'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Asiatic lion'' is the state animal of:',
    'The Asiatic lion is the state animal of the Gujarat and the Gir forest is the only place in the world where it survives in the wild.',
    'easy',
    'Standard Reference',
    null,
    'ccab099c04e7baabf56ab113f280ce30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ccab099c04e7baabf56ab113f280ce30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Rajasthan'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = 'ccab099c04e7baabf56ab113f280ce30'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''one-horned rhinoceros'' is the state animal of:',
    'The one-horned rhinoceros, the Indian rhino, is the state animal of the Assam and the Kaziranga National Park holds the largest population of the world.',
    'easy',
    'Standard Reference',
    null,
    'faaad652e2e9dbaffcf535435d1ebeb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'faaad652e2e9dbaffcf535435d1ebeb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Assam'),
            ('C', 'West Bengal'),
            ('D', 'Uttar Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'faaad652e2e9dbaffcf535435d1ebeb1'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''snow leopard'' is the state animal of:',
    'The snow leopard was the state animal of the erstwhile Jammu and Kashmir and it is found in the high-altitude regions of the Ladakh, the Himachal, the Uttarakhand and the Sikkim.',
    'medium',
    'Standard Reference',
    null,
    '6bbd23b10b9a05843e6e76ebd384e72b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6bbd23b10b9a05843e6e76ebd384e72b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttarakhand'),
            ('B', 'Sikkim'),
            ('C', 'Jammu and Kashmir'),
            ('D', 'Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '6bbd23b10b9a05843e6e76ebd384e72b'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Markhor'' is the state animal of:',
    'The markhor is the state animal of the Himachal Pradesh and the state animal of the Ladakh is the snow leopard.',
    'medium',
    'Standard Reference',
    null,
    '2f52bbcfdef997940fc4aa9acabd070d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2f52bbcfdef997940fc4aa9acabd070d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttarakhand'),
            ('B', 'Sikkim'),
            ('C', 'Jammu and Kashmir'),
            ('D', 'Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '2f52bbcfdef997940fc4aa9acabd070d'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Indian elephant'' is the state animal of:',
    'The Indian elephant is the state animal of the Karnataka, the Kerala and the Tamil Nadu and the Project Elephant is the major conservation programme for it.',
    'medium',
    'Standard Reference',
    null,
    '2f223c142ef4d922399d82ead171bda5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2f223c142ef4d922399d82ead171bda5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Karnataka'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Odisha')
           ) as v(label, option_text)
 where q.question_hash = '2f223c142ef4d922399d82ead171bda5'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''grizzled giant squirrel'' is the state animal of:',
    'The grizzled giant squirrel, the ratel, is the state animal of the Kerala and it is an endangered mammal of the Western Ghats.',
    'hard',
    'Standard Reference',
    null,
    '2923143c9b9727005aca578503d1a496'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2923143c9b9727005aca578503d1a496'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Andhra Pradesh'),
            ('C', 'Kerala'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '2923143c9b9727005aca578503d1a496'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Nilgiri langur'' is the state animal of:',
    'The Nilgiri langur or the lion-tailed macaque is the state animal of the Tamil Nadu and it is an endangered primate of the Western Ghats.',
    'hard',
    'Standard Reference',
    null,
    'af376202e00194b70ce4b8378fb6d511'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'af376202e00194b70ce4b8378fb6d511'
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
 where q.question_hash = 'af376202e00194b70ce4b8378fb6d511'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Which of the following statements regarding the Indian robin is correct?',
    'The Indian robin is the state bird of the Delhi and the northern robin of the black and the white is the state bird of the Maharashtra.',
    'hard',
    'Standard Reference',
    null,
    'ee1139d9a0e84644e2b79d3302132513'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee1139d9a0e84644e2b79d3302132513'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the state bird of the Kerala'),
            ('B', 'Is the state bird of the Gujarat'),
            ('C', 'Is the state bird of the Delhi'),
            ('D', 'Is the state bird of the Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = 'ee1139d9a0e84644e2b79d3302132513'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'Himalayan fly valley is:',
    'The Himalayan fly valleys, with the deciduous forests of the higher Himalayas, are the bird paradise and the national bird of the nepal is the Danphe.',
    'hard',
    'Standard Reference',
    null,
    'b6a70c29bb7db4d4734913aef31e6373'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6a70c29bb7db4d4734913aef31e6373'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Deccan'),
            ('B', 'the bird paradise of the higher Himalayas'),
            ('C', 'in the Western Ghats'),
            ('D', 'in the Sundarbans')
           ) as v(label, option_text)
 where q.question_hash = 'b6a70c29bb7db4d4734913aef31e6373'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Silent Valley'' of Kerala is famous for the:',
    'The Silent Valley National Park, a part of the Nilgiri Biosphere Reserve, is the last refuge of the lion-tailed macaque and it has one of the last tracts of the tropical evergreen forest in India.',
    'medium',
    'Standard Reference',
    null,
    'b9e4a03ca7da79c33e668363a271cfe8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b9e4a03ca7da79c33e668363a271cfe8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lion-tailed macaque and the evergreen forest'),
            ('B', 'The elephants'),
            ('C', 'The tigers'),
            ('D', 'The rhinos')
           ) as v(label, option_text)
 where q.question_hash = 'b9e4a03ca7da79c33e668363a271cfe8'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Palamau Tiger Reserve'' is in:',
    'The Palamau Tiger Reserve, in the Palamau forest division of the Jharkhand, has a significant population of the Indian leopard and the sloth bear.',
    'hard',
    'Standard Reference',
    null,
    '041223ca0bccf687badfea0373c65f9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '041223ca0bccf687badfea0373c65f9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal'),
            ('B', 'Odisha'),
            ('C', 'Chhattisgarh'),
            ('D', 'Jharkhand')
           ) as v(label, option_text)
 where q.question_hash = '041223ca0bccf687badfea0373c65f9c'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Buxa Tiger Reserve'' is in:',
    'The Buxa Tiger Reserve in the Alipurduar district of the West Bengal is in the foothills of the Himalayas and it is the northernmost of the tiger reserves.',
    'medium',
    'Standard Reference',
    null,
    'e1e5f11f11abcc4f1641d395fb24023e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e1e5f11f11abcc4f1641d395fb24023e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assam'),
            ('B', 'Sikkim'),
            ('C', 'Meghalaya'),
            ('D', 'West Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'e1e5f11f11abcc4f1641d395fb24023e'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Bhitarkanika Mangroves'' are a Ramsar site in:',
    'The Bhitarkanika Mangroves in the Odisha are the only mangrove Ramsar site in the country and they are the home of the saltwater crocodile.',
    'medium',
    'Standard Reference',
    null,
    'c865d86d8cb500059590b704aa931ffb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c865d86d8cb500059590b704aa931ffb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Odisha'),
            ('C', 'West Bengal'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'c865d86d8cb500059590b704aa931ffb'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Sundarbans'' is famous for:',
    'The Sundarbans, the largest mangrove forest of the world in the Bay of Bengal, is the home of the Royal Bengal tiger and it is a UNESCO World Heritage site.',
    'easy',
    'Standard Reference',
    null,
    'dbed3b673f5f183ab0f931e2614495ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dbed3b673f5f183ab0f931e2614495ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The snow leopards'),
            ('B', 'The corals'),
            ('C', 'The Royal Bengal tiger and the largest mangrove forest of the world'),
            ('D', 'The elephants')
           ) as v(label, option_text)
 where q.question_hash = 'dbed3b673f5f183ab0f931e2614495ee'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''IUCN categories'' of the protected areas:',
    'The IUCN has six categories of the protected areas, from the Category I of the strict nature reserve to the Category VI of the protected landscape or the seascape.',
    'medium',
    'Standard Reference',
    null,
    '2176f88b6d10ad06074caa1029e9174f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2176f88b6d10ad06074caa1029e9174f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include the Category I of the strict nature reserve and the Category VI of the protected landscape'),
            ('B', 'Only two categories'),
            ('C', 'Only the national parks'),
            ('D', 'There are four categories')
           ) as v(label, option_text)
 where q.question_hash = '2176f88b6d10ad06074caa1029e9174f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Group of Monuments at Mahabalipuram'' was inscribed in:',
    'The Group of Monuments at Mahabalipuram, the rock-cut caves and the Shore Temple, was inscribed as a World Heritage site in 1984.',
    'medium',
    'Standard Reference',
    null,
    'c150e1863866ba13c449fdd2cdac3954'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c150e1863866ba13c449fdd2cdac3954'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1993'),
            ('B', '2004'),
            ('C', '1984'),
            ('D', '1983')
           ) as v(label, option_text)
 where q.question_hash = 'c150e1863866ba13c449fdd2cdac3954'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Khangchendzonga National Park'' in Sikkim is:',
    'The Khangchendzonga National Park, inscribed in 2016, is a World Heritage site that protects the snow leopard, the red panda and the Himalayan tiger.',
    'medium',
    'Standard Reference',
    null,
    'b3ebe24353bbb48a74812efeb0ade68d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b3ebe24353bbb48a74812efeb0ade68d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A national park in the Rajasthan'),
            ('B', 'A UNESCO World Heritage site for the Himalayan tiger and the red panda'),
            ('C', 'A Ramsar site'),
            ('D', 'A biosphere reserve only')
           ) as v(label, option_text)
 where q.question_hash = 'b3ebe24353bbb48a74812efeb0ade68d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Red Fort'' and the ''Qutb Minar'' are:',
    'The Red Fort Complex and the Qutb Minar and its monuments in Delhi were inscribed as the World Heritage sites in 1993.',
    'medium',
    'Standard Reference',
    null,
    '57cf906a960bafa0ddf516a92d7f52e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '57cf906a960bafa0ddf516a92d7f52e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'World Heritage sites in Agra'),
            ('B', 'Biosphere reserves'),
            ('C', 'Ramsar sites'),
            ('D', 'World Heritage sites in Delhi inscribed in 1993')
           ) as v(label, option_text)
 where q.question_hash = '57cf906a960bafa0ddf516a92d7f52e1'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Hill Forts of Rajasthan'' were inscribed as a World Heritage site in:',
    'The six Hill Forts of Rajasthan, the Chittorgarh, the Kumbhalgarh, the Ranthambore, the Gagron, the Amber and the Jaisalmer, were inscribed in 2013.',
    'medium',
    'Standard Reference',
    2013,
    '75dc8f381040114e22d21a659f154130'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '75dc8f381040114e22d21a659f154130'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2011'),
            ('C', '2005'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '75dc8f381040114e22d21a659f154130'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Victorian Gothic and the Art Deco'' ensembles of Mumbai were inscribed in:',
    'The Victorian Gothic and Art Deco Ensembles of Mumbai were inscribed as a World Heritage site in 2004 and they include the Gateway of India and the High Court.',
    'medium',
    'Standard Reference',
    2004,
    '9f23fe63c5acbddfde79a67b1321ddce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9f23fe63c5acbddfde79a67b1321ddce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004'),
            ('B', '1993'),
            ('C', '2012'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '9f23fe63c5acbddfde79a67b1321ddce'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sacred Ensembles of the Hoysalas'' was inscribed in:',
    'The Sacred Ensembles of the Hoysalas, the temples of the Belur, the Halebidu and the Somnathpur, was inscribed in 2023.',
    'hard',
    'Standard Reference',
    2023,
    'c5f7b5994db07333185f800962f124a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c5f7b5994db07333185f800962f124a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2023'),
            ('C', '2021'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = 'c5f7b5994db07333185f800962f124a7'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Moidams of the Ahom Dynasty'' at Charaideo was inscribed in:',
    'The Moidams, the royal burial mounds of the Ahom dynasty at Charaideo in Assam, were inscribed as a World Heritage site in 2021.',
    'hard',
    'Standard Reference',
    2021,
    'e67dd5216abc867ab805695dd755d90a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e67dd5216abc867ab805695dd755d90a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2016'),
            ('C', '2021'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'e67dd5216abc867ab805695dd755d90a'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Santiniketan'' of the Rabindranath Tagore was inscribed in:',
    'The Santiniketan, the ashram and the university campus of the Rabindranath Tagore, was inscribed as a World Heritage site in July 2023.',
    'medium',
    'Standard Reference',
    2023,
    '36d5d872e0d5259e84b04d93768bf15b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '36d5d872e0d5259e84b04d93768bf15b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2012'),
            ('C', '2019'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '36d5d872e0d5259e84b04d93768bf15b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ramsar'' sites of the total in India (approximately) are:',
    'India has one of the largest networks of the Ramsar sites in the world with more than eighty sites designated, and the Chilika and the Vembanad are among the oldest.',
    'medium',
    'Standard Reference',
    null,
    'a86809ad01bb8441ee0fa5e2096fc5fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a86809ad01bb8441ee0fa5e2096fc5fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'More than two hundred'),
            ('B', 'More than eighty'),
            ('C', 'About twenty'),
            ('D', 'About forty')
           ) as v(label, option_text)
 where q.question_hash = 'a86809ad01bb8441ee0fa5e2096fc5fc'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Paris Agreement'' on the climate was adopted in:',
    'The Paris Agreement was adopted in December 2015 at the COP21 and it aims to hold the increase of the global average temperature well below 2 degrees Celsius above the pre-industrial level.',
    'easy',
    'Standard Reference',
    null,
    '701ea4c2a0aa6d3c840a8322ff6513c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '701ea4c2a0aa6d3c840a8322ff6513c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2021'),
            ('C', '2015'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '701ea4c2a0aa6d3c840a8322ff6513c8'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''COP21'' was held in:',
    'The COP21 was held in Paris in 2015 and the Paris Agreement and the entry into force of the Paris Agreement are the outcomes.',
    'easy',
    'Standard Reference',
    null,
    '73f76067fdbb2beeeee9f756c3680424'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '73f76067fdbb2beeeee9f756c3680424'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Paris'),
            ('B', 'Cancun'),
            ('C', 'Sharm el-Sheikh'),
            ('D', 'Durban')
           ) as v(label, option_text)
 where q.question_hash = '73f76067fdbb2beeeee9f756c3680424'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''IPCC'' was established in:',
    'The Intergovernmental Panel on Climate Change was established in 1988 by the WMO and the UNEP and it has prepared the assessment reports of 1990, 1995, 2001, 2007, 2014 and 2021.',
    'medium',
    'Standard Reference',
    null,
    'e9b944060f18b313a394dd7fbe4a90fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e9b944060f18b313a394dd7fbe4a90fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '1980'),
            ('C', '2002'),
            ('D', '1988')
           ) as v(label, option_text)
 where q.question_hash = 'e9b944060f18b313a394dd7fbe4a90fb'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'Kyoto Protocol was:',
    'The Kyoto Protocol of 1997 committed the industrialised countries to the legally binding reduction of the greenhouse gas emissions, and it entered into force in 2005.',
    'medium',
    'Standard Reference',
    null,
    '014f3ee2fa121464a25e31781966c75c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '014f3ee2fa121464a25e31781966c75c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about the ozone'),
            ('B', 'about the biodiversity'),
            ('C', 'adopted in 1997 and it committed the industrialised countries to the reduction of the greenhouse gas emissions'),
            ('D', 'adopted in 1987')
           ) as v(label, option_text)
 where q.question_hash = '014f3ee2fa121464a25e31781966c75c'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Montreal Protocol'' is concerned with:',
    'The Montreal Protocol of 1987 phased out the ozone depleting substances and it is the most successful of the environmental treaties with the universal ratification.',
    'easy',
    'Standard Reference',
    null,
    '125b97f42dcd78f4595e7d2601e2f28f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '125b97f42dcd78f4595e7d2601e2f28f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The greenhouse gases'),
            ('B', 'The biodiversity'),
            ('C', 'The marine pollution'),
            ('D', 'The ozone depleting substances')
           ) as v(label, option_text)
 where q.question_hash = '125b97f42dcd78f4595e7d2601e2f28f'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'In the context of the carbon sink, which of the following is correct?',
    'The oceans and the terrestrial vegetation, the forests, are the major sinks of the atmospheric carbon dioxide and the forests of the tropics are the most effective of them.',
    'medium',
    'Standard Reference',
    null,
    'e2b667401c0b0c9b9f0e390fd95a7791'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e2b667401c0b0c9b9f0e390fd95a7791'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cities are the carbon sinks'),
            ('B', 'The oceans and the forests are the major carbon sinks'),
            ('C', 'The deserts are the carbon sinks'),
            ('D', 'The atmosphere is a carbon sink')
           ) as v(label, option_text)
 where q.question_hash = 'e2b667401c0b0c9b9f0e390fd95a7791'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''greenhouse gases'' include:',
    'The greenhouse gases are the carbon dioxide, the methane, the nitrous oxide, the water vapour and the ozone and the water vapour is the largest contributor naturally.',
    'medium',
    'Standard Reference',
    null,
    '07e52bb703080a01dae2981785ca3ccc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '07e52bb703080a01dae2981785ca3ccc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Carbon dioxide, methane, nitrous oxide, water vapour and ozone'),
            ('B', 'Only carbon dioxide'),
            ('C', 'Only methane and the carbon dioxide'),
            ('D', 'Oxygen and nitrogen')
           ) as v(label, option_text)
 where q.question_hash = '07e52bb703080a01dae2981785ca3ccc'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Global Warming Potential'' of a gas is:',
    'The GWP is the ratio of the heat trapped by the gas to that of the carbon dioxide over the same period and the methane has a GWP of about 28 to 34 over a century.',
    'hard',
    'Standard Reference',
    null,
    '520819c66a478101fddf46c718025367'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '520819c66a478101fddf46c718025367'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ratio of the heat trapped by the gas to that of the carbon dioxide over the same time'),
            ('B', 'The total heat of the gas'),
            ('C', 'The lifetime of the gas in the atmosphere'),
            ('D', 'The concentration of the gas')
           ) as v(label, option_text)
 where q.question_hash = '520819c66a478101fddf46c718025367'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ozone depletion is:',
    'The depletion of the ozone layer lets the ultraviolet-B radiation reach the surface and it raises the incidence of the skin cancer, the cataracts and the damage to the crops.',
    'easy',
    'Standard Reference',
    null,
    '76394c75d26f5ba7a00e386725f43395'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '76394c75d26f5ba7a00e386725f43395'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'linked to the eutrophication'),
            ('B', 'linked to the skin cancer and the cataracts'),
            ('C', 'linked to the acid rain'),
            ('D', 'linked to the global warming')
           ) as v(label, option_text)
 where q.question_hash = '76394c75d26f5ba7a00e386725f43395'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The AR6 of the IPCC was:',
    'The Sixth Assessment Report of the IPCC, the AR6, was released between 2021 and 2023 with the Synthesis Report of 2023 and it is the most comprehensive scientific assessment of the climate change.',
    'medium',
    'Standard Reference',
    2023,
    '633e5a0b47f849b0ef72824a95d287c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '633e5a0b47f849b0ef72824a95d287c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'released in 2007'),
            ('B', 'no AR6'),
            ('C', 'released in 2021-2023'),
            ('D', 'released in 1995')
           ) as v(label, option_text)
 where q.question_hash = '633e5a0b47f849b0ef72824a95d287c1'
on conflict (question_id, label) do nothing;

-- environment | climate-change | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Net zero'' for India is committed by:',
    'India has committed to the net zero greenhouse gas emissions by 2070 and to the 500 GW of the non-fossil capacity by 2030, and the Panchamrit was announced at the COP26.',
    'easy',
    'Standard Reference',
    null,
    '5da7143b5378699b6a3993664350a19c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5da7143b5378699b6a3993664350a19c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2050'),
            ('B', '2030'),
            ('C', '2060'),
            ('D', '2070')
           ) as v(label, option_text)
 where q.question_hash = '5da7143b5378699b6a3993664350a19c'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The AQI is reported:',
    'The Air Quality Index, the AQI, is reported on a scale of 1 to 500 and the categories are the Good (1 to 50), the Satisfactory (51 to 100), the Moderate (101 to 200), the Poor (201 to 300), the Very Poor (301 to 400) and the Severe (401 to 500).',
    'medium',
    'Standard Reference',
    null,
    'c83a191cdc9c0f41b1a492ab5bdab723'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c83a191cdc9c0f41b1a492ab5bdab723'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'on a scale of 1 to 100'),
            ('B', 'The AQI measures the visibility only'),
            ('C', 'measured only in the winter'),
            ('D', 'on a scale of 1 to 500 and the satisfactory level is 1 to 50')
           ) as v(label, option_text)
 where q.question_hash = 'c83a191cdc9c0f41b1a492ab5bdab723'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''NAAQS'' of India for the PM2.5 is:',
    'The National Ambient Air Quality Standards of India prescribe the 60 micrograms per cubic metre of the PM2.5 over 24 hours and the 100 for the PM10.',
    'hard',
    'Standard Reference',
    null,
    'a6fa50642e0fbfab9e08c57c38d84200'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a6fa50642e0fbfab9e08c57c38d84200'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '100 micrograms per cubic metre'),
            ('B', '40 micrograms per cubic metre'),
            ('C', '60 micrograms per cubic metre over 24 hours'),
            ('D', '500 micrograms per cubic metre')
           ) as v(label, option_text)
 where q.question_hash = 'a6fa50642e0fbfab9e08c57c38d84200'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'In the context of the BOD, which of the following is correct?',
    'The Biochemical Oxygen Demand measures the amount of the biodegradable organic matter in the water and the higher the BOD, the greater is the pollution of the water.',
    'medium',
    'Standard Reference',
    null,
    '8f7195ef67d58349d323c8fc54335af5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8f7195ef67d58349d323c8fc54335af5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It measures the salinity'),
            ('B', 'The BOD is the amount of the biodegradable organic matter and it indicates the pollution of the water'),
            ('C', 'The BOD measures the acidity'),
            ('D', 'It measures the hardness')
           ) as v(label, option_text)
 where q.question_hash = '8f7195ef67d58349d323c8fc54335af5'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Eutrophication is:',
    'The eutrophication is caused by the phosphates and the nitrates of the fertilisers and the detergents and it leads to the algal blooms and the oxygen depletion.',
    'medium',
    'Standard Reference',
    null,
    '861e5572a1ff039c143c3dfa54535d11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '861e5572a1ff039c143c3dfa54535d11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'caused by the nutrients of the fertilisers and the detergents and it leads to the algal blooms'),
            ('B', 'caused by the oil spills'),
            ('C', 'the cooling of the water'),
            ('D', 'the dilution of the salts')
           ) as v(label, option_text)
 where q.question_hash = '861e5572a1ff039c143c3dfa54535d11'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''acid rain'' is caused mainly by:',
    'The acid rain is caused by the oxides of sulphur and the nitrogen that combine with the water vapour in the atmosphere to form the sulphuric and the nitric acids.',
    'easy',
    'Standard Reference',
    null,
    'e64728b0a6fab80e0f274f8227458308'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e64728b0a6fab80e0f274f8227458308'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oxides of sulphur and the nitrogen'),
            ('B', 'The carbon dioxide'),
            ('C', 'The particulates'),
            ('D', 'The chlorofluorocarbons')
           ) as v(label, option_text)
 where q.question_hash = 'e64728b0a6fab80e0f274f8227458308'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Consider the following statements. Which of them is correct with regard to the noise pollution?',
    'The permissible noise level in the industrial areas is 75 dB in the day and 70 dB at night, in the commercial areas it is 65 and 55, and in the residential 55 and 45.',
    'medium',
    'Standard Reference',
    null,
    '2a6b088b91958b4ec58b50e32e7e46d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a6b088b91958b4ec58b50e32e7e46d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is measured in parts per million'),
            ('B', 'It is measured by the BOD'),
            ('C', 'The permissible noise level in the industrial areas in the day is 75 dB'),
            ('D', 'It is 100 dB everywhere')
           ) as v(label, option_text)
 where q.question_hash = '2a6b088b91958b4ec58b50e32e7e46d3'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The identified single-use plastic items are banned:',
    'The ban on the identified single-use plastic items came into effect on 1 July 2022 and the plastic waste management rules of 2016 had already banned their manufacture, the import and the use.',
    'medium',
    'Standard Reference',
    2022,
    '0940f7cc296e2517005a7d42effb6c38'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0940f7cc296e2517005a7d42effb6c38'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'into effect in 2016'),
            ('B', 'not regulated in India'),
            ('C', 'only to the Delhi'),
            ('D', 'from 1 July 2022')
           ) as v(label, option_text)
 where q.question_hash = '0940f7cc296e2517005a7d42effb6c38'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Municipal Solid Waste Rules, 2016'' required the states to:',
    'The Municipal Solid Waste Management Rules of 2016 required the states to have their own rules and the source segregation of the waste and the segregation of the waste in the three bins.',
    'medium',
    'Standard Reference',
    2016,
    '21d2137a8306c533039b9f206dad780b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '21d2137a8306c533039b9f206dad780b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Notify the landfill sites'),
            ('B', 'Have their own rules within two years and the waste segregation at the source'),
            ('C', 'Ban the plastic immediately'),
            ('D', 'Set up the waste to energy plants')
           ) as v(label, option_text)
 where q.question_hash = '21d2137a8306c533039b9f206dad780b'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''EPR'' in the extended producer responsibility:',
    'The EPR makes the producers responsible for the collection, the recycling and the disposal of the products after the consumption and the plastic packaging EPR was notified in 2022.',
    'medium',
    'Standard Reference',
    null,
    '67c48a2421eb55ad1cb55692c407dd8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '67c48a2421eb55ad1cb55692c407dd8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a tax on the consumers'),
            ('B', 'Is a deposit scheme of the glass'),
            ('C', 'Is a ban on the packaging'),
            ('D', 'Makes the producers responsible for the end of life of their products')
           ) as v(label, option_text)
 where q.question_hash = '67c48a2421eb55ad1cb55692c407dd8a'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Biodegradable'' and the ''compostable'' plastics:',
    'The quality standards for the biodegradable and the compostable plastics were notified in 2022 and they became applicable from 1 April 2023 to the products of the large scale producers.',
    'hard',
    'Standard Reference',
    2023,
    '16436fd2e8aaa798090ae51fa1503d94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '16436fd2e8aaa798090ae51fa1503d94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have no quality standards'),
            ('B', 'Are allowed without any conditions'),
            ('C', 'Are governed by the quality standards notified in 2022 and they are applicable from April 2023'),
            ('D', 'Are banned in India')
           ) as v(label, option_text)
 where q.question_hash = '16436fd2e8aaa798090ae51fa1503d94'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following is correct in the case of the Biogas?',
    'The biogas plants, the gobar gas plants, convert the organic waste into the biogas for the cooking and the slurry into the bio-fertiliser for the agriculture.',
    'medium',
    'Standard Reference',
    null,
    'aa8a0af0c01c00213d2b1c1979e29e71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aa8a0af0c01c00213d2b1c1979e29e71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the plants that convert the organic waste into the biogas and the bio-fertiliser'),
            ('B', 'Are the nuclear plants'),
            ('C', 'Are the coal washeries'),
            ('D', 'Are the desalination plants')
           ) as v(label, option_text)
 where q.question_hash = 'aa8a0af0c01c00213d2b1c1979e29e71'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Waste to energy'' plants in India:',
    'The waste to energy plants are set up under the SMART Cities Mission and the Swachh Bharat Mission and they have faced the objections of the resident and the environmental groups.',
    'medium',
    'Standard Reference',
    null,
    'cb9876b6e2089f2a0cba535e4179f029'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cb9876b6e2089f2a0cba535e4179f029'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the coal mines'),
            ('B', 'Are set up under the SMART cities and the Swachh mission'),
            ('C', 'Are only in the Kerala'),
            ('D', 'Are the nuclear plants')
           ) as v(label, option_text)
 where q.question_hash = 'cb9876b6e2089f2a0cba535e4179f029'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''ocean acidification'' is caused by:',
    'The absorption of the atmospheric carbon dioxide by the seawater lowers the pH and it harms the shell forming organisms and the corals.',
    'medium',
    'Standard Reference',
    null,
    '63649aa23ab81a16603df42860b517e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '63649aa23ab81a16603df42860b517e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The oil spills'),
            ('B', 'The thermal pollution'),
            ('C', 'The absorption of the carbon dioxide by the seawater'),
            ('D', 'The dumping of the plastic')
           ) as v(label, option_text)
 where q.question_hash = '63649aa23ab81a16603df42860b517e8'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Coral bleaching'' is caused by:',
    'The coral bleaching is caused by the stress of the higher sea temperatures that make the corals expel their symbiotic zooxanthellae.',
    'easy',
    'Standard Reference',
    null,
    '43731cb447dda64283bfcd8512144fc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '43731cb447dda64283bfcd8512144fc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The salinity'),
            ('B', 'The oxygen'),
            ('C', 'The wave action'),
            ('D', 'The rise in the sea temperature')
           ) as v(label, option_text)
 where q.question_hash = '43731cb447dda64283bfcd8512144fc7'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''CRZ'' of the Coastal Regulation Zones:',
    'The Coastal Regulation Zones, notified in 1991 under the Environment Protection Act, divided the coastal areas into the categories I to IV with the different permissible activities.',
    'medium',
    'Standard Reference',
    null,
    '1f9c97780d444d4ff0cbd57a03361361'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1f9c97780d444d4ff0cbd57a03361361'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Applies only to the Kerala'),
            ('B', 'Divided the coastal areas into the CRZ categories I to IV and it was notified in 1991'),
            ('C', 'Was notified in 2001'),
            ('D', 'Divides the coast into 10 zones')
           ) as v(label, option_text)
 where q.question_hash = '1f9c97780d444d4ff0cbd57a03361361'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Deep Sea mining'' in the Indian Ocean:',
    'The deep sea mining is regulated by the International Seabed Authority that was established under the UNCLOS and India has a pioneer area in the central Indian Ocean.',
    'hard',
    'Standard Reference',
    null,
    'd24a3ce69e6fec4e46fda3bd181d2987'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd24a3ce69e6fec4e46fda3bd181d2987'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is regulated by the International Seabed Authority under the UNCLOS'),
            ('B', 'Is completely banned in India'),
            ('C', 'Is done only by the Japan'),
            ('D', 'Is not regulated')
           ) as v(label, option_text)
 where q.question_hash = 'd24a3ce69e6fec4e46fda3bd181d2987'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''blue economy'' of India:',
    'The National Blue Economy Policy was notified in 2021 and it covers the economic activities of the oceans, the coastal areas and the marine and the coastal resources.',
    'medium',
    'Standard Reference',
    2021,
    'c2aa0a18c9046f8626d45ed521fefba5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c2aa0a18c9046f8626d45ed521fefba5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a state scheme'),
            ('B', 'Covers only the shipping'),
            ('C', 'Covers the oceans, the coastal areas and the marine resources and the National Blue Economy Policy was notified in 2021'),
            ('D', 'Covers only the fisheries')
           ) as v(label, option_text)
 where q.question_hash = 'c2aa0a18c9046f8626d45ed521fefba5'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''MARPOL'' convention is concerned with:',
    'The MARPOL is the international convention for the prevention of the pollution from the ships and it deals with the oil pollution, the garbage and the sewage.',
    'medium',
    'Standard Reference',
    null,
    'bfa70ed1c470807706917e87af037edf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bfa70ed1c470807706917e87af037edf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ozone depletion'),
            ('B', 'The marine biodiversity'),
            ('C', 'The fisheries'),
            ('D', 'The pollution of the sea by the ships')
           ) as v(label, option_text)
 where q.question_hash = 'bfa70ed1c470807706917e87af037edf'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The Island Development Agency was:',
    'The Island Development Agency was set up in 2021 under the Ministry of Ports, Shipping and Waterways for the holistic development of the islands and it merged the erstwhile three organisations.',
    'hard',
    'Standard Reference',
    2021,
    '31ec8d4d7fe301b353b98f1da0c21941'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31ec8d4d7fe301b353b98f1da0c21941'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up in 2001'),
            ('B', 'set up in 2021 for the development of the islands'),
            ('C', 'set up in 1991'),
            ('D', 'a fisheries body')
           ) as v(label, option_text)
 where q.question_hash = '31ec8d4d7fe301b353b98f1da0c21941'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Which of the following statements is/are correct in relation to the solar energy?',
    'India is among the largest solar power producers in the world and the Bhadla in the Rajasthan is the largest solar park in Asia and the Kamuthi in the Tamil Nadu is among the largest in the world.',
    'medium',
    'Standard Reference',
    null,
    '6e13ffedd86ead73d4ab9ebef66c61f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e13ffedd86ead73d4ab9ebef66c61f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India is among the largest solar power producers in the world with the Khavda and the Bhadla as the largest plants'),
            ('B', 'India is the smallest producer'),
            ('C', 'The solar power was introduced in 2015'),
            ('D', 'There are no solar plants in the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '6e13ffedd86ead73d4ab9ebef66c61f4'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''PM Surya Ghar Muft Bijli Yojana'' of 2024:',
    'The PM Surya Ghar Muft Bijli Yojana, with an outlay of Rs. 75,021 crore, provides the rooftop solar of up to 300 units per household with the Central Subsidy.',
    'medium',
    'Standard Reference',
    2024,
    '1cac716781711a1418f1f4bd82ff4cd9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cac716781711a1418f1f4bd82ff4cd9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a state scheme'),
            ('B', 'Provides the rooftop solar with a maximum of 300 units per household'),
            ('C', 'Provides the free electricity to all the households'),
            ('D', 'Provides the solar to the industries only')
           ) as v(label, option_text)
 where q.question_hash = '1cac716781711a1418f1f4bd82ff4cd9'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Energy Storage Obligation requires:',
    'The Energy Storage Obligation in the electricity regulations requires the renewable energy developers to store a part of their generation for the later use in the peak hours.',
    'hard',
    'Standard Reference',
    null,
    '8b8319f3b39167ae886a0628f0c86ec2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b8319f3b39167ae886a0628f0c86ec2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the renewable energy developers to store a part of their generation for a later use'),
            ('B', 'the thermal plants to be modernised'),
            ('C', 'a subsidy for the rooftop solar'),
            ('D', 'the obligation of the discoms to buy the coal')
           ) as v(label, option_text)
 where q.question_hash = '8b8319f3b39167ae886a0628f0c86ec2'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Environment Protection Act, 1986'' provides for:',
    'The Environment Protection Act of 1986 provided for the powers of the Central and the state pollution control boards to control the pollution and the standards and it also gave the umbrella framework for the environment laws.',
    'easy',
    'Standard Reference',
    null,
    'd059130bf4e0ad2923521ab7feedd4a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd059130bf4e0ad2923521ab7feedd4a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The control of the noise only'),
            ('B', 'The regulation of the industries only'),
            ('C', 'The powers of the Central and the state pollution control boards to control the pollution and to set the standards'),
            ('D', 'The protection of the forests only')
           ) as v(label, option_text)
 where q.question_hash = 'd059130bf4e0ad2923521ab7feedd4a2'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Green Tribunal'':',
    'The National Green Tribunal was established in 2010 under the Environment Protection Act of 1986 and it is a specialised body for the environmental disputes with the powers of the civil court.',
    'medium',
    'Standard Reference',
    null,
    '370bd42bbb0d4e5c3366b16be65e8823'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '370bd42bbb0d4e5c3366b16be65e8823'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was established in 1995'),
            ('B', 'Is a part of the Supreme Court'),
            ('C', 'Is a state body'),
            ('D', 'Was established in 2010 under the Environment Protection Act and it is a specialised body for the environmental disputes')
           ) as v(label, option_text)
 where q.question_hash = '370bd42bbb0d4e5c3366b16be65e8823'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Biodiversity Act, 2002'' provides for the:',
    'The Biodiversity Act of 2002 provided for the National Biodiversity Authority and the state and the district biodiversity councils and for the sharing of the benefits with the local and the indigenous communities.',
    'medium',
    'Standard Reference',
    null,
    '0f03e45644075cd223b5094647294982'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f03e45644075cd223b5094647294982'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Biodiversity Authority and the State and the district councils'),
            ('B', 'The National Green Tribunal'),
            ('C', 'The Central Pollution Control Board'),
            ('D', 'The National Wildlife Board')
           ) as v(label, option_text)
 where q.question_hash = '0f03e45644075cd223b5094647294982'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Forest Conservation Act, 1980'':',
    'The Forest (Conservation) Act of 1980 prohibits the diversion of the forest land for the non-forest use and the 2023 amendment allowed the diversion for the linear infrastructure and the the exemptions for the forests within the revenue limits of the villages.',
    'medium',
    'Standard Reference',
    null,
    '8bc3cb5ffc4f564075ebcbc213d9c452'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8bc3cb5ffc4f564075ebcbc213d9c452'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It nationalised the forests'),
            ('B', 'It created the national parks'),
            ('C', 'It is about the tribal rights'),
            ('D', 'Prohibits the diversion of the forest land for the non-forest use and it was amended in 2023')
           ) as v(label, option_text)
 where q.question_hash = '8bc3cb5ffc4f564075ebcbc213d9c452'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Scheduled Tribes and the Other Traditional Forest Dwellers Act'' was enacted in:',
    'The Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act of 2006, amended in 2021, recognises the rights of the forest dwellers over the forest resources.',
    'medium',
    'Standard Reference',
    null,
    '5eaee028de5d77213d9e05170633ee69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5eaee028de5d77213d9e05170633ee69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1992'),
            ('B', '2002'),
            ('C', '2006'),
            ('D', '1980')
           ) as v(label, option_text)
 where q.question_hash = '5eaee028de5d77213d9e05170633ee69'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''CAMPA Act, 2016'' provides for:',
    'The CAMPA Act of 2016 provided for the Compensatory Afforestation Fund and the National and the state funds to be used for the afforestation and the improvement of the forests.',
    'medium',
    'Standard Reference',
    null,
    '6b8d91fa81fe4d4a2728253569c080af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6b8d91fa81fe4d4a2728253569c080af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tax on the forest produce'),
            ('B', 'The Compensatory Afforestation Fund and the National and the state funds for the diversion of the forest land'),
            ('C', 'The nationalisation of the forests'),
            ('D', 'The ban on the mining')
           ) as v(label, option_text)
 where q.question_hash = '6b8d91fa81fe4d4a2728253569c080af'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''EIA Notification, 2006'':',
    'The EIA Notification of 2006 listed the projects requiring the environmental impact assessment and the categories and the conditions of the clearances.',
    'medium',
    'Standard Reference',
    null,
    '723d0cc413a28b7cbaae39ebdbe68701'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '723d0cc413a28b7cbaae39ebdbe68701'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It created the wildlife board'),
            ('B', 'Lists the projects that require the environmental impact assessment and the categorisation of the projects'),
            ('C', 'It created the NGT'),
            ('D', 'It banned the mining')
           ) as v(label, option_text)
 where q.question_hash = '723d0cc413a28b7cbaae39ebdbe68701'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Convention on Biological Diversity'' was opened for signature in:',
    'The Convention on Biological Diversity was opened for signature at the Rio de Janeiro Earth Summit in 1992 and it entered into force in 1993.',
    'easy',
    'Standard Reference',
    null,
    '607eec73a056144141e989c79a2977b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '607eec73a056144141e989c79a2977b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1972 at Stockholm'),
            ('B', '1998 in Kyoto'),
            ('C', '2002 in Johannesburg'),
            ('D', '1992 at Rio de Janeiro')
           ) as v(label, option_text)
 where q.question_hash = '607eec73a056144141e989c79a2977b4'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Cartagena Protocol'' of the CBD is about:',
    'The Cartagena Protocol on Biosafety deals with the movement, the handling and the use of the living modified organisms that may have adverse effects on the biological diversity.',
    'medium',
    'Standard Reference',
    null,
    '22a27435c9b203400198a97ea7a7a52e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '22a27435c9b203400198a97ea7a7a52e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The biosafety of the genetically modified organisms'),
            ('B', 'The climate change'),
            ('C', 'The ozone'),
            ('D', 'The seas')
           ) as v(label, option_text)
 where q.question_hash = '22a27435c9b203400198a97ea7a7a52e'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Nagoya Protocol'' of the CBD is about:',
    'The Nagoya Protocol, adopted in 2010, deals with the access to the genetic resources and the fair and equitable sharing of the benefits arising from their utilisation.',
    'medium',
    'Standard Reference',
    null,
    '5a6a3b2df0b0d0ce16a3e870073cb763'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5a6a3b2df0b0d0ce16a3e870073cb763'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The climate change'),
            ('B', 'The migratory species'),
            ('C', 'The access and the benefit sharing from the genetic resources'),
            ('D', 'The biosafety')
           ) as v(label, option_text)
 where q.question_hash = '5a6a3b2df0b0d0ce16a3e870073cb763'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Kunming-Montreal Global Biodiversity Framework'' was adopted at:',
    'The Kunming-Montreal Global Biodiversity Framework was adopted at the COP15 of the CBD at Kunming in December 2022 with the target of the protection of the 30 per cent of the land and the sea by 2030.',
    'medium',
    'Standard Reference',
    2022,
    'd2c2c9a1b8a627a6b9588d2e09199921'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2c2c9a1b8a627a6b9588d2e09199921'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The COP14 in 2010'),
            ('B', 'The COP15 of the CBD in 2022'),
            ('C', 'The COP26 in 2021'),
            ('D', 'The COP28 in 2023')
           ) as v(label, option_text)
 where q.question_hash = 'd2c2c9a1b8a627a6b9588d2e09199921'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'Which of the following statements is/are correct in relation to the UNFCCC?',
    'The UNFCCC is the framework convention of the 1992 Rio de Janeiro and the Kyoto Protocol and the Paris Agreement are the protocols and the agreements under it.',
    'medium',
    'Standard Reference',
    null,
    '51acfaa2986ca48ae2095bf5aab4c8c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '51acfaa2986ca48ae2095bf5aab4c8c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the framework convention of the 1992 Rio de Janeiro with the Kyoto Protocol and the Paris Agreement under it'),
            ('B', 'It was adopted in 1997'),
            ('C', 'It is about the ozone'),
            ('D', 'It is a fisheries treaty')
           ) as v(label, option_text)
 where q.question_hash = '51acfaa2986ca48ae2095bf5aab4c8c2'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Sendai Framework'' was adopted in:',
    'The Sendai Framework for Disaster Risk Reduction 2015-2030 was adopted in Sendai, Japan in March 2015 and it replaced the Hyogo Framework.',
    'easy',
    'Standard Reference',
    null,
    '793e1f55cfe1bd4504bf4165d3c4dee8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '793e1f55cfe1bd4504bf4165d3c4dee8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005 in Kobe'),
            ('B', '1994 in Yokohama'),
            ('C', '1989 in Geneva'),
            ('D', '2015 in Sendai, Japan')
           ) as v(label, option_text)
 where q.question_hash = '793e1f55cfe1bd4504bf4165d3c4dee8'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Sendai Framework'' has how many priorities?',
    'The Sendai Framework has the four priorities of the understanding the disaster risk, the strengthening the disaster risk governance, the investing in the resilience and the enhancing the preparedness for the effective response and the recovery.',
    'medium',
    'Standard Reference',
    null,
    'fc64f671d0215d0313534de10aa18024'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc64f671d0215d0313534de10aa18024'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Five'),
            ('B', 'Seven'),
            ('C', 'Four'),
            ('D', 'Three')
           ) as v(label, option_text)
 where q.question_hash = 'fc64f671d0215d0313534de10aa18024'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''National Disaster Management Act, 2005'' created:',
    'The National Disaster Management Act of 2005 created the NDMA at the national level, the SDMA and the DDMA at the state and the district levels and the National Response Force for the rescue.',
    'easy',
    'Standard Reference',
    null,
    'b2ed098c3f4279d24e71e7252de173bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b2ed098c3f4279d24e71e7252de173bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NDMA and the NDRF'),
            ('B', 'The National Commission'),
            ('C', 'The NDMA, the SDMA, the DDMA and the NDRF'),
            ('D', 'Only the NDMA')
           ) as v(label, option_text)
 where q.question_hash = 'b2ed098c3f4279d24e71e7252de173bd'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''NDMA'' is chaired by:',
    'The National Disaster Management Authority is chaired by the Prime Minister and the National Executive Committee is also chaired by the Prime Minister.',
    'easy',
    'Standard Reference',
    null,
    '4725d2fc527fbc1913c6abee71706397'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4725d2fc527fbc1913c6abee71706397'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Chief Minister'),
            ('C', 'The Home Secretary'),
            ('D', 'The Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '4725d2fc527fbc1913c6abee71706397'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''National Response Force'' was constituted in:',
    'The National Response Force was constituted in 2006 with 16 battalions and the NDRF is the body of the SDRF and it is led by the Director General of the NDRF.',
    'hard',
    'Standard Reference',
    null,
    '263302da9b7ee95dc15156bd1fa77a86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '263302da9b7ee95dc15156bd1fa77a86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2006 with the 16 battalions'),
            ('B', '1996 with the 8 battalions'),
            ('C', '2000 with the 12 battalions'),
            ('D', '2010 with the 20 battalions')
           ) as v(label, option_text)
 where q.question_hash = '263302da9b7ee95dc15156bd1fa77a86'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''13th Finance Commission'' recommended the NDDRF with a corpus of:',
    'The 13th Finance Commission recommended the National Disaster Damage and Restoration Fund with an initial corpus of Rs. 28,000 crore and the NDDRF was constituted in 2019.',
    'hard',
    'Standard Reference',
    null,
    'f3f5328dcbefc0ccb3e430893e8c702f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f3f5328dcbefc0ccb3e430893e8c702f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 8,000 crore'),
            ('B', 'Rs. 28,000 crore'),
            ('C', 'Rs. 12,000 crore'),
            ('D', 'Rs. 40,000 crore')
           ) as v(label, option_text)
 where q.question_hash = 'f3f5328dcbefc0ccb3e430893e8c702f'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''heat wave'' in India is declared by the IMD when the temperature is:',
    'The IMD declares a heat wave when the maximum temperature is at least 4 degrees above the normal for a plains station, 3 degrees for the hills and the coastal and the severe heat wave at a difference of 6.5 degrees.',
    'hard',
    'Standard Reference',
    null,
    'e113453e779278ab6b077753c3a6933d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e113453e779278ab6b077753c3a6933d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Below 20 degrees'),
            ('B', 'At least 4 degrees above the normal for a plains station'),
            ('C', 'Above 40 degrees for two days'),
            ('D', 'Above 45 degrees in the hills')
           ) as v(label, option_text)
 where q.question_hash = 'e113453e779278ab6b077753c3a6933d'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Which of the following is correct in the case of the INCOIS?',
    'The Indian National Centre for Ocean Information Services at Hyderabad issues the cyclone and the ocean heat potential advisories and the 3D ocean temperature products for the Indian Ocean.',
    'hard',
    'Standard Reference',
    null,
    '402232b394dd01071bc1473ad63ab0c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '402232b394dd01071bc1473ad63ab0c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a fisheries institute'),
            ('B', 'It is a space centre'),
            ('C', 'It is a meteorological department of the state'),
            ('D', 'The INCOIS at Hyderabad issues the cyclone and the ocean heat potential advisories for the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '402232b394dd01071bc1473ad63ab0c8'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Which of the following is correct in the case of the Sendai?',
    'The Sendai Framework of 2015-2030 replaced the Hyogo Framework of 2005-2015 and it was the first instrument of the post-2015 disaster risk reduction after the adoption of the Sendai Declaration.',
    'medium',
    'Standard Reference',
    null,
    '886f1de49d1b640f8bba3438baa17e32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '886f1de49d1b640f8bba3438baa17e32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sendai Framework replaced the Hyogo Framework of 2005-2015'),
            ('B', 'The Sendai Framework replaced the Yokohama Strategy'),
            ('C', 'It was adopted by the UN Security Council'),
            ('D', 'It is a purely national framework')
           ) as v(label, option_text)
 where q.question_hash = '886f1de49d1b640f8bba3438baa17e32'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The NDRF battalions are:',
    'The NDRF battalions are drawn from the CAPF and the BSF and the CRPF and the NDRF is the core of the SDRF for the rescue operations.',
    'hard',
    'Standard Reference',
    null,
    '01898ec03cd6811a7a37f759e5e46133'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '01898ec03cd6811a7a37f759e5e46133'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a state force'),
            ('B', 'under the NITI Aayog'),
            ('C', 'drawn from the CAPF and the BSF and the CRPF'),
            ('D', 'the army reserve')
           ) as v(label, option_text)
 where q.question_hash = '01898ec03cd6811a7a37f759e5e46133'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''PM CARES Fund'' was established in:',
    'The PM CARES Fund was established in March 2020 to support the fight against the Covid-19 and the other causes of distress.',
    'easy',
    'Standard Reference',
    null,
    '97c0755ad6e59c0db4e4de17cd03a076'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '97c0755ad6e59c0db4e4de17cd03a076'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '2020 during the Covid pandemic'),
            ('C', '2015'),
            ('D', '2004')
           ) as v(label, option_text)
 where q.question_hash = '97c0755ad6e59c0db4e4de17cd03a076'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The National Guidelines for the Management of the Chemical Accidents were:',
    'The National Guidelines for the Management of the Chemical Accidents were released in 1999 and the NDMA is the nodal agency for the mitigation of the chemical accidents.',
    'hard',
    'Standard Reference',
    null,
    '0ea06ddaf192ab30eea67ced907c2cac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0ea06ddaf192ab30eea67ced907c2cac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'released in 2004'),
            ('B', 'released in 1989'),
            ('C', 'no such guidelines'),
            ('D', 'released in 1999')
           ) as v(label, option_text)
 where q.question_hash = '0ea06ddaf192ab30eea67ced907c2cac'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The Rashtriya Barh Ayog was:',
    'The Rashtriya Barh Ayog, the National Commission for Floods, was set up in 1980 under the Ministry of Water Resources to give the effective flood protection in the Ganga and the Brahmaputra basins.',
    'medium',
    'Standard Reference',
    null,
    '5e2a7856668b2aefec697470bdfa8e29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5e2a7856668b2aefec697470bdfa8e29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up in 1980 to give the effective flood protection in the Ganga and the Brahmaputra basins'),
            ('B', 'set up in 1990'),
            ('C', 'a state body'),
            ('D', 'set up in 2000')
           ) as v(label, option_text)
 where q.question_hash = '5e2a7856668b2aefec697470bdfa8e29'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''National Water Policy'' of 2012 recommended:',
    'The National Water Policy of 2012 recommended the equitable and the rational use of the water, the basin-level planning and the minimum use of the potable water for the domestic use.',
    'hard',
    'Standard Reference',
    null,
    '298d803fbbc8cf414a040d66c1f24770'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '298d803fbbc8cf414a040d66c1f24770'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The uniform water tariff'),
            ('B', 'The abolition of the irrigation canals'),
            ('C', 'The principle of the equitable distribution of the water and the basin-level planning'),
            ('D', 'The privatisation of the water supply')
           ) as v(label, option_text)
 where q.question_hash = '298d803fbbc8cf414a040d66c1f24770'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The cyclones of the Bay of Bengal are:',
    'The tropical cyclones of the Bay of Bengal are called the storms and the ones of the Arabian Sea are called the cyclones and the frequency is much higher in the Bay.',
    'hard',
    'Standard Reference',
    null,
    'ad8d902294a3487efd3d2c754cc5434e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ad8d902294a3487efd3d2c754cc5434e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the storms'),
            ('B', 'interchangeable'),
            ('C', 'called the storms and the ones of the Arabian Sea are the cyclones'),
            ('D', 'called the cyclones')
           ) as v(label, option_text)
 where q.question_hash = 'ad8d902294a3487efd3d2c754cc5434e'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'Which of the following statements regarding the 2004 tsunami is correct?',
    'The 2004 tsunami was triggered by the undersea Sumatra-Andaman earthquake of the magnitude 9.0 on 26 December 2004 and it killed about 2,30,000 people in 14 countries.',
    'easy',
    'Standard Reference',
    null,
    '27baa9340df711d007730b98ebc36409'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27baa9340df711d007730b98ebc36409'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was caused by the 2005 Kashmir earthquake'),
            ('B', 'Was caused by the cyclone of 2004'),
            ('C', 'Was caused by the volcanic eruption'),
            ('D', 'Was triggered by the 26 December 2004 Sumatra earthquake of the magnitude 9.0')
           ) as v(label, option_text)
 where q.question_hash = '27baa9340df711d007730b98ebc36409'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Which of the following is correct in the case of the Ooty?',
    'The Ooty in the Nilgiris is the site of the Tropical Botanical Garden, one of the oldest in the world, and the Nilgiri Biosphere Reserve.',
    'medium',
    'Standard Reference',
    null,
    '171231fec255686901e3b6c18b7c7840'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '171231fec255686901e3b6c18b7c7840'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ooty is a nuclear centre'),
            ('B', 'The Ooty is the site of the Tropical Botanical Garden and the Avalanche of the Nilgiri Biosphere Reserve'),
            ('C', 'The Ooty is the site of the IIT'),
            ('D', 'The Ooty is a port')
           ) as v(label, option_text)
 where q.question_hash = '171231fec255686901e3b6c18b7c7840'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Central Pollution Control Board'' was established under the:',
    'The Central Pollution Control Board was established under the Water (Prevention and Control of Pollution) Act of 1974 and it also performs the functions of the Central Air Quality and the noise pollution control boards.',
    'medium',
    'Standard Reference',
    null,
    '3efb74c2ccc5c623321050b651c3d771'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3efb74c2ccc5c623321050b651c3d771'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Water (Prevention and Control of Pollution) Act, 1974'),
            ('B', 'Environment Protection Act, 1986'),
            ('C', 'Air Act, 1981'),
            ('D', 'Forest Conservation Act, 1980')
           ) as v(label, option_text)
 where q.question_hash = '3efb74c2ccc5c623321050b651c3d771'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''State Pollution Control Board'' is constituted under the:',
    'The State Pollution Control Boards are constituted under the Water Act of 1974 and they exercise the powers of the SPCB and the local bodies with the pollution control.',
    'easy',
    'Standard Reference',
    null,
    '9993a4f74ced7b13a7c9ff9281d178e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9993a4f74ced7b13a7c9ff9281d178e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Water Act, 1974'),
            ('B', 'Air Act, 1981'),
            ('C', 'EPA, 1986'),
            ('D', 'The CPCB Act')
           ) as v(label, option_text)
 where q.question_hash = '9993a4f74ced7b13a7c9ff9281d178e4'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Air (Prevention and Control of Pollution) Act'' was enacted in:',
    'The Air Act of 1981 gave the statutory status to the CPCB and the SPCBs for the control of the air pollution.',
    'easy',
    'Standard Reference',
    null,
    'b47b9c6b4805ecba4304fb91ead82f66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b47b9c6b4805ecba4304fb91ead82f66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1974'),
            ('B', '1988'),
            ('C', '1981'),
            ('D', '1986')
           ) as v(label, option_text)
 where q.question_hash = 'b47b9c6b4805ecba4304fb91ead82f66'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Environment Protection Act, 1986'' was amended in:',
    'The Environment Protection Act of 1986 was amended in 1991 with the insertion of the EIA Notification and the inclusion of the public trust in the environment and the polluter pays in the preamble.',
    'hard',
    'Standard Reference',
    null,
    '3fc115e76eb1217f2c33f925a2686e86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3fc115e76eb1217f2c33f925a2686e86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '1991'),
            ('C', '1988'),
            ('D', '1995')
           ) as v(label, option_text)
 where q.question_hash = '3fc115e76eb1217f2c33f925a2686e86'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Public Trust Doctrine'' in the environmental law of India:',
    'The public trust doctrine, articulated in the M.C. Mehta case, treats the natural resources as a public trust and the state as the trustee of it, and it was placed in the preamble of the EPA by the 1991 amendment.',
    'medium',
    'Standard Reference',
    null,
    '63cc23dd86099a4e6d492dd6d964ebea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '63cc23dd86099a4e6d492dd6d964ebea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is about the waiving of the litigation'),
            ('B', 'Is about the public sector enterprises'),
            ('C', 'Is about the transparency in the governance'),
            ('D', 'Treats the natural resources as a public trust and the state as a trustee')
           ) as v(label, option_text)
 where q.question_hash = '63cc23dd86099a4e6d492dd6d964ebea'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Polluter Pays'' principle is related to:',
    'The polluter pays principle, part of the polluter pays and the precautionary approach in the EPA, makes the polluter liable for the damage caused and for the cost of the restoration of the environment.',
    'medium',
    'Standard Reference',
    null,
    '4195636aa294822440266326819d72af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4195636aa294822440266326819d72af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The liability of the polluter to bear the cost of the restoration of the environment'),
            ('B', 'The tax of the industries'),
            ('C', 'The duty of the citizens'),
            ('D', 'The financing of the pollution board')
           ) as v(label, option_text)
 where q.question_hash = '4195636aa294822440266326819d72af'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Precautionary Principle'' in the environmental law:',
    'The precautionary principle, applied by the Supreme Court in the Oleum Gas Leak case, requires the regulator to act on the reasonable suspicion of the harm and it is a part of the EPA preamble.',
    'medium',
    'Standard Reference',
    null,
    '05cb506ab2acbc7f782da8742c980a75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '05cb506ab2acbc7f782da8742c980a75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Applies only to the industrial emissions'),
            ('B', 'Applies only after the damage is done'),
            ('C', 'Is a fiscal policy'),
            ('D', 'Requires the action to prevent the environmental harm even without the full scientific evidence')
           ) as v(label, option_text)
 where q.question_hash = '05cb506ab2acbc7f782da8742c980a75'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Oleum gas leak'' case of 1985 led to:',
    'The M.C. Mehta v. Union of India case of 1985 established the absolute liability of the enterprises engaged in the hazardous or the injurious activities with no exception of the foreseeability.',
    'medium',
    'Standard Reference',
    null,
    '22a303bea843d62e0576e92005ae12ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '22a303bea843d62e0576e92005ae12ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The banning of the pesticides'),
            ('B', 'The absolute liability of the enterprises for the hazardous industries'),
            ('C', 'The creation of the NGT'),
            ('D', 'The amendment of the Water Act')
           ) as v(label, option_text)
 where q.question_hash = '22a303bea843d62e0576e92005ae12ff'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'In the context of the Taj Mahal, which of the following is correct?',
    'The Taj Mahal is among the national cultural properties protected under the provisions of the Treasure Trove Act and the Indian Treasure and the Cultural Property Act.',
    'hard',
    'Standard Reference',
    null,
    '87b4cf8bcf8903264739daf0c48710c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '87b4cf8bcf8903264739daf0c48710c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a protected monument of the ASI'),
            ('B', 'It is a marine monument'),
            ('C', 'The Taj Mahal is in the list of the national cultural properties that is protected under the Indian treasure'),
            ('D', 'It is a World Heritage site of the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '87b4cf8bcf8903264739daf0c48710c2'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''wetlands'' of the world:',
    'The wetlands cover about 6 per cent of the land area of the earth and they store about 30 per cent of the world''s carbon and they are among the most productive of the ecosystems.',
    'hard',
    'Standard Reference',
    null,
    '88551f16ba69ad74d019543c7bd4b1d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '88551f16ba69ad74d019543c7bd4b1d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cover about 6 per cent of the land area and they store 30 per cent of the carbon'),
            ('B', 'Cover 1 per cent of the land and they store 10 per cent of the carbon'),
            ('C', 'Cover 20 per cent of the land'),
            ('D', 'They store 5 per cent of the carbon')
           ) as v(label, option_text)
 where q.question_hash = '88551f16ba69ad74d019543c7bd4b1d1'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''primary productivity'' of the ocean:',
    'The open ocean has a very low net primary productivity per unit area because of the limited nutrients, although its total is large, while the estuaries and the upwellings are highly productive.',
    'hard',
    'Standard Reference',
    null,
    '442678909ad9fa7617672cdb31485d3a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '442678909ad9fa7617672cdb31485d3a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Does not exist in the oceans'),
            ('B', 'Is limited to the coastal areas'),
            ('C', 'Is low and the open ocean accounts for most of the area with a low productivity'),
            ('D', 'Is the highest of all the ecosystems')
           ) as v(label, option_text)
 where q.question_hash = '442678909ad9fa7617672cdb31485d3a'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''detritus food chain'':',
    'The detritus food chain is the conduit for the energy flow to the decomposers and it is the major conduit in the terrestrial ecosystem.',
    'medium',
    'Standard Reference',
    null,
    'feab11f75ab32f2175124c32da482cfb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'feab11f75ab32f2175124c32da482cfb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the conduit of the energy in the grazing system'),
            ('B', 'Does not exist in the terrestrial ecosystem'),
            ('C', 'Is the only food chain in the aquatic ecosystem'),
            ('D', 'Is the conduit for the energy flow to the detritus and the decomposers')
           ) as v(label, option_text)
 where q.question_hash = 'feab11f75ab32f2175124c32da482cfb'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''functional redundancy'' in an ecosystem:',
    'The functional redundancy means that the more species there are, the greater is the resilience of the ecosystem, and it is a reason for the conservation of the biodiversity.',
    'hard',
    'Standard Reference',
    null,
    '42bfa68fd0a5694dd5c57ab6841ded60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '42bfa68fd0a5694dd5c57ab6841ded60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Means that the ecosystem is unstable'),
            ('B', 'Means that the more species, the greater the resilience of the ecosystem'),
            ('C', 'Means that the species are identical'),
            ('D', 'Means that the species are endangered')
           ) as v(label, option_text)
 where q.question_hash = '42bfa68fd0a5694dd5c57ab6841ded60'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''invasive species'' in India:',
    'The invasive alien species of India include the Lantana camara, the Prosopis juliflora, the Parthenium hysterophorus, the water hyacinth and the Eichhornia crassipes.',
    'medium',
    'Standard Reference',
    null,
    '23bdd0e331589f5fc49856af94e03d9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23bdd0e331589f5fc49856af94e03d9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are all native'),
            ('B', 'Include the Lantana camara, the Prosopis juliflora and the Parthenium hysterophorus'),
            ('C', 'Include only the eucalyptus'),
            ('D', 'Include only the water hyacinth')
           ) as v(label, option_text)
 where q.question_hash = '23bdd0e331589f5fc49856af94e03d9e'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The National Invasive Species Database is managed by:',
    'The National Invasive Species Database is managed by the Botanical Survey of India with the Botanical Gardens and the National Botanical Research Institute.',
    'hard',
    'Standard Reference',
    null,
    '0583dbf16aa5c94dceac9163c75a309e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0583dbf16aa5c94dceac9163c75a309e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Zoological Survey of India'),
            ('B', 'the ICAR'),
            ('C', 'the NITI Aayog'),
            ('D', 'the Botanical Survey of India')
           ) as v(label, option_text)
 where q.question_hash = '0583dbf16aa5c94dceac9163c75a309e'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Ecosystem services'' of the wetlands:',
    'The wetlands provide the ecosystem services of the water purification, the flood moderation, the carbon sequestration, the nutrient cycling and the biodiversity support.',
    'medium',
    'Standard Reference',
    null,
    '8de56e2cfbba424b12d5e479e1eab597'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8de56e2cfbba424b12d5e479e1eab597'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Include the water purification, the flood control, the carbon sequestration and the biodiversity'),
            ('B', 'Include only the recreation'),
            ('C', 'Include only the fishing'),
            ('D', 'Include only the timber')
           ) as v(label, option_text)
 where q.question_hash = '8de56e2cfbba424b12d5e479e1eab597'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Blue Carbon'' refers to:',
    'The blue carbon is the carbon captured and stored by the coastal and the marine ecosystems, the mangroves, the tidal salt marshes, the seagrasses and the coastal wetlands.',
    'medium',
    'Standard Reference',
    null,
    'a88c1b35f70aa79efc66a9c85df612ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a88c1b35f70aa79efc66a9c85df612ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The carbon dioxide in the atmosphere'),
            ('B', 'The carbon in the soil of the farms'),
            ('C', 'The carbon captured and stored by the coastal ecosystems like the mangroves, the salt marshes and the seagrasses'),
            ('D', 'The carbon in the fossil fuels')
           ) as v(label, option_text)
 where q.question_hash = 'a88c1b35f70aa79efc66a9c85df612ca'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The blue carbon is:',
    'The blue carbon is the carbon sequestered by the mangroves, the seagrasses and the salt marshes, and the Sundarban is a prime example of it.',
    'medium',
    'Standard Reference',
    null,
    '01114648c9e4ae7fff393a63602e9c9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '01114648c9e4ae7fff393a63602e9c9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the carbon sequestered by the mangroves and the seagrasses'),
            ('B', 'the carbon of the fossil fuels'),
            ('C', 'the carbon in the atmosphere'),
            ('D', 'the carbon in the soil')
           ) as v(label, option_text)
 where q.question_hash = '01114648c9e4ae7fff393a63602e9c9d'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''ecological footprint'' of a country measures:',
    'The ecological footprint measures the area of the earth required to sustain a population with its consumption and the waste, and it is the measure of the human impact on the nature.',
    'medium',
    'Standard Reference',
    null,
    '06cdb4fb968cc7514e5f68a78159ebc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '06cdb4fb968cc7514e5f68a78159ebc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The size of the country'),
            ('B', 'The carbon emission'),
            ('C', 'The biodiversity of the country'),
            ('D', 'The area of the earth required to sustain its population')
           ) as v(label, option_text)
 where q.question_hash = '06cdb4fb968cc7514e5f68a78159ebc1'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Earth Summit of 1992 in Rio was:',
    'The Earth Summit of 1992 in Rio de Janeiro, the largest of the three summits, produced the CBD, the Agenda 21 and the UNFCCC.',
    'medium',
    'Standard Reference',
    null,
    'bbb06f53b2148a107a8ac294d7fe1a97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bbb06f53b2148a107a8ac294d7fe1a97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Durban'),
            ('B', 'the first of the three summits and it led to the CBD and the Agenda 21'),
            ('C', 'the largest of the three summits'),
            ('D', 'in Johannesburg')
           ) as v(label, option_text)
 where q.question_hash = 'bbb06f53b2148a107a8ac294d7fe1a97'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Johannesburg Summit'' of 2002:',
    'The World Summit on the Sustainable Development of 2002 in Johannesburg produced the Johannesburg Plan of Implementation and the Johannesburg Declaration on the sustainable development.',
    'medium',
    'Standard Reference',
    null,
    'dc63589475f683c45e4c9ad18900472a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc63589475f683c45e4c9ad18900472a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the Rio Summit'),
            ('B', 'It was the Ramsar COP'),
            ('C', 'Was the World Summit on the Sustainable Development and it produced the Johannesburg Plan of Implementation'),
            ('D', 'It was the COP of the UNFCCC')
           ) as v(label, option_text)
 where q.question_hash = 'dc63589475f683c45e4c9ad18900472a'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Rio+20'' of 2012:',
    'The Rio+20 of 2012 had the theme of the green economy in the context of the sustainable development and the Millennium Development Goals.',
    'hard',
    'Standard Reference',
    null,
    '345eba98d8535d69bcf5204e6a04a038'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '345eba98d8535d69bcf5204e6a04a038'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was the Ramsar COP'),
            ('B', 'Was the conference of the sustainable development with the theme of the green economy'),
            ('C', 'It was the COP of the biodiversity'),
            ('D', 'It was the UNFCCC')
           ) as v(label, option_text)
 where q.question_hash = '345eba98d8535d69bcf5204e6a04a038'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Millennium Development Goals of 2000 had:',
    'The eight Millennium Development Goals, adopted in 2000 with the 2015 target, were superseded by the 17 Sustainable Development Goals of 2015.',
    'medium',
    'Standard Reference',
    null,
    '4fd16482eb2134e845739a15987f3369'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4fd16482eb2134e845739a15987f3369'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the outcome of the Rio Summit'),
            ('B', 'adopted in 2015'),
            ('C', 'the eight goals with the 2015 target'),
            ('D', 'the 17 goals')
           ) as v(label, option_text)
 where q.question_hash = '4fd16482eb2134e845739a15987f3369'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'Which of the following statements regarding the Agenda 21 is correct?',
    'The Agenda 21 is the action programme of the Rio Summit and it has 38 chapters, with the chapters of the poverty, the population, the human settlements, the industry and the conservation.',
    'hard',
    'Standard Reference',
    null,
    '1d8b27dd3d1dbe53c4f58df62eb072a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d8b27dd3d1dbe53c4f58df62eb072a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Agenda 21 is the action programme of the Rio Summit for the sustainable development'),
            ('B', 'It is a trade agreement'),
            ('C', 'It is the Montreal Protocol'),
            ('D', 'It is a fisheries convention')
           ) as v(label, option_text)
 where q.question_hash = '1d8b27dd3d1dbe53c4f58df62eb072a0'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'Consider the following statements. Which of them is correct with regard to the WCED?',
    'The World Commission on Environment and Development, chaired by the Gro Harlem Brundtland, produced the Brundtland Report of 1987 with the definition of the sustainable development.',
    'medium',
    'Standard Reference',
    null,
    '805087818ccaaf8ecb84e1693f4788eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '805087818ccaaf8ecb84e1693f4788eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It produced the Agenda 21'),
            ('B', 'It produced the Earth Summit'),
            ('C', 'It produced the Rio Declaration'),
            ('D', 'The World Commission on Environment and Development produced the Brundtland Report of 1987')
           ) as v(label, option_text)
 where q.question_hash = '805087818ccaaf8ecb84e1693f4788eb'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''IPBES'' of the Global Assessment:',
    'The Intergovernmental Science-Policy Platform on Biodiversity and Ecosystem Services published the first global assessment of the biodiversity and the ecosystem services in 2019.',
    'hard',
    'Standard Reference',
    null,
    'b67dba6304618163e28e256376979168'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b67dba6304618163e28e256376979168'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a development bank'),
            ('B', 'It is the body of the CITES'),
            ('C', 'The IPBES published the first global assessment of the biodiversity and the ecosystem services in 2019'),
            ('D', 'It is the successor of the GEF')
           ) as v(label, option_text)
 where q.question_hash = 'b67dba6304618163e28e256376979168'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Convention on the Conservation of the Migratory Species'':',
    'The CMS has the four memoranda of the Parties on the waterbirds, the seals, the African elephants and the bats.',
    'hard',
    'Standard Reference',
    null,
    '98eb14ce233a007835cfa9e44ce538a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '98eb14ce233a007835cfa9e44ce538a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has six memoranda'),
            ('B', 'It has four memoranda on the waterbirds, the seals, the African elephants and the bats'),
            ('C', 'It has two memoranda'),
            ('D', 'It has no memoranda')
           ) as v(label, option_text)
 where q.question_hash = '98eb14ce233a007835cfa9e44ce538a8'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Vienna Convention is:',
    'The Vienna Convention of 1985 is the framework convention for the protection of the ozone and the Montreal Protocol of 1987 is the protocol under it.',
    'medium',
    'Standard Reference',
    null,
    '1c80f9b14b3d100a7a08c5e08f270966'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c80f9b14b3d100a7a08c5e08f270966'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the framework of the ozone layer protection and the Montreal Protocol is under it'),
            ('B', 'the convention of the climate change'),
            ('C', 'the convention of the biodiversity'),
            ('D', 'the convention of the seas')
           ) as v(label, option_text)
 where q.question_hash = '1c80f9b14b3d100a7a08c5e08f270966'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The UNFCCC of 1992 is:',
    'The United Nations Framework Convention on Climate Change of 1992 is the framework and the Kyoto Protocol of 1997 and the Paris Agreement of 2015 are under it.',
    'medium',
    'Standard Reference',
    null,
    '4a09da9d7bb4c913a80bcc5a3372d929'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4a09da9d7bb4c913a80bcc5a3372d929'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ozone convention'),
            ('B', 'the biodiversity convention'),
            ('C', 'a trade agreement'),
            ('D', 'the framework convention and the Paris Agreement of 2015 is under it')
           ) as v(label, option_text)
 where q.question_hash = '4a09da9d7bb4c913a80bcc5a3372d929'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'In the context of the CBD, which of the following is correct?',
    'The Convention on Biological Diversity was signed in 1992 and it has the Cartagena Protocol on the biosafety of 2000 and the Nagoya Protocol on the access and the benefit sharing of 2010.',
    'medium',
    'Standard Reference',
    null,
    '0f0a756deccd07f929e6d7a461434f39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f0a756deccd07f929e6d7a461434f39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CBD was signed in 1992 and it has the Cartagena and the Nagoya protocols'),
            ('B', 'It was signed in 1972'),
            ('C', 'It has no protocols'),
            ('D', 'It was signed in 2002')
           ) as v(label, option_text)
 where q.question_hash = '0f0a756deccd07f929e6d7a461434f39'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Basel Convention'' is concerned with:',
    'The Basel Convention on the Control of the Transboundary Movements of Hazardous Wastes and their Disposal was signed in 1989 and it has the Ban Amendment of 1995.',
    'medium',
    'Standard Reference',
    null,
    'c6f44357fd1d1daa6081044f431e865c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c6f44357fd1d1daa6081044f431e865c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The marine pollution'),
            ('B', 'The trade of the endangered species'),
            ('C', 'The transboundary movement of the hazardous wastes and their disposal'),
            ('D', 'The ozone layer')
           ) as v(label, option_text)
 where q.question_hash = 'c6f44357fd1d1daa6081044f431e865c'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Stockholm Convention'' of 2001 is concerned with:',
    'The Stockholm Convention on the Persistent Organic Pollutants was signed in 2001 and it restricts the production and the use of the twelve dirty dozen pollutants.',
    'medium',
    'Standard Reference',
    null,
    'f984f8646fdcd7e5f55d3bc85190d8f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f984f8646fdcd7e5f55d3bc85190d8f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ozone layer'),
            ('B', 'The greenhouse gases'),
            ('C', 'The marine pollution'),
            ('D', 'The persistent organic pollutants')
           ) as v(label, option_text)
 where q.question_hash = 'f984f8646fdcd7e5f55d3bc85190d8f0'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Rotterdam Convention is:',
    'The Rotterdam Convention on the Prior Informed Consent Procedure for the Trade of the Hazardous Chemicals was signed in 1998.',
    'hard',
    'Standard Reference',
    null,
    'cebbbde1d79cdc5e6bbaf7a0ee3c4842'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cebbbde1d79cdc5e6bbaf7a0ee3c4842'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the biodiversity convention'),
            ('B', 'the prior informed consent procedure for the trade of the hazardous chemicals'),
            ('C', 'the ozone convention'),
            ('D', 'the marine pollution convention')
           ) as v(label, option_text)
 where q.question_hash = 'cebbbde1d79cdc5e6bbaf7a0ee3c4842'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Minamata Convention of 1989 is:',
    'The Minamata Convention on Mercury, signed in 1989, is the global treaty on the mercury and it is the successor of the Minamata disease.',
    'medium',
    'Standard Reference',
    null,
    '552bb1c16ae1026de90d4e22ec152974'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '552bb1c16ae1026de90d4e22ec152974'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the convention of the lead'),
            ('B', 'the convention of the cadmium'),
            ('C', 'the convention of the radioactive waste'),
            ('D', 'the convention on the mercury')
           ) as v(label, option_text)
 where q.question_hash = '552bb1c16ae1026de90d4e22ec152974'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Cartagena Convention of 1983 is:',
    'The Cartagena Convention of 1983 deals with the protection and the preservation of the marine environment and the protocols of 1995 and the 2012 Protocol on the pollution are under it.',
    'hard',
    'Standard Reference',
    null,
    'e9d265a4127eed27a75e2fc26db0fede'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9d265a4127eed27a75e2fc26db0fede'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the convention on the hazardous waste'),
            ('B', 'the convention on the protection and the preservation of the marine environment'),
            ('C', 'the convention on the biodiversity'),
            ('D', 'the convention on the ozone')
           ) as v(label, option_text)
 where q.question_hash = 'e9d265a4127eed27a75e2fc26db0fede'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Convention on the Conservation of the European Wildlife and the Natural Habitats'' (Bern Convention):',
    'The Bern Convention of 1979 is the European conservation convention and India is a party to it.',
    'hard',
    'Standard Reference',
    null,
    '04bffbbdda305447fe6a3ca2f3920ae0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '04bffbbdda305447fe6a3ca2f3920ae0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the CITES'),
            ('B', 'It is the Vienna Convention'),
            ('C', 'Was signed in 1979 and it is the European conservation convention'),
            ('D', 'It is the Ramsar Convention')
           ) as v(label, option_text)
 where q.question_hash = '04bffbbdda305447fe6a3ca2f3920ae0'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Bonn Convention of 1979 is:',
    'The Bonn Convention of 1979 is the one for the migratory species and it has the four memoranda and the associated instruments.',
    'medium',
    'Standard Reference',
    null,
    'a888a6baf4fffe36789ce7939c416f18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a888a6baf4fffe36789ce7939c416f18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the migratory species and India is a party'),
            ('B', 'the Ramsar Convention'),
            ('C', 'the CITES'),
            ('D', 'the Basel Convention')
           ) as v(label, option_text)
 where q.question_hash = 'a888a6baf4fffe36789ce7939c416f18'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The CITES has the three appendices and it was:',
    'The Convention on International Trade in Endangered Species was signed in 1973 and it has the three appendices with the increasing levels of the restrictions.',
    'medium',
    'Standard Reference',
    null,
    '860bee4b5139c743d3d98ba809fe88c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '860bee4b5139c743d3d98ba809fe88c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'signed in 1950'),
            ('B', 'the Ramsar Convention'),
            ('C', 'signed in 1973'),
            ('D', 'two appendices')
           ) as v(label, option_text)
 where q.question_hash = '860bee4b5139c743d3d98ba809fe88c8'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''International Treaty on Plant Genetic Resources'':',
    'The International Treaty on Plant Genetic Resources was adopted in 2001 and it provides for the multilateral access and the benefit sharing of the plant genetic resources.',
    'hard',
    'Standard Reference',
    null,
    'e3ebddd50bab8b8ff4a93db59389aac3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e3ebddd50bab8b8ff4a93db59389aac3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was adopted in 2001 and India is a party'),
            ('B', 'Was adopted in 1983'),
            ('C', 'Is a Ramsar instrument'),
            ('D', 'Was adopted in 1996')
           ) as v(label, option_text)
 where q.question_hash = 'e3ebddd50bab8b8ff4a93db59389aac3'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The Ramsar Convention is:',
    'The Ramsar Convention, signed in 1971, is the framework for the conservation and the wise use of the wetlands and their resources.',
    'easy',
    'Standard Reference',
    null,
    'f54b8f8528916efcd5c95ab5fb93f042'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f54b8f8528916efcd5c95ab5fb93f042'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about the hazardous waste'),
            ('B', 'about the ozone'),
            ('C', 'about the migratory species'),
            ('D', 'about the wetlands of the international importance and it was signed in 1971')
           ) as v(label, option_text)
 where q.question_hash = 'f54b8f8528916efcd5c95ab5fb93f042'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'Lists the Ramsar sites where the ecological characteristics have:',
    'The Montreux Record lists the Ramsar sites where the ecological characteristics have changed or are likely to change, and where the timely action is needed.',
    'medium',
    'Standard Reference',
    null,
    'ce76219ea4fe48a1b629f99fc04994ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ce76219ea4fe48a1b629f99fc04994ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the list of the World Heritage sites in danger'),
            ('B', 'changed'),
            ('C', 'lists the sites of the World Heritage'),
            ('D', 'the list of the biosphere reserves')
           ) as v(label, option_text)
 where q.question_hash = 'ce76219ea4fe48a1b629f99fc04994ff'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Mahatma Gandhi National Clean Water Mission was:',
    'The National Rural Drinking Water Mission was renamed the Jal Jeevan Mission in 2019 with the aim of a functional tap connection to every rural household.',
    'hard',
    'Standard Reference',
    2019,
    'b0ff03525a9d3a4e7606da95fb018b71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b0ff03525a9d3a4e7606da95fb018b71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'renamed the Swachh Bharat'),
            ('B', 'renamed the Namami Gange'),
            ('C', 'renamed the POSHAN'),
            ('D', 'renamed the Jal Jeevan Mission in 2019')
           ) as v(label, option_text)
 where q.question_hash = 'b0ff03525a9d3a4e7606da95fb018b71'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Namami Gange programme was launched in 2009 and the NGRBA is:',
    'The Namami Gange programme was launched in June 2009 and the National Ganga River Basin Authority is the apex body for the planning and the coordination.',
    'medium',
    'Standard Reference',
    2009,
    '889feee9cacf85033f65ece779879122'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '889feee9cacf85033f65ece779879122'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 2019'),
            ('B', 'the apex body'),
            ('C', 'launched in 1991'),
            ('D', 'launched in 2014')
           ) as v(label, option_text)
 where q.question_hash = '889feee9cacf85033f65ece779879122'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'National River Conservation Plan is:',
    'The National River Conservation Plan of 1995, the River Action Plan of the National Ganga River Basin Authority, is the programme of the conservation of the rivers.',
    'medium',
    'Standard Reference',
    null,
    'd01a01de99c127c535954df1e07dc362'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd01a01de99c127c535954df1e07dc362'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the programme of the river conservation and the restoration with the National River Conservation Plan of 1995'),
            ('B', 'a scheme of the irrigation'),
            ('C', 'a fisheries programme'),
            ('D', 'a forest programme')
           ) as v(label, option_text)
 where q.question_hash = 'd01a01de99c127c535954df1e07dc362'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Central Water Commission is:',
    'The Central Water Commission, constituted in 1951, is the apex organisation for the water resources and it is under the Ministry of Jal Shakti.',
    'medium',
    'Standard Reference',
    null,
    '1414c43ef995803b8e71f04a249e348a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1414c43ef995803b8e71f04a249e348a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a private body'),
            ('B', 'a state body'),
            ('C', 'the apex body of the water resources and it was set up in 1951'),
            ('D', 'set up in 1975')
           ) as v(label, option_text)
 where q.question_hash = '1414c43ef995803b8e71f04a249e348a'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'It was constituted in 1953 under the Electricity Act and it is:',
    'The Central Electricity Authority, constituted in 1953 under the Electricity Act, is the apex body for the planning, the promotion and the coordination of the power sector.',
    'hard',
    'Standard Reference',
    null,
    '36bf276675c651fbf7149d5e3d51d82c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '36bf276675c651fbf7149d5e3d51d82c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a private body'),
            ('B', 'set up in 2003'),
            ('C', 'the apex body of the power sector'),
            ('D', 'set up in 1991')
           ) as v(label, option_text)
 where q.question_hash = '36bf276675c651fbf7149d5e3d51d82c'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Bureau of Energy Efficiency was:',
    'The Bureau of Energy Efficiency was set up under the Energy Conservation Act of 2001 with the objective of the energy efficiency and the conservation labelling.',
    'medium',
    'Standard Reference',
    null,
    'd32fc7e71a9790d25960f98455a1a4bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd32fc7e71a9790d25960f98455a1a4bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up under the Energy Conservation Act of 2001'),
            ('B', 'set up in 1991'),
            ('C', 'a state body'),
            ('D', 'set up in 2015')
           ) as v(label, option_text)
 where q.question_hash = 'd32fc7e71a9790d25960f98455a1a4bd'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Export Credit Guarantee Corporation provides:',
    'The Export Credit Guarantee Corporation provides the credit insurance and the risk cover to the Indian exporters and the ECGC is the apex for the export credit insurance.',
    'medium',
    'Standard Reference',
    null,
    '7f575105921ee2a4b0ddde542ca1fcbd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7f575105921ee2a4b0ddde542ca1fcbd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the commodity exchange'),
            ('B', 'the financial regulator'),
            ('C', 'the Export Promotion Bureau'),
            ('D', 'the insurance for the Indian exporters')
           ) as v(label, option_text)
 where q.question_hash = '7f575105921ee2a4b0ddde542ca1fcbd'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Which of the following statements regarding the CERT-In is correct?',
    'The Indian Computer Emergency Response Team, established in 2004 under the MeitY, is the national agency for the cyber security incidents.',
    'medium',
    'Standard Reference',
    null,
    '0154fce55fd4e3d5c82e1719806c8473'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0154fce55fd4e3d5c82e1719806c8473'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was established in 2015'),
            ('B', 'It is the national agency for the cyber security and it was established in 2004'),
            ('C', 'It was established in 1991'),
            ('D', 'It is a private body')
           ) as v(label, option_text)
 where q.question_hash = '0154fce55fd4e3d5c82e1719806c8473'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Cyber Security Policy'' of 2012:',
    'The National Cyber Security Policy of 2012 was the first comprehensive policy framework of India and it was superseded by the 2020 policy.',
    'hard',
    'Standard Reference',
    null,
    'cf9545ac92eb82eb2c12d5e5ac57b71f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cf9545ac92eb82eb2c12d5e5ac57b71f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the first comprehensive cyber security policy of India and it was superseded in 2020'),
            ('B', 'It is of 2020'),
            ('C', 'It is of 2005'),
            ('D', 'There is no policy')
           ) as v(label, option_text)
 where q.question_hash = 'cf9545ac92eb82eb2c12d5e5ac57b71f'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Wildlife Crime Control Bureau'':',
    'The Wildlife Crime Control Bureau, a statutory body under the Wildlife Protection Act, is under the Ministry of Environment with the member states of the police.',
    'medium',
    'Standard Reference',
    null,
    '465e46f913a7e8a806516cdee197b65c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '465e46f913a7e8a806516cdee197b65c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is under the Ministry of Home Affairs alone'),
            ('B', 'Is a statutory body of the Ministry of Environment with the state police'),
            ('C', 'Is a private body'),
            ('D', 'Is a UN agency')
           ) as v(label, option_text)
 where q.question_hash = '465e46f913a7e8a806516cdee197b65c'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Forest and Environment Development Board'':',
    'The National Forest and Environment Development Board is the apex body for the forests and the environment of the Andaman and the Nicobar Islands.',
    'hard',
    'Standard Reference',
    null,
    '0b59099a78b6d0b400785e66ab3bb372'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0b59099a78b6d0b400785e66ab3bb372'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a state body'),
            ('B', 'It is the ASI'),
            ('C', 'Is the apex body of the forest and the environment in the Andaman and the Nicobar'),
            ('D', 'It is a UN agency')
           ) as v(label, option_text)
 where q.question_hash = '0b59099a78b6d0b400785e66ab3bb372'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'National Green Development Project is:',
    'The National Green Development Project is the programme of the afforestation of the degraded forests and the greening of the urban and the industrial areas.',
    'hard',
    'Standard Reference',
    null,
    'c91a1414e5012f0bfc0e1f24d8296278'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c91a1414e5012f0bfc0e1f24d8296278'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a hydropower project'),
            ('B', 'a mangrove project'),
            ('C', 'a wildlife translocation project'),
            ('D', 'the project of the afforestation of the degraded forests in the country')
           ) as v(label, option_text)
 where q.question_hash = 'c91a1414e5012f0bfc0e1f24d8296278'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Compensation to the Project Elephant'':',
    'The Compensation to the Project Elephant scheme supports the human elephant conflict mitigation, the habitat management and the welfare of the elephants and the ex-servicemen.',
    'medium',
    'Standard Reference',
    null,
    '3a7bb372e998443ea5604c8b639c0619'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3a7bb372e998443ea5604c8b639c0619'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme of the wildlife tourism'),
            ('B', 'It is a scheme of the forest produce'),
            ('C', 'Is the scheme of the funds for the human elephant conflict and the habitat and the welfare of the elephants'),
            ('D', 'It is a scheme of the tribal welfare')
           ) as v(label, option_text)
 where q.question_hash = '3a7bb372e998443ea5604c8b639c0619'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Project Vulture'' of India:',
    'The Project Vulture is the restoration of the vultures in India with the Nepal and the Bhutan, and it was launched in the 1990s after the diclofenac crisis.',
    'medium',
    'Standard Reference',
    null,
    '3796b773f6b20a5c40694a651309fd5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3796b773f6b20a5c40694a651309fd5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the release of the tigers'),
            ('B', 'It is the conservation of the otters'),
            ('C', 'It is the crocodile conservation'),
            ('D', 'Is the restoration of the vultures with the Nepal and the Bhutan')
           ) as v(label, option_text)
 where q.question_hash = '3796b773f6b20a5c40694a651309fd5f'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Biodiversity Register'' of India:',
    'The Biodiversity Register of India, an initiative of the MoEFCC, is the online portal for the people and the institutions to document the species of the country.',
    'hard',
    'Standard Reference',
    null,
    '2790130ef686559b7b0051cb4e0ba0bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2790130ef686559b7b0051cb4e0ba0bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the online portal of the people and the institutions for the documentation of the species'),
            ('B', 'It is the list of the protected areas'),
            ('C', 'It is the red data book'),
            ('D', 'It is the pollution inventory')
           ) as v(label, option_text)
 where q.question_hash = '2790130ef686559b7b0051cb4e0ba0bf'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Botanical Garden of the Lucknow and the National Botanic Garden of the Mohangarh are:',
    'The National Botanical Garden of the Lucknow and the National Botanic Garden of the Mohangarh are the ex-situ conservation centres of the ex-situ conservation of the plants.',
    'hard',
    'Standard Reference',
    null,
    '51419edecb517cb9fb0a98f6c3d97fcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '51419edecb517cb9fb0a98f6c3d97fcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the seed banks'),
            ('B', 'the ex-situ conservation centres'),
            ('C', 'the wildlife sanctuaries'),
            ('D', 'the national parks')
           ) as v(label, option_text)
 where q.question_hash = '51419edecb517cb9fb0a98f6c3d97fcc'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Herbarium of the Lucknow and the Central National Herbarium of the Bhowali are:',
    'The National Herbarium of the Lucknow and the Central National Herbarium of the Bhowali in the Dehradun hold the botanical collections of the country.',
    'hard',
    'Standard Reference',
    null,
    'f3a12d9d5dd4bff2a55c8c9cee1664f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f3a12d9d5dd4bff2a55c8c9cee1664f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the seed banks'),
            ('B', 'the national parks'),
            ('C', 'the botanical museums'),
            ('D', 'the wildlife sanctuaries')
           ) as v(label, option_text)
 where q.question_hash = 'f3a12d9d5dd4bff2a55c8c9cee1664f9'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'National Institute of Oceanography is:',
    'The National Institute of Oceanography at Dona Paula in Goa is the premier ocean research institute of the country and it is under the Ministry of Earth Sciences.',
    'medium',
    'Standard Reference',
    null,
    '86cc1126a15c7b8154a8f8a85e0b5752'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '86cc1126a15c7b8154a8f8a85e0b5752'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Kochi'),
            ('B', 'the premier ocean research institute of the India at Goa'),
            ('C', 'in Chennai'),
            ('D', 'a private institute')
           ) as v(label, option_text)
 where q.question_hash = '86cc1126a15c7b8154a8f8a85e0b5752'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Geological Survey of India'' is:',
    'The Geological Survey of India, founded in 1851, is the premier national organisation of the earth sciences and its headquarters are at Kolkata.',
    'medium',
    'Standard Reference',
    null,
    'd4ea2803e48a596066484017815da4d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd4ea2803e48a596066484017815da4d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The premier national organisation of the earth sciences with the headquarters at Kolkata'),
            ('B', 'A private company'),
            ('C', 'A UN agency'),
            ('D', 'A state department')
           ) as v(label, option_text)
 where q.question_hash = 'd4ea2803e48a596066484017815da4d6'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Forest Survey of India'' was established in:',
    'The Forest Survey of India, a national organisation under the Ministry of Environment, was established in 1981 and it publishes the India State of Forest Report biennially.',
    'medium',
    'Standard Reference',
    null,
    'bff2d6149b98a4f5e9e979a498761285'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bff2d6149b98a4f5e9e979a498761285'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1985'),
            ('B', '1973'),
            ('C', '1991'),
            ('D', '1981')
           ) as v(label, option_text)
 where q.question_hash = 'bff2d6149b98a4f5e9e979a498761285'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Zoological Survey of India'' was established in:',
    'The Zoological Survey of India, established in 1916, is the premier organisation of the zoological studies and it publishes the Red Data Book.',
    'medium',
    'Standard Reference',
    null,
    'a0a0ef48d456f60e7e0e5f5e4ad9f72d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a0a0ef48d456f60e7e0e5f5e4ad9f72d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1851'),
            ('B', '1930'),
            ('C', '1951'),
            ('D', '1916')
           ) as v(label, option_text)
 where q.question_hash = 'a0a0ef48d456f60e7e0e5f5e4ad9f72d'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Botanical Survey of India'' was established in:',
    'The Botanical Survey of India, founded in 1890, is the apex organisation of the botanical studies and it maintains the herbaria and the botanical gardens.',
    'medium',
    'Standard Reference',
    null,
    '1df4b03b92158076776224e0828c7060'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1df4b03b92158076776224e0828c7060'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1916'),
            ('B', '1981'),
            ('C', '1890'),
            ('D', '1851')
           ) as v(label, option_text)
 where q.question_hash = '1df4b03b92158076776224e0828c7060'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Which of the following is correct in the case of the ICAR?',
    'The ICAR was established in April 1929 as the Imperial Council of Agricultural Research and it became the ICAR in 1946.',
    'medium',
    'Standard Reference',
    null,
    '3a67e0f7adca76330d251c401cba8456'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3a67e0f7adca76330d251c401cba8456'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a private body'),
            ('B', 'It was established in 1929 as the Imperial Council of Agricultural Research'),
            ('C', 'It was established in 1947'),
            ('D', 'It is under the Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '3a67e0f7adca76330d251c401cba8456'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Research Development Corporation'' is:',
    'The National Research Development Corporation, a public sector undertaking under the Department of Science and Technology, is the main organisation for the technology transfer.',
    'hard',
    'Standard Reference',
    null,
    'e6c59adf94b9c43d611ce5dc2a45a3c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e6c59adf94b9c43d611ce5dc2a45a3c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A public sector undertaking for the technology transfer with the headquarters in New Delhi'),
            ('B', 'A private company'),
            ('C', 'A UN agency'),
            ('D', 'A state body')
           ) as v(label, option_text)
 where q.question_hash = 'e6c59adf94b9c43d611ce5dc2a45a3c1'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Environmental Protection Act is:',
    'The Environment Protection Act of 1986 is the umbrella law and the 1991 amendment inserted the EIA Notification and the public trust doctrine in the preamble.',
    'medium',
    'Standard Reference',
    null,
    'dd49317408b785aae124b8ed7a603b3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'dd49317408b785aae124b8ed7a603b3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the umbrella law and it was amended in 1991 with the EIA notification'),
            ('B', 'of 1974'),
            ('C', 'of 1981'),
            ('D', 'of 1986 only')
           ) as v(label, option_text)
 where q.question_hash = 'dd49317408b785aae124b8ed7a603b3c'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Forest Rights Act was:',
    'The Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act of 2006 was amended in 2021 to provide the 14 categories of the forest rights.',
    'medium',
    'Standard Reference',
    null,
    '1b9c2345d5186e0d83ffb80f5b1eacff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1b9c2345d5186e0d83ffb80f5b1eacff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'enacted in 1927'),
            ('B', 'enacted in 1953'),
            ('C', 'enacted in 2006 and it was amended in 2021 with the 14 forest rights'),
            ('D', 'enacted in 1980')
           ) as v(label, option_text)
 where q.question_hash = '1b9c2345d5186e0d83ffb80f5b1eacff'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The CAMPA Act of 2016 provided:',
    'The Compensatory Afforestation Fund Management and Planning Act of 2016 provided for the national and the state funds for the afforestation and the ecological restoration of the diverted forest lands.',
    'medium',
    'Standard Reference',
    null,
    'e18d6078e986de186dc9b691a733c1e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e18d6078e986de186dc9b691a733c1e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the forest rights act'),
            ('B', 'the wild life protection act'),
            ('C', 'the EIA notification'),
            ('D', 'for the funds for the afforestation and the ecological restoration')
           ) as v(label, option_text)
 where q.question_hash = 'e18d6078e986de186dc9b691a733c1e9'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'established in 2010 and it has:',
    'The National Green Tribunal was established in 2010 and it has the principal bench at Delhi with the other benches at five places.',
    'hard',
    'Standard Reference',
    null,
    '49d39031197ad2569910d7992c08ddb4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49d39031197ad2569910d7992c08ddb4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the powers of the High Court'),
            ('B', 'established in 2010 and it has a bench at each of the five places'),
            ('C', 'established in 1995'),
            ('D', 'in Delhi only')
           ) as v(label, option_text)
 where q.question_hash = '49d39031197ad2569910d7992c08ddb4'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Biodiversity Authority'' is chaired by:',
    'The National Biodiversity Authority is chaired by the Minister of State in the Ministry of Environment, Forest and Climate Change.',
    'medium',
    'Standard Reference',
    null,
    '31ebf014bae0066a2d07718a0006dd61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31ebf014bae0066a2d07718a0006dd61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The President'),
            ('B', 'The Minister of State in the Ministry of Environment'),
            ('C', 'The Prime Minister'),
            ('D', 'The Chief Justice')
           ) as v(label, option_text)
 where q.question_hash = '31ebf014bae0066a2d07718a0006dd61'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Central Zoo Authority'' is:',
    'The Central Zoo Authority, constituted in 1993, is the apex body for the administration of the zoos and the aquariums and it is under the Ministry of Environment.',
    'medium',
    'Standard Reference',
    null,
    'ceee56b7bce313f063670909f40d9b9f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ceee56b7bce313f063670909f40d9b9f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A state body'),
            ('B', 'A UN agency'),
            ('C', 'The apex body of the zoos and the aquariums of the country'),
            ('D', 'A private body')
           ) as v(label, option_text)
 where q.question_hash = 'ceee56b7bce313f063670909f40d9b9f'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'In the context of the National Marine Fisheries, which of the following is correct?',
    'The National Marine Fisheries Research Institute is at Kochi and it is the premier research institute of the marine fisheries of the country.',
    'hard',
    'Standard Reference',
    null,
    'ae8c8e97dbc4d0aaeca540a300f4d443'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ae8c8e97dbc4d0aaeca540a300f4d443'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is at Goa'),
            ('B', 'It is at Chennai'),
            ('C', 'It is at Mumbai'),
            ('D', 'The National Marine Fisheries Research Institute is at Kochi')
           ) as v(label, option_text)
 where q.question_hash = 'ae8c8e97dbc4d0aaeca540a300f4d443'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Indian Council of Agricultural Research is:',
    'The ICAR, with the headquarters at New Delhi, is the apex organisation of the agricultural research with more than 60 agricultural universities under it.',
    'medium',
    'Standard Reference',
    null,
    '8c94a9f6ec714ee6c8893295813a156d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c94a9f6ec714ee6c8893295813a156d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the apex organisation of the agricultural research with the headquarters at New Delhi'),
            ('B', 'a private body'),
            ('C', 'under the Ministry of Finance'),
            ('D', 'a state body')
           ) as v(label, option_text)
 where q.question_hash = '8c94a9f6ec714ee6c8893295813a156d'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Fugitive Offenders Act of 2014 allows:',
    'The Fugitive Offenders Act of 2014 allows the Central government to extradite the wanted offenders from any foreign country and it has been amended in 2018.',
    'medium',
    'Standard Reference',
    null,
    '61a87f989f54c075fd1a0d539dea1cf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '61a87f989f54c075fd1a0d539dea1cf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about the cyber crime'),
            ('B', 'about the trafficking'),
            ('C', 'the extradition of the wanted offenders from the foreign countries'),
            ('D', 'about the money laundering')
           ) as v(label, option_text)
 where q.question_hash = '61a87f989f54c075fd1a0d539dea1cf9'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Noise Pollution (Regulation and Control) Rules of 2000 are:',
    'The Noise Pollution (Regulation and Control) Rules of 2000 prescribe the standards for the noise in the various zones for the industrial, the commercial and the residential areas.',
    'medium',
    'Standard Reference',
    null,
    '3a12b3d2f29b91f68d54f4cfa05626c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3a12b3d2f29b91f68d54f4cfa05626c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1981'),
            ('B', 'no rules'),
            ('C', 'of 2019'),
            ('D', 'the central rules')
           ) as v(label, option_text)
 where q.question_hash = '3a12b3d2f29b91f68d54f4cfa05626c8'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The E-waste (Management) Rules of 2022 have:',
    'The E-waste (Management) Rules of 2022 came into force on 1 April 2023 and they extended the producer responsibility to the twenty-one categories of the equipment with the centralised collection.',
    'medium',
    'Standard Reference',
    2022,
    '9154a208acb952a4c57026a9074eb950'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9154a208acb952a4c57026a9074eb950'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of 1998'),
            ('B', 'the producer responsibility and the centralised collection'),
            ('C', 'of 2011'),
            ('D', 'of 2016')
           ) as v(label, option_text)
 where q.question_hash = '9154a208acb952a4c57026a9074eb950'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'In the context of the Biomedical Waste, which of the following is correct?',
    'The Biomedical Waste Management Rules of 2016 replaced the 1998 rules and they prescribe the segregation, the collection, the transport and the treatment of the biomedical waste in the colour-coded bags.',
    'medium',
    'Standard Reference',
    2016,
    '1ac87ba17024575bd9d3598313c06069'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1ac87ba17024575bd9d3598313c06069'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Biomedical Waste Management Rules of 2016 replaced the 1998 rules'),
            ('B', 'The rules are of 1998'),
            ('C', 'There are no rules'),
            ('D', 'The rules are of 2005')
           ) as v(label, option_text)
 where q.question_hash = '1ac87ba17024575bd9d3598313c06069'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following is correct in the case of the Solid Waste?',
    'The Solid Waste Management Rules of 2016 and the Construction and Demolition Waste Management Rules of 2016 are the central rules of the waste management in the country.',
    'medium',
    'Standard Reference',
    2016,
    '0166d5a307cc5f573bf021b5945d9940'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0166d5a307cc5f573bf021b5945d9940'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rules are of 2000'),
            ('B', 'There are no rules'),
            ('C', 'The rules are of 1998'),
            ('D', 'The Solid Waste Management Rules of 2016 and the Construction and Demolition Waste Rules of 2016')
           ) as v(label, option_text)
 where q.question_hash = '0166d5a307cc5f573bf021b5945d9940'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Plastic Waste Management Rules'' of 2016:',
    'The Plastic Waste Management Rules of 2016 banned the manufacture, the import and the use of the identified single-use plastic items and the rules came into force on 1 July 2018.',
    'medium',
    'Standard Reference',
    2016,
    '8c48a05d8a31dc72f01c80558ea2d873'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c48a05d8a31dc72f01c80558ea2d873'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Banned the identified plastic items and the rules came into force in 2018'),
            ('B', 'Came into force in 2016'),
            ('C', 'Are of 2000'),
            ('D', 'Are of 2022')
           ) as v(label, option_text)
 where q.question_hash = '8c48a05d8a31dc72f01c80558ea2d873'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following is correct in the case of the extended producer responsibility?',
    'The Extended Producer Responsibility Guidelines of 2019 and the plastic packaging EPR of 2022 make the producers responsible for the end of the life of their products.',
    'medium',
    'Standard Reference',
    null,
    '6d3a25ec832681d0afe4ca8fe9faa829'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6d3a25ec832681d0afe4ca8fe9faa829'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The guidelines are of 2005'),
            ('B', 'The EPR Guidelines of 2019 and the plastic packaging EPR of 2022'),
            ('C', 'The guidelines are of 1998'),
            ('D', 'There is no EPR')
           ) as v(label, option_text)
 where q.question_hash = '6d3a25ec832681d0afe4ca8fe9faa829'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''National Solid Waste Management Policy'' of 2021:',
    'The National Solid Waste Management Policy of 2021 mandated the source segregation in the 3 bins, the legacy dumps remediation and the partnership of the informal sector.',
    'hard',
    'Standard Reference',
    2021,
    'ec833ff6105a1450811f05314e24e03d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ec833ff6105a1450811f05314e24e03d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It made the municipal solid waste mandatory only in the cities'),
            ('B', 'It has no source segregation'),
            ('C', 'Mandates the segregation at the source in the 3 bins and the legacy dumps remediation'),
            ('D', 'It banned the recycling')
           ) as v(label, option_text)
 where q.question_hash = 'ec833ff6105a1450811f05314e24e03d'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'In the context of the biogas, which of the following is correct?',
    'The biogas plants, the gobar gas plants, convert the organic waste into the biogas for the cooking and the slurry into the biofertiliser.',
    'medium',
    'Standard Reference',
    null,
    '7ab9537ada0a4e4d0a097900e3a0dac0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7ab9537ada0a4e4d0a097900e3a0dac0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the coal gas'),
            ('B', 'It is the natural gas'),
            ('C', 'It is the LPG'),
            ('D', 'The gobardhan and the gobar gas plants convert the organic waste to the biogas and the biofertiliser')
           ) as v(label, option_text)
 where q.question_hash = '7ab9537ada0a4e4d0a097900e3a0dac0'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The compost and the vermicompost are:',
    'The compost and the vermicompost are the organic manures and the Fertiliser (Control) Order of 2009 regulates the biofertilisers and the the compost the the the.',
    'medium',
    'Standard Reference',
    null,
    '3f92b9b3d4e60f3025ab318ce2d817cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3f92b9b3d4e60f3025ab318ce2d817cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the organic manures and the FCO of 2009 regulates the biofertilisers'),
            ('B', 'a chemical fertiliser'),
            ('C', 'a pesticide'),
            ('D', 'of 2015')
           ) as v(label, option_text)
 where q.question_hash = '3f92b9b3d4e60f3025ab318ce2d817cf'
on conflict (question_id, label) do nothing;

commit;
