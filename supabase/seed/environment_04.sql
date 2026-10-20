-- =============================================================================
-- environment_04.sql — environment question pack, part 04
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Consider the following statements. Which of them is correct with regard to the sewage?',
    'The Sewage (Management and Disposal) Rules of 2014 prescribe the treatment and the disposal of the sewage and the use of the treated waste water for the city.',
    'medium',
    'Standard Reference',
    null,
    'd7a8d8c0c32d1c1247ae0b5553cb9469'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd7a8d8c0c32d1c1247ae0b5553cb9469'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rules are of 2000'),
            ('B', 'The Sewage (Management and Disposal) Rules of 2014 prescribe the treatment and the disposal'),
            ('C', 'The rules are of 1998'),
            ('D', 'There are no rules')
           ) as v(label, option_text)
 where q.question_hash = 'd7a8d8c0c32d1c1247ae0b5553cb9469'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The single-use plastic items are:',
    'The identified single-use plastic items include the straws, the plates, the cups, the cutlery, the plastic carry bags, the toothpicks and the thin plastic films.',
    'medium',
    'Standard Reference',
    null,
    '4053feb659786d8d887c51eef0d6e67c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4053feb659786d8d887c51eef0d6e67c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the straws'),
            ('B', 'the PET bottles'),
            ('C', 'the straws, the plates, the cups, the cutlery and the plastic carry bags and the toothpicks'),
            ('D', 'only the plastic bags')
           ) as v(label, option_text)
 where q.question_hash = '4053feb659786d8d887c51eef0d6e67c'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following statements regarding the National Recycling is correct?',
    'The National Recycling Policy of 2021 and the Plastic Waste Management Rules of 2022 together aim to double the plastic waste recycling by 2025.',
    'hard',
    'Standard Reference',
    null,
    'c2e226ae02b92358f9734465ac6792d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c2e226ae02b92358f9734465ac6792d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Recycling Policy of 2021 and the Plastic Waste Management Rules of 2022'),
            ('B', 'It is a policy of 2015'),
            ('C', 'There is no such policy'),
            ('D', 'It is of 2009')
           ) as v(label, option_text)
 where q.question_hash = 'c2e226ae02b92358f9734465ac6792d2'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The fly ash of the thermal power plants is:',
    'The fly ash and the bottom ash of the thermal power plants are used in the cement, the bricks, the road construction and the mine filling, and the ash utilisation is promoted by the CPCB.',
    'medium',
    'Standard Reference',
    null,
    'f18d75c8c51e90d099c0bab0fe0a1c22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f18d75c8c51e90d099c0bab0fe0a1c22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a hazardous waste'),
            ('B', 'dumped in the rivers'),
            ('C', 'used as the fertiliser'),
            ('D', 'used in the cement and the bricks and the road building')
           ) as v(label, option_text)
 where q.question_hash = 'f18d75c8c51e90d099c0bab0fe0a1c22'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Public Health Act of 1894 is:',
    'The Public Health Act of 1894 is the parent of the environmental laws in India and the EPA of 1986 provided the umbrella framework.',
    'hard',
    'Standard Reference',
    null,
    'c7d8880624d7e325ac28fd32b4967d0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c7d8880624d7e325ac28fd32b4967d0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no such act'),
            ('B', 'the parent of the environmental laws in India'),
            ('C', 'of 1947'),
            ('D', 'of 1986')
           ) as v(label, option_text)
 where q.question_hash = 'c7d8880624d7e325ac28fd32b4967d0d'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''National Mission for the Oceans'' was announced in:',
    'The National Mission for the Oceans was announced in 2023 to build a blueprint for the sustainable management of the oceans with the science and the technology, the governance and the partnerships.',
    'hard',
    'Standard Reference',
    null,
    'c0b991d903165042d8d0821c39768dca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c0b991d903165042d8d0821c39768dca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2021'),
            ('C', '2023'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'c0b991d903165042d8d0821c39768dca'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The National Blue Economy Policy of 2021 covers:',
    'The National Blue Economy Policy of 2021 covers all the economic activities of the oceans, the coastal areas and the marine and the coastal resources, with the vision of a sustainable and prosperous blue economy.',
    'medium',
    'Standard Reference',
    2021,
    '59da0d089ecbc7d35d8feed8a99e47e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '59da0d089ecbc7d35d8feed8a99e47e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the shipping'),
            ('B', 'the economic activities of the oceans, the coastal areas and the marine resources'),
            ('C', 'only the fisheries'),
            ('D', 'a state policy')
           ) as v(label, option_text)
 where q.question_hash = '59da0d089ecbc7d35d8feed8a99e47e7'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'National Inland Navigation Development is:',
    'The National Inland Navigation Development Programme is the programme of the development of the four National Waterways of the Ganga, the Brahmaputra, the West Coast Canal and the East Coast Canal.',
    'medium',
    'Standard Reference',
    null,
    '6a0ceb704cc1d4bfd188a86700c9664f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a0ceb704cc1d4bfd188a86700c9664f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the programme of the development of the National Waterways 1, 2, 3 and 4'),
            ('B', 'a port modernisation programme'),
            ('C', 'a fisheries programme'),
            ('D', 'a shipping subsidy')
           ) as v(label, option_text)
 where q.question_hash = '6a0ceb704cc1d4bfd188a86700c9664f'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Which of the following statements regarding the CRZ is correct?',
    'The Coastal Regulation Zone Notification of 2019 designated the CRZ I to the CRZ IV with the varying degrees of the permitted activities, and it replaced the 1991 notification.',
    'medium',
    'Standard Reference',
    2019,
    '72f9d6dd0be7798a3c179776b3a82dfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '72f9d6dd0be7798a3c179776b3a82dfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CRZ were notified in 1991 only'),
            ('B', 'The CRZ apply to the inland waters'),
            ('C', 'There is no CRZ notification'),
            ('D', 'The Coastal Regulation Zones of 2019 designate the areas of the CRZ I to the CRZ IV')
           ) as v(label, option_text)
 where q.question_hash = '72f9d6dd0be7798a3c179776b3a82dfd'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'In the context of the Coastal Regulation, which of the following is correct?',
    'The CRZ I is the critical ecological zone where the marine activities are not permitted and the CRZ IV is the least restricted of the four.',
    'medium',
    'Standard Reference',
    null,
    'a8b69340247a60c78db9392de82e3424'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8b69340247a60c78db9392de82e3424'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CRZ IV is the most protected'),
            ('B', 'The CRZ applies only to the islands'),
            ('C', 'The CRZ I is the protected and the critical ecological zone and no activity is permitted'),
            ('D', 'The CRZ I allows the industrial development')
           ) as v(label, option_text)
 where q.question_hash = 'a8b69340247a60c78db9392de82e3424'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The blue water fishing is the deep sea fishing and the brackish and the fresh water fisheries are:',
    'The fisheries of India are the marine, the brackish and the fresh water and the blue water or the deep sea fishing is the one with the growth potential.',
    'easy',
    'Standard Reference',
    null,
    '405f939d005c79736d056e4b24e97f0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '405f939d005c79736d056e4b24e97f0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the others'),
            ('B', 'the marine'),
            ('C', 'no fresh water fishery in India'),
            ('D', 'The fishing is the major source of the GDP')
           ) as v(label, option_text)
 where q.question_hash = '405f939d005c79736d056e4b24e97f0b'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Department of Fisheries'' was created as a separate ministry in:',
    'The Department of Fisheries was created as a separate ministry in 2019 with the aim of the sustainable development of the fisheries and the aquaculture.',
    'medium',
    'Standard Reference',
    2019,
    '9dd2c507fdc1bc473a41bd8888e35bff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9dd2c507fdc1bc473a41bd8888e35bff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2005'),
            ('C', '2019'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = '9dd2c507fdc1bc473a41bd8888e35bff'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Blue Revolution refers to:',
    'The Blue Revolution, the rapid growth of the fish and the shrimp production, is the reason for the creation of the separate Department of Fisheries in 2019.',
    'medium',
    'Standard Reference',
    null,
    'c916fb557b55d25c5c345d77afae1d80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c916fb557b55d25c5c345d77afae1d80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the offshore oil'),
            ('B', 'the rapid increase of the fish production in the country and it is the reason for the separate ministry'),
            ('C', 'the milk production'),
            ('D', 'the horticulture')
           ) as v(label, option_text)
 where q.question_hash = 'c916fb557b55d25c5c345d77afae1d80'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The Pradhan Mantri Matsya Sampada Yojana has:',
    'The Pradhan Mantri Matsya Sampada Yojana, launched in 2020 with an investment of over Rs. 20,000 crore, is the investment mission for the fisheries and the aquaculture.',
    'hard',
    'Standard Reference',
    null,
    'c908efca311ee44d798112bfa1e543b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c908efca311ee44d798112bfa1e543b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an outlay of Rs. 2,000 crore'),
            ('B', 'a dairy scheme'),
            ('C', 'a horticulture scheme'),
            ('D', 'the investment of over Rs. 20,000 crore for the fisheries')
           ) as v(label, option_text)
 where q.question_hash = 'c908efca311ee44d798112bfa1e543b3'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'Which of the following statements regarding the Seafood Export is correct?',
    'The India is the second largest exporter of the fish and the seafood products in the world and the marine products are the largest of the agricultural exports by the value.',
    'medium',
    'Standard Reference',
    null,
    '5fee041d7ec170ebda1a5f3ac4023323'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5fee041d7ec170ebda1a5f3ac4023323'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India is the largest exporter of the fish'),
            ('B', 'India does not export the fish'),
            ('C', 'India is the fifth largest exporter'),
            ('D', 'The India is the second largest exporter of the fish and the seafood products')
           ) as v(label, option_text)
 where q.question_hash = '5fee041d7ec170ebda1a5f3ac4023323'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The mangroves are:',
    'The mangroves are the nurseries of the marine fisheries and the storehouses of the blue carbon and they are among the most productive of the ecosystems per unit area.',
    'medium',
    'Standard Reference',
    null,
    '3fc4b52524374279fd1dd39cafff7010'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3fc4b52524374279fd1dd39cafff7010'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the industrial plantations'),
            ('B', 'the nurseries of the fisheries and they are the storehouses of the carbon'),
            ('C', 'the recreational forests'),
            ('D', 'the fuel forests')
           ) as v(label, option_text)
 where q.question_hash = '3fc4b52524374279fd1dd39cafff7010'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Puga and the Puga Chhunga in the Ladakh and the Manikaran in the Kerala are:',
    'The Puga, the Chhunga and the Manikaran are the known geothermal fields of India and the Manikaran has the 17 MW plant.',
    'hard',
    'Standard Reference',
    null,
    '36c7b53a8ef1ee04e7b966352bfbb6a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '36c7b53a8ef1ee04e7b966352bfbb6a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the Assam'),
            ('B', 'in the Odisha'),
            ('C', 'the geothermal fields'),
            ('D', 'in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '36c7b53a8ef1ee04e7b966352bfbb6a7'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Tidal energy'' in India:',
    'The tidal energy is at the experimental stage in India and the Gulf of Kutch and the Gulf of Cambay have the potential with the Gulf of Kutch having the world''s first tidal mill.',
    'medium',
    'Standard Reference',
    null,
    '6445b6a0933ce0b2cf31804973a7172d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6445b6a0933ce0b2cf31804973a7172d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is still at the experimental stage and the Gulf of Kutch and the Gulf of Cambay have the potential'),
            ('B', 'Is the largest source of the renewable energy'),
            ('C', 'Is not viable in India'),
            ('D', 'Is already commercial in the Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '6445b6a0933ce0b2cf31804973a7172d'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'In the context of the Wave energy, which of the following is correct?',
    'The Vizhinjam near the Thiruvananthapuram is the wave energy project of the Kerala and it was the first of its kind in the country.',
    'hard',
    'Standard Reference',
    null,
    'bc64e4f311f8b90b3c1f7234cf286342'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bc64e4f311f8b90b3c1f7234cf286342'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is in the Tamil Nadu'),
            ('B', 'It is a solar project'),
            ('C', 'It was never attempted'),
            ('D', 'The Vizhinjam is the wave energy project of the Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'bc64e4f311f8b90b3c1f7234cf286342'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The biogas and the biomass are:',
    'The biogas and the biomass are the renewables that are largely used for the cooking in the rural India and the gobar gas plants are the means of the decentralised supply.',
    'medium',
    'Standard Reference',
    null,
    'f052dd7f5088f0ff2d423ef1c6983e98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f052dd7f5088f0ff2d423ef1c6983e98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the industrial waste'),
            ('B', 'a fossil fuel'),
            ('C', 'the renewable sources that are largely used for the cooking in the rural India'),
            ('D', 'the largest of the renewables')
           ) as v(label, option_text)
 where q.question_hash = 'f052dd7f5088f0ff2d423ef1c6983e98'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Which of the following statements regarding the Small hydro is correct?',
    'The small hydro, the hydro below 25 MW, is the most neglected of the renewables in India and the government has a target of 2,000 MW of the small hydro by 2022.',
    'hard',
    'Standard Reference',
    null,
    '47fe2e4686546fef8b4857609a4b7bac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '47fe2e4686546fef8b4857609a4b7bac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the hydro above 100 MW'),
            ('B', 'Is the hydro below 25 MW and it is the most neglected of the renewables in India'),
            ('C', 'Is the largest of the renewables'),
            ('D', 'Is not a renewable')
           ) as v(label, option_text)
 where q.question_hash = '47fe2e4686546fef8b4857609a4b7bac'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The GRIHA and the IGBC are:',
    'The GRIHA and the IGBC are the Indian green building rating systems and the LEED is the American one.',
    'easy',
    'Standard Reference',
    null,
    '9fc576443e8e231dc3199d7990079b89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9fc576443e8e231dc3199d7990079b89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Indian rating systems for the green buildings'),
            ('B', 'the certification of the organic farming'),
            ('C', 'the standards of the heritage buildings'),
            ('D', 'the wetland programmes')
           ) as v(label, option_text)
 where q.question_hash = '9fc576443e8e231dc3199d7990079b89'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'Renewable purchase obligation requires:',
    'The Renewable Purchase Obligation, under the Electricity Act of 2003, requires the distribution licensees to purchase a specified share of their consumption from the renewable sources.',
    'hard',
    'Standard Reference',
    null,
    '3b09b2b921adda9c07003ae5b56c6bad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3b09b2b921adda9c07003ae5b56c6bad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the distribution licensees to purchase a specified share of the renewable energy'),
            ('B', 'the subsidy of the solar panels'),
            ('C', 'the obligation of the states to build the plants'),
            ('D', 'the mandate of the Ministry of New and the Renewable Energy')
           ) as v(label, option_text)
 where q.question_hash = '3b09b2b921adda9c07003ae5b56c6bad'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Energy Conservation Act of 2001 and the PAT and the BEE are:',
    'The Energy Conservation Act of 2001 with the Perform, Achieve and Trade and the BEE are the instruments of the energy efficiency in the industry.',
    'medium',
    'Standard Reference',
    null,
    '6a6ad9c8e9f4a749968282fc6460d33e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a6ad9c8e9f4a749968282fc6460d33e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the subsidy of the PM Surya Ghar'),
            ('B', 'the Green Energy Corridor'),
            ('C', 'the instruments of the energy efficiency'),
            ('D', 'the mandatory of the renewable purchase obligation')
           ) as v(label, option_text)
 where q.question_hash = '6a6ad9c8e9f4a749968282fc6460d33e'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'In the context of the Green Open, which of the following is correct?',
    'The Green Open Access Rules of 2022 provide for the sharing of the renewable capacity in the distribution network and they give the consumers the choice of the green power.',
    'medium',
    'Standard Reference',
    2022,
    '4fee9f1598ce268b1fd156ebb53f3bc4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4fee9f1598ce268b1fd156ebb53f3bc4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is about the fertiliser'),
            ('B', 'It is about the crop insurance'),
            ('C', 'It is a fisheries scheme'),
            ('D', 'The Green Open Access Rules of 2022 allow the sharing of the renewable capacity in the distribution network')
           ) as v(label, option_text)
 where q.question_hash = '4fee9f1598ce268b1fd156ebb53f3bc4'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Kudankulam and the Kakrapar and the Narora are:',
    'The Kudankulam in the Tamil Nadu, the Kakrapar and the Narora in the Gujarat and the Rawatbhata in the Rajasthan are the nuclear power stations of India.',
    'easy',
    'Standard Reference',
    null,
    'b2ec2fb7f30b9fbc20c4eed206b7d70c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2ec2fb7f30b9fbc20c4eed206b7d70c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no nuclear power'),
            ('B', 'the nuclear power stations of India'),
            ('C', 'the thermal plants'),
            ('D', 'the only nuclear plant')
           ) as v(label, option_text)
 where q.question_hash = 'b2ec2fb7f30b9fbc20c4eed206b7d70c'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Small modular reactor'' in India:',
    'The BARC and the DAE are working on the indigenous small modular reactor design of about 20 MWe for the wide deployment and it is a part of the 2047 vision.',
    'hard',
    'Standard Reference',
    null,
    '296f9da522ca569141bc45930cc4dd28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '296f9da522ca569141bc45930cc4dd28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The BARC and the DAE are working on the indigenous small modular reactor design'),
            ('B', 'India has already commissioned them'),
            ('C', 'They are only in the United States'),
            ('D', 'They are the coal-based plants')
           ) as v(label, option_text)
 where q.question_hash = '296f9da522ca569141bc45930cc4dd28'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The hydro of the large size is:',
    'The large hydro is the most neglected of the renewables in India and it has a low cost with the low carbon footprint and the projects are delayed by the environmental clearances.',
    'medium',
    'Standard Reference',
    null,
    '01511afcb897f8b3f7c527bbbca8c7b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '01511afcb897f8b3f7c527bbbca8c7b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest carbon footprint'),
            ('B', 'the most neglected of the renewables in the country'),
            ('C', 'the largest renewable'),
            ('D', 'not a renewable')
           ) as v(label, option_text)
 where q.question_hash = '01511afcb897f8b3f7c527bbbca8c7b1'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'In the context of the Electric vehicle, which of the following is correct?',
    'The India has set a target of the 30 per cent of the private cars, the 70 per cent of the commercial cars, the 80 per cent of the two and three wheelers and the 15 per cent of the buses by 2030.',
    'medium',
    'Standard Reference',
    null,
    'bdd3ec34a3bf65da68be5bebf184490d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bdd3ec34a3bf65da68be5bebf184490d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There is no target'),
            ('B', 'The target is of 10 per cent'),
            ('C', 'The target is for 2050'),
            ('D', 'The India has a target of the 30 per cent of the private cars and the 70 per cent of the commercial vehicles by 2030')
           ) as v(label, option_text)
 where q.question_hash = 'bdd3ec34a3bf65da68be5bebf184490d'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The green hydrogen is:',
    'The green hydrogen is produced from the renewable energy through the electrolysis with no carbon emissions and it is the key to the decarbonisation of the industry and the transport.',
    'medium',
    'Standard Reference',
    null,
    'ed8d77aaad80e2b4c58c26bb7746fcf9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed8d77aaad80e2b4c58c26bb7746fcf9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the hydrogen produced from the coal'),
            ('B', 'a mixture of the hydrogen and the oxygen'),
            ('C', 'the hydrogen produced with the renewable energy without the carbon emissions'),
            ('D', 'the hydrogen produced from the natural gas')
           ) as v(label, option_text)
 where q.question_hash = 'ed8d77aaad80e2b4c58c26bb7746fcf9'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Energising India and the Integrated Energy Planning are:',
    'The Ministry of Power uses the ''Energising India'' and the Integrated Energy Planning for the coordinated planning of the energy and the demand.',
    'hard',
    'Standard Reference',
    null,
    'cb4a5c3d191954fd9d5252710d2fb002'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cb4a5c3d191954fd9d5252710d2fb002'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the tools of the Ministry of Power'),
            ('B', 'the environmental conventions'),
            ('C', 'the fisheries schemes'),
            ('D', 'the industrial policies')
           ) as v(label, option_text)
 where q.question_hash = 'cb4a5c3d191954fd9d5252710d2fb002'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The Energy Security of the India is:',
    'The India imports about 85 per cent of its crude oil and the energy security is a challenge with the price volatility and the import bill.',
    'medium',
    'Standard Reference',
    null,
    'b84740f6f2c63e7f89102b4bc48b7707'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b84740f6f2c63e7f89102b4bc48b7707'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'self-sufficient in the oil'),
            ('B', '25 per cent'),
            ('C', 'not a challenge'),
            ('D', 'a challenge with the import dependence of about 85 per cent of the oil')
           ) as v(label, option_text)
 where q.question_hash = 'b84740f6f2c63e7f89102b4bc48b7707'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Consider the following statements. Which of them is correct with regard to the Environment Impact Assessment?',
    'The Environment Impact Assessment Notification of 2006, in the wake of the 1991 amendment, lists the projects requiring the clearance and the categories with the conditions.',
    'medium',
    'Standard Reference',
    null,
    '381c0587ade147339e1de64800093591'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '381c0587ade147339e1de64800093591'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is of 1986'),
            ('B', 'The EIA Notification of 2006 lists the projects requiring the clearance and the Categorisation of the projects'),
            ('C', 'It is of 1991'),
            ('D', 'It is of 2019')
           ) as v(label, option_text)
 where q.question_hash = '381c0587ade147339e1de64800093591'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The EIA Notification has:',
    'The EIA Notification has the two schedules, the first with the projects requiring the prior environmental clearance and the second with the ones requiring the post-project monitoring.',
    'hard',
    'Standard Reference',
    null,
    '5c259ea20f65727c46aa21d2e95df30b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5c259ea20f65727c46aa21d2e95df30b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only to the mining'),
            ('B', 'only to the thermal power'),
            ('C', 'the two schedules of the projects requiring the prior clearance and the ones requiring the post-clearance monitoring'),
            ('D', 'only one schedule')
           ) as v(label, option_text)
 where q.question_hash = '5c259ea20f65727c46aa21d2e95df30b'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Fodder Policy of 2018 and the fodder banks are:',
    'The National Fodder Policy of 2018 with the fodder banks and the silvipasture is a measure for the livestock sector and the fodder is a serious constraint in the dry areas.',
    'medium',
    'Standard Reference',
    null,
    '6a015745b861001c7b574072d22b12eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6a015745b861001c7b574072d22b12eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the measures for the livestock'),
            ('B', 'a fisheries policy'),
            ('C', 'a forest policy'),
            ('D', 'a crop insurance scheme')
           ) as v(label, option_text)
 where q.question_hash = '6a015745b861001c7b574072d22b12eb'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Innovation Foundation'' is:',
    'The National Innovation Foundation, an autonomous body of the MeitY, promotes the grassroots innovations and it is the promoter of the Honey Bee Network.',
    'hard',
    'Standard Reference',
    null,
    'ed5e043b264f53100391ee472335c3ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed5e043b264f53100391ee472335c3ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A state body'),
            ('B', 'A university'),
            ('C', 'An autonomous body of the MeitY for the grassroots innovations'),
            ('D', 'A private body')
           ) as v(label, option_text)
 where q.question_hash = 'ed5e043b264f53100391ee472335c3ce'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The smog of the Delhi is:',
    'The smog of the Delhi is a photochemical mixture of the ozone, the nitrogen dioxide, the volatile organic compounds and the fine particulate matter and it is a winter phenomenon.',
    'medium',
    'Standard Reference',
    null,
    '4b34ecd835c30800b0c5f367424fe53a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4b34ecd835c30800b0c5f367424fe53a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the sulphur dioxide'),
            ('B', 'a mix of the ozone, the nitrogen dioxide and the particulate matter'),
            ('C', 'only the dust'),
            ('D', 'only the carbon dioxide')
           ) as v(label, option_text)
 where q.question_hash = '4b34ecd835c30800b0c5f367424fe53a'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Stubble burning is:',
    'The stubble burning of the paddy in the Punjab, the Haryana and the western Uttar Pradesh is a major cause of the winter smog of the Delhi.',
    'easy',
    'Standard Reference',
    null,
    'd1f321f4fd0b2a6c750c3c489ef68b94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd1f321f4fd0b2a6c750c3c489ef68b94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a practice of the Kerala'),
            ('B', 'banned in the Punjab only'),
            ('C', 'the burning of the forest'),
            ('D', 'the burning of the paddy stubble in the Punjab, the Haryana and the UP')
           ) as v(label, option_text)
 where q.question_hash = 'd1f321f4fd0b2a6c750c3c489ef68b94'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Airshed'' of the National Clean Air Programme:',
    'The National Clean Air Programme identified the 131 non-attainment cities in the 78 airsheds for the non-polluting fuels and the air quality standards.',
    'medium',
    'Standard Reference',
    null,
    'ab104fb7d97eaf230e7193a1a669557a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ab104fb7d97eaf230e7193a1a669557a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the coastal regions'),
            ('B', 'Are the non-attainment cities with the air quality standards and the non-polluting fuels'),
            ('C', 'Are the industrial areas'),
            ('D', 'Are the forest reserves')
           ) as v(label, option_text)
 where q.question_hash = 'ab104fb7d97eaf230e7193a1a669557a'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'In the context of the NCAP, which of the following is correct?',
    'The National Clean Air Programme was launched in January 2019 as the national air quality policy with the city-specific action plans.',
    'medium',
    'Standard Reference',
    2019,
    '02e644ee286a5f6536990379938540e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02e644ee286a5f6536990379938540e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was launched in 2019 as the national clean air programme'),
            ('B', 'It was launched in 2015'),
            ('C', 'It is a water programme'),
            ('D', 'It is a waste programme')
           ) as v(label, option_text)
 where q.question_hash = '02e644ee286a5f6536990379938540e1'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The Swachh Bharat Mission was:',
    'The Swachh Bharat Mission was launched in October 2014 and the SBM-U has the three phases of the 2014-2019, the 2019-2021 and the 2021-2026 with the source segregation and the waste management.',
    'easy',
    'Standard Reference',
    null,
    '14a86686ac24032fd49c0b8020eaaee0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '14a86686ac24032fd49c0b8020eaaee0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'launched in 1991'),
            ('B', 'a health mission'),
            ('C', 'a housing mission'),
            ('D', 'launched in 2014 and the national city sanitation programme under the SBM-U')
           ) as v(label, option_text)
 where q.question_hash = '14a86686ac24032fd49c0b8020eaaee0'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Are the informal sector workers of the waste management and the NULM and the Swachh have included:',
    'The waste pickers are the informal workers of the waste management and the Swachh Bharat Mission and the National Urban Livelihood Mission have included them with the identity cards and the equipment and the access to the sanitation facilities.',
    'hard',
    'Standard Reference',
    null,
    '2a882a39349eac4ee30157b5abc674ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a882a39349eac4ee30157b5abc674ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the municipal employees'),
            ('B', 'in the policy'),
            ('C', 'them'),
            ('D', 'from the landfill')
           ) as v(label, option_text)
 where q.question_hash = '2a882a39349eac4ee30157b5abc674ae'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The quality standards were:',
    'The quality standards for the biodegradable and the compostable plastics were notified in 2022 and they became applicable from 1 April 2023 to the products of the large scale producers.',
    'medium',
    'Standard Reference',
    null,
    'ba1347b88521d8de1c0bb64342ea92b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba1347b88521d8de1c0bb64342ea92b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'from 2025'),
            ('B', 'notified in 2022 and the large scale producers have the obligation from April 2023'),
            ('C', 'notified in 2016'),
            ('D', 'no standards')
           ) as v(label, option_text)
 where q.question_hash = 'ba1347b88521d8de1c0bb64342ea92b9'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The C&D Waste Management Rules of 2016 cover:',
    'The Construction and Demolition Waste Management Rules of 2016 cover the debris and the material of the construction and the demolition.',
    'medium',
    'Standard Reference',
    null,
    '47ffb3034d98ca142032d9dfafe32c39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '47ffb3034d98ca142032d9dfafe32c39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the debris of the construction'),
            ('B', 'only the municipal waste'),
            ('C', 'only the plastic'),
            ('D', 'only the biomedical waste')
           ) as v(label, option_text)
 where q.question_hash = '47ffb3034d98ca142032d9dfafe32c39'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following statements regarding the Plastic Waste Management Rules is correct?',
    'The Plastic Waste Management Rules of 2016 require the registration of the producers, the importers, the recyclers and the plastic waste generators and they specify the deadlines for the collection and the recycling.',
    'hard',
    'Standard Reference',
    null,
    '11a48c777007a67814274b9544411e8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '11a48c777007a67814274b9544411e8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Make the collection the municipal responsibility alone'),
            ('B', 'Have no extended producer responsibility'),
            ('C', 'Require the registration of the producers, the importers and the recyclers'),
            ('D', 'Ban only the plastic bags')
           ) as v(label, option_text)
 where q.question_hash = '11a48c777007a67814274b9544411e8a'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Which of the following statements regarding the Biogas plant is correct?',
    'The gobar gas plants convert the cow dung into the biogas for the cooking and the slurry into the biofertiliser for the agriculture, and they are the decentralised rural energy source.',
    'medium',
    'Standard Reference',
    null,
    'ab301b597073b35a941a92d55d12fe68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ab301b597073b35a941a92d55d12fe68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It produces the electricity for the villages'),
            ('B', 'It treats the municipal sewage'),
            ('C', 'It is the coal gasification plant'),
            ('D', 'The gobar gas plants convert the cow dung into the biogas and the slurry into the biofertiliser')
           ) as v(label, option_text)
 where q.question_hash = 'ab301b597073b35a941a92d55d12fe68'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'In the context of the organic manures, which of the following is correct?',
    'The compost and the vermicompost are the organic manures and the Fertiliser (Control) Order of 2009 regulates the biofertilisers and the compost.',
    'medium',
    'Standard Reference',
    null,
    'de75f2cefa7598ace68ee6772be60943'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'de75f2cefa7598ace68ee6772be60943'
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
 where q.question_hash = 'de75f2cefa7598ace68ee6772be60943'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'Consider the following statements. Which of them is correct with regard to the Landfill?',
    'The Legacy Dumps Remediation and the Grievance Redressal Programme of the Swachh Bharat Mission funds the reclamation of the legacy dumps with the PPP model.',
    'hard',
    'Standard Reference',
    null,
    '8acbb3c327873d43862f703a3db27a2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8acbb3c327873d43862f703a3db27a2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a heritage programme'),
            ('B', 'It is a fisheries programme'),
            ('C', 'The Legacy Dumps Remediation Programme of the Swachh Bharat Mission funds the reclamation of the old dumps'),
            ('D', 'It is a programme of the agriculture')
           ) as v(label, option_text)
 where q.question_hash = '8acbb3c327873d43862f703a3db27a2e'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Gross Environment Pollution Index of the CPCB is:',
    'The Gross Environment Pollution Index of the CPCB is computed from the air quality data of the monitoring stations under the National Air Quality Monitoring Programme.',
    'medium',
    'Standard Reference',
    null,
    '8c4eefe21a0e04c2afaa28ac5e3e8498'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8c4eefe21a0e04c2afaa28ac5e3e8498'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an index of the industrial growth'),
            ('B', 'the index of the water quality'),
            ('C', 'the biodiversity index'),
            ('D', 'computed from the air quality data of the monitoring stations')
           ) as v(label, option_text)
 where q.question_hash = '8c4eefe21a0e04c2afaa28ac5e3e8498'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'Which of the following is correct in the case of the National Air Quality Monitoring?',
    'The National Air Quality Monitoring Programme has over 1,000 stations in the 340 cities and the towns of the country and the data is released daily.',
    'medium',
    'Standard Reference',
    null,
    '1262ea7ab00c62aea4a1208a47e99363'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1262ea7ab00c62aea4a1208a47e99363'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has 50 stations'),
            ('B', 'The NAQMP has over 1,000 monitoring stations in the cities and the towns of the country'),
            ('C', 'It has 100 stations'),
            ('D', 'It has 5,000 stations')
           ) as v(label, option_text)
 where q.question_hash = '1262ea7ab00c62aea4a1208a47e99363'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The Centre for Air and the Water is:',
    'The Centre for Air and the Water is the research wing of the CPCB and it conducts the pollution research and the capacity building.',
    'hard',
    'Standard Reference',
    null,
    'd8694040d0d973d1fe2ddc14f74619af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd8694040d0d973d1fe2ddc14f74619af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the research arm of the CPCB for the pollution science'),
            ('B', 'the Supreme Court'),
            ('C', 'a private laboratory'),
            ('D', 'the Indian Institute of Science')
           ) as v(label, option_text)
 where q.question_hash = 'd8694040d0d973d1fe2ddc14f74619af'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Water Policy'' of 2012:',
    'The National Water Policy of 2012 recommends the equitable and the rational use of the water, the basin level planning and the recycling of the treated waste water.',
    'medium',
    'Standard Reference',
    2012,
    '1854a0e181b776e2d215c7d2a497ca5e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1854a0e181b776e2d215c7d2a497ca5e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a power policy'),
            ('B', 'It is a pollution policy'),
            ('C', 'Recommends the equitable distribution of the water and the basin level planning and the recycling'),
            ('D', 'It is about the irrigation only')
           ) as v(label, option_text)
 where q.question_hash = '1854a0e181b776e2d215c7d2a497ca5e'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National River Conservation Plan and the River Action Plan are:',
    'The National River Conservation Plan of 1995 and the River Action Plan of the National Ganga River Basin Authority are the programmes for the conservation of the rivers.',
    'hard',
    'Standard Reference',
    null,
    'c4885218ea932838b9fb2088add34c8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c4885218ea932838b9fb2088add34c8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fisheries programmes'),
            ('B', 'the irrigation programmes'),
            ('C', 'the forest programmes'),
            ('D', 'the programmes of the NGRBA')
           ) as v(label, option_text)
 where q.question_hash = 'c4885218ea932838b9fb2088add34c8b'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'An ''ecotone'' in ecology refers to:',
    'An ecotone is a transition zone between two different biological communities or ecosystems, such as the marshy border between a forest and a grassland, where the species of both the neighbouring communities are usually found.',
    'medium',
    'NCERT Class XII',
    null,
    '007090a5df71258b37d6381633a13854'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '007090a5df71258b37d6381633a13854'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A community of organisms that has reached the climax stage'),
            ('B', 'A transition zone between two different communities or ecosystems'),
            ('C', 'The zone of the ocean where the light does not reach'),
            ('D', 'The layer of the soil in which the waterlogging is maximum')
           ) as v(label, option_text)
 where q.question_hash = '007090a5df71258b37d6381633a13854'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''carrying capacity'' of an environment is:',
    'Carrying capacity is the maximum population size of a species that an environment can support indefinitely with its available resources. The population grows till it reaches the carrying capacity and then stabilises.',
    'medium',
    'NCERT Class XII',
    null,
    'b7a460a357f8e4c859cde95c7d0df0ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7a460a357f8e4c859cde95c7d0df0ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The total biomass produced by the ecosystem in one year'),
            ('B', 'The number of species that can coexist in a habitat'),
            ('C', 'The amount of energy that flows from one trophic level to the next'),
            ('D', 'The maximum size of a population that the environment can sustain indefinitely')
           ) as v(label, option_text)
 where q.question_hash = 'b7a460a357f8e4c859cde95c7d0df0ab'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The association of the fungi with the roots of the higher plants that helps in the absorption of water and minerals is called:',
    'The association of the mycorrhizal fungi with the roots of the plants is a classic example of mutualism, in which the fungus helps the plant in the absorption of water and minerals and the plant supplies the fungus with the carbohydrates that it synthesises.',
    'medium',
    'NCERT Class XI',
    null,
    '29d8b1880b815b11efa5645e578e0c91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '29d8b1880b815b11efa5645e578e0c91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amensalism'),
            ('B', 'Parasitism'),
            ('C', 'Mutualism'),
            ('D', 'Commensalism')
           ) as v(label, option_text)
 where q.question_hash = '29d8b1880b815b11efa5645e578e0c91'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'Ten per cent of the energy of the trophic level is transferred:',
    'The ten per cent law states that only about ten per cent of the energy available at one trophic level is transferred to the next trophic level, the rest being lost as heat through the metabolic processes, which is why the energy pyramids are always upright.',
    'medium',
    'NCERT Class XI',
    null,
    'bcfc52cc6d868bca5d85fc7a4a6bffaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bcfc52cc6d868bca5d85fc7a4a6bffaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ten per cent of the carbon of the atmosphere is taken up by the vegetation'),
            ('B', 'Ten per cent of the energy of the trophic level is transferred to the next trophic level'),
            ('C', 'Ten per cent of the biomass is transferred from one trophic level to the next'),
            ('D', 'Ten per cent of the species of a community are predators')
           ) as v(label, option_text)
 where q.question_hash = 'bcfc52cc6d868bca5d85fc7a4a6bffaa'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''homeostasis'' of an ecosystem refers to:',
    'Homeostasis is the property of a natural system that allows it to maintain a stable internal environment despite the changes in the external conditions, through the negative feedback mechanisms.',
    'medium',
    'NCERT Class XII',
    null,
    '9dcf8f036081f4e30cb09d86e8a6a396'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9dcf8f036081f4e30cb09d86e8a6a396'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ability of an ecosystem to maintain a stable internal environment despite the external changes'),
            ('B', 'The tendency of the species of a community to grow exponentially'),
            ('C', 'The steady decline of the biodiversity with the rise of the temperature'),
            ('D', 'The equal distribution of the individuals of a population in a habitat')
           ) as v(label, option_text)
 where q.question_hash = '9dcf8f036081f4e30cb09d86e8a6a396'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'A species that is found only in a particular geographical area and nowhere else is called:',
    'An endemic species occurs naturally only in a particular geographical area and is absent everywhere else, while an exotic species is one that is found outside its natural range and an invasive species is an exotic species that spreads and causes harm.',
    'easy',
    'NCERT Class XII',
    null,
    '9b57ed0dd5a9dfa646ae1a456d63c121'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9b57ed0dd5a9dfa646ae1a456d63c121'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An endemic species'),
            ('B', 'An exotic species'),
            ('C', 'An invasive species'),
            ('D', 'A keystone species')
           ) as v(label, option_text)
 where q.question_hash = '9b57ed0dd5a9dfa646ae1a456d63c121'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''ex-situ'' conservation of the species involves:',
    'Ex-situ conservation keeps the species outside its natural habitat, for example in the zoos, the botanical gardens, the aquariums, the wildlife parks and the seed banks, while the protection of the species in its natural habitat is in-situ conservation.',
    'easy',
    'NCERT Class XII',
    null,
    'd2b4a6d233e1535617c801d5261d33d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2b4a6d233e1535617c801d5261d33d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The protection of the species in its natural habitat'),
            ('B', 'The maintenance of the species outside its natural habitat, as in the zoos, the botanical gardens and the seed banks'),
            ('C', 'The declaration of an area as a wildlife sanctuary'),
            ('D', 'The control of the trade in the endangered species')
           ) as v(label, option_text)
 where q.question_hash = 'd2b4a6d233e1535617c801d5261d33d1'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''genetic diversity'' in an ecosystem is considered the base of all other biodiversity because:',
    'Genetic diversity, the variability of the genes within a species, provides the raw material for the evolution and for the crop improvement programmes, and it is therefore regarded as the base of all the other forms of biodiversity.',
    'medium',
    'NCERT Class XII',
    null,
    '4039f66ac386a4f9a7fa5518c71eded8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4039f66ac386a4f9a7fa5518c71eded8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the only component that can be measured through the remote sensing'),
            ('B', 'It decides the carrying capacity of the habitat'),
            ('C', 'It determines the total biomass of the ecosystem'),
            ('D', 'It provides the raw material for the evolution of the new species and the new varieties')
           ) as v(label, option_text)
 where q.question_hash = '4039f66ac386a4f9a7fa5518c71eded8'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'A ''biodiversity hotspot'' qualifies for the designation when it has:',
    'A biodiversity hotspot must contain at least 1,500 endemic vascular plants and must have lost at least 70 per cent of its original vegetation. India has four hotspots: the Western Ghats and Sri Lanka, the Himalaya, Indo-Burma and the Sundaland with the Nicobar Islands.',
    'hard',
    'NCERT Class XII',
    null,
    '9fea37bdbd746f856e86795935a49c27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9fea37bdbd746f856e86795935a49c27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'At least 1,500 species of birds and has lost at least 90 per cent of its forests'),
            ('B', 'At least 15,000 endemic plant species and has lost at least 10 per cent of its vegetation'),
            ('C', 'At least 1,500 endemic vascular plants and has lost at least 70 per cent of its original vegetation'),
            ('D', 'At least 150 endemic species and has lost at least 30 per cent of its original vegetation')
           ) as v(label, option_text)
 where q.question_hash = '9fea37bdbd746f856e86795935a49c27'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Sarus crane'' is:',
    'The Sarus crane is the state bird of Uttar Pradesh and is the tallest of the flying birds of the world, standing nearly 1.5 metres tall. It is protected in the Keoladeo National Park of Bharatpur.',
    'medium',
    'Standard Reference',
    null,
    '9413eb4b03486ba7c15526a43310b4e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9413eb4b03486ba7c15526a43310b4e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only crane found in the high alpine meadows of Ladakh'),
            ('B', 'The state bird of Uttar Pradesh and the tallest flying bird of the world'),
            ('C', 'The state bird of Assam and the smallest flying bird of the world'),
            ('D', 'The national bird of India')
           ) as v(label, option_text)
 where q.question_hash = '9413eb4b03486ba7c15526a43310b4e3'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Sangai'', the state animal of Manipur, is:',
    'The Sangai, also called the Manipur brow-antlered deer or the musk deer, is the state animal of Manipur. It is found in the Loktak Lake, Keibul Valley and the Khawnglung wildlife sanctuary of Manipur.',
    'medium',
    'Standard Reference',
    null,
    '625d10710668c331481611fb9c76898b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '625d10710668c331481611fb9c76898b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The musk deer or the sangai of Manipur'),
            ('B', 'The Arabian oryx'),
            ('C', 'The Himalayan tahr'),
            ('D', 'The Asiatic lion')
           ) as v(label, option_text)
 where q.question_hash = '625d10710668c331481611fb9c76898b'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Himalayan monal'' is the state bird of:',
    'The Himalayan monal, the national bird of Bhutan, is the state bird of Uttarakhand, and the state animal of the state is the alpine musk deer. The blood pheasant is the state bird of Sikkim.',
    'medium',
    'Standard Reference',
    null,
    '4517fea929698113487da7a11da41954'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4517fea929698113487da7a11da41954'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sikkim'),
            ('B', 'Himachal Pradesh'),
            ('C', 'Meghalaya'),
            ('D', 'Uttarakhand')
           ) as v(label, option_text)
 where q.question_hash = '4517fea929698113487da7a11da41954'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''great hornbill'' is the state bird of:',
    'The great hornbill is the state bird of Meghalaya and the Hornbill Festival of Meghalaya celebrates the bird. The white-necked crane is the state bird of Arunachal Pradesh and the Blyth''s tragopan is the state bird of Nagaland.',
    'medium',
    'Standard Reference',
    null,
    'dcbb1ff30cd7ccbb35d073b843e467af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dcbb1ff30cd7ccbb35d073b843e467af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arunachal Pradesh'),
            ('B', 'Assam'),
            ('C', 'Meghalaya'),
            ('D', 'Nagaland')
           ) as v(label, option_text)
 where q.question_hash = 'dcbb1ff30cd7ccbb35d073b843e467af'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Himalayan quail'' of India is:',
    'The Himalayan quail, the mountain quail or the painted bush quail, was declared extinct in 1930 because of the indiscriminate hunting, and it was reported again in the villages of the Bustan district of Mansehra in Pakistan in 2004.',
    'hard',
    'Standard Reference',
    null,
    '41cf9adb5947cd4dabf677d58da60467'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '41cf9adb5947cd4dabf677d58da60467'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An endangered bird of the Himalayan grasslands'),
            ('B', 'A bird that was declared extinct in the 1930s and was reported again in 2004'),
            ('C', 'The state bird of Uttarakhand'),
            ('D', 'A migratory bird that visits the Chilika lake every winter')
           ) as v(label, option_text)
 where q.question_hash = '41cf9adb5947cd4dabf677d58da60467'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Nagarjunsagar-Srisailam'' tiger reserve is located in:',
    'The Nagarjunsagar-Srisailam tiger reserve, the largest tiger reserve of India with an area of about 3,000 square kilometres, lies in the Nandyal district of Andhra Pradesh and the Guntur district of Telangana around the Nagarjunasagar dam.',
    'hard',
    'Standard Reference',
    null,
    '69a1ad16c332b2e434dc866d590b8e0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '69a1ad16c332b2e434dc866d590b8e0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Maharashtra'),
            ('C', 'Andhra Pradesh and Telangana'),
            ('D', 'Madhya Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '69a1ad16c332b2e434dc866d590b8e0f'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Great Himalayan National Park'' was inscribed as a UNESCO World Heritage site in:',
    'The Great Himalayan National Park of Himachal Pradesh was inscribed on the UNESCO World Heritage List in 2014 for its outstanding natural beauty and for the high value of its mountain ecosystems, and the park covers the four sanctuaries of the Tirthan Valley.',
    'hard',
    'Standard Reference',
    null,
    '07a35e18a82243a1a729e7a8f1c8cf53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '07a35e18a82243a1a729e7a8f1c8cf53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2007'),
            ('C', '2010'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '07a35e18a82243a1a729e7a8f1c8cf53'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Valmiki National Park'' is:',
    'The Valmiki National Park in the West Champaran district of Bihar is the only tiger reserve of the state and it was the first reserve of the country to be notified after the launch of Project Tiger, in 1988.',
    'hard',
    'Standard Reference',
    null,
    '825015fbc51c440df574617e16936e90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '825015fbc51c440df574617e16936e90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only tiger reserve of Bihar and the first reserve of the country to be notified after Project Tiger'),
            ('B', 'The largest national park of India'),
            ('C', 'The national park that hosts the state bird of Meghalaya'),
            ('D', 'The first national park of India notified in 1935')
           ) as v(label, option_text)
 where q.question_hash = '825015fbc51c440df574617e16936e90'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Agasthyamalai Biosphere Reserve'' is notable because it is:',
    'The Agasthyamalai Biosphere Reserve, spread over the Anamalai hills of Tamil Nadu and Kerala, is the southernmost biosphere reserve of India and it was designated in 2001.',
    'hard',
    'Standard Reference',
    null,
    '3031e5de55c8656d8c1d083e6282b55d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3031e5de55c8656d8c1d083e6282b55d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The southernmost biosphere reserve of India, in the Anamalai hills of Tamil Nadu and Kerala'),
            ('B', 'The only marine biosphere reserve of the country'),
            ('C', 'The first biosphere reserve that was declared in 1978'),
            ('D', 'The largest biosphere reserve of India')
           ) as v(label, option_text)
 where q.question_hash = '3031e5de55c8656d8c1d083e6282b55d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'Project Tiger was launched in India in 1973 with:',
    'Project Tiger was launched in 1973 with nine tiger reserves: Corbett, Kanha, Manas, Melghat, Palamau, Ranthambore, Similipal, Sundarbans and Periyar, with a special focus on the preservation of the habitat and the protection of the tiger.',
    'hard',
    'Standard Reference',
    null,
    '33cb3d26dd2d1ac431d6da7e4740b090'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '33cb3d26dd2d1ac431d6da7e4740b090'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Twenty tiger reserves spread over the country'),
            ('B', 'Two tiger reserves in the central India'),
            ('C', 'Nine tiger reserves, including Corbett, Kanha, Manas, Melghat, Palamau, Ranthambore, Similipal, Sundarbans and Periyar'),
            ('D', 'Only the reserves of the northeastern states')
           ) as v(label, option_text)
 where q.question_hash = '33cb3d26dd2d1ac431d6da7e4740b090'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sundarbans'' is:',
    'The Sundarbans in West Bengal is the largest mangrove forest in the world, spread over the delta of the Ganga, the Brahmaputra and the Meghna, and it is a UNESCO World Heritage site of the mixed type and a Ramsar site.',
    'medium',
    'Standard Reference',
    null,
    '04d029b779b807dc50852c1954ea67c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '04d029b779b807dc50852c1954ea67c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest dry deciduous forest of central India'),
            ('B', 'A cold desert wetland of western Rajasthan'),
            ('C', 'The only evergreen biosphere reserve of the eastern Himalaya'),
            ('D', 'The largest mangrove forest in the world, in the delta of the Ganga, the Brahmaputra and the Meghna')
           ) as v(label, option_text)
 where q.question_hash = '04d029b779b807dc50852c1954ea67c2'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Cartagena Protocol on Biosafety'' deals with:',
    'The Cartagena Protocol on Biosafety, adopted in 2000 under the Convention on Biological Diversity, deals with the regulation of the transboundary movement of the living modified organisms that may have adverse effects on the conservation and the sustainable use of the biological diversity.',
    'medium',
    'Standard Reference',
    null,
    'ffb44ce0bff17eb74c490005bf4c2b3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ffb44ce0bff17eb74c490005bf4c2b3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The liability and the compensation for the damage by the hazardous wastes'),
            ('B', 'The regulation of the transboundary movement of the living modified organisms'),
            ('C', 'The protection of the ozone layer'),
            ('D', 'The conservation of the migratory species of wild animals')
           ) as v(label, option_text)
 where q.question_hash = 'ffb44ce0bff17eb74c490005bf4c2b3d'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''MARPOL Convention'' of 1973 is related to:',
    'The MARPOL Convention of 1973, as modified by the Protocol of 1978, is the main international convention on the prevention of the marine pollution from the ships, and it deals with the oil, the noxious substances, the packaged goods, the sewage and the garbage.',
    'medium',
    'Standard Reference',
    null,
    'f57794efbfd60de14eea4bae73194842'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f57794efbfd60de14eea4bae73194842'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The conservation of the polar bears of the Arctic'),
            ('B', 'The prevention of the marine pollution by the ships'),
            ('C', 'The control of the harmful fisheries practices'),
            ('D', 'The regulation of the exploration of the continental shelf')
           ) as v(label, option_text)
 where q.question_hash = 'f57794efbfd60de14eea4bae73194842'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Ballast Water Management Convention'' is concerned with:',
    'The Ballast Water Management Convention, adopted by the IMO in 2004, aims at the prevention of the introduction of the invasive alien species into the aquatic ecosystems through the ballast water and the sediments of the ships.',
    'hard',
    'Standard Reference',
    null,
    '02647b5dd8775a1bb8ea6b22f58d7249'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '02647b5dd8775a1bb8ea6b22f58d7249'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The control of the emission of the sulphur oxides from the ships'),
            ('B', 'The safety of the navigation of the ships in the polar waters'),
            ('C', 'The prevention of the introduction of the invasive alien species through the ballast water of the ships'),
            ('D', 'The measurement of the depth of the ocean with the echo sounder')
           ) as v(label, option_text)
 where q.question_hash = '02647b5dd8775a1bb8ea6b22f58d7249'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Convention on the Conservation of the Migratory Species of Wild Animals'' is:',
    'The Convention on the Conservation of the Migratory Species of Wild Animals, or the Bonn Convention of 1979, deals with the conservation of the migratory species and the habitats of the species listed in its two appendices.',
    'medium',
    'Standard Reference',
    null,
    '53c41c03b7ea08729ddf69e42ff0cb06'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53c41c03b7ea08729ddf69e42ff0cb06'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Bonn Convention of 1979, with the non-migratory species in its appendices'),
            ('B', 'The Ramsar Convention of 1971'),
            ('C', 'The CITES of 1973'),
            ('D', 'The United Nations Convention on the Law of the Sea of 1982')
           ) as v(label, option_text)
 where q.question_hash = '53c41c03b7ea08729ddf69e42ff0cb06'
