-- =============================================================================
-- current_affairs_04.sql — current_affairs question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''SBM-U'' is implemented by:',
    'The Swachh Bharat Mission-U is implemented by the urban local bodies with the States providing the funding and the support, and the Centre is responsible for the guidelines, the funding and the monitoring.',
    'hard',
    'PIB',
    null,
    '9f891f90dd427a0dd6f52082612cc59a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f891f90dd427a0dd6f52082612cc59a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Housing and Urban Affairs directly'),
            ('B', 'the rural panchayats'),
            ('C', 'the Central Public Works Department'),
            ('D', 'the urban local bodies with the funding and the support of the States')
           ) as v(label, option_text)
 where q.question_hash = '9f891f90dd427a0dd6f52082612cc59a'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Jal Jeevan Mission'' requires the States to:',
    'Under the Jal Jeevan Mission every State has to certify the household water sources, monitor the water quality on a regular basis and ensure the 55 litres per capita per day of the prescribed quality at the household tap.',
    'medium',
    'PIB',
    null,
    'c0722084db2d3ba5996b726f499a9a67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c0722084db2d3ba5996b726f499a9a67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'certify the household water sources and the ongoing water quality monitoring'),
            ('B', 'build the dams in the villages'),
            ('C', 'privatise the water supply of the villages'),
            ('D', 'provide the piped water only in the schools')
           ) as v(label, option_text)
 where q.question_hash = 'c0722084db2d3ba5996b726f499a9a67'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Saksham Anganwadi and the Poshan 2.0:',
    'Saksham Anganwadi and Poshan 2.0 integrate the early childhood care and the education below six years with the nutrition for the pregnant women, the lactating mothers and the children, and it builds on the ICDS.',
    'hard',
    'PIB',
    null,
    '1e10862a5b70b503af8e06446fee76ac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1e10862a5b70b503af8e06446fee76ac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provide the early childhood care and the education of the children below six years and the nutrition to the pregnant women and the lactating mothers'),
            ('B', 'provide the free bus service to the school children'),
            ('C', 'provide the digital literacy to the women of the villages'),
            ('D', 'provide the primary healthcare in the rural areas')
           ) as v(label, option_text)
 where q.question_hash = '1e10862a5b70b503af8e06446fee76ac'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The ''Ayushman Arogya Mandir and the Ayushman Bharat:',
    'The Ayushman Bharat mission has two components, the Ayushman Arogya Mandir for the health and the wellness centres and the Ayushman Bharat PM-JAY for the cashless hospital cover of Rs 5 lakh a family.',
    'hard',
    'PIB',
    null,
    'c47229481be24456e42499166db60b67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c47229481be24456e42499166db60b67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ayushman Arogya Mandir is the hospital construction component'),
            ('B', 'the Ayushman Arogya Mandir is the health and wellness centre component of the Ayushman Bharat mission'),
            ('C', 'the Ayushman Arogya Mandir is the medical education component'),
            ('D', 'the Ayushman Arogya Mandir is the insurance component of the mission')
           ) as v(label, option_text)
 where q.question_hash = 'c47229481be24456e42499166db60b67'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''NITI Aayog'' has replaced the Planning Commission with a three-tier structure consisting of:',
    'The NITI Aayog works through a fifteen year vision document, a seven year strategy document and a three year action agenda, with a Governing Council that includes all the Chief Ministers and a Union Minister of State for Planning.',
    'hard',
    'NITI Aayog',
    null,
    'c587c23dd96436663eff102e2b1d9cb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c587c23dd96436663eff102e2b1d9cb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a vision, a mission and a vision implementation committee'),
            ('B', 'a five year plan, a ten year plan and a twenty year plan'),
            ('C', 'a national, state and district framework'),
            ('D', 'a vision, a strategy and an action agenda for fifteen, seven and three years respectively')
           ) as v(label, option_text)
 where q.question_hash = 'c587c23dd96436663eff102e2b1d9cb0'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Aspirational Districts Programme'' was launched with how many aspirational districts?',
    'The Aspirational Districts Programme was rolled out in 2021 with 112 districts selected on the basis of the number of deprived households, and the programme is executed with the convergence of the central and state schemes in the identified areas.',
    'hard',
    'NITI Aayog',
    null,
    '841deaf9e6236c738d73ebdcba828147'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '841deaf9e6236c738d73ebdcba828147'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '500'),
            ('B', '250'),
            ('C', '112'),
            ('D', '50')
           ) as v(label, option_text)
 where q.question_hash = '841deaf9e6236c738d73ebdcba828147'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Eleventh Five Year Plan'' (2007-12) was titled:',
    'The Eleventh Plan was titled ''Faster, Inclusive and Sustainable Development'' and it emphasised the reduction of the poverty, the employment generation, the universalisation of the elementary education and the women''s empowerment.',
    'easy',
    'Standard Reference',
    null,
    'fc5d832582d1af3d290f0b6d40f802d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fc5d832582d1af3d290f0b6d40f802d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Faster, Inclusive and Sustainable Growth'),
            ('B', 'Transforming India'),
            ('C', 'Faster Growth for All'),
            ('D', 'Faster, Inclusive and Sustainable Development')
           ) as v(label, option_text)
 where q.question_hash = 'fc5d832582d1af3d290f0b6d40f802d2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Amrit Kaal'' refers to:',
    'The Amrit Kaal, announced by the Prime Minister at the time of the 75th anniversary of independence in 2022, covers the period from 2022-23 to 2047-48 and is built around the ideas of development, heritage, cooperation and prosperity.',
    'easy',
    'PIB',
    null,
    'fcfa65356d8f0b1e7f4089d7ab950e82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fcfa65356d8f0b1e7f4089d7ab950e82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the period of the 15th Five Year Plan'),
            ('B', 'the period of the Fifteenth Finance Commission'),
            ('C', 'the 25 year period from 2022-23 to 2047-48 envisaged as the second phase of the developmental journey of India'),
            ('D', 'the centenary phase of the Indian National Congress')
           ) as v(label, option_text)
 where q.question_hash = 'fcfa65356d8f0b1e7f4089d7ab950e82'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Human Development Index'' is published by the United Nations Development Programme and measures:',
    'The HDI, published since 1990, combines the life expectancy at birth, the education index, based on the mean and expected years of schooling, and the log of the gross national income per capita at purchasing power parity.',
    'hard',
    'UNDP',
    null,
    'fdd40952fcd02d3079de5fe9ebbd19e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fdd40952fcd02d3079de5fe9ebbd19e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the political, economic and social participation of the citizens'),
            ('B', 'the life expectancy, the education index and the gross national income per capita'),
            ('C', 'the access to health care, education and sanitation alone'),
            ('D', 'the per capita income and the inequality in its distribution')
           ) as v(label, option_text)
 where q.question_hash = 'fdd40952fcd02d3079de5fe9ebbd19e1'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'Under the ''Global Multidimensional Poverty Index'', a person is classified as poor when the weighted deprivation score is:',
    'In the multidimensional poverty index the ten indicators are weighted equally, and a person is counted as poor when the weighted deprivation score is one-third or more, and a household is poor when a member is poor.',
    'hard',
    'UNDP',
    null,
    '33228d7b837c4029cefbf572715e8340'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '33228d7b837c4029cefbf572715e8340'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'one-third or more'),
            ('B', 'one-half or more'),
            ('C', 'one-fourth or more'),
            ('D', 'any positive score')
           ) as v(label, option_text)
 where q.question_hash = '33228d7b837c4029cefbf572715e8340'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Innovation Index'' ranks the economies on the basis of:',
    'The GII uses seven key pillars, namely the institutions, the human capital and the research, the infrastructure, the market efficiency, the business sophistication, the knowledge outputs and the creative outputs, and it also shows the strengths and the weaknesses of each economy.',
    'easy',
    'WIPO',
    null,
    '42951d33f25e11e8f75a731e144cd1e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '42951d33f25e11e8f75a731e144cd1e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the number of the start-ups registered in the country'),
            ('B', 'seven key pillars, including the human capital, the market efficiency and the business sophistication'),
            ('C', 'the number of the patents filed alone'),
            ('D', 'the spending on research and development only')
           ) as v(label, option_text)
 where q.question_hash = '42951d33f25e11e8f75a731e144cd1e5'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Environmental Performance Index'' is produced by:',
    'The EPI is published by the Yale Center for Environmental Law and Policy with the Center for International Earth Science Information Network at Columbia University, and it rates the countries on a range of environmental indicators.',
    'easy',
    'Yale University',
    null,
    '57be9a23cb10b2067e931a17c2a233bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '57be9a23cb10b2067e931a17c2a233bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the OECD and the European Environment Agency'),
            ('B', 'the World Resources Institute and the World Bank'),
            ('C', 'the Yale Center for Environmental Law and Policy and the Columbia University'),
            ('D', 'the United Nations Environment Programme alone')
           ) as v(label, option_text)
 where q.question_hash = '57be9a23cb10b2067e931a17c2a233bc'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Peace Index'' measures the national and the international levels of:',
    'The Global Peace Index of the Institute for Economics and Peace measures the national and the international levels of peace and the absence of violence, and it scores each country on the factors of the safety and the security, the ongoing conflict and the militarisation.',
    'medium',
    'Institute for Economics and Peace',
    null,
    'be0a18043fe7fba3f32c64c7675f334f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'be0a18043fe7fba3f32c64c7675f334f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the trade in the arms'),
            ('B', 'the military expenditure of the countries'),
            ('C', 'the number of the peacekeeping operations'),
            ('D', 'peace and the absence of violence, and the underlying factors of the safety and the security of the countries')
           ) as v(label, option_text)
 where q.question_hash = 'be0a18043fe7fba3f32c64c7675f334f'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Corruption Perceptions Index'' is based on:',
    'The CPI of Transparency International is compiled from the perceptions of the experts and the business community on the extent of the public sector corruption, and it is accompanied by the Control of Corruption Index.',
    'easy',
    'Transparency International',
    null,
    '208c784deab4b43c2596e157b184ff44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '208c784deab4b43c2596e157b184ff44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the perceptions of the experts and the business community on the public sector corruption'),
            ('B', 'the audited accounts of the government'),
            ('C', 'the number of the cases registered by the Lok Sabha'),
            ('D', 'the conviction rates of the anti-corruption courts')
           ) as v(label, option_text)
 where q.question_hash = '208c784deab4b43c2596e157b184ff44'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Rule of Law Index'' is published by:',
    'The Rule of Law Index of the World Justice Project measures the factors and constraints on the exercise of public power, and the project also publishes the Annual Report on the Rule of Law.',
    'easy',
    'Standard Reference',
    null,
    '92ce231f34abd4d6ce547bdb28753703'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '92ce231f34abd4d6ce547bdb28753703'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Economist Intelligence Unit'),
            ('B', 'the Freedom House'),
            ('C', 'the World Justice Project'),
            ('D', 'Transparency International')
           ) as v(label, option_text)
 where q.question_hash = '92ce231f34abd4d6ce547bdb28753703'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Democracy Index'' is produced by:',
    'The Democracy Index of the Economist Intelligence Unit uses five categories, namely electoral process and pluralism, functioning of the government, political participation, political culture and civil liberties.',
    'easy',
    'EIU',
    null,
    '24ee519276277f19bc80ddbd027db960'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '24ee519276277f19bc80ddbd027db960'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Freedom House'),
            ('B', 'the Bertelsmann Foundation'),
            ('C', 'the International IDEA'),
            ('D', 'the Economist Intelligence Unit')
           ) as v(label, option_text)
 where q.question_hash = '24ee519276277f19bc80ddbd027db960'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Press Freedom Index'' is published by:',
    'Reporters Without Borders publishes the World Press Freedom Index, and its annual report also carries the world ranking of the countries on the basis of the situation of the media and the freedom of journalists.',
    'easy',
    'RSF',
    null,
    '4f93f930fecc3f983255fdf4dc7d078f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4f93f930fecc3f983255fdf4dc7d078f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reporters Without Borders'),
            ('B', 'the World Press Institute'),
            ('C', 'the Committee to Protect Journalists'),
            ('D', 'the International Federation of Journalists')
           ) as v(label, option_text)
 where q.question_hash = '4f93f930fecc3f983255fdf4dc7d078f'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Hunger Index'' is produced by:',
    'The GHI is calculated by Concern Worldwide with the World Food Programme, and it ranks the countries on the four indicators of the undernourishment, the child wasting, the child stunting and the overweight prevalence.',
    'easy',
    'Concern Worldwide',
    null,
    'e9efc485625077510cd82f28656c3de6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e9efc485625077510cd82f28656c3de6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the OECD and the World Bank'),
            ('B', 'Concern Worldwide and the World Food Programme'),
            ('C', 'the World Bank and the FAO'),
            ('D', 'the IFAD and the WFP')
           ) as v(label, option_text)
 where q.question_hash = 'e9efc485625077510cd82f28656c3de6'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Happiness Report'' is produced by the:',
    'The World Happiness Report is produced by the Sustainable Development Solutions Network together with the World Happiness Forum, and it uses the Gallup World Poll data to rank the countries on the subjective well being.',
    'easy',
    'SDSN',
    null,
    '9eb663fe34370d2bdd4fe525e6a78a19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9eb663fe34370d2bdd4fe525e6a78a19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the World Economic Forum'),
            ('B', 'the OECD'),
            ('C', 'the World Values Survey Association'),
            ('D', 'the Sustainable Development Solutions Network and the World Happiness Forum')
           ) as v(label, option_text)
 where q.question_hash = '9eb663fe34370d2bdd4fe525e6a78a19'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Air Quality Report'' is published by:',
    'IQAir publishes the annual World Air Quality Report based on the data from the monitoring stations of more than 100 countries, and the report ranks both the countries and the cities and the most polluted places in the world.',
    'easy',
    'IQAir',
    null,
    'c83c9e0a051a5532a495be9e2d8e004c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c83c9e0a051a5532a495be9e2d8e004c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the World Bank'),
            ('B', 'IQAir'),
            ('C', 'the Centre for Science and Environment'),
            ('D', 'the World Meteorological Organization')
           ) as v(label, option_text)
 where q.question_hash = 'c83c9e0a051a5532a495be9e2d8e004c'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''SDG India Index'' of the NITI Aayog is prepared with the technical support of the:',
    'The SDG India Index is prepared by the NITI Aayog with the technical support of the Indian Statistical Institute, and it uses 16 pillars drawn from the seventeen Sustainable Development Goals with a district-level assessment.',
    'hard',
    'NITI Aayog',
    null,
    '22067f2573caeee547bb9b51daa12772'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '22067f2573caeee547bb9b51daa12772'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indian Council of Social Science Research'),
            ('B', 'Centre for Policy Research'),
            ('C', 'Indian Statistical Institute'),
            ('D', 'Indian Institute of Management')
           ) as v(label, option_text)
 where q.question_hash = '22067f2573caeee547bb9b51daa12772'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Findex'' is the World Bank''s database on:',
    'The Global Findex, released every three years, is the World Bank''s flagship database on financial inclusion and it measures the account ownership, the savings, the borrowing, the payments and the financial resilience of the adults.',
    'medium',
    'World Bank',
    null,
    '0cd9a114e8bcd161d65018f3ca2b4132'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0cd9a114e8bcd161d65018f3ca2b4132'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'financial inclusion, the access to and the use of the financial services by the individuals'),
            ('B', 'the international trade of the services'),
            ('C', 'the public debt of the countries'),
            ('D', 'the remittances received by the developing countries')
           ) as v(label, option_text)
 where q.question_hash = '0cd9a114e8bcd161d65018f3ca2b4132'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Financial Inclusion Index'' is published by the:',
    'The FI-Index, published annually by the Reserve Bank of India, has three parameters, namely the account ownership, the payments and the savings and the credit, and it was first released for 2021.',
    'medium',
    'RBI',
    null,
    '156152612880447b3b63eb5d4d34e2b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '156152612880447b3b63eb5d4d34e2b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State Bank of India'),
            ('B', 'Reserve Bank of India'),
            ('C', 'NITI Aayog'),
            ('D', 'Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '156152612880447b3b63eb5d4d34e2b4'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Competitiveness Ranking'' is published by the:',
    'The IMD World Competitiveness Ranking assesses the enabling environment of the economies for investment and the competitiveness of the enterprises, and India has consistently been ranked in the top fifty of the rankings.',
    'medium',
    'IMD',
    null,
    '9a0333c4263d1109e8d8a7ebb3ad21d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9a0333c4263d1109e8d8a7ebb3ad21d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Institute for Management Development, Lausanne'),
            ('B', 'the World Bank'),
            ('C', 'the OECD'),
            ('D', 'the World Economic Forum')
           ) as v(label, option_text)
 where q.question_hash = '9a0333c4263d1109e8d8a7ebb3ad21d2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Under the MGNREGA, the social audit of the works and the accounts is to be conducted by:',
    'The MGNREGA requires the conduct of the social audit by the Gram Sabha or by the social audit institutions recognised by the State at least once every six months, and the audit reports are placed before the Gram Sabha for the public discussion.',
    'hard',
    'PIB',
    null,
    '10b69e1f992e72694680a15046796388'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '10b69e1f992e72694680a15046796388'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the CAG alone'),
            ('B', 'the District Collector'),
            ('C', 'the Gram Sabha or the social audit institutions recognised by the State'),
            ('D', 'the Prime Minister''s nominee')
           ) as v(label, option_text)
 where q.question_hash = '10b69e1f992e72694680a15046796388'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Basic Environmental Services Review'' of the environment sector in India is conducted by:',
    'The Basic Environmental Services Review is undertaken by the Ministry of Environment, Forest and Climate Change in partnership with the NITI Aayog to assess the performance of the States on the key indicators of air quality, water quality, solid waste and sanitation.',
    'hard',
    'MoEFCC',
    null,
    'f053e5c5c152d95bc36bbcd42981dd60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f053e5c5c152d95bc36bbcd42981dd60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the CAG alone'),
            ('B', 'the Central Pollution Control Board'),
            ('C', 'the NITI Aayog alone'),
            ('D', 'the Ministry of Environment, Forest and Climate Change with the NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = 'f053e5c5c152d95bc36bbcd42981dd60'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''India State of the Environment Report'' is prepared by:',
    'The India State of the Environment Report, prepared biennially by the Centre for Science and Environment, is the official national report on the state of the environment and is submitted to the Minister of Environment, Forest and Climate Change.',
    'medium',
    'CSE',
    null,
    'b06a19c26261cd6b770b6ec801d43923'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b06a19c26261cd6b770b6ec801d43923'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Environment, Forest and Climate Change'),
            ('B', 'the Centre for Science and Environment'),
            ('C', 'the Zoological Survey of India'),
            ('D', 'the Botanical Survey of India')
           ) as v(label, option_text)
 where q.question_hash = 'b06a19c26261cd6b770b6ec801d43923'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''All India Household Consumption Expenditure Survey'' for 2022-23 was conducted by the:',
    'The PLFS is conducted by the National Statistical Office, and since 2017-18 it has been conducted annually with quarterly estimates of the labour market indicators, replacing the quinquennial employment-unemployment surveys.',
    'easy',
    'MoSPI',
    null,
    'fa6c444c2eb3eba0c03052398d0f9e19'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fa6c444c2eb3eba0c03052398d0f9e19'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National Statistical Office of the Ministry of Statistics and Programme Implementation'),
            ('B', 'Reserve Bank of India'),
            ('C', 'Central Board of Direct Taxes'),
            ('D', 'Ministry of Labour and Employment')
           ) as v(label, option_text)
 where q.question_hash = 'fa6c444c2eb3eba0c03052398d0f9e19'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Working Capital Management'' of the Government of India is handled by the:',
    'The Controller General of Accounts, under the Department of Economic Affairs, prepares and executes the annual financial statements and looks after the cash and the expenditure management of the government.',
    'hard',
    'Standard Reference',
    null,
    '65829b16db23257516b440ffc786e76a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65829b16db23257516b440ffc786e76a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National Accounts and Statistics Office'),
            ('B', 'Reserve Bank of India'),
            ('C', 'Ministry of Finance'),
            ('D', 'Controller General of Accounts')
           ) as v(label, option_text)
 where q.question_hash = '65829b16db23257516b440ffc786e76a'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Economic Census'' of India is conducted:',
    'The Economic Census provides the base for the estimates of the employment and the enterprise structure of the country, and the seventh Economic Census was conducted in 2019 with the reference period of 2017-18.',
    'medium',
    'MoSPI',
    null,
    '3e5ada27f5612ad9f6b996a4171148b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e5ada27f5612ad9f6b996a4171148b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'once in ten years by the Registrar General'),
            ('B', 'every three years by the NITI Aayog'),
            ('C', 'every five years, the seventh having been conducted in 2019'),
            ('D', 'annually by the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '3e5ada27f5612ad9f6b996a4171148b6'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''National Crime Records Bureau'' publishes annually, among others, a report on:',
    'The NCRB publishes the ''Accidental Deaths and Suicides in India'' report along with the data on crimes against women, and the ''Causes of Death'' report gives the state-wise profile of the accidental deaths.',
    'medium',
    'NCRB',
    null,
    'ba47c9ecb60ba9b160e16a056f21430b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ba47c9ecb60ba9b160e16a056f21430b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the state of the environment'),
            ('B', 'the foodgrain production'),
            ('C', 'the price of the essential commodities'),
            ('D', 'accidental deaths in India, with the state-wise data and the causes')
           ) as v(label, option_text)
 where q.question_hash = 'ba47c9ecb60ba9b160e16a056f21430b'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Energy Outlook'' is published by the:',
    'The World Energy Outlook of the IEA, published annually since 1993, is the most authoritative source of the energy market projections and the scenarios of the agency.',
    'medium',
    'IEA',
    null,
    '8629190b8c3ff4e4bbb86bcabe566e0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8629190b8c3ff4e4bbb86bcabe566e0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Organisation for Economic Co-operation and Development'),
            ('B', 'International Renewable Energy Agency'),
            ('C', 'International Energy Agency'),
            ('D', 'World Energy Council')
           ) as v(label, option_text)
 where q.question_hash = '8629190b8c3ff4e4bbb86bcabe566e0b'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Economic Outlook'' is published by the:',
    'The WEO, published twice a year by the IMF, presents the projections and the scenario analysis for the world economy and is the standard reference for the global growth and the inflation outlook.',
    'medium',
    'IMF',
    null,
    '5f2ab9e150673f2cf1e212098a50ff33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5f2ab9e150673f2cf1e212098a50ff33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the OECD'),
            ('B', 'International Monetary Fund'),
            ('C', 'the United Nations Conference on Trade and Development'),
            ('D', 'the World Bank')
           ) as v(label, option_text)
 where q.question_hash = '5f2ab9e150673f2cf1e212098a50ff33'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Economic Prospects'' is published by the:',
    'The Global Economic Prospects of the World Bank provides the forecasts of the national accounts of the individual countries, and the January edition carries the outlook for the following two years with a focus on the long-term growth.',
    'medium',
    'World Bank',
    null,
    'ad6f1fac0acf4da9b34a573f52488b89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad6f1fac0acf4da9b34a573f52488b89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the World Bank'),
            ('B', 'the IMF'),
            ('C', 'the Asian Development Bank'),
            ('D', 'the OECD')
           ) as v(label, option_text)
 where q.question_hash = 'ad6f1fac0acf4da9b34a573f52488b89'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Travel and Tourism Development Index'' is published by the:',
    'The Travel and Tourism Development Index of the World Economic Forum, formerly the Travel and Tourism Competitiveness Index, benchmarks the countries on the enabling factors for the travel and tourism sector.',
    'medium',
    'WEF',
    null,
    '7bfa9cfab9d4f9becfc50bd9f47c2e00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7bfa9cfab9d4f9becfc50bd9f47c2e00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the World Travel and Tourism Council'),
            ('B', 'the World Economic Forum'),
            ('C', 'the United Nations World Tourism Organization'),
            ('D', 'the OECD')
           ) as v(label, option_text)
 where q.question_hash = '7bfa9cfab9d4f9becfc50bd9f47c2e00'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Henley Passport Index'' measures:',
    'The Henley Passport Index, published by Henley and Partners, ranks the countries on the number of destinations their citizens can access without a prior visa, and the ranking of the Indian passport has moved up markedly over the past decade.',
    'medium',
    'Henley and Partners',
    null,
    'd0fe8ba0405b71b7d653e3290bbf01da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd0fe8ba0405b71b7d653e3290bbf01da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the number of destinations to which the citizens of a country may travel without a prior visa'),
            ('B', 'the strength of the passport of a country in terms of its economic value'),
            ('C', 'the number of the countries that issue the visa-free entry to the nationals of a country'),
            ('D', 'the competitiveness of the aviation industry')
           ) as v(label, option_text)
 where q.question_hash = 'd0fe8ba0405b71b7d653e3290bbf01da'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Intellectual Property Indicators'' are published by the:',
    'The World Intellectual Property Indicators, a yearly publication of the WIPO, collates the data on the patent, the trademark and the industrial design filings of the world and supports the Global Innovation Index.',
    'medium',
    'WIPO',
    null,
    'b39d344f376e8da0d3ad086746dec093'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b39d344f376e8da0d3ad086746dec093'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the European Patent Office'),
            ('B', 'the OECD'),
            ('C', 'the World Bank'),
            ('D', 'World Intellectual Property Organization')
           ) as v(label, option_text)
 where q.question_hash = 'b39d344f376e8da0d3ad086746dec093'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''World Giving Report'' is produced by the:',
    'The Charities Aid Foundation publishes the World Giving Report, which compares the giving behaviour of the countries and the reasons for the giving, and the index is published on the eve of the International Day of Charity.',
    'medium',
    'Standard Reference',
    null,
    'd20e6175bcae6653502d92225faeea85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd20e6175bcae6653502d92225faeea85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the World Bank'),
            ('B', 'the United Nations Fund for Development'),
            ('C', 'Charities Aid Foundation'),
            ('D', 'the OECD')
           ) as v(label, option_text)
 where q.question_hash = 'd20e6175bcae6653502d92225faeea85'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Global Soft Power Index'' is published by:',
    'Brand Finance publishes the Global Soft Power Index, which evaluates and ranks the nations on the strength of their brands, including the reputation of the governments, the international education, the culture, the media and the commerce.',
    'medium',
    'Brand Finance',
    null,
    'aecd75a01a3908287020c11d706fd08a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aecd75a01a3908287020c11d706fd08a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the World Economic Forum'),
            ('B', 'the Economist Intelligence Unit'),
            ('C', 'the University of Southern California'),
            ('D', 'Brand Finance')
           ) as v(label, option_text)
 where q.question_hash = 'aecd75a01a3908287020c11d706fd08a'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The ''Sustainable Development Goals Report'' is published annually by:',
    'The Sustainable Development Goals Report of the United Nations presents the global progress towards the seventeen goals and the twenty-three targets, and the Indian version of the report is brought out by the NITI Aayog.',
    'medium',
    'United Nations',
    null,
    'cbfaf3e23e8d6977c85e4f7423b6ccd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cbfaf3e23e8d6977c85e4f7423b6ccd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the NITI Aayog'),
            ('B', 'the OECD'),
            ('C', 'the United Nations'),
            ('D', 'the World Bank')
           ) as v(label, option_text)
 where q.question_hash = 'cbfaf3e23e8d6977c85e4f7423b6ccd7'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''National Payments Corporation of India'' was set up in the year:',
    'The National Payments Corporation of India was incorporated in 2009 under the guidance of the Reserve Bank of India and the Department of Posts to operate the retail payment systems, and it operates the UPI, the IMPS and the RuPay.',
    'medium',
    'NPCI',
    null,
    'a1297ddcf5ed902fa7481049955da1c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a1297ddcf5ed902fa7481049955da1c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2009'),
            ('C', '2016'),
            ('D', '2004')
           ) as v(label, option_text)
 where q.question_hash = 'a1297ddcf5ed902fa7481049955da1c4'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''State Domestic Product'' of the Indian States is estimated by:',
    'The state domestic product and the state income are estimated by the respective Directorates of Economics and Statistics of the States in coordination with the National Statistical Office, and the guidelines are evolved by the Central Advisory Board of Statistics.',
    'medium',
    'MoSPI',
    null,
    '3f9cf037d43f5249ed60321c7a149eaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3f9cf037d43f5249ed60321c7a149eaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the State Directorates of Economics and Statistics in coordination with the National Statistical Office'),
            ('B', 'the Union Ministry of Finance'),
            ('C', 'the Reserve Bank of India'),
            ('D', 'the NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = '3f9cf037d43f5249ed60321c7a149eaa'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Projections of Population'' for India from 2011 to 2036 were prepared by:',
    'The National Commission on Population, set up in 2000, prepared the ''Projections of Population for India and the States 2011-2036'', which has been adopted as the official basis for the planning and the projection exercises.',
    'easy',
    'Standard Reference',
    null,
    'c20c945ebf957b89c69692ab4483b993'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c20c945ebf957b89c69692ab4483b993'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Statistical Office'),
            ('B', 'the Planning Commission'),
            ('C', 'the Indian Statistical Institute'),
            ('D', 'the National Commission on Population')
           ) as v(label, option_text)
 where q.question_hash = 'c20c945ebf957b89c69692ab4483b993'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Under the recommendations of the Fifteenth Finance Commission, the grants to the States are released as:',
    'The Fifteenth Finance Commission recommended a tied grant of 40 per cent and an untied grant of 60 per cent of the assessed grant, and it also recommended a 2.5 per cent grant tied to the population control measures.',
    'hard',
    'Standard Reference',
    null,
    'd440b40b046848a69dbe6de766295a2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd440b40b046848a69dbe6de766295a2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a single grant on a need basis'),
            ('B', 'a tied grant and an untied grant'),
            ('C', 'a performance-linked grant only'),
            ('D', 'a grant released directly to the Panchayats')
           ) as v(label, option_text)
 where q.question_hash = 'd440b40b046848a69dbe6de766295a2f'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The distribution of the divisible pool among the States is based on:',
    'The horizontal devolution uses the population as the principal criterion together with the income and the fiscal effort indicators, and the Finance Commission also provides for a grant for the States with a low fiscal capacity.',
    'medium',
    'Standard Reference',
    null,
    'c209bbd1e8a7b5e2316bf7e3d37d4f9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c209bbd1e8a7b5e2316bf7e3d37d4f9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the population alone'),
            ('B', 'the area and the population'),
            ('C', 'the population, the income and the fiscal effort'),
            ('D', 'the revenue receipts of the States')
           ) as v(label, option_text)
 where q.question_hash = 'c209bbd1e8a7b5e2316bf7e3d37d4f9b'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Macro Economic Framework Statement'' presented with the Union Budget provides:',
    'The Macro Economic Framework Statement, presented for the first time in the 2020-21 budget, provides the macro-economic assessment of the growth, the inflation and the fiscal balance projections for the medium term.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '9f7e80d2498995b8544cd7b3d9f4c0ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9f7e80d2498995b8544cd7b3d9f4c0ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an assessment of the growth and the inflation trajectory and the fiscal balance projections'),
            ('B', 'the details of the schemes of the ministries'),
            ('C', 'the statement of the foreign exchange reserves'),
            ('D', 'the sectoral allocation of the credit')
           ) as v(label, option_text)
 where q.question_hash = '9f7e80d2498995b8544cd7b3d9f4c0ed'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Outcome Budget'' framework in India is based on the:',
    'The Outcome Budget approach, first attempted in the 2019-20 budget, tries to link the annual outlays with the outputs that the schemes are expected to deliver, so that the budget becomes a statement of the measurable deliverables.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '349dcd6f7ef825a5b0ef7d90b557f976'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '349dcd6f7ef825a5b0ef7d90b557f976'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a zero-based allocation of the budget'),
            ('B', 'a cut in the non-salary expenditure'),
            ('C', 'the merger of the railway budget with the general budget'),
            ('D', 'linking the expenditure to the measurable outputs and the outcomes of the schemes')
           ) as v(label, option_text)
 where q.question_hash = '349dcd6f7ef825a5b0ef7d90b557f976'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''15th Finance Commission'' recommended a health allocation of:',
    'The Fifteenth Finance Commission recommended a health allocation of 2.5 per cent of the divisible pool, above the 2.2 per cent of the Fourteenth Commission, and the Ayushman Bharat and the National Health Mission were the key schemes to be funded from it.',
    'medium',
    'Standard Reference',
    null,
    'd4a34830eeb37d12f705058cc1cd3188'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4a34830eeb37d12f705058cc1cd3188'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2.5 per cent of the gross domestic product'),
            ('B', '1.75 per cent of the divisible pool'),
            ('C', '2.5 per cent of the divisible pool, higher than the earlier norm of 2.2 per cent'),
            ('D', '3 per cent of the central budget')
           ) as v(label, option_text)
 where q.question_hash = 'd4a34830eeb37d12f705058cc1cd3188'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Union Budget 2024-25'' presented in July 2023 was:',
    'The budget of February 2023 was presented as an interim budget because of the elections, and the full budget for 2024-25 was presented on 1 February 2024, and the fiscal year of the Government of India runs from 1 April to 31 March.',
    'easy',
    'Standard Reference',
    null,
    'f4598e1b3e4d1ff3a8121695de3f5fc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f4598e1b3e4d1ff3a8121695de3f5fc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'presented on 31 January 2024'),
            ('B', 'an interim budget, with the final budget presented on 1 February 2024'),
            ('C', 'a zero-based budget'),
            ('D', 'the first budget of the newly elected government')
           ) as v(label, option_text)
 where q.question_hash = 'f4598e1b3e4d1ff3a8121695de3f5fc2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Production Linked Incentive'' schemes of the Government of India:',
    'The PLI schemes provide an incentive on the incremental sales above a threshold of investment and incremental sales, for five years from the commencement of commercial production, and the incentives are disbursed by the concerned ministry or department.',
    'hard',
    'Economic Survey 2023-24',
    null,
    'b92e5b8b90194f643a6ba6d91adaf527'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b92e5b8b90194f643a6ba6d91adaf527'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'offer an incentive on the incremental sales over a threshold for a period of five years in the notified sectors'),
            ('B', 'are a time bound fiscal deficit reduction measure'),
            ('C', 'provide import duty exemption for the electronics sector'),
            ('D', 'are the flagship programmes of the NITI Aayog for the aspirational districts')
           ) as v(label, option_text)
 where q.question_hash = 'b92e5b8b90194f643a6ba6d91adaf527'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Industrial Relations Code, 2020'' provides for:',
    'The Industrial Relations Code, 2020 consolidates the Industrial Disputes Act, 1947 and the Trade Unions Act, 1926 and provides for a standing orders committee, the conciliation officers, a grievance redressal committee and safeguards on retrenchment, closure and lay-off.',
    'easy',
    'Standard Reference',
    null,
    'bb193309540f4fe1f35ad583e7fa8208'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bb193309540f4fe1f35ad583e7fa8208'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the trade unions'),
            ('B', 'the freedom to strike without notice'),
            ('C', 'the outsourcing of the entire workforce'),
            ('D', 'a standing orders committee and a conciliation machinery and the retrenchment and the lay-off safeguards')
           ) as v(label, option_text)
 where q.question_hash = 'bb193309540f4fe1f35ad583e7fa8208'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Insolvency and Bankruptcy Code'' provides for the ''waterfall mechanism'' in the distribution of the liquidation proceeds in the order of:',
    'The distribution under the IBC proceeds with the insolvency resolution process costs, the secured creditors and the workmen''s dues, then the financial debts owed to the unsecured creditors, and lastly the government dues, with the remaining distributable sum going to the equity shareholders.',
    'hard',
    'Standard Reference',
    null,
    'd3277bc8ad5ad2d2e40832b520d830c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd3277bc8ad5ad2d2e40832b520d830c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the insolvency resolution process costs, the secured creditors, the workmen''s dues and the employee wages, the financial debts and the unsecured debts, and the government dues'),
            ('B', 'the unsecured creditors first'),
            ('C', 'the equity shareholders before the financial creditors'),
            ('D', 'the government dues first, followed by the financial debts')
           ) as v(label, option_text)
 where q.question_hash = 'd3277bc8ad5ad2d2e40832b520d830c2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Securities Market Code'' proposed by SEBI in 2023 is intended to:',
    'The Securities Market Code was proposed as a single consolidated framework to replace the fragmented securities market regulations, and the SEBI has framed the consultation papers and the drafts of the new law for the public comments.',
    'easy',
    'SEBI',
    null,
    'e892fdfc46e256791b49122f2a9d8f96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e892fdfc46e256791b49122f2a9d8f96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'replace the SEBI with a statutory commission'),
            ('B', 'make the mutual fund regulations optional'),
            ('C', 'consolidate the various securities market laws into a single framework'),
            ('D', 'introduce a new taxation of the capital gains')
           ) as v(label, option_text)
 where q.question_hash = 'e892fdfc46e256791b49122f2a9d8f96'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Telemedicine'' practice in India is governed by the:',
    'The Telemedicine Practice Guidelines were issued by the Medical Council of India in 2020 in the wake of the pandemic, and they regulate the practice of telemedicine through the registered medical practitioners and the consent requirement.',
    'easy',
    'MCI',
    null,
    'cd9c45c97862d514a2dc0a60f12211cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cd9c45c97862d514a2dc0a60f12211cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Health Mission guidelines'),
            ('B', 'Telemedicine Practice Guidelines of the Medical Council of India'),
            ('C', 'the Consumer Protection Act'),
            ('D', 'the IT Act alone')
           ) as v(label, option_text)
 where q.question_hash = 'cd9c45c97862d514a2dc0a60f12211cc'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'India''s National Asset Reconstruction Company (NARCL) is:',
    'The National Asset Reconstruction Company Limited, with a 51 per cent stake of the Government of India and the shareholding of the banks, was set up to acquire the stressed loans and to resolve them, and the India Debt Resolution Company works with it for the resolution.',
    'easy',
    'Standard Reference',
    null,
    '39e2bd5ccf94105e333fb7434da4716d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '39e2bd5ccf94105e333fb7434da4716d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a subsidiary of the State Bank of India for bad loan recovery'),
            ('B', 'a joint venture of the World Bank and the Government of India'),
            ('C', 'a government company set up to acquire the stressed loans of the banks and resolve them'),
            ('D', 'an asset management company registered with the SEBI')
           ) as v(label, option_text)
 where q.question_hash = '39e2bd5ccf94105e333fb7434da4716d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Cooperatives Act, 2022'' provides for:',
    'The Cooperatives Act, 2022 provides for the streamlining of the registration and the regulation of the cooperative societies, a three-tier structure with the State Cooperative Councils at the top, the Central Cooperative Registrar as the regulator and the professional management of the societies.',
    'easy',
    'Standard Reference',
    null,
    'a22656ed5fda14f34f05e2295b289ea2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a22656ed5fda14f34f05e2295b289ea2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the nationalisation of the cooperative banks'),
            ('B', 'a new framework for the registration and the regulation of cooperatives with a three-tier structure, an independent regulator and provisions for the audit of the societies'),
            ('C', 'the merger of the cooperatives with the public sector banks'),
            ('D', 'the abolition of the cooperative societies')
           ) as v(label, option_text)
 where q.question_hash = 'a22656ed5fda14f34f05e2295b289ea2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Jan Vishwas'' legislation of 2023 also proposes:',
    'The Jan Vishwas Bill proposes the decriminalisation of the minor offences, the replacement of the penal provisions with the monetary penalties, the rationalisation of the GST rates and the simplification of the returns and the e-invoicing thresholds for the small taxpayers.',
    'easy',
    'PIB',
    null,
    '2e3d78430ee4491fa1dffde4cdc5c8c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2e3d78430ee4491fa1dffde4cdc5c8c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the rationalisation of the GST rates and the simplification of the return forms and the e-invoicing for the small taxpayers'),
            ('B', 'the creation of a new national commission for the direct taxes'),
            ('C', 'the abolition of the customs duty on the imports'),
            ('D', 'the merger of the income tax and the corporate tax')
           ) as v(label, option_text)
 where q.question_hash = '2e3d78430ee4491fa1dffde4cdc5c8c0'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Right to Repair'' framework introduced by the DPIIT in 2023 initially applied to:',
    'The right to repair framework, with the Standard for the Repairability of the Mobile Handsets, the Laptops and the Tablet Computers, was notified in 2023 and requires the manufacturers to make the spare parts and the repair information available to the owners at reasonable prices.',
    'easy',
    'DPIIT',
    null,
    '77af9ac40d1681aae82512aad6dc1658'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '77af9ac40d1681aae82512aad6dc1658'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the agricultural machinery and the tractors only'),
            ('B', 'all the consumer durables in the country'),
            ('C', 'the automobile spare parts only'),
            ('D', 'the mobile handsets, the laptops and the tablet computers and the related spare parts')
           ) as v(label, option_text)
 where q.question_hash = '77af9ac40d1681aae82512aad6dc1658'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Comptroller and Auditor General of India audits the accounts of the Union and the States and reports to:',
    'Under Articles 148 to 151 the CAG audits the accounts of the Union and the States and reports the results to the President and to the Governor of the State, and its reports are examined by the Public Accounts Committee.',
    'hard',
    'CAG',
    null,
    'fceb56e3cb9441e01a5055f1503698f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fceb56e3cb9441e01a5055f1503698f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Prime Minister'),
            ('B', 'the Comptroller and Auditor General of the Union'),
            ('C', 'the President and the Governor of the State'),
            ('D', 'the Parliament alone')
           ) as v(label, option_text)
 where q.question_hash = 'fceb56e3cb9441e01a5055f1503698f5'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The appeals from the orders of the National Company Law Tribunal lie to the:',
    'The National Company Law Appellate Tribunal, with a three-member bench, hears the appeals against the orders of the National Company Law Tribunal, and the appellate authority is the final authority for the corporate law matters.',
    'hard',
    'Standard Reference',
    null,
    '0c05eda1f37b0b4b034c1b14aaf4de8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c05eda1f37b0b4b034c1b14aaf4de8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High Court'),
            ('B', 'National Company Law Appellate Tribunal'),
            ('C', 'Supreme Court'),
            ('D', 'Securities and Exchange Board of India')
           ) as v(label, option_text)
 where q.question_hash = '0c05eda1f37b0b4b034c1b14aaf4de8a'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Insurance penetration'' in India is measured as:',
    'The insurance penetration is the ratio of the insurance premium to the GDP, and the insurance density is the premium per capita, and both the indicators are used to compare the development of the insurance sector across the countries.',
    'easy',
    'IRDAI',
    null,
    '4f9ae4fd823c81703089491d8f755ccd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4f9ae4fd823c81703089491d8f755ccd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ratio of the insurance premium to the gross domestic product'),
            ('B', 'the ratio of the claims paid to the premiums collected'),
            ('C', 'the number of insurance policies in force per household'),
            ('D', 'the number of insurance agents per million people')
           ) as v(label, option_text)
 where q.question_hash = '4f9ae4fd823c81703089491d8f755ccd'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Unique Identification Authority of India'' was established under the:',
    'The UIDAI was constituted as a statutory body under the Aadhaar Act of 2016 for the roll-out of the Aadhaar project, and it had earlier operated as a department of the Ministry of Electronics and Information Technology.',
    'easy',
    'UIDAI',
    null,
    '4097084db7875baa1d15a788eba87545'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4097084db7875baa1d15a788eba87545'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Digital Personal Data Protection Act, 2023'),
            ('B', 'the Companies Act, 2013'),
            ('C', 'the Information Technology Act, 2000'),
            ('D', 'Aadhaar (Unique Identification Authority of India) Act, 2016')
           ) as v(label, option_text)
 where q.question_hash = '4097084db7875baa1d15a788eba87545'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''GeM'' or the Government e-Marketplace is:',
    'GeM is a public sector e-commerce platform of the Ministry of Commerce and Industry for the online purchase of goods and services by the government bodies, and it has also been opened for the buyers of the general public in a phased manner.',
    'easy',
    'GeM',
    null,
    '257283202559b69890bbf487f13d6bc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '257283202559b69890bbf487f13d6bc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a private B2B e-commerce platform'),
            ('B', 'an online platform for the public procurement of goods and services by the government departments'),
            ('C', 'the export promotion portal of the DGFT'),
            ('D', 'the platform of the National Cooperative Development Corporation')
           ) as v(label, option_text)
 where q.question_hash = '257283202559b69890bbf487f13d6bc2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Quality Control Order'' of the BIS:',
    'The Quality Control Orders of the BIS make the certification compulsory for the listed products, and the non-conforming goods cannot be manufactured, imported or sold, with the penal provisions of the BIS Act applying.',
    'easy',
    'BIS',
    null,
    '9fa83f68dd94d405aae8b4b6a0d904ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9fa83f68dd94d405aae8b4b6a0d904ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'makes the ISI mark compulsory for the specified products, with the penalties for the non-conforming goods'),
            ('B', 'is optional for all the consumer goods'),
            ('C', 'applies only to the imported goods'),
            ('D', 'certifies the export consignments for the customs clearance')
           ) as v(label, option_text)
 where q.question_hash = '9fa83f68dd94d405aae8b4b6a0d904ce'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Integrated Scheme for Agricultural Marketing'' (ISAM) aims at:',
    'ISAM was formulated with the objectives of creating the infrastructure for the storage, the transport and the processing, of integrating the value chains, of promoting the market linkages through the e-NAM and of reducing the wastage of the perishable produce.',
    'medium',
    'Standard Reference',
    null,
    '886f37f03e4eb596f763ea423067c23c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '886f37f03e4eb596f763ea423067c23c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the direct procurement of the produce by the consumers'),
            ('B', 'the subsidisation of the farm inputs'),
            ('C', 'the creation of the market infrastructure, the integration of the value chains and the promotion of the market linkages for the agricultural produce'),
            ('D', 'the abolition of the APMC mandis')
           ) as v(label, option_text)
 where q.question_hash = '886f37f03e4eb596f763ea423067c23c'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The 2020 ''Essential Commodities Act'' amendments:',
    'The amendments to the Essential Commodities Act of 1955 in 2020 sought to remove the restrictions on the inter-State movement and the stock limits of the foodgrains and other essential commodities, and they were repealed in 2021.',
    'easy',
    'Standard Reference',
    null,
    '43c4b6eea7b605f7afee8613a268b8f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '43c4b6eea7b605f7afee8613a268b8f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'abolished the MSP of the foodgrains'),
            ('B', 'were struck down as being unconstitutional'),
            ('C', 'raised the buffer stock norms of the FCI'),
            ('D', 'were enacted to facilitate the barrier-free movement of the agricultural produce across the country')
           ) as v(label, option_text)
 where q.question_hash = '43c4b6eea7b605f7afee8613a268b8f0'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Model Agricultural Produce Market Contract Act, 2020'' provides for:',
    'The Model Act, which the States may adopt with modifications, provides the basic framework for the contract farming arrangements, defining the contract, the purchase period, the quality, the quantity, the price and the payment terms and the dispute settlement.',
    'easy',
    'Standard Reference',
    null,
    'a52b3c9694c24b6d2f3868b15fa4daa1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a52b3c9694c24b6d2f3868b15fa4daa1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the regulation of the cold storage network'),
            ('B', 'the fixation of the MSP by the State Governments'),
            ('C', 'the abolition of the procurement agencies'),
            ('D', 'a framework for the contract farming, including the season, the quality, the price and the quantity of the produce to be purchased')
           ) as v(label, option_text)
 where q.question_hash = 'a52b3c9694c24b6d2f3868b15fa4daa1'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''first advance estimates'' of the national income in India are released:',
    'The first advance estimates of the gross domestic product are released in May for the reference year of the preceding financial year, followed by the provisional estimates and the final estimates.',
    'medium',
    'MoSPI',
    null,
    'cfbea482e9788b27a230bdfd97b559bc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cfbea482e9788b27a230bdfd97b559bc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in August with the provisional estimates'),
            ('B', 'in January with the budget'),
            ('C', 'in May of the year following the reference year'),
            ('D', 'in February with the Economic Survey')
           ) as v(label, option_text)
 where q.question_hash = 'cfbea482e9788b27a230bdfd97b559bc'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Railway Budget'' was merged with the general budget in:',
    'The railway budget was merged with the general budget from the Union Budget of 2017, and the capital expenditure of the railways was thereafter presented as a part of the railway ministry''s demand for grants.',
    'medium',
    'Standard Reference',
    null,
    'b9cec47f541cbb4b3afe6b7661cbd383'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b9cec47f541cbb4b3afe6b7661cbd383'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2019'),
            ('C', '2021'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'b9cec47f541cbb4b3afe6b7661cbd383'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''deficit financing'' of the central government is met mainly through:',
    'The bulk of the deficit financing of the Union Government comes from the issue of the government securities and the treasury bills in the market, with the external borrowing and the small money for the residual.',
    'medium',
    'NCERT Class XII',
    null,
    'cf951ccfc7a36b9a41ee3dc6291bcf63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf951ccfc7a36b9a41ee3dc6291bcf63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the foreign loans alone'),
            ('B', 'the issue of the dated treasury bills and the government securities in the market'),
            ('C', 'the reduction of the tax revenues'),
            ('D', 'the printing of the new currency notes')
           ) as v(label, option_text)
 where q.question_hash = 'cf951ccfc7a36b9a41ee3dc6291bcf63'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''grants-in-aid'' to the States from the centre is provided on the recommendations of the:',
    'The Finance Commission recommends the vertical devolution of the tax proceeds and the grants in aid to the States, and the central government provides the grants in accordance with those recommendations.',
    'hard',
    'NCERT Class XII',
    null,
    'db04e644d097ba3a1ffa8d4b6e59fbd1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db04e644d097ba3a1ffa8d4b6e59fbd1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NITI Aayog'),
            ('B', 'GST Council'),
            ('C', 'Planning Commission'),
            ('D', 'Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = 'db04e644d097ba3a1ffa8d4b6e59fbd1'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''market borrowings of the States'' are governed by the:',
    'The market borrowings of the States are governed by the Ministry of Finance in consultation with the RBI under the medium term borrowing programme, and the framework has been revised from 2023-24.',
    'hard',
    'Standard Reference',
    null,
    '6a7d8219de07ff61b5dd5d390a9029ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a7d8219de07ff61b5dd5d390a9029ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Finance in consultation with the RBI and the framework of the medium term borrowing programme'),
            ('B', 'the Reserve Bank of India alone'),
            ('C', 'the respective State legislatures'),
            ('D', 'the Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '6a7d8219de07ff61b5dd5d390a9029ab'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''primary deficit of a government equals the fiscal deficit minus the:',
    'The primary deficit is the fiscal deficit less the interest payments, and it measures the current year borrowing requirement after the interest obligations are met.',
    'hard',
    'NCERT Class XII',
    null,
    '04edee0bae083253696a0d8986392748'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '04edee0bae083253696a0d8986392748'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the capital expenditure'),
            ('B', 'interest payments on the outstanding debt'),
            ('C', 'the revenue receipts'),
            ('D', 'the disinvestment receipts')
           ) as v(label, option_text)
 where q.question_hash = '04edee0bae083253696a0d8986392748'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Zero Based Budgeting'' in India means:',
    'The zero based budgeting requires every scheme to justify its allocation in the year afresh, which eliminates the automatic carry forward of the previous year''s provisions and of the tied funds.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '9c4ffd303caee52b72c1337798c8eeae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9c4ffd303caee52b72c1337798c8eeae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the freezing of the discretionary expenditure'),
            ('B', 'the merger of the plan and the non plan expenditure'),
            ('C', 'the annual review of every scheme and its outlay afresh instead of carrying forward the previous provision'),
            ('D', 'the payment of the entire budget in the first quarter')
           ) as v(label, option_text)
 where q.question_hash = '9c4ffd303caee52b72c1337798c8eeae'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Outcome Budget'' of India links:',
    'The Outcome Budget was first attempted in the 2019-20 budget and it presents the outlays with the outputs that the schemes are expected to deliver so that the accountability for the outcomes is clear.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '2a9236472a7c2acebf2cff42bb3c2e97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2a9236472a7c2acebf2cff42bb3c2e97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the plan targets with the annual targets of the States'),
            ('B', 'the revenue receipts with the tax policy'),
            ('C', 'the capital expenditure with the public private partnership projects'),
            ('D', 'the budget outlays with the measurable outputs and the outcomes of the schemes')
           ) as v(label, option_text)
 where q.question_hash = '2a9236472a7c2acebf2cff42bb3c2e97'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Macro Economic Framework Statement'' in the Union Budget:',
    'The Macro Economic Framework Statement, presented along with the Fiscal Policy Statement since 2020-21, sets out the macroeconomic assessment of the growth, the inflation and the fiscal balance for the medium term.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '74f6023284bf4426d02b3b65cd8a5003'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '74f6023284bf4426d02b3b65cd8a5003'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'presents the statement of the forex reserves'),
            ('B', 'gives the mid-year review of the five year plans'),
            ('C', 'presents the growth and the inflation trajectory and the fiscal balance projections'),
            ('D', 'gives the details of the schemes of the ministries')
           ) as v(label, option_text)
 where q.question_hash = '74f6023284bf4426d02b3b65cd8a5003'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The fiscal deficit of the central government is measured as:',
    'The fiscal deficit is the total expenditure of the government less the revenue receipts and the non-debt capital receipts, and it represents the total borrowing requirement of the government.',
    'medium',
    'NCERT Class XII',
    null,
    '556e035445bc1f96cf295ce5e32f089d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '556e035445bc1f96cf295ce5e32f089d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the revenue expenditure less the revenue receipts'),
            ('B', 'the total expenditure less the revenue receipts and the capital receipts'),
            ('C', 'the borrowing requirement plus the interest payments'),
            ('D', 'the capital expenditure less the capital receipts')
           ) as v(label, option_text)
 where q.question_hash = '556e035445bc1f96cf295ce5e32f089d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The GST revenue of the government is shared with the States as:',
    'The GST is shared with the States with a 42 per cent share of the tax revenue to the States and the 58 per cent to the Centre after the compensation period, with the divisible pool further divided by the Finance Commission.',
    'hard',
    'Standard Reference',
    null,
    '6df9659ec4cf4df4f6323acc89d0b5f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6df9659ec4cf4df4f6323acc89d0b5f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fixed 42 per cent of the tax revenue with the balance to the Centre'),
            ('B', 'the share decided by the population of the States'),
            ('C', 'a fixed 50 per cent of the collection'),
            ('D', 'the entire collection with the States keeping the whole')
           ) as v(label, option_text)
 where q.question_hash = '6df9659ec4cf4df4f6323acc89d0b5f6'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The customs duty revenue'' constitutes a large part of the:',
    'The customs and the central excise continue to be the largest components of the central government''s tax revenue, since the petroleum products and the tobacco and the customs duties are outside the GST.',
    'medium',
    'Standard Reference',
    null,
    'd9127cadf3e1c40d8cf00b929366ecad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd9127cadf3e1c40d8cf00b929366ecad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the corporate tax revenue of the States'),
            ('B', 'the GST revenue of the local bodies'),
            ('C', 'the grants in aid of the Finance Commission'),
            ('D', 'the central excise and the customs receipts of the Union Government')
           ) as v(label, option_text)
 where q.question_hash = 'd9127cadf3e1c40d8cf00b929366ecad'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The Monetary Policy Statement'' of the RBI is issued:',
    'The Monetary Policy Statement is issued in February and August along with the resolution of the Monetary Policy Committee and it sets out the stance of the policy with the projections and the risks.',
    'medium',
    'RBI',
    null,
    'f9ee791005f4fefaf73a8cc8c7cad11b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f9ee791005f4fefaf73a8cc8c7cad11b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'twice a year in February and August, with the resolution of the Monetary Policy Committee'),
            ('B', 'every month'),
            ('C', 'once a year in June'),
            ('D', 'only when the inflation target is breached')
           ) as v(label, option_text)
 where q.question_hash = 'f9ee791005f4fefaf73a8cc8c7cad11b'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The RBI''s Financial Stability Report'' is published:',
    'The Financial Stability Report of the RBI is published twice a year in June and December and it assesses the vulnerabilities of the financial sector and the resilience of the system.',
    'medium',
    'RBI',
    null,
    '8b59936471b28d66a8b38a7355e34e21'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8b59936471b28d66a8b38a7355e34e21'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'quarterly'),
            ('B', 'twice a year, in June and December'),
            ('C', 'once a year in March'),
            ('D', 'only with the Annual Report')
           ) as v(label, option_text)
 where q.question_hash = '8b59936471b28d66a8b38a7355e34e21'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The RBI''s credit information of the borrowers is held by the:',
    'The Credit Information Companies, registered with the RBI under the Credit Information Companies Act, 2005, hold and circulate the credit information of the borrowers and the credit information companies have a duty to provide the free credit information once a year.',
    'medium',
    'RBI',
    null,
    'd4b7321e6716eed9a975280d61d241fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4b7321e6716eed9a975280d61d241fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Reserve Bank of India itself'),
            ('B', 'the National Credit Registry of the NITI Aayog'),
            ('C', 'Credit Information Companies registered with the RBI'),
            ('D', 'the Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = 'd4b7321e6716eed9a975280d61d241fe'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''The rate of the repo at which the banks borrow from the RBI is the:',
    'The repo rate is the policy rate of the monetary policy, and the other rates of the RBI are the reverse repo, the bank rate, the Marginal Standing Facility rate and the CRR and the SLR as the ratios.',
    'hard',
    'RBI',
    null,
    '3dc88a281d9c506499f93400a36b1a23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3dc88a281d9c506499f93400a36b1a23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the policy rate of the monetary policy of the RBI'),
            ('B', 'the penalty rate for the default of the borrowers'),
            ('C', 'the rate of the interest paid on the small savings accounts'),
            ('D', 'the rate of the reserve requirement of the banks')
           ) as v(label, option_text)
 where q.question_hash = '3dc88a281d9c506499f93400a36b1a23'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Payment and Settlement Systems Act, 2007'' designates the RBI as the:',
    'The Payment and Settlement Systems Act, 2007 designates the RBI as the authority for the regulation and the supervision of the payment and the settlement systems, and it also governs the electronic money transfers.',
    'easy',
    'RBI',
    null,
    '456afc4192a7c393a3538f04932a9be6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '456afc4192a7c393a3538f04932a9be6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the guarantor of the settlement of the card transactions'),
            ('B', 'the issuer of the digital rupee'),
            ('C', 'the authority for the regulation and the supervision of the payment and the settlement systems'),
            ('D', 'the operator of the retail payments in the country')
           ) as v(label, option_text)
 where q.question_hash = '456afc4192a7c393a3538f04932a9be6'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Foreign Exchange Management Act, 1999'' FEMA:',
    'The FEMA of 1999 consolidated the foreign exchange regulations and provided for the smooth and the management of the forex with the penal provisions for the contraventions, replacing the FERA of 1974.',
    'easy',
    'Standard Reference',
    null,
    '4fe348fba92433bca00ab759a6908267'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4fe348fba92433bca00ab759a6908267'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'fixed the parity of the rupee with the dollar'),
            ('B', 'consolidated and amended the foreign exchange regulations of the country and the offences and the penalties for the violations'),
            ('C', 'abolished the export of the foreign currency'),
            ('D', 'made the trade payments free of any restriction')
           ) as v(label, option_text)
 where q.question_hash = '4fe348fba92433bca00ab759a6908267'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''India''s industrial output'' — The ''Index of Industrial Production measures:',
    'The IIP is a volume index of the production of the manufacturing, the mining and the electricity sectors with the base year of 2011-12, and it is released by the Office of the Economic Adviser.',
    'hard',
    'DPIIT',
    null,
    '94157918eecd1d67bce4d2251a5f1635'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '94157918eecd1d67bce4d2251a5f1635'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the capacity utilisation of the plants'),
            ('B', 'the value of the exports of the manufactured goods'),
            ('C', 'the employment in the factories'),
            ('D', 'the quantum of the production in the manufacturing, the mining and the electricity sectors')
           ) as v(label, option_text)
 where q.question_hash = '94157918eecd1d67bce4d2251a5f1635'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Services PMI'' of India is compiled by:',
    'The Services PMI of India is compiled by S and P Global in association with the NCAER of the Department of Statistics and the NITI Aayog, and the manufacturing and the composite indices are compiled similarly.',
    'medium',
    'Standard Reference',
    null,
    '5cf02be0df49bca8f7c157d157f847ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5cf02be0df49bca8f7c157d157f847ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the RBI alone'),
            ('B', 'the National Statistical Office'),
            ('C', 'the Federation of Indian Chambers of Commerce'),
            ('D', 'S and P Global along with the NCAER of the Department of Statistics')
           ) as v(label, option_text)
 where q.question_hash = '5cf02be0df49bca8f7c157d157f847ad'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Foreign Portfolio Investment'' in India is:',
    'The FPI covers the investment by the foreign entities in the Indian securities and the debt instruments, while the FDI involves a lasting management interest in the enterprise, and the two are governed by the separate FEMA regulations.',
    'medium',
    'Standard Reference',
    null,
    '04e4938f81ea793dc42fd2ee2fae2248'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '04e4938f81ea793dc42fd2ee2fae2248'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the purchase of the Indian land by the foreigners'),
            ('B', 'the investment of the foreign sovereign wealth funds in the government securities only'),
            ('C', 'the investment by the foreign entities in the listed and the unlisted securities and the debt instruments of the Indian companies'),
            ('D', 'the setting up of the manufacturing plant by the foreign company in India')
           ) as v(label, option_text)
 where q.question_hash = '04e4938f81ea793dc42fd2ee2fae2248'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''inward foreign direct investment'' into India is regulated by:',
    'The DPIIT of the Ministry of Commerce and Industry approves and monitors the inward FDI, while the RBI collects and publishes the data on the flows and the stocks of the foreign investment.',
    'medium',
    'Standard Reference',
    null,
    '0634ce994d89593fc9c3cc95cddfebc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0634ce994d89593fc9c3cc95cddfebc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Department of Promotion of Industry and Internal Trade with the RBI reporting the inflows'),
            ('B', 'the Ministry of Commerce and Industry alone'),
            ('C', 'the NITI Aayog'),
            ('D', 'the Reserve Bank of India alone')
           ) as v(label, option_text)
 where q.question_hash = '0634ce994d89593fc9c3cc95cddfebc4'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Balance of Payments'' of India is presented in:',
    'The RBI compiles and releases the annual and the quarterly Balance of Payments and the international investment position reports along with the data on the foreign exchange reserves and the international trade.',
    'medium',
    'RBI',
    null,
    '05684d6fc85db4add5609024f686bf40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '05684d6fc85db4add5609024f686bf40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the annual report of the CAG'),
            ('B', 'the annual and the quarterly reports of the RBI'),
            ('C', 'the Budget documents only'),
            ('D', 'the Economic Survey alone')
           ) as v(label, option_text)
 where q.question_hash = '05684d6fc85db4add5609024f686bf40'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Foreign exchange reserves'' of India are published by the RBI:',
    'The RBI publishes the weekly statistical supplement with the foreign exchange reserves, the components, the forward book and the money market indicators, and the reserves are also reported with the daily data.',
    'medium',
    'RBI',
    null,
    '1642ebc0c5911092a68d6e360d99d825'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1642ebc0c5911092a68d6e360d99d825'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'annually with the budget documents'),
            ('B', 'daily with the closing rates of the dollar'),
            ('C', 'weekly on Friday with the components of the reserves and the forward book'),
            ('D', 'monthly with the balance of payments only')
           ) as v(label, option_text)
 where q.question_hash = '1642ebc0c5911092a68d6e360d99d825'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''India''s tax to GDP ratio'' is low because:',
    'The low tax to GDP ratio in India is attributed to the narrow tax base and the many exemptions and the thresholds, and the efforts at the rationalisation of the direct taxes and the GST have been directed at widening the base.',
    'medium',
    'Economic Survey 2023-24',
    null,
    'd9f15f6515ad9dfce563810604d93dca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd9f15f6515ad9dfce563810604d93dca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the tax structure has a low number of the broad based taxes and the exemptions of the small taxpayers'),
            ('B', 'the tax rates are very high in India'),
            ('C', 'the tax collection is highly efficient'),
            ('D', 'the government has a large non tax revenue base')
           ) as v(label, option_text)
 where q.question_hash = 'd9f15f6515ad9dfce563810604d93dca'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Digital Rupee'' of the RBI is:',
    'The digital rupee is the central bank digital currency of the RBI and it is issued as a liability of the central bank, and the pilot for the retail use began in 2021-22 in a few States.',
    'medium',
    'RBI',
    null,
    '117d2cfc084a82e99884e641389dd2f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '117d2cfc084a82e99884e641389dd2f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a voucher of the government for the subsidies'),
            ('B', 'the reward points of the public sector banks'),
            ('C', 'a cryptocurrency mined by the private sector'),
            ('D', 'a central bank digital currency issued as a liability of the RBI with a legal tender status')
           ) as v(label, option_text)
 where q.question_hash = '117d2cfc084a82e99884e641389dd2f3'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Income Tax Act, 1961'' provides for the taxation of the:',
    'The Income Tax Act provides for the taxation of the income of the previous year, and the year of assessment is the year in which the income is taxable, with the advance tax and the self assessment on the basis of the estimated income.',
    'easy',
    'Standard Reference',
    null,
    'b76c13e6fff14ab8d5db014635f6f31a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b76c13e6fff14ab8d5db014635f6f31a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the income on the cash basis for the agriculture income'),
            ('B', 'the income of the previous year with the concept of the previous year as the year of assessment'),
            ('C', 'the gross receipts of the businesses only'),
            ('D', 'the income of the year of the assessment only')
           ) as v(label, option_text)
 where q.question_hash = 'b76c13e6fff14ab8d5db014635f6f31a'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''New Income Tax Regime'' introduced in 2020:',
    'The new regime of 2020 with the lower slab rates and the rebate of Rs 50,000 is the default for the persons with the business or the professional income, and the taxpayers may opt out for the old regime.',
    'easy',
    'Economic Survey 2023-24',
    null,
    '3ff5f084b5087e8cb6fdbfe254d097ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3ff5f084b5087e8cb6fdbfe254d097ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'has abolished the exemptions of the standard deduction and the house rent'),
            ('B', 'applies only to the salaried employees'),
            ('C', 'has raised the corporate tax rate'),
            ('D', 'is the default regime for the persons with the business income with the slab rates and the rebate of Rs 50,000')
           ) as v(label, option_text)
 where q.question_hash = '3ff5f084b5087e8cb6fdbfe254d097ad'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''fiscal consolidation'' of India:',
    'The fiscal consolidation in India is a growth friendly reduction of the fiscal deficit and the public debt to the GDP ratio through the revenue mobilisation, the the expenditure rationalisation and the improved the efficiency of the spending.',
    'medium',
    'Economic Survey 2023-24',
    null,
    'fdd3f899284d46ef5b391095ca6b9ec3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fdd3f899284d46ef5b391095ca6b9ec3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is aimed at the increase of the subsidies of the petroleum products'),
            ('B', 'is aimed at the abolition of the fiscal deficit target'),
            ('C', 'is aimed at the reduction of the fiscal deficit and the debt to GDP ratio with the growth friendly consolidation'),
            ('D', 'is aimed at the reduction of the capital expenditure of the States')
           ) as v(label, option_text)
 where q.question_hash = 'fdd3f899284d46ef5b391095ca6b9ec3'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''India''s public debt'' is held mainly by:',
    'The central government''s debt is held largely by the domestic financial institutions, the banks, the insurance companies, the provident and the pension funds and the households, and the share of the foreign portfolio investors has remained relatively small.',
    'medium',
    'Standard Reference',
    null,
    '852918bcb85eea58c70caa6f0c9e71f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '852918bcb85eea58c70caa6f0c9e71f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the banks, the insurance companies, the provident funds and the households with the marketable securities'),
            ('B', 'the States alone'),
            ('C', 'the households in the form of the corporate bonds'),
            ('D', 'the foreign portfolio investors alone')
           ) as v(label, option_text)
 where q.question_hash = '852918bcb85eea58c70caa6f0c9e71f4'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Credit Linked Incentive Scheme'' of the Ministry of Commerce and Industry provides:',
    'The CLIS provides a 3 per cent interest subvention on the term loans of up to Rs 10 crore and of Rs 5 crore for the new units of the MSMEs with the assistance of the SIDBI and the DIC.',
    'hard',
    'Standard Reference',
    null,
    'e93ebc68e832d83d9482dd6ce254406f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e93ebc68e832d83d9482dd6ce254406f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the interest free loans for the women entrepreneurs'),
            ('B', 'a subsidy for the reduction of the interest rate on the term loans of the MSMEs'),
            ('C', 'a rebate on the customs duty of the small exporters'),
            ('D', 'a grant for the setting up of the new industrial units in the cities')
           ) as v(label, option_text)
 where q.question_hash = 'e93ebc68e832d83d9482dd6ce254406f'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''financial inclusion of the street vendors of India has been strengthened by the:',
    'PM SVANidhi provides the collateral free working capital loans to the street vendors with the credit guarantee from the SHG federations, and it has been the largest such programme for the street vendors.',
    'hard',
    'PIB',
    null,
    '64d6655cf878d3ea0284e5715138369e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '64d6655cf878d3ea0284e5715138369e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'PM SVANidhi with the credit guarantee of the SHGs and the collateral free loans'),
            ('B', 'the Mudra loans of the commercial banks'),
            ('C', 'the PMJJY life insurance for the vendors'),
            ('D', 'the Stand-Up India for the manufacturers')
           ) as v(label, option_text)
 where q.question_hash = '64d6655cf878d3ea0284e5715138369e'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Securitisation'' of the loans by the banks in India:',
    'In the securitisation, the bank transfers the cash flows of the loan assets to the investors and the credit risk, and the RBI has issued the guidelines for the securitisation of the standard assets in 2021.',
    'medium',
    'RBI',
    null,
    'ad043c936f6ff9e78df67e5b2c067787'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ad043c936f6ff9e78df67e5b2c067787'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the purchase of the shares of the companies in the market'),
            ('B', 'is the sale of the cash flows of the loan assets to the investors with the transfer of the credit risk'),
            ('C', 'is the merger of two banks for the reduction of the cost'),
            ('D', 'is the conversion of the deposits into the equity')
           ) as v(label, option_text)
 where q.question_hash = 'ad043c936f6ff9e78df67e5b2c067787'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''priority sector lending target of the domestic scheduled commercial banks is:',
    'The overall priority sector target of the domestic scheduled commercial banks is 40 per cent of the Adjusted Net Bank Credit, of which the agriculture accounts for 18 per cent, and the small finance banks have a higher target of 75 per cent.',
    'hard',
    'RBI',
    null,
    'fe7a5690e5f77d04e120cc7723427aff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fe7a5690e5f77d04e120cc7723427aff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25 per cent of the rural credit'),
            ('B', '18 per cent of the deposits'),
            ('C', '40 per cent of the Adjusted Net Bank Credit'),
            ('D', '32 per cent of the total credit')
           ) as v(label, option_text)
 where q.question_hash = 'fe7a5690e5f77d04e120cc7723427aff'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''financial inclusion'' of India is measured by the:',
    'The FI-Index of the RBI has the three parameters of the account ownership, the payments and the savings and the credit, and each of them is scored with a weight in the composite index.',
    'hard',
    'RBI',
    null,
    'c151b4d0feb0f063b4978c5380c5f370'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c151b4d0feb0f063b4978c5380c5f370'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the deposit to GDP ratio of the economy'),
            ('B', 'the share of the bank branches in the rural areas alone'),
            ('C', 'the number of the bank accounts opened in the country'),
            ('D', 'the Financial Inclusion Index of the RBI with the three parameters of the access, the usage and the quality')
           ) as v(label, option_text)
 where q.question_hash = 'c151b4d0feb0f063b4978c5380c5f370'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Financial Stability and Development Council'' of India:',
    'The FSDC is a high level policy making body chaired by the Union Finance Minister with the heads of the financial sector regulators as the members, and it reviews the financial vulnerabilities periodically.',
    'hard',
    'Standard Reference',
    null,
    '6568b5bb2d928b51a94ec4d61c8704d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6568b5bb2d928b51a94ec4d61c8704d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'has been given the statutory powers by an Act of Parliament'),
            ('B', 'is chaired by the Union Finance Minister and includes the heads of the financial regulators'),
            ('C', 'is chaired by the Governor of the RBI alone'),
            ('D', 'is a body of the State Governments only')
           ) as v(label, option_text)
 where q.question_hash = '6568b5bb2d928b51a94ec4d61c8704d0'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''India''s multilateral trade'' — The ''Trade deficit'' of India in a year:',
    'The trade deficit is the excess of the merchandise imports over the merchandise exports in a year, and the current account also includes the services and the income and the transfers, so the two are not the same.',
    'hard',
    'Standard Reference',
    null,
    'cbb9a4dfc2faafafbcaf721907365d66'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cbb9a4dfc2faafafbcaf721907365d66'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the excess of the merchandise imports over the merchandise exports'),
            ('B', 'is the excess of the exports over the imports'),
            ('C', 'equals the current account deficit always'),
            ('D', 'is the difference between the exports and the imports of the services')
           ) as v(label, option_text)
 where q.question_hash = 'cbb9a4dfc2faafafbcaf721907365d66'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''services exports'' of India are dominated by:',
    'The IT and the business process services dominate the services exports of India, and the growth of the global outsourcing has made the country the largest exporter of the business services in the world.',
    'hard',
    'Economic Survey 2023-24',
    null,
    '6c8f91cbc363aea0ee614040b37b73b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6c8f91cbc363aea0ee614040b37b73b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the royalties and the interest receipts'),
            ('B', 'the tourism receipts'),
            ('C', 'the information technology and the business process services'),
            ('D', 'the freight and the insurance earnings')
           ) as v(label, option_text)
 where q.question_hash = '6c8f91cbc363aea0ee614040b37b73b9'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''remittance'' corridors of India:',
    'The Gulf countries, particularly the Saudi Arabia and the UAE, and the United States are the leading sources of the inward remittances, and the total inflow has been one of the largest in the world.',
    'hard',
    'RBI',
    null,
    '941487aa3d0cd37112d71c99a755285e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '941487aa3d0cd37112d71c99a755285e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'have declined with the increase of the trade in services'),
            ('B', 'are led by the European countries alone'),
            ('C', 'are mainly from the South-East Asian economies'),
            ('D', 'are led by the Gulf countries, the United States and the Saudi Arabia with the UAE also among the top sources')
           ) as v(label, option_text)
 where q.question_hash = '941487aa3d0cd37112d71c99a755285e'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Trade Policy Review Mechanism'' of the WTO reviews:',
    'The Trade Policy Review Mechanism provides for the systematic review of the trade policies of every member on a periodic cycle and it is supplemented by the Global Trade Alert for the reporting of the measures.',
    'hard',
    'WTO',
    null,
    'cf9e01b76f326b40ebbd10bd0d8d4d87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cf9e01b76f326b40ebbd10bd0d8d4d87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the investment policies of the members'),
            ('B', 'the trade policies of the member countries every four years'),
            ('C', 'the anti-dumping measures of the members only'),
            ('D', 'the customs tariff of the developing countries')
           ) as v(label, option_text)
 where q.question_hash = 'cf9e01b76f326b40ebbd10bd0d8d4d87'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''fiscal capital expenditure of the Union Government in the Budget 2024-25 was:',
    'The capital expenditure of the Union Government was raised to Rs 11.11 lakh crore in the Budget of 2024-25, an increase of about ten per cent over the revised estimates, and the capital expenditure of the States was also increased.',
    'easy',
    'Union Budget 2024-25',
    null,
    '294b7cccbe1b755d73f5a002a416a6c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '294b7cccbe1b755d73f5a002a416a6c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'kept unchanged at the level of the previous budget'),
            ('B', 'made entirely through the states'' borrowing'),
            ('C', 'raised to Rs 11.11 lakh crore, a rise of about ten per cent over the previous year'),
            ('D', 'reduced to Rs 4 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = '294b7cccbe1b755d73f5a002a416a6c8'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'In March 2024, the Supreme Court declared unconstitutional:',
    'The Supreme Court held that the electoral bonds scheme violated the right to information of the citizens and the principle of proportional equality, and the scheme was struck down with the deposits to be refunded.',
    'easy',
    'Supreme Court judgment',
    2024,
    '21205e8bbcd19ec07ef04580e484175d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '21205e8bbcd19ec07ef04580e484175d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Judicial Appointments Commission Act'),
            ('B', 'the Goods and Services Tax'),
            ('C', 'the reservation of seats for women'),
            ('D', 'the electoral bonds scheme')
           ) as v(label, option_text)
 where q.question_hash = '21205e8bbcd19ec07ef04580e484175d'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Electoral Bonds Act'' was enacted in:',
    'The Electoral Bonds Act, 2022 provided for the issue of the electoral bonds by the banks and their use for the donation to the political parties and for the payment of the electoral expenses of the candidates.',
    'easy',
    'Standard Reference',
    2022,
    'b9862e873a7692bc490f74eef125a13a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b9862e873a7692bc490f74eef125a13a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2024')
           ) as v(label, option_text)
 where q.question_hash = 'b9862e873a7692bc490f74eef125a13a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The committee on the ''one nation, one election'' was headed by:',
    'The committee on the conduct of the simultaneous elections to the Lok Sabha and the State Assemblies was headed by Justice D. Y. Chandrachud, and it submitted its report in early 2024 recommending the implementation in the 2029 general election.',
    'easy',
    'PIB',
    2024,
    '16f0e225201966a08838130e711d1110'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '16f0e225201966a08838130e711d1110'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Justice D. Y. Chandrachud'),
            ('B', 'Justice K. G. Chelliah'),
            ('C', 'Justice K. N. Singh'),
            ('D', 'Justice Ruma Pal')
           ) as v(label, option_text)
 where q.question_hash = '16f0e225201966a08838130e711d1110'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Fact Check Unit'' of the Press Information Bureau was set up in:',
    'The PIB set up the Fact Check Unit in 2023 to verify the claims of the government and the ministers, and the Information Technology (Intermediary Guidelines and Digital Media Ethics Code) Rules, 2021 were amended in 2023 to provide for the due diligence by the intermediaries for the flagged content.',
    'hard',
    'PIB',
    2023,
    '475fab44dc296da917633f124cad5857'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '475fab44dc296da917633f124cad5857'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2018'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '475fab44dc296da917633f124cad5857'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Presidential and Vice-Presidential Elections Act, 2023'' provides for:',
    'The Presidential and Vice-Presidential Elections Act, 2023 consolidated the Presidential and Vice-Presidential Elections Act, 1967 and the Rules of Business of the Lok Sabha relating to the election, and it also provides for the expenditure limit of Rs 15 lakh for the presidential election.',
    'easy',
    'Standard Reference',
    2023,
    '57100723ce02861e0c83137704b73149'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '57100723ce02861e0c83137704b73149'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the abolition of the electoral college for the President'),
            ('B', 'the creation of a national party fund'),
            ('C', 'the consolidation of the previously separate statutes governing the elections to the two offices'),
            ('D', 'the introduction of the NOTA in the presidential election')
           ) as v(label, option_text)
 where q.question_hash = '57100723ce02861e0c83137704b73149'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Right to Education Act, 2009 provides for:',
    'Section 12 of the Right to Education Act, 2009 requires every private unaided school to reserve at least 25 per cent of the seats in the entry class for the children from the disadvantaged and the weaker sections, and it also lays down the pupil-teacher ratio and the qualifications of the teachers.',
    'easy',
    'Standard Reference',
    null,
    '3c5ad86ff358eeedc3a674a32cefcc44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3c5ad86ff358eeedc3a674a32cefcc44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the appointment of the teacher by the central government'),
            ('B', 'reservation of at least 25 per cent of the seats in the private unaided schools for the children from the disadvantaged and the weaker sections'),
            ('C', 'free of cost the higher education for all the students'),
            ('D', 'the compulsory uniform and the mid-day meal in every school')
           ) as v(label, option_text)
 where q.question_hash = '3c5ad86ff358eeedc3a674a32cefcc44'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Child Labour (Prohibition and Regulation) Amendment Act, 2016 provides that:',
    'The 2016 amendment bans the employment of children below fourteen in all occupations and processes, including the hazardous ones, and it prohibits the employment of the adolescents in the hazardous occupations, with the exception of the helping of the family enterprise.',
    'easy',
    'Standard Reference',
    null,
    'f5f6e30e5cc74ce41da2253bc83fa7a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f5f6e30e5cc74ce41da2253bc83fa7a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the employment of children below the age of fourteen is prohibited in all occupations and in all processes'),
            ('B', 'the child labour is permitted in the agricultural operations after the age of twelve'),
            ('C', 'the ban applies only to the hazardous industries'),
            ('D', 'the child workers are to be paid the minimum wages of the adult workers')
           ) as v(label, option_text)
 where q.question_hash = 'f5f6e30e5cc74ce41da2253bc83fa7a8'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Airports Act, 2023'' replaces:',
    'The Airports Act, 2023 replaces the Airports Authority of India Act, 1994 and provides for the establishment of the Airports Authority of India and the Airport Authority of India and for the regulation and the safety of the civil aviation in India.',
    'easy',
    'Standard Reference',
    2023,
    '6bd650d3ef7cd5dc5179063b2117caf0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6bd650d3ef7cd5dc5179063b2117caf0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Indian Aircraft Corporation Act, 1957'),
            ('B', 'the National Airports Authority Act, 1985'),
            ('C', 'the Civil Aviation Act, 1944'),
            ('D', 'the Airports Authority of India Act, 1994')
           ) as v(label, option_text)
 where q.question_hash = '6bd650d3ef7cd5dc5179063b2117caf0'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Legal Services Authorities Act, 1987'' provides for the constitution of:',
    'The Legal Services Authorities Act, 1987 provides for the National Legal Services Authority, the State Legal Services Authorities and the District Legal Services Authorities to provide the free legal aid and the lok adalat and to run the mediation and the pre-litigation services.',
    'easy',
    'Standard Reference',
    null,
    '23d20cb75afb553bcf7362c9c7ed687d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23d20cb75afb553bcf7362c9c7ed687d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Central Vigilance Commission'),
            ('B', 'the National Legal Services Authority and the State Legal Services Authorities'),
            ('C', 'the National Consumer Disputes Redressal Commission'),
            ('D', 'the National Human Rights Commission')
           ) as v(label, option_text)
 where q.question_hash = '23d20cb75afb553bcf7362c9c7ed687d'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''National Financial Reporting Authority'' is:',
    'The NFRA was constituted in 2018 under the Companies Act, 2013 as an independent body to oversee the audit of the listed entities and to oversee the conduct of the audit of the entities that are not listed, and the auditors of the listed entities report to it.',
    'easy',
    'Standard Reference',
    null,
    '82e7f74b7dc9f24158cf1a6445c0de5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '82e7f74b7dc9f24158cf1a6445c0de5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an independent set up by the Reserve Bank of India'),
            ('B', 'a wing of the Serious Fraud Investigation Office'),
            ('C', 'a statutory body set up under the Companies Act, 2013 to oversee the audit of the listed entities'),
            ('D', 'a non-statutory body of the Ministry of Corporate Affairs')
           ) as v(label, option_text)
 where q.question_hash = '82e7f74b7dc9f24158cf1a6445c0de5a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''National Consumer Disputes Redressal Commission'' is:',
    'The Consumer Protection Act, 2019 provides for the National and the State Consumer Disputes Redressal Commissions and the District Commissions as the three-tier quasi-judicial machinery for the redressal of the consumer disputes, and the appeals from them lie to the High Courts and the Supreme Court.',
    'easy',
    'Standard Reference',
    null,
    '5e6ac6718e4502e794b7f86b95f4f70a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e6ac6718e4502e794b7f86b95f4f70a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an appellate body of the High Courts for the consumer cases'),
            ('B', 'a body of the Ministry of Consumer Affairs for the price monitoring'),
            ('C', 'a quasi-judicial body set up under the Consumer Protection Act to redress the consumer disputes'),
            ('D', 'a statutory regulator of the food safety')
           ) as v(label, option_text)
 where q.question_hash = '5e6ac6718e4502e794b7f86b95f4f70a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Foreigners Act, 1946'' governs:',
    'The Foreigners Act, 1946 deals with the registration and the control of the foreigners in India, and the rules made under it, along with the Immigration and Foreigners Act, 1925, govern the entry and the stay of the foreign nationals.',
    'easy',
    'Standard Reference',
    null,
    'b7e274861242e9e3513808c14b014148'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7e274861242e9e3513808c14b014148'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the naturalisation of the foreign nationals'),
            ('B', 'the census of the non-resident Indians'),
            ('C', 'the citizenship of the persons of Indian origin'),
            ('D', 'the registration and the control of the foreigners in India')
           ) as v(label, option_text)
 where q.question_hash = 'b7e274861242e9e3513808c14b014148'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Under the ''Election Symbols (Reservation and Allotment) Order, 1968'':',
    'The Order provides for the recognition of a party and the allotment of a reserved symbol on the basis of the percentage of the votes polled, and a party that secures less than six per cent of the total valid votes in a general election to the House loses the recognition and the symbol.',
    'easy',
    'Standard Reference',
    null,
    'b29cbb0699b200a9f731c7e5ec86cac8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b29cbb0699b200a9f731c7e5ec86cac8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the national parties are allotted the reserved symbols'),
            ('B', 'a political party that fails to secure the required percentage of the total votes in a general election to the House loses the recognition and the reserved symbol'),
            ('C', 'the symbols are allotted on the basis of the strength of the party in the legislature'),
            ('D', 'the symbols are allotted by the President for a minimum of ten years')
           ) as v(label, option_text)
 where q.question_hash = 'b29cbb0699b200a9f731c7e5ec86cac8'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Representation of the People Act, 1951'' was renamed as the:',
    'The Representation of the People Act, 1951 was renamed the Prevention of Election of Persons with Corrupt Practices Act, 1962 after the criminal law amendment of that year, and it deals with the disqualification of the candidates, the corrupt practices and the election disputes.',
    'easy',
    'Standard Reference',
    null,
    'd71a48b4da39945c925c01fdf7ac58c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd71a48b4da39945c925c01fdf7ac58c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prevention of Election of Persons with Corrupt Practices Act, 1962'),
            ('B', 'Election Commission Act, 1990'),
            ('C', 'Electoral Reforms Act, 1975'),
            ('D', 'Criminal Law Amendment Act, 1962')
           ) as v(label, option_text)
 where q.question_hash = 'd71a48b4da39945c925c01fdf7ac58c3'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Supreme Court, in 2020, directed that the candidates with criminal cases must disclose:',
    'The Court in Lok Pravasi Mandal v. Union of India (2020) directed the full disclosure of the criminal cases, the pending ones and the convictions, along with the explanation, in the nomination papers and in the campaign material, and it also directed the rejection of the nomination papers of the candidates who did not comply.',
    'easy',
    'Supreme Court judgment',
    2020,
    'ebf77ec8323905cfdc1cb9f2ada61227'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ebf77ec8323905cfdc1cb9f2ada61227'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the criminal cases only if they are against the scheduled offences'),
            ('B', 'the details of the criminal cases pending against them, along with the explanation, in the nomination papers and in the advertisements'),
            ('C', 'only the convictions and not the pending cases'),
            ('D', 'nothing, as the matter is left to the political parties')
           ) as v(label, option_text)
 where q.question_hash = 'ebf77ec8323905cfdc1cb9f2ada61227'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The ''Governing Council'' of the NITI Aayog includes:',
    'The Governing Council of the NITI Aayog comprises the Prime Minister as the Chairperson, all the Union Ministers, the Chief Minister of every State and the Union Minister of State for Planning, and the full Council meets once a year.',
    'easy',
    'NITI Aayog',
    null,
    'a76448bd669317a3d471e525d822d466'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a76448bd669317a3d471e525d822d466'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'all the Chief Ministers and the Union Minister of State for Planning'),
            ('B', 'the Prime Minister and the Chief Justice of India'),
            ('C', 'the Governors and the Lt. Governors'),
            ('D', 'only the Union Cabinet')
           ) as v(label, option_text)
 where q.question_hash = 'a76448bd669317a3d471e525d822d466'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Geological Survey of India'' is a:',
    'The Geological Survey of India, founded in 1851 and now a national organisation under the Ministry of Mines and Minerals, is the premier repository of the geoscientific data of the country and it operates the National Mineral Resources and the regional offices.',
    'easy',
    'Standard Reference',
    null,
    'e3cc4865e2b01601819fddec075eb806'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e3cc4865e2b01601819fddec075eb806'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a statutory regulator of the mining safety'),
            ('B', 'autonomous body under the Department of Science and Technology'),
            ('C', 'national institution under the Ministry of Earth Sciences'),
            ('D', 'national organisation working under the Ministry of Mines and Minerals for the geoscientific data of the country')
           ) as v(label, option_text)
 where q.question_hash = 'e3cc4865e2b01601819fddec075eb806'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Archaeological Survey of India'' is a:',
    'The Archaeological Survey of India, founded in 1861, is under the Ministry of Culture and it is responsible for the exploration, the conservation and the protection of the cultural monuments and the artefacts of the country.',
    'easy',
    'Standard Reference',
    null,
    'cbf9f2c2e30e1804b2c7e17346cbc6c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cbf9f2c2e30e1804b2c7e17346cbc6c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a body of the National Museum'),
            ('B', 'a statutory body of the Ministry of Education'),
            ('C', 'an organisation under the Ministry of Culture for the conservation and the exploration of the monuments'),
            ('D', 'an organisation under the Ministry of Tourism')
           ) as v(label, option_text)
 where q.question_hash = 'cbf9f2c2e30e1804b2c7e17346cbc6c4'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Zoological Survey of India'' and the ''Botanical Survey of India'' are:',
    'Both the Zoological Survey of India and the Botanical Survey of India are organisations under the Ministry of Environment, Forest and Climate Change, and they maintain the national museums, the zoological and the botanical surveys and the wildlife and the plant species databases.',
    'easy',
    'Standard Reference',
    null,
    'f0e32dab1cf14dbd435373c7e95b3785'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f0e32dab1cf14dbd435373c7e95b3785'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'organisations under the Ministry of Science and Technology'),
            ('B', 'autonomous bodies of the National Biodiversity Authority'),
            ('C', 'institutes under the Ministry of Education'),
            ('D', 'organisations under the Ministry of Environment, Forest and Climate Change')
           ) as v(label, option_text)
 where q.question_hash = 'f0e32dab1cf14dbd435373c7e95b3785'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Gallery of Modern Art'' is located at:',
    'The NGMA, the premier art museum of the country, is located at New Delhi and it was established in 1954 with the collection of the art works acquired from the art of the partition period.',
    'medium',
    'Standard Reference',
    null,
    '1cd1b15212234be23fd53d49ef33957b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1cd1b15212234be23fd53d49ef33957b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Kolkata'),
            ('C', 'Chennai'),
            ('D', 'Mumbai')
           ) as v(label, option_text)
 where q.question_hash = '1cd1b15212234be23fd53d49ef33957b'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Museum'' of India is located at:',
    'The National Museum at New Delhi was founded in 1949 and it has one of the largest collections of the antiquities, the art objects and the artefacts of India across the periods.',
    'medium',
    'Standard Reference',
    null,
    '882a58f18d9b0925818e518a7c98bf71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '882a58f18d9b0925818e518a7c98bf71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kolkata'),
            ('B', 'Mumbai'),
            ('C', 'New Delhi'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '882a58f18d9b0925818e518a7c98bf71'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Sangeet Natak Akademi'' and the ''Sahitya Akademi'' and the ''Lalit Kala Akademi'' are:',
    'The three Akademies, the Sangeet Natak Akademi, the Sahitya Akademi and the Lalit Kala Akademi, were set up by the Government of India in the 1950s under the Ministry of Culture to promote the performing arts, the literature and the visual arts.',
    'hard',
    'Standard Reference',
    null,
    'ba502af14bd937b14b20e6c8d3299174'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba502af14bd937b14b20e6c8d3299174'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the statutory bodies of the Ministry of Education'),
            ('B', 'the national academies set up by the Ministry of Culture for the performing arts, the literature and the visual arts'),
            ('C', 'the autonomous bodies of the National Academy of Letters'),
            ('D', 'the cultural arms of the Sahitya Akademi')
           ) as v(label, option_text)
 where q.question_hash = 'ba502af14bd937b14b20e6c8d3299174'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Indira Gandhi National Centre for the Arts'' is a:',
    'The IGNCA is an autonomous body under the Ministry of Culture that documents, promotes and preserves the diverse heritage of the arts of India and it also runs the National Cultural Archive and the documentation programmes.',
    'medium',
    'Standard Reference',
    null,
    'a87b962341a9f485e34905d02aaf3b86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a87b962341a9f485e34905d02aaf3b86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a national research institute of the Indian Council of Historical Research'),
            ('B', 'a body under the Ministry of Education'),
            ('C', 'an autonomous body under the Ministry of Culture for the promotion of the arts'),
            ('D', 'a deemed university')
           ) as v(label, option_text)
 where q.question_hash = 'a87b962341a9f485e34905d02aaf3b86'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Indian Council of Cultural Relations'' is:',
    'The Indian Council of Cultural Relations, headquartered in New Delhi, promotes the cultural exchanges and the cultural relations with the countries of the world, and it publishes the ''Indian Culture'' journal.',
    'medium',
    'Standard Reference',
    null,
    'c19bc9606cbe24b55980eed6803b770c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c19bc9606cbe24b55980eed6803b770c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the cultural wing of the Indian Council of Historical Research'),
            ('B', 'a statutory body of the Ministry of Culture'),
            ('C', 'a body of the Ministry of External Affairs'),
            ('D', 'an autonomous organisation under the Ministry of Education that promotes the cultural exchanges with the foreign countries')
           ) as v(label, option_text)
 where q.question_hash = 'c19bc9606cbe24b55980eed6803b770c'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Central Forensic Laboratories'' of India are located at:',
    'The Central Forensic Laboratories, set up in 1953 in New Delhi, have branches in several States and they provide the scientific and the forensic assistance to the investigating agencies of the country.',
    'medium',
    'Standard Reference',
    null,
    '3cb5de556d4338c5ad9311f40a93e2a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3cb5de556d4338c5ad9311f40a93e2a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'New Delhi'),
            ('C', 'Cochin'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '3cb5de556d4338c5ad9311f40a93e2a2'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Central Bureau of Investigation'' is under the:',
    'The CBI is under the Department of Revenue in the Ministry of Finance, and the recommendations of the Santhanam Committee of 1961 led to its creation in 1963, and its cases are tried by the special courts under the Special Courts Act, 1971.',
    'medium',
    'Standard Reference',
    null,
    '1c120542731d354aa34328afc35f1d7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1c120542731d354aa34328afc35f1d7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Department of Revenue, with the Central Police Act made applicable to it'),
            ('B', 'Ministry of Home Affairs'),
            ('C', 'Ministry of Corporate Affairs'),
            ('D', 'Department of Economic Affairs')
           ) as v(label, option_text)
 where q.question_hash = '1c120542731d354aa34328afc35f1d7d'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Survey of India'' is a:',
    'The Survey of India, the national authority for the topographic surveying and the geospatial data, is under the Department of Science and Technology, and the National Geospatial Policy of 2021 guides the modernisation of the national spatial data infrastructure.',
    'medium',
    'Standard Reference',
    null,
    'facbaa9b72b34f39dc81ac5053018ee9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'facbaa9b72b34f39dc81ac5053018ee9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'body under the Ministry of Defence for the border maps'),
            ('B', 'a division of the Geological Survey of India'),
            ('C', 'national body under the Department of Science and Technology for the topographic and the geospatial data'),
            ('D', 'body under the Ministry of Home Affairs')
           ) as v(label, option_text)
 where q.question_hash = 'facbaa9b72b34f39dc81ac5053018ee9'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Highways Authority of India'' is responsible for:',
    'The NHAI, set up in 1988, is responsible for the development and the maintenance of the national highways, and it is also the authority for the expressways and the access-controlled highways under the Bharatmala Pariyojana.',
    'medium',
    'Standard Reference',
    null,
    '7b35951d20ca7ff63f4b3bf5d8ffabdb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b35951d20ca7ff63f4b3bf5d8ffabdb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the development of the rural roads under the PMGSY'),
            ('B', 'the development and the maintenance of the national highways'),
            ('C', 'the inland waterways of the country'),
            ('D', 'the maintenance of the national waterways')
           ) as v(label, option_text)
 where q.question_hash = '7b35951d20ca7ff63f4b3bf5d8ffabdb'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Central Electricity Authority'' is a:',
    'The Central Electricity Authority, constituted under the Electricity Act, 2003, is the apex technical body that deals with the standards of the performance, the supply of electricity, the safety and the technical aspects of the energy sector.',
    'medium',
    'Standard Reference',
    null,
    'aefa73a15d8b80b7347e1343ee9d6a26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aefa73a15d8b80b7347e1343ee9d6a26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'statutory body under the Electricity Act, 2003 for the technical standards and the regulation of the electricity sector'),
            ('B', 'a body of the Central Electricity Regulatory Commission'),
            ('C', 'statutory body of the Ministry of Coal'),
            ('D', 'joint venture of the States and the Centre for the power plants')
           ) as v(label, option_text)
 where q.question_hash = 'aefa73a15d8b80b7347e1343ee9d6a26'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Central Water Commission'' is a:',
    'The Central Water Commission, under the Ministry of Jal Shakti, deals with the interstate water disputes, the river basin development and the assessment of the water resources, and it also operates the data of the National Hydrological Data Network.',
    'medium',
    'Standard Reference',
    null,
    '948cc861605192ada9fc398eb5265a08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '948cc861605192ada9fc398eb5265a08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'body of the Ministry of Environment for the water quality monitoring'),
            ('B', 'body of the Central Water Regulatory Authority'),
            ('C', 'division of the National River Conservation Plan'),
            ('D', 'national body under the Ministry of Jal Shakti for the regulation of the interstate water disputes and the river basin development')
           ) as v(label, option_text)
 where q.question_hash = '948cc861605192ada9fc398eb5265a08'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Bar Council of India'' is a:',
    'The Bar Council of India, established in 1988 under the Advocates Act, 1961, is the apex body of the bar councils of the States and the Union Territories and it certifies the degrees of the law and the recognition of the foreign law qualifications.',
    'medium',
    'Standard Reference',
    null,
    '3629ebbfd9bfc0504bc25272e7632a05'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3629ebbfd9bfc0504bc25272e7632a05'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a federation of the State bar councils with no statutory status'),
            ('B', 'statutory body under the Advocates Act, 1961 for the regulation of the legal profession and the enrolment of the lawyers'),
            ('C', 'body of the Supreme Court'),
            ('D', 'autonomous body of the Ministry of Law and Justice')
           ) as v(label, option_text)
 where q.question_hash = '3629ebbfd9bfc0504bc25272e7632a05'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'In the context of the Central Bureau of Investigation, which of the following is correct?',
    'The Serious Fraud Investigation Office, set up in 2004 under the Department of Revenue, is the premier agency for the investigation of the economic offences, and the Voluntary Disclosure Scheme of 2021-22 for the undisclosed income was administered by it.',
    'hard',
    'Standard Reference',
    null,
    '043810cc454d982290b6833375b4feb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '043810cc454d982290b6833375b4feb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a statutory body of the Ministry of Corporate Affairs'),
            ('B', 'a unit of the Enforcement Directorate'),
            ('C', 'a wing of the CBI'),
            ('D', 'a premier agency for the investigation of the economic offences, under the Department of Revenue')
           ) as v(label, option_text)
 where q.question_hash = '043810cc454d982290b6833375b4feb6'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Enforcement Directorate'' is a:',
    'The Enforcement Directorate, a law enforcement agency under the Department of Revenue, is responsible for the enforcement of the Foreign Exchange Management Act, the Prevention of Money Laundering Act and the Fugitive Economic Offenders Act.',
    'medium',
    'Standard Reference',
    null,
    '512347a6d7a33390631951d16dcb4ded'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '512347a6d7a33390631951d16dcb4ded'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'agency of the Department of Revenue that enforces the economic laws'),
            ('B', 'body of the Ministry of Corporate Affairs'),
            ('C', 'agency of the Ministry of Finance for the tax policy'),
            ('D', 'branch of the CBI for the financial crimes')
           ) as v(label, option_text)
 where q.question_hash = '512347a6d7a33390631951d16dcb4ded'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Security Guard'' is a:',
    'The NSG is a central armed police force under the Ministry of Home Affairs, raised in 1984, and it is responsible for the protection of the key installations, the counter-terrorism duties and the hostage rescue operations.',
    'medium',
    'Standard Reference',
    null,
    'a62cdd6adb33ead5044cebad94cf389a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a62cdd6adb33ead5044cebad94cf389a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'force under the Ministry of Home Affairs for the counter-terrorism'),
            ('B', 'body of the Intelligence Bureau'),
            ('C', 'central armed police force under the Ministry of Home Affairs for the protection of the key installations'),
            ('D', 'body under the Ministry of Defence for the border security')
           ) as v(label, option_text)
 where q.question_hash = 'a62cdd6adb33ead5044cebad94cf389a'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Special Protection Group'' is:',
    'The SPG is an elite commando force under the Ministry of Home Affairs, raised in 1985 after the Operation Blue Star and the security of the Prime Minister and the other senior dignitaries, and it operates under the Research and Analysis Wing for the operational support.',
    'medium',
    'Standard Reference',
    null,
    '0fc931f96acb10f09552af9ba8e82f7b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0fc931f96acb10f09552af9ba8e82f7b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a unit of the NIA'),
            ('B', 'a body under the Ministry of External Affairs for the diplomatic security'),
            ('C', 'an armed force of the States for the VIP security'),
            ('D', 'an elite security force of the Ministry of Home Affairs for the protection of the Prime Minister and the senior dignitaries')
           ) as v(label, option_text)
 where q.question_hash = '0fc931f96acb10f09552af9ba8e82f7b'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Investigation Agency'' is a:',
    'The NIA, created in 2008 and headquartered in New Delhi, is the premier counter-terrorism agency under the Department of Internal Security of the Ministry of Home Affairs, and it also handles the cases relating to the secessionism and the CBI''s special cases.',
    'medium',
    'Standard Reference',
    null,
    'c63b23ce3141d1f5ebf65676a4d27173'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c63b23ce3141d1f5ebf65676a4d27173'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'premier counter-terrorism agency under the Department of Internal Security'),
            ('B', 'agency of the Central Bureau of Investigation for the financial crimes'),
            ('C', 'unit of the Research and Analysis Wing'),
            ('D', 'agency of the Ministry of Defence for the frontier security')
           ) as v(label, option_text)
 where q.question_hash = 'c63b23ce3141d1f5ebf65676a4d27173'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Research and Analysis Wing'' is:',
    'The Research and Analysis Wing, headed by the Director General under the Ministry of Home Affairs, is the main agency for the collection and the analysis of the foreign information and it also handles the internal security related intelligence work.',
    'medium',
    'Standard Reference',
    null,
    'a6c4550183c4924f2cb1173d8ca486bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6c4550183c4924f2cb1173d8ca486bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a division of the Cabinet Secretariat'),
            ('B', 'an agency of the Ministry of Home Affairs responsible for the collection and the analysis of the foreign information'),
            ('C', 'the intelligence wing of the Bureau of Police Research and Development'),
            ('D', 'an agency of the Ministry of External Affairs')
           ) as v(label, option_text)
 where q.question_hash = 'a6c4550183c4924f2cb1173d8ca486bb'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Central Bureau of Police Research and Development'' is located at:',
    'The CBPCRD, the premier research organisation of the Ministry of Home Affairs, is located at Hyderabad and it develops the forensic tools, the policing techniques and the training of the police personnel.',
    'medium',
    'Standard Reference',
    null,
    '3795ba2ba8761cfe1533696bce26d3a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3795ba2ba8761cfe1533696bce26d3a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhopal'),
            ('B', 'Chennai'),
            ('C', 'Hyderabad'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '3795ba2ba8761cfe1533696bce26d3a9'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Human Rights Commission'' can inquire into the violations of the human rights committed:',
    'The NHRC can inquire into the violations of the human rights that have occurred within one year of the occurrence, and the other statutory bodies have the corresponding limitation of one year, and the Commission may call for the reports of the State Governments.',
    'hard',
    'Standard Reference',
    null,
    '886f216759b8f82407ecfe9c27e1cab5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '886f216759b8f82407ecfe9c27e1cab5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only after the complaint of a High Court'),
            ('B', 'only within two years of the occurrence'),
            ('C', 'within one year of the occurrence of the violation'),
            ('D', 'at any time irrespective of the period')
           ) as v(label, option_text)
 where q.question_hash = '886f216759b8f82407ecfe9c27e1cab5'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''National Commission for the Protection of Child Rights'' is:',
    'The NCPCR is a statutory body under the Juvenile Justice Act, 2000 that monitors the violations of the rights of the children, the monitoring of the juvenile justice institutions and the complaints of the rights violations.',
    'medium',
    'Standard Reference',
    null,
    '136ed7375cb0ea23cd6dcb2ab38d7d22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '136ed7375cb0ea23cd6dcb2ab38d7d22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a statutory body set up under the Juvenile Justice Act, 2000'),
            ('B', 'a body of the Supreme Court'),
            ('C', 'a body created by the National Commission for Women'),
            ('D', 'a non-statutory body of the Ministry of Women and Child Development')
           ) as v(label, option_text)
 where q.question_hash = '136ed7375cb0ea23cd6dcb2ab38d7d22'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Office of the Registrar General and Census Commissioner, India'' is:',
    'The Office of the Registrar General and Census Commissioner, under the Ministry of Home Affairs, conducts the census, prepares the reports on the vital statistics and functions as the national statistical registration authority for the births and the deaths.',
    'medium',
    'Standard Reference',
    null,
    'ecddab23b75e714860cb02648964de27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ecddab23b75e714860cb02648964de27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'under the Ministry of Health and Family Welfare'),
            ('B', 'under the Ministry of Home Affairs and conducts the census and maintains the vital statistics'),
            ('C', 'an autonomous body of the NITI Aayog'),
            ('D', 'under the Ministry of Statistics and Programme Implementation')
           ) as v(label, option_text)
 where q.question_hash = 'ecddab23b75e714860cb02648964de27'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Bureau of Indian Standards'' is:',
    'The BIS, the national body for the standardisation, works under the Department for Promotion of Industry and Internal Trade in the Ministry of Commerce and Industry, and it formulates the Indian Standards and runs the conformity assessment and the certification schemes.',
    'medium',
    'Standard Reference',
    null,
    '2905a9c169d59c188e1dc0c0d875dde4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2905a9c169d59c188e1dc0c0d875dde4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a statutory regulator of the weights and measures under the Legal Metrology Act'),
            ('B', 'a body of the Ministry of Consumer Affairs'),
            ('C', 'a division of the Bureau of Energy Efficiency'),
            ('D', 'a national body under the Ministry of Commerce and Industry for the standardisation and the certification')
           ) as v(label, option_text)
 where q.question_hash = '2905a9c169d59c188e1dc0c0d875dde4'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Which of the following statements is/are correct in relation to the Legal Metrology?',
    'The Legal Metrology Act, 2009 and the Packaged Commodities Rules are administered by the Department of Consumer Affairs in the Ministry of Consumer Affairs, Food and Public Distribution, and the BIS is the standard making body.',
    'hard',
    'Standard Reference',
    null,
    '5a32592873ae07d02cee7208d57c4040'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a32592873ae07d02cee7208d57c4040'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'under the Ministry of Finance'),
            ('B', 'under the Department of Consumer Affairs for the enforcement of the weights and the measures law'),
            ('C', 'under the Ministry of Commerce and Industry'),
            ('D', 'under the Bureau of Indian Standards')
           ) as v(label, option_text)
 where q.question_hash = '5a32592873ae07d02cee7208d57c4040'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Food Safety and Standards Authority of India'' is:',
    'The FSSAI, set up under the Food Safety and Standards Act, 2006, regulates the food standards, the licensing of the food businesses and the food safety in the country, and it also runs the food safety display and the FoSCoS system.',
    'medium',
    'Standard Reference',
    null,
    '2e4442dc5e06b5f9994b4313f49df104'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2e4442dc5e06b5f9994b4313f49df104'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a body of the Bureau of Indian Standards'),
            ('B', 'a body of the Ministry of Agriculture for the food processing'),
            ('C', 'a statutory body under the Food Safety and Standards Act, 2006 for the regulation of the food standards and the safety'),
            ('D', 'a body of the Ministry of Health for the hospital standards')
           ) as v(label, option_text)
 where q.question_hash = '2e4442dc5e06b5f9994b4313f49df104'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Serious Crime Investigation Bureau'' of the India is:',
    'The SCIB, set up in 1983 under the Ministry of Home Affairs, investigates the serious criminal cases and it operates the Crime and Criminal Tracking Network and the Intelligence Bureau, which was merged with it in 2004.',
    'medium',
    'Standard Reference',
    null,
    '284a63ce51aa79ff1be3167862540ed5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '284a63ce51aa79ff1be3167862540ed5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a bureau of the National Investigation Agency'),
            ('B', 'a bureau under the CBI'),
            ('C', 'a bureau of the Ministry of Finance'),
            ('D', 'a bureau under the Ministry of Home Affairs for the investigation of the serious cases')
           ) as v(label, option_text)
 where q.question_hash = '284a63ce51aa79ff1be3167862540ed5'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Cabinet Secretariat'' of India:',
    'The Cabinet Secretariat, under the Prime Minister, is the nodal agency for the management of the affairs of the Union Government and it provides the secretarial support to the Cabinet and the committees of the Cabinet, and it is not created by any statute.',
    'hard',
    'Standard Reference',
    null,
    '44efc731ffb4879464161537f077ad22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '44efc731ffb4879464161537f077ad22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is the nodal agency for the management of the affairs of the Union Government, the Cabinet and the Secretariat'),
            ('B', 'is a statutory body created by an Act of Parliament'),
            ('C', 'functions under the Ministry of Home Affairs'),
            ('D', 'is headed by the Secretary-General of the Parliament')
           ) as v(label, option_text)
 where q.question_hash = '44efc731ffb4879464161537f077ad22'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Secretariat of the Lok Sabha'' is headed by:',
    'The Secretariat of the Lok Sabha works under the direction of the Speaker and is headed by the Secretary-General, who is a senior officer of the Indian Administrative Service, and the secretariat is not a statutory body.',
    'hard',
    'Standard Reference',
    null,
    '7e1c0650fb0dbd26ee83a5ed8edde681'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7e1c0650fb0dbd26ee83a5ed8edde681'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Secretary-General of the Lok Sabha, an officer of the Indian Administrative Service'),
            ('B', 'the Speaker of the Lok Sabha'),
            ('C', 'the Prime Minister'),
            ('D', 'the Leader of the House in the Lok Sabha')
           ) as v(label, option_text)
 where q.question_hash = '7e1c0650fb0dbd26ee83a5ed8edde681'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Estimates and Appropriations'' — The Department of Economic Affairs of the Ministry of Finance:',
    'The Department of Economic Affairs, the nodal department of the Ministry of Finance, prepares the Union Budget and the Economic Survey and it also controls the expenditure of the Union Government through the budgetary accounting and the financial rules.',
    'hard',
    'Standard Reference',
    null,
    '9522b8068e3f91390aa4df7d94208780'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9522b8068e3f91390aa4df7d94208780'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'administers the direct taxes'),
            ('B', 'looks after the disinvestment and the corporate governance'),
            ('C', 'conducts the monetary policy'),
            ('D', 'prepares the Union Budget and the Economic Survey and controls the expenditure of the ministries and the departments')
           ) as v(label, option_text)
 where q.question_hash = '9522b8068e3f91390aa4df7d94208780'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Department of Revenue'' of the Ministry of Finance administers:',
    'The Department of Revenue administers the Central Board of Direct Taxes, the Central Board of Indirect Taxes and Customs and the Financial Intelligence Unit, and the CBDT and the CBIC are the apex bodies of the direct and the indirect taxes.',
    'hard',
    'Standard Reference',
    null,
    '2779ed540a117bef0680e7c6d1c8ee98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2779ed540a117bef0680e7c6d1c8ee98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the economic survey and the budget preparation'),
            ('B', 'the public debt and the accounts'),
            ('C', 'the direct and the indirect taxes and the customs, the Central Excise and the Central Board of Direct Taxes'),
            ('D', 'the disinvestment policy')
           ) as v(label, option_text)
 where q.question_hash = '2779ed540a117bef0680e7c6d1c8ee98'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The ''Department of Financial Services'' of the Ministry of Finance looks after:',
    'The Department of Financial Services deals with the financial sector, the financial stability and the inclusion, the insurance, the pensions and the capital markets, and it is the nodal department for the financial sector policies.',
    'hard',
    'Standard Reference',
    null,
    '0f957ec71e9b2a6b9b809bfa7b82600b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0f957ec71e9b2a6b9b809bfa7b82600b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the disinvestment and the privatisation'),
            ('B', 'the financial sector, the banking, the capital markets, the insurance and the pensions'),
            ('C', 'the customs and the excise'),
            ('D', 'the public debt management')
           ) as v(label, option_text)
 where q.question_hash = '0f957ec71e9b2a6b9b809bfa7b82600b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Wild Life (Protection) Amendment Act, 2022'' brought in:',
    'The 2022 amendment brought in the great Indian bustard, the Himalayan griffon, the Indian wolf and the shovel-nosed serpent into the schedules and created the National Board for Wildlife, the State Boards and the authorities under sections 3A and 38, with the Act coming into force in April 2023.',
    'easy',
    'MoEFCC',
    2022,
    '2323095af0097d6317c03d09b7f077bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2323095af0097d6317c03d09b7f077bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the ban on the trade in the endangered species only'),
            ('B', 'the creation of the Wildlife Crime Control Bureau as a statutory body'),
            ('C', 'four additional species in the schedules and the authorities for the regulation of the protected areas and the wildlife in the country'),
            ('D', 'the merger of the national parks with the reserved forests')
           ) as v(label, option_text)
 where q.question_hash = '2323095af0097d6317c03d09b7f077bb'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Wildlife Crime Control Bureau'' is a:',
    'The Wildlife Crime Control Bureau was set up in 2007 within the Ministry of Environment, Forest and Climate Change and it was given a statutory mandate by the Wildlife Crime Control Act, 2022.',
    'easy',
    'MoEFCC',
    null,
    '71c9460df97f7f217db2306748ecfe27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '71c9460df97f7f217db2306748ecfe27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'wing of the National Investigation Agency'),
            ('B', 'bureau of the Ministry of Environment, Forest and Climate Change for the control of the wildlife crime'),
            ('C', 'bureau of the Ministry of Home Affairs for the cyber crime'),
            ('D', 'agency of the Directorate of Revenue Intelligence')
           ) as v(label, option_text)
 where q.question_hash = '71c9460df97f7f217db2306748ecfe27'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Central Zoo Authority of India'' is under the:',
    'The CZA, set up in 1992, is a statutory body under the Ministry of Environment, Forest and Climate Change that monitors and controls the zoos and it also deals with the captive breeding and the translocation of the endangered species.',
    'easy',
    'Standard Reference',
    null,
    '163d7a7f3f8e412373e9b9f02ce639ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '163d7a7f3f8e412373e9b9f02ce639ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Environment, Forest and Climate Change'),
            ('B', 'Ministry of Agriculture and Farmers Welfare'),
            ('C', 'Ministry of Culture'),
            ('D', 'Ministry of Corporate Affairs')
           ) as v(label, option_text)
 where q.question_hash = '163d7a7f3f8e412373e9b9f02ce639ff'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Academy for Wildlife Management'' is located at:',
    'The National Academy for Wildlife Management is located at Dehradun in Uttarakhand and it is a premier institution for the training of the wildlife professionals of the country.',
    'easy',
    'Standard Reference',
    null,
    'ec7e1d1924dd8d79e885d2740846a443'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ec7e1d1924dd8d79e885d2740846a443'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jodhpur'),
            ('B', 'Kolkata'),
            ('C', 'Bhopal'),
            ('D', 'Dehradun')
           ) as v(label, option_text)
 where q.question_hash = 'ec7e1d1924dd8d79e885d2740846a443'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Compensation Afforestation Fund'' scheme is governed by the:',
    'The CAMPA Act, 2016 provides for the net present value of the money for the compensatory afforestation, the additional compensatory afforestation and the penalty for the forest diversion to be credited to the national and the state funds managed by the centre and the states.',
    'easy',
    'MoEFCC',
    null,
    'dc3ab0ef97066b144972f5460312794d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dc3ab0ef97066b144972f5460312794d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Forest Conservation Act, 1980'),
            ('B', 'Wildlife Protection Act, 1972'),
            ('C', 'Compensation Afforestation Fund Act, 2016'),
            ('D', 'Environment Protection Act, 1986')
           ) as v(label, option_text)
 where q.question_hash = 'dc3ab0ef97066b144972f5460312794d'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''E-Waste (Management) Rules, 2022'' require:',
    'The E-Waste Rules, 2022 extend the producer responsibility to the electrical and electronic equipment, with the obligation on the producers to establish the collection centres and to ensure that the end-of-life products are collected and recycled.',
    'easy',
    'MoEFCC',
    2022,
    '63cd9887ad317c648e109b3133e23462'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '63cd9887ad317c648e109b3133e23462'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the deposit of the e-waste with the municipal corporations'),
            ('B', 'the producers to establish the collection centres and the recycling of the electrical and electronic equipment through the EPR'),
            ('C', 'the ban on the import of all the second-hand electronics'),
            ('D', 'the setting up of the state level e-waste recycling facilities only')
           ) as v(label, option_text)
 where q.question_hash = '63cd9887ad317c648e109b3133e23462'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Battery Waste Management Rules, 2022'':',
    'The Battery Waste Management Rules, 2022 introduce the concept of the extended producer responsibility, with the producers and the importers of the batteries required to register on the centralised portal and to ensure the collection and the recycling through the registered recyclers.',
    'easy',
    'MoEFCC',
    2022,
    'deb11fe69f184d85e2198c3d0ff07935'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'deb11fe69f184d85e2198c3d0ff07935'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ban the import of the lithium cells'),
            ('B', 'require the batteries to be sold only with the solar panels'),
            ('C', 'provide for the deposit of the batteries with the panchayats'),
            ('D', 'introduce the extended producer responsibility for the batteries and the collection and the recycling of the used batteries')
           ) as v(label, option_text)
 where q.question_hash = 'deb11fe69f184d85e2198c3d0ff07935'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Green Credit Programme'' of the Ministry of Environment, Forest and Climate Change:',
    'The Green Credit Programme is an indicative market based mechanism that incentivises the voluntary environmental actions, with the green credits being awarded for the tree plantation, the restoration of the degraded ecosystems and the sustainable management of the ecosystems, and the scheme is to be implemented on a voluntary basis.',
    'medium',
    'MoEFCC',
    null,
    'a2b89340f5bbc7e0d0dcedc11643dd00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a2b89340f5bbc7e0d0dcedc11643dd00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'seeks to incentivise the environmental action by providing tradable green credits for the tree plantation and the restoration of the degraded ecosystems'),
            ('B', 'gives a tax credit for the afforestation on the private land'),
            ('C', 'certifies the carbon offsets for the global market'),
            ('D', 'provides a subsidy for the rooftop solar installation')
           ) as v(label, option_text)
 where q.question_hash = 'a2b89340f5bbc7e0d0dcedc11643dd00'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'India''s ''Long Term Low Emission Development Strategy'' targets:',
    'The LT-LEDS, notified in 2022, commits India to the net zero carbon emission by 2070 and to the reduction of the carbon intensity of the economy by about 50 per cent by 2030 from the 2005 level, with the near-term target of the non-fossil capacity of 500 GW.',
    'easy',
    'PIB',
    null,
    'f5bd41e66f288315fabc6d0120a1ad9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f5bd41e66f288315fabc6d0120a1ad9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the net zero by 2050 and the reduction of the carbon intensity by 45 per cent by 2030'),
            ('B', 'the net zero by 2060 and the reduction of the emissions by 50 per cent by 2047'),
            ('C', 'the net zero carbon emission by 2070 and the reduction of the carbon intensity of the economy by about 50 per cent by 2030 from the 2005 level'),
            ('D', 'the net zero by 2070 and the reduction of the carbon intensity by 20 per cent by 2030')
           ) as v(label, option_text)
 where q.question_hash = 'f5bd41e66f288315fabc6d0120a1ad9d'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Sulphur Emission Guidelines'' for the Indian shipping sector provided for:',
    'The Sulphur Emission Guidelines, notified in 2018 and effective from 1 January 2020, reduced the permissible sulphur content of the marine fuel oil to 0.5 per cent from 3.5 per cent, in line with the IMO 2020 global sulphur cap.',
    'easy',
    'MoEFCC',
    null,
    '800e306009e7abafabd7df7a097c7bfe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '800e306009e7abafabd7df7a097c7bfe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the mandatory use of the LNG for all the vessels'),
            ('B', 'a limit of 0.5 per cent sulphur in the marine fuel oil for the vessels calling at the Indian ports from 2020'),
            ('C', 'the complete ban on the use of the marine fuel oil'),
            ('D', 'a 1 per cent sulphur cap from 2030')
           ) as v(label, option_text)
 where q.question_hash = '800e306009e7abafabd7df7a097c7bfe'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Biofuel Policy'' aims to:',
    'The National Biofuel Policy, notified in 2018, promotes the biofuel blending in the transport and the agriculture sectors with the aim of reducing the import dependence of the petroleum products and of promoting the use of the biofuel for the rural economy and the environment.',
    'easy',
    'MoEFCC',
    null,
    'eeb6d841954f3f624b622c5f825e6656'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eeb6d841954f3f624b622c5f825e6656'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ban the ethanol blending in the petrol'),
            ('B', 'set a target of 20 per cent biofuel blending by 2030 with the support of the farmers'),
            ('C', 'replace the biodiesel with the compressed natural gas'),
            ('D', 'promote the use of the biofuels for the transport and the agriculture sectors to reduce the import dependence of the petroleum products')
           ) as v(label, option_text)
 where q.question_hash = 'eeb6d841954f3f624b622c5f825e6656'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Global Environment Facility'' is headquartered at:',
    'The GEF, the global partnership of 184 countries for the environmental projects, is headquartered at Washington DC and it operates the Small Grants Programme, the focal point of which in India is the Ministry of Environment, Forest and Climate Change.',
    'easy',
    'Standard Reference',
    null,
    '60fed0bbd98ae6d82a96eb2378428230'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '60fed0bbd98ae6d82a96eb2378428230'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Washington DC'),
            ('B', 'Geneva'),
            ('C', 'Montreal'),
            ('D', 'Nairobi')
           ) as v(label, option_text)
 where q.question_hash = '60fed0bbd98ae6d82a96eb2378428230'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Green Climate Fund'' is headquartered at:',
    'The Green Climate Fund, established at the COP16 in Cancun in 2010, is headquartered in Incheon in South Korea, and it is accountable to the COP and the financial mechanism of the UNFCCC.',
    'easy',
    'Standard Reference',
    null,
    '222a94cc608a234ed9233c65ee50b429'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '222a94cc608a234ed9233c65ee50b429'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nairobi, Kenya'),
            ('B', 'Cancun, Mexico'),
            ('C', 'Bonn, Germany'),
            ('D', 'Incheon, South Korea')
           ) as v(label, option_text)
 where q.question_hash = '222a94cc608a234ed9233c65ee50b429'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''International Seabed Authority'' is headquartered at:',
    'The International Seabed Authority, established under the United Nations Convention on the Law of the Sea, is headquartered at Kingston in Jamaica, and it administers the mineral resources of the Area beyond the national jurisdiction.',
    'easy',
    'Standard Reference',
    null,
    'cc6bfb96c146fdb53434a8682c130c70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cc6bfb96c146fdb53434a8682c130c70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kingston, Jamaica'),
            ('B', 'Nairobi, Kenya'),
            ('C', 'Vienna, Austria'),
            ('D', 'New York, USA')
           ) as v(label, option_text)
 where q.question_hash = 'cc6bfb96c146fdb53434a8682c130c70'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Antarctic Treaty Secretariat'' is located at:',
    'The Secretariat of the Antarctic Treaty, established in 1961, is located in London and it facilitates the cooperation among the consultative parties and the management of the human activities in Antarctica.',
    'easy',
    'Standard Reference',
    null,
    '9699fc3459cdcad53a67706eaa30e5aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9699fc3459cdcad53a67706eaa30e5aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Canberra'),
            ('B', 'Buenos Aires'),
            ('C', 'London'),
            ('D', 'Washington DC')
           ) as v(label, option_text)
 where q.question_hash = '9699fc3459cdcad53a67706eaa30e5aa'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''UN Decade on Ecosystem Restoration'' runs from:',
    'The United Nations Decade on Ecosystem Restoration, launched in 2021, aims at the restoration of the degraded ecosystems, the reduction of the biodiversity loss and the improvement of the livelihoods, and it is led by the UNEP and the FAO with the support of the UN.',
    'easy',
    'UNEP',
    null,
    '375266ecc36f1ea30797263abf5984d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '375266ecc36f1ea30797263abf5984d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015 to 2025'),
            ('B', '2021 to 2030'),
            ('C', '2020 to 2035'),
            ('D', '2022 to 2032')
           ) as v(label, option_text)
 where q.question_hash = '375266ecc36f1ea30797263abf5984d9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Project Otter'' in India relates to the conservation of the:',
    'Project Otter, initiated in 2011 with the Wildlife Institute of India and the Odisha Forest Department, works on the conservation of the smooth-coated otter in the Chambal, the Bhima, the Godavari and the Tapti river systems.',
    'easy',
    'Standard Reference',
    null,
    '053f2818b3886f6f1fe77fd0f1e232ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '053f2818b3886f6f1fe77fd0f1e232ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the otters of the Western Ghats only'),
            ('B', 'the otters in the Sundarbans'),
            ('C', 'otter in the Chambal, the Bhima and the Godavari river systems'),
            ('D', 'the otters of the Brahmaputra valley')
           ) as v(label, option_text)
 where q.question_hash = '053f2818b3886f6f1fe77fd0f1e232ba'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Gharial conservation'' in India is supported by:',
    'The Crocodilian Conservation Alliance, a partnership of the IUCN and the national and the state governments, runs the gharial conservation programme in the National Chambal Sanctuary, the National Crocodile Conservation Centre in Odisha and the various state programmes.',
    'easy',
    'Standard Reference',
    null,
    'abd9d49138bed9b2070a32e3524e4235'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'abd9d49138bed9b2070a32e3524e4235'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Bill and Melinda Gates Foundation'),
            ('B', 'the Crocodilian Conservation Alliance, a partnership of the IUCN and the various governments'),
            ('C', 'the World Wildlife Fund alone'),
            ('D', 'the Rotary International')
           ) as v(label, option_text)
 where q.question_hash = 'abd9d49138bed9b2070a32e3524e4235'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The IUCN Red List has how many categories of threatened status?',
    'The IUCN Red List has nine categories, namely the extinct, the extinct in the wild, the critically endangered, the endangered, the vulnerable, the near threatened, the least concern, the data deficient and the not evaluated.',
    'hard',
    'IUCN',
    null,
    'b4100f4ae075bebd0d0b278821f4ec06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b4100f4ae075bebd0d0b278821f4ec06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seven'),
            ('B', 'Twelve'),
            ('C', 'Five'),
            ('D', 'Nine')
           ) as v(label, option_text)
 where q.question_hash = 'b4100f4ae075bebd0d0b278821f4ec06'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Ozone Division'' of the Ministry of Environment, Forest and Climate Change:',
    'The Ozone Cell of the Ministry looks after the implementation of the Montreal Protocol and its amendments in India, and it also handles the regulation of the ozone-depleting substances and the HCFC and the methyl bromide quota management.',
    'medium',
    'MoEFCC',
    null,
    'ff9baef69d7ddea225a766363739297e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ff9baef69d7ddea225a766363739297e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'implements the Montreal Protocol and the ozone-depleting substances regulation in the country'),
            ('B', 'runs the national air quality monitoring stations'),
            ('C', 'manages the sewage treatment plants'),
            ('D', 'monitors the ozone layer over the polar regions')
           ) as v(label, option_text)
 where q.question_hash = 'ff9baef69d7ddea225a766363739297e'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Biodiversity Authority'' is a:',
    'The National Biodiversity Authority, established under the Biological Diversity Act, 2002, is the apex body for the conservation and the sustainable use of the biological diversity and it is chaired by the Union Minister of Environment, Forest and Climate Change.',
    'medium',
    'MoEFCC',
    null,
    '816f450c6f77b5e39082543aaeac65d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '816f450c6f77b5e39082543aaeac65d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'autonomous organisation of the Ministry of Science and Technology'),
            ('B', 'statutory body under the Biological Diversity Act, 2002'),
            ('C', 'wing of the Botanical Survey of India'),
            ('D', 'non-statutory body of the Ministry of Environment')
           ) as v(label, option_text)
 where q.question_hash = '816f450c6f77b5e39082543aaeac65d3'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Central Marine Fisheries Research Institute'' is located at:',
    'The CMFRI, the premier marine fisheries research institute of the country with its headquarters at Kochi, has regional centres at Mumbai, Chennai, Visakhapatnam, Port Blair and Goa and it publishes the Indian Fisheries Reports.',
    'medium',
    'Standard Reference',
    null,
    'f99e4d16a2995d54b75d131f1a8aea65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f99e4d16a2995d54b75d131f1a8aea65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Mumbai'),
            ('C', 'Visakhapatnam'),
            ('D', 'Kochi')
           ) as v(label, option_text)
 where q.question_hash = 'f99e4d16a2995d54b75d131f1a8aea65'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Fishers'' — The ''PMMSY'' — The ''Pradhan Mantri Matsya Kisan Samridhi Sah-Yojana'' (PM-MKSSY) approved in 2024 has an outlay of:',
    'The PM-MKSSY, announced in the Union Budget for 2024-25, has an outlay of Rs 6,000 crore and it aims at the formalisation of about 12 lakh fishers in the fisheries sector with the support of the credit, the insurance, the traceability and the aquaculture infrastructure.',
    'easy',
    'PIB',
    null,
    '819f70d21fe1ed24687069ee3ebb4cea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '819f70d21fe1ed24687069ee3ebb4cea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 1,000 crore for the fish feed subsidy'),
            ('B', 'Rs 15,000 crore for the cold chain alone'),
            ('C', 'Rs 6,000 crore with the release of about 12 lakh fishers in the formal fisheries sector'),
            ('D', 'Rs 20,000 crore with the release of 35 lakh fishers')
           ) as v(label, option_text)
 where q.question_hash = '819f70d21fe1ed24687069ee3ebb4cea'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which of the following statements regarding the Bureau of Meteorology is correct?',
    'The India Meteorological Department has the regional cyclone warning centres at Chennai, Kolkata, Mumbai, New Delhi and Kochi, and the Cyclone Warning Centre at New Delhi also issues the tropical cyclone bulletins for the north-western Indian Ocean.',
    'medium',
    'IMD',
    null,
    '15bd43fff0e538a7f1f9cb9b2734a9c7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '15bd43fff0e538a7f1f9cb9b2734a9c7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai, Kolkata, Mumbai, New Delhi and Kochi'),
            ('B', 'Chennai and New Delhi'),
            ('C', 'Mumbai, Chennai and Kolkata'),
            ('D', 'only New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '15bd43fff0e538a7f1f9cb9b2734a9c7'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''World Meteorological Organization'' is headquartered at:',
    'The WMO, a specialised agency of the United Nations, is headquartered at Geneva and it issues the State of the Global Climate reports and the El Nino-La Nina updates through its Climate Prediction and Adaptation Centre.',
    'medium',
    'Standard Reference',
    null,
    '837ffc9e568256ceff578fb5de3c0f9c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '837ffc9e568256ceff578fb5de3c0f9c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva'),
            ('B', 'New York'),
            ('C', 'Nairobi'),
            ('D', 'Wien')
           ) as v(label, option_text)
 where q.question_hash = '837ffc9e568256ceff578fb5de3c0f9c'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Emissions Gap Report'' is published annually by the:',
    'The UNEP''s Emissions Gap Report compares the national pledges of the Paris Agreement with the emission trajectories required to meet the temperature goals, and the companion Adaptation Gap Report assesses the adaptation needs of the developing countries.',
    'medium',
    'UNEP',
    null,
    'd6fce0197a8f66dc0eb23acaf989015e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd6fce0197a8f66dc0eb23acaf989015e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'World Economic Forum'),
            ('B', 'World Bank'),
            ('C', 'International Energy Agency'),
            ('D', 'United Nations Environment Programme')
           ) as v(label, option_text)
 where q.question_hash = 'd6fce0197a8f66dc0eb23acaf989015e'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Arctic Council'' is chaired, in rotation, by the:',
    'The Arctic Council, established by the Ottawa Declaration of 1996, is an inter-governmental forum of the eight Arctic States with the chairmanship rotating among the members every year, and the Kingdom of Denmark holds the chairmanship in 2025.',
    'medium',
    'Standard Reference',
    null,
    '45b2aa732e151ad725d7c059a3101c42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '45b2aa732e151ad725d7c059a3101c42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the European Commission'),
            ('B', 'the Nordic Council'),
            ('C', 'member States on an annual basis'),
            ('D', 'the Secretary-General of the United Nations')
           ) as v(label, option_text)
 where q.question_hash = '45b2aa732e151ad725d7c059a3101c42'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''International Union for Conservation of Nature'' is headquartered at:',
    'The IUCN, the membership union of the governments and the civil society organisations working on the conservation, has its headquarters at Gland in Switzerland and it runs the Red List, the World Conservation Congress and the Species Survival Commissions.',
    'medium',
    'IUCN',
    null,
    '784450cc17e1fa5da7e633c2b438639d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '784450cc17e1fa5da7e633c2b438639d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva'),
            ('B', 'Gland, Switzerland'),
            ('C', 'Bonn'),
            ('D', 'Washington DC')
           ) as v(label, option_text)
 where q.question_hash = '784450cc17e1fa5da7e633c2b438639d'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''World Conservation Congress'' of the IUCN is held:',
    'The World Conservation Congress, the IUCN''s global conservation forum, is held every three years, and the members also meet in the World Conservation Assembly in between, and the first congress was held in 1966 in Lucerne.',
    'medium',
    'IUCN',
    null,
    'eb1d18cb8cbde596e890ac92d4dd6c06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'eb1d18cb8cbde596e890ac92d4dd6c06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'annually'),
            ('B', 'once every five years'),
            ('C', 'once every three years'),
            ('D', 'twice a year')
           ) as v(label, option_text)
 where q.question_hash = 'eb1d18cb8cbde596e890ac92d4dd6c06'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'In the context of the International Union for Conservation of Nature, which of the following is correct?',
    'The IUCN World Parks Congress is held once every ten years, and the last edition was held in 2021 in Kigali, with the next one scheduled for 2025 in Sydney.',
    'medium',
    'IUCN',
    null,
    '7c302cf02017384fa408ccd6de105571'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7c302cf02017384fa408ccd6de105571'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'annually'),
            ('B', 'once every three years'),
            ('C', 'once every five years'),
            ('D', 'once every ten years')
           ) as v(label, option_text)
 where q.question_hash = '7c302cf02017384fa408ccd6de105571'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which of the following statements is/are correct in relation to the Wildlife Crime?',
    'CITES has three appendices, with Appendix I listing the species threatened with extinction for which the trade is permitted only in exceptional circumstances, Appendix II for the species that need a regulated trade and Appendix III for those that are under a lesser threat.',
    'hard',
    'CITES',
    null,
    '7d7ceaf954f8e1bc4068259cc659f22e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7d7ceaf954f8e1bc4068259cc659f22e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Three'),
            ('B', 'Two'),
            ('C', 'Four'),
            ('D', 'One')
           ) as v(label, option_text)
 where q.question_hash = '7d7ceaf954f8e1bc4068259cc659f22e'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Basel Convention'' deals with:',
    'The Basel Convention, adopted in 1989 and in force since 1992, controls the transboundary movement and the disposal of the hazardous wastes and the other wastes, and India has amended it with the Ban Amendment and the plastic waste amendments.',
    'medium',
    'Standard Reference',
    null,
    '84a150d31c8cf98419390baa39048b23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '84a150d31c8cf98419390baa39048b23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the trade in the endangered species'),
            ('B', 'the transboundary movement and the disposal of the hazardous wastes and the other wastes'),
            ('C', 'the ozone depletion'),
            ('D', 'the marine pollution from the ships')
           ) as v(label, option_text)
 where q.question_hash = '84a150d31c8cf98419390baa39048b23'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Stockholm Convention'' on the persistent organic pollutants:',
    'The Stockholm Convention, adopted in 2001 and in force since 2004, aims at the elimination of the production and the release of the persistent organic pollutants such as the DDT, the aldrin and the dieldrin, and India has ratified it with the amendments.',
    'medium',
    'Standard Reference',
    null,
    '753d3114c36451e3dcec3207458c42e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '753d3114c36451e3dcec3207458c42e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'addresses the ozone depletion'),
            ('B', 'restricts the production and the release of the persistent organic pollutants such as the DDT and the aldrin'),
            ('C', 'covers the transboundary movement of the plastic waste'),
            ('D', 'regulates the trade in the wild animals')
           ) as v(label, option_text)
 where q.question_hash = '753d3114c36451e3dcec3207458c42e9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Cartagena Convention'' on the transboundary movement of the living modified organisms:',
    'The Cartagena Protocol on Biosafety, negotiated under the CBD, entered into force in September 2003 and it regulates the transboundary movement, the handling and the use of the living modified organisms that may have adverse effects on the biological diversity.',
    'medium',
    'Standard Reference',
    null,
    '30726ce13a0f85cf77e3ca9b496627bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '30726ce13a0f85cf77e3ca9b496627bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'deals with the trade in the endangered species'),
            ('B', 'concerns the marine pollution from the land-based sources'),
            ('C', 'was negotiated under the Convention on Biological Diversity and entered into force in 2003'),
            ('D', 'is a protocol of the WTO')
           ) as v(label, option_text)
 where q.question_hash = '30726ce13a0f85cf77e3ca9b496627bb'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Kigali Amendment'' to the Montreal Protocol deals with:',
    'The Kigali Amendment, adopted in 2016, provides for the phase-down of the production and the consumption of the hydrofluorocarbons by about 85 per cent from the baseline of the 2011 levels, and India ratified it in 2021.',
    'medium',
    'UNEP',
    null,
    '6a0b247862515d29065bfbe1abed8bc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a0b247862515d29065bfbe1abed8bc6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the phase-down of the hydrofluorocarbons used in the refrigeration and the air conditioning'),
            ('B', 'the control of the marine pollution from the ships'),
            ('C', 'the reduction of the black carbon'),
            ('D', 'the phase-out of the ozone depleting substances in the agriculture')
           ) as v(label, option_text)
 where q.question_hash = '6a0b247862515d29065bfbe1abed8bc6'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Mission for Sustainable Agriculture'' promotes:',
    'The National Mission for Sustainable Agriculture promotes the climate resilient agriculture, the diversification of the cropping, the zero budget farming, the integrated nutrient management and the efficient use of the water through the micro irrigation.',
    'medium',
    'PIB',
    null,
    '476a9671be193681f29a8184e2029df5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '476a9671be193681f29a8184e2029df5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the organic farming alone'),
            ('B', 'the expansion of the canal irrigation'),
            ('C', 'the green revolution with the high yielding varieties'),
            ('D', 'the climate resilient and the sustainable farming practices, the diversification and the efficient use of the water and the nutrients')
           ) as v(label, option_text)
 where q.question_hash = '476a9671be193681f29a8184e2029df5'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Consider the following statements. Which of them is correct with regard to the Mann Desh?',
    'The Central Arid Zone Research Institute of the Indian Council of Agricultural Research is headquartered at Jodhpur, and it works on the desert ecosystem, the water harvesting and the saline soil management.',
    'medium',
    'Standard Reference',
    null,
    'ca2cc16ea1cb2574c85f9097dd2be3d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ca2cc16ea1cb2574c85f9097dd2be3d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jodhpur'),
            ('B', 'Barmer'),
            ('C', 'Jaisalmer'),
            ('D', 'Bikaner')
           ) as v(label, option_text)
 where q.question_hash = 'ca2cc16ea1cb2574c85f9097dd2be3d9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Desert National Park'' in Rajasthan is famous for:',
    'The Desert National Park in the Jaisalmer and the Barmer districts is one of the largest national parks in India and it is famous for the chinkara, the great Indian bustard and the large number of the migratory birds that visit during the winter.',
    'medium',
    'Standard Reference',
    null,
    '2752f0677f3f2d9969f0ba9f23f01af4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2752f0677f3f2d9969f0ba9f23f01af4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the wild elephants'),
            ('B', 'the snow leopards'),
            ('C', 'the chinkara and the great Indian bustard and the migratory birds'),
            ('D', 'the Asiatic lions')
           ) as v(label, option_text)
 where q.question_hash = '2752f0677f3f2d9969f0ba9f23f01af4'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'In the context of the Nandankanan Zoological Park, which of the following is correct?',
    'The Kakadu National Park in the Northern Territory of Australia is a UNESCO World Heritage site famous for its bird life and the rock art, and the Indian zoos exchange the animals under the MoU of the Central Zoo Authority.',
    'hard',
    'Standard Reference',
    null,
    'b05a6727df8f4f4b7652655c9fe43912'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b05a6727df8f4f4b7652655c9fe43912'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indonesia'),
            ('B', 'Australia'),
            ('C', 'India'),
            ('D', 'Nepal')
           ) as v(label, option_text)
 where q.question_hash = 'b05a6727df8f4f4b7652655c9fe43912'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Salim Ali Centre for Ornithology and Natural History'' is located at:',
    'The SCON, the premier centre for the study of the birds in India, is located at Coimbatore in Tamil Nadu and it is named after the ornithologist Doctor Salim Ali.',
    'medium',
    'Standard Reference',
    null,
    '4517f96e496d728c90501758426df649'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4517f96e496d728c90501758426df649'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Bhopal'),
            ('C', 'Kochi'),
            ('D', 'Coimbatore')
           ) as v(label, option_text)
 where q.question_hash = '4517f96e496d728c90501758426df649'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Ashoka Trust for Research in Ecology and the Environment'' is located at:',
    'ATREE, a non-profit organisation registered in 1996 and based in Chennai, is a leading research institution working on the biodiversity conservation and the ecology of the tropical forests of the Western Ghats.',
    'hard',
    'Standard Reference',
    null,
    '08a23fd4c1a5ad14cf7dc21cff8f50cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '08a23fd4c1a5ad14cf7dc21cff8f50cb'
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
 where q.question_hash = '08a23fd4c1a5ad14cf7dc21cff8f50cb'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Tropical Forest Research Institute'' is located at:',
    'The Tropical Forest Research Institute, a premier forest research organisation of the Indian Council of Forestry Research and Education, is located at Dehradun and it is also the headquarters of the Indian Council of Forestry Research and Education.',
    'medium',
    'Standard Reference',
    null,
    '34cb0efec8a582dc093550c71efb09b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '34cb0efec8a582dc093550c71efb09b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jodhpur'),
            ('B', 'Bhubaneswar'),
            ('C', 'Shimla'),
            ('D', 'Dehradun')
           ) as v(label, option_text)
 where q.question_hash = '34cb0efec8a582dc093550c71efb09b8'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which of the following statements is/are correct in relation to the National Institute of Fundamental Studies?',
    'The Indian Institute of Science, one of the foremost research institutions of the country, is located at Bengaluru and it was founded in 1909 with the support of the Jamsetji Tata.',
    'hard',
    'Standard Reference',
    null,
    '9051d1989b201eaae677a47147fb9d3e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9051d1989b201eaae677a47147fb9d3e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bengaluru'),
            ('B', 'Chennai'),
            ('C', 'Hyderabad'),
            ('D', 'Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '9051d1989b201eaae677a47147fb9d3e'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which of the following is correct in the case of the Central Marine Fisheries Research Institute?',
    'The National Institute of Oceanography is located at Dona Paula in Goa and it is one of the premier ocean research organisations of the country under the Ministry of Earth Sciences.',
    'hard',
    'Standard Reference',
    null,
    'dd49982b31492cf8cffef72caa4e384f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd49982b31492cf8cffef72caa4e384f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mumbai'),
            ('B', 'Kochi'),
            ('C', 'Goa'),
            ('D', 'Chennai')
           ) as v(label, option_text)
 where q.question_hash = 'dd49982b31492cf8cffef72caa4e384f'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'In the context of the National Institute of Oceanography, which of the following is correct?',
    'The National Centre for Polar and Ocean Research, formerly the National Centre for Antarctic and Ocean Research, is located at Goa and it operates the research stations Dakshin Gangotri and Bharati in Antarctica.',
    'hard',
    'Standard Reference',
    null,
    '1e0ab8885fc39eef3c58bdcd86155381'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1e0ab8885fc39eef3c58bdcd86155381'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Antarctica'),
            ('C', 'Ladakh'),
            ('D', 'Goa')
           ) as v(label, option_text)
 where q.question_hash = '1e0ab8885fc39eef3c58bdcd86155381'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Remote Sensing Centre'' is located at:',
    'The National Remote Sensing Centre of the ISRO is located at Hyderabad and it is the national centre for the acquisition, the processing and the dissemination of the satellite based the remote sensing data.',
    'medium',
    'Standard Reference',
    null,
    '26b6d6eacdc72d762ef162655aea5df0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '26b6d6eacdc72d762ef162655aea5df0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dehradun'),
            ('B', 'Ahmedabad'),
            ('C', 'Hyderabad'),
            ('D', 'Bengaluru')
           ) as v(label, option_text)
 where q.question_hash = '26b6d6eacdc72d762ef162655aea5df0'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'In the context of the State Council of Science and Technology, which of the following is correct?',
    'The National Innovation Foundation-India, an autonomous body of the Department of Science and Technology, is headquartered at Ahmedabad and it promotes the grassroots innovations of the tribal and the rural innovators.',
    'hard',
    'Standard Reference',
    null,
    '9ab958b528ffc9a9927d79ca8f0025b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9ab958b528ffc9a9927d79ca8f0025b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ahmedabad'),
            ('B', 'Bengaluru'),
            ('C', 'New Delhi'),
            ('D', 'Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = '9ab958b528ffc9a9927d79ca8f0025b9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''National Botanical Research Institute'' is located at:',
    'The National Botanical Research Institute, one of the institutes of the Botanical Survey of India, is located at Lucknow and it maintains the National Herbarium and the Central National Botanic Garden.',
    'medium',
    'Standard Reference',
    null,
    '4517296662f154aded92efd1c1b13126'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4517296662f154aded92efd1c1b13126'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dehradun'),
            ('B', 'Lucknow'),
            ('C', 'Bhopal'),
            ('D', 'Coimbatore')
           ) as v(label, option_text)
 where q.question_hash = '4517296662f154aded92efd1c1b13126'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ''Central Pollution Control Board'' was constituted under the:',
    'The Central Pollution Control Board was constituted under the Water Act, 1974 and it was later given the powers under the Air Act, 1981, and it is the apex body for the prevention and the control of the pollution in the country.',
    'hard',
    'MoEFCC',
    null,
    '727d493141ef6dc3cfca1f9ef61c6fa9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '727d493141ef6dc3cfca1f9ef61c6fa9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Water (Prevention and Control of Pollution) Act, 1974'),
            ('B', 'Forest Conservation Act, 1980'),
            ('C', 'Air (Prevention and Control of Pollution) Act, 1981'),
            ('D', 'Environment Protection Act, 1986')
           ) as v(label, option_text)
 where q.question_hash = '727d493141ef6dc3cfca1f9ef61c6fa9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which of the following is correct in the case of the State Pollution Control Boards?',
    'Each State Pollution Control Board is headed by a Chairperson appointed by the Governor, and the members include the State Environment Secretary and the representatives of the industries, and the board is the authority for the consent to establish and to operate in the State.',
    'hard',
    'MoEFCC',
    null,
    '0d37934fb542946c65dafa399ee13692'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0d37934fb542946c65dafa399ee13692'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'District Magistrate'),
            ('B', 'Chairperson appointed by the Governor'),
            ('C', 'Union Environment Secretary'),
            ('D', 'Chief Minister of the State')
           ) as v(label, option_text)
 where q.question_hash = '0d37934fb542946c65dafa399ee13692'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 9th Summit of the Shanghai Cooperation Organisation was held in:',
    'The ninth SCO summit was held in Astana in July 2024 under the chairmanship of Kazakhstan, and India and Kazakhstan signed a joint statement on the sidelines.',
    'medium',
    'Ministry of External Affairs',
    2024,
    '96b765dee7ac1176cb8819de8193c91f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96b765dee7ac1176cb8819de8193c91f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Samarkand, Uzbekistan'),
            ('B', 'Tianjin, China'),
            ('C', 'New Delhi, India'),
            ('D', 'Astana, Kazakhstan')
           ) as v(label, option_text)
 where q.question_hash = '96b765dee7ac1176cb8819de8193c91f'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 16th BRICS Summit was held in:',
    'The BRICS summit under the Russian chairmanship was held at Kazan in October 2024, and the grouping had been expanded with the new members at the Johannesburg summit of 2023.',
    'medium',
    'Ministry of External Affairs',
    2024,
    '0f0322c936338e22f83aad1e751fff5a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0f0322c936338e22f83aad1e751fff5a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Xiamen, China'),
            ('B', 'Brasilia, Brazil'),
            ('C', 'Kazan, Russia'),
            ('D', 'Johannesburg, South Africa')
           ) as v(label, option_text)
 where q.question_hash = '0f0322c936338e22f83aad1e751fff5a'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 2024 G20 Leaders'' Summit was held in:',
    'The G20 summit under the Brazilian presidency was held at Rio de Janeiro in November 2024, and the priorities included the Global Alliance against Hunger, the taxation of the ultra-high net worth individuals and the climate finance.',
    'medium',
    'Ministry of External Affairs',
    2024,
    '0c30dd427d4dca1d3e90846f3bd02743'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c30dd427d4dca1d3e90846f3bd02743'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Los Angeles, United States'),
            ('B', 'Rio de Janeiro, Brazil'),
            ('C', 'New Delhi, India'),
            ('D', 'Bali, Indonesia')
           ) as v(label, option_text)
 where q.question_hash = '0c30dd427d4dca1d3e90846f3bd02743'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Quad Leaders'' Summit of 2024 was held in:',
    'The Quad Leaders'' Summit was held in Washington DC in October 2024, and the agenda included the maritime security in the Indo-Pacific, the critical and emerging technologies and the humanitarian assistance.',
    'medium',
    'Ministry of External Affairs',
    2024,
    '9bbbf27e566af207a372793ee570e7f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9bbbf27e566af207a372793ee570e7f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Tokyo'),
            ('C', 'Sydney'),
            ('D', 'Washington DC')
           ) as v(label, option_text)
 where q.question_hash = '9bbbf27e566af207a372793ee570e7f9'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 2+2 Ministerial Dialogue between India and Japan was held in July 2024 in:',
    'The ninth India-Japan 2+2 Ministerial Dialogue was held in Tokyo in July 2024, the first such meeting after a long gap, and it covered the defence, the foreign affairs, the connectivity and the people to people ties.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '3f9e83050501300539e9e3374a39bebd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3f9e83050501300539e9e3374a39bebd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tokyo'),
            ('B', 'New Delhi'),
            ('C', 'Jakarta'),
            ('D', 'Naypyidaw')
           ) as v(label, option_text)
 where q.question_hash = '3f9e83050501300539e9e3374a39bebd'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 20th India-Russia Summit was held in October 2024 in:',
    'The twentieth India-Russia summit was held in New Delhi in October 2024 on the sidelines of the BRICS summit, and the two countries signed about twenty documents covering the energy, the defence manufacturing and the agriculture.',
    'medium',
    'Ministry of External Affairs',
    2024,
    'ce023d0b60641740945863295e38dd67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ce023d0b60641740945863295e38dd67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sochi'),
            ('B', 'Vladivostok'),
            ('C', 'New Delhi'),
            ('D', 'Moscow')
           ) as v(label, option_text)
 where q.question_hash = 'ce023d0b60641740945863295e38dd67'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Treaty on the Prohibition of Nuclear Weapons'' was signed by India in:',
    'India signed the Treaty on the Prohibition of Nuclear Weapons in September 2018, becoming the first nuclear weapon state to do so, and the treaty bans the nuclear weapons, their development, the production and the transfer.',
    'medium',
    'Ministry of External Affairs',
    2018,
    '56aa06688e61870d0b160c03b0c0c048'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '56aa06688e61870d0b160c03b0c0c048'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2005'),
            ('B', '1996'),
            ('C', '2015'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '56aa06688e61870d0b160c03b0c0c048'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Comprehensive Nuclear-Test-Ban Treaty'' was signed by India in:',
    'India signed the CTBT in September 1996 but has not ratified it, and the treaty bans all the nuclear explosions, the test of which the 1998 Pokhran-II series demonstrated the value of the political declaration of the complete disarmament.',
    'medium',
    'Standard Reference',
    null,
    '2a1bced91690255b65d5f7f436c53ca3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a1bced91690255b65d5f7f436c53ca3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1996'),
            ('B', '1998'),
            ('C', '2003'),
            ('D', '1999')
           ) as v(label, option_text)
 where q.question_hash = '2a1bced91690255b65d5f7f436c53ca3'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 15th IBSA Summit was held in:',
    'The fifteenth summit of the India-Brazil-South Africa grouping was held in Luanda in August 2023 and the leaders called for the reform of the global financial institutions and the greater representation of the developing countries.',
    'hard',
    'Ministry of External Affairs',
    2023,
    '7d29d1a34fb5e1b0f3fe02dcb5d5454b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7d29d1a34fb5e1b0f3fe02dcb5d5454b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Johannesburg, South Africa'),
            ('B', 'Luanda, Angola'),
            ('C', 'Brasilia, Brazil'),
            ('D', 'New Delhi, India')
           ) as v(label, option_text)
 where q.question_hash = '7d29d1a34fb5e1b0f3fe02dcb5d5454b'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 3rd BIMSTEC Summit was held in:',
    'The third BIMSTEC summit was held in Bangkok in September 2023, and the grouping of the seven Bay of Bengal countries adopted the Bangkok Declaration with the emphasis on the connectivity, the trade and the energy security.',
    'hard',
    'Ministry of External Affairs',
    2023,
    'd77dd13c330eaec76485e992ce209241'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd77dd13c330eaec76485e992ce209241'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Colombo, Sri Lanka'),
            ('B', 'Kathmandu, Nepal'),
            ('C', 'Bangkok, Thailand'),
            ('D', 'Dhaka, Bangladesh')
           ) as v(label, option_text)
 where q.question_hash = 'd77dd13c330eaec76485e992ce209241'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The last SAARC Summit that was held was in:',
    'The nineteenth SAARC summit was held in Kathmandu in November 2018, and no summit has been held since because of the absence of consensus on the agenda, with India insisting on a bilateral approach.',
    'hard',
    'Ministry of External Affairs',
    2018,
    '713d7bb156b9877395c95dc1be99b5da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '713d7bb156b9877395c95dc1be99b5da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Colombo, Sri Lanka'),
            ('B', 'Dhaka, Bangladesh'),
            ('C', 'Kathmandu, Nepal'),
            ('D', 'Islamabad, Pakistan')
           ) as v(label, option_text)
 where q.question_hash = '713d7bb156b9877395c95dc1be99b5da'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India-Africa Forum Summit'' of 2023 was the:',
    'The third India-Africa Forum Summit and the third India-Africa Ministerial Dialogue were held in New Delhi in October 2023, and the outcome was the ''Delhi Declaration'' with the common vision of a vibrant and prosperous Africa.',
    'medium',
    'Ministry of External Affairs',
    2023,
    '741cde7c1166428acfab207027cb431b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '741cde7c1166428acfab207027cb431b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a special session of the UN General Assembly'),
            ('B', 'third edition of the India-Africa Forum Summit'),
            ('C', 'second edition of the India-Africa Forum Summit'),
            ('D', 'first edition of the India-Africa Forum Summit')
           ) as v(label, option_text)
 where q.question_hash = '741cde7c1166428acfab207027cb431b'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Commonwealth Heads of Government Meeting'' of 2024 was held in:',
    'The CHOGM was held in Apia in Samoa in October 2024, and the theme emphasised the climate action and the ocean protection, and India participated as the head of the organisation of the Commonwealth until 2023.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '207e62f4a11b688eafb4e2f04e0173f6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '207e62f4a11b688eafb4e2f04e0173f6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kigali, Rwanda'),
            ('B', 'Nairobi, Kenya'),
            ('C', 'Suva, Fiji'),
            ('D', 'Apia, Samoa')
           ) as v(label, option_text)
 where q.question_hash = '207e62f4a11b688eafb4e2f04e0173f6'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India-EU'' Summit of 2023 was held in:',
    'The India-European Union summit was held in New Delhi in October 2023, and the two sides announced the intention to conclude the negotiations on the Trade and Investment Partnership Agreement and the Geographical Indications Agreement.',
    'medium',
    'Ministry of External Affairs',
    2023,
    'e8ef3138f693e1d049bf158dad23a8af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e8ef3138f693e1d049bf158dad23a8af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Brussels'),
            ('C', 'Lisbon'),
            ('D', 'Madrid')
           ) as v(label, option_text)
 where q.question_hash = 'e8ef3138f693e1d049bf158dad23a8af'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India-Brazil'' diplomatic relations completed:',
    'India and Brazil marked the completion of sixty years of diplomatic relations in 2024, and the two countries are the largest economies of the Global South with a long-standing cooperation in the agriculture, the health and the space sectors.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '6125b3b5efb24b88eec18b0bd9adce55'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6125b3b5efb24b88eec18b0bd9adce55'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '50 years in 2024'),
            ('B', '75 years in 2024'),
            ('C', '40 years in 2024'),
            ('D', '60 years in 2024')
           ) as v(label, option_text)
 where q.question_hash = '6125b3b5efb24b88eec18b0bd9adce55'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and Kazakhstan'' — The first ''2+2'' dialogue between India and Kazakhstan was held in:',
    'The first India-Kazakhstan 2+2 dialogue was held in New Delhi in January 2023, and the two countries also agreed on the operationalisation of the Bimal (Bilateral) initiative on the rail connectivity and the energy trade.',
    'hard',
    'Ministry of External Affairs',
    2023,
    'abc777a1e0ea4f1f484fcfd7a4be2c68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'abc777a1e0ea4f1f484fcfd7a4be2c68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Moscow'),
            ('B', 'New Delhi'),
            ('C', 'Astana'),
            ('D', 'Almaty')
           ) as v(label, option_text)
 where q.question_hash = 'abc777a1e0ea4f1f484fcfd7a4be2c68'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the Philippines'' — The first India-Philippines Foreign Ministers'' Dialogue in fifteen years was held in:',
    'The ninth India-Philippines Foreign Ministers'' Dialogue was held in Manila in August 2024, the first such meeting in fifteen years, and it covered the maritime cooperation, the defence interoperability and the trade and the investment.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '468011dc2922b8253593ad7964511a85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '468011dc2922b8253593ad7964511a85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jakarta'),
            ('B', 'Singapore'),
            ('C', 'Manila'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '468011dc2922b8253593ad7964511a85'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and Afghanistan'' — The first ever India-Afghanistan Consular Dialogue was held in:',
    'The first India-Afghanistan Consular Dialogue was held in New Delhi in October 2024, and it covered the visa facilitation, the education, the trade and the people to people exchanges and the humanitarian assistance.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '3bc47e68187f5268a3bd71c22a252475'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3bc47e68187f5268a3bd71c22a252475'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Kabul'),
            ('C', 'Dubai'),
            ('D', 'Doha')
           ) as v(label, option_text)
 where q.question_hash = '3bc47e68187f5268a3bd71c22a252475'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the Maldives'' — The 10th India-Maldives Foreign Office Consultations were held in:',
    'The tenth round of the India-Maldives Foreign Office Consultations was held in Male in March 2024, and the discussions covered the security and the defence cooperation and the economic and the developmental partnership.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '628344460ddda55f87f6c07a6af918ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '628344460ddda55f87f6c07a6af918ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi'),
            ('B', 'Colombo'),
            ('C', 'Dubai'),
            ('D', 'Male')
           ) as v(label, option_text)
 where q.question_hash = '628344460ddda55f87f6c07a6af918ff'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''G7'' — India is not a member of the G7, and the G20 presidency of 2023 was the first that:',
    'India''s G20 presidency in 2023 was historic because it was the first G20 presidency in the Global South, and it was also the first to include the African Union as a permanent member and to take the leaders'' declaration through consensus.',
    'medium',
    'PIB',
    null,
    'da366e6b8802f243dfc274b7a6a26b80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'da366e6b8802f243dfc274b7a6a26b80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'was convened in New Delhi'),
            ('B', 'was held in a country of the Global South'),
            ('C', 'was chaired by the Prime Minister of India'),
            ('D', 'included the African Union as a permanent member')
           ) as v(label, option_text)
 where q.question_hash = 'da366e6b8802f243dfc274b7a6a26b80'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''New Development Bank'' of the BRICS allows the lending in:',
    'The NDB is the first multilateral development bank established by the BRICS countries and it permits the lending in the local currencies of the members, other than the Indian rupee and the Brazilian real, in order to reduce the dollarisation of the financing.',
    'hard',
    'New Development Bank',
    null,
    'be7fb9bdd1fb2939a05e979d05f8ec01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'be7fb9bdd1fb2939a05e979d05f8ec01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the local currencies of the member countries, apart from the Indian rupee and the Brazilian real'),
            ('B', 'only the US dollar'),
            ('C', 'only the renminbi'),
            ('D', 'the renminbi, the rupee and the real')
           ) as v(label, option_text)
 where q.question_hash = 'be7fb9bdd1fb2939a05e979d05f8ec01'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'India is the largest contributor of the troops to the United Nations peacekeeping operations and the Indian contingent is drawn largely from:',
    'The Indian peacekeepers are drawn from the central armed police forces, the state police forces, the engineering units and the medical staff, and the government has consistently expanded the deployment.',
    'medium',
    'Ministry of External Affairs',
    null,
    '743143cb9c9629dd2aafbf3aadceb905'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '743143cb9c9629dd2aafbf3aadceb905'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the civilian volunteers'),
            ('B', 'the border security forces only'),
            ('C', 'the central armed police forces and the state police forces'),
            ('D', 'the armed forces of the States only')
           ) as v(label, option_text)
 where q.question_hash = '743143cb9c9629dd2aafbf3aadceb905'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Indian Ocean Rim Association'' is a:',
    'The IORA, with its headquarters in Mauritius, has a three-tier structure of the member states, the dialogue partners and the the states of the Indian Ocean rim, and it works on the maritime safety, the fisheries and the trade liberalisation.',
    'hard',
    'Ministry of External Affairs',
    null,
    '53102f49a68f670f4bf02363f0da67c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53102f49a68f670f4bf02363f0da67c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'organisation of the littoral states only'),
            ('B', 'a military alliance of the Indian Ocean nations'),
            ('C', 'an economic union of the east African countries'),
            ('D', 'three-tier organisation of the littoral states of the Indian Ocean, the mainland nations and the overseas territories')
           ) as v(label, option_text)
 where q.question_hash = '53102f49a68f670f4bf02363f0da67c3'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Sagar'' vision of India''s engagement with the Indian Ocean, unveiled at the first IORA summit, emphasizes:',
    'The Sagar vision, articulated by the Prime Minister at the first IORA summit in 2015, emphasises the peace, the growth and the prosperity of the Indian Ocean region and follows the principles of the freedom of navigation, the respect for the sovereignty of the coastal states and the peaceful resolution of the disputes.',
    'hard',
    'Ministry of External Affairs',
    null,
    '82eb5de585a716aa3413254fea1e7ec1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '82eb5de585a716aa3413254fea1e7ec1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the peaceful, the growth and the prosperity of the Indian Ocean region'),
            ('B', 'the naval dominance of the Indian Ocean'),
            ('C', 'the commercial monopoly of the Indian ports'),
            ('D', 'the collective defence of the island states')
           ) as v(label, option_text)
 where q.question_hash = '82eb5de585a716aa3413254fea1e7ec1'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''International North-South Transport Corridor'' connects:',
    'The INSTC is the proposed corridor that would link the ports of the Persian Gulf and the Indian Ocean with the ports of Russia through the territory of Iran, and the concept was first announced at the Russia-India-China summit in 2016.',
    'hard',
    'Ministry of External Affairs',
    null,
    'd0477f87b33659c1ffd3e069ce4c4df2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0477f87b33659c1ffd3e069ce4c4df2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Baltic Sea and the Black Sea'),
            ('B', 'the ports of the Persian Gulf and the Indian Ocean with the Russian ports'),
            ('C', 'Europe and South America'),
            ('D', 'India and Japan')
           ) as v(label, option_text)
 where q.question_hash = 'd0477f87b33659c1ffd3e069ce4c4df2'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Bilateral Currency Swap'' arrangements of the RBI are with:',
    'The RBI has entered into the bilateral currency swap agreements with the central banks of the United States, the United Kingdom, the UAE, the Japan, the Switzerland and the others, to provide the foreign exchange liquidity during the crisis.',
    'medium',
    'RBI',
    null,
    '35b90dede5df15628a173d9301285018'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '35b90dede5df15628a173d9301285018'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Asian Development Bank alone'),
            ('B', 'the New Development Bank only'),
            ('C', 'the central banks of the United States, the United Kingdom, the UAE, the Japan and the others'),
            ('D', 'only the World Bank')
           ) as v(label, option_text)
 where q.question_hash = '35b90dede5df15628a173d9301285018'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''UN Security Council Resolution 2728'' of 2023:',
    'Resolution 2728, adopted in October 2023, demanded the immediate cessation of the hostilities in Gaza and the release of the hostages and the protection of the civilians, and it also stressed the need for the humanitarian assistance to reach the civilians.',
    'medium',
    'United Nations',
    2023,
    '5f24a128b678cbbc7bfd7bd86dc3828a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f24a128b678cbbc7bfd7bd86dc3828a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'imposed the sanctions on the South Sudan'),
            ('B', 'authorised the use of force in the Mali operation'),
            ('C', 'established the sanctions regime on the ISIL'),
            ('D', 'demanded the immediate cessation of the hostilities in the Gaza Strip and the protection of the civilians')
           ) as v(label, option_text)
 where q.question_hash = '5f24a128b678cbbc7bfd7bd86dc3828a'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''UN General Assembly'' — The 79th session of the United Nations General Assembly was chaired by:',
    'The President of the General Assembly presides over the session and the 78th session was presided by the President of Trinidad and Tobago, and the 79th session was presided over by the President of the 78th session until the election of the new President.',
    'hard',
    'United Nations',
    null,
    'ffa25964e8309ba357f1425c218fbaf7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ffa25964e8309ba357f1425c218fbaf7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Secretary-General of the United Nations'),
            ('B', 'the President of the Security Council for the month'),
            ('C', 'the President of the 78th session from the Republic of Trinidad and Tobago'),
            ('D', 'the President of India')
           ) as v(label, option_text)
 where q.question_hash = 'ffa25964e8309ba357f1425c218fbaf7'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In the context of the World Bank, which of the following is correct?',
    'The India Development Gateway is a World Bank initiative that provides a single window for the information on the development projects, the financing and the results in the country, and it was developed with the Ministry of Finance and the NITI Aayog.',
    'hard',
    'World Bank',
    null,
    '777b6ef66c4bfa464a8ddb2c15d091bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '777b6ef66c4bfa464a8ddb2c15d091bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a single window platform of the World Bank for the development projects and the financing data of the member countries'),
            ('B', 'the India''s own development portal'),
            ('C', 'a database of the UNDP'),
            ('D', 'a platform of the ADB for the private investment')
           ) as v(label, option_text)
 where q.question_hash = '777b6ef66c4bfa464a8ddb2c15d091bf'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Global Partnership for SDGs'' agreement between India and Japan, signed in 2023:',
    'The Global Partnership for SDGs agreement between India and Japan, signed in 2023, provides for a Japanese contribution of USD 50 million for the projects in the sustainable development goals in the areas of the health, the education, the agriculture and the climate action.',
    'hard',
    'Ministry of External Affairs',
    2023,
    '664fba521e0077698faa2f31e69c8595'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '664fba521e0077698faa2f31e69c8595'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provided for the joint patrolling of the Indian Ocean'),
            ('B', 'provided for the cooperation on the SDGs with a contribution of USD 50 million by Japan'),
            ('C', 'provided for the Japanese investment of USD 500 billion in India'),
            ('D', 'created a free trade area between the two countries')
           ) as v(label, option_text)
 where q.question_hash = '664fba521e0077698faa2f31e69c8595'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''G20'' — The ''Global Alliance against Hunger'' launched in 2024 is an initiative of:',
    'The Global Alliance against Hunger was launched at the G20 summit in Rio de Janeiro in 2024 with the aim of promoting the policies that eradicate hunger and the malnutrition, and it is now supported by a large number of the countries.',
    'hard',
    'Ministry of External Affairs',
    2024,
    '956a56f2d04d376ec129b598daedfe82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '956a56f2d04d376ec129b598daedfe82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the United Nations alone'),
            ('B', 'the European Union'),
            ('C', 'the World Bank and the IMF'),
            ('D', 'the G20 under the Brazilian presidency')
           ) as v(label, option_text)
 where q.question_hash = '956a56f2d04d376ec129b598daedfe82'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''BRICS'' — The BRICS expansion in 2024 was announced at the:',
    'The expansion was announced at the Johannesburg summit of August 2023 and the new members were formally included from January 2024, and the membership of the grouping then extended to nine countries and the partner countries.',
    'hard',
    'Ministry of External Affairs',
    null,
    '6a9a90570a5ecdf021dfa60d66b44328'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6a9a90570a5ecdf021dfa60d66b44328'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'New Delhi summit of 2021'),
            ('B', 'Johannesburg summit of 2023'),
            ('C', 'Kazan summit of 2024'),
            ('D', 'Beijing summit of 2023')
           ) as v(label, option_text)
 where q.question_hash = '6a9a90570a5ecdf021dfa60d66b44328'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In the context of the RCEP, which of the following is correct?',
    'The Agreement on the Trade in Goods under the RCEP framework entered into force for India on 1 January 2022, and it was the first such agreement that involved the accession of the third country, that is the ASEAN.',
    'medium',
    'Ministry of Commerce and Industry',
    null,
    '5ffd3243da717b1c6901a9e859058f61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5ffd3243da717b1c6901a9e859058f61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 June 2021'),
            ('B', '1 January 2019'),
            ('C', '1 January 2022'),
            ('D', '1 January 2020')
           ) as v(label, option_text)
 where q.question_hash = '5ffd3243da717b1c6901a9e859058f61'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Consider the following statements. Which of them is correct with regard to the Ministry of External Affairs?',
    'The Shanghai Convention on Combating Terrorism was signed in June 2001 in Shanghai, and it provides the legal framework for the member states of the SCO to cooperate against the terrorism, the separatism and the extremism.',
    'hard',
    'Standard Reference',
    null,
    'b1d204716389b70f3e7dd93bbe1271bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b1d204716389b70f3e7dd93bbe1271bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2001'),
            ('B', '1999'),
            ('C', '2005'),
            ('D', '1995')
           ) as v(label, option_text)
 where q.question_hash = 'b1d204716389b70f3e7dd93bbe1271bb'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following is correct in the case of the SCO?',
    'The Regional Anti-Terrorist Structure of the SCO, created in 2002, has its permanent Secretariat in Moscow, and it coordinates the anti-terrorism efforts of the member states.',
    'hard',
    'Standard Reference',
    null,
    '267583fd7bdbf5f0dff111cecf4752a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '267583fd7bdbf5f0dff111cecf4752a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Astana'),
            ('B', 'Beijing'),
            ('C', 'Moscow'),
            ('D', 'Shanghai')
           ) as v(label, option_text)
 where q.question_hash = '267583fd7bdbf5f0dff111cecf4752a4'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following statements is/are correct in relation to the nine years?',
    'The judges of the International Court of Justice are elected by the General Assembly and the Security Council for a term of nine years, and the seat of the Court is at The Hague.',
    'medium',
    'United Nations',
    null,
    'd64ad8980424dc29689a23500b4bee5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd64ad8980424dc29689a23500b4bee5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'nine years'),
            ('B', 'six years'),
            ('C', 'three years'),
            ('D', 'twelve years')
           ) as v(label, option_text)
 where q.question_hash = 'd64ad8980424dc29689a23500b4bee5d'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following is correct in the case of the NATO?',
    'The North Atlantic Council is the principal political forum and the decision-making body of the alliance, and the NATO Secretary General chairs it, and the alliance''s Article 5 provides for the collective defence.',
    'medium',
    'Standard Reference',
    null,
    'f6de48143534edc7ba013f8eee9a4dc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f6de48143534edc7ba013f8eee9a4dc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'military command of the alliance'),
            ('B', 'civilian agency for the procurement'),
            ('C', 'the body that handles the nuclear policy'),
            ('D', 'principal political forum and the decision-making body of the alliance')
           ) as v(label, option_text)
 where q.question_hash = 'f6de48143534edc7ba013f8eee9a4dc5'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following is correct in the case of the Commonwealth?',
    'The Secretariat of the Commonwealth is located at Marlborough House in London and the organisation has fifty-six members, with the Head of the Commonwealth being the British monarch.',
    'medium',
    'Standard Reference',
    null,
    'f99b93c64bca551639a5f470c2afd6e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f99b93c64bca551639a5f470c2afd6e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva'),
            ('B', 'London'),
            ('C', 'New Delhi'),
            ('D', 'Nairobi')
           ) as v(label, option_text)
 where q.question_hash = 'f99b93c64bca551639a5f470c2afd6e9'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Consider the following statements. Which of them is correct with regard to the Lusophone?',
    'The CPLP has its headquarters in Lisbon and it brings together the Portuguese speaking countries of Africa, Europe and Asia, with the lusophone community numbering about 250 million people.',
    'medium',
    'Standard Reference',
    null,
    '362b6bfb9e348741bcaa25f46867b1a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '362b6bfb9e348741bcaa25f46867b1a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maputo'),
            ('B', 'Lisbon'),
            ('C', 'Brasilia'),
            ('D', 'Luanda')
           ) as v(label, option_text)
 where q.question_hash = '362b6bfb9e348741bcaa25f46867b1a5'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which of the following is correct in the case of the Indian Ocean Rim Association?',
    'The Chagos Archipelago hosts the Diego Garcia base in the Indian Ocean, and the sovereignty and the transfer of the archipelago to Mauritius has been a long standing issue in the Assembly of the United Nations and the subject of an advisory opinion of the ICJ.',
    'hard',
    'Standard Reference',
    null,
    '70c2fe6e496433a180f4ae69d6728330'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '70c2fe6e496433a180f4ae69d6728330'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'its location in the Pacific Ocean'),
            ('B', 'its being the world''s largest coral atoll of the Atlantic'),
            ('C', 'its location in the Indian Ocean, which hosts the Diego Garcia base used by the United States and the United Kingdom'),
            ('D', 'its rich bauxite deposits')
           ) as v(label, option_text)
 where q.question_hash = '70c2fe6e496433a180f4ae69d6728330'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''Pacific'' — The ''Pacific Islands Forum'' has its Secretariat at:',
    'The Secretariat of the Pacific Islands Forum is based at Suva in Fiji, and the organisation of the Pacific island states works on the free movement, the fisheries, the climate change and the development financing.',
    'hard',
    'Standard Reference',
    null,
    'ce33bbb87297f7485648beb798ab1d4f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ce33bbb87297f7485648beb798ab1d4f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Suva, Fiji'),
            ('B', 'Noumea, New Caledonia'),
            ('C', 'Port Vila, Vanuatu'),
            ('D', 'Apia, Samoa')
           ) as v(label, option_text)
 where q.question_hash = 'ce33bbb87297f7485648beb798ab1d4f'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''India and the ''IISS'' — The ''International Institute for Strategic Studies'' is based at:',
    'The IISS, one of the world''s leading think tanks on the strategic studies, is based in London and it publishes the Military Balance and the Strategic Survey every year.',
    'medium',
    'Standard Reference',
    null,
    '035694a7f50145d4792694d2c5156772'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '035694a7f50145d4792694d2c5156772'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Washington DC'),
            ('B', 'Brussels'),
            ('C', 'Paris'),
            ('D', 'London')
           ) as v(label, option_text)
 where q.question_hash = '035694a7f50145d4792694d2c5156772'
on conflict (question_id, label) do nothing;

commit;
