-- =============================================================================
-- economy_03.sql — economy question pack, part 03
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following statements is/are correct in relation to the India ECTA?',
    'India has the ECTA with Australia, the CEPA with the UAE and the EFTA and the CEPA with the EFTA signed in 2024 to promote the trade and the investment.',
    'hard',
    'Standard Reference',
    null,
    '69059fbaefb1a7375bebd148c6168315'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '69059fbaefb1a7375bebd148c6168315'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India has only the agreements of the SAARC'),
            ('B', 'India has no trade agreement'),
            ('C', 'The agreements are with the neighbours only'),
            ('D', 'India has the ECTA with Australia, the CEPA with the UAE and the CEPA with the EFTA in 2024')
           ) as v(label, option_text)
 where q.question_hash = '69059fbaefb1a7375bebd148c6168315'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'In the context of the 1991, which of the following is correct?',
    'The 1991 reforms devalued the rupee by about 18 to 19 per cent and the peak customs duty was reduced from over 300 per cent to about 60 per cent in the two budgets of 1990-91 and 1992-93.',
    'hard',
    'Standard Reference',
    null,
    'a456628b17f858fb3d3624b0d9935063'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a456628b17f858fb3d3624b0d9935063'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tariffs were raised'),
            ('B', 'There was no change'),
            ('C', 'The rupee was devalued and the tariffs were reduced from about 300 per cent to about 60 per cent in the 1990-91 and the 1992-93 budgets'),
            ('D', 'The rupee was appreciated')
           ) as v(label, option_text)
 where q.question_hash = 'a456628b17f858fb3d3624b0d9935063'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The FDI in the automatic route was:',
    'The 1991 policy raised the FDI in the automatic route from 51 to 74 per cent and the current policy allows 100 per cent of the FDI through the automatic route.',
    'hard',
    'Standard Reference',
    null,
    '6806443e2bf49f8844005188ba3a41a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6806443e2bf49f8844005188ba3a41a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '100 per cent in 1991'),
            ('B', 'raised from 51 per cent to 74 per cent in 1991'),
            ('C', 'banned in 1991'),
            ('D', 'allowed only in the white goods')
           ) as v(label, option_text)
 where q.question_hash = '6806443e2bf49f8844005188ba3a41a9'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The Make in India was:',
    'The Make in India was an invitation to the foreign companies to make in India with the electronics manufacturing as the focus, and the India Ploght and the mobile assembly programmes were the flagship initiatives.',
    'medium',
    'Standard Reference',
    null,
    '6187f5e4f8bcbf4fff28088bbac0f6a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6187f5e4f8bcbf4fff28088bbac0f6a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'an invitation to the foreign companies to make in India and the electronics manufacturing was the focus'),
            ('B', 'a fiscal policy'),
            ('C', 'an agriculture policy'),
            ('D', 'a social policy')
           ) as v(label, option_text)
 where q.question_hash = '6187f5e4f8bcbf4fff28088bbac0f6a8'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'In the context of the export promotion, which of the following is correct?',
    'The IT and the IT-enabled services, the SEEPZ and the Software Technology Parks are the main drivers of the Indian exports and of the services exports.',
    'medium',
    'Standard Reference',
    null,
    '63aa3cda09e26adb136020fb5db93451'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '63aa3cda09e26adb136020fb5db93451'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The SEEPZ, the Software Technology Parks and the IT-enabled services are the export drivers of India'),
            ('B', 'The agriculture is the export driver'),
            ('C', 'The iron and the steel are the export drivers'),
            ('D', 'The petroleum is the export driver')
           ) as v(label, option_text)
 where q.question_hash = '63aa3cda09e26adb136020fb5db93451'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The Reserve Bank of India announced:',
    'The new rupee symbol, designed by D. Udaya Kumar, was adopted in July 2019, and the rupee was made the 19th currency of the IMF''s SDR basket in 2016.',
    'medium',
    'Standard Reference',
    2019,
    '31e07c13319fb63457e8ec9d91a6a340'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '31e07c13319fb63457e8ec9d91a6a340'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'changed in 1991'),
            ('B', 'changed in 2021'),
            ('C', 'no change'),
            ('D', 'a change in the symbol of the rupee in July 2019')
           ) as v(label, option_text)
 where q.question_hash = '31e07c13319fb63457e8ec9d91a6a340'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The rupee was included:',
    'The Indian rupee was included in the currency basket of the SDR with effect from 1 October 2016, and the decision was taken in 2015.',
    'medium',
    'Standard Reference',
    2016,
    'e29640e60db6e472f033b992d770dba6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e29640e60db6e472f033b992d770dba6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'never included'),
            ('B', 'in 2021'),
            ('C', 'in the SDR basket of the IMF in 2016'),
            ('D', 'in 1973')
           ) as v(label, option_text)
 where q.question_hash = 'e29640e60db6e472f033b992d770dba6'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The India Account of the exports of the services is:',
    'The export of the services, the India Account, is one of the largest in the world and the software and the business services are the main components.',
    'hard',
    'Standard Reference',
    null,
    '816097a8dd7ae54089b231ed1a916d60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '816097a8dd7ae54089b231ed1a916d60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only of the tourism'),
            ('B', 'one of the largest in the world'),
            ('C', 'the smallest'),
            ('D', 'only of the software')
           ) as v(label, option_text)
 where q.question_hash = '816097a8dd7ae54089b231ed1a916d60'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The anti-dumping duties are:',
    'The anti-dumping duties, provided under the Customs Act and the WTO, are levied on the imported goods that are dumped at a price below the normal value, and they are the trade remedies.',
    'medium',
    'Standard Reference',
    null,
    'f94b7d0d6e70e717b83da7888aba4012'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f94b7d0d6e70e717b83da7888aba4012'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the countervailing duties on the agriculture'),
            ('B', 'levied to protect the domestic industry from the cheap imports'),
            ('C', 'the tariffs on the imports'),
            ('D', 'the export subsidies')
           ) as v(label, option_text)
 where q.question_hash = 'f94b7d0d6e70e717b83da7888aba4012'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'countervailing duty is:',
    'The countervailing duty is an additional duty on the subsidised imports and it is meant to offset the benefit of the subsidy of the exporting country.',
    'hard',
    'Standard Reference',
    null,
    '090da6c21010e608dd55441ddc16616c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '090da6c21010e608dd55441ddc16616c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'levied on the dumped imports'),
            ('B', 'a tariff on the exports'),
            ('C', 'a tax on the digital goods'),
            ('D', 'levied on the subsidised imports')
           ) as v(label, option_text)
 where q.question_hash = '090da6c21010e608dd55441ddc16616c'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Trade Policy Review'' of the WTO:',
    'The Trade Policy Review is the WTO''s mechanism for the systematic review of the trade policies of the members, and the review of India took place in 2019 and in 2021.',
    'hard',
    'Standard Reference',
    null,
    'f0dfcc812489610517df5194b449ed9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f0dfcc812489610517df5194b449ed9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the mechanism for the review of the trade policies of the members'),
            ('B', 'Is a dispute settlement'),
            ('C', 'Is a development programme'),
            ('D', 'Is a statistical exercise')
           ) as v(label, option_text)
 where q.question_hash = 'f0dfcc812489610517df5194b449ed9d'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Consider the following statements. Which of them is correct with regard to the poverty line?',
    'The MPI is a composite index of the three dimensions of the health, the education and the living standards, and it identifies the poor through the deprivation indicators.',
    'medium',
    'Standard Reference',
    null,
    '814856cd51c3899841838eace29e3a1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '814856cd51c3899841838eace29e3a1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The MPI is computed by the World Bank'),
            ('B', 'The MPI replaced the Census'),
            ('C', 'The MPI of the UNDP and the OPHI measures the deprivations in the health, the education and the living standards'),
            ('D', 'The MPI measures the income only')
           ) as v(label, option_text)
 where q.question_hash = '814856cd51c3899841838eace29e3a1c'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'It is a law that gives:',
    'The MGNREGA is a law that provides a legal right to work for the rural households and it also provides the unemployment allowance if the work is not provided within the stipulated time.',
    'easy',
    'Standard Reference',
    null,
    '415590d0061ebcb0bb0bf6f50ab14b69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '415590d0061ebcb0bb0bf6f50ab14b69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a skill development programme'),
            ('B', 'the right to work and the unemployment allowance to the rural households'),
            ('C', 'a scheme of the urban poor'),
            ('D', 'a pension scheme')
           ) as v(label, option_text)
 where q.question_hash = '415590d0061ebcb0bb0bf6f50ab14b69'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The PMAY-U has the four verticals of the slum redevelopment, the credit linked:',
    'The PMAY-U has the four verticals of the slum redevelopment, the credit linked subsidy, the affordable rental housing and the beneficiary led individual house construction.',
    'medium',
    'Standard Reference',
    null,
    '75e458dabec11985d74df7f0ecf1ff2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '75e458dabec11985d74df7f0ecf1ff2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'subsidy, the affordable housing and the beneficiary-led construction'),
            ('B', 'two components'),
            ('C', 'only for the slum dwellers'),
            ('D', 'a rental scheme')
           ) as v(label, option_text)
 where q.question_hash = '75e458dabec11985d74df7f0ecf1ff2c'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Consider the following statements. Which of them is correct with regard to the PMAY-G?',
    'The PMAY-G aims at a pucca house with the basic amenities to every rural household that does not have one, and the assistance is shared between the centre and the state.',
    'easy',
    'Standard Reference',
    null,
    'ea5d48aee9e1084f80641a7b75851e75'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ea5d48aee9e1084f80641a7b75851e75'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a slum redevelopment scheme'),
            ('B', 'It is for the urban poor'),
            ('C', 'It aims at a pucca house with the basic amenities to the rural households with the assistance of the centre and the state'),
            ('D', 'It is a rental housing scheme')
           ) as v(label, option_text)
 where q.question_hash = 'ea5d48aee9e1084f80641a7b75851e75'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements is/are correct in relation to the PM-JANMAN?',
    'The PM-JANMAN, the Janjatiya Nagari Abhiyan, is the scheme for the Particularly Vulnerable Tribal Groups with the Van Dhan Vikas Kendras as the units.',
    'medium',
    'Standard Reference',
    null,
    '44bfae556a48cd52923bba9b530a89d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44bfae556a48cd52923bba9b530a89d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme for the urban poor'),
            ('B', 'It is a scheme for the fisheries'),
            ('C', 'It is a crop insurance scheme'),
            ('D', 'It is the scheme for the Particularly Vulnerable Tribal Groups with the Van Dhan Vikas Kendras')
           ) as v(label, option_text)
 where q.question_hash = '44bfae556a48cd52923bba9b530a89d4'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following is correct in the case of the revised POSHAN?',
    'The POSHAN 2 Abhiyaan, launched in 2018-19, is the revised POSHAN programme with the focus on the malnutrition and on the maternal and the child health and the adolescents.',
    'medium',
    'Standard Reference',
    null,
    'e69d23ec24bd0a6420b3d52e5c3c7bae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e69d23ec24bd0a6420b3d52e5c3c7bae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a nutrition scheme of the state only'),
            ('B', 'the revised POSHAN with the focus on the malnutrition and the maternal and the child health'),
            ('C', 'a food processing scheme'),
            ('D', 'a mid-day meal only in the private schools')
           ) as v(label, option_text)
 where q.question_hash = 'e69d23ec24bd0a6420b3d52e5c3c7bae'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''four labour codes'' in India:',
    'The four labour codes are the Code on Wages of 2019, the Industrial Relations Code of 2020, the Occupational Safety, the Health and the Working Conditions Code of 2020 and the Apprenticeship Rules of 2019, and the Code on Social Security of 2020.',
    'medium',
    'Standard Reference',
    null,
    '7b36a7c531db27c18eae7e246f964b47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7b36a7c531db27c18eae7e246f964b47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Code on Wages, the Industrial Relations Code, the Occupational Safety and the Social Security Code and the Apprentices Act'),
            ('B', 'The Code on Wages, the Contract Labour Act and the Factory Act'),
            ('C', 'The Industrial Disputes Act and the Trade Unions Act'),
            ('D', 'The Bonded Labour Act and the Mines Act')
           ) as v(label, option_text)
 where q.question_hash = '7b36a7c531db27c18eae7e246f964b47'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Bharatiya Nyaya Sanhita'' came into force on:',
    'The Bharatiya Nyaya Sanhita, the Bharatiya Nagarik Suraksha Sanhita and the Bharatiya Sakshya Adhiniyam came into force on 1 July 2024, replacing the IPC, the CrPC and the Evidence Act.',
    'medium',
    'Standard Reference',
    2024,
    'd8f69f3916f15d59efadba03b89264ca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd8f69f3916f15d59efadba03b89264ca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 2022'),
            ('B', '15 August 2024'),
            ('C', '1 July 2024'),
            ('D', '26 January 2023')
           ) as v(label, option_text)
 where q.question_hash = 'd8f69f3916f15d59efadba03b89264ca'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Consider the following statements. Which of them is correct with regard to the EPF?',
    'The Employees'' Provident Fund Organisation administers the contributory provident fund for the employees in the organised sector drawing a wage below the notified ceiling, and the ceiling has been periodically raised.',
    'medium',
    'Standard Reference',
    null,
    'e0da8c41fc2fe58b6c2e9a668b6aabc6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e0da8c41fc2fe58b6c2e9a668b6aabc6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The EPFO covers the informal sector'),
            ('B', 'The EPFO covers the government employees only'),
            ('C', 'The EPFO is a private body'),
            ('D', 'The EPFO administers the contributory provident fund for the employees in the organised sector with a wage ceiling')
           ) as v(label, option_text)
 where q.question_hash = 'e0da8c41fc2fe58b6c2e9a668b6aabc6'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'In the context of the ESI, which of the following is correct?',
    'The ESI covers the employees with a wage up to Rs. 21,000 a month and the contribution is shared by the employer and the employee.',
    'hard',
    'Standard Reference',
    null,
    '4482fec1de6385396216c38c73d04902'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4482fec1de6385396216c38c73d04902'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ESI covers all the employees'),
            ('B', 'The ESI covers only the employees below the poverty line'),
            ('C', 'The ESI covers the government employees'),
            ('D', 'The ESI covers the employees with a wage of up to Rs. 21,000 a month')
           ) as v(label, option_text)
 where q.question_hash = '4482fec1de6385396216c38c73d04902'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements regarding the a monthly pension is correct?',
    'The PM Kisan Maandhan Yojana, launched in 2019, provides a monthly pension of Rs. 3,000 to the small and the marginal farmers on a voluntary contribution and with the matching government contribution.',
    'medium',
    'Standard Reference',
    null,
    '0e0eae78bd1b9ad988b7b6a218493013'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0e0eae78bd1b9ad988b7b6a218493013'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a loan waiver scheme'),
            ('B', 'It provides a monthly pension of Rs. 3,000 on the contribution of the farmer and the matching government contribution'),
            ('C', 'It provides Rs. 3,000 a year'),
            ('D', 'It is a crop insurance scheme')
           ) as v(label, option_text)
 where q.question_hash = '0e0eae78bd1b9ad988b7b6a218493013'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements is/are correct in relation to the PMSVY?',
    'The PM Shram Yogi Maandhan launched the e-Shram card and the registration portal for the gig, the platform and the unorganised sector workers, and the first tranche of Rs. 1,000 was released in 2022.',
    'hard',
    'Standard Reference',
    2022,
    '0f8a0bc283610680aae400a684f6bd0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0f8a0bc283610680aae400a684f6bd0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scheme for the artisans'),
            ('B', 'It is a scheme for the small business loans'),
            ('C', 'It provides the e-Shram cards and the voluntary registration portal for the gig and the platform workers'),
            ('D', 'It is a scheme for the street vendors')
           ) as v(label, option_text)
 where q.question_hash = '0f8a0bc283610680aae400a684f6bd0e'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements regarding the PMKVY is correct?',
    'The PMKVY 4.0, the Pradhan Mantri Kaushal Vikay Yojana, is the largest skill development programme with the industry aligned training, the recognition of the prior learning and the apprenticeship.',
    'medium',
    'Standard Reference',
    null,
    '53030b1fa47ed1aacfba424359850ec6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '53030b1fa47ed1aacfba424359850ec6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the skill development scheme with the short term training and the recognition of the prior learning'),
            ('B', 'It is a farm mechanisation scheme'),
            ('C', 'It is a housing scheme'),
            ('D', 'It is a digital literacy scheme')
           ) as v(label, option_text)
 where q.question_hash = '53030b1fa47ed1aacfba424359850ec6'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''women''s labour force participation'' in India:',
    'The female labour force participation rate of India, at around 30 per cent or lower in the Periodic Labour Force Survey, is among the lowest in the world and the female unemployment is high.',
    'medium',
    'Standard Reference',
    null,
    '9f57f2c2e0b23ce854364557ad873067'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f57f2c2e0b23ce854364557ad873067'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the highest in the world'),
            ('B', 'Has increased above 50 per cent'),
            ('C', 'Is not measured'),
            ('D', 'Has been among the lowest in the world at around 30 per cent or lower in the PLFS')
           ) as v(label, option_text)
 where q.question_hash = '9f57f2c2e0b23ce854364557ad873067'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The PLFS was conducted:',
    'The Periodic Labour Force Survey was conducted in both the rural and the urban areas from the 2017-18 cycle and it is the official source of the employment data.',
    'medium',
    'Standard Reference',
    null,
    '2406897181f82436d97430a8bcf388b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2406897181f82436d97430a8bcf388b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the rural areas only'),
            ('B', 'in both the rural and the urban areas'),
            ('C', 'a census'),
            ('D', 'annual')
           ) as v(label, option_text)
 where q.question_hash = '2406897181f82436d97430a8bcf388b7'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The educated unemployment is:',
    'The educated unemployment is a significant problem in the rural areas where the number of graduates exceeds the demand and it is a matter of concern for the planning.',
    'medium',
    'Standard Reference',
    null,
    'c22455293b38070f508659918a938c50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c22455293b38070f508659918a938c50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'higher among the graduates in the rural areas'),
            ('B', 'only in the urban areas'),
            ('C', 'no educated unemployment'),
            ('D', 'only among the secondary school')
           ) as v(label, option_text)
 where q.question_hash = 'c22455293b38070f508659918a938c50'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The individual households demand for work is:',
    'The MGNREGA guarantees the 100 days of work and the demand for work is limited to 5 hectares of land per individual household per year.',
    'hard',
    'Standard Reference',
    null,
    '7c5ff37c9597e8eea5ff76b86921e1b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c5ff37c9597e8eea5ff76b86921e1b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 hectares'),
            ('B', '10 hectares'),
            ('C', 'limited to 5 hectares of land per year'),
            ('D', 'no limit')
           ) as v(label, option_text)
 where q.question_hash = '7c5ff37c9597e8eea5ff76b86921e1b6'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements is/are correct in relation to the SABLA?',
    'The Saksham Anganwadi Poshan 2 or the Samarthya is the scheme for the women and the children with the focus on the social security of the women in the informal sector.',
    'medium',
    'Standard Reference',
    null,
    '4e0d88fb76fb8d2323c2f7a849938e4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4e0d88fb76fb8d2323c2f7a849938e4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a skill scheme'),
            ('B', 'It is the scheme of the Ministry of Women and Child Development for the women in the informal sector'),
            ('C', 'It is a farm income scheme'),
            ('D', 'It is a housing scheme')
           ) as v(label, option_text)
 where q.question_hash = '4e0d88fb76fb8d2323c2f7a849938e4d'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements regarding the PM SVANidhi is correct?',
    'The PM SVANidhi, launched in June 2020, is the livelihood support scheme of the Ministry of Housing and Urban Affairs for the street vendors of the country.',
    'medium',
    'Standard Reference',
    2020,
    '87cc40ec6f98d2cc8225eb32914a1b50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '87cc40ec6f98d2cc8225eb32914a1b50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the scheme of the Ministry of Housing and Urban Affairs for the street vendors'),
            ('B', 'It is a scheme of the agriculture'),
            ('C', 'It is a scheme of the education'),
            ('D', 'It is a scheme of the health')
           ) as v(label, option_text)
 where q.question_hash = '87cc40ec6f98d2cc8225eb32914a1b50'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Economic Survey has:',
    'The Economic Survey is divided into 36 chapters, each of the sectoral chapters beginning with the multi-dimensional overview of the sector, its policies, the performance and the outlook.',
    'hard',
    'Standard Reference',
    null,
    '9f0126d62023dfa8d7d2bb23ccba9622'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9f0126d62023dfa8d7d2bb23ccba9622'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '100 chapters'),
            ('B', 'no chapters'),
            ('C', '36 chapters divided into the sectors'),
            ('D', '5 chapters')
           ) as v(label, option_text)
 where q.question_hash = '9f0126d62023dfa8d7d2bb23ccba9622'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements regarding the Economic Survey 2021-22 is correct?',
    'The Economic Survey 2021-22 was titled ''Time to Move'' and it was presented on 31 January 2022 with the five themes of the public investment, the financial stability, the climate, the demographic and the social sector and the agriculture.',
    'medium',
    'Standard Reference',
    2022,
    '37481328148deef596b29d417acc4e3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '37481328148deef596b29d417acc4e3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In the Union Budget 2021'),
            ('B', 'India''s Growth Roadmap'),
            ('C', 'Reinvigorating the Financial Sector'),
            ('D', 'Time to Move')
           ) as v(label, option_text)
 where q.question_hash = '37481328148deef596b29d417acc4e3f'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Fiscal Consolidation Roadmap'' of 2018:',
    'The fiscal consolidation roadmap of the 2018 Budget commits to the reduction of the fiscal deficit by 0.5 per cent of the GDP every year until the 3 per cent target is achieved.',
    'medium',
    'Standard Reference',
    2018,
    'c1691c303309b4d01df4034c4a2e0b47'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c1691c303309b4d01df4034c4a2e0b47'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a state scheme'),
            ('B', 'Committed to the reduction of the fiscal deficit by 0.5 per cent of the GDP every year'),
            ('C', 'Committed to the reduction of the deficit by 2 per cent every year'),
            ('D', 'Committed to the elimination of the deficit by 2022')
           ) as v(label, option_text)
 where q.question_hash = 'c1691c303309b4d01df4034c4a2e0b47'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Medium Term Fiscal Policy Statement'' is presented:',
    'The Medium Term Fiscal Policy Statement is presented as a part of the Union Budget and it sets out the targets of the fiscal deficit, the debt and the capital expenditure.',
    'medium',
    'Standard Reference',
    null,
    'dd96c0b473052155f9336ea50d412bbf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd96c0b473052155f9336ea50d412bbf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'With the Monetary Policy Statement'),
            ('B', 'With the Fiscal Policy Statement of the states'),
            ('C', 'With the Union Budget'),
            ('D', 'With the Economic Survey')
           ) as v(label, option_text)
 where q.question_hash = 'dd96c0b473052155f9336ea50d412bbf'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following is correct in the case of the FRBM Act?',
    'The FRBM Act has an escape clause that allows the deviation from the fiscal deficit targets in the exceptional circumstances like a war, a calamity and a collapse of the farm output.',
    'hard',
    'Standard Reference',
    null,
    '87a5a623286b1feb53d37e5830478677'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '87a5a623286b1feb53d37e5830478677'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has no escape clause'),
            ('B', 'The escape clause was removed in 2016'),
            ('C', 'It is only for the states'),
            ('D', 'The Act allows the deviation from the fiscal deficit target in the interest of the economy in the exceptional circumstances like a natural calamity')
           ) as v(label, option_text)
 where q.question_hash = '87a5a623286b1feb53d37e5830478677'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''fiscal deficit'' of India for 2024-25 as per the interim budget was:',
    'The fiscal deficit of 7.3 per cent of the GDP for 2024-25 was projected in the interim budget of February 2024 and the target of 4.9 per cent was set for 2025-26.',
    'medium',
    'Union Budget 2024-25',
    2024,
    '611c528e88b4e2a687b597ba99d33e53'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '611c528e88b4e2a687b597ba99d33e53'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '7.3 per cent of the GDP'),
            ('B', '4.9 per cent of the GDP'),
            ('C', '2.9 per cent of the GDP'),
            ('D', '10 per cent of the GDP')
           ) as v(label, option_text)
 where q.question_hash = '611c528e88b4e2a687b597ba99d33e53'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''capital expenditure'' in the Union Budget 2024-25 was raised to:',
    'The capital expenditure of the Union for 2024-25 was raised to Rs. 11.21 lakh crore, about 3.4 per cent of the GDP, with the focus on the roads, the railways and the airports.',
    'medium',
    'Union Budget 2024-25',
    2024,
    'e5d58a3fcaa002fcee5e1cee3f189354'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e5d58a3fcaa002fcee5e1cee3f189354'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 10 lakh crore'),
            ('B', 'Rs. 5 lakh crore'),
            ('C', 'Rs. 2 lakh crore'),
            ('D', 'Rs. 11.21 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = 'e5d58a3fcaa002fcee5e1cee3f189354'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''tax to GDP ratio'' of India is about:',
    'The tax to GDP ratio of India is about 12 per cent, which is among the lowest in the world, and the gross tax revenue is about 17 per cent.',
    'medium',
    'Standard Reference',
    null,
    '506726b13de2a7d4da208b964b79d8b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '506726b13de2a7d4da208b964b79d8b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '30 per cent'),
            ('B', '6 per cent'),
            ('C', '12 per cent'),
            ('D', '20 per cent')
           ) as v(label, option_text)
 where q.question_hash = '506726b13de2a7d4da208b964b79d8b3'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The gross GST revenue has:',
    'The gross GST revenue has crossed the Rs. 18 lakh crore mark and the net GST revenue after the refunds is about Rs. 16.5 lakh crore.',
    'medium',
    'Standard Reference',
    null,
    '5b3a66b8ce05749ab872cb3eab3dd62c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5b3a66b8ce05749ab872cb3eab3dd62c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'not grown'),
            ('B', 'crossed the Rs. 18 lakh crore mark annually'),
            ('C', 'about Rs. 5 lakh crore'),
            ('D', 'about Rs. 30 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = '5b3a66b8ce05749ab872cb3eab3dd62c'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Taxation and the 115th and the 116th Finance Bills'':',
    'The 115th Finance Act of 2020 reduced the corporate tax and the 116th Finance Act of 2021 brought the new income tax slabs with the standard deduction of Rs. 50,000.',
    'hard',
    'Standard Reference',
    null,
    '32020bbc576e49ef5a8ce0facc9f218f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '32020bbc576e49ef5a8ce0facc9f218f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 115th Finance Bill reduced the corporate tax and the 116th brought the new income tax slabs'),
            ('B', 'They were the education bills'),
            ('C', 'They were the banking reforms'),
            ('D', 'They were the insurance bills')
           ) as v(label, option_text)
 where q.question_hash = '32020bbc576e49ef5a8ce0facc9f218f'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''defence budget'' of India in 2024-25:',
    'The defence budget of India for 2024-25 was about Rs. 6.21 lakh crore, and the capital outlay of about Rs. 5.94 lakh crore was the highest ever.',
    'medium',
    'Union Budget 2024-25',
    2024,
    '996e454403a1a1f7fe8b7f3f93408c88'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '996e454403a1a1f7fe8b7f3f93408c88'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was about Rs. 6.21 lakh crore with a revenue and a capital split'),
            ('B', 'Was about Rs. 2 lakh crore'),
            ('C', 'Was about Rs. 10 lakh crore'),
            ('D', 'It was the highest ever with no capital component')
           ) as v(label, option_text)
 where q.question_hash = '996e454403a1a1f7fe8b7f3f93408c88'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'Which of the following statements regarding the fiscal policy is correct?',
    'The FRBM Act prescribes the fiscal deficit target of 3 per cent of the GDP and the 4 per cent of the GDP for the states, though the 2020 amendment allowed a higher target for the pandemic years.',
    'medium',
    'Standard Reference',
    null,
    '422bc90ce3fdf91f6eb1bc0ff266dce6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '422bc90ce3fdf91f6eb1bc0ff266dce6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a recommendation of the NITI Aayog'),
            ('B', 'It is a state target'),
            ('C', 'The target of the fiscal deficit at 3 per cent of the GDP is prescribed by the FRBM Act'),
            ('D', 'It is prescribed by the RBI')
           ) as v(label, option_text)
 where q.question_hash = '422bc90ce3fdf91f6eb1bc0ff266dce6'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''primary deficit'' of India in 2024-25 was projected at about:',
    'The primary deficit for 2024-25 was projected at 4.1 per cent of the GDP and the revenue deficit at 2.8 per cent.',
    'hard',
    'Union Budget 2024-25',
    2024,
    '7b11f44dcbfb54a9f0405fde84fda4d8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7b11f44dcbfb54a9f0405fde84fda4d8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1.2 per cent of the GDP'),
            ('B', '4.1 per cent of the GDP'),
            ('C', '2.6 per cent of the GDP'),
            ('D', '7.3 per cent of the GDP')
           ) as v(label, option_text)
 where q.question_hash = '7b11f44dcbfb54a9f0405fde84fda4d8'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Incredible India campaign and the Swadesh Darshan are:',
    'The Incredible India campaign and the Swadesh Darshan and the Swadesh are the tourism promotion programmes of the Ministry of Tourism with the thematic circuits.',
    'medium',
    'Standard Reference',
    null,
    'e4fc1d7f313ff8173c2a2ff0df743d5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e4fc1d7f313ff8173c2a2ff0df743d5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the industrial corridors'),
            ('B', 'the highway projects'),
            ('C', 'the urban renewal projects'),
            ('D', 'the tourism promotion programmes')
           ) as v(label, option_text)
 where q.question_hash = 'e4fc1d7f313ff8173c2a2ff0df743d5b'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Fiscal Policy and the Monetary Policy Statements were:',
    'The Fiscal Policy Statement was presented with the Union Budget for the first time in 2021-22 and the Monetary Policy Statement is presented with the Statement on Monetary Policy by the RBI.',
    'hard',
    'Standard Reference',
    null,
    '8312771908f1c67e9bc9d7494198c427'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8312771908f1c67e9bc9d7494198c427'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'presented in the budget of 2021-22'),
            ('B', 'presented in 1991'),
            ('C', 'no such statements'),
            ('D', 'presented in 2014')
           ) as v(label, option_text)
 where q.question_hash = '8312771908f1c67e9bc9d7494198c427'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Is about 18 per cent and it provides:',
    'The agriculture and the allied sectors contribute about 18 per cent of the GDP and provide the livelihood to about 45 per cent of the workforce, and the agriculture is the most important sector of the economy.',
    'easy',
    'Standard Reference',
    null,
    'cf22b09b6d14701ac0129cd0b11a970b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cf22b09b6d14701ac0129cd0b11a970b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about 5 per cent'),
            ('B', 'about 40 per cent'),
            ('C', 'about 60 per cent'),
            ('D', 'the employment to about 45 per cent of the workforce')
           ) as v(label, option_text)
 where q.question_hash = 'cf22b09b6d14701ac0129cd0b11a970b'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Raised the yields of the wheat and the rice and made:',
    'The Green Revolution, with the high yielding varieties of the wheat and the rice, raised the yields and made India self-sufficient in the foodgrains, though it was mainly confined to the wheat and the rice of the north-west.',
    'medium',
    'Standard Reference',
    null,
    '26606683915ceb6c2ef158f5825e883d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '26606683915ceb6c2ef158f5825e883d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a trade policy'),
            ('B', 'about the fertiliser'),
            ('C', 'India self-sufficient in the foodgrains'),
            ('D', 'raised the yields of the tea only')
           ) as v(label, option_text)
 where q.question_hash = '26606683915ceb6c2ef158f5825e883d'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Operation Flood was:',
    'The Operation Flood, the world''s largest milk production programme, was the brainchild of Dr. Verghese Kurien and the father of the White Revolution.',
    'medium',
    'Standard Reference',
    null,
    'd92118feef635711f9d4331b14552519'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd92118feef635711f9d4331b14552519'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'of the 1970s'),
            ('B', 'the world''s largest milk production programme and the White Revolution was led by Dr. Kurien'),
            ('C', 'about the wheat'),
            ('D', 'in Kerala only')
           ) as v(label, option_text)
 where q.question_hash = 'd92118feef635711f9d4331b14552519'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The high yielding varieties were:',
    'The high yielding varieties of the wheat resulted from the hybridisation with the dwarf genes of the Norin 10 of Japan and the rice varieties were the result of the hybridisation with the Taiwanese dwarf variety.',
    'hard',
    'Standard Reference',
    null,
    '81273e298ec985124b85d00103ed0162'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '81273e298ec985124b85d00103ed0162'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the imported varieties'),
            ('B', 'the result of the hybridisation and the selection of the dwarf genes of the wheat from the Norin 10 of Japan'),
            ('C', 'from the wild rice of the Assam'),
            ('D', 'the result of the mutation breeding only')
           ) as v(label, option_text)
 where q.question_hash = '81273e298ec985124b85d00103ed0162'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Golden Rice is:',
    'The Golden Rice, developed by Ingo Potrykus with the support of the Rockefeller Foundation, is rich in the beta-carotene, the precursor of the vitamin A.',
    'medium',
    'Standard Reference',
    null,
    '0d88948c0b69eb722c54874e70a9bcd9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0d88948c0b69eb722c54874e70a9bcd9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a hybrid of the maize'),
            ('B', 'a transgenic of the cotton'),
            ('C', 'rich in the vitamin A and it was developed by the Swiss scientist Ingo Potrykus'),
            ('D', 'rich in the vitamin C')
           ) as v(label, option_text)
 where q.question_hash = '0d88948c0b69eb722c54874e70a9bcd9'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Bt cotton has:',
    'The Bt cotton carries the cry gene of the Bacillus thuringiensis that codes for the toxin protein that kills the bollworm and the pink bollworm.',
    'medium',
    'Standard Reference',
    null,
    '06ac9948f62407ad28b9b7948bcace73'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '06ac9948f62407ad28b9b7948bcace73'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the gene from the Pseudomonas'),
            ('B', 'a hybrid of the wild species'),
            ('C', 'the hybrid of the American cotton'),
            ('D', 'the gene from the Bacillus thuringiensis that codes for the toxin protein')
           ) as v(label, option_text)
 where q.question_hash = '06ac9948f62407ad28b9b7948bcace73'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The National Food Security Act of 2013 provides:',
    'The National Food Security Act of 2013 provides for the food security and the nutrition and it institutionalises the right to food with the special focus on the children, the pregnant and the lactating women.',
    'medium',
    'Standard Reference',
    null,
    'e85e9e6eef2ef6fc3a8e550f919f7d3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e85e9e6eef2ef6fc3a8e550f919f7d3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the food security, the nutrition and the institutional machinery'),
            ('B', 'a trade law'),
            ('C', 'a state scheme'),
            ('D', 'a farm credit law')
           ) as v(label, option_text)
 where q.question_hash = 'e85e9e6eef2ef6fc3a8e550f919f7d3d'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The MSP is announced:',
    'The MSP is announced for the paddy and the wheat and the procurement is done by the FCI and the state agencies in the procurement centres, with the open market procurement scheme.',
    'medium',
    'Standard Reference',
    null,
    '0bfefbf845f8e20c860dcec1ac1eddd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0bfefbf845f8e20c860dcec1ac1eddd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the paddy and the procurement is by the FCI and the state agencies'),
            ('B', 'for the paddy and the procurement is only by the private trade'),
            ('C', 'no MSP for the paddy'),
            ('D', 'only in the Kerala')
           ) as v(label, option_text)
 where q.question_hash = '0bfefbf845f8e20c860dcec1ac1eddd5'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The National Disaster Damage and Restoration Fund was:',
    'The NDDRF was recommended by the 13th Finance Commission with an initial corpus of Rs. 28,000 crore for the drought and the other disasters, and it was constituted in 2019.',
    'hard',
    'Standard Reference',
    null,
    '249f450c160287966ffafb40864630d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '249f450c160287966ffafb40864630d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a fund for the industry'),
            ('B', 'a fund for the rural roads'),
            ('C', 'a fund for the fertiliser subsidy'),
            ('D', 'recommended by the 13th Finance Commission for the drought and the other disasters')
           ) as v(label, option_text)
 where q.question_hash = '249f450c160287966ffafb40864630d2'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following is correct in the case of the Agriculture?',
    'The agriculture and the allied sectors account for about 12 per cent of the total exports of India and about 18 per cent of the GDP, which shows the low value addition in the sector.',
    'hard',
    'Standard Reference',
    null,
    '255586e7a3dba44564d3726af7dfcc30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '255586e7a3dba44564d3726af7dfcc30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The agriculture is not exported'),
            ('B', 'The agriculture and the allied sectors contribute about 12 per cent of the exports'),
            ('C', 'The agriculture contributes 50 per cent of the exports'),
            ('D', 'The agriculture contributes 2 per cent of the exports')
           ) as v(label, option_text)
 where q.question_hash = '255586e7a3dba44564d3726af7dfcc30'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The three laws of 2020 were:',
    'The three laws of 2020 were the Farmers'' Production Trade Agreement (the APMC law), the Farmers Agreement on Price Assurance and the Farm Services Agreement (the contract farming law) and the amendment of the Essential Commodities Act, and they were repealed in 2021.',
    'medium',
    'Standard Reference',
    null,
    'daeb32d9f21581ab846fcc687a4bd843'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'daeb32d9f21581ab846fcc687a4bd843'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about the irrigation'),
            ('B', 'about the cold chain'),
            ('C', 'the Farmers'' Production Trade Agreement, the Farmers Agreement on Price Assurance and the Farm Services Agreement'),
            ('D', 'about the fertiliser')
           ) as v(label, option_text)
 where q.question_hash = 'daeb32d9f21581ab846fcc687a4bd843'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The scheme was extended to all the landholding farmers including those who had held:',
    'The PM-KISAN was extended in June 2020 to all the landholding farmer families including those who had held the land in the past but it does not cover the institutional landholders.',
    'hard',
    'Standard Reference',
    2020,
    '1d1b766b159dbc800b36ae177ab39998'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d1b766b159dbc800b36ae177ab39998'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the land in the past'),
            ('B', 'restricted to the small and the marginal farmers only'),
            ('C', 'withdrawn in 2021'),
            ('D', 'limited to the 20 states')
           ) as v(label, option_text)
 where q.question_hash = '1d1b766b159dbc800b36ae177ab39998'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The horticulture production is:',
    'India is the second largest producer of the fruits and the vegetables with a production of over 300 million tonnes and the post-harvest losses of 5 to 16 per cent are a major concern.',
    'hard',
    'Standard Reference',
    null,
    'b620a317ee183e0c0ffa9a9e91f16982'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b620a317ee183e0c0ffa9a9e91f16982'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a minor sector'),
            ('B', 'nil'),
            ('C', 'not needed in India'),
            ('D', 'about 300 million tonnes and the post-harvest losses are about 5 to 16 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'b620a317ee183e0c0ffa9a9e91f16982'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following statements regarding the Contract farming is correct?',
    'The Farmers'' Agreement on Price Assurance of 2020 provides for the agreement between the farmers and the buyers with the assurance of a price and the payment of at least 50 per cent of the agreed price in the cropping season and the receipt of the payment within 30 days.',
    'hard',
    'Standard Reference',
    null,
    'a25c45029639ea3bfc1e49447bc525d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a25c45029639ea3bfc1e49447bc525d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The law abolished the MSP'),
            ('B', 'The law is a state law'),
            ('C', 'The law provides for the agreement between the farmers and the buyers with the assured price and the payment of the minimum of 50 per cent of the agreed price'),
            ('D', 'The law provides for the free sale of the produce')
           ) as v(label, option_text)
 where q.question_hash = 'a25c45029639ea3bfc1e49447bc525d5'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following statements regarding the e-NAM is correct?',
    'The 2020 laws allowed the sale of the produce outside the APMC mandis and the e-NAM platform was expanded to include the trade outside the mandis with the warehouses as the centres of the trade.',
    'hard',
    'Standard Reference',
    null,
    '55ee023908d5edbcb33263087e6c4853'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '55ee023908d5edbcb33263087e6c4853'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 2020 laws were about the fertiliser'),
            ('B', 'The 2020 laws allowed the sale of the produce outside the APMC mandis and the e-NAM expanded the online trade'),
            ('C', 'The 2020 laws banned the e-NAM'),
            ('D', 'The 2020 laws fixed the MSP at the mandis only')
           ) as v(label, option_text)
 where q.question_hash = '55ee023908d5edbcb33263087e6c4853'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following statements regarding the The ICAR is correct?',
    'The Indian Council of Agricultural Research is the apex organisation for the agricultural research with the 22 institutes and the more than 60 agricultural universities under it.',
    'medium',
    'Standard Reference',
    null,
    '202857101df1cc5bc63ddb724f2f0710'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '202857101df1cc5bc63ddb724f2f0710'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a private foundation'),
            ('B', 'The ICAR is the apex organisation for the agricultural research with 22 institutes and more than 60 agricultural universities'),
            ('C', 'It is a ministry'),
            ('D', 'It is a state body')
           ) as v(label, option_text)
 where q.question_hash = '202857101df1cc5bc63ddb724f2f0710'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following statements regarding the NABARD is correct?',
    'The Rural Infrastructure Development Fund is the main source of the rural infrastructure finance and it is maintained by the NABARD with the banks and the financial institutions as the contributors.',
    'hard',
    'Standard Reference',
    null,
    '18bae419eb5a17e367cc8719a2b45247'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '18bae419eb5a17e367cc8719a2b45247'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RIDF is a fund for the industry'),
            ('B', 'The RIDF is a fund for the fertiliser'),
            ('C', 'The RIDF is a fund of the states'),
            ('D', 'The RIDF is the main source of the rural infrastructure finance through the NABARD')
           ) as v(label, option_text)
 where q.question_hash = '18bae419eb5a17e367cc8719a2b45247'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The fertiliser subsidy of about Rs. 1.66 lakh crore was:',
    'The fertiliser subsidy of about Rs. 1.66 lakh crore was provided in the Union Budget of 2024-25, with the continued promotion of the neem coated urea and the urea in the retail outlets at the same price for the farmers.',
    'medium',
    'Union Budget 2024-25',
    2024,
    '614ce972596c0a9b1820e9462d02cb1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '614ce972596c0a9b1820e9462d02cb1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the foodgrains'),
            ('B', 'given only to the private players'),
            ('C', 'provided in 2024-25 and the Neem coated urea was promoted'),
            ('D', 'abolished')
           ) as v(label, option_text)
 where q.question_hash = '614ce972596c0a9b1820e9462d02cb1e'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''food subsidy'' of the Union Budget 2024-25:',
    'The food subsidy of the central government was about Rs. 2.45 lakh crore in the Union Budget of 2024-25, and the PMGKAY of the free foodgrains was extended to the December 2025 for the 80 crore beneficiaries.',
    'medium',
    'Union Budget 2024-25',
    2024,
    'fb0c249ebb55b2ded897c28560003aec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb0c249ebb55b2ded897c28560003aec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was about Rs. 2.45 lakh crore'),
            ('B', 'Was about Rs. 1 lakh crore'),
            ('C', 'Was about Rs. 5 lakh crore'),
            ('D', 'It was abolished')
           ) as v(label, option_text)
 where q.question_hash = 'fb0c249ebb55b2ded897c28560003aec'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The free foodgrains to 80 crore beneficiaries were:',
    'The PMGKAY, launched during the pandemic, was extended to the December 2025 to continue the free foodgrains to about 80 crore beneficiaries.',
    'medium',
    'Union Budget 2024-25',
    2024,
    'e72edd2a3a7961f9ee12d771e9ff8485'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e72edd2a3a7961f9ee12d771e9ff8485'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the urban areas'),
            ('B', 'restricted to the BPL families'),
            ('C', 'extended to December 2025'),
            ('D', 'in 2024')
           ) as v(label, option_text)
 where q.question_hash = 'e72edd2a3a7961f9ee12d771e9ff8485'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Soil Health Card scheme provides:',
    'The Soil Health Card scheme, launched in 2015, provides the farmers with the soil testing report and the crop-wise recommendations of the nutrients and the fertilisers.',
    'medium',
    'Standard Reference',
    2015,
    'f7f704d12f8b483b996c0141f26faf0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f7f704d12f8b483b996c0141f26faf0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the free electricity'),
            ('B', 'the crop insurance'),
            ('C', 'the minimum wage'),
            ('D', 'the soil testing and the crop-wise recommendations')
           ) as v(label, option_text)
 where q.question_hash = 'f7f704d12f8b483b996c0141f26faf0b'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following is correct in the case of the Agriculture Infrastructure Fund?',
    'The Agriculture Infrastructure Fund, launched in 2020 with a corpus of Rs. 1 lakh crore, finances the post-harvest management infrastructure, the primary processing centres, the cold chains and the warehouses.',
    'medium',
    'Standard Reference',
    2020,
    'c91e6b536aa651552bab3a0f7eeb0196'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c91e6b536aa651552bab3a0f7eeb0196'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It finances the post-harvest management infrastructure and the community assets for the farmers'),
            ('B', 'It finances the tractors'),
            ('C', 'It finances the crop insurance'),
            ('D', 'It finances the exports')
           ) as v(label, option_text)
 where q.question_hash = 'c91e6b536aa651552bab3a0f7eeb0196'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''per capita availability of foodgrains'' in India:',
    'The per capita availability of foodgrains in India is about 21 kg per month or about 250 kg per year, and the minimum dietary requirement is about 15 kg per month.',
    'hard',
    'Standard Reference',
    null,
    'ae5a4e945c48dcffed4b72360aa5080e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ae5a4e945c48dcffed4b72360aa5080e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is about 200 kg per month'),
            ('B', 'Is about 21 kg per month'),
            ('C', 'Is about 5 kg per month'),
            ('D', 'Is about 50 kg per month')
           ) as v(label, option_text)
 where q.question_hash = 'ae5a4e945c48dcffed4b72360aa5080e'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Green Revolution was:',
    'The Green Revolution was the effort to increase the foodgrain production and the White Revolution was the effort to increase the milk production and it was led by Dr. Verghese Kurien.',
    'easy',
    'Standard Reference',
    null,
    '5020798cef552b9a17234240508c29cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5020798cef552b9a17234240508c29cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in the wheat'),
            ('B', 'the same'),
            ('C', 'in the foodgrains and the White Revolution in the milk'),
            ('D', 'in the milk')
           ) as v(label, option_text)
 where q.question_hash = '5020798cef552b9a17234240508c29cf'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The MEP of the onions was fixed to check the price rise and the exports of the onions were banned:',
    'The government fixes the Minimum Export Price of the onions and the other essential commodities to check the domestic price rise, and the export bans are imposed when the prices cross a threshold.',
    'medium',
    'Standard Reference',
    2024,
    '8a0d0f0c4b2ab682f09adfdd23eed04f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8a0d0f0c4b2ab682f09adfdd23eed04f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'raised to help the farmers'),
            ('B', 'abolished'),
            ('C', 'only to the rice'),
            ('D', 'at times')
           ) as v(label, option_text)
 where q.question_hash = '8a0d0f0c4b2ab682f09adfdd23eed04f'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The micro irrigation covers:',
    'The area under the micro irrigation, the drip and the sprinkler, has grown to about 11 million hectares in India and it is a key component of the Per Drop More Crop programme.',
    'hard',
    'Standard Reference',
    null,
    '6c975f6eaabbc1d37bfe3a4731ac00a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6c975f6eaabbc1d37bfe3a4731ac00a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'banned'),
            ('B', 'about 11 million hectares in India'),
            ('C', 'the whole country'),
            ('D', 'only in the Punjab')
           ) as v(label, option_text)
 where q.question_hash = '6c975f6eaabbc1d37bfe3a4731ac00a4'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Zero Budget Natural Farming'' and the ''Subhash Chandra'':',
    'The Zero Budget Natural Farming, promoted by the Subhash Chandra in the Andhra Pradesh, relies on the cow dung and the farm waste and the natural farming inputs with the zero external input.',
    'medium',
    'Standard Reference',
    null,
    '59e8040943d81b5b76bc1bbdbd849cc2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '59e8040943d81b5b76bc1bbdbd849cc2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Zero Budget Natural Farming was promoted by the Subhash Chandra and it is promoted in Andhra Pradesh'),
            ('B', 'It was promoted by the M.S. Swaminathan'),
            ('C', 'It is a fertiliser scheme'),
            ('D', 'It is the corporate farming')
           ) as v(label, option_text)
 where q.question_hash = '59e8040943d81b5b76bc1bbdbd849cc2'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Mission for the Integrated Development of the Horticulture has:',
    'The Mission for the Integrated Development of the Horticulture operates the vegetables in the clusters under the Integrated Cold Chain scheme and there are 13 clusters in the country.',
    'hard',
    'Standard Reference',
    null,
    '1a0063635b41c0faabf379976f658c51'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1a0063635b41c0faabf379976f658c51'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '13 clusters of the vegetables'),
            ('B', '3 clusters'),
            ('C', 'a state scheme'),
            ('D', 'the fisheries')
           ) as v(label, option_text)
 where q.question_hash = '1a0063635b41c0faabf379976f658c51'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The PLI in the food processing has:',
    'The PLI scheme for the food processing has an outlay of about Rs. 1,400 crore and it covers the categories of the milk, the fruit and the vegetables, the ready to eat and the grains.',
    'hard',
    'Standard Reference',
    null,
    '0877be04e6eb20f8f42c44660c6a91b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0877be04e6eb20f8f42c44660c6a91b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the textiles'),
            ('B', 'an outlay of about Rs. 1,400 crore'),
            ('C', 'an outlay of Rs. 100 crore'),
            ('D', 'discontinued')
           ) as v(label, option_text)
 where q.question_hash = '0877be04e6eb20f8f42c44660c6a91b1'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''National Mission on Natural Farming'' and the ''2023:',
    'The National Mission on Natural Farming was launched in 2023 with the objective of the promotion in about 10 lakh hectares across the 2,800 blocks of the country.',
    'hard',
    'Standard Reference',
    2023,
    '558d8ede884ecc141e04005352b03721'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '558d8ede884ecc141e04005352b03721'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was launched in 1991'),
            ('B', 'It is a state scheme of the Kerala'),
            ('C', 'It is the organic farming of the export'),
            ('D', 'It was launched in 2023 with the goal of the promotion in 10 lakh hectares')
           ) as v(label, option_text)
 where q.question_hash = '558d8ede884ecc141e04005352b03721'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Udyam'' registration for micro, small and medium enterprises replaced the earlier registration system with effect from:',
    'The revised MSME classification came into force on 1 July 2020, and the Udyam registration portal replaced the earlier Udyog Aadhaar and permanent account number based registration for MSMEs.',
    'medium',
    'PIB',
    null,
    '046a1b2e27080c8dd4af510b29eae8ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '046a1b2e27080c8dd4af510b29eae8ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 2018'),
            ('B', '1 January 2019'),
            ('C', '1 July 2020'),
            ('D', '1 April 2021')
           ) as v(label, option_text)
 where q.question_hash = '046a1b2e27080c8dd4af510b29eae8ec'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Under the revised MSME classification, an enterprise in the manufacturing sector is a ''micro'' enterprise if its investment in plant and machinery is up to:',
    'A micro manufacturing enterprise has an investment of up to Rs 2.5 crore and turnover of up to Rs 10 crore, a small enterprise has investment up to Rs 25 crore and turnover up to Rs 100 crore, and a medium enterprise has investment up to Rs 125 crore and turnover up to Rs 500 crore.',
    'easy',
    'PIB',
    null,
    '32f04443c0e5e4bdaf4b02d6296e62c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '32f04443c0e5e4bdaf4b02d6296e62c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 1 crore'),
            ('B', 'Rs 2.5 crore'),
            ('C', 'Rs 10 crore'),
            ('D', 'Rs 5 crore')
           ) as v(label, option_text)
 where q.question_hash = '32f04443c0e5e4bdaf4b02d6296e62c4'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The incentives under the Production Linked Incentive schemes introduced in 2020 are generally payable for a period of:',
    'The PLI schemes for the 14 sectors offer incentives for five years from the date of commercial production, with an option to extend the scheme by a further three years on the basis of performance.',
    'medium',
    'Economic Survey 2023-24',
    null,
    'e8ba748c874a05e9567fb6e8c0c86228'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e8ba748c874a05e9567fb6e8c0c86228'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'ten years'),
            ('B', 'three years'),
            ('C', 'seven years'),
            ('D', 'five years with an option to extend')
           ) as v(label, option_text)
 where q.question_hash = 'e8ba748c874a05e9567fb6e8c0c86228'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''TReDS'' platform in India is used for:',
    'TReDS, or the Trade Receivables Discounting System, is an online exchange that allows MSMEs to upload invoices and lets buyers and financiers discount them, thereby easing working capital stress.',
    'hard',
    'Standard Reference',
    null,
    '22b70828b7cbe9c2324f5fd86bce5c5d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '22b70828b7cbe9c2324f5fd86bce5c5d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the settlement of retail payments on the UPI platform'),
            ('B', 'the electronic tendering of defence equipment'),
            ('C', 'on-line disclosure and settlement of invoices of micro and small enterprises through a network of buyers and financiers'),
            ('D', 'the trading of carbon credits')
           ) as v(label, option_text)
 where q.question_hash = '22b70828b7cbe9c2324f5fd86bce5c5d'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The National MSME Policy was announced in:',
    'The National MSME Policy, notified in 2020, aimed at raising the contribution of micro, small and medium enterprises to GDP and exports, with targets for employment, productivity and formalisation.',
    'medium',
    'PIB',
    null,
    'fc39dd76d00124fd90f3a3ec168edb61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fc39dd76d00124fd90f3a3ec168edb61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2018'),
            ('C', '2016'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = 'fc39dd76d00124fd90f3a3ec168edb61'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Delayed Payment to Micro and Small Enterprises'' Act was enacted in:',
    'The MSMED Act, 2006 was the first legislation to provide for a statutory mechanism for MSME buyers to pay their suppliers on time, with compensation for delayed payment and a buyer as a fit and proper person.',
    'medium',
    'Standard Reference',
    null,
    '5da03e5a55e7ab4296ee5da25ed3350f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5da03e5a55e7ab4296ee5da25ed3350f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2003'),
            ('C', '2012'),
            ('D', '2006')
           ) as v(label, option_text)
 where q.question_hash = '5da03e5a55e7ab4296ee5da25ed3350f'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Startup India'' mission was launched in:',
    'Startup India, launched on 16 August 2016, created a separate ministry department for startup recognition, a fund of funds, and a tax exemption for recognised startups under section 115-I of the Income Tax Act.',
    'easy',
    'PIB',
    null,
    '80138dfd13c12d9ef71c619453953dd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '80138dfd13c12d9ef71c619453953dd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2020'),
            ('C', '2016'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '80138dfd13c12d9ef71c619453953dd2'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The income tax exemption for recognised startups in India is provided under which section of the Income Tax Act, 1961?',
    'Section 115-I allows a deduction of the eligible expenditure of eligible startups recognised by the Department for Promotion of Industry and Internal Trade, and section 80-I covers eligible startups in the services sector.',
    'hard',
    'Standard Reference',
    null,
    '0018224d397455cb51a14be3b2b0c65a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0018224d397455cb51a14be3b2b0c65a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Section 35D'),
            ('B', 'Section 80-I'),
            ('C', 'Section 115-I'),
            ('D', 'Section 10(23D)')
           ) as v(label, option_text)
 where q.question_hash = '0018224d397455cb51a14be3b2b0c65a'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''National Career Service'' portal is operated by:',
    'The National Career Service, a Ministry of Labour and Employment initiative, provides an online platform for job seekers, employers and skill providers with a common platform for career counselling and job matching.',
    'easy',
    'PIB',
    null,
    '07a128cbdd51adc62c9ceaf9cbee9455'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '07a128cbdd51adc62c9ceaf9cbee9455'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Labour and Employment'),
            ('B', 'the National Skill Development Corporation'),
            ('C', 'the Ministry of Education'),
            ('D', 'NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = '07a128cbdd51adc62c9ceaf9cbee9455'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Skill India'' programme was launched in:',
    'Skill India was launched in July 2015 with the aim of skilling one person in every household and giving at least one woman in every household a source of livelihood, through partnerships with the private sector.',
    'easy',
    'PIB',
    null,
    'ec4206c4f2bcd7fd776c820bdaac5e86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ec4206c4f2bcd7fd776c820bdaac5e86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2013'),
            ('C', '2015'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = 'ec4206c4f2bcd7fd776c820bdaac5e86'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The National Skill Development Corporation is a:',
    'NSDC is a not-for-profit company limited by shares under the Companies Act, set up by the Ministry of Skill Development and Entrepreneurship to catalyse and support skill building in the country.',
    'medium',
    'Standard Reference',
    null,
    '2299612dde86fcb84e17ebeffc4ec3bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2299612dde86fcb84e17ebeffc4ec3bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'statutory regulator of vocational training'),
            ('B', 'division of the National Apprenticeship Board'),
            ('C', 'public sector undertaking owned by state governments'),
            ('D', 'not-for-profit company set up by the Ministry of Skill Development and Entrepreneurship')
           ) as v(label, option_text)
 where q.question_hash = '2299612dde86fcb84e17ebeffc4ec3bb'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''National Single Window'' system for industrial clearances is operated by:',
    'The National Single Window portal is an online platform of the Ministry of Commerce and Industry that allows a business to apply for licences, permits and approvals across ministries and states on a single form.',
    'hard',
    'Standard Reference',
    null,
    'f53010487550e189bb7750a7255d6ca0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f53010487550e189bb7750a7255d6ca0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Commerce and Industry'),
            ('B', 'the Reserve Bank of India'),
            ('C', 'the Department for Promotion of Industry and Internal Trade'),
            ('D', 'the Ministry of Corporate Affairs')
           ) as v(label, option_text)
 where q.question_hash = 'f53010487550e189bb7750a7255d6ca0'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Quality Control Order of the Bureau of Indian Standards makes certification compulsory for products such as:',
    'BIS Quality Control Orders made the ISI mark mandatory for a specified list of products, beginning with toys and cement and later extended to items such as electrical fittings, gas cylinders and helmets.',
    'medium',
    'Standard Reference',
    null,
    '3308c6169f5d21e29a0333b7f9cc1097'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3308c6169f5d21e29a0333b7f9cc1097'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'all electronic goods sold online'),
            ('B', 'toys, cement and a growing list of other products'),
            ('C', 'only imported steel products'),
            ('D', 'only packaged drinking water')
           ) as v(label, option_text)
 where q.question_hash = '3308c6169f5d21e29a0333b7f9cc1097'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Legal Metrology (Packaged Commodities) Rules require a packaged commodity to carry a declaration of:',
    'The rules require the manufacturer or packer, the net quantity in the prescribed unit, the maximum retail price, the month and year of packing, the consumer care details and the last date of use for applicable commodities to be displayed on the package.',
    'medium',
    'Standard Reference',
    null,
    '6783f3763b5cf2420a9ae87f39b41be6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6783f3763b5cf2420a9ae87f39b41be6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the maximum retail price and the tax identification number'),
            ('B', 'the ingredients, the batch number and the expiry date only'),
            ('C', 'the net quantity, maximum retail price, manufacturer or packer and the month and year of packing'),
            ('D', 'only the net quantity and the barcode')
           ) as v(label, option_text)
 where q.question_hash = '6783f3763b5cf2420a9ae87f39b41be6'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following is NOT one of the three pillars of the ''Make in India'' programme launched in 2014?',
    'Make in India was built on three pillars, namely skill development, new manufacturing and new infrastructure; raising agricultural subsidies was never part of its framework.',
    'easy',
    'Standard Reference',
    null,
    '2cf8da24982f8c663cd0b7608a1ecaaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2cf8da24982f8c663cd0b7608a1ecaaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'new infrastructure'),
            ('B', 'increasing the level of agricultural subsidies'),
            ('C', 'skill development'),
            ('D', 'new manufacturing')
           ) as v(label, option_text)
 where q.question_hash = '2cf8da24982f8c663cd0b7608a1ecaaf'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Small finance banks in India are required to extend at least what percentage of their credit to the priority sector?',
    'Small finance banks must extend 75 per cent of their adjusted net bank credit to the priority sector, of which 40 per cent must be for agriculture and allied activities and at least 5 per cent for weaker sections.',
    'easy',
    'RBI',
    null,
    '9cb3636d5c6e1f81859b9ca9c6446ad6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9cb3636d5c6e1f81859b9ca9c6446ad6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '75 per cent'),
            ('B', '50 per cent'),
            ('C', '18 per cent'),
            ('D', '40 per cent')
           ) as v(label, option_text)
 where q.question_hash = '9cb3636d5c6e1f81859b9ca9c6446ad6'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Immediate Payment Service (IMPS) was launched in India in:',
    'IMPS, operated by the National Payments Corporation of India, was launched in 2010 as a 24x7 system for instant transfer of funds, while the UPI was launched in 2016 and RuPay in 2012.',
    'easy',
    'RBI',
    null,
    '4de3ad27d35d4cedb138f3b371c7d1bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4de3ad27d35d4cedb138f3b371c7d1bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2016'),
            ('C', '2009'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '4de3ad27d35d4cedb138f3b371c7d1bd'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RuPay'' card was launched in India in:',
    'RuPay was launched in 2012 by the National Payments Corporation of India as a domestic payment card system that operates on the lines of Visa and Mastercard.',
    'easy',
    'NPCI',
    null,
    '440c73ee1a0395856aac8b4ae00e56cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '440c73ee1a0395856aac8b4ae00e56cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2016'),
            ('C', '2012'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '440c73ee1a0395856aac8b4ae00e56cc'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the RBI''s Prompt Corrective Action framework, a bank has to report to the RBI when its net non-performing asset ratio exceeds:',
    'Under the PCA framework a bank is placed under restrictions if its net NPA exceeds 5 per cent, or if its capital to risk-weighted assets ratio falls below the prescribed threshold without new capital being raised.',
    'medium',
    'RBI',
    null,
    'd021401f0384ed8e0ae2d416986c3080'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd021401f0384ed8e0ae2d416986c3080'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 per cent'),
            ('B', '10 per cent'),
            ('C', '2 per cent'),
            ('D', '8 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'd021401f0384ed8e0ae2d416986c3080'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Deposit Insurance and Credit Guarantee Corporation insures bank deposits up to:',
    'DICGC, a wholly owned subsidiary of the RBI, insures bank deposits up to Rs 5 lakh per depositor per bank, and the insurance premium is paid by the banks themselves.',
    'easy',
    'RBI',
    null,
    'e0511ede6b5d8d54bee5a915ad8c5897'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e0511ede6b5d8d54bee5a915ad8c5897'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 1 lakh'),
            ('B', 'Rs 5 lakh'),
            ('C', 'Rs 2 lakh'),
            ('D', 'Rs 10 lakh')
           ) as v(label, option_text)
 where q.question_hash = 'e0511ede6b5d8d54bee5a915ad8c5897'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Account Aggregator'' framework in India works as:',
    'The Account Aggregator ecosystem, built under the RBI''s Financial Information (Account Aggregator) Regulations, lets a customer share financial data from multiple financial information providers with a consent manager in a standardised, secure manner.',
    'medium',
    'RBI',
    null,
    '87ac1b83586d6e6c88ff60cccbaa27c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '87ac1b83586d6e6c88ff60cccbaa27c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a mandatory sharing of customer data by all banks with the tax department'),
            ('B', 'a system of compulsory credit reporting to the Credit Information Companies'),
            ('C', 'a mechanism for the RBI to ration credit among banks'),
            ('D', 'a consent-based financial information system operated by registered account aggregators with a consent manager')
           ) as v(label, option_text)
 where q.question_hash = '87ac1b83586d6e6c88ff60cccbaa27c5'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'A grant received by a State Government from the central government is regarded as:',
    'Grants are treated as revenue receipts of the recipient government, whether or not they are tied to a specific project, which is why they are not counted as capital receipts or as borrowings.',
    'easy',
    'NCERT Class XII',
    null,
    'd6b65d1eda35058d03c7f81b590849fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd6b65d1eda35058d03c7f81b590849fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a revenue receipt of the State, not a capital receipt'),
            ('B', 'a capital receipt of the State'),
            ('C', 'neither revenue nor capital'),
            ('D', 'a capital receipt only if it is tied to a construction project')
           ) as v(label, option_text)
 where q.question_hash = 'd6b65d1eda35058d03c7f81b590849fa'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''effective revenue deficit'' was introduced in Indian fiscal accounting to:',
    'The effective revenue deficit deducts from the revenue deficit the capital expenditure of the States that is met through market borrowings, giving a truer picture of the revenue demand on the States'' own resources.',
    'medium',
    'Standard Reference',
    null,
    '89a34944f9ecdf28a528b44b8fa3f847'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '89a34944f9ecdf28a528b44b8fa3f847'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'measure the fiscal deficit of the States on a cash basis'),
            ('B', 'compute the revenue deficit including the receipts of the Public Account'),
            ('C', 'compute the revenue deficit after deducting the interest payments of the States'),
            ('D', 'measure the revenue deficit excluding the capital expenditure component that is financed by market borrowings')
           ) as v(label, option_text)
 where q.question_hash = '89a34944f9ecdf28a528b44b8fa3f847'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Interest payments on the public debt of the central government are classified as:',
    'Interest on borrowed funds is a revenue expenditure but it has no tax implications because it is a contractual payment on past borrowing and is not a fresh claim on current resources.',
    'medium',
    'NCERT Class XII',
    null,
    '153234cebcb94cf57a747e0c9660f745'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '153234cebcb94cf57a747e0c9660f745'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'capital expenditure'),
            ('B', 'revenue receipt'),
            ('C', 'revenue expenditure with no tax implications'),
            ('D', 'capital receipt')
           ) as v(label, option_text)
 where q.question_hash = '153234cebcb94cf57a747e0c9660f745'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Outcome Budget'' in India was introduced with the objective of:',
    'The Outcome Budget builds on the 2019-20 attempt to link expenditure with outcomes for schemes of the ministries, so that the annual budget becomes a statement of measurable deliverables rather than of inputs alone.',
    'hard',
    'Economic Survey 2023-24',
    null,
    '56eb0b8d6496ca00cd7abbc79cf483fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '56eb0b8d6496ca00cd7abbc79cf483fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'linking the fiscal deficit target with the inflation target'),
            ('B', 'linking budget outlays with the outputs to be delivered and the outcomes to be achieved'),
            ('C', 'replacing the annual budget with a five-year rolling plan'),
            ('D', 'consolidating the railway and general budgets')
           ) as v(label, option_text)
 where q.question_hash = '56eb0b8d6496ca00cd7abbc79cf483fc'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Zero-based budgeting in India implies:',
    'Zero-based budgeting treats each year''s allocation as a fresh exercise, requiring every scheme to justify its outlay in the light of the year''s priorities rather than simply carrying forward the previous year''s provision.',
    'medium',
    'Standard Reference',
    null,
    'dc31ef9884300b513fea84ebcdfe25e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dc31ef9884300b513fea84ebcdfe25e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the budget is prepared by the states and not by the Union'),
            ('B', 'only new schemes are funded and old schemes are automatically discontinued'),
            ('C', 'expenditure is frozen at the previous year''s level'),
            ('D', 'every year''s expenditure is reviewed afresh without regard to the previous year''s allocations')
           ) as v(label, option_text)
 where q.question_hash = 'dc31ef9884300b513fea84ebcdfe25e2'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''escape clause'' under the Fiscal Responsibility and Budget Management Act permits the government to:',
    'The escape clause allows the government to depart from the FRBM targets in exceptional circumstances and also enables deviation from the recommended fiscal deficit path if the macro-economic situation demands it.',
    'hard',
    'Standard Reference',
    null,
    '44b0d279f295ced38863c3c456640c2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '44b0d279f295ced38863c3c456640c2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'deviate from the fiscal deficit target in exceptional circumstances such as national security, natural calamities or a collapse in farm output'),
            ('B', 'waive interest payments on the public debt'),
            ('C', 'abolish the Consolidated Fund of India'),
            ('D', 'raise the fiscal deficit target beyond 3 per cent without any parliamentary approval')
           ) as v(label, option_text)
 where q.question_hash = '44b0d279f295ced38863c3c456640c2d'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Consolidated Fund of a State is operated by:',
    'Article 266 provides for the Consolidated Fund of each State to be operated by the Governor, either in his own charge or in the charge of officers appointed by him in writing.',
    'easy',
    'NCERT Class XII',
    null,
    'a7d248b758de767b70d73fb53964c9f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a7d248b758de767b70d73fb53964c9f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Comptroller and Auditor General'),
            ('B', 'the Governor of the State'),
            ('C', 'the Chief Minister of the State'),
            ('D', 'the Union Finance Minister')
           ) as v(label, option_text)
 where q.question_hash = 'a7d248b758de767b70d73fb53964c9f1'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The Payment of Gratuity Act, 1972 applies to establishments employing:',
    'The Payment of Gratuity Act, 1972 applies to every establishment in the private or public sector employing 10 or more persons, and the payment becomes payable on resignation, retirement, death or disablement.',
    'easy',
    'Standard Reference',
    null,
    '4f93f5e767b326a5b07b964bdbcb2645'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4f93f5e767b326a5b07b964bdbcb2645'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 or more employees'),
            ('B', '50 or more employees'),
            ('C', '10 or more employees'),
            ('D', '20 or more employees')
           ) as v(label, option_text)
 where q.question_hash = '4f93f5e767b326a5b07b964bdbcb2645'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Minimum Wages Act, 1948'' is administered by:',
    'The Minimum Wages Act is administered by the State Governments through their labour departments, and the Central Government fixes the minimum wages for certain central government undertakings.',
    'easy',
    'Standard Reference',
    null,
    'c2b006b42675b268d043795799d7e215'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c2b006b42675b268d043795799d7e215'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Labour Commission'),
            ('B', 'the concerned State Government'),
            ('C', 'the Central Government alone'),
            ('D', 'the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'c2b006b42675b268d043795799d7e215'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The Industrial Disputes Act, 1947 provides for:',
    'The Industrial Disputes Act sets out the procedure for the settlement of industrial disputes through conciliation, arbitration or adjudication by the appropriate authority, and also provides for the strike and lock-out machinery.',
    'medium',
    'Standard Reference',
    null,
    'd4d0ea07f6c4d2cb606623fd0c7b1774'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd4d0ea07f6c4d2cb606623fd0c7b1774'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the machinery of conciliation, arbitration and adjudication of industrial disputes'),
            ('B', 'the certification of fair wages'),
            ('C', 'the registration of employment exchanges'),
            ('D', 'the regulation of trade union finances')
           ) as v(label, option_text)
 where q.question_hash = 'd4d0ea07f6c4d2cb606623fd0c7b1774'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Code on Wages, 2019'' fixes the wage ceiling for contributions to the Employees'' Provident Fund and the Employees'' State Insurance at:',
    'The Code on Wages, 2019 rationalises the wage structure and fixes the monthly wage ceiling for EPF and ESIC coverage at Rs 15,000, replacing the earlier separate limits of Rs 15,000 and Rs 21,000.',
    'hard',
    'Standard Reference',
    null,
    '5bb6a130e637271abeab9a162068398a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5bb6a130e637271abeab9a162068398a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 25,000 per month'),
            ('B', 'Rs 21,000 per month'),
            ('C', 'Rs 10,000 per month'),
            ('D', 'Rs 15,000 per month')
           ) as v(label, option_text)
 where q.question_hash = '5bb6a130e637271abeab9a162068398a'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Under the Trade Unions Act, 1926, a trade union must be formed by at least:',
    'Section 4 of the Trade Unions Act requires at least seven persons to form a union, of whom at least two-thirds must be employed in the same industry for the union to qualify for the Act''s benefits.',
    'medium',
    'Standard Reference',
    null,
    '63a8797d797ed2fb8bd922c547d655c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '63a8797d797ed2fb8bd922c547d655c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'two-thirds of the workers of an industry'),
            ('B', 'fifteen members of the same establishment'),
            ('C', 'seven members, of whom at least two-thirds must be employed in the same industry'),
            ('D', 'ten members from the same industry')
           ) as v(label, option_text)
 where q.question_hash = '63a8797d797ed2fb8bd922c547d655c1'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Bonded Labour System (Abolition) Act, 1976'' is administered by the:',
    'The Act is administered by the central government in consultation with the State Governments, with district Vigilance Committees inspecting and reporting on the working of the Act, and the offence of bonded labour is cognizable.',
    'medium',
    'Standard Reference',
    null,
    'b078d7925fc3c971e8aa992504842031'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b078d7925fc3c971e8aa992504842031'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'National Human Rights Commission'),
            ('B', 'Ministry of Labour and Employment in consultation with the State Governments'),
            ('C', 'Ministry of Home Affairs'),
            ('D', 'Ministry of Rural Development')
           ) as v(label, option_text)
 where q.question_hash = 'b078d7925fc3c971e8aa992504842031'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Code on Social Security, 2020'' provides for:',
    'The Code on Social Security, 2020 widens the definition of workers to include gig and platform workers, provides for a National Social Security Board and an aggregator, and creates a framework for voluntary and assisted registration of gig workers.',
    'easy',
    'Standard Reference',
    null,
    'fb5eb8a257d01e834b83d62da54a2c0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fb5eb8a257d01e834b83d62da54a2c0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the merger of the EPF and ESI organisations'),
            ('B', 'a fixed wage ceiling for all social security contributions'),
            ('C', 'the abolition of the Employees'' Provident Fund'),
            ('D', 'a wider coverage of workers including gig and platform workers and the creation of a National Social Security Board')
           ) as v(label, option_text)
 where q.question_hash = 'fb5eb8a257d01e834b83d62da54a2c0e'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Import-Export Policy'' of India is administered by the:',
    'The Directorate General of Foreign Trade administers the Import-Export Policy, issues licences and also administers the export promotion schemes such as RoDTEP, while the RBI regulates the foreign exchange aspects.',
    'easy',
    'Standard Reference',
    null,
    'ea50653865a94d941b21c256be1a4609'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ea50653865a94d941b21c256be1a4609'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Reserve Bank of India'),
            ('B', 'the Ministry of Finance'),
            ('C', 'the Directorate General of Foreign Trade under the Ministry of Commerce and Industry'),
            ('D', 'the Export-Import Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'ea50653865a94d941b21c256be1a4609'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Foreign Exchange Management Act, 1999'' replaced which earlier statute?',
    'FEMA 1999, which came into force in May 1999, replaced the Foreign Exchange Regulation Act 1974 and shifted the approach from discretionary control of foreign exchange to management, with the goal of promoting orderly foreign exchange markets.',
    'medium',
    'Standard Reference',
    null,
    'c440e71d36c24c15485981b7b29b4808'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c440e71d36c24c15485981b7b29b4808'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Foreign Exchange Regulation Act, 1974'),
            ('B', 'the Banking Regulation Act, 1949'),
            ('C', 'the Companies Act, 1956'),
            ('D', 'the Negotiable Instruments Act, 1881')
           ) as v(label, option_text)
 where q.question_hash = 'c440e71d36c24c15485981b7b29b4808'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''errors and omissions'' component in India''s Balance of Payments mainly arises because of:',
    'Because trade and capital flows are recorded from different returns, unrecorded transactions and timing differences appear as errors and omissions, and the component is a residual that tends to be small over the long run.',
    'medium',
    'RBI',
    null,
    '242e54302971a36caad12c8383b2cc8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '242e54302971a36caad12c8383b2cc8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the depreciation of the rupee'),
            ('B', 'the accumulation of foreign exchange reserves'),
            ('C', 'unrecorded private transactions and gaps in the statistical data'),
            ('D', 'profits remitted by foreign companies')
           ) as v(label, option_text)
 where q.question_hash = '242e54302971a36caad12c8383b2cc8c'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'In India''s Balance of Payments, inward workers'' remittances are recorded under:',
    'Remittances from Indians working abroad are unrequited transfers and are therefore shown as secondary income in the current account, which is one of the largest contributors to India''s current account balance.',
    'medium',
    'RBI',
    null,
    'b1df970a63c92af3b197fb19aa2b35cf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b1df970a63c92af3b197fb19aa2b35cf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'secondary income in the current account'),
            ('B', 'the financial account'),
            ('C', 'capital transfers in the capital account'),
            ('D', 'primary income in the current account')
           ) as v(label, option_text)
 where q.question_hash = 'b1df970a63c92af3b197fb19aa2b35cf'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''RoDTEP'' scheme provides:',
    'The Remission of Duties and Taxes on Exported Products scheme scrip-based mechanism allows exporters to claim back embedded taxes, replacing the earlier duty drawback and focus product schemes with a single consolidated scheme.',
    'easy',
    'DGFT',
    null,
    '4b3da9e02e0fdd8dc98acbe257d3f9b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4b3da9e02e0fdd8dc98acbe257d3f9b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a rebate on customs duty for imports'),
            ('B', 'remission of embedded taxes to exporters, replacing the duty drawback and focus product schemes'),
            ('C', 'a mandatory export obligation for domestic companies'),
            ('D', 'an interest subsidy on export credit')
           ) as v(label, option_text)
 where q.question_hash = '4b3da9e02e0fdd8dc98acbe257d3f9b3'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'A ''Special Rupee Vostro'' account is used for:',
    'Special Rupee Vostro accounts are opened by the RBI for foreign countries or their agencies to enable them to trade with India and convert the rupee balances into their own currency at the designated rate.',
    'hard',
    'RBI',
    null,
    '23254abdfa0134a715328db9289b7e7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23254abdfa0134a715328db9289b7e7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'holding foreign exchange reserves of the RBI'),
            ('B', 'parking foreign direct investment inflows of Indian companies'),
            ('C', 'financing imports through the Export-Import Bank'),
            ('D', 'settling trade transactions with a designated foreign agency by converting rupee balances into the currency of that country')
           ) as v(label, option_text)
 where q.question_hash = '23254abdfa0134a715328db9289b7e7e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'In a perfectly competitive market, the equilibrium price is determined where:',
    'Under perfect competition the market price is determined by the interaction of aggregate demand and aggregate supply, and each firm is a price taker that equates its own marginal cost with that market price.',
    'easy',
    'NCERT Class XI',
    null,
    'c76c8f112ea84a9e895db2e80241cae8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c76c8f112ea84a9e895db2e80241cae8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the government fixes the price equal to average cost'),
            ('B', 'demand is perfectly inelastic'),
            ('C', 'market demand equals market supply'),
            ('D', 'the marginal cost of the single firm equals the market price')
           ) as v(label, option_text)
 where q.question_hash = 'c76c8f112ea84a9e895db2e80241cae8'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''law of increasing returns to a variable factor'' applies when:',
    'Returns to a variable factor are a short-run concept in which one input is varied while the others are fixed, and diminishing returns set in when the marginal product of the variable factor starts falling.',
    'medium',
    'NCERT Class XI',
    null,
    'b1926e2878dc42e10c3d3e432d36f177'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b1926e2878dc42e10c3d3e432d36f177'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'all factors of production are variable in the long run'),
            ('B', 'all other factors are held constant in the short run'),
            ('C', 'the size of the firm is fixed in the long run'),
            ('D', 'there is perfect competition in the product market')
           ) as v(label, option_text)
 where q.question_hash = 'b1926e2878dc42e10c3d3e432d36f177'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the Indian national accounts, ''gross value added'' at basic prices includes:',
    'GVA at basic prices is output at basic prices less intermediate consumption, and the sum of GVA across all industries gives GDP at market prices, which is why the two are reconciled in the national accounts.',
    'medium',
    'NCERT Class XII',
    null,
    '795acdc036ed84def2bc2b982b00f505'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '795acdc036ed84def2bc2b982b00f505'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the value of all final goods and services at market prices'),
            ('B', 'the value of output minus depreciation'),
            ('C', 'the total income of all factor owners after taxes'),
            ('D', 'the value of output minus intermediate consumption, including taxes on production but excluding subsidies')
           ) as v(label, option_text)
 where q.question_hash = '795acdc036ed84def2bc2b982b00f505'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The expenditure approach to estimating GDP is employed mainly because:',
    'While the production or income approach is preferred for the official estimates in India, the expenditure approach is used when production data are inadequate, and it also serves as a check on the consistency of the other two approaches.',
    'medium',
    'NCERT Class XII',
    null,
    '0de5abe80391b3209d37ea18a21355bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0de5abe80391b3209d37ea18a21355bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'data on production by industry are not available or adequate for a detailed estimate'),
            ('B', 'it is the only method that captures the contribution of the services sector'),
            ('C', 'it is the method prescribed for computing per capita income'),
            ('D', 'it allows the state to correct the estimate of the base year')
           ) as v(label, option_text)
 where q.question_hash = '0de5abe80391b3209d37ea18a21355bf'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the national accounts, depreciation of fixed assets is also termed as:',
    'Consumption of fixed capital is the fall in the value of fixed assets due to wear, obsolescence and accidental damage, and deducting it from gross value added gives net value added.',
    'medium',
    'NCERT Class XII',
    null,
    '2dc70b5f6317ad6fa2a23dac7dd9de74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2dc70b5f6317ad6fa2a23dac7dd9de74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'consumption of fixed capital'),
            ('B', 'gross capital formation'),
            ('C', 'net value added at factor cost'),
            ('D', 'reserve for depreciation')
           ) as v(label, option_text)
 where q.question_hash = '2dc70b5f6317ad6fa2a23dac7dd9de74'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Competition Commission of India'' can impose a monetary penalty for abuse of dominance up to:',
    'Under section 7 of the Competition Act, 2002 the Commission may impose a penalty of up to 10 per cent of the total turnover or assets of the undertaking for abuse of dominance, and twice that amount for a repeat offence.',
    'hard',
    'Standard Reference',
    null,
    'e23ccade45750b06958d9dacce033613'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e23ccade45750b06958d9dacce033613'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '25 per cent of the total turnover of the market'),
            ('B', '1 per cent of the turnover of the dominant undertaking'),
            ('C', '5 per cent of the annual profit of the company'),
            ('D', '10 per cent of the total turnover or assets of the undertaking')
           ) as v(label, option_text)
 where q.question_hash = 'e23ccade45750b06958d9dacce033613'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Under the ''Minimum Export Price'' mechanism, an exporter must export at a price not below the price notified by:',
    'The Ministry of Commerce notifies Minimum Export Prices for specified items such as onions and certain varieties of rice through the DGFT, and exports below the notified price are penalised under the export policy.',
    'medium',
    'DGFT',
    null,
    '4c7f2685ba4a5a686ba6b4de33e313d6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c7f2685ba4a5a686ba6b4de33e313d6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Ministry of Agriculture'),
            ('B', 'the Directorate General of Foreign Trade'),
            ('C', 'the Commodity Futures Market regulator'),
            ('D', 'the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '4c7f2685ba4a5a686ba6b4de33e313d6'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following is a correct statement about India''s Public Investment Borrowing through Government securities?',
    'Since the fiscal consolidation roadmap, a rising share of the central government''s net borrowing has been met through market issues of government securities, with the cash balance component deliberately reduced to keep the deficit within the target.',
    'hard',
    'Economic Survey 2023-24',
    null,
    '60fbdcf569364f29b9c64002d0ee29a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '60fbdcf569364f29b9c64002d0ee29a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The central government does not borrow from international markets at all'),
            ('B', 'All borrowing is done through the Reserve Bank of India as the sole banker to the government'),
            ('C', 'The share of the budget deficit financed through market borrowings has risen steadily while the share of cash balances has declined'),
            ('D', 'Government securities are never auctioned to the public')
           ) as v(label, option_text)
 where q.question_hash = '60fbdcf569364f29b9c64002d0ee29a3'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''marginal cost'' of a product is:',
    'The marginal cost is the additional cost of producing one more unit of the output and it is the relevant cost for the short run production decisions.',
    'easy',
    'NCERT Class XI',
    null,
    '34ca8a6c7b493602a78796b3ff164a3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '34ca8a6c7b493602a78796b3ff164a3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cost of the raw material only'),
            ('B', 'The cost of producing one more unit of the output'),
            ('C', 'The total cost of the production'),
            ('D', 'The fixed cost of the production')
           ) as v(label, option_text)
 where q.question_hash = '34ca8a6c7b493602a78796b3ff164a3f'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''law of increasing returns'' applies to:',
    'The law of the increasing returns applies to the short run when one variable input is changed and the other factors are fixed, and the returns eventually diminish.',
    'medium',
    'NCERT Class XI',
    null,
    '04545050e87b0645d776e456f885e63e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '04545050e87b0645d776e456f885e63e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The perfect competition'),
            ('B', 'The decreasing cost industry'),
            ('C', 'The short run with one variable input'),
            ('D', 'The long run with all the inputs variable')
           ) as v(label, option_text)
 where q.question_hash = '04545050e87b0645d776e456f885e63e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''price elasticity of demand'' for a necessity is:',
    'The price elasticity of demand of a necessity is low and the demand does not change much with the price, and the same is the case of the medicines.',
    'easy',
    'Standard Reference',
    null,
    'd8225db4dab077cf073b5bebf388ee1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8225db4dab077cf073b5bebf388ee1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High and elastic'),
            ('B', 'Zero'),
            ('C', 'Infinite'),
            ('D', 'Low and inelastic')
           ) as v(label, option_text)
 where q.question_hash = 'd8225db4dab077cf073b5bebf388ee1f'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''cross elasticity of demand'' between the tea and the coffee:',
    'The tea and the coffee are the substitutes and a rise in the price of the tea raises the demand for the coffee, so the cross elasticity is positive.',
    'medium',
    'Standard Reference',
    null,
    '04f9c0ef37cbb6729559410c6c126387'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04f9c0ef37cbb6729559410c6c126387'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is positive, as the two are substitutes'),
            ('B', 'Is negative'),
            ('C', 'Is zero'),
            ('D', 'Is infinite')
           ) as v(label, option_text)
 where q.question_hash = '04f9c0ef37cbb6729559410c6c126387'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''oligopoly'' is a market structure with:',
    'An oligopoly is the market with a few dominant firms and the high barriers to the entry and the examples are the Indian airlines, the steel and the oil refining.',
    'easy',
    'NCERT Class XI',
    null,
    '5d34c0b54a8484da2e3481476e0cfb70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5d34c0b54a8484da2e3481476e0cfb70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Many small firms'),
            ('B', 'No barriers to the entry'),
            ('C', 'A few dominant firms and the barriers to the entry'),
            ('D', 'Perfect competition')
           ) as v(label, option_text)
 where q.question_hash = '5d34c0b54a8484da2e3481476e0cfb70'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Consider the following statements. Which of them is correct with regard to the monopoly?',
    'In a monopoly there is a single seller with a complete control over the supply and the price and the barriers to the entry are the highest.',
    'easy',
    'Standard Reference',
    null,
    'ea4159a495c8bde32dfb6e878bdc2e9e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ea4159a495c8bde32dfb6e878bdc2e9e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The monopoly is the single buyer'),
            ('B', 'The monopoly has many sellers'),
            ('C', 'The monopoly has no barriers to the entry'),
            ('D', 'The monopoly is the single seller and the price is determined by the market power')
           ) as v(label, option_text)
 where q.question_hash = 'ea4159a495c8bde32dfb6e878bdc2e9e'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''fiscal deficit'' excludes the:',
    'The fiscal deficit is the total expenditure minus the total receipts excluding the borrowings and it includes the capital expenditure, unlike the primary deficit which excludes the interest payments.',
    'medium',
    'Standard Reference',
    null,
    '0c3e8532a20eb1846109782557640617'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0c3e8532a20eb1846109782557640617'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Capital expenditure'),
            ('B', 'Borrowings'),
            ('C', 'The revenue deficit'),
            ('D', 'The interest payments')
           ) as v(label, option_text)
 where q.question_hash = '0c3e8532a20eb1846109782557640617'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''revenue deficit'' of the government is:',
    'The revenue deficit is the excess of the revenue expenditure over the revenue receipts and it indicates that the government is borrowing to meet the current expenses.',
    'medium',
    'Standard Reference',
    null,
    '879b4316d9c0b74e7bdd934a953ac8e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '879b4316d9c0b74e7bdd934a953ac8e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The capital expenditure minus the receipts'),
            ('B', 'The revenue expenditure minus the revenue receipts'),
            ('C', 'The total expenditure minus the total receipts'),
            ('D', 'The borrowings minus the repayments')
           ) as v(label, option_text)
 where q.question_hash = '879b4316d9c0b74e7bdd934a953ac8e1'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''primary deficit'' is computed by deducting the:',
    'The primary deficit is the fiscal deficit less the interest payments and it is a better measure of the current fiscal stance because it excludes the cost of the past borrowings.',
    'medium',
    'Standard Reference',
    null,
    '7bd12193507f3a97ac5d41eddc7118a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7bd12193507f3a97ac5d41eddc7118a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Interest payments from the fiscal deficit'),
            ('B', 'Capital expenditure from the fiscal deficit'),
            ('C', 'Revenue receipts from the fiscal deficit'),
            ('D', 'Borrowings from the fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '7bd12193507f3a97ac5d41eddc7118a4'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''FRBM Act'' requires the government to:',
    'The FRBM Act of 2003 requires the government to present the fiscal policy targets in the budget and to present the medium term fiscal policy statement with the targets of the fiscal deficit and the public debt.',
    'medium',
    'Standard Reference',
    null,
    'e6a0533b377bfff931a3aa3453e01049'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e6a0533b377bfff931a3aa3453e01049'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Publish the GDP data'),
            ('B', 'Audit the accounts of the states'),
            ('C', 'Fix the repo rate'),
            ('D', 'Present the fiscal policy targets in the budget and the medium term fiscal policy statement')
           ) as v(label, option_text)
 where q.question_hash = 'e6a0533b377bfff931a3aa3453e01049'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''GST'' was introduced in India in:',
    'The Goods and Services Tax was launched on 1 July 2017 with the 101st Amendment and it subsumed the excise duty, the service tax, the VAT and the several other indirect taxes.',
    'easy',
    'Standard Reference',
    null,
    '54a3fcb7db4e6c41452eeaf076818b89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '54a3fcb7db4e6c41452eeaf076818b89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2015'),
            ('C', '2017'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '54a3fcb7db4e6c41452eeaf076818b89'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''GST'' is a:',
    'The GST is a destination based consumption tax and the tax is collected in the state of the consumption, unlike the VAT which was the origin based.',
    'medium',
    'Standard Reference',
    null,
    'f1d7f1d86e03f9ff08a5f7dffba70121'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f1d7f1d86e03f9ff08a5f7dffba70121'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A tax on the exports'),
            ('B', 'Destination based consumption tax'),
            ('C', 'Origin based tax'),
            ('D', 'A tax only on the services')
           ) as v(label, option_text)
 where q.question_hash = 'f1d7f1d86e03f9ff08a5f7dffba70121'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''compensation to the states'' for the GST revenue loss:',
    'The compensation of the GST revenue loss to the states was originally for five years and it was extended to June 2022 by the 53rd GST Council with the health cess extended to March 2026.',
    'hard',
    'Standard Reference',
    null,
    '2401e94687f9b2c8e48cc11f964bfe12'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2401e94687f9b2c8e48cc11f964bfe12'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was given for ten years'),
            ('B', 'Was never given'),
            ('C', 'Was for five years and was extended to June 2022 with the health cess to March 2026'),
            ('D', 'Was permanent from the start')
           ) as v(label, option_text)
 where q.question_hash = '2401e94687f9b2c8e48cc11f964bfe12'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''CAG'' has the power to:',
    'The CAG audits the accounts of the Union and of the states and of the bodies financed substantially from the public revenues and it reports to the legislature and it is a part of the general audit of India.',
    'easy',
    'Standard Reference',
    null,
    '8ae4e01f210691a4b3e1fcb26481bf86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8ae4e01f210691a4b3e1fcb26481bf86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Audit the accounts of the Union, the states and the bodies financed by the public money and to report to the legislature'),
            ('B', 'Audit only the Central ministries'),
            ('C', 'Audit the private sector'),
            ('D', 'Conduct the census')
           ) as v(label, option_text)
 where q.question_hash = '8ae4e01f210691a4b3e1fcb26481bf86'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''Laffer curve'' was given by:',
    'The Laffer curve of Arthur Laffer shows the inverted-U relationship between the tax rates and the tax revenue, and it is the base of the supply side economics.',
    'medium',
    'Standard Reference',
    null,
    'd0bb22423b323baf3a9b18cd81ac2f3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd0bb22423b323baf3a9b18cd81ac2f3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adam Smith'),
            ('B', 'Milton Friedman'),
            ('C', 'Keynes'),
            ('D', 'Arthur Laffer')
           ) as v(label, option_text)
 where q.question_hash = 'd0bb22423b323baf3a9b18cd81ac2f3d'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''merit goods'' are those:',
    'The merit goods are under-consumed and the government promotes them through the subsidies and the awareness, and the immunisation and the primary education are the examples.',
    'medium',
    'Standard Reference',
    null,
    'd4f63520b28f9a68831dbffbf567f21b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd4f63520b28f9a68831dbffbf567f21b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Which are the inferior goods'),
            ('B', 'Which are under-consumed and the government subsidises them, like the vaccination and the education'),
            ('C', 'Which are over-consumed and the government taxes them'),
            ('D', 'Which are the luxury goods')
           ) as v(label, option_text)
 where q.question_hash = 'd4f63520b28f9a68831dbffbf567f21b'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The ''demonetisation'' of the November 2016:',
    'The demonetisation of 8 November 2016 banned the 500 and the 1,000 rupee notes, about 86 per cent of the currency in circulation, and the new 200 rupee note was issued in 2018.',
    'easy',
    'Standard Reference',
    null,
    'a9c0e27cd463070364c47f033b31567c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a9c0e27cd463070364c47f033b31567c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was the banning of the 500 and the 1000 rupee notes and the issue of the new 200 rupee note'),
            ('B', 'Was the change of the fiscal year'),
            ('C', 'Was the abolition of the FERA'),
            ('D', 'Was the merger of the banks')
           ) as v(label, option_text)
 where q.question_hash = 'a9c0e27cd463070364c47f033b31567c'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''repo rate'' is the rate at which:',
    'The repo rate is the rate at which the RBI lends to the commercial banks against the securities and the reverse repo is the rate at which the RBI borrows from them.',
    'easy',
    'Standard Reference',
    null,
    '92aec665e5815de46ec8f4b581d86634'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '92aec665e5815de46ec8f4b581d86634'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The public borrows from the banks'),
            ('B', 'The government borrows from the market'),
            ('C', 'The RBI lends to the commercial banks against the securities'),
            ('D', 'The banks lend to the RBI')
           ) as v(label, option_text)
 where q.question_hash = '92aec665e5815de46ec8f4b581d86634'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''open market operations'' are conducted by the RBI:',
    'The open market operations are the purchase and the sale of the government securities by the RBI with the primary dealers and they are the flexible instrument of the liquidity management.',
    'medium',
    'Standard Reference',
    null,
    '894ce51a8d7f7b1b6327b0d6e17a2bfa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '894ce51a8d7f7b1b6327b0d6e17a2bfa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only with the state banks'),
            ('B', 'With the primary dealers in the government securities'),
            ('C', 'With the public directly'),
            ('D', 'With the foreign investors')
           ) as v(label, option_text)
 where q.question_hash = '894ce51a8d7f7b1b6327b0d6e17a2bfa'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''Bank Rate'' is the rate at which the RBI:',
    'The bank rate is the rate at which the RBI can lend to the commercial banks against the commercial paper, the government securities and the bills and it is the oldest instrument of the monetary policy.',
    'hard',
    'Standard Reference',
    null,
    'ff1bfbc5ff4d3e31f66491d581ab1630'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ff1bfbc5ff4d3e31f66491d581ab1630'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lends to the farmers'),
            ('B', 'Lends to the states'),
            ('C', 'Charges on the foreign exchange'),
            ('D', 'Can lend to the commercial banks against the commercial paper and the government securities')
           ) as v(label, option_text)
 where q.question_hash = 'ff1bfbc5ff4d3e31f66491d581ab1630'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''MSF'' or the Marginal Standing Facility:',
    'The Marginal Standing Facility allows the banks to borrow overnight from the RBI against the excess cash reserves and the rate is normally well above the repo rate as an emergency measure.',
    'hard',
    'Standard Reference',
    null,
    '8433df0627a3e77ce9930bf1b3f8f28b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8433df0627a3e77ce9930bf1b3f8f28b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the refinancing of the agriculture'),
            ('B', 'Allows the banks to borrow overnight from the RBI by dipping into the cash reserve ratio'),
            ('C', 'Is a long term lending facility'),
            ('D', 'Is a foreign exchange window')
           ) as v(label, option_text)
 where q.question_hash = '8433df0627a3e77ce9930bf1b3f8f28b'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Which of the following statements is/are correct in relation to the CRR?',
    'The Cash Reserve Ratio is the share of the Net Demand and Time Liabilities that the banks must hold as the cash with the RBI and it is not available for the lending and the SLR must be held in the cash, the gold or the approved securities.',
    'medium',
    'Standard Reference',
    null,
    '12f9823f1e4e5b2a51862ee410460abb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '12f9823f1e4e5b2a51862ee410460abb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CRR is the share of the NDTL that the banks must hold as the cash with the RBI'),
            ('B', 'The CRR is the share of the deposits that must be invested in the government securities'),
            ('C', 'The CRR is the share of the loans that must be to the priority sector'),
            ('D', 'The CRR is a tax on the banks')
           ) as v(label, option_text)
 where q.question_hash = '12f9823f1e4e5b2a51862ee410460abb'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''SLR'' is maintained by the banks in:',
    'The Statutory Liquidity Ratio is maintained in cash, gold or the approved securities and the objective is the liquidity of the system and the availability of the funds to the government.',
    'easy',
    'Standard Reference',
    null,
    'dab5ee6d036ea6c7a3101bc0a18336bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dab5ee6d036ea6c7a3101bc0a18336bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cash with the RBI only'),
            ('B', 'The deposits with the other banks'),
            ('C', 'The foreign reserves'),
            ('D', 'Cash, gold or the approved securities')
           ) as v(label, option_text)
 where q.question_hash = 'dab5ee6d036ea6c7a3101bc0a18336bd'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''inflation target'' of 4 per cent with the band of 2 to 6 per cent:',
    'The flexible inflation targeting was adopted in 2016 and the Central Government notified the 4 per cent target with the tolerance band of 2 to 6 per cent in consultation with the RBI.',
    'medium',
    'Standard Reference',
    2016,
    '541af88614f8918a99ecd26f13dc6379'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '541af88614f8918a99ecd26f13dc6379'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was adopted in 2008'),
            ('B', 'It is a recommendation of the IMF'),
            ('C', 'Was adopted in 2016 with the notification of the Central Government in consultation with the RBI'),
            ('D', 'Was adopted in 1991')
           ) as v(label, option_text)
 where q.question_hash = '541af88614f8918a99ecd26f13dc6379'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''MPC'' of the RBI:',
    'The Monetary Policy Committee has six members, three from the RBI including the Governor and three from the Centre, and the Governor has the casting vote in the event of an equality of the votes.',
    'easy',
    'Standard Reference',
    null,
    '9f7d282ad6a9a486f66963c9f9b06ca2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f7d282ad6a9a486f66963c9f9b06ca2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has five members with no casting vote'),
            ('B', 'Is chaired by the Finance Minister'),
            ('C', 'Has three members'),
            ('D', 'Has six members with the Governor holding the casting vote in the event of a tie')
           ) as v(label, option_text)
 where q.question_hash = '9f7d282ad6a9a486f66963c9f9b06ca2'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The ''RBI Act, 1934'' was amended in 2016 to give the RBI:',
    'The RBI Act of 1934 was amended in 2016 to give the RBI a statutory mandate to operate a flexible inflation targeting regime with the Central Government notifying the target.',
    'medium',
    'Standard Reference',
    2016,
    '2e51c8d86f666b926bd1dc09222c6d40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e51c8d86f666b926bd1dc09222c6d40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The power to control the SEBI'),
            ('B', 'A statutory mandate to operate the flexible inflation targeting'),
            ('C', 'The power to control the stock exchanges'),
            ('D', 'The power to regulate the insurance')
           ) as v(label, option_text)
 where q.question_hash = '2e51c8d86f666b926bd1dc09222c6d40'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Exchange reserves'' of India are held by:',
    'The foreign exchange reserves of India are held by the RBI and they comprise the foreign currency assets, the gold, the SDRs and the reserve tranche position with the IMF.',
    'easy',
    'Standard Reference',
    null,
    '62c723c9821b588c75f0f224ec36d956'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '62c723c9821b588c75f0f224ec36d956'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The state governments'),
            ('B', 'The public sector banks'),
            ('C', 'The RBI and they include the foreign currency assets, the gold, the SDRs and the reserve position with the IMF'),
            ('D', 'The Finance Ministry')
           ) as v(label, option_text)
 where q.question_hash = '62c723c9821b588c75f0f224ec36d956'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following is correct in the case of the rupee?',
    'The rupee was devalued by about 18 to 19 per cent in two stages in July 1991 to correct the overvaluation and the twin deficits.',
    'medium',
    'Standard Reference',
    null,
    'f350c857f487ca0208a049a1e200ef79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f350c857f487ca0208a049a1e200ef79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rupee was devalued by about 18 to 19 per cent in July 1991'),
            ('B', 'The rupee was appreciated in 1991'),
            ('C', 'The rupee was devalued in 1998'),
            ('D', 'There was no devaluation')
           ) as v(label, option_text)
 where q.question_hash = 'f350c857f487ca0208a049a1e200ef79'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The 1991 reforms included:',
    'The 1991 reforms dismantled the licensing, the MRTP, the price controls and the import restrictions and it opened the economy to the foreign investment and the global competition.',
    'medium',
    'Standard Reference',
    null,
    '95ce645ce36247842a1254be356e76c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '95ce645ce36247842a1254be356e76c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the exchange rate'),
            ('B', 'The 1991 reforms nationalised the banks'),
            ('C', 'the Planning Commission'),
            ('D', 'the delicensing, the ending of the MRTP and the reduction of the import duties')
           ) as v(label, option_text)
 where q.question_hash = '95ce645ce36247842a1254be356e76c8'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''trade deficit'' of India in 2023-24 was:',
    'The merchandise trade deficit of India was about $254 billion in 2023-24, though the services exports narrowed it and the CAD was about 2.1 per cent of the GDP.',
    'hard',
    'Standard Reference',
    2024,
    'd6a3a103fa59eea9db14b23343a6bb2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6a3a103fa59eea9db14b23343a6bb2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was in surplus'),
            ('B', 'About $254 billion'),
            ('C', 'About $40 billion'),
            ('D', 'About $800 billion')
           ) as v(label, option_text)
 where q.question_hash = 'd6a3a103fa59eea9db14b23343a6bb2f'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''FDI'' and the ''FPI'' in the Indian economy:',
    'The foreign direct investment is the investment made in the business assets of a company and the foreign portfolio investment is the investment in the securities like the shares and the bonds.',
    'easy',
    'Standard Reference',
    null,
    'afe6c9464fa4f6ef935b363df46b3af2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'afe6c9464fa4f6ef935b363df46b3af2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FDI is the investment in the business assets and the FPI is the investment in the securities'),
            ('B', 'They are the same'),
            ('C', 'The FDI is in the government bonds'),
            ('D', 'The FPI is banned in India')
           ) as v(label, option_text)
 where q.question_hash = 'afe6c9464fa4f6ef935b363df46b3af2'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following statements is/are correct in relation to the BoP?',
    'The current account records the trade in the goods and the services, the income receipts and the payments and the secondary income like the remittances and it is the sum of the trade balance, the services and the income.',
    'medium',
    'Standard Reference',
    null,
    'defa1327d50dfc12b743e2a0ea3bae2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'defa1327d50dfc12b743e2a0ea3bae2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The capital account records the trade in the services'),
            ('B', 'The reserve account records the imports'),
            ('C', 'The current account records the trade in the goods and the services and the primary and the secondary income'),
            ('D', 'The current account records only the trade in the goods')
           ) as v(label, option_text)
 where q.question_hash = 'defa1327d50dfc12b743e2a0ea3bae2a'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The Appellate Body of the WTO has been:',
    'The Appellate Body of the WTO has been paralysed since December 2019 with the United States blocking the appointments and the disputes are now appealed into the void.',
    'medium',
    'Standard Reference',
    null,
    'b0568ce17aef44938637f088da3897b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b0568ce17aef44938637f088da3897b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'reactivated in 2021'),
            ('B', 'paralysed since December 2019'),
            ('C', 'dissolved in 1995'),
            ('D', 'no Appellate Body')
           ) as v(label, option_text)
 where q.question_hash = 'b0568ce17aef44938637f088da3897b0'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The TRIPS agreement of the WTO allows:',
    'The TRIPS has the flexibility of the compulsory licensing and the 1999 and the 2005 amendments of the Indian patent law allowed the production of the generic versions of the essential drugs.',
    'medium',
    'Standard Reference',
    null,
    '8a097e70305c14d1d1c9c15485548ba5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8a097e70305c14d1d1c9c15485548ba5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The TRIPS bans the generics'),
            ('B', 'the patent for the seeds'),
            ('C', 'no flexibility'),
            ('D', 'the compulsory licensing of the drugs in the public interest')
           ) as v(label, option_text)
 where q.question_hash = '8a097e70305c14d1d1c9c15485548ba5'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The India is:',
    'The India is a founder member of the SAARC, the BRICS, the IBSA and a permanent member of the G20 and it is a member of the Quad, the I2U2, the SCO and the ASEAN.',
    'easy',
    'Standard Reference',
    null,
    '2c86a1160ad4e538c021ce3ed98fd032'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c86a1160ad4e538c021ce3ed98fd032'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The India is not a member of the G20'),
            ('B', 'The India is not a member of the IBSA'),
            ('C', 'The India is a founder member of the SAARC, the BRICS, the G20 and the IBSA'),
            ('D', 'The India is a member of only the SAARC')
           ) as v(label, option_text)
 where q.question_hash = '2c86a1160ad4e538c021ce3ed98fd032'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Export-Import Policy'' of India is announced for the period of:',
    'The Export-Import Policy is announced for a two-year period with an mid-term review and it is governed by the Ministry of Commerce and Industry.',
    'medium',
    'Standard Reference',
    null,
    '8d734859e0bd6a9c2e317d753cf3ae43'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8d734859e0bd6a9c2e317d753cf3ae43'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Two years with the review in the middle'),
            ('B', 'One year'),
            ('C', 'Five years'),
            ('D', 'Three years')
           ) as v(label, option_text)
 where q.question_hash = '8d734859e0bd6a9c2e317d753cf3ae43'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following statements regarding the more than 200 SEZs is correct?',
    'There are more than 200 SEZs in India and the software and the services SEZs dominate and the SEZ Act of 2005 provided the statutory framework.',
    'medium',
    'Standard Reference',
    null,
    'affd4682a27518d641b821d0b1efade8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'affd4682a27518d641b821d0b1efade8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'There are only five SEZs'),
            ('B', 'The SEZs are only the geographical areas'),
            ('C', 'The SEZs were abolished in 2020'),
            ('D', 'There are more than 200 SEZs in India with the software and the services as the dominant sector')
           ) as v(label, option_text)
 where q.question_hash = 'affd4682a27518d641b821d0b1efade8'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Which of the following statements regarding the for the food security and is correct?',
    'The National Food Security Act of 2013 provides for the food security and the nutrition and it institutionalises the right to food with the special focus on the children, the pregnant and the lactating women and the elderly.',
    'easy',
    'Standard Reference',
    null,
    'a4ee7e6ee68e5d0e94a8f0eef5f74898'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a4ee7e6ee68e5d0e94a8f0eef5f74898'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the PDS of the states only'),
            ('B', 'for the food security and the nutrition and the institutional machinery'),
            ('C', 'for the subsidies only'),
            ('D', 'a trade law')
           ) as v(label, option_text)
 where q.question_hash = 'a4ee7e6ee68e5d0e94a8f0eef5f74898'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The MSP is recommended:',
    'The Minimum Support Price is recommended by the Commission for Agricultural Costs and Prices and though it is announced there is no legal obligation on any agency to purchase at that price.',
    'medium',
    'Standard Reference',
    null,
    'c6adcc9eced31d55479a6522d1cb3e17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c6adcc9eced31d55479a6522d1cb3e17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'by the CACP and it is not legally mandated'),
            ('B', 'fixed by the Parliament'),
            ('C', 'only to the wheat'),
            ('D', 'paid only in the Punjab')
           ) as v(label, option_text)
 where q.question_hash = 'c6adcc9eced31d55479a6522d1cb3e17'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The three laws were:',
    'The three laws of 2020 were the Farmers'' Production Trade Agreement, the Farmers Agreement on Price Assurance and the Farm Services Agreement and the Essential Commodities Act amendment and they were repealed in 2021.',
    'medium',
    'Standard Reference',
    null,
    'e2d8987821612176ce5fbf894f6bfeb0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e2d8987821612176ce5fbf894f6bfeb0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'about the irrigation'),
            ('B', 'about the cold chain'),
            ('C', 'the Farmers'' Production Trade Agreement, the Farmers Agreement on Price Assurance and the Farm Services Agreement'),
            ('D', 'about the fertiliser')
           ) as v(label, option_text)
 where q.question_hash = 'e2d8987821612176ce5fbf894f6bfeb0'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'Kisan Credit Card provides:',
    'The Kisan Credit Card provides the short term credit for the crops and the allied activities at a concessional rate of 4 per cent with the interest subvention and it was revised in 2019.',
    'easy',
    'Standard Reference',
    null,
    '32f436684ba22a72bbc561b705dd17fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '32f436684ba22a72bbc561b705dd17fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the irrigation'),
            ('B', 'the short term credit for the crops and the allied activities at a concessional rate'),
            ('C', 'only the crop insurance'),
            ('D', 'the marketing support')
           ) as v(label, option_text)
 where q.question_hash = '32f436684ba22a72bbc561b705dd17fd'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'PM Fasal Bima Yojana is:',
    'The PM Fasal Bima Yojana of 2016 provides the crop insurance with the subsidised premium of 2 per cent for the Kharif and 1.5 per cent for the Rabi and the technology-based assessment of the yield.',
    'medium',
    'Standard Reference',
    null,
    '6e10b2ccd626c3ba747d1005012b5cb9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6e10b2ccd626c3ba747d1005012b5cb9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the export subsidy'),
            ('B', 'the fertiliser subsidy'),
            ('C', 'the crop insurance with the subsidised premium and the technology-based yield assessment'),
            ('D', 'the price support scheme')
           ) as v(label, option_text)
 where q.question_hash = '6e10b2ccd626c3ba747d1005012b5cb9'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'It is the online trading platform of the APMC mandis launched:',
    'The electronic National Agricultural Market, launched in 2016, integrates the online trading platforms of the APMC mandis and the network of the warehouses and the cold storages.',
    'easy',
    'Standard Reference',
    null,
    '2956889df577000fb7228cbdf53e0d67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2956889df577000fb7228cbdf53e0d67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the land records portal'),
            ('B', 'the crop insurance portal'),
            ('C', 'the fertiliser subsidy portal'),
            ('D', 'in 2016')
           ) as v(label, option_text)
 where q.question_hash = '2956889df577000fb7228cbdf53e0d67'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The Kharif crops are:',
    'The Kharif crops are sown with the onset of the monsoon in June-July and the Rabi crops are sown in the winter and the Zaid in the summer.',
    'easy',
    'NCERT Class XI',
    null,
    'fe735ed24980dc9d21b23bdc97cfd990'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fe735ed24980dc9d21b23bdc97cfd990'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'sown with the onset of the monsoon and the Rabi in the winter'),
            ('B', 'the winter crops'),
            ('C', 'the summer cropping season'),
            ('D', 'the foodgrains')
           ) as v(label, option_text)
 where q.question_hash = 'fe735ed24980dc9d21b23bdc97cfd990'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Green Revolution'' was mainly in the:',
    'The Green Revolution was concentrated in the wheat and the rice of the irrigated north-west and it also had the adverse effect of widening the regional disparities and of the soil exhaustion.',
    'medium',
    'Standard Reference',
    null,
    '3c01b5ca4179628948ccb81a90e44b50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3c01b5ca4179628948ccb81a90e44b50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tea and coffee'),
            ('B', 'Millets and pulses'),
            ('C', 'Wheat and rice'),
            ('D', 'Cotton and jute')
           ) as v(label, option_text)
 where q.question_hash = '3c01b5ca4179628948ccb81a90e44b50'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'It made the India the largest milk producer and it was:',
    'The Operation Flood was the world''s largest milk cooperative programme and it made the India the largest producer of the milk and it was the brainchild of the Verghese Kurien.',
    'easy',
    'Standard Reference',
    null,
    '1bf154e3e08d50baafb83559c343ccc9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1bf154e3e08d50baafb83559c343ccc9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fisheries programme'),
            ('B', 'the world''s largest milk cooperative programme'),
            ('C', 'the rice programme'),
            ('D', 'the foodgrain programme')
           ) as v(label, option_text)
 where q.question_hash = '1bf154e3e08d50baafb83559c343ccc9'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''ICAR'' is the apex organisation for the:',
    'The Indian Council of Agricultural Research, founded in 1929, is the apex organisation for the agricultural research and it has 22 institutes and more than 60 agricultural universities under it.',
    'easy',
    'Standard Reference',
    null,
    'ca2f79289aa6da0830b993184a43ddd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ca2f79289aa6da0830b993184a43ddd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Space research'),
            ('B', 'Medical research'),
            ('C', 'Defence research'),
            ('D', 'Agricultural research')
           ) as v(label, option_text)
 where q.question_hash = 'ca2f79289aa6da0830b993184a43ddd3'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''NABARD'' was established in:',
    'The National Bank for Agriculture and Rural Development was set up on 12 July 1982 on the recommendation of the Sivaraman Committee and it is the apex institution for the agriculture and the rural development.',
    'medium',
    'Standard Reference',
    null,
    '12cacaeb10a9ad6d3db300dd0983a678'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '12cacaeb10a9ad6d3db300dd0983a678'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1982'),
            ('B', '1954'),
            ('C', '1969'),
            ('D', '1991')
           ) as v(label, option_text)
 where q.question_hash = '12cacaeb10a9ad6d3db300dd0983a678'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The National Land Use Planning and the Sustainable Land Use Management framework was:',
    'The framework of the National Land Use Planning and the Sustainable Land Use Management was approved in 2019 and it is the basis of the land resource management in the country.',
    'hard',
    'Standard Reference',
    null,
    '40a6e1e816bb193cb59e33d79ea9be68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '40a6e1e816bb193cb59e33d79ea9be68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'approved in 1991'),
            ('B', 'approved in 2005'),
            ('C', 'no such framework'),
            ('D', 'approved in 2019')
           ) as v(label, option_text)
 where q.question_hash = '40a6e1e816bb193cb59e33d79ea9be68'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following is correct in the case of the entitlements 75 per cent?',
    'The National Food Security Act of 2013 covers about 75 per cent of the rural and about 50 per cent of the urban population with the food entitlements.',
    'medium',
    'Standard Reference',
    null,
    'd3dfb49a1500580b4d3e2d6d2bf60fef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd3dfb49a1500580b4d3e2d6d2bf60fef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'for the entitlements of the 75 per cent of the rural and the 50 per cent of the urban population'),
            ('B', 'for the 100 per cent coverage'),
            ('C', 'for the 25 per cent coverage'),
            ('D', 'not a legal right')
           ) as v(label, option_text)
 where q.question_hash = 'd3dfb49a1500580b4d3e2d6d2bf60fef'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The Rangarajan committee recommended the separate rural and the urban poverty lines based on:',
    'The Rangarajan committee of 2012 recommended the state-specific and the rural-urban poverty lines based on the median consumption expenditure, a departure from the Tendulkar approach.',
    'hard',
    'Standard Reference',
    null,
    '817c82348c43199e42a6e7c3743b7a7d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '817c82348c43199e42a6e7c3743b7a7d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 10 per cent of the poorest'),
            ('B', 'the median expenditure'),
            ('C', 'a uniform all-India line'),
            ('D', 'the calorie norm')
           ) as v(label, option_text)
 where q.question_hash = '817c82348c43199e42a6e7c3743b7a7d'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The PLFS is the official source of the employment data in India and it is conducted:',
    'The Periodic Labour Force Survey is the official source of the employment data in India and it is conducted quarterly by the NSO in the rural and the urban areas.',
    'medium',
    'Standard Reference',
    null,
    '04c178a3beec13a7b48613d8895e7ca5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '04c178a3beec13a7b48613d8895e7ca5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a census of the unemployed'),
            ('B', 'discontinued in 2020'),
            ('C', 'quarterly'),
            ('D', 'every ten years')
           ) as v(label, option_text)
 where q.question_hash = '04c178a3beec13a7b48613d8895e7ca5'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''ILO'' definition of unemployment includes the persons who are:',
    'The ILO defines the unemployment as the persons of the working age who are without work, are available for work and are seeking work, and the unemployment rate is the share of the labour force.',
    'easy',
    'Standard Reference',
    null,
    'c021edd90322f962688d15d79defe933'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c021edd90322f962688d15d79defe933'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Without work, available for work and seeking work'),
            ('B', 'Without work but not seeking work'),
            ('C', 'Only the educated persons'),
            ('D', 'Only the rural persons')
           ) as v(label, option_text)
 where q.question_hash = 'c021edd90322f962688d15d79defe933'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements regarding the EPFO is correct?',
    'The Employees'' Provident Fund Organisation administers the contributory provident fund for the employees of the organised sector drawing a wage up to the notified ceiling.',
    'easy',
    'Standard Reference',
    null,
    '943e390332fc7889c9857447d4f55c2d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '943e390332fc7889c9857447d4f55c2d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the housing finance corporation'),
            ('B', 'It administers the contributory provident fund for the employees in the organised sector'),
            ('C', 'It administers the insurance of the crops'),
            ('D', 'It is the apex of the cooperative banks')
           ) as v(label, option_text)
 where q.question_hash = '943e390332fc7889c9857447d4f55c2d'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'Which of the following statements regarding the It guarantees the 100 days is correct?',
    'The MGNREGA is a law that guarantees the 100 days of the wage employment and the right to work to the rural households and it is the largest such law in the world.',
    'easy',
    'Standard Reference',
    null,
    'b7abf8610de4a6c6d319f78e8ac15243'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b7abf8610de4a6c6d319f78e8ac15243'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It guarantees the 150 days'),
            ('B', 'It is a urban scheme'),
            ('C', 'It is a pension scheme'),
            ('D', 'It guarantees the 100 days of the wage employment and the right to work')
           ) as v(label, option_text)
 where q.question_hash = 'b7abf8610de4a6c6d319f78e8ac15243'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''four labour codes'' replace:',
    'The four labour codes of 2019-2020 consolidate the Industrial Disputes Act of 1947, the Factory Act of 1948, the Trade Unions Act of 1926, the Payment of Wages Act of 1936 and the Apprentices Act.',
    'medium',
    'Standard Reference',
    null,
    'c5ca82662920818828a0a57ced81b637'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c5ca82662920818828a0a57ced81b637'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Income Tax Act'),
            ('B', 'The Contract Act'),
            ('C', 'The Industrial Disputes Act, the Factory Act, the Trade Unions Act and the Payment of Wages Act'),
            ('D', 'The Companies Act')
           ) as v(label, option_text)
 where q.question_hash = 'c5ca82662920818828a0a57ced81b637'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''ESI'' covers the employees with a wage of up to:',
    'The ESI scheme covers the employees with a wage of up to Rs. 21,000 a month and the contribution is shared equally by the employer and the employee.',
    'hard',
    'Standard Reference',
    null,
    '3265bf6a9b5993922d1d8ff3857828ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3265bf6a9b5993922d1d8ff3857828ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 21,000 a month'),
            ('B', 'Rs. 15,000 a month'),
            ('C', 'Rs. 25,000 a month'),
            ('D', 'There is no limit')
           ) as v(label, option_text)
 where q.question_hash = '3265bf6a9b5993922d1d8ff3857828ce'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'the PM SVANidhi is correct is:',
    'The PM SVANidhi, launched in June 2020, provides the collateral-free working capital loans of up to Rs. 20,000 to the street vendors of the country.',
    'medium',
    'Standard Reference',
    null,
    '4e31ac0fdc2e141a053f36c57c59c04a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4e31ac0fdc2e141a053f36c57c59c04a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a scholarship scheme'),
            ('B', 'It is the livelihood support scheme of the Ministry of Housing and Urban Affairs for the street vendors'),
            ('C', 'It is a farm income support scheme'),
            ('D', 'It is a skill development scheme')
           ) as v(label, option_text)
 where q.question_hash = '4e31ac0fdc2e141a053f36c57c59c04a'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''PM-JANMAN'' is for the:',
    'The PM-JANMAN, the Janjatiya Nagari Abhiyan, is the scheme for the Particularly Vulnerable Tribal Groups with the Van Dhan Vikas Kendras as the units.',
    'medium',
    'Standard Reference',
    null,
    '0273d46ef2832a3a81783a5cf4be543a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0273d46ef2832a3a81783a5cf4be543a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Urban poor'),
            ('B', 'Small farmers'),
            ('C', 'Women entrepreneurs'),
            ('D', 'Particularly Vulnerable Tribal Groups')
           ) as v(label, option_text)
 where q.question_hash = '0273d46ef2832a3a81783a5cf4be543a'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'the a monthly pension is correct provides:',
    'The PM Kisan Maandhan Yojana provides a monthly pension of Rs. 3,000 to the small and the marginal farmers on a voluntary contribution with the matching government contribution.',
    'medium',
    'Standard Reference',
    null,
    '0401c591c93dc96296de65184ba17170'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0401c591c93dc96296de65184ba17170'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the crop insurance'),
            ('B', 'It is the credit guarantee'),
            ('C', 'It provides a monthly pension of Rs. 3,000 to the small and the marginal farmers'),
            ('D', 'It provides a Rs. 6,000 annual income support')
           ) as v(label, option_text)
 where q.question_hash = '0401c591c93dc96296de65184ba17170'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The Economic Survey has 36 chapters and it is:',
    'The Economic Survey is divided into 36 chapters and it is normally presented on the last working day of January, a day before the Budget.',
    'medium',
    'Standard Reference',
    null,
    '624424bf697b79e098c28aff504bd996'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '624424bf697b79e098c28aff504bd996'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'presented on the last working day of January'),
            ('B', 'presented in December'),
            ('C', 'presented in March'),
            ('D', 'presented with the budget')
           ) as v(label, option_text)
 where q.question_hash = '624424bf697b79e098c28aff504bd996'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''Union Budget'' of 2024-25 was presented on:',
    'The Union Budget for 2024-25 was presented on 1 February 2024 by the Finance Minister, the Nirmala Sitharaman, and it was the first budget of the coalition government.',
    'easy',
    'Standard Reference',
    2024,
    'c642f8fd3a708c316eedafc2242db147'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c642f8fd3a708c316eedafc2242db147'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26 January 2024'),
            ('B', '31 March 2024'),
            ('C', '1 February 2024'),
            ('D', '1 February 2023')
           ) as v(label, option_text)
 where q.question_hash = 'c642f8fd3a708c316eedafc2242db147'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''fiscal deficit target'' for 2024-25 and 2025-26:',
    'The fiscal deficit of the central government was projected at 7.3 per cent of the GDP for 2024-25 and 4.9 per cent for 2025-26, and the target of 3 per cent is now expected by 2026-27.',
    'medium',
    'Standard Reference',
    2024,
    '991659a5903f59a55db03924e90c711c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '991659a5903f59a55db03924e90c711c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was 4.9 per cent and 3.5 per cent'),
            ('B', 'Was 6.4 per cent and 5.9 per cent'),
            ('C', 'Was 3.5 per cent and 3.0 per cent'),
            ('D', 'Was 7.3 per cent and 4.9 per cent of the GDP')
           ) as v(label, option_text)
 where q.question_hash = '991659a5903f59a55db03924e90c711c'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''capital expenditure'' of the Union for 2024-25:',
    'The capital expenditure of the Union for 2024-25 was raised to Rs. 11.21 lakh crore, about 3.4 per cent of the GDP, with the focus on the roads, the railways and the airports.',
    'medium',
    'Standard Reference',
    2024,
    '4f58e809572e9a11e074cb572f4c4ff8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4f58e809572e9a11e074cb572f4c4ff8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was raised to Rs. 3 lakh crore'),
            ('B', 'Was raised to Rs. 11.21 lakh crore'),
            ('C', 'Was cut to Rs. 6 lakh crore'),
            ('D', 'Was kept unchanged')
           ) as v(label, option_text)
 where q.question_hash = '4f58e809572e9a11e074cb572f4c4ff8'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''primary deficit'' of the Union for 2024-25 was projected at:',
    'The primary deficit for 2024-25 was projected at 4.1 per cent of the GDP and the revenue deficit at 2.8 per cent.',
    'hard',
    'Standard Reference',
    2024,
    'fe91cf720eaeafd18b230c1acab15f11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fe91cf720eaeafd18b230c1acab15f11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2.6 per cent of the GDP'),
            ('B', '7.3 per cent of the GDP'),
            ('C', '0.4 per cent of the GDP'),
            ('D', '4.1 per cent of the GDP')
           ) as v(label, option_text)
 where q.question_hash = 'fe91cf720eaeafd18b230c1acab15f11'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''disinvestment target'' in the Union Budget 2024-25:',
    'The disinvestment target of the Budget 2024-25 was cut to Rs. 6,000 crore from the earlier Rs. 1.87 lakh crore, with the bulk of the receipts expected from the disinvestment of the IDBI and the RIL stake.',
    'hard',
    'Standard Reference',
    2024,
    '165ca432c00412975ad450ce43665198'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '165ca432c00412975ad450ce43665198'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was Rs. 10,000 crore'),
            ('B', 'There was no disinvestment target'),
            ('C', 'Was Rs. 6,000 crore and the earlier target of Rs. 1.87 lakh crore was reduced'),
            ('D', 'Was Rs. 1.87 lakh crore')
           ) as v(label, option_text)
 where q.question_hash = '165ca432c00412975ad450ce43665198'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The ''tax to GDP ratio'' of India:',
    'The tax to GDP ratio of India is about 12 per cent and it is among the lowest in the world because of the narrow tax base, the large informal sector and the low direct tax rates.',
    'medium',
    'Standard Reference',
    null,
    'ee4a11cfcd5cbcd4b1f2552c2bd81fd7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ee4a11cfcd5cbcd4b1f2552c2bd81fd7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is about 12 per cent and is among the lowest in the world'),
            ('B', 'Is about 25 per cent'),
            ('C', 'Is about 30 per cent'),
            ('D', 'Is about 5 per cent')
           ) as v(label, option_text)
 where q.question_hash = 'ee4a11cfcd5cbcd4b1f2552c2bd81fd7'