on conflict (question_id, label) do nothing;

-- environment | international-conventions | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'international-conventions'),
    'The ''Green Climate Fund'' is:',
    'The Green Climate Fund is the financial mechanism of the UNFCCC that was established at the COP16 in Cancun in 2010, and it channels the funds to the developing countries for the mitigation of the emissions and for the adaptation to the climate change.',
    'hard',
    'Standard Reference',
    null,
    '29aa1db9f2907e34398511279450f7cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '29aa1db9f2907e34398511279450f7cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An agency of the World Bank that funds the biodiversity projects'),
            ('B', 'The fund of the European Union for the coastal protection works'),
            ('C', 'The carbon credit registry of the UNFCCC'),
            ('D', 'The financial mechanism of the UNFCCC that supports the mitigation and the adaptation in the developing countries')
           ) as v(label, option_text)
 where q.question_hash = '29aa1db9f2907e34398511279450f7cd'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Nationally Determined Contributions'' under the Paris Agreement are:',
    'The Nationally Determined Contributions are the climate action plans that each party to the Paris Agreement formulates, communicates and maintains, and the progress of the implementation is reviewed every five years in the global stocktake.',
    'hard',
    'Standard Reference',
    null,
    'ccf1e78b74b51f8def2be6785aebc2e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ccf1e78b74b51f8def2be6785aebc2e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The carbon budgets that are fixed by the IPCC for each decade'),
            ('B', 'The financial pledges made by the developed countries to the developing countries'),
            ('C', 'The climate action plans that every party formulates and communicates to the UNFCCC'),
            ('D', 'The emissions inventories that are submitted every year by the annex I countries')
           ) as v(label, option_text)
 where q.question_hash = 'ccf1e78b74b51f8def2be6785aebc2e3'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Carbon Credit Trading Scheme'' of India:',
    'The Carbon Credit Trading Scheme was notified in February 2023, with the aim of creating a market for the carbon credit units of the emission reduction projects and of the carbon sinks, and the scheme is to be operationalised through the detailed procedures.',
    'hard',
    'PIB',
    null,
    '8ad361e62157230996ef232ed8adc2ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ad361e62157230996ef232ed8adc2ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was notified in 2023 and allows the trading of the carbon credits of the emission reduction projects'),
            ('B', 'Was notified in 2016 and is mandatory for the thermal power plants'),
            ('C', 'Is administered by the Reserve Bank of India for the banking sector'),
            ('D', 'Was notified under the Forest Conservation Act for the carbon sinks of the forests')
           ) as v(label, option_text)
 where q.question_hash = '8ad361e62157230996ef232ed8adc2ed'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''LiFE'' (Lifestyle for Environment) movement launched in India in 2022 is based on the:',
    'The LiFE movement is based on the quantification of the carbon footprint of a community through the LiDAR and the remote sensing of the movement of the people, and it is an extension of the mass movement that was launched in the run-up to the COP26.',
    'hard',
    'PIB',
    null,
    '32fc2f61916ff10656a3a2bf3b755b88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '32fc2f61916ff10656a3a2bf3b755b88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The compulsory reduction of the personal carbon footprint of the citizens'),
            ('B', 'The subsidy of the electric vehicles in the cities'),
            ('C', 'The mandatory labelling of the food products'),
            ('D', 'LiDAR and the remote sensing of the movement of the people for the estimation of the carbon footprint')
           ) as v(label, option_text)
 where q.question_hash = '32fc2f61916ff10656a3a2bf3b755b88'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Bhopal gas tragedy'' of 1984 was caused by the leak of:',
    'The Bhopal gas tragedy of December 1984 was caused by the leak of the methyl isocyanate from the pesticide plant of the Union Carbide at Bhopal, and thousands of people died in the city for years afterwards.',
    'medium',
    'Standard Reference',
    null,
    '4d01cbff997079318626f99e7e23daaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d01cbff997079318626f99e7e23daaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Benzene from a petroleum refinery'),
            ('B', 'Methyl isocyanate from the Union Carbide pesticide plant'),
            ('C', 'Phosgene from a chemical plant of the chlorine industry'),
            ('D', 'Ammonia from a fertiliser plant')
           ) as v(label, option_text)
 where q.question_hash = '4d01cbff997079318626f99e7e23daaa'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Minamata disease'' was caused by:',
    'The Minamata disease, first reported in 1956 in Japan, was caused by the industrial discharge of the methylmercury into the Minamata Bay, which entered the food chain through the fish and the shellfish and caused the neurological damage in the human beings.',
    'medium',
    'Standard Reference',
    null,
    '152898a69428395af99dd47272b0611f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '152898a69428395af99dd47272b0611f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The lead pollution of the drinking water of the town of Minamata'),
            ('B', 'The pesticide spraying over the rice fields of the region'),
            ('C', 'The release of the sulphur dioxide from the copper smelter'),
            ('D', 'The industrial discharge of the methylmercury into the Minamata Bay of Japan')
           ) as v(label, option_text)
 where q.question_hash = '152898a69428395af99dd47272b0611f'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''DDT'' is a pesticide whose use led to:',
    'The wide use of the DDT, an organochlorine pesticide, led to the biomagnification up the food chain and to the sharp decline in the population of the birds of prey, such as the peregrine falcon and the osprey, which is why the DDT was banned in most of the countries.',
    'medium',
    'NCERT Class XII',
    null,
    '61133409c871abd115b35f7ae9f2efc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '61133409c871abd115b35f7ae9f2efc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rise of the sea level in the Bay of Bengal'),
            ('B', 'The decline in the population of the birds of prey, including the peregrine falcon and the osprey'),
            ('C', 'The increase in the population of the malarial mosquitoes'),
            ('D', 'The depletion of the ozone layer')
           ) as v(label, option_text)
 where q.question_hash = '61133409c871abd115b35f7ae9f2efc7'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The oxides of sulphur and the oxides of nitrogen that are:',
    'The acid rain is caused by the oxides of sulphur and the oxides of nitrogen that are released by the industries and the thermal power plants, and it reacts with the water vapour in the atmosphere to form the sulphuric and the nitric acids.',
    'medium',
    'NCERT Class XI',
    null,
    '3b4a8c4e7f3160dfd1aa491ba3b09853'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3b4a8c4e7f3160dfd1aa491ba3b09853'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The chlorofluorocarbons that deplete the ozone layer'),
            ('B', 'The soot and the particulate matter of the thermal power plants'),
            ('C', 'The oxides of sulphur and the oxides of nitrogen that are released into the atmosphere'),
            ('D', 'The excess of the carbon dioxide that traps the heat of the sun')
           ) as v(label, option_text)
 where q.question_hash = '3b4a8c4e7f3160dfd1aa491ba3b09853'
