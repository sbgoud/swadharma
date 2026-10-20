-- =============================================================================
-- economy_05.sql — economy question pack, part 05
-- 14 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Contract farming'' under the Model Agricultural Produce Market Contract Act, 2020:',
    'The Model Act provides for the freedom to sell to any person including the trader, the wholesaler, the retailer, the exporter and the consumer, and it allows the multi-season contracts with the sowing of the seed by the farmer.',
    'easy',
    'Standard Reference',
    null,
    'd1a6378aa3bc7ead67b68cc1c11fd57d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd1a6378aa3bc7ead67b68cc1c11fd57d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'requires the registration of every contract with the state'),
            ('B', 'bans the multi-season contracts'),
            ('C', 'permits the producer to sell to any person including the trader, the wholesaler and the retailer'),
            ('D', 'allows the buyer to purchase only from the mandi')
           ) as v(label, option_text)
 where q.question_hash = 'd1a6378aa3bc7ead67b68cc1c11fd57d'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Food Corporation of India'' procures the foodgrains for the:',
    'The FCI procures the foodgrains from the farmers for the central pool and the public distribution and the other welfare schemes, and it also undertakes the storage, the transportation and the distribution.',
    'hard',
    'Standard Reference',
    null,
    'aef6d32af5443e54fd5cd7b27d5ac668'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aef6d32af5443e54fd5cd7b27d5ac668'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the seeds and the fertilisers of the States'),
            ('B', 'the procurement of the sugarcane of the mills'),
            ('C', 'the export of the rice and the wheat only'),
            ('D', 'the central pool and the distribution under the Public Distribution System')
           ) as v(label, option_text)
 where q.question_hash = 'aef6d32af5443e54fd5cd7b27d5ac668'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Export-Import Bank of India'' finances the exports and the imports of:',
    'The EXIM Bank provides the financing for the Indian importers of the capital goods and for the buyers of the Indian goods abroad, and it offers the buyer''s credit, the supplier''s credit and the lines of credit for the countries.',
    'medium',
    'Standard Reference',
    null,
    '80dcc4a936e40073c70aa8470df9ee0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '80dcc4a936e40073c70aa8470df9ee0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Indian buyers and the buyers of the Indian goods abroad'),
            ('B', 'the state trading corporations'),
            ('C', 'only the central government'),
            ('D', 'the overseas subsidiaries of the Indian companies')
           ) as v(label, option_text)
 where q.question_hash = '80dcc4a936e40073c70aa8470df9ee0b'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Forward Contract'' in the foreign exchange market:',
    'A forward contract is an agreement to buy or sell a currency at a fixed rate on a future date with the obligation to deliver the currency on that date, and it is used for the hedging of the exposure to the exchange rate.',
    'medium',
    'Standard Reference',
    null,
    '18dea35e598fde79c0bf3febcba1f8aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '18dea35e598fde79c0bf3febcba1f8aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is a contract with the central bank for the purchase of the foreign currency'),
            ('B', 'fixes the rate of exchange for a future date with an obligation to deliver the currency'),
            ('C', 'is a spot purchase of the currency for immediate settlement'),
            ('D', 'is an unconditional option to buy the currency at a future date')
           ) as v(label, option_text)
 where q.question_hash = '18dea35e598fde79c0bf3febcba1f8aa'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Interest rate differential'' between India and the United States affects the:',
    'A wide interest rate differential in favour of the United States pulls the short term portfolio capital towards the dollar assets and puts a pressure on the rupee, and the carry trade in the forex market is based on this differential.',
    'medium',
    'Standard Reference',
    null,
    'b2fc8295e6e08fa72a08a2e08031ce4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b2fc8295e6e08fa72a08a2e08031ce4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fiscal deficit of the States'),
            ('B', 'the rate of the domestic inflation directly'),
            ('C', 'the flow of the short term portfolio capital and the pressure on the rupee'),
            ('D', 'the volume of the sea trade only')
           ) as v(label, option_text)
 where q.question_hash = 'b2fc8295e6e08fa72a08a2e08031ce4a'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Trade in Services'' in India''s Balance of Payments includes:',
    'The services trade covers the travel, the transportation, the financial, the computer and the information, the communication, the construction and the business services, and the net exports of the services are a large contributor to the current account surplus of the country.',
    'medium',
    'RBI',
    null,
    '8c5144e0f8eefab12b8cdfab465da34d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8c5144e0f8eefab12b8cdfab465da34d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only the tourism and the pilgrimage receipts'),
            ('B', 'travel, transportation, financial, computer, communication, construction and the business services'),
            ('C', 'the freight and the insurance premiums alone'),
            ('D', 'the software exports and the tele services only')
           ) as v(label, option_text)
 where q.question_hash = '8c5144e0f8eefab12b8cdfab465da34d'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'the inflation of the current period is:',
    'The base effect arises when the price level of the corresponding month of the previous year is unusually high or low, and it mechanically influences the year on year inflation of the current period.',
    'hard',
    'RBI',
    null,
    '7f67c69a83d9e70b328e82d02c9d96b6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7f67c69a83d9e70b328e82d02c9d96b6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the inflation is calculated only from the food prices'),
            ('B', 'the inflation is measured from the base year prices only'),
            ('C', 'the price indices of the base year are revised every year'),
            ('D', 'the inflation of the current period is partly a carry over of the price level of the corresponding period of the previous year')
           ) as v(label, option_text)
 where q.question_hash = '7f67c69a83d9e70b328e82d02c9d96b6'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''Weighted median inflation'' used by the RBI:',
    'The weighted median inflation gives a higher weight to the items of the consumption basket of the poorer households, and it is used along with the headline CPI as a measure of the inflation that affects the vulnerable.',
    'medium',
    'RBI',
    null,
    '72ad692c4714d66c0633c3499f0efffe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72ad692c4714d66c0633c3499f0efffe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'gives more weight to the items of the household consumption of the poorer sections, so that the inflation of the vulnerable is captured'),
            ('B', 'is the average of the CPI and the WPI'),
            ('C', 'excludes the food prices from the computation'),
            ('D', 'is the inflation measure of the corporate sector')
           ) as v(label, option_text)
 where q.question_hash = '72ad692c4714d66c0633c3499f0efffe'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''Supply inflation'' in India is largely caused by:',
    'The food and the fuel components dominate the weights of the CPI in India, and the supply side disruptions of the pandemic and of the global edible oil and the fertiliser prices drove the supply inflation.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '12bbd1dd8d4ed3360cce3c387d601371'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '12bbd1dd8d4ed3360cce3c387d601371'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the fiscal deficit of the States'),
            ('B', 'the food and the fuel prices and the supply chain constraints'),
            ('C', 'the excess demand in the economy'),
            ('D', 'the expansion of the money supply alone')
           ) as v(label, option_text)
 where q.question_hash = '12bbd1dd8d4ed3360cce3c387d601371'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The ''Core inflation'' in the Indian context excludes:',
    'The core inflation is the inflation of the CPI excluding the food and the fuel, and it is used to gauge the underlying trend of the demand driven price pressures.',
    'medium',
    'RBI',
    null,
    'f6220d669d06dc045e315986c7fa71a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f6220d669d06dc045e315986c7fa71a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the manufactured goods prices'),
            ('B', 'the housing component of the CPI'),
            ('C', 'the services prices only'),
            ('D', 'the food and the fuel components from the CPI')
           ) as v(label, option_text)
 where q.question_hash = 'f6220d669d06dc045e315986c7fa71a9'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''multidimensional poverty in India is measured by:',
    'The Indian multidimensional poverty index uses the three dimensions of the health, the education and the living standards with the ten indicators, and a household is multidimensionally poor when at least one of the three dimensions is deficient.',
    'medium',
    'NITI Aayog',
    null,
    'db234ad0e239c51ebc5e1c7af7d89273'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'db234ad0e239c51ebc5e1c7af7d89273'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the calorie consumption of the rural households only'),
            ('B', 'the income of the top ten per cent of the population'),
            ('C', 'the three dimensions of the health, the education and the living standards with the ten indicators'),
            ('D', 'the per capita income of the States')
           ) as v(label, option_text)
 where q.question_hash = 'db234ad0e239c51ebc5e1c7af7d89273'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Code on Social Security, 2020'' provides for the gig workers the:',
    'The Code on Social Security provides the life and disability cover, the accident insurance and the health and the maternity benefit for the gig and the platform workers with a shared contribution from the platform, the aggregator and the worker.',
    'easy',
    'Standard Reference',
    null,
    'e78f961b90bd3da9242b1a28acab4a62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e78f961b90bd3da9242b1a28acab4a62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'life and disability cover, accident insurance and the health and the maternity benefit with the contribution of the platform and the worker'),
            ('B', 'a statutory minimum wage fixed by the Centre'),
            ('C', 'a provident fund cover that is compulsory for every platform worker'),
            ('D', 'a pension of Rs 3,000 to every gig worker above fifty years of age')
           ) as v(label, option_text)
 where q.question_hash = 'e78f961b90bd3da9242b1a28acab4a62'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''Periodic Labour Force Survey'' in India provides the estimates of the:',
    'The PLFS of the National Statistical Office provides the estimates of the labour force participation rate, the unemployment rate and the worker population ratio with the quarterly bulletins and the annual reports.',
    'medium',
    'MoSPI',
    null,
    'f59566f7304b011bd0ce67dcec66f9a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f59566f7304b011bd0ce67dcec66f9a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the agricultural productivity of the crops'),
            ('B', 'the wages of the unorganised sector alone'),
            ('C', 'the migration of the workers to the cities'),
            ('D', 'the labour force participation, the unemployment and the employment with the quarterly and the annual reports')
           ) as v(label, option_text)
 where q.question_hash = 'f59566f7304b011bd0ce67dcec66f9a3'
on conflict (question_id, label) do nothing;

-- economy | poverty-and-employment | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'poverty-and-employment'),
    'The ''employment in the agriculture sector'' in India:',
    'The agriculture sector continues to employ the largest number of workers in India, even though its share in the gross value added has fallen, and the disguised unemployment of the family farms is still a debated issue.',
    'medium',
    'Economic Survey 2023-24',
    null,
    '6a0c4e6c0a6a2b827a3a5e15b21caf40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6a0c4e6c0a6a2b827a3a5e15b21caf40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'is entirely covered by the organised sector employment'),
            ('B', 'is the smallest share of the workers'),
            ('C', 'still accounts for the largest share of the workers though its share in the gross value added has declined'),
            ('D', 'has ceased to be a source of the disguised unemployment')
           ) as v(label, option_text)
 where q.question_hash = '6a0c4e6c0a6a2b827a3a5e15b21caf40'
on conflict (question_id, label) do nothing;

commit;