on conflict (question_id, label) do nothing;

-- economy | economic-survey-and-budget | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'economic-survey-and-budget'),
    'The NITI Aayog does not allocate the plan funds and it has:',
    'The NITI Aayog, which replaced the Planning Commission in 2015, is a think tank without the fund allocation powers and it has the three-tier structure of the national, the state and the district.',
    'easy',
    'Standard Reference',
    null,
    '06da256abcddd387575641dfebb1d58d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '06da256abcddd387575641dfebb1d58d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'chaired by the President'),
            ('B', 'the three-tier structure'),
            ('C', 'it allocates the plan funds'),
            ('D', 'a two-tier structure')
           ) as v(label, option_text)
 where q.question_hash = '06da256abcddd387575641dfebb1d58d'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The peak power demand of India crossed:',
    'The peak power demand of India crossed the 250 GW mark in 2024 and the country became the third largest in the world in the energy generation and the consumption.',
    'medium',
    'Standard Reference',
    2024,
    '4e75355ce85a3f95cf8da96aa9a8e823'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4e75355ce85a3f95cf8da96aa9a8e823'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the 250 GW in 2024'),
            ('B', 'about 50 GW'),
            ('C', 'about 100 GW'),
            ('D', 'about 500 GW')
           ) as v(label, option_text)
 where q.question_hash = '4e75355ce85a3f95cf8da96aa9a8e823'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Which of the following statements regarding the an outlay of Rs. 19,744 is correct?',
    'The National Green Hydrogen Mission has an outlay of Rs. 19,744 crore and the target of a minimum of 5 million tonnes of the annual green hydrogen production by 2030 and the electrolysers of 100 kW and above are to be made in India.',
    'medium',
    'Standard Reference',
    2023,
    'e1cf78414814f4e8661a2ff508ff4754'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1cf78414814f4e8661a2ff508ff4754'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a state scheme'),
            ('B', 'an outlay of Rs. 19,744 crore and a target of 5 million tonnes of the green hydrogen a year by 2030'),
            ('C', 'an outlay of Rs. 1,974 crore'),
            ('D', 'the nuclear energy')
           ) as v(label, option_text)
 where q.question_hash = 'e1cf78414814f4e8661a2ff508ff4754'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''PM Surya Ghar Muft Bijli'' has an outlay of:',
    'The PM Surya Ghar Muft Bijli Yojana, launched in February 2024, has an outlay of Rs. 75,021 crore and the rooftop solar of up to 300 units per household.',
    'medium',
    'Standard Reference',
    2024,
    '96fe785bd876f82a828d9300542cc7b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '96fe785bd876f82a828d9300542cc7b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs. 7,502 crore'),
            ('B', 'Rs. 1.50 lakh crore'),
            ('C', 'Rs. 25,000 crore'),
            ('D', 'Rs. 75,021 crore')
           ) as v(label, option_text)
 where q.question_hash = '96fe785bd876f82a828d9300542cc7b2'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Bharatmala Pariyojana'' is the project of:',
    'The Bharatmala Pariyojana is the project of the national highway network of about 6,000 km that is being implemented by the National Highways Authority of India.',
    'medium',
    'Standard Reference',
    null,
    'b45bbb6fb0b62b5eafc1952fe8bc9345'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b45bbb6fb0b62b5eafc1952fe8bc9345'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The inland waterways'),
            ('B', 'The rail corridors only'),
            ('C', 'About 6,000 km of the national highways'),
            ('D', 'The ports')
           ) as v(label, option_text)
 where q.question_hash = 'b45bbb6fb0b62b5eafc1952fe8bc9345'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Which of the following is correct in the case of the Aurangabad-Hyderabad?',
    'The Amaravati, on the Krishna river, is the proposed capital of the Andhra Pradesh with the financial city and the capital city components, and it was affected by the Polavaram project.',
    'hard',
    'Standard Reference',
    null,
    'e0d601f8946c35e311585f8280f43684'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e0d601f8946c35e311585f8280f43684'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a port project'),
            ('B', 'It is a railway project'),
            ('C', 'The Amaravati is the proposed financial city of the Andhra Pradesh on the Krishna river'),
            ('D', 'The Amaravati is a temple city')
           ) as v(label, option_text)
 where q.question_hash = 'e0d601f8946c35e311585f8280f43684'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Atal Bhujal Yojana'' is for:',
    'The Atal Bhujal Yojana is the community-managed groundwater recharge programme of the Jal Shakti Ministry in the water-stressed blocks of the country.',
    'medium',
    'Standard Reference',
    null,
    'd5c2fd1da40d49ce431a45e80244eca9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd5c2fd1da40d49ce431a45e80244eca9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The recharge of the groundwater in the water-stressed blocks'),
            ('B', 'The drip irrigation'),
            ('C', 'The rooftop solar'),
            ('D', 'The desilting of the canals')
           ) as v(label, option_text)
 where q.question_hash = 'd5c2fd1da40d49ce431a45e80244eca9'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'In the context of the Bharat Drone, which of the following is correct?',
    'The Bharat Drone is the indigenous series of the drones developed by the DRDO with the Puma, the Ghatak, the Pushpak and the Rustom.',
    'hard',
    'Standard Reference',
    null,
    '6b13d7e3d992c6a023ad004c9b95d7a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6b13d7e3d992c6a023ad004c9b95d7a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a satellite series'),
            ('B', 'Is the indigenous drone series of the DRDO with the puma and the ghatak'),
            ('C', 'It is a ship series'),
            ('D', 'It is a missile series')
           ) as v(label, option_text)
 where q.question_hash = '6b13d7e3d992c6a023ad004c9b95d7a4'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Make in India'' Index of the NITI Aayog measures:',
    'The Make in India Index measures the performance and the competitiveness of the states on the 45 parameters across the five pillars of the manufacturing ecosystem.',
    'hard',
    'Standard Reference',
    null,
    '3a6f18f9c2a67336fd92348b12e2bb39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3a6f18f9c2a67336fd92348b12e2bb39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FDI of the states'),
            ('B', 'The exports of the states'),
            ('C', 'The employment of the states'),
            ('D', 'The performance of the states on 45 parameters across the five pillars')
           ) as v(label, option_text)
 where q.question_hash = '3a6f18f9c2a67336fd92348b12e2bb39'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Startup India Seed Fund Scheme'':',
    'The Startup India Seed Fund Scheme provides the funding of up to Rs. 50 lakh for the proof of concept and up to Rs. 20 crore for the scaling up of the startups.',
    'hard',
    'Standard Reference',
    null,
    '300dde17b49b2fbff7ebecc6e7eaf034'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '300dde17b49b2fbff7ebecc6e7eaf034'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a loan scheme for the farmers'),
            ('B', 'It is a subsidy for the exports'),
            ('C', 'It is a fund for the PSUs'),
            ('D', 'Provides the funding of up to Rs. 50 lakh for the proof of concept and up to Rs. 20 crore for the growth stage')
           ) as v(label, option_text)
 where q.question_hash = '300dde17b49b2fbff7ebecc6e7eaf034'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following statements regarding the The fabs, the display fabs is correct?',
    'The India Semiconductor Mission covers the semiconductor fabs, the display fabs, the design and the packaging, with the fiscal support of about Rs. 76,000 crore.',
    'medium',
    'Standard Reference',
    null,
    '0747496d7107e69ff83c46acebc0cf36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0747496d7107e69ff83c46acebc0cf36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fabs, the display fabs, the design and the packaging'),
            ('B', 'Only the design'),
            ('C', 'Only the packaging'),
            ('D', 'Only the assembly')
           ) as v(label, option_text)
 where q.question_hash = '0747496d7107e69ff83c46acebc0cf36'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Bureau of Indian Standards'' is the body for:',
    'The Bureau of Indian Standards, under the Department of Promotion of Industry and Internal Trade, is the national body for the standardisation, the quality control and the certification.',
    'easy',
    'Standard Reference',
    null,
    '4ce7855c7595f580eb2ce7e2323d6377'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4ce7855c7595f580eb2ce7e2323d6377'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The labour regulation'),
            ('B', 'Standardisation, the quality control and the certification'),
            ('C', 'The trade policy'),
            ('D', 'The industrial licensing')
           ) as v(label, option_text)
 where q.question_hash = '4ce7855c7595f580eb2ce7e2323d6377'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Competition Commission of India'' was created by the:',
    'The Competition Commission of India was created by the Competition Act of 2002, which repealed the Monopolistic and Restrictive Trade Practices Act of 1969.',
    'medium',
    'Standard Reference',
    null,
    'f199f39d1580cfb4cf239df2e0d0aeb1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f199f39d1580cfb4cf239df2e0d0aeb1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The SEBI Act of 1992'),
            ('B', 'The Insolvency Code'),
            ('C', 'The Competition Act of 2002 which replaced the MRTP Act of 1969'),
            ('D', 'The Companies Act of 2013')
           ) as v(label, option_text)
 where q.question_hash = 'f199f39d1580cfb4cf239df2e0d0aeb1'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''MSME'' definition after the 2020 revision:',
    'The revised MSME classification of 2020 raised the investment limit to Rs. 25 crore and the turnover limit to Rs. 100 crore for the enterprises.',
    'medium',
    'Standard Reference',
    2020,
    '94b65ffd31ed3e0e7292d524c66a307c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '94b65ffd31ed3e0e7292d524c66a307c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An investment of up to Rs. 25 crore and a turnover of up to Rs. 100 crore'),
            ('B', 'An investment of up to Rs. 5 crore and a turnover of up to Rs. 20 crore'),
            ('C', 'An investment of up to Rs. 100 crore'),
            ('D', 'There is no limit')
           ) as v(label, option_text)
 where q.question_hash = '94b65ffd31ed3e0e7292d524c66a307c'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''National Logistics Policy'' of 2022:',
    'The National Logistics Policy of 2022 aims at reducing the logistics costs and the time and it is complemented by the PM Gati Shakti National Master Plan.',
    'medium',
    'Standard Reference',
    2022,
    'e65e3187e7c53c463adf52f82eed4dac'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e65e3187e7c53c463adf52f82eed4dac'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a shipping subsidy'),
            ('B', 'Aims at reducing the logistics costs and the time and it is complemented by the PM Gati Shakti'),
            ('C', 'It is a port act'),
            ('D', 'It is a railway policy')
           ) as v(label, option_text)
 where q.question_hash = 'e65e3187e7c53c463adf52f82eed4dac'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''ONDC'' is:',
    'The Open Network for Digital Commerce is an initiative of the Department of Promotion of Industry and Internal Trade for the interoperability and the decentralisation of the digital commerce.',
    'medium',
    'Standard Reference',
    null,
    '25da0d4d8093f8abc44938317077ed96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '25da0d4d8093f8abc44938317077ed96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A satellite navigation system'),
            ('B', 'A digital payments scheme'),
            ('C', 'An open network for the digital commerce with the interoperable protocols'),
            ('D', 'A state electricity grid')
           ) as v(label, option_text)
 where q.question_hash = '25da0d4d8093f8abc44938317077ed96'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'In the context of the India Stack, which of the following is correct?',
    'The India Stack, the digital public infrastructure of the country, rests on the Aadhaar, the UPI, the Account Aggregator and the Merchants and the Payments and the Securities Depositories.',
    'easy',
    'Standard Reference',
    null,
    'd55ed6687aabd7fe20240f96e0b0c8c4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd55ed6687aabd7fe20240f96e0b0c8c4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is only the Aadhaar'),
            ('B', 'It is only the UPI'),
            ('C', 'It is the Digital India programme'),
            ('D', 'It is the Aadhaar, the UPI, the Account Aggregator and the Merchants and the Payments and the Securities Depositories')
           ) as v(label, option_text)
 where q.question_hash = 'd55ed6687aabd7fe20240f96e0b0c8c4'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''UIDAI'' became a statutory body under:',
    'The UIDAI became a statutory body under the Aadhaar (Targeted Delivery of Benefits and Other Services) Act of 2016 and the Supreme Court upheld it in the 2018 judgment.',
    'medium',
    'Standard Reference',
    2016,
    'b61cbeb414e8eaf27a61f2debb8ee459'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b61cbeb414e8eaf27a61f2debb8ee459'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Aadhaar Act, 2016'),
            ('B', 'The IT Act, 2000'),
            ('C', 'The RTI Act, 2005'),
            ('D', 'The Digital India Act')
           ) as v(label, option_text)
 where q.question_hash = 'b61cbeb414e8eaf27a61f2debb8ee459'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Bhashini'' mission of 2022:',
    'The Bhashini mission, launched in 2022 by the MeitY, aims at the creation of the digital public infrastructure for the Indian languages with the translation, the transcription and the AI assistance.',
    'hard',
    'Standard Reference',
    2022,
    '4630803ed11375d1445747e5aae8356d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4630803ed11375d1445747e5aae8356d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a defence mission'),
            ('B', 'It is a health mission'),
            ('C', 'Is the MeitY mission to build the digital public infrastructure for the Indian languages with the AI assistance'),
            ('D', 'It is a satellite mission')
           ) as v(label, option_text)
 where q.question_hash = '4630803ed11375d1445747e5aae8356d'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Digital Krishi'' launched in 2017:',
    'The Digital Krishi, launched in 2017 and operated by the eNAM, is the digital platform that connects the farmers to the buyers and the inputs and the the advisory.',
    'hard',
    'Standard Reference',
    2017,
    '1512790335bd268970d6b8028a6ce401'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1512790335bd268970d6b8028a6ce401'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a digital payments platform'),
            ('B', 'It is a satellite navigation system'),
            ('C', 'It is a crop insurance portal'),
            ('D', 'Is the digital platform that connects the farmers to the buyers and the inputs')
           ) as v(label, option_text)
 where q.question_hash = '1512790335bd268970d6b8028a6ce401'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''IndiaAI'' mission approved in 2024:',
    'The IndiaAI Mission, approved in March 2024 with an outlay of about Rs. 10,372 crore, is the umbrella programme of the AI ecosystem with the compute, the datasets, the applications and the innovation.',
    'medium',
    'Standard Reference',
    2024,
    '52622d5801345f33066e0bebe6db8a89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '52622d5801345f33066e0bebe6db8a89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a health mission'),
            ('B', 'Has an outlay of about Rs. 10,372 crore for the compute, the datasets, the applications and the innovation'),
            ('C', 'It is a space mission'),
            ('D', 'It is a defence mission')
           ) as v(label, option_text)
 where q.question_hash = '52622d5801345f33066e0bebe6db8a89'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Sanchar'' portal of 2022:',
    'The Sanchar, the e-auction and the Sanchar portal, was launched in 2022 by the Department of Telecommunications to bring the transparency and the efficiency in the spectrum auctions.',
    'hard',
    'Standard Reference',
    2022,
    'e7009e68f8b3c6aae7c461801f2559e2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e7009e68f8b3c6aae7c461801f2559e2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the e-auction platform of the Department of Telecommunications for the spectrum'),
            ('B', 'It is a payments platform'),
            ('C', 'It is a satellite system'),
            ('D', 'It is a digital identity portal')
           ) as v(label, option_text)
 where q.question_hash = 'e7009e68f8b3c6aae7c461801f2559e2'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Commanding Heights'' of the Indian economy are:',
    'The commanding heights of the Indian economy are the agriculture and the informal sector, which together account for a large share of the GDP and of the employment, and the reforms of the 1990s did not touch them.',
    'hard',
    'Standard Reference',
    null,
    '7d1ebfe402914651274f7989f5e1a63b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7d1ebfe402914651274f7989f5e1a63b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The railways and the roads'),
            ('B', 'Agriculture and the informal sector'),
            ('C', 'The heavy industries and the banking'),
            ('D', 'The IT and the BPO')
           ) as v(label, option_text)
 where q.question_hash = '7d1ebfe402914651274f7989f5e1a63b'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Lewis'' model of the dual economy:',
    'The Lewis model of the dual economy explains how the surplus labour of the traditional sector moves to the modern sector as the wages rise, and the Kerala model of the V. R. Narayana is the Indian variant of it.',
    'hard',
    'Standard Reference',
    null,
    'a2356e4ee047f62506c48c1034b8595c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a2356e4ee047f62506c48c1034b8595c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Explains the savings'),
            ('B', 'Explains the inflation'),
            ('C', 'Explains the surplus labour moving from the traditional to the modern sector'),
            ('D', 'Explains the terms of trade')
           ) as v(label, option_text)
 where q.question_hash = 'a2356e4ee047f62506c48c1034b8595c'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Kerala model'' of development:',
    'The Kerala model, associated with the V. R. Narayana, combines the human development with the land reforms, the public health and the people''s plan of the decentralised planning.',
    'hard',
    'Standard Reference',
    null,
    'a405853b9375aad7a9efa6ec163b5218'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a405853b9375aad7a9efa6ec163b5218'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a model of the industrial liberalisation'),
            ('B', 'Is a model of the land reforms of the Punjab'),
            ('C', 'Is a model of the export promotion'),
            ('D', 'Emphasises the health, the education and the employment with the democratic decentralisation')
           ) as v(label, option_text)
 where q.question_hash = 'a405853b9375aad7a9efa6ec163b5218'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Lewis turning point'' in the Indian context:',
    'The Lewis turning point is the point at which the supply of the surplus labour is exhausted and the wages begin to rise, and it is the basis of the argument that the India is close to it.',
    'hard',
    'Standard Reference',
    null,
    '23bb47eb28becf636414cb91902f44b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '23bb47eb28becf636414cb91902f44b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the point of the full employment'),
            ('B', 'Is the point of the demographic dividend'),
            ('C', 'Is the point of the industrial take-off'),
            ('D', 'Is the point at which the surplus labour is exhausted and the wages start rising')
           ) as v(label, option_text)
 where q.question_hash = '23bb47eb28becf636414cb91902f44b3'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Harrod-Domar'' model:',
    'The Harrod-Domar model explains the growth rate of the output as the function of the savings rate and the capital productivity, and it is the basis of the planning approach of India.',
    'medium',
    'Standard Reference',
    null,
    '86df7eef252680fb918836511178b544'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '86df7eef252680fb918836511178b544'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Explains the growth rate of the output as the function of the savings and the capital productivity'),
            ('B', 'Explains the inflation'),
            ('C', 'Explains the exchange rate'),
            ('D', 'Explains the fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '86df7eef252680fb918836511178b544'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Golden Rule'' of the fiscal policy:',
    'The golden rule of the public finance says that the borrowing should be for the capital assets and not for the current consumption, and it was relaxed in India in 1991 and 2018 with the fiscal deficit definition.',
    'medium',
    'Standard Reference',
    null,
    '2ce4c17a22250ee601e525843b90b7f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ce4c17a22250ee601e525843b90b7f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A budget with the maximum revenue'),
            ('B', 'A budget with equal revenue and expenditure'),
            ('C', 'A budget in which the borrowing is for the capital assets and not for the current consumption'),
            ('D', 'A budget with no deficit')
           ) as v(label, option_text)
 where q.question_hash = '2ce4c17a22250ee601e525843b90b7f4'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following is correct in the case of the Laffer curve?',
    'The Laffer curve is the centrepiece of the supply side economics and it was the argument for the tax cuts of the 1980s in the United States.',
    'medium',
    'Standard Reference',
    null,
    '31a6aaac3891f94b0b5015ae5c812cdf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '31a6aaac3891f94b0b5015ae5c812cdf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the exchange rate argument'),
            ('B', 'Is the supply side argument of the tax cuts'),
            ('C', 'Is the demand side argument'),
            ('D', 'Is the monetary policy argument')
           ) as v(label, option_text)
 where q.question_hash = '31a6aaac3891f94b0b5015ae5c812cdf'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Hicks and the Pigou effects are:',
    'The Hicks and the Pigou effects are the income and the substitution effects of a price change and they are used to explain the backward-bending demand curve.',
    'hard',
    'Standard Reference',
    null,
    '696a191f063c77a1952a062e01d600a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '696a191f063c77a1952a062e01d600a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the monetary effect and the Pigou is the fiscal effect'),
            ('B', 'the names of the Great Depression'),
            ('C', 'the two theories of the trade'),
            ('D', 'the income and the substitution effects of a price change')
           ) as v(label, option_text)
 where q.question_hash = '696a191f063c77a1952a062e01d600a3'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Consider the following statements. Which of them is correct with regard to the Mundell?',
    'The Mundell-Fleming model analyses the open economy with the perfect capital mobility and it is the extension of the IS-LM model of the open economy.',
    'hard',
    'Standard Reference',
    null,
    '978af02fa25c39839d914ef1ba151648'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '978af02fa25c39839d914ef1ba151648'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the model of the Phillips curve'),
            ('B', 'The Mundell-Fleming model analyses the open economy with the perfect capital mobility'),
            ('C', 'It analyses the closed economy'),
            ('D', 'It is the model of the supply shocks')
           ) as v(label, option_text)
 where q.question_hash = '978af02fa25c39839d914ef1ba151648'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''IS-LM'' model:',
    'The IS-LM model analyses the simultaneous equilibrium of the goods and the money markets and it is the starting point of the macroeconomics of the Keynesian era.',
    'medium',
    'Standard Reference',
    null,
    '564d97b8731b5cf3186d1f0aa4dc2cb3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '564d97b8731b5cf3186d1f0aa4dc2cb3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Analyses the simultaneous equilibrium of the goods and the money markets'),
            ('B', 'Analyses the balance of payments'),
            ('C', 'Analyses the supply of the labour'),
            ('D', 'Analyses the growth of the capital')
           ) as v(label, option_text)
 where q.question_hash = '564d97b8731b5cf3186d1f0aa4dc2cb3'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following is correct in the case of the Phillips curve?',
    'The Phillips curve shows the inverse relation between the rate of the inflation and the rate of the unemployment, though the relationship has weakened in the recent decades.',
    'easy',
    'Standard Reference',
    null,
    'fcc3ac84b27d9bc499ffc7bce224015a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fcc3ac84b27d9bc499ffc7bce224015a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Shows the relation between the exchange rate and the trade'),
            ('B', 'Shows the relation between the saving and the income'),
            ('C', 'Shows the inverse relation between the inflation and the unemployment'),
            ('D', 'Shows the positive relation between the investment and the interest rate')
           ) as v(label, option_text)
 where q.question_hash = 'fcc3ac84b27d9bc499ffc7bce224015a'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Lucas critique is:',
    'The Lucas critique, articulated in 1976, is the criticism of the policy models that fail to account for the effect of the policy on the expectations and the behaviour of the agents.',
    'hard',
    'Standard Reference',
    null,
    '135213cf2fe76dab02e8da01d43552bd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '135213cf2fe76dab02e8da01d43552bd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the critique of the structural models'),
            ('B', 'the critique of the policy models that ignore the effect of the policy on the expectations'),
            ('C', 'the critique of the monetarism'),
            ('D', 'the critique of the fiscal policy')
           ) as v(label, option_text)
 where q.question_hash = '135213cf2fe76dab02e8da01d43552bd'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Fisher equation'' relates the:',
    'The Fisher equation says that the nominal interest rate is approximately the real interest rate plus the expected inflation, and it is the basis of the distinction between the real and the nominal rates.',
    'medium',
    'Standard Reference',
    null,
    'c859e5ade5a63f70275d833b5a9bf04b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c859e5ade5a63f70275d833b5a9bf04b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saving to the income'),
            ('B', 'Investment to the demand'),
            ('C', 'Nominal interest rate to the inflation and the real rate'),
            ('D', 'Exchange rate to the inflation')
           ) as v(label, option_text)
 where q.question_hash = 'c859e5ade5a63f70275d833b5a9bf04b'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Modigliani-Miller'' proposition:',
    'The Modigliani-Miller propositions of 1958 argue that in a perfect market without the taxes and the frictions the capital structure does not affect the value of the firm.',
    'hard',
    'Standard Reference',
    null,
    'b678dbd661a9b50fb802158f202c0203'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b678dbd661a9b50fb802158f202c0203'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'States that the monetary policy is ineffective'),
            ('B', 'States that the fiscal policy is ineffective'),
            ('C', 'States that the banks are unnecessary'),
            ('D', 'States that the capital structure does not affect the value of the firm in a perfect market')
           ) as v(label, option_text)
 where q.question_hash = 'b678dbd661a9b50fb802158f202c0203'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Gordon'' model of the dividend:',
    'The Gordon model of the dividend discount relates the price of the share to the expected dividend and the required rate of return and it is the base of the dividend discount model.',
    'hard',
    'Standard Reference',
    null,
    '5ed2be2ed18f48a5f2edd9878857209a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ed2be2ed18f48a5f2edd9878857209a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Relates the share price to the dividend and the required rate of return'),
            ('B', 'Relates the money supply to the prices'),
            ('C', 'Relates the deficit to the growth'),
            ('D', 'Relates the exports to the imports')
           ) as v(label, option_text)
 where q.question_hash = '5ed2be2ed18f48a5f2edd9878857209a'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following statements is/are correct in relation to the Baumol?',
    'The Baumol and the Tobin models of the transactions demand for the money explain the interest rate sensitivity of the demand for the money for the transactions purpose.',
    'hard',
    'Standard Reference',
    null,
    'c5d2fc21487cedaf52c3a273a8b259a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c5d2fc21487cedaf52c3a273a8b259a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the models of the balance of payments'),
            ('B', 'They are the models of the growth'),
            ('C', 'The Baumol and the Tobin models of the transactions demand for the money'),
            ('D', 'They are the models of the inflation')
           ) as v(label, option_text)
 where q.question_hash = 'c5d2fc21487cedaf52c3a273a8b259a5'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Okun''s law'' relates the:',
    'Okun''s law states that the growth of the output falls as the unemployment rises, and the coefficient is known as the Okun''s coefficient.',
    'medium',
    'Standard Reference',
    null,
    'e1231738bda4d5462a24421944922393'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e1231738bda4d5462a24421944922393'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Interest to the investment'),
            ('B', 'Change in the output to the change in the unemployment'),
            ('C', 'Inflation to the unemployment'),
            ('D', 'Saving to the income')
           ) as v(label, option_text)
 where q.question_hash = 'e1231738bda4d5462a24421944922393'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Phillips curve is:',
    'The Phillips curve represents the short run trade off between the inflation and the unemployment, a relationship that has weakened with the anchored expectations.',
    'easy',
    'Standard Reference',
    null,
    '9607d89550cac9feeb659a4c329b3d1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9607d89550cac9feeb659a4c329b3d1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the trade off between the growth and the inflation'),
            ('B', 'the relation between the saving and the investment'),
            ('C', 'the relation between the import and the export'),
            ('D', 'the trade off between the inflation and the unemployment')
           ) as v(label, option_text)
 where q.question_hash = '9607d89550cac9feeb659a4c329b3d1d'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following statements regarding the GNP is correct?',
    'The GNP at the market prices is the GDP plus the net factor income from abroad and the NNP is the GNP less the depreciation.',
    'medium',
    'Standard Reference',
    null,
    'fb5aeb97d4ca2eba38431a0f01efd66c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb5aeb97d4ca2eba38431a0f01efd66c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GNP excludes the depreciation'),
            ('B', 'The GNP is the same as the GDP'),
            ('C', 'The GNP is always higher than the GDP'),
            ('D', 'The GNP at the market prices includes the depreciation')
           ) as v(label, option_text)
 where q.question_hash = 'fb5aeb97d4ca2eba38431a0f01efd66c'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Gross Value Added'' at the basic prices:',
    'The GVA at the basic prices is the GDP less the product taxes and it is the sum of the GVA of the industries.',
    'medium',
    'Standard Reference',
    null,
    '72b9a09dd7ea5df9064a0c5f0bd70ca2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '72b9a09dd7ea5df9064a0c5f0bd70ca2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the net income of the nation'),
            ('B', 'Is the GDP less the product taxes'),
            ('C', 'Is the GDP at the factor cost'),
            ('D', 'Is the same as the GNP')
           ) as v(label, option_text)
 where q.question_hash = '72b9a09dd7ea5df9064a0c5f0bd70ca2'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following statements regarding the National Accounts is correct?',
    'The National Accounts Statistics, compiled by the Central Statistical Organisation, is the main source of the GDP and the related macro-economic data of India.',
    'easy',
    'Standard Reference',
    null,
    '504ab895a1e13343a1f897979915698f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '504ab895a1e13343a1f897979915698f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Accounts Statistics of the India is the main source of the GDP data'),
            ('B', 'It is the main source of the fiscal data'),
            ('C', 'It is the main source of the monetary data'),
            ('D', 'It is the main source of the trade data')
           ) as v(label, option_text)
 where q.question_hash = '504ab895a1e13343a1f897979915698f'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The GDP at the market prices have:',
    'The GDP at the market prices is the GVA at the basic prices plus the product taxes, and the GDP at the factor cost is the same as the GVA.',
    'medium',
    'Standard Reference',
    null,
    '2f8b027719019cd01a758306509b2bab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2f8b027719019cd01a758306509b2bab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the same as the GVA'),
            ('B', 'the sum of the net domestic product and the depreciation'),
            ('C', 'The GDP excludes the services'),
            ('D', 'the GVA plus the product taxes')
           ) as v(label, option_text)
 where q.question_hash = '2f8b027719019cd01a758306509b2bab'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The per capita income of the India is:',
    'The per capita income is calculated at the current prices and it is a poor guide to the prosperity, as the Goa and the Delhi have a high per capita income with a low growth and the Bihar has a low one.',
    'medium',
    'Standard Reference',
    null,
    '4086132ad4964d371c2044d0920c04fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4086132ad4964d371c2044d0920c04fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the same for all the states'),
            ('B', 'measured by the HDI'),
            ('C', 'calculated at the current prices and the state with the highest is not necessarily the most prosperous'),
            ('D', 'calculated at the constant prices only')
           ) as v(label, option_text)
 where q.question_hash = '4086132ad4964d371c2044d0920c04fd'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Net National Income at the factor cost'':',
    'The Net National Income at the factor cost is the sum of the factor incomes of the residents after the depreciation and it is the basis of the national income accounting.',
    'hard',
    'Standard Reference',
    null,
    'a161b2feabefc9efe3ff1e0448a446b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a161b2feabefc9efe3ff1e0448a446b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the NNP at the factor cost and it is the sum of the incomes of the residents'),
            ('B', 'It is the same as the GDP'),
            ('C', 'It is the total of the exports'),
            ('D', 'It is the total of the government revenue')
           ) as v(label, option_text)
 where q.question_hash = 'a161b2feabefc9efe3ff1e0448a446b3'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Discrepancy'' between the two approaches of the national income:',
    'The discrepancy between the income and the production estimates of the national income is an unavoidable statistical discrepancy in the national accounts.',
    'hard',
    'Standard Reference',
    null,
    '5bc8c458949f28d9ab0ed06a99236917'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5bc8c458949f28d9ab0ed06a99236917'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the balance of payments'),
            ('B', 'Is the difference between the income and the production estimates'),
            ('C', 'Is the profit of the corporate sector'),
            ('D', 'Is the fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '5bc8c458949f28d9ab0ed06a99236917'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The primary data of the National Accounts comes:',
    'The primary data for the national accounts comes from the administrative records of the government and from the surveys of the NSS and the departments.',
    'medium',
    'Standard Reference',
    null,
    'd8740e73437fde9fa6668fac31e4b774'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8740e73437fde9fa6668fac31e4b774'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only from the surveys'),
            ('B', 'only from the budget'),
            ('C', 'from the RBI'),
            ('D', 'from the administrative records and the surveys')
           ) as v(label, option_text)
 where q.question_hash = 'd8740e73437fde9fa6668fac31e4b774'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The non-institutional sector of the Indian economy is:',
    'The non-institutional or the unorganised sector, with the small and the marginal enterprises, is the largest employer of India with over 80 per cent of the workforce.',
    'medium',
    'Standard Reference',
    null,
    'f156528af097c28dd0bf5e72ec8c5b81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f156528af097c28dd0bf5e72ec8c5b81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the largest source of the exports'),
            ('B', 'the smallest sector of the economy'),
            ('C', 'the largest employer'),
            ('D', 'the largest producer of the goods')
           ) as v(label, option_text)
 where q.question_hash = 'f156528af097c28dd0bf5e72ec8c5b81'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The fixed costs do not vary with the output and the sunk costs are:',
    'The fixed costs, like the rent and the insurance, do not vary with the output and the sunk costs are the past expenditures that cannot be recovered by any future action.',
    'easy',
    'Standard Reference',
    null,
    'd0c401a6315ea6019d5650856cd077e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0c401a6315ea6019d5650856cd077e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no difference'),
            ('B', 'the costs already incurred'),
            ('C', 'The fixed costs vary with the output'),
            ('D', 'the future costs')
           ) as v(label, option_text)
 where q.question_hash = 'd0c401a6315ea6019d5650856cd077e3'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Gresham''s law'' states that:',
    'Gresham''s law states that the bad money drives out the good money from the circulation, and it is the reason for the currency redesign in the India.',
    'medium',
    'Standard Reference',
    null,
    '5c9d58ef0a0f8965a679ea92eda19553'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5c9d58ef0a0f8965a679ea92eda19553'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Good money drives out bad'),
            ('B', 'The money supply must be constant'),
            ('C', 'The exchange rate must be fixed'),
            ('D', 'Bad money drives out good money from the circulation')
           ) as v(label, option_text)
 where q.question_hash = '5c9d58ef0a0f8965a679ea92eda19553'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Consider the following statements. Which of them is correct with regard to the Bimetallism?',
    'The bimetallism, with the gold and the silver as the money standard, was abandoned by the Indian coinage Act of 1893 in favour of the gold standard.',
    'medium',
    'Standard Reference',
    null,
    '93c6625d024f7692532de2deaa7b0f90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '93c6625d024f7692532de2deaa7b0f90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the system of the paper money'),
            ('B', 'Is the system of the multiple exchange rates'),
            ('C', 'Is the system of the two metals as the money standard and it was abandoned by the India in 1893'),
            ('D', 'Is the system of the two currencies in the foreign exchange market')
           ) as v(label, option_text)
 where q.question_hash = '93c6625d024f7692532de2deaa7b0f90'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is correct in the case of the Currency?',
    'The Reserve Bank of India has the sole authority to issue the bank notes in India and it issues the notes of the denominations of one rupee and above.',
    'easy',
    'Standard Reference',
    null,
    '232f9ed0409272b93a7730df46978d24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '232f9ed0409272b93a7730df46978d24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Reserve Bank of India has the sole authority to issue the bank notes in India'),
            ('B', 'The government issues the bank notes'),
            ('C', 'The public can issue the notes'),
            ('D', 'The RBI issues the coins')
           ) as v(label, option_text)
 where q.question_hash = '232f9ed0409272b93a7730df46978d24'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'In the context of the NCNB, which of the following is correct?',
    'The Reserve Bank of India Act of 1934 nationalised the Imperial Bank of India and the note issuing functions of the provincial banks and it also provided for the establishment of the RBI.',
    'hard',
    'Standard Reference',
    null,
    '34866764c7169fba0fd94c12fa4b27fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '34866764c7169fba0fd94c12fa4b27fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a new bank'),
            ('B', 'It is the nationalisation of the insurance'),
            ('C', 'The Nationalisation of the banks by the RBI Act of 1934 is the NCBN'),
            ('D', 'It is a currency swap')
           ) as v(label, option_text)
 where q.question_hash = '34866764c7169fba0fd94c12fa4b27fd'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following statements regarding the Banking is correct?',
    'The Banking (Commercial Banks and the Denominations) Act of 1955, with the Deshmukh, made the 14 banks with the deposits of over Rs. 50 lakh the property of the state.',
    'medium',
    'Standard Reference',
    null,
    '04809adc872f5080c45ea3836867a41e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '04809adc872f5080c45ea3836867a41e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It nationalised the cooperative banks'),
            ('B', 'The Bank Nationalisation Act of 1955 nationalised the banks with the deposits of over Rs. 50 lakh'),
            ('C', 'It nationalised the SBI'),
            ('D', 'It was of 1955 for the insurance')
           ) as v(label, option_text)
 where q.question_hash = '04809adc872f5080c45ea3836867a41e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The SBI was constituted:',
    'The State Bank of India was constituted in July 1955 under the SBI Act of 1955 as the successor of the Imperial Bank of India.',
    'easy',
    'Standard Reference',
    null,
    'd1aa7b839bc587d22ed3a6e039d5eed0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd1aa7b839bc587d22ed3a6e039d5eed0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in 1949'),
            ('B', 'in 1906'),
            ('C', 'the first of the nationalised banks'),
            ('D', 'in 1955 as the successor of the Imperial Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'd1aa7b839bc587d22ed3a6e039d5eed0'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Which of the following is correct in the case of the NABARD?',
    'The NABARD was set up on 12 July 1982 on the recommendation of the Sivaraman Committee as the apex institution for the agriculture and the rural development.',
    'medium',
    'Standard Reference',
    null,
    '7a6069392b0ff9e2934a1afcc9bb42ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7a6069392b0ff9e2934a1afcc9bb42ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NABARD was set up in 1982 on the recommendation of the Sivaraman Committee'),
            ('B', 'It was set up in 1954'),
            ('C', 'It was set up in 1969'),
            ('D', 'It is a commercial bank')
           ) as v(label, option_text)
 where q.question_hash = '7a6069392b0ff9e2934a1afcc9bb42ad'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The SIDBI is the principal financial institution for the MSME sector and it was set:',
    'The SIDBI, the Small Industries Development Bank of India, is the principal financial institution for the MSME sector and it was set up in 1990.',
    'medium',
    'Standard Reference',
    null,
    '8d165ef1f7d6c255e7b941daa3b2bd4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8d165ef1f7d6c255e7b941daa3b2bd4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'up in 1969'),
            ('B', 'the apex of the cooperatives'),
            ('C', 'a private bank'),
            ('D', 'up in 1990')
           ) as v(label, option_text)
 where q.question_hash = '8d165ef1f7d6c255e7b941daa3b2bd4d'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The EXIM Bank was:',
    'The EXIM Bank of India was set up in 1982 to provide the financing for the exports, the imports and the infrastructure and the developmental activities.',
    'medium',
    'Standard Reference',
    null,
    '3e72271e06734c0456458c315e833046'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e72271e06734c0456458c315e833046'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'set up in 1991'),
            ('B', 'a private bank'),
            ('C', 'set up in 1982 to finance the exports and the imports'),
            ('D', 'set up in 1954')
           ) as v(label, option_text)
 where q.question_hash = '3e72271e06734c0456458c315e833046'
on conflict (question_id, label) do nothing;

commit;