on conflict (question_id, label) do nothing;

-- environment | pollution | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'A by-product that is used:',
    'The fly ash of the thermal power plants is a by-product of the combustion of the coal, and it is used in the cement, the bricks, the road construction and the mine filling, which makes it one of the largest industrial wastes of the country.',
    'easy',
    'Standard Reference',
    null,
    '17d51c775a13c2c5a75a8397011e6d02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '17d51c775a13c2c5a75a8397011e6d02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A by-product that is used in the cement, the bricks and the road construction'),
            ('B', 'A liquid effluent that is discharged in the rivers'),
            ('C', 'A gaseous emission that is released through the chimneys'),
            ('D', 'A hazardous waste that has to be stored in the lined ponds')
           ) as v(label, option_text)
 where q.question_hash = '17d51c775a13c2c5a75a8397011e6d02'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Swachh Bharat Mission'' was launched in India on:',
    'The Swachh Bharat Mission was launched on 2 October 2014, the 150th birth anniversary of Mahatma Gandhi, and it was later split into the urban and the rural components, the rural one being launched in 2019.',
    'easy',
    'Standard Reference',
    null,
    '2c93e4de30cf3f50f92bcfc74986c8b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2c93e4de30cf3f50f92bcfc74986c8b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 October 2015'),
            ('B', '2 October 2014'),
            ('C', '15 August 2015'),
            ('D', '26 January 2016')
           ) as v(label, option_text)
 where q.question_hash = '2c93e4de30cf3f50f92bcfc74986c8b2'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Construction and Demolition waste'' is managed under:',
    'The Construction and Demolition waste, which is a bulky and a very heterogeneous material, is managed under the Construction and Demolition (Management and Handling) Rules, 2016, which require the recovery of the fraction of the material and its reuse.',
    'hard',
    'Standard Reference',
    null,
    '3c29c8ce4c645b11d0d035490d76b000'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3c29c8ce4c645b11d0d035490d76b000'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Plastic Waste Management Rules, 2016'),
            ('B', 'The E-waste (Management) Rules, 2016'),
            ('C', 'The Hazardous and Other Wastes (Management and Handling) Rules, 1989'),
            ('D', 'The Construction and Demolition (Management and Handling) Rules, 2016')
           ) as v(label, option_text)
 where q.question_hash = '3c29c8ce4c645b11d0d035490d76b000'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Batteries (Management and Handling) Rules, 2022'' in India deal with:',
    'The Batteries (Management and Handling) Rules, 2022, which replaced the 2010 rules, lay down the framework for the producers, the importers and the recyclers for the collection, the transportation, the treatment and the recycling of the waste batteries, with the aim of a circular economy.',
    'hard',
    'Standard Reference',
    null,
    '69477ffd28bacdeaca49654dd99ea990'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '69477ffd28bacdeaca49654dd99ea990'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The import of the lithium cells for the electric vehicles'),
            ('B', 'The setting up of the common facilities for the battery manufacturing'),
            ('C', 'The production, the collection, the transportation, the treatment and the recycling of the waste batteries'),
            ('D', 'The certification of the lead acid batteries of the vehicles')
           ) as v(label, option_text)
 where q.question_hash = '69477ffd28bacdeaca49654dd99ea990'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''single use plastic'' items were banned in India with effect from:',
    'The identified single use plastic items, which include the plastic carry bags, the cups, the plates, the cutlery, the straws and the ear buds, were banned in India with effect from 1 July 2022 under the Plastic Waste Management (Amendment) Rules, 2022.',
    'medium',
    'Standard Reference',
    null,
    '69cb087b8dbfa100cbb64d88626754c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '69cb087b8dbfa100cbb64d88626754c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 July 2022'),
            ('B', '1 April 2021'),
            ('C', '15 August 2020'),
            ('D', '1 January 2023')
           ) as v(label, option_text)
 where q.question_hash = '69cb087b8dbfa100cbb64d88626754c5'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''National Guidelines for the Recognition of the Waste Pickers'' notified in India in 2021 provide for:',
    'The National Guidelines for the Recognition of the Waste Pickers, 2021 provide for the certification of the waste pickers, the integration of them into the formal system of the waste management and the issue of the identity cards and the access to the social security benefits.',
    'hard',
    'Standard Reference',
    null,
    'f98affd2da79ae3ddec455836c27ec78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f98affd2da79ae3ddec455836c27ec78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ban on the plastic waste pickers from the landfill sites'),
            ('B', 'The payment of the social security to the municipal corporations'),
            ('C', 'The certification of the waste pickers and the integration of them into the formal system of the waste management'),
            ('D', 'The setting up of the recycling plants in every urban local body')
           ) as v(label, option_text)
 where q.question_hash = 'f98affd2da79ae3ddec455836c27ec78'
on conflict (question_id, label) do nothing;

-- environment | waste-management | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The segregation of the municipal solid waste into the wet, the dry and the hazardous waste is:',
    'The segregation of the waste at the source into the wet, the dry and the hazardous waste is the first and the most important step of the scientific management of the solid waste, as it prevents the contamination and makes the composting and the recycling possible.',
    'easy',
    'Standard Reference',
    null,
    'e2a00b5a221bba5ca0ee1eca7a44e70a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e2a00b5a221bba5ca0ee1eca7a44e70a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The last step of the solid waste management, done at the landfill site'),
            ('B', 'Optional for the urban local bodies under the Solid Waste Rules'),
            ('C', 'Applicable only to the cities with a population above ten million'),
            ('D', 'The first step of the scientific management of the solid waste')
           ) as v(label, option_text)
 where q.question_hash = 'e2a00b5a221bba5ca0ee1eca7a44e70a'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Extended Producer Responsibility'' under the plastic waste rules in India obliges the producers to:',
    'The Extended Producer Responsibility places the responsibility on the producers, the importers and the plastic waste generators to manage the collection and the disposal of the plastic waste that they generate, and the registration of the producers on the centralised portal is mandatory.',
    'medium',
    'Standard Reference',
    null,
    '5c71c713606f3da7b04c4852166173a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5c71c713606f3da7b04c4852166173a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manufacte the plastic from the bio-degradable feedstock'),
            ('B', 'Manage the collection and the disposal of the plastic waste that they generate'),
            ('C', 'Deposit a fixed amount for every plastic packet that is sold'),
            ('D', 'Use only the recycled plastic in the packaging of the beverages')
           ) as v(label, option_text)
 where q.question_hash = '5c71c713606f3da7b04c4852166173a1'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Exclusive Economic Zone'' of a coastal state extends up to:',
    'Under the United Nations Convention on the Law of the Sea, the coastal states have an Exclusive Economic Zone extending up to 200 nautical miles from the baseline, in which they have the sovereign rights over the natural resources.',
    'medium',
    'NCERT Class XI',
    null,
    '966e590c9e10e2c7cec1d8c5e1030571'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '966e590c9e10e2c7cec1d8c5e1030571'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '200 nautical miles from the baseline'),
            ('B', '350 nautical miles from the baseline'),
            ('C', 'The edge of the continental shelf'),
            ('D', '12 nautical miles from the baseline')
           ) as v(label, option_text)
 where q.question_hash = '966e590c9e10e2c7cec1d8c5e1030571'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''territorial waters'' of a coastal state extend up to:',
    'The territorial sea of a coastal state extends up to 12 nautical miles from the baseline, in which the sovereignty of the coastal state is complete, subject to the right of innocent passage of the foreign ships.',
    'medium',
    'NCERT Class XI',
    null,
    '260366a540c18328d26f00b3ccc59b1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '260366a540c18328d26f00b3ccc59b1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '24 nautical miles from the baseline'),
            ('B', '200 nautical miles from the baseline'),
            ('C', 'The edge of the continental shelf'),
            ('D', '12 nautical miles from the baseline')
           ) as v(label, option_text)
 where q.question_hash = '260366a540c18328d26f00b3ccc59b1e'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''High Seas'' in the law of the sea refers to the areas of the ocean:',
    'The high seas are the parts of the ocean that lie beyond the exclusive economic zones of all the coastal states, and the freedom of navigation, of overflight, of the laying of the cables and of the scientific research apply there.',
    'hard',
    'Standard Reference',
    null,
    '47f8f67fa49e1cb5e454e69eed596ecd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '47f8f67fa49e1cb5e454e69eed596ecd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Beyond the territorial waters but within the exclusive economic zone of the coastal states'),
            ('B', 'Beyond the exclusive economic zones of all the coastal states, where the high seas freedoms apply'),
            ('C', 'Within the twelve nautical miles of the coastline'),
            ('D', 'The area of the ocean above the continental shelf')
           ) as v(label, option_text)
 where q.question_hash = '47f8f67fa49e1cb5e454e69eed596ecd'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Indian Ocean Dipole'' is:',
    'The Indian Ocean Dipole is an interannual climate pattern of the tropical Indian Ocean in which the sea surface temperature of the western part of the basin is warmer than that of the eastern part, and it influences the monsoon rainfall over India.',
    'hard',
    'Standard Reference',
    null,
    '830009dca65a12f3943f9964ecbe1695'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '830009dca65a12f3943f9964ecbe1695'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A climate pattern that involves the difference in the sea surface temperature between the western and the eastern equatorial Indian Ocean'),
            ('B', 'The difference in the salinity between the Arabian Sea and the Bay of Bengal'),
            ('C', 'The tidal difference between the Gulf of Khambhat and the Gulf of Cambay'),
            ('D', 'The difference in the depth of the continental shelf on the two coasts of India')
           ) as v(label, option_text)
 where q.question_hash = '830009dca65a12f3943f9964ecbe1695'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''International Seabed Authority'' administers:',
    'The International Seabed Authority, established under the United Nations Convention on the Law of the Sea of 1982, administers the mineral resources of the Area, the deep seabed and the ocean floor that lie beyond the national jurisdiction of the coastal states.',
    'hard',
    'Standard Reference',
    null,
    '184a17521ab9521ebaf4929f806638c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '184a17521ab9521ebaf4929f806638c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The navigation in the Arctic Ocean'),
            ('B', 'The marine pollution in the Mediterranean Sea'),
            ('C', 'The mineral resources of the deep seabed beyond the national jurisdiction of the coastal states'),
            ('D', 'The fisheries of the high seas')
           ) as v(label, option_text)
 where q.question_hash = '184a17521ab9521ebaf4929f806638c2'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Bhadla Solar Park'' is located in:',
    'The Bhadla solar park in the Jaisalmer district of Rajasthan is one of the largest solar parks of Asia, with a capacity of about 2,250 megawatts, and it is a wholly owned project of the Adani group.',
    'medium',
    'Standard Reference',
    null,
    '00c08333a71334854243eee562390552'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '00c08333a71334854243eee562390552'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jaisalmer in Rajasthan'),
            ('B', 'Pavagada in Karnataka'),
            ('C', 'Khaveda in Gujarat'),
            ('D', 'Koprnaharaj in Maharashtra')
           ) as v(label, option_text)
 where q.question_hash = '00c08333a71334854243eee562390552'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Pavagada'' or the ''Shakti Sthala'' solar park is located in:',
    'The Pavagada solar park, also called the Shakti Sthala, is located in the Pavagada taluk of the Chitradurga district of Karnataka and has a capacity of about 2,050 megawatts, which makes it one of the largest solar parks of the world.',
    'medium',
    'Standard Reference',
    null,
    'e3b7b96846284f225278a3fbbd488648'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e3b7b96846284f225278a3fbbd488648'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Gujarat'),
            ('C', 'Andhra Pradesh'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = 'e3b7b96846284f225278a3fbbd488648'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''PM-Surya Ghar: Muft Bijli Yojana'' launched in 2024 aims at:',
    'The PM-Surya Ghar: Muft Bijli Yojana, launched in February 2024, provides the rooftop solar plants of up to 3 kW to about one crore households and allows a monthly electricity bill of up to 300 units to be free.',
    'medium',
    'PIB',
    null,
    'ece8bd5eedf175c04c6639676c9ef33e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ece8bd5eedf175c04c6639676c9ef33e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The electrification of the railway network with the solar energy'),
            ('B', 'One crore households with a rooftop solar plant of up to 3 kW and a monthly electricity bill of up to 300 units free'),
            ('C', 'The installation of the solar pumps in every village of the country'),
            ('D', 'The conversion of the coal plants of the country into the solar parks')
           ) as v(label, option_text)
 where q.question_hash = 'ece8bd5eedf175c04c6639676c9ef33e'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The three components of the ''PM-KUSUM'' scheme launched in 2019 are:',
    'The PM-KUSUM scheme has three components: the installation of 10 lakh small solar plants of up to 2 kW, the setting up of 1,500 MW of the solar parks, and the provision of 4 lakh standalone solar pumps to the farmers.',
    'hard',
    'PIB',
    null,
    'bfb27576d4cd1304e4cca8b3265ad3b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bfb27576d4cd1304e4cca8b3265ad3b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The solar irrigation, the solar cold storage and the solar street lights'),
            ('B', 'The offshore wind, the tidal energy and the geothermal energy'),
            ('C', 'Small solar plants, solar parks and standalone solar pumps'),
            ('D', 'Rooftop solar, wind farms and the biomass plants')
           ) as v(label, option_text)
 where q.question_hash = 'bfb27576d4cd1304e4cca8b3265ad3b2'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The first offshore wind project of India was tendered in 2023 for:',
    'The first offshore wind project of India was tendered in November 2023 for the installation of 1 gigawatt of the wind capacity off the coast of Gujarat, and the projects are to be commissioned by 2025-26.',
    'hard',
    'PIB',
    null,
    '1a1e36e766f91777bab4a651dad73116'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a1e36e766f91777bab4a651dad73116'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '500 megawatts off the coast of Tamil Nadu'),
            ('B', '2 gigawatts off the coast of Maharashtra'),
            ('C', '100 megawatts in the Gulf of Kachchh'),
            ('D', '1 gigawatt of the capacity off the coast of Gujarat')
           ) as v(label, option_text)
 where q.question_hash = '1a1e36e766f91777bab4a651dad73116'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''National Green Hydrogen Mission'' approved in 2023 targets the production of:',
    'The National Green Hydrogen Mission, approved in January 2023 with an outlay of Rs 19,744 crore over five years, targets the production of 5 million metric tonnes of green hydrogen per year by 2030 and the reduction of about 50 million tonnes of the annual greenhouse gas emissions.',
    'hard',
    'PIB',
    null,
    'a7e9d043f9dab1ea51b2972d2500a49a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a7e9d043f9dab1ea51b2972d2500a49a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10 million metric tonnes of green hydrogen per year by 2047 with an outlay of Rs 40,000 crore'),
            ('B', '1 million metric tonnes of green hydrogen per year by 2027 with an outlay of Rs 2,000 crore'),
            ('C', '5 million metric tonnes of green hydrogen per year by 2030 with an outlay of Rs 19,744 crore'),
            ('D', '2 million metric tonnes of green hydrogen per year by 2030 with an outlay of Rs 8,000 crore')
           ) as v(label, option_text)
 where q.question_hash = 'a7e9d043f9dab1ea51b2972d2500a49a'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Kadamakudy'' pumped storage hydro project is located in:',
    'The 1,200 MW pumped storage hydro project of Kadamakudy, the largest in the country, is being built in Kerala on the Bharathapuzha river, and the Sorang project in Arunachal Pradesh is the other large pumped storage project under construction.',
    'hard',
    'Standard Reference',
    null,
    '93ad9701b3c09e9757e983b8e2166244'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93ad9701b3c09e9757e983b8e2166244'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Arunachal Pradesh'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Himachal Pradesh')
           ) as v(label, option_text)
 where q.question_hash = '93ad9701b3c09e9757e983b8e2166244'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Under the Environment (Protection) Act, 1986, the Central Government is empowered to:',
    'The Environment (Protection) Act of 1986 gives the Central Government the power to take all the necessary measures to prevent, control and abate the environmental pollution and to prescribe the standards for the quality of the environment, while the declaration of the protected areas rests with the state governments.',
    'medium',
    'Standard Reference',
    null,
    '14b5b3fca399e348483671aa06e57463'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '14b5b3fca399e348483671aa06e57463'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lay down the standards for the quality of the environment and to take the measures to prevent, control and abate the pollution'),
            ('B', 'Declare any area as a wildlife sanctuary on its own'),
            ('C', 'Appoint the members of the National Green Tribunal'),
            ('D', 'Levy the environmental compensation on the polluters')
           ) as v(label, option_text)
 where q.question_hash = '14b5b3fca399e348483671aa06e57463'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Under the Forest (Conservation) Act, 1980, the diversion of the forest land for the non-forest use:',
    'The Forest (Conservation) Act of 1980 restricts the diversion of the forest land for the non-forest use and requires the prior approval of the Central Government, though the state governments and the union territories are exempt for the small areas of the forest land.',
    'medium',
    'Standard Reference',
    null,
    '92fc2c586a8ffd2e13d0f9d26b6bb9c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '92fc2c586a8ffd2e13d0f9d26b6bb9c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is allowed if the area is below one hectare'),
            ('B', 'Can be done by the local bodies for the public utilities'),
            ('C', 'Is permitted by the State Government without any condition'),
            ('D', 'Requires the prior approval of the Central Government')
           ) as v(label, option_text)
 where q.question_hash = '92fc2c586a8ffd2e13d0f9d26b6bb9c2'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Compensatory Afforestation Fund Management and Planning Act, 2016'' provides for:',
    'The CAMPA Act of 2016 created the national and the state level funds for the compensatory afforestation and the improvement of the forest cover in the government forests, and it also dealt with the funds that had been accumulated with the states for this purpose.',
    'hard',
    'Standard Reference',
    null,
    '01d5dc281ae45779cf04c9e07ed6cef0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '01d5dc281ae45779cf04c9e07ed6cef0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The declaration of the community forests in the village forests'),
            ('B', 'A national and a state level fund for the compensatory afforestation and the improvement of the forest cover'),
            ('C', 'The right of the tribal communities to the minor forest produce'),
            ('D', 'The financial assistance to the mangrove restoration projects')
           ) as v(label, option_text)
 where q.question_hash = '01d5dc281ae45779cf04c9e07ed6cef0'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Biodiversity Authority'' is constituted under the:',
    'The National Biodiversity Authority is the apex body for the conservation of the biological diversity, and it is constituted under the Biological Diversity Act, 2002, with the mandate to implement the access and the benefit sharing regime and to oversee the commercial utilisation of the biological resources.',
    'medium',
    'Standard Reference',
    null,
    '0d232cdd069a2a03571a2145aa5edfe9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d232cdd069a2a03571a2145aa5edfe9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Environment (Protection) Act, 1986'),
            ('B', 'Forest (Conservation) Act, 1980'),
            ('C', 'Biological Diversity Act, 2002'),
            ('D', 'Wildlife (Protection) Act, 1972')
           ) as v(label, option_text)
 where q.question_hash = '0d232cdd069a2a03571a2145aa5edfe9'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Under the National Green Tribunal Act, 2010, an appeal from the orders of the Tribunal lies to:',
    'Section 22 of the National Green Tribunal Act, 2010 provides that an appeal against the orders of the National Green Tribunal lies to the High Court within ninety days, and the appeal to the Supreme Court lies only on the question of the law.',
    'hard',
    'Standard Reference',
    null,
    '2c9a9d937dab4dbe8eb171b4a436540c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2c9a9d937dab4dbe8eb171b4a436540c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The concerned High Court'),
            ('B', 'The Union Public Service Commission'),
            ('C', 'The National Green Tribunal itself'),
            ('D', 'The Supreme Court')
           ) as v(label, option_text)
 where q.question_hash = '2c9a9d937dab4dbe8eb171b4a436540c'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The Coastal Regulation Zone notification of 2019 provides for:',
    'The Coastal Regulation Zone Notification of 2019, which replaced the 1991 notification, divides the coastal areas into the CRZ I to the CRZ IV categories with the detailed activities permitted in each of them, and it provides for the Island Eco Development Zones for the islands.',
    'medium',
    'Standard Reference',
    null,
    'e491c5a6942b4cc1a6b3bfd1e9ded93e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e491c5a6942b4cc1a6b3bfd1e9ded93e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The prohibition of the construction in the hill stations of the coastal states'),
            ('B', 'The setting up of the marine national parks in the coastal states'),
            ('C', 'The regulation of the fisheries in the territorial waters'),
            ('D', 'The classification of the coastal areas into the CRZ I to the CRZ IV categories')
           ) as v(label, option_text)
 where q.question_hash = 'e491c5a6942b4cc1a6b3bfd1e9ded93e'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Wildlife Crime Control Bureau'' was established in 2007 under the:',
    'The Wildlife Crime Control Bureau was constituted in 2007 under the Wildlife (Protection) Act, 1972 to strengthen the enforcement of the wildlife protection laws, with its headquarters at New Delhi and the regional offices at a number of places.',
    'hard',
    'Standard Reference',
    null,
    'a8d8647d6dea55e4014fe50185dc2ef1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a8d8647d6dea55e4014fe50185dc2ef1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Biological Diversity Act, 2002'),
            ('B', 'Wildlife Crime Control Act, 2006'),
            ('C', 'Wildlife (Protection) Act, 1972'),
            ('D', 'Forest (Conservation) Act, 1980')
           ) as v(label, option_text)
 where q.question_hash = 'a8d8647d6dea55e4014fe50185dc2ef1'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''green audit'' that the Comptroller and Auditor General of India introduced in 2011 was for:',
    'The Comptroller and Auditor General of India in 2011 introduced the green audit, that is the audit of the environmental performance of the government departments and the bodies that they control, so as to strengthen the parliamentary oversight of the environmental outcomes.',
    'hard',
    'Standard Reference',
    null,
    '903bb41c474c306331ff7f73d4cb6edb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '903bb41c474c306331ff7f73d4cb6edb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The audit of the environmental performance of the government departments'),
            ('B', 'The audit of the forest and the wildlife management'),
            ('C', 'The certification of the environmental management systems of the industries'),
            ('D', 'The audit of the corporate social responsibility spending')
           ) as v(label, option_text)
 where q.question_hash = '903bb41c474c306331ff7f73d4cb6edb'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Disaster Management Act, 2005'' provides for:',
    'The Disaster Management Act, 2005 provides for the creation of the National Disaster Management Authority chaired by the Prime Minister, the State Disaster Management Authority chaired by the Chief Minister and the District Disaster Management Authority chaired by the District Magistrate.',
    'medium',
    'Standard Reference',
    null,
    'bd5c7dee766f8e6e33d006b28457bd40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bd5c7dee766f8e6e33d006b28457bd40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The compulsory insurance of the disaster prone assets'),
            ('B', 'The National Disaster Management Authority, the State Disaster Management Authority and the District Disaster Management Authority'),
            ('C', 'Only the National Disaster Management Authority'),
            ('D', 'The National and the State Relief Commissions')
           ) as v(label, option_text)
 where q.question_hash = 'bd5c7dee766f8e6e33d006b28457bd40'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Sendai Framework for Disaster Risk Reduction'' covers the period:',
    'The Sendai Framework for Disaster Risk Reduction was adopted in 2015 and covers the period 2015 to 2030, and it replaced the Hyogo Framework of 2005 to 2015 with the four priorities of the understanding the risk, the strengthening of the governance, the investing in the resilience and the preparedness for the response and the recovery.',
    'medium',
    'Standard Reference',
    null,
    'e97e2755c9e260130ae9c27cf2cb17b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e97e2755c9e260130ae9c27cf2cb17b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020 to 2035'),
            ('B', '1999 to 2015'),
            ('C', '2015 to 2030'),
            ('D', '2005 to 2015')
           ) as v(label, option_text)
 where q.question_hash = 'e97e2755c9e260130ae9c27cf2cb17b0'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The names of the cyclones in the Bay of Bengal are suggested by:',
    'The names of the tropical cyclones in the North Indian Ocean are suggested by the countries of the WMO and the ESCAP Panel on the Tropical Cyclones, and a list of 169 names was prepared with each country of the region contributing 4 names per column of the list.',
    'hard',
    'Standard Reference',
    null,
    'def20883d7e8931aea5560c528d7a0bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'def20883d7e8931aea5560c528d7a0bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A committee of the World Meteorological Organisation and the ESCAP Panel on the Tropical Cyclones'),
            ('B', 'The India Meteorological Department alone'),
            ('C', 'The Inter-Ministerial Committee of the Ministry of Earth Sciences'),
            ('D', 'The United Nations Development Programme')
           ) as v(label, option_text)
 where q.question_hash = 'def20883d7e8931aea5560c528d7a0bf'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''MGNREGA'' guarantees to the rural households:',
    'The Mahatma Gandhi National Rural Employment Guarantee Act guarantees 100 days of wage employment in a financial year to the rural households whose adult members opt for it, and the unemployment allowance has to be paid if the work is not provided within fifteen days of the demand.',
    'medium',
    'Standard Reference',
    null,
    '9492fc4c5b5f0991b499812fe44f1a73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9492fc4c5b5f0991b499812fe44f1a73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The right to the food grains through the fair price shops'),
            ('B', 'One hundred days of wage employment in a year and the unemployment allowance if the work is not provided within fifteen days'),
            ('C', 'Two hundred days of wage employment in a year'),
            ('D', 'One hundred days of the wage employment but only in the drought prone areas')
           ) as v(label, option_text)
 where q.question_hash = '9492fc4c5b5f0991b499812fe44f1a73'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Jal Jeevan Mission'' launched in 2019 aims at:',
    'The Jal Jeevan Mission aims to provide a functional household tap connection to every rural household with 55 litres per capita per day of potable water, and it also promotes the grey water management, the recharge and the rainwater harvesting.',
    'medium',
    'PIB',
    null,
    'b28c0fc7712e4b0bd0b63d1d6bfa5210'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b28c0fc7712e4b0bd0b63d1d6bfa5210'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The irrigation of every village through the canal system'),
            ('B', 'The rainwater harvesting in the rural schools'),
            ('C', 'The desalination of the water in the coastal villages'),
            ('D', 'A functional household tap connection with 55 litres per capita per day of potable water in every rural household')
           ) as v(label, option_text)
 where q.question_hash = 'b28c0fc7712e4b0bd0b63d1d6bfa5210'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''River Boards Act, 1956'' provides for:',
    'The River Boards Act, 1956 provides for the establishment of the river boards for the regulation and the development of the inter-State rivers and of the river valleys, and it also provides for the adjudication of the disputes on the water sharing.',
    'hard',
    'Standard Reference',
    null,
    'c9cd4292eed1f5b5e3be45f710845d9a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c9cd4292eed1f5b5e3be45f710845d9a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The navigation in the navigable rivers'),
            ('B', 'The flood protection works in the river basins'),
            ('C', 'The establishment of the river boards for the regulation and the development of the inter-State rivers'),
            ('D', 'The irrigation projects in the river valleys')
           ) as v(label, option_text)
 where q.question_hash = 'c9cd4292eed1f5b5e3be45f710845d9a'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'Under the Biological Diversity Act, 2002, an ''alien species'' is a species that:',
    'An alien species is a species that occurs outside its natural range and that threatens the biological diversity of the country, and the Act makes it incumbent on the Central Government to regulate the introduction and the use of such species and to lay down the rules for their management.',
    'hard',
    'Standard Reference',
    null,
    '010fe914b8f23f2aa9fd196f3b35634e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '010fe914b8f23f2aa9fd196f3b35634e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has been introduced by the humans for the food'),
            ('B', 'Occurs outside its natural range and threatens the biological diversity of the country'),
            ('C', 'Is not a native species but is harmless to the local ecology'),
            ('D', 'Is found only within a single state')
           ) as v(label, option_text)
 where q.question_hash = '010fe914b8f23f2aa9fd196f3b35634e'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    '''Social forestry'' means:',
    'Social forestry is the raising of the trees on the government and the community lands that are not under the forest department, for the production of the fuel wood, the fruit and the fodder, and it also covers the raising of the trees on the private lands.',
    'medium',
    'NCERT Class XII',
    null,
    '4cb6f221c93a5ddf3d8d410daa2d3f2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4cb6f221c93a5ddf3d8d410daa2d3f2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The raising of the trees on the government and the community lands that are not under the forest department'),
            ('B', 'The afforestation of the private estates by the corporate houses'),
            ('C', 'The farming of the trees for the timber in the private forests'),
            ('D', 'The collection of the minor forest produce by the village communities')
           ) as v(label, option_text)
 where q.question_hash = '4cb6f221c93a5ddf3d8d410daa2d3f2f'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''National Agroforestry Policy'' of India was released in:',
    'The first ever National Agroforestry Policy of India was released in 2018, and it defines agroforestry as the purposeful integration of the trees and the shrubs with the crops and the livestock to create a productive and a sustainable ecosystem.',
    'hard',
    'PIB',
    null,
    'e99587855441d55162c05b1980189b8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e99587855441d55162c05b1980189b8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2014'),
            ('C', '2021'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = 'e99587855441d55162c05b1980189b8a'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''gharial'' or the long-snouted crocodile of the National Crocodile Conservation Centre is:',
    'The gharial, the long-snouted thin-snouted crocodile of the National Crocodile Conservation Centre at Bhitarkanika in Odisha, is a critically endangered species that survives in the perennial rivers of the northern India, and the National Gharial Conservation Programme has been running since 1975.',
    'hard',
    'Standard Reference',
    null,
    '24c1c6cbd8fbae8b3f65b8f1ae338e1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '24c1c6cbd8fbae8b3f65b8f1ae338e1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The largest crocodile of the world'),
            ('B', 'A species that is found in the mangrove swamps of the Sundarbans'),
            ('C', 'A freshwater turtle of the Western Ghats'),
            ('D', 'A critically endangered species of the rivers of the northern India')
           ) as v(label, option_text)
 where q.question_hash = '24c1c6cbd8fbae8b3f65b8f1ae338e1d'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The mass nesting of the ''olive ridley sea turtles'' takes place every year at:',
    'The Arribada, the mass nesting of the olive ridley sea turtles, takes place every year at the Rushikonda and the Bhitarkanika coasts of Odisha, and the state government runs the Operation Smile programme for the protection of the nesting turtles.',
    'hard',
    'Standard Reference',
    null,
    'b56eef875ba2fd7c5e88d54c7730b3d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b56eef875ba2fd7c5e88d54c7730b3d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rushikonda and the Bhitarkanika coasts of Odisha'),
            ('B', 'The Gulf of Kachchh of Gujarat'),
            ('C', 'The Pulicat lake of Andhra Pradesh'),
            ('D', 'The Pamban island of Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = 'b56eef875ba2fd7c5e88d54c7730b3d8'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Bharal'' or the blue sheep is the state animal of:',
    'The Bharal or the blue sheep is the state animal of Himachal Pradesh, while the state animal of Uttarakhand is the alpine musk deer and that of Ladakh is the Himalayan ibex.',
    'medium',
    'Standard Reference',
    null,
    '581d3b51dd29ec31fa406b6bb03c3d54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '581d3b51dd29ec31fa406b6bb03c3d54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ladakh'),
            ('B', 'Jammu and Kashmir'),
            ('C', 'Himachal Pradesh'),
            ('D', 'Uttarakhand')
           ) as v(label, option_text)
 where q.question_hash = '581d3b51dd29ec31fa406b6bb03c3d54'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Barasingha'' or the swamp deer is the state animal of:',
    'The Barasingha or the swamp deer is the state animal of Madhya Pradesh, and the Kanha National Park of the state is one of the important strongholds of this species.',
    'medium',
    'Standard Reference',
    null,
    '51a3e768bf121493e33907678536ef44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '51a3e768bf121493e33907678536ef44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chhattisgarh'),
            ('B', 'Madhya Pradesh'),
            ('C', 'Odisha'),
            ('D', 'Jharkhand')
           ) as v(label, option_text)
 where q.question_hash = '51a3e768bf121493e33907678536ef44'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Indian wild ass'' or the khur is the state animal of:',
    'The Indian wild ass or the khur is the state animal of Gujarat, and the Little Rann of Kutch and the Greater Rann of Kutch of Gujarat hold the last major population of the species, for which the ''Khur'' is the Asiatic wild ass.',
    'hard',
    'Standard Reference',
    null,
    '4a0ed66a66c71d97af071395466396bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4a0ed66a66c71d97af071395466396bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Rajasthan'),
            ('C', 'Punjab'),
            ('D', 'Haryana')
           ) as v(label, option_text)
 where q.question_hash = '4a0ed66a66c71d97af071395466396bb'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''West India Coastal Current'' flows:',
    'The West India Coastal Current flows northwards from the equator to the coast of Gujarat during the summer monsoon, and it reverses its direction in the winter and flows southwards, and the Somali Current shows the same seasonal reversal with the strongest upwelling in the summer.',
    'hard',
    'NCERT Class XI',
    null,
    '966d8935c4b85dd95af1de7666200179'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '966d8935c4b85dd95af1de7666200179'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Southwards from the Gujarat coast to the equator in the winter'),
            ('B', 'Northwards along the whole of the Indian coast throughout the year'),
            ('C', 'From the Bay of Bengal into the Arabian Sea through the Palk Strait'),
            ('D', 'Northwards from the equator to the Gujarat coast in the summer')
           ) as v(label, option_text)
 where q.question_hash = '966d8935c4b85dd95af1de7666200179'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Gulf of Kachchh'' and the ''Gulf of Cambay'' are famous for:',
    'The Gulf of Kachchh and the Gulf of Cambay, the Gulf of Khambhat, record one of the largest tidal ranges of the world, and the Gulf of Kachchh is among the few places in India with the potential for the generation of the tidal power.',
    'medium',
    'NCERT Class XI',
    null,
    '826b27b843477c8085fe77c4229614fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '826b27b843477c8085fe77c4229614fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cold water fisheries of the sardine'),
            ('B', 'The great tidal range and the tidal power potential'),
            ('C', 'The largest mangrove forest of India'),
            ('D', 'The coral reefs of the Red Sea')
           ) as v(label, option_text)
 where q.question_hash = '826b27b843477c8085fe77c4229614fd'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Deep Ocean Mission'' of India aims at:',
    'The Deep Ocean Mission of the Ministry of Earth Sciences is a multi-dimensional programme for the exploration of the deep ocean that covers the seabed and the marine life, the ocean climate and the ocean technologies, and it also supports the six deep ocean research and exploration projects.',
    'hard',
    'PIB',
    null,
    '7762b01df90db7484ef19369552ef7a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7762b01df90db7484ef19369552ef7a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The collection of the samples of the manganese nodules for the commercial mining'),
            ('B', 'The mapping of the sea floor for the navigation of the ships'),
            ('C', 'The exploration of the deep ocean for the minerals, the biodiversity and the climate data'),
            ('D', 'The setting up of the research vessels in the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '7762b01df90db7484ef19369552ef7a6'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''seagrass meadows'' of the Gulf of Mannar and the Palk Bay are important because they are:',
    'The seagrass meadows of the Gulf of Mannar and the Palk Bay are the nursery grounds of the fish and they are the storehouses of the blue carbon, and they also support the fisheries of the coastal communities of the Tamil Nadu coast.',
    'hard',
    'Standard Reference',
    null,
    'e220c6b9d0a26696e43c2b8976665d14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e220c6b9d0a26696e43c2b8976665d14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The only habitat of the dugong in the Indian Ocean'),
            ('B', 'The largest mangrove forests of the country'),
            ('C', 'The nursery grounds of the fish and the storehouses of the blue carbon'),
            ('D', 'The source of the pearl production')
           ) as v(label, option_text)
 where q.question_hash = 'e220c6b9d0a26696e43c2b8976665d14'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''National Marine Fisheries Policy'' of India was launched in:',
    'The National Marine Fisheries Policy was launched in 2017 with the aim of promoting the sustainable development of the marine fisheries and of raising the contribution of the fisheries to the food security and the economic growth, and it is followed by the Blue Revolution.',
    'hard',
    'PIB',
    null,
    '1ee34757dcd3b77637004b586385b38c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1ee34757dcd3b77637004b586385b38c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2017'),
            ('C', '2004'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '1ee34757dcd3b77637004b586385b38c'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Green Energy Corridor'' project of India is intended to:',
    'The Green Energy Corridor is an inter-regional transmission project that connects the renewable energy generating stations with the load centres, so that the renewable energy generated in the resource-rich states is carried to the demand centres.',
    'hard',
    'Standard Reference',
    null,
    'a2aa85e3d95d10c249e70a646428f397'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a2aa85e3d95d10c249e70a646428f397'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Interconnect the renewable energy generating stations with the load centres through the green energy transmission corridors'),
            ('B', 'Set up the solar parks in the desert regions of Rajasthan'),
            ('C', 'Finance the rooftop solar plants of the households'),
            ('D', 'Develop the offshore wind projects in the Gujarat coast')
           ) as v(label, option_text)
 where q.question_hash = 'a2aa85e3d95d10c249e70a646428f397'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Renewable Purchase Obligation'' in India obliges the:',
    'The Renewable Purchase Obligation obliges the distribution companies to purchase a specified percentage of their total requirement of the electricity from the renewable energy sources, and the renewable purchase obligation certificates are traded in the market.',
    'medium',
    'Standard Reference',
    null,
    '5d346c9c0548500616f44f4c1c838487'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5d346c9c0548500616f44f4c1c838487'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The thermal power plants to install the rooftop solar plants'),
            ('B', 'The industries to use the renewable energy in their production'),
            ('C', 'The states to set up the solar parks in every district'),
            ('D', 'The discoms to purchase a specified share of the electricity from the renewable sources')
           ) as v(label, option_text)
 where q.question_hash = '5d346c9c0548500616f44f4c1c838487'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''tidal energy'' projects in India are being developed mainly in the:',
    'The tidal energy is being developed mainly in the Gulf of Kachchh and the Gulf of Cambay where the tidal range is the highest, and the Gulf of Kachchh has the potential of about 7,000 megawatts of the tidal power.',
    'medium',
    'Standard Reference',
    null,
    'ea3b249f35038760717db11a94aba634'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ea3b249f35038760717db11a94aba634'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Andaman and Nicobar Islands'),
            ('B', 'Arabian Sea off the coast of Kerala'),
            ('C', 'Gulf of Kachchh and the Gulf of Cambay'),
            ('D', 'Bay of Bengal')
           ) as v(label, option_text)
 where q.question_hash = 'ea3b249f35038760717db11a94aba634'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Biomass'' power in India is generated mainly from the:',
    'The biomass power in the country is generated from the agricultural residues, the municipal solid waste and the industrial effluents, and the biogas plants of the family type are a significant part of this source.',
    'medium',
    'Standard Reference',
    null,
    '21d75cc7736ae86d1d48c3cb0e4ac23a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '21d75cc7736ae86d1d48c3cb0e4ac23a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The wood of the tropical forests'),
            ('B', 'The coal washery rejects'),
            ('C', 'The municipal sewage sludge'),
            ('D', 'Agricultural residues, the municipal solid waste and the industrial effluents')
           ) as v(label, option_text)
 where q.question_hash = '21d75cc7736ae86d1d48c3cb0e4ac23a'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Environment Policy, 2006'' of India:',
    'The National Environment Policy of 2006 laid down the objectives and the broad principles for the conservation and the development of the environment and for the integration of the environmental concerns in the developmental process, and the outcome was the setting up of the Environment Management Capacity Development Project.',
    'hard',
    'Standard Reference',
    null,
    'b194c440e8c6c0a95b8e8606cae01176'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b194c440e8c6c0a95b8e8606cae01176'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fixes the timings of the crop residues burning'),
            ('B', 'Sets out the objectives and the broad principles for the conservation and the development of the environment and for the integration of the environmental concerns in the developmental process'),
            ('C', 'Prescribes the emission standards for the thermal power plants'),
            ('D', 'Provides for the compensation of the loss of the forest cover')
           ) as v(label, option_text)
 where q.question_hash = 'b194c440e8c6c0a95b8e8606cae01176'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Forest Rights Act, 2006'' extends the community forest rights to:',
    'The Scheduled Tribes and Other Traditional Forest Dwellers (Recognition of Forest Rights) Act, 2006 recognises the forest rights of the tribal and the other traditional forest dwellers who have been residing in the forests for three generations or more, subject to the condition that the forest land is a government forest.',
    'hard',
    'Standard Reference',
    null,
    '28fc67fd8ba0c04b36b88cc9cf4cfdcd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '28fc67fd8ba0c04b36b88cc9cf4cfdcd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tribal and the other forest dwellers who have been residing in the forests for three generations or more'),
            ('B', 'Every household that owns a land deed in the village'),
            ('C', 'Only the members of the recognised forest rights committees'),
            ('D', 'The graziers who move with the cattle in the forests')
           ) as v(label, option_text)
 where q.question_hash = '28fc67fd8ba0c04b36b88cc9cf4cfdcd'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'Under the ''Environmental Impact Assessment Notification, 2006'', the Category A projects:',
    'The projects of the Category A, such as the mining and the industries, require the prior environmental clearance from the Ministry of Environment, Forest and Climate Change after the appraisal by the Expert Appraisal Committee, while the Category B projects need the clearance of the state level.',
    'medium',
    'Standard Reference',
    null,
    '685e9dae7685d56b3b1f21b2e6cf4e2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '685e9dae7685d56b3b1f21b2e6cf4e2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Require the prior environmental clearance of the Ministry of Environment, Forest and Climate Change'),
            ('B', 'Require only the clearance of the state pollution control board'),
            ('C', 'Are exempt from any environmental clearance'),
            ('D', 'Need the clearance only in the ecologically sensitive areas')
           ) as v(label, option_text)
 where q.question_hash = '685e9dae7685d56b3b1f21b2e6cf4e2b'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Green Tribunal'' consists of:',
    'The National Green Tribunal has a chairperson and the judicial and the technical members, and the chairperson of the tribunal is a retired judge of the Supreme Court or a Chief Justice of a High Court, while the chair of the appellate authority is the chairperson of the tribunal itself.',
    'hard',
    'Standard Reference',
    null,
    '27593e3e23da44beabf1143c1b3424ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '27593e3e23da44beabf1143c1b3424ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A chairperson and two full time judges appointed by the President'),
            ('B', 'The chairperson who is the Minister of Environment and the members who are the state forest officers'),
            ('C', 'Ten judicial and ten technical members elected by the state governments'),
            ('D', 'A chairperson and the judicial and the technical members, with the chairperson being a retired judge of the Supreme Court or a Chief Justice of a High Court')
           ) as v(label, option_text)
 where q.question_hash = '27593e3e23da44beabf1143c1b3424ff'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''COP27'' held at Sharm el-Sheikh in 2022:',
    'The COP27 at Sharm el-Sheikh agreed to establish the loss and damage fund for the vulnerable countries, which was operationalised at the COP28 with the pledges of about 700 million dollars for the first year.',
    'hard',
    'Standard Reference',
    null,
    '7c0c296810152de55c8b7f70610c0b42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7c0c296810152de55c8b7f70610c0b42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Set the target of the net zero emissions for 2070 for India'),
            ('B', 'Agreed to establish the operational details of the loss and damage fund and the fund was later operationalised at COP28'),
            ('C', 'Completed the first global stocktake of the Paris Agreement'),
            ('D', 'Adopted the Article 6 rules of the carbon markets')
           ) as v(label, option_text)
 where q.question_hash = '7c0c296810152de55c8b7f70610c0b42'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The first ''Global Stocktake'' of the Paris Agreement was completed at:',
    'The first global stocktake of the Paris Agreement was completed at the COP28 in Dubai in 2023, and the outcome was the call for the transition away from the fossil fuels in the energy systems in a just, orderly and equitable manner.',
    'hard',
    'Standard Reference',
    null,
    '679772487b328dbee8cd02d44d33a493'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '679772487b328dbee8cd02d44d33a493'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP27 at Sharm el-Sheikh in 2022'),
            ('B', 'COP29 at Baku in 2024'),
            ('C', 'COP28 at Dubai in 2023'),
            ('D', 'COP26 at Glasgow in 2021')
           ) as v(label, option_text)
 where q.question_hash = '679772487b328dbee8cd02d44d33a493'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Article 6'' of the Paris Agreement deals with:',
    'Article 6 of the Paris Agreement provides the framework of the cooperative approaches for the reporting of the emissions, the internationally transferred mitigation outcomes and the sustainable development mechanism of the carbon markets, and the rules on them were finalised at the COP26.',
    'hard',
    'Standard Reference',
    null,
    '19665017096e74763f721570a09568ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '19665017096e74763f721570a09568ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cooperative approaches for the reporting of the greenhouse gas emissions and the carbon markets'),
            ('B', 'The financial assistance to the developing countries'),
            ('C', 'The compliance of the non-Annex I countries'),
            ('D', 'The registration of the nationally determined contributions')
           ) as v(label, option_text)
 where q.question_hash = '19665017096e74763f721570a09568ed'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''loss and damage'' fund agreed at the COP27 is meant for:',
    'The loss and damage fund addresses the actual loss and the damage that the vulnerable developing countries face from the impacts of the climate change, which is different from the mitigation and the adaptation support provided under the Green Climate Fund.',
    'hard',
    'Standard Reference',
    null,
    '083fc761278f37beeac11d695af0746b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '083fc761278f37beeac11d695af0746b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The insurance of the renewable energy projects'),
            ('B', 'The research on the adaptation technologies'),
            ('C', 'The vulnerable developing countries that suffer the actual loss from the climate change impacts'),
            ('D', 'The reconstruction of the infrastructure in the cyclone affected states')
           ) as v(label, option_text)
 where q.question_hash = '083fc761278f37beeac11d695af0746b'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Bharat Stage VI'' emission norms:',
    'The Bharat Stage VI norms, which correspond to the Euro VI standards, were introduced in 2020 and brought down the sulphur content of the diesel to 10 ppm from the earlier 500 ppm, and they apply to the newly registered vehicles of the private and the commercial categories.',
    'hard',
    'Standard Reference',
    null,
    'a223916a738ab55ce2fa82ab5a5f4b83'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a223916a738ab55ce2fa82ab5a5f4b83'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Were introduced in 2010 for the private vehicles of Delhi'),
            ('B', 'Apply only to the commercial vehicles of the metropolitan cities'),
            ('C', 'Have replaced the fuel efficiency standards of the passenger cars'),
            ('D', 'Were introduced in 2020 and are the strictest of the emission standards of the world for the sulphur content of the fuel')
           ) as v(label, option_text)
 where q.question_hash = 'a223916a738ab55ce2fa82ab5a5f4b83'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''odd-even'' road rationing scheme of Delhi:',
    'The odd-even scheme of the National Green Tribunal in Delhi restricts the registration of the private cars on the odd and the even dates of the calendar in a bid to curb the vehicular pollution and the congestion on the roads of the city.',
    'medium',
    'Standard Reference',
    null,
    '85d8d927bcca74cb7fb6987d050990d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '85d8d927bcca74cb7fb6987d050990d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Requires the odd and the even licence plates to use the different fuel'),
            ('B', 'Restricts the registration of the private cars on the odd and the even dates of the calendar'),
            ('C', 'Bans the diesel vehicles on the odd numbered roads'),
            ('D', 'Restricts the movement of the goods vehicles in the night')
           ) as v(label, option_text)
 where q.question_hash = '85d8d927bcca74cb7fb6987d050990d6'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''National Ambient Air Quality Standards'' prescribed under the Air Act:',
    'The National Ambient Air Quality Standards were notified by the Central Pollution Control Board in 2009 for the twelve pollutants, and the standards include the annual and the 24-hour averages for the PM2.5 and the PM10 and the gaseous pollutants.',
    'hard',
    'Standard Reference',
    null,
    '0dd86c65a4901fdc059d405a4be70b94'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0dd86c65a4901fdc059d405a4be70b94'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Apply only to the cities with a population above one million'),
            ('B', 'Have been prescribed by the Central Pollution Control Board for the industrial units only'),
            ('C', 'Have been notified in 2009 for the twelve pollutants, including PM2.5, PM10, SO2, NO2, NH3, CO, ozone and lead'),
            ('D', 'Have been notified for only the particulate matter and the sulphur dioxide')
           ) as v(label, option_text)
 where q.question_hash = '0dd86c65a4901fdc059d405a4be70b94'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Solid Waste Management Rules, 2016'' in India:',
    'The Solid Waste Management Rules, 2016 apply to the generators of the solid waste, the local bodies, the waste processors and the recyclers, and they mandate the segregation of the waste at the source, the composting and the ban on the burning of the waste in the open.',
    'medium',
    'Standard Reference',
    null,
    '3ccab834d300e432c669c6c4378e4ebe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3ccab834d300e432c669c6c4378e4ebe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have prescribed the landfill only for the hazardous waste'),
            ('B', 'Apply to the generators of the solid waste, the local bodies and the waste processors, and mandate the segregation at the source'),
            ('C', 'Apply only to the municipal solid waste of the cities with a population above ten lakh'),
            ('D', 'Have made the segregation of the waste optional for the households')
           ) as v(label, option_text)
 where q.question_hash = '3ccab834d300e432c669c6c4378e4ebe'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''E-waste (Management) Rules, 2022'' in India:',
    'The E-waste (Management) Rules of 2022 replaced the 2016 rules, and they widened the definition of the e-waste, introduced the producer responsibility organisation, the registration of the producers and the recyclers on the centralised portal and the certification of the refurbishment.',
    'hard',
    'Standard Reference',
    null,
    'f97a395e1bf5aa2c6d9d75a9c1f35ea1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f97a395e1bf5aa2c6d9d75a9c1f35ea1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have replaced the 2016 rules and have introduced the concept of the producer responsibility organisation and the centralised portal for the registration'),
            ('B', 'Have limited the definition of the e-waste to the ten categories of the electronic items'),
            ('C', 'Have made the collection of the e-waste the responsibility of the municipal corporations'),
            ('D', 'Have introduced the deposit refund scheme for the electronic items')
           ) as v(label, option_text)
 where q.question_hash = 'f97a395e1bf5aa2c6d9d75a9c1f35ea1'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Plastic Waste Management Rules, 2016'' introduced in India:',
    'The Plastic Waste Management Rules of 2016 introduced the extended producer responsibility, the responsibilities of the local bodies and of the waste pickers, the set up of the plastic waste management rules and the registration of the producers, the importers and the recyclers on the central portal.',
    'medium',
    'Standard Reference',
    null,
    '339ceb46c5780b8368ded1d642c712fb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '339ceb46c5780b8368ded1d642c712fb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The complete ban on the plastic packaging in the country'),
            ('B', 'The deposit refund scheme of the plastic bottles'),
            ('C', 'The levy of the environmental compensation on the plastic manufacturers'),
            ('D', 'The concept of the extended producer responsibility and the responsibility of the local bodies and the waste pickers')
           ) as v(label, option_text)
 where q.question_hash = '339ceb46c5780b8368ded1d642c712fb'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Centralized Regulatory Authority for Biodegradable Products'' certifies:',
    'The Centralized Regulatory Authority for Biodegradable Products certifies the biodegradable products and the plastic waste pickers, and the certification is based on the standards of the Bureau of Indian Standards for the compostability of the products.',
    'hard',
    'Standard Reference',
    null,
    '887ceb8283deb0cb495d79d06ee07fe8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '887ceb8283deb0cb495d79d06ee07fe8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The food products of the food safety authority'),
            ('B', 'The biodegradable products and the plastic waste pickers for the certification of the compostability'),
            ('C', 'The organic fertilizers of the agriculture department'),
            ('D', 'The pollution control equipment of the industries')
           ) as v(label, option_text)
 where q.question_hash = '887ceb8283deb0cb495d79d06ee07fe8'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Waste picker'' cooperatives in India are supported by:',
    'The waste picker cooperatives are supported with the concessional credit and the interest subsidy of the Ministry of Housing and Urban Affairs under the Swachh Bharat Mission, which helps them to buy the tricycles, the pushcarts and the sorting and the shredding equipment and to get the the user fees.',
    'hard',
    'Standard Reference',
    null,
    'f156656ffbc2ea47055ca8848af79c30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f156656ffbc2ea47055ca8848af79c30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Concessional credit and the interest subsidy of the Ministry of Housing and Urban Affairs'),
            ('B', 'The direct funding of the Ministry of Environment'),
            ('C', 'The National Green Tribunal'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'f156656ffbc2ea47055ca8848af79c30'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Guidelines on the Management of the Marine and the Coastal Ecosystems'' and the ''Mangrove Atlas'':',
    'The National Guidelines on the Management of the Marine and the Coastal Ecosystems and the Mangrove Atlas were released by the Ministry of Environment, Forest and Climate Change, and the atlas maps the tidal zone mangroves of the country, which is useful for the coastal zone management and the biodiversity planning.',
    'hard',
    'PIB',
    null,
    '47a31731fe2aa986600ed81975636739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '47a31731fe2aa986600ed81975636739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the guidelines of the Indian Navy for the coastal security'),
            ('B', 'Are the guidelines of the Central Water Commission for the river projects'),
            ('C', 'Were released by the Ministry of Environment, Forest and Climate Change with the mapping of the tidal zone mangroves of the country'),
            ('D', 'Were prepared by the Survey of India for the navigation charts')
           ) as v(label, option_text)
 where q.question_hash = '47a31731fe2aa986600ed81975636739'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Mangrove and Wetland Atlas'' of India:',
    'The National Mangrove and Wetland Atlas was prepared by the Space Applications Centre with the support of the Ministry of Environment, Forest and Climate Change, and it maps the mangrove patches of the country and their carbon stocks.',
    'hard',
    'PIB',
    null,
    '60a6cd441f4a80913b802725edde761b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '60a6cd441f4a80913b802725edde761b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was prepared by the Indian Coast Guard for the navigational purpose'),
            ('B', 'Covers only the mangroves of the Sundarbans'),
            ('C', 'Was prepared by the Central Water Commission for the river basin planning'),
            ('D', 'Maps the 49 mangrove patches of the country and was prepared with the support of the MoEFCC and the Space Applications Centre')
           ) as v(label, option_text)
 where q.question_hash = '60a6cd441f4a80913b802725edde761b'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Bhitarkanika Mangroves'' of Odisha:',
    'The Bhitarkanika mangroves of Odisha host the largest congregation of the Indian grey dolphins in the world, and the area is also the home of the saltwater crocodile and the magnets of the migratory birds.',
    'hard',
    'Standard Reference',
    null,
    'e4085de8619f433eda1c7c5d466b5711'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e4085de8619f433eda1c7c5d466b5711'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the largest mangrove forest of the world'),
            ('B', 'Are the source of the famous Kalamkari painting of Odisha'),
            ('C', 'Host the largest congregation of the Indian grey dolphins in the world'),
            ('D', 'Are the only mangrove forests of the country with the tigers')
           ) as v(label, option_text)
 where q.question_hash = 'e4085de8619f433eda1c7c5d466b5711'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Gulf of Mannar'' region:',
    'The Gulf of Mannar and the Gulf of Kachchh were the first Marine National Parks of the country, notified in 2012, and the Gulf of Mannar is the habitat of the vulnerable dugong, along with the seagrass meadows and the coral reefs.',
    'hard',
    'Standard Reference',
    null,
    '5474cf2d8b6620597d6dcbf33c71872f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5474cf2d8b6620597d6dcbf33c71872f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the first Marine National Park of the country, notified in 2012, and it is the habitat of the dugong'),
            ('B', 'Holds the only coral reef of the Indian Ocean on the Indian coast'),
            ('C', 'Is the source of the finest pearls of the country'),
            ('D', 'Is the only place where the sea turtles nest in the country')
           ) as v(label, option_text)
 where q.question_hash = '5474cf2d8b6620597d6dcbf33c71872f'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''coral reefs'' of the Gulf of Kachchh:',
    'The coral reefs of the Gulf of Kachchh support the most diverse marine life of the country, with more than a hundred species of the fish and the corals, and they are threatened by the coastal development, the oil pollution and the coral bleaching caused by the warming of the sea.',
    'hard',
    'Standard Reference',
    null,
    '4b534004dd82b5220591aaa9a89324e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4b534004dd82b5220591aaa9a89324e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the only reefs of the country that are protected by a national park'),
            ('B', 'Are the source of the limestone of the Bhuj region'),
            ('C', 'Are the breeding grounds of the olive ridley turtles'),
            ('D', 'Support the most diverse marine life of the country and are threatened by the coastal development and the bleaching')
           ) as v(label, option_text)
 where q.question_hash = '4b534004dd82b5220591aaa9a89324e6'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Industrial and Commercial Policy'' of the Government of India:',
    'The Industrial Policy of 1991, which was followed by the Industrial and Commercial Policy, provided for the social and the industrial infrastructure, the consolidation of the public sector enterprises, the delicensing of the industries and the opening up of the foreign investment.',
    'hard',
    'Standard Reference',
    null,
    'b04244d97700b7a80c6323d969b6569f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b04244d97700b7a80c6323d969b6569f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prescribes the labour welfare measures of the factories'),
            ('B', 'Provides for the social and the industrial infrastructure, the consolidation of the public sector enterprises and the delicensing'),
            ('C', 'Fixes the tariffs of the public sector enterprises'),
            ('D', 'Regulates the foreign investment in the infrastructure sector')
           ) as v(label, option_text)
 where q.question_hash = 'b04244d97700b7a80c6323d969b6569f'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''National Disaster Management Guidelines'' for the management of the earthquakes:',
    'The National Disaster Management Authority has prepared the National Disaster Management Guidelines for the management of the earthquakes, the cyclones, the floods, the landslides, the drought and the biological disasters, and they lay down the standard operating procedures for the response and emphasise the non-structural measures and the community preparedness.',
    'hard',
    'Standard Reference',
    null,
    '8669a0997449bb8c3fe8449083379602'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8669a0997449bb8c3fe8449083379602'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have been prepared by the Indian Institute of Technology for the design of the buildings'),
            ('B', 'Are applicable only to the cities above ten lakh population'),
            ('C', 'Have been prepared by the Ministry of Housing and Urban Affairs'),
            ('D', 'Have been prepared by the National Disaster Management Authority with the emphasis on the non-structural measures and the community preparedness')
           ) as v(label, option_text)
 where q.question_hash = '8669a0997449bb8c3fe8449083379602'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Cyclone Preparedness Programme'' of the National Disaster Management Authority:',
    'The Cyclone Preparedness Programme of the NDMA works with the state governments, the NDRF and the IRCD to strengthen the community based preparedness through the training of the volunteers, the pre-positioning of the life saving equipment and the mock drills in the coastal districts.',
    'medium',
    'Standard Reference',
    null,
    '81b523f801a1c3aa02802f6f890dfe4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '81b523f801a1c3aa02802f6f890dfe4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Strengthens the community based cyclone preparedness through the training of the volunteers and the pre-positioning of the equipment'),
            ('B', 'Runs the cyclone warning system of the India Meteorological Department'),
            ('C', 'Builds the shelters of the coastal states'),
            ('D', 'Conducts the annual mock drills of the districts')
           ) as v(label, option_text)
 where q.question_hash = '81b523f801a1c3aa02802f6f890dfe4b'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''India Meteorological Department'' issues the cyclone warnings through:',
    'The India Meteorological Department issues the cyclone warnings through its Regional Cyclone Warning Centres, which are co-located with the regional meteorological centres at the four ports of Chennai, Mumbai, Kolkata and Kochi, and the warning is disseminated through the common warning protocol.',
    'hard',
    'Standard Reference',
    null,
    'da745b914498a522ecfcca107e139cec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'da745b914498a522ecfcca107e139cec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Institute of Oceanography at Goa'),
            ('B', 'The Central Water Commission at New Delhi'),
            ('C', 'The Regional Cyclone Warning Centres that are co-located with the regional meteorological centres'),
            ('D', 'The National Remote Sensing Centre at Hyderabad')
           ) as v(label, option_text)
 where q.question_hash = 'da745b914498a522ecfcca107e139cec'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The National Forest Policy, 1988 of India states that the main aim of the forest policy is:',
    'The National Forest Policy of 1988 states that the main aim of the forest policy is the scientific management of the forest lands for the sustained yield of the wood and the forest produce needed to meet the needs of the people, and it lays down the objectives of the forest conservation, the afforestation and the forest produce.',
    'hard',
    'Standard Reference',
    null,
    '5441dd6c9d32d8e18fc890fd22e57fc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5441dd6c9d32d8e18fc890fd22e57fc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the conservation of the genetic diversity of the forest species'),
            ('B', 'the scientific management of the forests for the sustained yield of the wood and the forest produce'),
            ('C', 'the protection of the wildlife and the biodiversity of the country'),
            ('D', 'the increase of the net forest area of the country by five per cent')
           ) as v(label, option_text)
 where q.question_hash = '5441dd6c9d32d8e18fc890fd22e57fc2'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''detritus food chain'' in an ecosystem:',
    'The detritus food chain starts from the dead organic matter that is broken down by the decomposers, and in the terrestrial ecosystems it is the major conduit of the energy flow, while in the aquatic ecosystems the grazing food chain is the larger one.',
    'medium',
    'NCERT Class XII',
    null,
    '95568351e9884350d237ea735b8934d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '95568351e9884350d237ea735b8934d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Starts with the green plants that are eaten by the herbivores'),
            ('B', 'Starts with the dead organic matter that is consumed by the decomposers'),
            ('C', 'Is absent in the terrestrial ecosystems'),
            ('D', 'Is the only food chain in the aquatic ecosystems')
           ) as v(label, option_text)
 where q.question_hash = '95568351e9884350d237ea735b8934d5'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The pyramid of the numbers in an ecosystem:',
    'The pyramid of the numbers is generally upright, but it can be inverted, as in the case of a single large tree that supports thousands of the herbivorous insects, which in turn support the birds that feed on them, so the pyramid of the energy is always upright.',
    'medium',
    'NCERT Class XII',
    null,
    'a30b5d80f28cf67ae79c43691d7d4f11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a30b5d80f28cf67ae79c43691d7d4f11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Can be inverted, as in the case of a single tree that supports a large number of the herbivorous insects'),
            ('B', 'Is always inverted in the aquatic ecosystems'),
            ('C', 'Can never be inverted in the grasslands'),
            ('D', 'Is always upright in all the ecosystems')
           ) as v(label, option_text)
 where q.question_hash = 'a30b5d80f28cf67ae79c43691d7d4f11'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'A ''secondary succession'' begins after:',
    'A secondary succession starts in an area that already has a soil and a community, such as after a fire, a flood or a clear felling, and it is faster than the primary succession that begins on the bare rock or the newly formed land.',
    'medium',
    'NCERT Class XII',
    null,
    '4bf55a556fc70228d237856e2fc06ce3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4bf55a556fc70228d237856e2fc06ce3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cultivation of a crop in a virgin land'),
            ('B', 'The arrival of the pioneers on a bare rock'),
            ('C', 'A disturbance that leaves the soil behind, such as a fire or a flood'),
            ('D', 'The extinction of the species in a region')
           ) as v(label, option_text)
 where q.question_hash = '4bf55a556fc70228d237856e2fc06ce3'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''age pyramid'' of a population is used to study:',
    'The age pyramid describes the age structure of a population with the three broad groups of the pre-reproductive, the reproductive and the post-reproductive age, and it helps to project the future growth of the population.',
    'easy',
    'NCERT Class XII',
    null,
    'b44de31a28d118b5fdf3dbd9e1ba0281'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b44de31a28d118b5fdf3dbd9e1ba0281'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The genetic diversity of the species'),
            ('B', 'The seasonality of the births and the deaths'),
            ('C', 'The productivity of the ecosystem'),
            ('D', 'The age structure of the population and its prospects of growth')
           ) as v(label, option_text)
 where q.question_hash = 'b44de31a28d118b5fdf3dbd9e1ba0281'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Red Data Book'' of India for the animals is published by the:',
    'The Zoological Survey of India publishes the Red Data Book for the animals and the Iconus for the plants, while the Botanical Survey of India publishes the Red Data Book for the flora of the country.',
    'hard',
    'Standard Reference',
    null,
    '1496b7b020117eedb8759711a1bcdf33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1496b7b020117eedb8759711a1bcdf33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Zoological Survey of India'),
            ('B', 'Botanical Survey of India'),
            ('C', 'Indian Council of Forestry Research and Education'),
            ('D', 'National Biodiversity Authority')
           ) as v(label, option_text)
 where q.question_hash = '1496b7b020117eedb8759711a1bcdf33'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The species that are threatened with the extinction and whose trade is permitted:',
    'The CITES Appendix I lists the species that are threatened with the extinction and for which the trade is permitted only in the exceptional circumstances, the Appendix II lists the species whose trade must be controlled and the Appendix III lists the species that are under the control of at least one party.',
    'medium',
    'Standard Reference',
    null,
    '42e5826145c8aad572b881e70d1798bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42e5826145c8aad572b881e70d1798bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The species that are the pests of the agriculture and the livestock'),
            ('B', 'The species that are found only in the marine waters'),
            ('C', 'The species that are threatened with the extinction and whose trade is permitted only in exceptional circumstances'),
            ('D', 'The species that are not threatened but that are traded under a permit')
           ) as v(label, option_text)
 where q.question_hash = '42e5826145c8aad572b881e70d1798bb'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''conservation reserves'' and the ''community reserves'' were provided for under the:',
    'The Wildlife (Protection) Act of 1972 provides for the national parks, the wildlife sanctuaries, the conservation reserves and the community reserves, and the closed forests are declared by the state governments and the central government.',
    'medium',
    'Standard Reference',
    null,
    '51bf67a75ea31f5492c17e8914f24dfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '51bf67a75ea31f5492c17e8914f24dfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Biological Diversity Act, 2002'),
            ('B', 'Wildlife (Protection) Act, 1972'),
            ('C', 'Forest (Conservation) Act, 1980'),
            ('D', 'Environment (Protection) Act, 1986')
           ) as v(label, option_text)
 where q.question_hash = '51bf67a75ea31f5492c17e8914f24dfc'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''four-horned antelope'' is the state animal of:',
    'The four-horned antelope or the black buck, the ttakathi, is the state animal of Karnataka, while the Indian giant squirrel is the state animal of Maharashtra and the Indian elephant is the state animal of Kerala and of Tamil Nadu.',
    'hard',
    'Standard Reference',
    null,
    '89651818c56504225c5155dbdb95eb7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '89651818c56504225c5155dbdb95eb7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Tamil Nadu'),
            ('C', 'Gujarat'),
            ('D', 'Karnataka')
           ) as v(label, option_text)
 where q.question_hash = '89651818c56504225c5155dbdb95eb7e'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''blackbuck'' is the state animal of:',
    'The blackbuck is the state animal of Haryana, and in Punjab the state animal is the blackbuck as well in the popular reckoning, while the state animal of Rajasthan is the chinkara or the Indian grey fox in the official list.',
    'hard',
    'Standard Reference',
    null,
    '622b831cf7aa12ebc7f7278f0f0b0b12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '622b831cf7aa12ebc7f7278f0f0b0b12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Punjab'),
            ('B', 'Uttar Pradesh'),
            ('C', 'Rajasthan'),
            ('D', 'Haryana')
           ) as v(label, option_text)
 where q.question_hash = '622b831cf7aa12ebc7f7278f0f0b0b12'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Indian giant squirrel'' is the state animal of:',
    'The Indian giant squirrel is the state animal of Maharashtra, and it is a keystone species of the forests of the Western Ghats, while the state bird of Maharashtra is the grey hornbill.',
    'hard',
    'Standard Reference',
    null,
    'e444b92215eb36d4d8153afd1b66ee60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e444b92215eb36d4d8153afd1b66ee60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Maharashtra'),
            ('C', 'Karnataka'),
            ('D', 'Gujarat')
           ) as v(label, option_text)
 where q.question_hash = 'e444b92215eb36d4d8153afd1b66ee60'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Sariska Tiger Reserve'' of Rajasthan is known for:',
    'The Sariska Tiger Reserve in the Alwar district of Rajasthan has a substantial population of the Bengal tiger and it was declared a UNESCO Biosphere Reserve, and the Dholpur and the Kalinjar sanctuaries are the other reserves of the state.',
    'hard',
    'Standard Reference',
    null,
    '251573dc0bd89b57499a73b1c6b727cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '251573dc0bd89b57499a73b1c6b727cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The population of the Bengal tiger and the Declaration of the Tiger Reserve as a UNESCO Biosphere Reserve'),
            ('B', 'The largest population of the Asiatic lion'),
            ('C', 'The nesting of the greater flamingo in the largest lake of India'),
            ('D', 'The only population of the wild camel of the world')
           ) as v(label, option_text)
 where q.question_hash = '251573dc0bd89b57499a73b1c6b727cf'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kudremukh National Park'' is located in:',
    'The Kudremukh National Park lies in the Chikmagalur district of Karnataka on the Western Ghats and it is a part of the Western Ghats World Heritage Site, and it is the easternmost limit of the range of the lion-tailed macaque.',
    'medium',
    'Standard Reference',
    null,
    '2558958f7782b435328c0385303bb63b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2558958f7782b435328c0385303bb63b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tamil Nadu'),
            ('B', 'Goa'),
            ('C', 'Karnataka'),
            ('D', 'Kerala')
           ) as v(label, option_text)
 where q.question_hash = '2558958f7782b435328c0385303bb63b'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Parambikulam Tiger Reserve'' is spread across:',
    'The Parambikulam Tiger Reserve lies on the southern slopes of the Anamalai hills in the Palakkad district of Kerala and the Anamalai district of Tamil Nadu, and it is known for the evergreen forests and for the large number of the leopards.',
    'hard',
    'Standard Reference',
    null,
    '6f49c013cf099e5cb55f3a16ffdec703'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6f49c013cf099e5cb55f3a16ffdec703'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra and Goa'),
            ('B', 'Kerala and Tamil Nadu'),
            ('C', 'Karnataka and Kerala'),
            ('D', 'Andhra Pradesh and Telangana')
           ) as v(label, option_text)
 where q.question_hash = '6f49c013cf099e5cb55f3a16ffdec703'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Dampa Tiger Reserve'' is located in:',
    'The Dampa Tiger Reserve in the Mamit district of Mizoram is the only tiger reserve of the state, and it was declared a reserve in 1978 when it was still a part of the Lushai hills, and the reserve is a part of the Indo-Burma biodiversity hotspot.',
    'hard',
    'Standard Reference',
    null,
    '086773e6ab3a3f761dbb53e2c23c19ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '086773e6ab3a3f761dbb53e2c23c19ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mizoram'),
            ('B', 'Nagaland'),
            ('C', 'Tripura'),
            ('D', 'Assam')
           ) as v(label, option_text)
 where q.question_hash = '086773e6ab3a3f761dbb53e2c23c19ce'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Kalakad Mundanthurai Tiger Reserve'' is the:',
    'The Kalakad Mundanthurai Tiger Reserve in the Tirunelveli and the Kanyakumari districts of Tamil Nadu is the fifth largest tiger reserve of the country and it has the largest area of the moist deciduous forest in the country.',
    'hard',
    'Standard Reference',
    null,
    'df55486d9c6b96940a3cf46a0f92574b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'df55486d9c6b96940a3cf46a0f92574b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only tiger reserve of the state of Karnataka'),
            ('B', 'Newest tiger reserve of the country, in the Sundarbans'),
            ('C', 'Fifth largest tiger reserve of India, in Tamil Nadu'),
            ('D', 'Largest tiger reserve of India, in the Andaman Islands')
           ) as v(label, option_text)
 where q.question_hash = 'df55486d9c6b96940a3cf46a0f92574b'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Intended Nationally Determined Contribution'' of India under the Paris Agreement was to:',
    'India''s INDC, ratified in 2015, committed to the reduction of the emission intensity of the gross domestic product by 33 to 35 per cent by 2030 from the 2005 levels, and it also pledged to have about 40 per cent of the installed capacity of the power sector from the non-fossil sources by 2030.',
    'hard',
    'Standard Reference',
    null,
    '2e538749f641baeee5f7d1a7caaa8b09'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e538749f641baeee5f7d1a7caaa8b09'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reduce the total greenhouse gas emissions by 50 per cent by 2030 from the 1990 levels'),
            ('B', 'Reach the net zero emissions by 2030'),
            ('C', 'Reduce the carbon intensity of the economy by 5 per cent by 2020'),
            ('D', 'Reduce the emission intensity of the gross domestic product by 33 to 35 per cent by 2030 from the 2005 levels')
           ) as v(label, option_text)
 where q.question_hash = '2e538749f641baeee5f7d1a7caaa8b09'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Ozone hole'' over the Antarctica is caused by:',
    'The depletion of the ozone layer over the Antarctica is caused by the chlorofluorocarbons and the other ozone depleting substances that release the chlorine and the bromine radicals in the stratosphere, and this is why the Montreal Protocol was adopted in 1987.',
    'medium',
    'NCERT Class XI',
    null,
    '8a23abb29f13484cec22b22ce09cc4c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8a23abb29f13484cec22b22ce09cc4c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The depletion of the phytoplankton of the Antarctic Ocean'),
            ('B', 'The chlorofluorocarbons and the other ozone depleting substances that are released into the stratosphere'),
            ('C', 'The soot particles of the tropical fires'),
            ('D', 'The greenhouse gases that trap the heat of the sun')
           ) as v(label, option_text)
 where q.question_hash = '8a23abb29f13484cec22b22ce09cc4c3'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''silence zone'' of 100 metres is prescribed around:',
    'The Noise Pollution (Regulation and Control) Rules, 2000 prescribe the silence zones of 100 metres around the hospitals, the educational institutions and the courts, in which no honking and no sound of the loudspeakers is permitted.',
    'hard',
    'Standard Reference',
    null,
    '226a90fd743a13c7f82e0e560c621d97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '226a90fd743a13c7f82e0e560c621d97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The residential colonies of the cities'),
            ('B', 'The industrial establishments of the notified categories'),
            ('C', 'The airports and the railway stations'),
            ('D', 'The hospitals, the educational institutions and the courts')
           ) as v(label, option_text)
 where q.question_hash = '226a90fd743a13c7f82e0e560c621d97'
on conflict (question_id, label) do nothing;

-- environment | pollution | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''Class I'' and the ''Class II'' waters under the Water Act, 1974:',
    'The Water Act of 1974 classifies the water into the Class A for the drinking and the Class B for the bathing, the Class C for the propagation of the fish and the Class D for the irrigation, and the designated best use class water has the highest priority.',
    'hard',
    'Standard Reference',
    null,
    'ee02715f3458718ae833699fe4b8bbae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee02715f3458718ae833699fe4b8bbae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the two categories of the water treatment plants'),
            ('B', 'Classify the rivers on the basis of the pollution levels of the CPCB'),
            ('C', 'Denote the intended use of the water, the Class I being the drinking water and the Class II being the water for the propagation of the fish and the irrigation'),
            ('D', 'Denote the degree of the pollution of the water in the two stretches of the river')
           ) as v(label, option_text)
 where q.question_hash = 'ee02715f3458718ae833699fe4b8bbae'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Biomedical Waste Management Rules, 2016'' in India:',
    'The Biomedical Waste Management Rules of 2016 categorise the biomedical waste into the four groups, prescribe the colour coding of the bags and the containers, and require the segregation at the point of the generation and the authorisation of the healthcare facilities for the collection and the transport.',
    'hard',
    'Standard Reference',
    null,
    '90f00ae975ba3445771c959a562a664e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90f00ae975ba3445771c959a562a664e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Categorise the biomedical waste into the four groups and prescribe the colour coding of the bags and the containers'),
            ('B', 'Ban the import of the medical equipment'),
            ('C', 'Fix the emission standards for the medical waste incinerators'),
            ('D', 'Provide for the registration of the hospitals for the waste collection')
           ) as v(label, option_text)
 where q.question_hash = '90f00ae975ba3445771c959a562a664e'
on conflict (question_id, label) do nothing;

-- environment | waste-management | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Swachh Survekshan'' is:',
    'The Swachh Survekshan, the annual city sanitation survey of the Ministry of Housing and Urban Affairs, ranks the cities on the basis of the waste management, the water supply, the drainage, the cleanliness of the roads and the citizen''s satisfaction with the services.',
    'medium',
    'Standard Reference',
    null,
    '0ea57f0244cedf565781f5ff14e53470'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ea57f0244cedf565781f5ff14e53470'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The inspection of the cleanliness of the tourist places by the Ministry of Tourism'),
            ('B', 'The audit of the solid waste management of the smart cities'),
            ('C', 'The annual city sanitation survey conducted by the Ministry of Housing and Urban Affairs'),
            ('D', 'The quarterly review of the cleanliness of the railway stations')
           ) as v(label, option_text)
 where q.question_hash = '0ea57f0244cedf565781f5ff14e53470'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Marine Products Export Development Authority'' is:',
    'The Marine Products Export Development Authority, established in 1972, is the statutory body that promotes the marine exports of the country and the development of the fisheries, and it is headquartered at Kochi with the regional offices in the coastal states.',
    'hard',
    'Standard Reference',
    null,
    'c1ff2930375002fe24dfc1ed0afef0b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c1ff2930375002fe24dfc1ed0afef0b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The statutory body that promotes the marine exports of the country and the development of the fisheries'),
            ('B', 'The body that regulates the aquaculture in the coastal states'),
            ('C', 'The organisation that runs the fishing harbours of the country'),
            ('D', 'The agency that certifies the marine catch for the domestic market')
           ) as v(label, option_text)
 where q.question_hash = 'c1ff2930375002fe24dfc1ed0afef0b4'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''El Nino'' is the:',
    'El Nino is the appearance of warm water in place of the cold water off the coast of Peru and Ecuador in the equatorial Pacific Ocean, and it alters the pattern of the atmospheric circulation and weakens the monsoon over the Indian Ocean.',
    'medium',
    'Standard Reference',
    null,
    '6f348c79adc97796b70e208a76b2b8b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6f348c79adc97796b70e208a76b2b8b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cooling of the surface of the equatorial Pacific Ocean'),
            ('B', 'The rotation of the earth that reverses the direction of the monsoon winds'),
            ('C', 'The storm in the Bay of Bengal that occurs every three years'),
            ('D', 'Warming of the surface of the equatorial Pacific Ocean off the coast of Peru that affects the monsoon of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '6f348c79adc97796b70e208a76b2b8b0'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Jawaharlal Nehru National Solar Mission'' was launched in 2022 with the objective of:',
    'The Jawaharlal Nehru National Solar Mission, launched in 2022, targets the addition of about 300 GW of the solar power capacity by 2030-31, of which 50 GW is to be the large scale centralised and the rest is the distributed and the rooftop solar.',
    'hard',
    'PIB',
    null,
    'b6ba33defe6926e051608619311a99ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6ba33defe6926e051608619311a99ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Setting up the solar power plants in every district of the country'),
            ('B', 'Adding about 300 GW of the solar power capacity by 2030-31'),
            ('C', 'Adding about 100 GW of the solar power capacity by 2030-31'),
            ('D', 'Making the rooftop solar compulsory for the public buildings')
           ) as v(label, option_text)
 where q.question_hash = 'b6ba33defe6926e051608619311a99ec'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''CERC'' or the Central Electricity Regulatory Commission:',
    'The Central Electricity Regulatory Commission, set up under the Electricity Act of 2003, regulates the tariff of the generation, the transmission and the distribution of the electricity, and the state regulatory commissions do the same for the distribution within their states.',
    'medium',
    'Standard Reference',
    null,
    'd2b5ba5f0853733a679f8462dd82bbec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd2b5ba5f0853733a679f8462dd82bbec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Certifies the energy efficiency of the appliances'),
            ('B', 'Regulates the tariffs of the generation, the transmission and the distribution of the electricity under the Electricity Act, 2003'),
            ('C', 'Licenses the electrical contractors of the states'),
            ('D', 'Approves the projects of the renewable energy for the subsidy')
           ) as v(label, option_text)
 where q.question_hash = 'd2b5ba5f0853733a679f8462dd82bbec'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Central Zoo Authority'' of India:',
    'The Central Zoo Authority, constituted in 1993 under the Ministry of Environment, Forest and Climate Change, monitors the zoos and the recognised rescue and rehabilitation centres for the animal welfare and the standards of the care of the animals.',
    'hard',
    'Standard Reference',
    null,
    'e11cd58c88629c873811d1ec202b117a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e11cd58c88629c873811d1ec202b117a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Runs the national parks of the country'),
            ('B', 'Regulates the wildlife trade in the country'),
            ('C', 'Maintains the the national stud book of the wild animals'),
            ('D', 'Monitors and controls the zoos and the recognised rescue and rehabilitation centres')
           ) as v(label, option_text)
 where q.question_hash = 'e11cd58c88629c873811d1ec202b117a'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Forest Survey of India'' publishes the:',
    'The Forest Survey of India, a premier national organisation, publishes the State of Forest Report every two years, which is the biennial assessment of the forest and the tree cover of the country and of the state wise and the district wise changes in it.',
    'medium',
    'Standard Reference',
    null,
    '96691f208530c5238fa268d981bf1b2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96691f208530c5238fa268d981bf1b2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State of Forest Report, the biennial assessment of the forest and the tree cover of the country'),
            ('B', 'The national inventory of the wildlife population'),
            ('C', 'The red data books of the flora and the fauna'),
            ('D', 'The annual report of the tiger reserves')
           ) as v(label, option_text)
 where q.question_hash = '96691f208530c5238fa268d981bf1b2f'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Indian Council of Forestry Research and Education'':',
    'The Indian Council of Forestry Research and Education, with its headquarters at Dehradun, is the premier national research organisation for the forestry, and it also runs the Forest Research Institute, the Wildlife Institute of India, the National Forest Research Institute and the Central Inland Fisheries Research Institute.',
    'hard',
    'Standard Reference',
    null,
    '6c28091c6cb10696068f92f6c6274d1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6c28091c6cb10696068f92f6c6274d1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the research wing of the Central Water Commission at New Delhi'),
            ('B', 'Is the body that conducts the national forest inventories of the elephants'),
            ('C', 'Is the premier national research organisation for the forestry and is located at Dehradun'),
            ('D', 'Is the national body for the marine fisheries research and is located at Kochi')
           ) as v(label, option_text)
 where q.question_hash = '6c28091c6cb10696068f92f6c6274d1c'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''seismic zones'' of India as per the Indian Standard seismic zoning map:',
    'The Indian Standard seismic zoning map divides the country into the five seismic zones, and the Zone V, the most vulnerable, covers the whole of the north-eastern states, the north of Bihar, the Kangra and the valley areas of Himachal Pradesh, the Jammu and Kashmir region and the Rann of Kutch.',
    'hard',
    'Standard Reference',
    null,
    '2ec5604bf4219022d4198072c95a63ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2ec5604bf4219022d4198072c95a63ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Divide the country into five zones, with the Zone V covering the whole of the north-eastern states, the north of Bihar, the Kangra valley and the Rann of Kutch'),
            ('B', 'Divide the country into four zones, with the Zone IV being the least seismic'),
            ('C', 'Cover only the Himalayan belt in the four zones'),
            ('D', 'Are based on the intensity of the past cyclones and not on the earthquakes')
           ) as v(label, option_text)
 where q.question_hash = '2ec5604bf4219022d4198072c95a63ee'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'A ''heat wave'' is declared by the India Meteorological Department when the maximum temperature is:',
    'The IMD declares a heat wave when the maximum temperature touches 40 degrees Celsius or more in the plains and 30 degrees Celsius or more in the hills, and the heat wave is declared when the deviation from the normal is at least 4.5 degrees Celsius.',
    'hard',
    'Standard Reference',
    null,
    '8d83fe98a9da53d36896fca9e5ca2152'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d83fe98a9da53d36896fca9e5ca2152'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '45 degrees Celsius or more in the plains'),
            ('B', '38 degrees Celsius or more in the coastal stations'),
            ('C', '40 degrees Celsius or more in the plains and 30 degrees Celsius or more in the hills'),
            ('D', '35 degrees Celsius or more in the plains')
           ) as v(label, option_text)
 where q.question_hash = '8d83fe98a9da53d36896fca9e5ca2152'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Aapda Mitra'' and the ''Community Emergency Response Team'' are:',
    'The Aapda Mitra scheme of the NDMA trains the community volunteers in the vulnerable villages so that they can carry out the last mile response in the event of a disaster, and the Community Emergency Response Team works with the district administration for the evacuation and the rescue operations.',
    'hard',
    'Standard Reference',
    null,
    'f81bfd907e8e54eeae27610a34804991'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f81bfd907e8e54eeae27610a34804991'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The officers of the National Response Corps of the states'),
            ('B', 'The volunteers of the National Service Corps of the colleges'),
            ('C', 'The teams of the Border Security Force for the border villages'),
            ('D', 'The community level volunteers trained by the National Disaster Management Authority for the last mile response')
           ) as v(label, option_text)
 where q.question_hash = 'f81bfd907e8e54eeae27610a34804991'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Community Based Disaster Preparedness'' programme of the National Disaster Management Authority:',
    'The Community Based Disaster Preparedness programme aims at the community level preparedness through the training of the village level teams and the conduct of the mock drills in the vulnerable districts, and it is funded under the SDRF and the NDRF norms.',
    'hard',
    'Standard Reference',
    null,
    '0b04faa5aa8c04837f816e54ddb2eeae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0b04faa5aa8c04837f816e54ddb2eeae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the scheme for the development of the coastal shelter belts'),
            ('B', 'Aims at the community level preparedness through the training of the village teams and the mock drills in the vulnerable districts'),
            ('C', 'Is the programme for the reconstruction of the multi-hazard shelters'),
            ('D', 'Provides the insurance cover to the crops and the livestock')
           ) as v(label, option_text)
 where q.question_hash = '0b04faa5aa8c04837f816e54ddb2eeae'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''natural greenhouse effect'' of the earth is caused by:',
    'The natural greenhouse effect is caused by the greenhouse gases of the atmosphere, mainly the carbon dioxide, the water vapour and the methane, that trap a part of the outgoing long wave radiation and keep the earth warm enough for life.',
    'medium',
    'NCERT Class XI',
    null,
    'd467dc0596f76d4a8534ed1677b1bb00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd467dc0596f76d4a8534ed1677b1bb00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The heat generated by the volcanoes'),
            ('B', 'The compression of the atmosphere by the weight of the oceans'),
            ('C', 'The presence of the greenhouse gases in the atmosphere that trap the outgoing infrared radiation'),
            ('D', 'The reflection of the sunlight by the clouds')
           ) as v(label, option_text)
 where q.question_hash = 'd467dc0596f76d4a8534ed1677b1bb00'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''photochemical smog'' that occurs in the cities:',
    'The photochemical smog is the oxidising smog that is formed by the photochemical reaction of the nitrogen oxides and the hydrocarbons in the presence of the sunlight, and it contains the ozone, the PAN and the aldehydes, while the sulphur dioxide smog of London is a reducing smog.',
    'medium',
    'NCERT Class XI',
    null,
    'aea5943bd2873f3ebcd93577285f6687'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aea5943bd2873f3ebcd93577285f6687'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is formed by the photochemical reaction between the nitrogen oxides and the hydrocarbons in the presence of the sunlight'),
            ('B', 'Is the result of the fog of the winter that mixes with the smoke of the chimneys'),
            ('C', 'Is the same as the sulphur dioxide smog of the industrial towns'),
            ('D', 'Is caused by the dust storms of the arid regions')
           ) as v(label, option_text)
 where q.question_hash = 'aea5943bd2873f3ebcd93577285f6687'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''sewage treatment'' in India:',
    'The sewage treatment is a combination of the primary, the secondary and the tertiary stages, in which the primary treatment removes the solids, the secondary treatment uses the aerobic and the anaerobic bacterial action and the tertiary treatment polishes the water for the reuse in the industry and the agriculture.',
    'medium',
    'Standard Reference',
    null,
    'ce00dc02ca8f34bdd01f10184fdbc33e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ce00dc02ca8f34bdd01f10184fdbc33e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a chemical process in which the chlorine is added to the water'),
            ('B', 'Is a biological process in which the bacteria break down the organic matter of the sewage'),
            ('C', 'Is a physical process of the filtration of the sewage through the sand beds'),
            ('D', 'Uses the aerobic and the anaerobic processes followed by the secondary and the tertiary treatment for the reuse of the treated water')
           ) as v(label, option_text)
 where q.question_hash = 'ce00dc02ca8f34bdd01f10184fdbc33e'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''Refuse Derived Fuel'' and the ''Waste to Energy'' plants in India:',
    'The Refuse Derived Fuel and the Waste to Energy plants burn the segregated combustible fraction of the municipal solid waste to generate the electricity, and the residual bottom ash and the fly ash are used in the construction of the roads, the bricks and the landfill cover.',
    'hard',
    'Standard Reference',
    null,
    '353f201e28682c9b4cd707c1d815ebe9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '353f201e28682c9b4cd707c1d815ebe9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Produce the fuel from the agricultural residues for the industries'),
            ('B', 'Burn the segregated combustible fraction of the municipal solid waste to generate the electricity and the bottom ash that is used in the construction'),
            ('C', 'Compost the mixed municipal solid waste in the sanitary landfill'),
            ('D', 'Convert the sewage sludge into the biogas for the rural households')
           ) as v(label, option_text)
 where q.question_hash = '353f201e28682c9b4cd707c1d815ebe9'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''mariculture'' refers to:',
    'Mariculture is the cultivation of the marine and the brackish water species of the fish, the shrimps, the mussels, the oysters and the seaweeds, and it complements the capture fisheries in meeting the growing demand of the seafood.',
    'medium',
    'Standard Reference',
    null,
    'a8c6673e20af19e598d9bc9d357d1990'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8c6673e20af19e598d9bc9d357d1990'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The trade of the marine products in the international markets'),
            ('B', 'The farming of the marine and the brackish water species of fish, the shrimps and the molluscs'),
            ('C', 'The capture of the fish in the open sea with the trawlers'),
            ('D', 'The processing of the fish in the cold storage units')
           ) as v(label, option_text)
 where q.question_hash = 'a8c6673e20af19e598d9bc9d357d1990'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Turtle Excluder Devices'' in the fishing nets are used to:',
    'The Turtle Excluder Devices are fitted in the trawl nets so that the sea turtles escape from the nets while the shrimp and the small fish are retained, and their use is mandatory for the trawlers in the notified areas.',
    'hard',
    'Standard Reference',
    null,
    '7ba04f7d1121ff1c51fc7778a1ad91d9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7ba04f7d1121ff1c51fc7778a1ad91d9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mark the nets of the fishing trawlers'),
            ('B', 'Measure the size of the fish that is caught'),
            ('C', 'Allow the escape of the sea turtles while retaining the shrimp and the small fish'),
            ('D', 'Prevent the entry of the jellyfish into the nets')
           ) as v(label, option_text)
 where q.question_hash = '7ba04f7d1121ff1c51fc7778a1ad91d9'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''coral bleaching'' of 2016 and 2017 affected:',
    'The mass coral bleaching event of 2016 and 2017 affected a large part of the reefs of the Indian and the Pacific Oceans, and it was driven by the anomalous warming of the sea, which causes the corals to expel the symbiotic algae that give them their colour.',
    'hard',
    'Standard Reference',
    null,
    '2d9ea93abd0ec0c0f5dc184702ac98cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2d9ea93abd0ec0c0f5dc184702ac98cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Large parts of the reefs of the Indian Ocean and the Pacific, and it was driven by the warming of the sea'),
            ('B', 'Only the reefs of the Gulf of Mannar'),
            ('C', 'The mangrove forests of the Sundarbans'),
            ('D', 'The seagrass meadows of the Palk Bay')
           ) as v(label, option_text)
 where q.question_hash = '2d9ea93abd0ec0c0f5dc184702ac98cd'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''dugong'' of the Gulf of Mannar and the Gulf of Kachchh:',
    'The dugong is a marine mammal that grazes on the seagrasses of the shallow seas and it is listed in the Schedule I of the Wildlife (Protection) Act, and the population of the species in the Indian seas is small and threatened.',
    'hard',
    'Standard Reference',
    null,
    '3188432aeb65db87b30ae1ceced7dccd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3188432aeb65db87b30ae1ceced7dccd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a large fish that is caught for the oil'),
            ('B', 'Is the juvenile of the green sea turtle'),
            ('C', 'Is a crustacean that is farmed in the coastal areas'),
            ('D', 'Is a vulnerable marine mammal that feeds on the seagrasses and the is listed in the Schedule I of the Wildlife Act')
           ) as v(label, option_text)
 where q.question_hash = '3188432aeb65db87b30ae1ceced7dccd'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''National Biogas Programme'' of India:',
    'The National Biogas Programme aims at the promotion of the family type biogas plants, of the crop residue based biogas plants and of the community plants, with the objective of providing the clean cooking fuel to the rural households and of the organic manure to the fields.',
    'medium',
    'Standard Reference',
    null,
    '5ce3e6559ba344c5c28ee7504a90ebe4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ce3e6559ba344c5c28ee7504a90ebe4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Promotes the setting up of the family type biogas plants for the rural households and the crop residue based plants'),
            ('B', 'Promotes the anaerobic digestion of the sewage sludge in the cities'),
            ('C', 'Supports the production of the compressed natural gas from the coal mine methane'),
            ('D', 'Funds the setting up of the gasification plants of the biomass in the villages')
           ) as v(label, option_text)
 where q.question_hash = '5ce3e6559ba344c5c28ee7504a90ebe4'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''Jaisalmer Solar Park'' of the NTPC:',
    'The Jaisalmer solar park of the NTPC in the Thar desert of Rajasthan is a 100 MW solar thermal plant that was commissioned in 2013, and it uses the molten salt technology for the storage of the heat, so that the plant can run after the sunset.',
    'hard',
    'Standard Reference',
    null,
    'dadf7394a0883f4ea1cd2da70f749edc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dadf7394a0883f4ea1cd2da70f749edc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is located in the Thar desert of Rajasthan near the Bhadla park'),
            ('B', 'Is a 100 MW solar thermal plant commissioned in 2013 with the solar salt technology for the storage of the heat'),
            ('C', 'Is the largest photovoltaic park of the country'),
            ('D', 'Was set up for the electrolysis of the water for the green hydrogen')
           ) as v(label, option_text)
 where q.question_hash = 'dadf7394a0883f4ea1cd2da70f749edc'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''round the clock'' solar projects in India:',
    'The round the clock solar projects combine the solar and the wind capacity with the storage so that the electricity can be supplied throughout the day and the night, and the Ministry of New and Renewable Energy has planned such projects for the renewable rich states.',
    'hard',
    'Standard Reference',
    null,
    'a9517d735d378bf4d6552410f87d5be6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a9517d735d378bf4d6552410f87d5be6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the solar parks that operate only during the daylight hours'),
            ('B', 'Are the rooftop plants of the government buildings'),
            ('C', 'Are the solar thermal plants of the Jaisalmer type'),
            ('D', 'Combine the solar and the wind or the storage so that the plant supplies the power through the day and the night')
           ) as v(label, option_text)
 where q.question_hash = 'a9517d735d378bf4d6552410f87d5be6'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Schedule II'' of the Wildlife (Protection) Act, 1972 contains:',
    'The Schedule I of the Wildlife Act contains the species that are fully protected, the Schedule II lists the species that are protected but the hunting of which is permitted in a limited manner, and the Schedule III lists the plants that are protected.',
    'medium',
    'Standard Reference',
    null,
    'cda83d529fa39c6a0031dd3a5e3145be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cda83d529fa39c6a0031dd3a5e3145be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The species that are completely protected from any hunting or killing'),
            ('B', 'The list of the protected areas of the country'),
            ('C', 'The species that are protected but the hunting of which is permitted in a limited manner'),
            ('D', 'The plants that are protected in the country')
           ) as v(label, option_text)
 where q.question_hash = 'cda83d529fa39c6a0031dd3a5e3145be'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Biodiversity Boards'' at the state level:',
    'The State Biodiversity Boards are the bodies that implement the Biological Diversity Act in the states, and the biodiversity of the state and the local bodies has to be consulted for the access to the biological resources and for the commercial use of the biological resources.',
    'hard',
    'Standard Reference',
    null,
    '9d95448bb80d7b3ac83637f9611a8f64'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9d95448bb80d7b3ac83637f9611a8f64'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the appellate authorities for the orders of the National Green Tribunal'),
            ('B', 'Are the bodies that certify the organic farming of the state'),
            ('C', 'Are the bodies that implement the Biological Diversity Act in the states and they have to be consulted for the access to the biological resources'),
            ('D', 'Are the bodies that decide the compensation for the forest diversion')
           ) as v(label, option_text)
 where q.question_hash = '9d95448bb80d7b3ac83637f9611a8f64'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''consent to establish and to operate'' by the state pollution control board:',
    'The consent to establish and the consent to operate under the Water Act and the Air Act are the environmental clearances that a unit must obtain from the state pollution control board before it starts the operations and for the compliance of the standards of the emissions.',
    'medium',
    'Standard Reference',
    null,
    'd677f650922c8788ade9c20ff8d7e32a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd677f650922c8788ade9c20ff8d7e32a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the registration of the unit for the air quality monitoring'),
            ('B', 'Is the mandatory environmental clearance that a polluting unit must have before it starts the operations'),
            ('C', 'Is a certificate for the rainwater harvesting of the industrial unit'),
            ('D', 'Is the licence of the hazardous waste handling unit')
           ) as v(label, option_text)
 where q.question_hash = 'd677f650922c8788ade9c20ff8d7e32a'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Integrated Flood Management Programme'' of India:',
    'The Integrated Flood Management Programme works with the basin organisations, the state governments and the communities for the flood management, the flood plain management, the improvement of the flood forecasting and the capacity building of the flood management professionals.',
    'hard',
    'Standard Reference',
    null,
    'cbca26997b056939f369f482e161f367'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cbca26997b056939f369f482e161f367'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Works with the river basin organisations and the state governments for the flood management and the flood plain management'),
            ('B', 'Is the scheme for the construction of the large dams'),
            ('C', 'Is the programme for the river linking projects'),
            ('D', 'Is the scheme for the desiltation of the canals of the irrigation departments')
           ) as v(label, option_text)
 where q.question_hash = 'cbca26997b056939f369f482e161f367'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Drought Management Plan'' of a state in India:',
    'Every state government prepares a drought management plan that lists the drought prone blocks on the basis of the drought severity index, the historical rainfall and the vulnerability, and it also contains the contingency plan for the drought response.',
    'hard',
    'Standard Reference',
    null,
    '7fef419f50d16ce0c5710c2e30e2934a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7fef419f50d16ce0c5710c2e30e2934a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a document of the central government for the drought relief funds'),
            ('B', 'Is a plan of the command area development for the irrigation works'),
            ('C', 'Is the cropping pattern that the state follows in a drought year'),
            ('D', 'Is prepared by the state government and it lists the drought prone blocks with the drought severity indices and the contingency plan')
           ) as v(label, option_text)
 where q.question_hash = '7fef419f50d16ce0c5710c2e30e2934a'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Clean Development Mechanism'' of the Kyoto Protocol:',
    'The Clean Development Mechanism of the Kyoto Protocol allows the countries with the binding targets to invest in the emission reduction projects in the developing countries and to earn the certified emission reduction units against their commitments, while the Joint Implementation and the emissions trading are the other two mechanisms.',
    'hard',
    'Standard Reference',
    null,
    'a78cdd30f4fdebc971c0c54466aac94e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a78cdd30f4fdebc971c0c54466aac94e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides for the trading of the emission allowances inside the European Union'),
            ('B', 'Allows the industrialised countries to invest in the emission reduction projects in the developing countries and to earn the certified emission reduction units'),
            ('C', 'Requires the developing countries to reduce their emissions by five per cent from the 1990 levels'),
            ('D', 'Sets the binding targets for the developed countries only')
           ) as v(label, option_text)
 where q.question_hash = 'a78cdd30f4fdebc971c0c54466aac94e'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''100 billion dollars a year'' climate finance commitment:',
    'The developed countries had committed in 2009 to the mobilisation of 100 billion dollars a year by 2020 for the climate finance, and at the COP29 in Baku in 2024 this was replaced by the new collective quantified goal of at least 300 billion dollars a year by 2035.',
    'hard',
    'Standard Reference',
    null,
    '92335d5bb7bcfb11e416d47b0ec6275e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '92335d5bb7bcfb11e416d47b0ec6275e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the pledge of the developing countries to the developed nations'),
            ('B', 'Was the fund that the World Bank provides for the adaptation in the small island states'),
            ('C', 'Was the budget of the Green Climate Fund for its first decade'),
            ('D', 'Was made by the developed countries to the developing countries and was reaffirmed at the COP29 at Baku in 2024 with a new collective quantified goal of 300 billion dollars')
           ) as v(label, option_text)
 where q.question_hash = '92335d5bb7bcfb11e416d47b0ec6275e'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Biopiracy'' in the context of the biodiversity refers to:',
    'Biopiracy is the commercial appropriation of the traditional knowledge and the genetic resources of a community by a corporation without a fair share of the benefits reaching the community, and the case of the turmeric patent that was revoked in 1997 is the classic illustration.',
    'medium',
    'Standard Reference',
    null,
    '3c5fcaf07347da49c957220ea8b15acc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c5fcaf07347da49c957220ea8b15acc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The use of the pesticides that kill the non target species'),
            ('B', 'The release of the genetically modified crops in the environment'),
            ('C', 'The commercial appropriation of the biological knowledge and the genetic resources of a community by a corporation without a fair share of the benefits to the community'),
            ('D', 'The illegal trade of the endangered species across the borders')
           ) as v(label, option_text)
 where q.question_hash = '3c5fcaf07347da49c957220ea8b15acc'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Ageratina adenophora'' and the ''Lantana camara'' are:',
    'The Ageratina adenophora, the crofton weed, and the Lantana camara are the invasive alien species that have invaded the forest lands of India and that crowd out the native vegetation, and the Parthenium hysterophorus is a similar menace for the pastures and the crops.',
    'medium',
    'Standard Reference',
    null,
    '71d8543929766e62de7a1d1bf1730a8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '71d8543929766e62de7a1d1bf1730a8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The invasive alien species of the forest lands of India that crowd out the native vegetation'),
            ('B', 'The endangered medicinal plants of the Western Ghats'),
            ('C', 'The mangrove species that restore the coastal belt'),
            ('D', 'The exotic timber species that are planted in the social forestry plantations')
           ) as v(label, option_text)
 where q.question_hash = '71d8543929766e62de7a1d1bf1730a8e'
on conflict (question_id, label) do nothing;

-- environment | ecology-basics | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ecology-basics'),
    'The ''Grasses and the herbs of the alpine meadow'' in the Western Himalaya:',
    'The bugyals are the high altitude natural grasslands of the Himalaya that provide the summer grazing grounds for the Van Gujjar and the Bakarwal herds, and they are a typical example of the fragile alpine ecosystem that is highly vulnerable to the overgrazing.',
    'hard',
    'Standard Reference',
    null,
    '1a7af89d9694ddded757694b4b14cbd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1a7af89d9694ddded757694b4b14cbd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the natural grasslands of the Deccan that support the buffaloes'),
            ('B', 'Are the shola grasslands of the Western Ghats'),
            ('C', 'Are the ''bugyal'' communities that the Van Gujjar herds of the high Himalaya use as the summer grazing grounds'),
            ('D', 'Are the mangrove communities of the deltas')
           ) as v(label, option_text)
 where q.question_hash = '1a7af89d9694ddded757694b4b14cbd7'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The patches of the forest that are:',
    'The sacred groves are the forest patches that the local communities protect because of the religious beliefs attached to them, and they are found in the states of Kerala, Tamil Nadu, Karnataka, Maharashtra, Goa and Rajasthan, and many of them are notified as the protected areas.',
    'medium',
    'Standard Reference',
    null,
    '35a54193ac938561d22666cbcc6ff8ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '35a54193ac938561d22666cbcc6ff8ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The reserve forests of the state governments notified under the Forest Act'),
            ('B', 'The plantations of the medicinal plants in the tribal areas'),
            ('C', 'The community forests that are leased out for the timber'),
            ('D', 'The patches of the forest that are protected by the local communities because of the religious beliefs attached to them')
           ) as v(label, option_text)
 where q.question_hash = '35a54193ac938561d22666cbcc6ff8ef'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Van Panchayats'' in the hills of Uttarakhand:',
    'The Van Panchayats are the traditional institutions of the village forest management in the hills of Uttarakhand that protect the forests, the grazing lands and the village commons under the customary rights, and they are the antecedents of the forest protection committees.',
    'hard',
    'Standard Reference',
    null,
    '905991060c0e50046a4d0b9284d2e96d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '905991060c0e50046a4d0b9284d2e96d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the committees of the panchayat for the watershed development'),
            ('B', 'Are the traditional forest management institutions of the villages that protect the local forests and the grazing lands'),
            ('C', 'Are the committees of the forest department for the patrolling'),
            ('D', 'Are the revenue villages of the hill administration')
           ) as v(label, option_text)
 where q.question_hash = '905991060c0e50046a4d0b9284d2e96d'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Bhagwan Sree Bird Sanctuary'' of Gujarat:',
    'The Bhagwan Sree Bird Sanctuary, also called the Nal Sarovar, in the Ahmedabad district of Gujarat is the only permanent habitat of the Greater Flamingo in the country, and the Nal and the adjoining areas were notified as a Ramsar site in 2021.',
    'hard',
    'Standard Reference',
    null,
    '14aae6c6f0c08bec4fa451ed4c4dbbea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '14aae6c6f0c08bec4fa451ed4c4dbbea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a protected area of the wetlands of the Nal that is the only permanent habitat of the Greater Flamingo in the country'),
            ('B', 'Is the wetland of the Keoladeo that hosts the Siberian cranes'),
            ('C', 'Is the lagoon of the Rajasthan that is a Ramsar site of the wetlands'),
            ('D', 'Is the sanctuary of the Punjab that is the home of the blackbuck')
           ) as v(label, option_text)
 where q.question_hash = '14aae6c6f0c08bec4fa451ed4c4dbbea'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Nalsarovar'' of Gujarat and the ''Keoladeo'' of Rajasthan:',
    'The Nalsarovar of Gujarat and the Keoladeo of Rajasthan are both part of the Ramsar network and they are among the most important wintering grounds of the migratory water birds of the Central Asian flyway in India.',
    'medium',
    'Standard Reference',
    null,
    'fc54ff90c8f694166a42bcaaf573fbf1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc54ff90c8f694166a42bcaaf573fbf1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the nesting grounds of the marine turtles of the Arabian Sea'),
            ('B', 'Are the mangrove sanctuaries of the Gulf of Kachchh'),
            ('C', 'Are both the wetlands of the Ramsar network and are the wintering grounds of the migratory water birds'),
            ('D', 'Are the only salt pans of the country')
           ) as v(label, option_text)
 where q.question_hash = 'fc54ff90c8f694166a42bcaaf573fbf1'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Point Calimere Wildlife Sanctuary'' of Tamil Nadu:',
    'The Point Calimere Wildlife Sanctuary, along with the adjoining the Vedaranyam and the Koonthankulam, forms a Ramsar site and it has the largest congregation of the flamingos in Tamil Nadu, with the great white pelican and the black-headed ibis among the birds that are found here.',
    'hard',
    'Standard Reference',
    null,
    'a8a68326d49cb6d3f6fccb4059682e11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8a68326d49cb6d3f6fccb4059682e11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a marine sanctuary of the Gulf of Mannar'),
            ('B', 'Is a coastal sanctuary with the largest congregation of the flamingos in Tamil Nadu and it is a Ramsar site'),
            ('C', 'Is a forest sanctuary of the Western Ghats for the lion-tailed macaque'),
            ('D', 'Is a bird sanctuary of the wetlands of the Kaveri')
           ) as v(label, option_text)
 where q.question_hash = 'a8a68326d49cb6d3f6fccb4059682e11'
on conflict (question_id, label) do nothing;

-- environment | protected-areas | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'protected-areas'),
    'The ''Ecotourism'' in the protected areas of India:',
    'The ecotourism is promoted in the protected areas as a means of generating the conservation finance and of providing the livelihoods to the local communities, and the eco-development plans of the Project Tiger reserves are the classic example of the community based ecotourism.',
    'medium',
    'Standard Reference',
    null,
    '4cda71020dff4d65c1f763f2a5dde055'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4cda71020dff4d65c1f763f2a5dde055'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is permitted only in the the tiger reserves of the central India'),
            ('B', 'Has been banned by the Supreme Court in the sensitive areas'),
            ('C', 'Is the basis of the revenue of the state governments in the hill states'),
            ('D', 'Is promoted by the National Tourism and the Forest Departments as a means of the conservation finance and the livelihood of the local communities')
           ) as v(label, option_text)
 where q.question_hash = '4cda71020dff4d65c1f763f2a5dde055'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Wildlife (Protection) Amendment Act, 2022'' of India:',
    'The Wildlife (Protection) Amendment Act of 2022 added the four species of the carnivores, the leopard, the snow leopard, the cheetah and the jungle cat, to the Schedule I, strengthened the protection of the habitats and the live capture and increased the penalties for the offences.',
    'hard',
    'Standard Reference',
    null,
    '907643547fef36f977c8c198c50d16f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '907643547fef36f977c8c198c50d16f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Added the four species of the carnivores to the Schedule I and strengthened the protection of the habitats'),
            ('B', 'Reduced the penalties for the wildlife poaching'),
            ('C', 'Removed the provisions of the forest rights of the communities'),
            ('D', 'Created the National Green Tribunal')
           ) as v(label, option_text)
 where q.question_hash = '907643547fef36f977c8c198c50d16f7'
on conflict (question_id, label) do nothing;

-- environment | forests-and-wildlife | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'forests-and-wildlife'),
    'The ''Project Vulture'' of the Bombay Natural History Society:',
    'Project Vulture was launched in the 1990s by the Bombay Natural History Society to bring back the white-backed and the long-billed vultures that had disappeared because of the veterinary drug diclofenac, and the ban of the drug in 2006 helped in the recovery of the populations.',
    'hard',
    'Standard Reference',
    null,
    '1df3dc926ecd3f49788b3e9392e8154a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1df3dc926ecd3f49788b3e9392e8154a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a project for the release of the flamingos in the Nal Sarovar'),
            ('B', 'Was the project for the reintroduction of the cheetah in Namibia'),
            ('C', 'Was the programme for the conservation of the crocodile in Bhitarkanika'),
            ('D', 'Was launched in the 1990s to bring back the two species of the vultures that had declined because of the diclofenac')
           ) as v(label, option_text)
 where q.question_hash = '1df3dc926ecd3f49788b3e9392e8154a'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Bombay Natural History Society'':',
    'The Bombay Natural History Society, founded in 1883, has been at the forefront of the research and the conservation of the birds of India and of the wildlife, and its bird census and the publication of the journal are among its well known activities.',
    'medium',
    'Standard Reference',
    null,
    '520d3fb5b4f9176f0dcb1fd605f70f2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '520d3fb5b4f9176f0dcb1fd605f70f2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the organisation that publishes the State of the Forest Report'),
            ('B', 'Was founded in 1883 and has been at the forefront of the research and the conservation of the birds and the wildlife of India'),
            ('C', 'Was founded in 1958 to protect the tigers of the central India'),
            ('D', 'Is the body that runs the the national parks of the northeastern states')
           ) as v(label, option_text)
 where q.question_hash = '520d3fb5b4f9176f0dcb1fd605f70f2b'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''National Biodiversity Day'' of India is observed on:',
    'The National Biodiversity Day of India is observed on 19 December, the day of the adoption of the Convention on Biological Diversity at Rio de Janeiro in 1992, and it was first observed in the country in 2019.',
    'hard',
    'PIB',
    null,
    '85f5f795762751489745376ab483b908'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '85f5f795762751489745376ab483b908'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '19 December, the day of the adoption of the Convention on Biological Diversity'),
            ('B', '2 February, the day of the wetland convention'),
            ('C', '22 April, the day of the Earth Day'),
            ('D', '5 June, the day of the World Environment Day')
           ) as v(label, option_text)
 where q.question_hash = '85f5f795762751489745376ab483b908'
on conflict (question_id, label) do nothing;

-- environment | waste-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'waste-management'),
    'The ''National Cleanup Day'' of India is observed on:',
    'The National Cleanup Day is observed on 1 October across the country as part of the Swachh Bharat Mission, with the large scale cleanliness drives that are organised at the rivers, the coasts, the railways and the tourist places.',
    'hard',
    'PIB',
    null,
    '730addd75293b73e2e77edc58c98b15d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '730addd75293b73e2e77edc58c98b15d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 June, the day of the World Environment Day'),
            ('B', '21 March, the day of the International Day of Forests'),
            ('C', '1 October, the day of the launch of the Swachh Bharat Mission'),
            ('D', '2 October, the day of the Gandhi Jayanti')
           ) as v(label, option_text)
 where q.question_hash = '730addd75293b73e2e77edc58c98b15d'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Green Credit Programme'' of India:',
    'The Green Credit Programme is a market based mechanism in which the participants that plant the trees on the degraded forest land earn the green credits, which are tradable to meet the obligations of the tree plantation under the compensatory afforestation.',
    'hard',
    'PIB',
    null,
    '03f1896ef563aac506cf5761e93f98d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '03f1896ef563aac506cf5761e93f98d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a market based mechanism that gives a tradable credit for the tree plantation on the degraded forest land'),
            ('B', 'Is a subsidy for the farmers who use the organic manure'),
            ('C', 'Is a certificate for the rooftop solar installation'),
            ('D', 'Is a credit guarantee for the green finance of the startups')
           ) as v(label, option_text)
 where q.question_hash = '03f1896ef563aac506cf5761e93f98d8'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Afforestation Programme'' of India:',
    'The National Afforestation Programme was launched in 2000 with the objective of the afforestation of the degraded forest lands, the augmentation of the forest cover and the improvement of the productivity of the forests, and it is implemented through the forest departments of the states.',
    'hard',
    'Standard Reference',
    null,
    '2cb403cbf583580a2ec2daeb839ccf58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cb403cbf583580a2ec2daeb839ccf58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was launched in 1997 with the plantation of the trees on the wastelands of the drought prone areas'),
            ('B', 'Is the programme of the plantation on the community lands of the Panchayats'),
            ('C', 'Is the programme of the mangrove restoration of the coastal states'),
            ('D', 'Was launched in 2000 with the objective of the afforestation of the degraded forest lands and the augmentation of the forest cover')
           ) as v(label, option_text)
 where q.question_hash = '2cb403cbf583580a2ec2daeb839ccf58'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Integrated Scheme for the management of the coastal zones'' in India:',
    'The Integrated Scheme for the management of the coastal zones was started in 2010 with the World Bank support for the demonstration projects of the Integrated Coastal Zone Management, and it was later renamed as the Integrated Scheme for the management of the coastal zones.',
    'hard',
    'Standard Reference',
    null,
    '1017013fbd7495bb73a1820ad4dcef08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1017013fbd7495bb73a1820ad4dcef08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was started in 2017 with the launch of the National Marine Fisheries Policy'),
            ('B', 'Was started in 2005 with the creation of the National Green Tribunal'),
            ('C', 'Was started in 2010 with the World Bank support for the demonstration projects of the Integrated Coastal Zone Management'),
            ('D', 'Was started in 1991 with the notification of the coastal regulation zones')
           ) as v(label, option_text)
 where q.question_hash = '1017013fbd7495bb73a1820ad4dcef08'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''National Marine Protected Area'' network of India:',
    'The national marine protected area network of India comprises the Marine National Parks, the Marine Sanctuaries and the Marine Biosphere Reserves, and the framework of the network is the National Marine Protected Area Network with the target of the ecologically representative and the connected system of the marine protected areas.',
    'hard',
    'Standard Reference',
    null,
    '4dd19f826d3dd06248cc74883850bbcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4dd19f826d3dd06248cc74883850bbcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the network of the coastal zone regulation authorities'),
            ('B', 'Comprises the Marine National Parks, the Marine Sanctuaries and the Biosphere Reserves of the coastal and the marine areas'),
            ('C', 'Is limited to the Marine National Parks that are under the Wildlife Act'),
            ('D', 'Is a network of the fishing harbours of the states')
           ) as v(label, option_text)
 where q.question_hash = '4dd19f826d3dd06248cc74883850bbcf'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Sagar Island'' of West Bengal:',
    'Sagar Island in the South 24 Parganas district of West Bengal is the largest of the sand islands of the Bay of Bengal, and it is known for the mud volcanoes of the Baratpurjhati, while the cyclone of the same name hit the island in 2020.',
    'hard',
    'Standard Reference',
    null,
    '2c8091e132c5b35bedcd5907fec423c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c8091e132c5b35bedcd5907fec423c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the site of the Hatiya island of the Brahmaputra'),
            ('B', 'Is the volcanic island of the Nicobar district'),
            ('C', 'Is the site of the Sagar cyclone of 2020 and the Ambujapur and the Ganga heritage site'),
            ('D', 'Is the largest sand island of the Bay of Bengal with the mud volcanoes of the Baratpurjhati')
           ) as v(label, option_text)
 where q.question_hash = '2c8091e132c5b35bedcd5907fec423c6'
on conflict (question_id, label) do nothing;

-- environment | disasters-and-management | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'disasters-and-management'),
    'The ''Oil spill'' of the MV Wakashio off the Seychelles in 2020:',
    'The grounding of the MV Wakashio off the Seychelles in 2020, when about 80,000 tonnes of the fuel oil was spilled, raised the concerns over the preparedness of the coastal states of India for the marine oil spill response, since the coastline is a sensitive habitat.',
    'hard',
    'Standard Reference',
    null,
    '44f4563cbf9b9935dfeee47b2cc520fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '44f4563cbf9b9935dfeee47b2cc520fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raised the concerns over the preparedness of the coastal states for the marine oil spill response'),
            ('B', 'Was the first oil spill in the Indian Ocean'),
            ('C', 'Was caused by the collision with the reef off the Andaman Islands'),
            ('D', 'Led to the ban on the maritime traffic of the Indian Ocean')
           ) as v(label, option_text)
 where q.question_hash = '44f4563cbf9b9935dfeee47b2cc520fd'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Water Policy, 2012'' of India:',
    'The National Water Policy of 2012 recommends the minimum quantity of water that should be assured to every household and it prioritises the drinking water over the other uses, and it also recommends the linking of the water development projects and the participatory management of the water.',
    'hard',
    'Standard Reference',
    null,
    '555d9374e00ddaab88292b1f2ab90ea1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '555d9374e00ddaab88292b1f2ab90ea1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prescribes the water sharing among the states through the river boards'),
            ('B', 'Provides for the bunding of the minor irrigation tanks'),
            ('C', 'Recommends the minimum quantity of water that should be assured to every household and the prioritisation of the drinking water over the other uses'),
            ('D', 'Fixes the water rates of the urban local bodies')
           ) as v(label, option_text)
 where q.question_hash = '555d9374e00ddaab88292b1f2ab90ea1'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Central Ground Water Authority'' of India:',
    'The Central Ground Water Authority was constituted in 2019 to regulate the development and the use of the ground water in the country and the Central Ground Water Rules of 2021 were notified to permit the regulation of the extraction in the over-exploited and the critically over-exploited blocks.',
    'hard',
    'Standard Reference',
    null,
    '332e28c9ffa78ed38f64a82ff058db22'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '332e28c9ffa78ed38f64a82ff058db22'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Certifies the bore wells for the irrigation wells'),
            ('B', 'Regulates the development and the use of the ground water and it has been notified as a groundwater authority under the 2023 rules'),
            ('C', 'Regulates the extraction of the ground water in the mining areas'),
            ('D', 'Controls the pollution of the ground water in the industrial clusters')
           ) as v(label, option_text)
 where q.question_hash = '332e28c9ffa78ed38f64a82ff058db22'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Bhakra Nangal'' and the ''Sardar Sarovar'' projects are the:',
    'The Bhakra Nangal and the Sardar Sarovar are the river valley projects that have provided the irrigation and the drinking water to millions of people and have been a part of the Green Revolution, and both of them were the subject of the inter-state disputes.',
    'medium',
    'Standard Reference',
    null,
    'c3c5e2013c64efd3986afc56a911f39c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c3c5e2013c64efd3986afc56a911f39c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The flood control projects of the eastern India'),
            ('B', 'The irrigation projects of the command area development programme'),
            ('C', 'The river valley projects that have been a part of the Green Revolution and of the drinking water supply'),
            ('D', 'The inter-state river dispute projects')
           ) as v(label, option_text)
 where q.question_hash = 'c3c5e2013c64efd3986afc56a911f39c'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Ganga and the Yamuna'' as the ''National Waterways'' declared by the Parliament:',
    'The Ganga and the Bhagirathi is the National Waterway 1 and the Brahmaputra is the National Waterway 2, while the West Coast Canal with the Kollam and the Kottayam route is the National Waterway 3, and the Sagar and the Narmada is the National Waterway 4.',
    'hard',
    'Standard Reference',
    null,
    '6d773433dbf2125948490bb2c8e640c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6d773433dbf2125948490bb2c8e640c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are National Waterway 1 and National Waterway 2 respectively'),
            ('B', 'Are National Waterway 2 and National Waterway 3 respectively'),
            ('C', 'Are National Waterway 3 and National Waterway 1 respectively'),
            ('D', 'Are not among the declared national waterways')
           ) as v(label, option_text)
 where q.question_hash = '6d773433dbf2125948490bb2c8e640c4'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Regulation of the aquaculture'' in the coastal states of India is done under the:',
    'The aquaculture in the coastal areas is regulated under the Coastal Aquaculture Management Rules of 1980 and the Coastal (Aquaculture) Rules of 1991, which prescribe the norms for the brackish water farming and the no-areas for the shrimp culture.',
    'hard',
    'Standard Reference',
    null,
    '327b130d7fbd6fa54f8a151c60c34d67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '327b130d7fbd6fa54f8a151c60c34d67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Marine Fisheries Act of 1969'),
            ('B', 'Water Act of 1974'),
            ('C', 'Biological Diversity Act of 2002'),
            ('D', 'Coastal Aquaculture Management Rules of 1980 and the Coastal (Aquaculture) Rules of 1991')
           ) as v(label, option_text)
 where q.question_hash = '327b130d7fbd6fa54f8a151c60c34d67'
on conflict (question_id, label) do nothing;

-- environment | ocean-and-marine | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'ocean-and-marine'),
    'The ''Atoll'' and the ''Lagoon'' differ in that:',
    'An atoll is a ring of the coral reefs that encloses a lagoon, and a lagoon is the shallow body of the water that is surrounded by the reef, and the atolls of the Lakshadweep and of the Maldives are the classic examples.',
    'medium',
    'NCERT Class XI',
    null,
    '16d90505b981af5532c68920dcf1d69f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '16d90505b981af5532c68920dcf1d69f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both are the coral islands of the Indian Ocean'),
            ('B', 'An atoll has a ring of the coral reefs enclosing a lagoon, while a lagoon is the shallow body of the water that is enclosed by the reef'),
            ('C', 'A lagoon is formed on the continental shelf and an atoll in the deep sea'),
            ('D', 'An atoll is a volcanic island and a lagoon is a coral island')
           ) as v(label, option_text)
 where q.question_hash = '16d90505b981af5532c68920dcf1d69f'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''El Nino'' years are associated in India with:',
    'In the El Nino years, the warming of the equatorial Pacific alters the pattern of the atmospheric circulation, the subsidence over the Indian region increases and the monsoon weakens, which raises the probability of the drought in the sub-tropical latitudes.',
    'hard',
    'Standard Reference',
    null,
    'a262b9ffc579a931e16f1799316c33bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a262b9ffc579a931e16f1799316c33bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A higher incidence of the cyclones in the Bay of Bengal'),
            ('B', 'A reduction in the salinity of the Arabian Sea'),
            ('C', 'A weaker monsoon and a higher probability of the drought in the sub-tropical regions'),
            ('D', 'A stronger monsoon over the western coast')
           ) as v(label, option_text)
 where q.question_hash = 'a262b9ffc579a931e16f1799316c33bb'
on conflict (question_id, label) do nothing;

-- environment | climate-change | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Black carbon'' that is deposited on the Himalayan snow:',
    'The deposition of the black carbon on the Himalayan snow reduces the albedo of the snow and absorbs the solar radiation, which accelerates the melting of the glaciers and the snow and contributes to the water stress of the Himalayan rivers.',
    'hard',
    'Standard Reference',
    null,
    '1eb09af58daa93d8d5e7ec85dbb1bb15'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1eb09af58daa93d8d5e7ec85dbb1bb15'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Accelerates the melting of the snow because it absorbs the solar radiation and reduces the albedo'),
            ('B', 'Increases the albedo of the snow and slows the melting'),
            ('C', 'Is the cause of the winter rainfall of the Western Himalaya'),
            ('D', 'Is the source of the blue ice of the glaciers')
           ) as v(label, option_text)
 where q.question_hash = '1eb09af58daa93d8d5e7ec85dbb1bb15'
on conflict (question_id, label) do nothing;

-- environment | renewable-energy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'renewable-energy'),
    'The ''National Solar Mission'' of India was also known as:',
    'The National Solar Mission of India, the Jawaharlal Nehru National Solar Mission, was launched in 2022 and it succeeded the National Solar Mission of 2011 with the target of adding about 300 GW of the solar capacity by 2030-31.',
    'medium',
    'PIB',
    null,
    '24c4c6d85a45312b0fc1a62982876ea4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '24c4c6d85a45312b0fc1a62982876ea4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Solar Policy of 2011'),
            ('B', 'The Solar India Programme of 2015'),
            ('C', 'The Rooftop Solar Programme of 2019'),
            ('D', 'The Jawaharlal Nehru National Solar Mission of 2022')
           ) as v(label, option_text)
 where q.question_hash = '24c4c6d85a45312b0fc1a62982876ea4'
on conflict (question_id, label) do nothing;

-- environment | biodiversity | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'biodiversity'),
    'The ''Biodiversity Register'' of a state:',
    'The Biodiversity Register is a public record of the species of the state that is maintained by the state biodiversity board, and it is the base for the appraisal of the applications for the access to the biological resources and for the sharing of the benefits.',
    'hard',
    'Standard Reference',
    null,
    '26e144d7b5623323038db0b6a67cc3ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '26e144d7b5623323038db0b6a67cc3ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the register of the species that are listed in the Schedule I of the Wildlife Act'),
            ('B', 'Is a public record of the species of the state that is maintained by the state biodiversity board for the access and the benefit sharing'),
            ('C', 'Is the list of the protected areas of the state'),
            ('D', 'Is the register of the traditional knowledge holders of the tribal communities')
           ) as v(label, option_text)
 where q.question_hash = '26e144d7b5623323038db0b6a67cc3ae'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''National Guidelines for the Management of the Crops Residues'' in India:',
    'The National Guidelines for the Management of the Crop Residues promote the in-situ management through the happy seeder, the mulching and the incorporation of the residues in the soil, and the customised machinery, so as to prevent the burning of the stubble in the fields.',
    'medium',
    'PIB',
    null,
    '224afec999aaaae1a09e4c6b44f5da87'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '224afec999aaaae1a09e4c6b44f5da87'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provide for the subsidy on the machinery for the collection of the residues'),
            ('B', 'Promote the happy seeder and the mulching and the incorporation of the residues in the soil to prevent the burning in the fields'),
            ('C', 'Ban the use of the crop residues as the fuel in the houses of the villages'),
            ('D', 'Prescribe the sale of the residues in the market at a fixed price')
           ) as v(label, option_text)
 where q.question_hash = '224afec999aaaae1a09e4c6b44f5da87'
on conflict (question_id, label) do nothing;

-- environment | pollution | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'pollution'),
    'The ''National Air Quality Index'' of the Central Pollution Control Board:',
    'The National Air Quality Index was launched by the Central Pollution Control Board in October 2014 with eight pollutants, including the PM2.5, the PM10, the nitrogen dioxide, the ammonia, the sulphur dioxide, the carbon monoxide, the ozone and the lead, and it classifies the air quality in the six categories from the good to the severe.',
    'medium',
    'Standard Reference',
    null,
    'ce2831325d9a4e7d4c4cf7ef51fd4eb5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ce2831325d9a4e7d4c4cf7ef51fd4eb5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has been prepared by the India Meteorological Department'),
            ('B', 'Is the index of the pollution of the water bodies of the country'),
            ('C', 'Has eight pollutants, including the PM2.5, the PM10, the NO2, the NH3, the SO2, the CO, the ozone and the lead, and it has six categories'),
            ('D', 'Has only the PM2.5 and the PM10 as the pollutants')
           ) as v(label, option_text)
 where q.question_hash = 'ce2831325d9a4e7d4c4cf7ef51fd4eb5'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Commission for the Protection of the Child Rights'' of India:',
    'The National Commission for the Protection of the Child Rights monitors the violations of the rights of the children, and it is also the appellate body for the complaints about the violations of the Right to Education, in addition to the state commissions.',
    'hard',
    'Standard Reference',
    null,
    '6ac050d84ca2011661d45d5c96ef3a63'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6ac050d84ca2011661d45d5c96ef3a63'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Runs the juvenile justice courts of the states'),
            ('B', 'Supervises the adoption of the children by the foreign nationals'),
            ('C', 'Certifies the child friendly schools of the states'),
            ('D', 'Monitors the violations of the rights of the children and it is the appellate body for the complaints about the violations of the Right to Education')
           ) as v(label, option_text)
 where q.question_hash = '6ac050d84ca2011661d45d5c96ef3a63'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Suryakanya'' and the ''Poshan 2.0'' schemes of India:',
    'The Integrated Child Nutrition Services scheme of the government has two components, the Supplementary Nutrition Programme of the urban areas called Poshan 2.0 and the rural one called Suryakanya, and both are aimed at the improvement of the nutrition of the children, the pregnant women and the lactating mothers.',
    'hard',
    'Standard Reference',
    null,
    '090849ff7b6da867ed87f1f33bfb0591'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '090849ff7b6da867ed87f1f33bfb0591'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the supplementary nutrition programmes that deal with the maternal and the child nutrition of the vulnerable groups'),
            ('B', 'Are the schemes for the electrification of the rural households'),
            ('C', 'Are the schemes for the digital literacy of the rural women'),
            ('D', 'Are the urban housing schemes of the Ministry of Housing and Urban Affairs')
           ) as v(label, option_text)
 where q.question_hash = '090849ff7b6da867ed87f1f33bfb0591'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'National River Conservation Plan aims:',
    'The National River Conservation Plan aims at the pollution abatement of the rivers, at the treatment of the sewage that is generated in the urban agglomerations of the river basins and at the setting up of the the river conservation works, and the Ganga Action Plan and the Yamuna Action Plan are its main components.',
    'hard',
    'Standard Reference',
    null,
    'f1b3e7c1e6956ea97970efc0f207288e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f1b3e7c1e6956ea97970efc0f207288e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the programme for the linking of the rivers'),
            ('B', 'Is the plan for the flood control of the Brahmaputra'),
            ('C', 'Is the plan for the irrigation of the command areas of the dams'),
            ('D', 'Aims at the pollution abatement of the rivers and at the treatment of the sewage that is generated in the urban agglomerations of the river basins')
           ) as v(label, option_text)
 where q.question_hash = 'f1b3e7c1e6956ea97970efc0f207288e'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''Namami Gange Programme'':',
    'The Namami Gange Programme is an integrated programme with the components of the sewage treatment, the river surface cleaning, the riverfront development, the biodiversity and the afforestation, the river conservation and the afforestation, the monitoring and the public awareness, and it was renamed as the Jal Jeevan Mission of the Ganga in 2019.',
    'medium',
    'Standard Reference',
    null,
    '332856e4235424b71e0a62d031c9b91d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '332856e4235424b71e0a62d031c9b91d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the programme of the development of the tourism on the riverfront'),
            ('B', 'Is an integrated programme of the sewage treatment, the river surface cleaning, the riverfront development and the biodiversity and the afforestation'),
            ('C', 'Is the programme of the construction of the dams on the Ganga'),
            ('D', 'Is the programme of the development of the irrigation in the Ganga basin')
           ) as v(label, option_text)
 where q.question_hash = '332856e4235424b71e0a62d031c9b91d'
on conflict (question_id, label) do nothing;

-- environment | environment-governance | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'environment-governance'),
    'The ''National Green Development Mission'' or the ''Green Mission'' of India:',
    'The National Green Development Mission, the Green Mission, was launched to improve the green cover of the urban areas, to control the pollution with the public participation and to develop the green belts around the industries, and it also seeks the involvement of the corporate sector and the NGOs.',
    'hard',
    'Standard Reference',
    null,
    '430dd0b532063c161fdc0436c53874ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '430dd0b532063c161fdc0436c53874ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Aims at the greening of the urban areas and at the pollution control with the help of the public participation'),
            ('B', 'Is the mission for the afforestation of the degraded forests'),
            ('C', 'Is the programme for the conservation of the tigers'),
            ('D', 'Is the mission for the clean cooking in the rural households')
           ) as v(label, option_text)
 where q.question_hash = '430dd0b532063c161fdc0436c53874ad'
on conflict (question_id, label) do nothing;

-- environment | climate-change | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'environment'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'environment' and c.slug = 'climate-change'),
    'The ''Per capita carbon emissions'' of India:',
    'The per capita carbon emissions of India are among the lowest in the world and well below the global average, because of the low per capita energy consumption of a large population, even though the total emissions of the country have risen sharply with the industrialisation.',
    'medium',
    'Standard Reference',
    null,
    '51c905e70eccff822c854ef0d6c428ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '51c905e70eccff822c854ef0d6c428ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are equal to the global average because of the rapid industrialisation'),
            ('B', 'Have been rising faster than the emissions of the developed countries since 2015'),
            ('C', 'Are among the lowest in the world, well below the global average, because of the large population and the low per capita energy consumption'),
            ('D', 'Are the highest in the world because of the coal based power plants')
           ) as v(label, option_text)
 where q.question_hash = '51c905e70eccff822c854ef0d6c428ba'
on conflict (question_id, label) do nothing;

commit;
