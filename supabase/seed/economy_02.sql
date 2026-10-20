-- =============================================================================
-- economy_02.sql — economy question pack, part 02
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''NITI Aayog'' replaced the Planning Commission in:',
    'NITI Aayog was constituted on 1 January 2015 to replace the Planning Commission.',
    'easy',
    'Standard Reference',
    null,
    '849ca0b80d44bffea8dd45ffd0f8d3f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '849ca0b80d44bffea8dd45ffd0f8d3f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2018'),
            ('C', '2014'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '849ca0b80d44bffea8dd45ffd0f8d3f3'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The concept of ''Basic Needs'' was given by:',
    'Manfred Max-Neef put forward the concept of basic needs and the need satisfaction approach to human development.',
    'hard',
    'Standard Reference',
    null,
    'ecada4f2a8441995992cdaf1cb550db6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ecada4f2a8441995992cdaf1cb550db6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adam Smith'),
            ('B', 'P.C. Mahalanobis'),
            ('C', 'Manfred Max-Neef'),
            ('D', 'Amartya Sen')
           ) as v(label, option_text)
 where q.question_hash = 'ecada4f2a8441995992cdaf1cb550db6'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    '''Capability approach'' to development is associated with:',
    'Amartya Sen''s capability approach measures development by the substantive freedoms people enjoy rather than by income or goods alone.',
    'medium',
    'Standard Reference',
    null,
    '37a12069d3d140bd8aa8ac8f31a543fe'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '37a12069d3d140bd8aa8ac8f31a543fe'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adam Smith'),
            ('B', 'Karl Marx'),
            ('C', 'Friedrich Hayek'),
            ('D', 'Amartya Sen')
           ) as v(label, option_text)
 where q.question_hash = '37a12069d3d140bd8aa8ac8f31a543fe'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Basic Structure'' of the Constitution does not include:',
    'In the Minerva Mills case the Supreme Court held that the basic structure includes the supremacy of the Constitution, the rule of law, separation of powers, judicial review, federalism, secularism and the republican form of government.',
    'hard',
    'Standard Reference',
    null,
    '5d4c871a4ed765f702f8a46b83da99af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d4c871a4ed765f702f8a46b83da99af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The supremacy of Parliament'),
            ('B', 'The Republican form of government'),
            ('C', 'The rule of law'),
            ('D', 'Judicial review')
           ) as v(label, option_text)
 where q.question_hash = '5d4c871a4ed765f702f8a46b83da99af'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''National income'' at market prices includes:',
    'National income at market prices is equivalent to the gross value added at factor cost plus indirect taxes less subsidies on products.',
    'medium',
    'NCERT Class XI',
    null,
    '230b9966d28f25c88aceae57c66094d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '230b9966d28f25c88aceae57c66094d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Neither taxes nor subsidies'),
            ('B', 'Indirect taxes'),
            ('C', 'Indirect taxes less subsidies'),
            ('D', 'Direct taxes only')
           ) as v(label, option_text)
 where q.question_hash = '230b9966d28f25c88aceae57c66094d1'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Gross domestic product'' measures the value of all final goods and services produced:',
    'GDP measures production within a country''s territory, whereas GNP measures the output of its residents wherever they operate.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '88cd59f845ee5c0993322e2450af12fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '88cd59f845ee5c0993322e2450af12fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Within a country including foreign firms'' output'),
            ('B', 'Only in the manufacturing sector'),
            ('C', 'Within a country during a given period'),
            ('D', 'By nationals anywhere in a year')
           ) as v(label, option_text)
 where q.question_hash = '88cd59f845ee5c0993322e2450af12fa'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Gross national product'' differs from GDP in that GNP:',
    'GNP equals GDP plus the net factor income from abroad, so it captures the output of the country''s residents wherever they work.',
    'medium',
    'Standard Reference',
    null,
    '78fd1a545c1c0cf189a9921959dbc6f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '78fd1a545c1c0cf189a9921959dbc6f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Includes the output of residents of the country wherever they are located'),
            ('B', 'Measures only the primary sector'),
            ('C', 'Is measured at factor cost'),
            ('D', 'Excludes the output of foreign nationals')
           ) as v(label, option_text)
 where q.question_hash = '78fd1a545c1c0cf189a9921959dbc6f0'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following is NOT a component of the gross capital formation?',
    'Gross capital formation comprises gross fixed capital formation plus the change in stocks of inventories; net factor income from abroad is part of GNP, not of capital formation.',
    'medium',
    'Standard Reference',
    null,
    '9eb1af4d6fe0305c108bb8f0e8e6e500'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9eb1af4d6fe0305c108bb8f0e8e6e500'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gross fixed capital formation'),
            ('B', 'Consumption of fixed capital'),
            ('C', 'Net factor income from abroad'),
            ('D', 'Change in stocks')
           ) as v(label, option_text)
 where q.question_hash = '9eb1af4d6fe0305c108bb8f0e8e6e500'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Net national product at factor cost'' equals:',
    'NNP at factor cost is GNP at market prices less depreciation and less indirect taxes plus subsidies.',
    'hard',
    'Standard Reference',
    null,
    '006eb6e0c3506cdcc5ec5ce6e9347847'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '006eb6e0c3506cdcc5ec5ce6e9347847'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'GDP plus net factor income from abroad'),
            ('B', 'GNP minus indirect taxes'),
            ('C', 'GDP minus depreciation'),
            ('D', 'GNP at market prices less depreciation')
           ) as v(label, option_text)
 where q.question_hash = '006eb6e0c3506cdcc5ec5ce6e9347847'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''value added'' approach to national income accounting:',
    'The value added or column method of national income accounting avoids double counting by adding up the value added at each stage of production.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '4399be9661987ab4b5f3719f70a15aee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4399be9661987ab4b5f3719f70a15aee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sums the market value of all final goods'),
            ('B', 'Avoids double counting by counting the value added at each stage'),
            ('C', 'Measures the value of exports only'),
            ('D', 'Uses the income method')
           ) as v(label, option_text)
 where q.question_hash = '4399be9661987ab4b5f3719f70a15aee'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In India, the ''National Accounts Statistics'' are compiled by:',
    'The Central Statistical Organisation, under the Ministry of Statistics and Programme Implementation, compiles the National Accounts Statistics.',
    'medium',
    'Standard Reference',
    null,
    '1c5a641acc76242451b8d147818724ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1c5a641acc76242451b8d147818724ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Ministry of Finance'),
            ('B', 'The Reserve Bank of India'),
            ('C', 'The Central Statistical Organisation'),
            ('D', 'The Planning Commission')
           ) as v(label, option_text)
 where q.question_hash = '1c5a641acc76242451b8d147818724ad'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''base year'' currently used for India''s GDP is:',
    'The National Accounts Statistics in India use 2011-12 as the base year for the GDP series.',
    'medium',
    'Standard Reference',
    null,
    'a116427489c8a36e240842fa720eeec5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a116427489c8a36e240842fa720eeec5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004-05'),
            ('B', '2011-12'),
            ('C', '2012'),
            ('D', '1999-2000')
           ) as v(label, option_text)
 where q.question_hash = 'a116427489c8a36e240842fa720eeec5'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Per capita income'' is calculated by dividing the national income by:',
    'Per capita income is the average income of the population, obtained by dividing national income by the mid-year population.',
    'easy',
    'NCERT Class XI',
    null,
    '194d4f7dda24e710cdf5f28add646bd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '194d4f7dda24e710cdf5f28add646bd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The labour force'),
            ('B', 'The number of workers'),
            ('C', 'The total output'),
            ('D', 'The total population')
           ) as v(label, option_text)
 where q.question_hash = '194d4f7dda24e710cdf5f28add646bd5'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Real per capita income'' is measured in terms of:',
    'Real per capita income is measured at constant prices, which removes the effect of inflation and is used to assess the purchasing power of income over time.',
    'medium',
    'Standard Reference',
    null,
    '04642e82bcf24e6aac2143337873964b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04642e82bcf24e6aac2143337873964b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Constant prices'),
            ('B', 'Market prices'),
            ('C', 'Factor cost'),
            ('D', 'Current prices')
           ) as v(label, option_text)
 where q.question_hash = '04642e82bcf24e6aac2143337873964b'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which is NOT a measure of the cost of living in India?',
    'The Human Development Index is a composite of health, education and income and is not a measure of the cost of living.',
    'medium',
    'Standard Reference',
    null,
    '5cfa53cebe8ce72ed4a7b7bcb16a6458'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5cfa53cebe8ce72ed4a7b7bcb16a6458'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wholesale Price Index (WPI)'),
            ('B', 'Human Development Index'),
            ('C', 'Real wage index'),
            ('D', 'Consumer Price Index (CPI)')
           ) as v(label, option_text)
 where q.question_hash = '5cfa53cebe8ce72ed4a7b7bcb16a6458'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Gini coefficient'' measures:',
    'The Gini coefficient runs from zero to one, with zero indicating perfect equality and one perfect inequality of income distribution.',
    'medium',
    'Standard Reference',
    null,
    'f3981fc2060896b1d1490a8d3119fedf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f3981fc2060896b1d1490a8d3119fedf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Income inequality'),
            ('B', 'Unemployment'),
            ('C', 'Inflation'),
            ('D', 'Economic growth')
           ) as v(label, option_text)
 where q.question_hash = 'f3981fc2060896b1d1490a8d3119fedf'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Human Development Index'' was developed by:',
    'Mahbub ul Haq and Amartya Sen developed the Human Development Index, published in the UNDP''s 1990 Human Development Report.',
    'medium',
    'Standard Reference',
    null,
    'b128182f9663b77a71c85f71313542ad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b128182f9663b77a71c85f71313542ad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amartya Sen and Joseph Stiglitz'),
            ('B', 'Paul Samuelson and Robert Solow'),
            ('C', 'Friedrich Hayek and Ludwig von Mises'),
            ('D', 'Mahbub ul Haq and Amartya Sen')
           ) as v(label, option_text)
 where q.question_hash = 'b128182f9663b77a71c85f71313542ad'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Multidimensional Poverty Index'' is published by:',
    'The MPI is published jointly by the UNDP and the Oxford Poverty and Human Development Initiative with the UN Population Fund.',
    'medium',
    'Standard Reference',
    null,
    '4160e1402b1693b5b7977915cc6fa1c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4160e1402b1693b5b7977915cc6fa1c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ILO'),
            ('B', 'The World Bank'),
            ('C', 'The UNDP and the Oxford Poverty and Human Development Initiative'),
            ('D', 'The IMF')
           ) as v(label, option_text)
 where q.question_hash = '4160e1402b1693b5b7977915cc6fa1c9'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''Rangarajan Committee'' (2008) recommended a poverty line based on:',
    'The Rangarajan committee favoured state-specific poverty lines based on the median consumption expenditure, with separate rural and urban lines.',
    'hard',
    'Standard Reference',
    null,
    '5056daa5d70172ea43e00ed79a33e9a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5056daa5d70172ea43e00ed79a33e9a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A uniform all-India line'),
            ('B', 'A separate rural and urban line based on the median consumption expenditure'),
            ('C', 'A calorie norm'),
            ('D', 'The 10 per cent expenditure of the poorest')
           ) as v(label, option_text)
 where q.question_hash = '5056daa5d70172ea43e00ed79a33e9a3'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'According to the ILO, the working population is:',
    'The International Labour Organisation defines the working population, or labour force, as all persons aged 15 and above who are employed or unemployed but seeking work.',
    'medium',
    'Standard Reference',
    null,
    '323e496eef27daa7096ff0a3b9ca5e92'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '323e496eef27daa7096ff0a3b9ca5e92'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Persons below 60 years'),
            ('B', 'All persons above 15 years'),
            ('C', 'Persons of the age of 15 years and above who are employed or seeking employment'),
            ('D', 'Only the employed')
           ) as v(label, option_text)
 where q.question_hash = '323e496eef27daa7096ff0a3b9ca5e92'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Disguised unemployment'' in India means:',
    'Disguised unemployment arises when a large number of workers are engaged in agriculture in a way that their removal does not reduce output, indicating hidden surplus labour.',
    'medium',
    'NCERT Class XI',
    null,
    '81dbc0d24ac01be69863078f97d837cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '81dbc0d24ac01be69863078f97d837cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Unemployed graduates'),
            ('B', 'Seasonal farm workers'),
            ('C', 'Workers who are unemployed for a short period'),
            ('D', 'Workers who are engaged in work that does not add to output')
           ) as v(label, option_text)
 where q.question_hash = '81dbc0d24ac01be69863078f97d837cb'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    '''Seasonal unemployment'' is best illustrated by:',
    'Seasonal unemployment occurs when work is available only for part of the year, as in agriculture where labourers are employed only during sowing and harvesting.',
    'medium',
    'NCERT Class XI',
    null,
    'e8760fd6e82def28fbe1da6f93d29943'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e8760fd6e82def28fbe1da6f93d29943'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agricultural labourers working only during the harvest season'),
            ('B', 'A factory closed for a year'),
            ('C', 'A graduate who cannot find a job'),
            ('D', 'A worker who refuses to work')
           ) as v(label, option_text)
 where q.question_hash = 'e8760fd6e82def28fbe1da6f93d29943'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''ILO definition of unemployment'' was adopted in:',
    'The 19th International Conference of Labour Statisticians held in Geneva in 1982 adopted the internationally used definition of unemployment.',
    'hard',
    'Standard Reference',
    null,
    'c750da7e02d331a081947050c41984f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c750da7e02d331a081947050c41984f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1956'),
            ('B', '1982'),
            ('C', '1991'),
            ('D', '1933')
           ) as v(label, option_text)
 where q.question_hash = 'c750da7e02d331a081947050c41984f9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is a component of M1?',
    'M1 is the narrow money aggregate comprising currency with the public, demand deposits with the banking system and other deposits with the Reserve Bank of India.',
    'medium',
    'Standard Reference',
    null,
    'dd716895e6ed06c2f6f440cd7b428366'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'dd716895e6ed06c2f6f440cd7b428366'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total deposits of the public'),
            ('B', 'Time deposits with the RBI'),
            ('C', 'Currency with the public plus demand deposits and other deposits with the RBI'),
            ('D', 'Post office savings deposits')
           ) as v(label, option_text)
 where q.question_hash = 'dd716895e6ed06c2f6f440cd7b428366'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'M3 in India includes:',
    'M3, the broadest aggregate used in India, is M1 plus total time deposits with the banking system and includes net inter-bank deposits and certificates of deposits.',
    'medium',
    'Standard Reference',
    null,
    'ecd7944bc942a5c68c19cd22b3c8f11e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ecd7944bc942a5c68c19cd22b3c8f11e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M1 plus time deposits with the banking system'),
            ('B', 'M1 plus post office savings deposits'),
            ('C', 'Only currency with the public'),
            ('D', 'Total capital of the banks')
           ) as v(label, option_text)
 where q.question_hash = 'ecd7944bc942a5c68c19cd22b3c8f11e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Currency with the public'' includes:',
    'Currency with the public comprises the notes of the Reserve Bank of India and one rupee notes and coins issued by the Government of India.',
    'hard',
    'Standard Reference',
    null,
    '4551649c910e0c8e4c6b6ab8320cc900'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4551649c910e0c8e4c6b6ab8320cc900'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Coins issued by the state governments'),
            ('B', 'All the deposits of the public'),
            ('C', 'Only the notes of the RBI'),
            ('D', 'Currency notes of the RBI and one rupee coins issued by the Government of India')
           ) as v(label, option_text)
 where q.question_hash = '4551649c910e0c8e4c6b6ab8320cc900'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'repo rate allows:',
    'Under the repo facility, banks sell securities to the RBI and repurchase them later at a slightly higher rate, which is the repo rate; the reverse repo rate is charged when the RBI buys from banks.',
    'medium',
    'Standard Reference',
    null,
    '916d683d5669b1aab264c5d31b6c4ba1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '916d683d5669b1aab264c5d31b6c4ba1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Charges on short-term loans'),
            ('B', 'Charges on the overdraft facility'),
            ('C', 'Allows banks to borrow by selling securities to it'),
            ('D', 'Allows banks to lend securities to it')
           ) as v(label, option_text)
 where q.question_hash = '916d683d5669b1aab264c5d31b6c4ba1'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Marginal Standing Facility'' (formerly MSF) allows banks to:',
    'The Marginal Standing Facility allows banks to borrow overnight from the RBI by dipping into the cash reserve ratio, at a rate that is an emergency measure and normally well above the repo rate.',
    'medium',
    'Standard Reference',
    null,
    '45c6fbdc874f0608ec9625868c1881a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '45c6fbdc874f0608ec9625868c1881a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Borrow long-term from the RBI'),
            ('B', 'Lend securities to the RBI'),
            ('C', 'Access the call money market'),
            ('D', 'Borrow overnight from the RBI by dipping into the cash reserve')
           ) as v(label, option_text)
 where q.question_hash = '45c6fbdc874f0608ec9625868c1881a8'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Cash Reserve Ratio'' is maintained by banks with the RBI in the form of:',
    'CRR is maintained as cash with the Reserve Bank of India and is not available for lending, while SLR is maintained in cash, gold or approved securities.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    'eedc533f3bdf61717ffea084df2652ff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eedc533f3bdf61717ffea084df2652ff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cash and securities with the RBI'),
            ('B', 'Cash with the RBI'),
            ('C', 'Gold with the RBI'),
            ('D', 'Government securities only')
           ) as v(label, option_text)
 where q.question_hash = 'eedc533f3bdf61717ffea084df2652ff'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Statutory Liquidity Ratio'' must be maintained by banks in:',
    'SLR is maintained in cash, gold or approved securities and is meant to ensure the liquidity of the banking system and the availability of funds to the government.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    'd1a5d1c84fbe41b809787e55d1b1f2de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd1a5d1c84fbe41b809787e55d1b1f2de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gold, cash and approved securities'),
            ('B', 'Foreign reserves'),
            ('C', 'Cash with the vaults only'),
            ('D', 'Cash with the RBI')
           ) as v(label, option_text)
 where q.question_hash = 'd1a5d1c84fbe41b809787e55d1b1f2de'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''minimum CRR'' maintained by banks in India is:',
    'The minimum prescribed cash reserve ratio is 3 per cent of net demand and time liabilities, which the RBI can raise during a crisis.',
    'hard',
    'Standard Reference',
    null,
    '8bb8d47bca41ee79ae25da14abbabb2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8bb8d47bca41ee79ae25da14abbabb2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '10 per cent of NDTL'),
            ('B', '3 per cent of NDTL'),
            ('C', '4 per cent of NDTL'),
            ('D', '5 per cent of NDTL')
           ) as v(label, option_text)
 where q.question_hash = '8bb8d47bca41ee79ae25da14abbabb2e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following statements regarding the The repo rate is correct?',
    'Repo rate, CRR, SLR and open market operations are quantitative instruments, while moral suasion and direct action are qualitative instruments.',
    'easy',
    'Standard Reference',
    null,
    'fb73203276a9e6e2d9fac3511329e35f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb73203276a9e6e2d9fac3511329e35f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The repo rate'),
            ('B', 'Moral suasion'),
            ('C', 'Direct action'),
            ('D', 'Selective credit control')
           ) as v(label, option_text)
 where q.question_hash = 'fb73203276a9e6e2d9fac3511329e35f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Moral suasion'' as an instrument of monetary policy means:',
    'Moral suasion and direct action are qualitative instruments in which the RBI uses advice and directions rather than price-based or quantity-based controls.',
    'medium',
    'Standard Reference',
    null,
    '37ffc0488af36d93c21bdde1ec13316d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '37ffc0488af36d93c21bdde1ec13316d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RBI sells securities in the open market'),
            ('B', 'The RBI orders banks to lend more'),
            ('C', 'The RBI advises banks to follow its wishes'),
            ('D', 'The RBI raises the repo rate')
           ) as v(label, option_text)
 where q.question_hash = '37ffc0488af36d93c21bdde1ec13316d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'A ''non-performing asset'' in a bank is a loan where:',
    'A loan becomes a non-performing asset when the interest or principal remains overdue for more than 90 days or the borrower has defaulted and the bank doubts the recoverability of the loan.',
    'medium',
    'Standard Reference',
    null,
    'bfdde96be8af68e083d9366039a45e9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bfdde96be8af68e083d9366039a45e9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The loan is of a short duration'),
            ('B', 'The borrower is a priority sector borrower'),
            ('C', 'The interest rate is below the market rate'),
            ('D', 'The borrower has defaulted and the bank no longer considers the loan recoverable')
           ) as v(label, option_text)
 where q.question_hash = 'bfdde96be8af68e083d9366039a45e9b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Priority sector lending'' target for domestic scheduled commercial banks in India is:',
    'The overall priority sector lending target is 18 per cent of adjusted net bank credit, with sub-targets for agriculture, micro, small and medium enterprises and weaker sections.',
    'medium',
    'Standard Reference',
    null,
    'c73dc97e6946324cbfe07e4d0e9fe0f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c73dc97e6946324cbfe07e4d0e9fe0f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12 per cent of net demand and time liabilities'),
            ('B', '18 per cent of adjusted net bank credit'),
            ('C', '40 per cent of GDP'),
            ('D', '25 per cent of deposits')
           ) as v(label, option_text)
 where q.question_hash = 'c73dc97e6946324cbfe07e4d0e9fe0f5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Jan Dhan Yojana'' was launched in:',
    'Pradhan Mantri Jan Dhan Yojana was launched on 28 August 2014 with the objective of financial inclusion through a bank account for every household.',
    'easy',
    'Standard Reference',
    null,
    '36bd19828bfa587160d8c60268c7fdfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36bd19828bfa587160d8c60268c7fdfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2015'),
            ('C', '2010'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '36bd19828bfa587160d8c60268c7fdfc'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''MUDRA'' loans are provided for:',
    'PM MUDRA Yojana provides loans to micro units and small enterprises under the Shishu, Kishor and Tarun categories.',
    'easy',
    'Standard Reference',
    null,
    '58656b641a553f7ea37cef5d060b2cb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '58656b641a553f7ea37cef5d060b2cb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Export finance'),
            ('B', 'Large corporate investments'),
            ('C', 'Micro units and small enterprises'),
            ('D', 'Agriculture only')
           ) as v(label, option_text)
 where q.question_hash = '58656b641a553f7ea37cef5d060b2cb2'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''UPI'' was launched in India in:',
    'The Unified Payments Interface was launched by the National Payments Corporation of India in April 2016, built on the Immediate Payment and Settlement system.',
    'easy',
    'Standard Reference',
    null,
    '9f465b9855408e386e0d0a059cec8ad2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9f465b9855408e386e0d0a059cec8ad2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2010'),
            ('C', '2012'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '9f465b9855408e386e0d0a059cec8ad2'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is a ''settlement system'' regulated by the RBI?',
    'NEFT, RTGS, IMPS, NACH and UPI are all payment and settlement systems overseen by the Reserve Bank of India under the Payment and Settlement Systems Act, 2007.',
    'medium',
    'Standard Reference',
    null,
    '1d8f333bc1731039b2d605e0da100318'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1d8f333bc1731039b2d605e0da100318'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'RTGS'),
            ('B', 'All of these'),
            ('C', 'NEFT'),
            ('D', 'UPI')
           ) as v(label, option_text)
 where q.question_hash = '1d8f333bc1731039b2d605e0da100318'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''RTGS'' is characterised by:',
    'RTGS is a large value system with a minimum transaction size of Rs. 1 lakh and real-time gross settlement under the irrevocable finality of the Payment and Settlement Systems Act.',
    'medium',
    'Standard Reference',
    null,
    '3bc6be81356ff4e22cd73746de02a2a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3bc6be81356ff4e22cd73746de02a2a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Minimum amount of Rs. 1 lakh and settlement in real time'),
            ('B', 'Small value instant payments'),
            ('C', 'Batch processing'),
            ('D', 'Cheque clearing')
           ) as v(label, option_text)
 where q.question_hash = '3bc6be81356ff4e22cd73746de02a2a8'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Banking ombudsman'' in India was first set up in:',
    'The first banking ombudsman was appointed in 1993 under the RBI''s scheme for redressal of grievances of customers of banks, later codified in the RBI Ombudsman Scheme.',
    'hard',
    'Standard Reference',
    null,
    '09fd38b7719b55dc110fb54e4c848e14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '09fd38b7719b55dc110fb54e4c848e14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2006'),
            ('B', '2002'),
            ('C', '1993'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = '09fd38b7719b55dc110fb54e4c848e14'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Basel norms'' are issued by:',
    'The Basel Committee on Banking Supervision, hosted by the Bank for International Settlements at Basel, issues the capital adequacy norms that apply to Indian banks through the RBI''s master directions.',
    'medium',
    'Standard Reference',
    null,
    '8d0fb580a6de8992eb2460c9405c53c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8d0fb580a6de8992eb2460c9405c53c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The IMF'),
            ('B', 'The World Trade Organization'),
            ('C', 'The World Bank'),
            ('D', 'The Basel Committee on Banking Supervision')
           ) as v(label, option_text)
 where q.question_hash = '8d0fb580a6de8992eb2460c9405c53c9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Capital Adequacy Ratio'' under the Basel norms is:',
    'The capital adequacy ratio measures Tier I and Tier II capital as a proportion of risk weighted assets, with a minimum prescribed by the RBI.',
    'medium',
    'Standard Reference',
    null,
    '5eb551a7c3e71e8ee67b110e08f7dd4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5eb551a7c3e71e8ee67b110e08f7dd4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total assets divided by total deposits'),
            ('B', 'Capital to risk weighted assets'),
            ('C', 'Deposits to total assets'),
            ('D', 'Profit to capital')
           ) as v(label, option_text)
 where q.question_hash = '5eb551a7c3e71e8ee67b110e08f7dd4a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'A ''NBFC'' in India:',
    'Non-banking financial companies cannot accept demand deposits and other deposits repayable on demand, and they are registered with the RBI.',
    'medium',
    'Standard Reference',
    null,
    'cb949497b11e5bfd194d29fc85361d39'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cb949497b11e5bfd194d29fc85361d39'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a scheduled commercial bank'),
            ('B', 'Is regulated by SEBI alone'),
            ('C', 'Can accept deposits from the public'),
            ('D', 'Cannot accept demand deposits and deposits repayable on demand')
           ) as v(label, option_text)
 where q.question_hash = 'cb949497b11e5bfd194d29fc85361d39'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RBI''s Monetary Policy Committee'' has how many members?',
    'The MPC has six members: three from the RBI including the Governor who has a casting vote, and three appointed by the Central Government.',
    'medium',
    'Standard Reference',
    null,
    'c78b7fb2f209b9b30ba3e649df6e169a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c78b7fb2f209b9b30ba3e649df6e169a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6'),
            ('B', '7'),
            ('C', '4'),
            ('D', '5')
           ) as v(label, option_text)
 where q.question_hash = 'c78b7fb2f209b9b30ba3e649df6e169a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Inflation target'' of the RBI in terms of headline CPI is:',
    'Under the inflation targeting framework, the RBI is to maintain headline consumer price inflation at 4 per cent with an upper and lower tolerance band of 2 and 6 per cent.',
    'medium',
    'Standard Reference',
    null,
    '6b54d4e5127064290287c82666a3e2ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b54d4e5127064290287c82666a3e2ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 per cent with a 3-7 per cent band'),
            ('B', '2 per cent with a 2-4 per cent band'),
            ('C', '4 per cent with a 2-6 per cent band'),
            ('D', '6 per cent with a 4-8 per cent band')
           ) as v(label, option_text)
 where q.question_hash = '6b54d4e5127064290287c82666a3e2ee'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Wholesale Price Index'' in India measures:',
    'The WPI measures the price of commodities at the wholesale level and is used to deflate the GDP, while the CPI measures retail prices of consumer goods and services.',
    'medium',
    'Standard Reference',
    null,
    'ba4370887c7695f9a96fa17c3f27ad13'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ba4370887c7695f9a96fa17c3f27ad13'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Prices of consumer goods at retail'),
            ('B', 'Prices of commodities at wholesale level'),
            ('C', 'Prices of services'),
            ('D', 'The cost of living of workers')
           ) as v(label, option_text)
 where q.question_hash = 'ba4370887c7695f9a96fa17c3f27ad13'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Headline inflation'' in India refers to:',
    'Headline inflation is measured by the Consumer Price Index (Combined) of rural and urban sectors, while the RBI also tracks core inflation which excludes food, fuel and light.',
    'hard',
    'Standard Reference',
    null,
    'fe64273adc0fde75f09c16d3a1966415'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fe64273adc0fde75f09c16d3a1966415'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The inflation measured by the CPI for combined rural and urban sectors'),
            ('B', 'The inflation in core items only'),
            ('C', 'The inflation in the wholesale prices only'),
            ('D', 'The inflation in food and fuel alone')
           ) as v(label, option_text)
 where q.question_hash = 'fe64273adc0fde75f09c16d3a1966415'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Core inflation'' in India is measured by excluding:',
    'Core inflation excludes food, fuel and light, which together account for a large part of the weight of the CPI and are volatile.',
    'medium',
    'Standard Reference',
    null,
    'acc0dd84c57de3d7297fb5b34447b38a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'acc0dd84c57de3d7297fb5b34447b38a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Clothing and housing'),
            ('B', 'Transport'),
            ('C', 'Services'),
            ('D', 'Food, fuel and light')
           ) as v(label, option_text)
 where q.question_hash = 'acc0dd84c57de3d7297fb5b34447b38a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Phillips curve'' shows the relationship between:',
    'The Phillips curve posits an inverse relationship between the rate of inflation and the rate of unemployment, which has weakened over time.',
    'easy',
    'Standard Reference',
    null,
    '0eae27138cfcd8ccfb696a3ee8cc3f6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0eae27138cfcd8ccfb696a3ee8cc3f6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Exports and imports'),
            ('B', 'Money supply and credit'),
            ('C', 'Inflation and unemployment'),
            ('D', 'Investment and savings')
           ) as v(label, option_text)
 where q.question_hash = '0eae27138cfcd8ccfb696a3ee8cc3f6c'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Cost-push inflation'' is caused by:',
    'Cost-push inflation arises from rising production costs, for example because of wage increases or an increase in the price of imported inputs.',
    'medium',
    'Standard Reference',
    null,
    '5e354e00262dec6c33d460b7b9a6647a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5e354e00262dec6c33d460b7b9a6647a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A fall in the exchange rate'),
            ('B', 'An increase in aggregate demand'),
            ('C', 'A rise in input costs such as wages or oil prices'),
            ('D', 'An increase in the money supply')
           ) as v(label, option_text)
 where q.question_hash = '5e354e00262dec6c33d460b7b9a6647a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Demand-pull inflation'' results from:',
    'Demand-pull inflation occurs when aggregate demand grows faster than the economy''s capacity to produce, pulling prices upward.',
    'medium',
    'Standard Reference',
    null,
    '186c5693926d16a6ec69fed9ded08c50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '186c5693926d16a6ec69fed9ded08c50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An increase in aggregate demand beyond the capacity of the economy'),
            ('B', 'A rise in the price of oil'),
            ('C', 'A contraction in the money supply'),
            ('D', 'A fall in productivity')
           ) as v(label, option_text)
 where q.question_hash = '186c5693926d16a6ec69fed9ded08c50'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Stagflation'' refers to a situation of:',
    'Stagflation combines stagnation in output with high inflation, which is difficult to remedy with conventional demand management policies.',
    'medium',
    'Standard Reference',
    null,
    'c2586460c0852c77db17623505225d40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c2586460c0852c77db17623505225d40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High growth with falling prices'),
            ('B', 'High inflation and low growth with high unemployment'),
            ('C', 'Low inflation and high growth'),
            ('D', 'Deflation with high growth')
           ) as v(label, option_text)
 where q.question_hash = 'c2586460c0852c77db17623505225d40'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Deflation'' is a situation of:',
    'Deflation is a sustained fall in the general price level, which increases the real burden of debt and can lead to a deflationary spiral.',
    'easy',
    'Standard Reference',
    null,
    '61870bf28a716ea2e08392dc3c72610b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '61870bf28a716ea2e08392dc3c72610b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A rise in the price of food only'),
            ('B', 'High inflation with growth'),
            ('C', 'A fall in unemployment'),
            ('D', 'A sustained fall in the general price level')
           ) as v(label, option_text)
 where q.question_hash = '61870bf28a716ea2e08392dc3c72610b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The base year currently used for India''s CPI is:',
    'The CPI series of the Central Statistical Organisation uses 2012 as the base year, revised from 2010.',
    'medium',
    'Standard Reference',
    null,
    '8c61d770367bec2feb91feac1ecd8cb2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8c61d770367bec2feb91feac1ecd8cb2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2011-12'),
            ('C', '2004-05'),
            ('D', '2013-14')
           ) as v(label, option_text)
 where q.question_hash = '8c61d770367bec2feb91feac1ecd8cb2'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is a component of the ''Fuel and light'' group in the CPI?',
    'The fuel and light group in the CPI includes LPG, kerosene, diesel, electricity and firewood, which are administered or import dependent prices.',
    'medium',
    'Standard Reference',
    null,
    '757b157b70a00baf065c90d91ce8c3e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '757b157b70a00baf065c90d91ce8c3e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Housing and rent'),
            ('B', 'LPG and kerosene'),
            ('C', 'Wheat and rice'),
            ('D', 'Clothing and footwear')
           ) as v(label, option_text)
 where q.question_hash = '757b157b70a00baf065c90d91ce8c3e4'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Deflationary spiral'' occurs when:',
    'When consumers postpone purchases in expectation of lower prices, demand falls and prices fall further, creating a deflationary spiral.',
    'hard',
    'Standard Reference',
    null,
    '2c2b68aaf817586e82fdefa5acae09de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2c2b68aaf817586e82fdefa5acae09de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Unemployment falls'),
            ('B', 'Interest rates rise sharply'),
            ('C', 'Prices rise and output expands'),
            ('D', 'Falling prices lead to delayed spending and further price declines')
           ) as v(label, option_text)
 where q.question_hash = '2c2b68aaf817586e82fdefa5acae09de'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Index of Industrial Production'' in India is released by:',
    'The Index of Industrial Production is released by the Central Statistical Organisation and measures the quantum of production in the factory sector.',
    'medium',
    'Standard Reference',
    null,
    '4c3d43b77e23dd2754f8a39ee7ecdca0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4c3d43b77e23dd2754f8a39ee7ecdca0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Planning Commission'),
            ('B', 'The RBI'),
            ('C', 'The Central Statistical Organisation'),
            ('D', 'The Ministry of Commerce')
           ) as v(label, option_text)
 where q.question_hash = '4c3d43b77e23dd2754f8a39ee7ecdca0'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Purchasing Managers'' Index (PMI)'' in India is compiled by:',
    'The HSBC India Manufacturing PMI, compiled with S&P Global, is a monthly survey-based indicator of the manufacturing sector''s performance.',
    'hard',
    'Standard Reference',
    null,
    '50d234da5dad1d6dcc0835900034618e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '50d234da5dad1d6dcc0835900034618e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CSO'),
            ('B', 'The NITI Aayog'),
            ('C', 'The RBI'),
            ('D', 'The S&P Global and the HSBC India Manufacturing PMI')
           ) as v(label, option_text)
 where q.question_hash = '50d234da5dad1d6dcc0835900034618e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Wholesale Price Index'' serves as a deflator of:',
    'The WPI is used to deflate the nominal GDP to obtain the GDP at constant prices, as it measures the price of commodities at the wholesale level.',
    'hard',
    'Standard Reference',
    null,
    'a1a6be441d00717e868acfaa40976c11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a1a6be441d00717e868acfaa40976c11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The money supply'),
            ('B', 'The revenue expenditure of the government'),
            ('C', 'The GDP at current prices'),
            ('D', 'The fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = 'a1a6be441d00717e868acfaa40976c11'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''fiscal deficit'' of the government is best defined as:',
    'The fiscal deficit is the total expenditure of the government minus its total receipts excluding borrowings, and it indicates the government''s total borrowing requirement.',
    'medium',
    'Standard Reference',
    null,
    '9ed5f563773cc26b3481bdc4ec168f20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ed5f563773cc26b3481bdc4ec168f20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total expenditure minus total receipts'),
            ('B', 'Total expenditure minus revenue receipts'),
            ('C', 'Revenue expenditure minus revenue receipts'),
            ('D', 'Capital expenditure minus borrowings')
           ) as v(label, option_text)
 where q.question_hash = '9ed5f563773cc26b3481bdc4ec168f20'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Primary deficit'' is the fiscal deficit minus:',
    'The primary deficit is the fiscal deficit less interest payments, and it shows the government''s current fiscal stance excluding the cost of past borrowing.',
    'medium',
    'Standard Reference',
    null,
    '852429d710019c7a051b3a6de5b81bca'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '852429d710019c7a051b3a6de5b81bca'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Interest payments'),
            ('B', 'Capital expenditure'),
            ('C', 'Revenue expenditure'),
            ('D', 'Subsidies')
           ) as v(label, option_text)
 where q.question_hash = '852429d710019c7a051b3a6de5b81bca'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Revenue deficit'' is:',
    'The revenue deficit is the excess of revenue expenditure over revenue receipts, indicating that the government is borrowing to meet current rather than capital needs.',
    'medium',
    'Standard Reference',
    null,
    '29dcee0fc20def299fcb66079c1caaed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '29dcee0fc20def299fcb66079c1caaed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Revenue expenditure minus revenue receipts'),
            ('B', 'Fiscal deficit minus capital expenditure'),
            ('C', 'Total borrowings minus repayments'),
            ('D', 'Total expenditure minus total receipts excluding borrowings')
           ) as v(label, option_text)
 where q.question_hash = '29dcee0fc20def299fcb66079c1caaed'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''FRBM Act'' came into force in:',
    'The Fiscal Responsibility and Budget Management Act, 2003, which came into force in 2004, provided for a framework of fiscal discipline and a medium-term fiscal policy statement.',
    'medium',
    'Standard Reference',
    null,
    '363378edaf2f88303142ca061f1fb73c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '363378edaf2f88303142ca061f1fb73c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2000'),
            ('C', '2003'),
            ('D', '2006')
           ) as v(label, option_text)
 where q.question_hash = '363378edaf2f88303142ca061f1fb73c'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the FRBM Act, the fiscal deficit is expressed as a percentage of:',
    'The fiscal deficit is expressed as a percentage of the gross domestic product at market prices, and the 2018 amendment set a target of 3 per cent.',
    'medium',
    'Standard Reference',
    null,
    'c01d267e362f58f5634309fcd5b8ed8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c01d267e362f58f5634309fcd5b8ed8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'GDP at factor cost'),
            ('B', 'Revenue receipts'),
            ('C', 'Total expenditure'),
            ('D', 'GDP at market prices')
           ) as v(label, option_text)
 where q.question_hash = 'c01d267e362f58f5634309fcd5b8ed8b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Laffer curve'' shows that:',
    'The Laffer curve suggests an inverted-U relationship between tax rates and tax revenue, with revenue maximising at an intermediate rate.',
    'hard',
    'Standard Reference',
    null,
    '501dfe202509e02125af163011d52d4b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '501dfe202509e02125af163011d52d4b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Higher taxes always raise revenue'),
            ('B', 'Tax revenue rises and then falls as the tax rate rises'),
            ('C', 'Inflation reduces tax revenue'),
            ('D', 'Budget deficits are always inflationary')
           ) as v(label, option_text)
 where q.question_hash = '501dfe202509e02125af163011d52d4b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is a ''revenue expenditure'' of the government?',
    'Salaries, pensions, interest payments and subsidies are revenue expenditures, while building a school or buying machinery are capital expenditures.',
    'easy',
    'Standard Reference',
    null,
    '99b35f7fe4cf38ef7678a601140763e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '99b35f7fe4cf38ef7678a601140763e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Loan repayment'),
            ('B', 'Purchase of machinery'),
            ('C', 'Construction of a school building'),
            ('D', 'Salaries and interest payments')
           ) as v(label, option_text)
 where q.question_hash = '99b35f7fe4cf38ef7678a601140763e6'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The GST in India is:',
    'The GST is a destination based consumption tax collected on goods and services at each stage of value addition up to the final consumption.',
    'medium',
    'Standard Reference',
    null,
    'a708c81f3c7b109027910c86a83ec9a4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a708c81f3c7b109027910c86a83ec9a4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A tax on exports only'),
            ('B', 'A licence fee'),
            ('C', 'Destination based consumption tax'),
            ('D', 'Origin based tax')
           ) as v(label, option_text)
 where q.question_hash = 'a708c81f3c7b109027910c86a83ec9a4'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The GST came into force in India on:',
    'The Goods and Services Tax was launched on 1 July 2017 in India, subsuming excise duty, service tax, VAT and several other indirect taxes.',
    'easy',
    'Standard Reference',
    null,
    '91119f7ae56ba24b10b622edc745db00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '91119f7ae56ba24b10b622edc745db00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 August 2017'),
            ('B', '1 July 2017'),
            ('C', '1 April 2017'),
            ('D', '1 January 2018')
           ) as v(label, option_text)
 where q.question_hash = '91119f7ae56ba24b10b622edc745db00'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The GST Constitution Amendment required the ratification of:',
    'The Constitution (122nd Amendment) Bill required the ratification by at least half of the state legislatures by a simple majority.',
    'hard',
    'Standard Reference',
    null,
    'e01f98f11c03c2f7e5bb4573b4c2dc4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e01f98f11c03c2f7e5bb4573b4c2dc4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'At least half of the state legislatures'),
            ('B', 'All the state legislatures'),
            ('C', 'Three-fourths of the states'),
            ('D', 'Only the Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'e01f98f11c03c2f7e5bb4573b4c2dc4e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which is NOT a direct tax?',
    'Customs duty is an indirect tax levied on the import and export of goods, while income tax and corporation tax are direct taxes.',
    'easy',
    'Standard Reference',
    null,
    '6c2fcff883e8cdcc84a509be32334ac0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6c2fcff883e8cdcc84a509be32334ac0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Customs duty'),
            ('B', 'Goods and Services Tax'),
            ('C', 'Corporation tax'),
            ('D', 'Income tax')
           ) as v(label, option_text)
 where q.question_hash = '6c2fcff883e8cdcc84a509be32334ac0'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Indirect taxes'' are borne finally by:',
    'Indirect taxes can be passed on to the consumer through higher prices, and they are therefore regressive unless the tax is designed carefully.',
    'medium',
    'Standard Reference',
    null,
    '4672c082f888b2b1d1de572f208cf15b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4672c082f888b2b1d1de572f208cf15b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The producer'),
            ('B', 'The consumer'),
            ('C', 'The government'),
            ('D', 'The exporter')
           ) as v(label, option_text)
 where q.question_hash = '4672c082f888b2b1d1de572f208cf15b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''fiscal consolidation roadmap'' of the Indian government aims to reduce the fiscal deficit by:',
    'The fiscal consolidation roadmap set out in the 2018 Budget commits to reducing the fiscal deficit by 0.5 per cent of GDP every year until the 3 per cent target is reached.',
    'medium',
    'Standard Reference',
    null,
    '6b29fe719f22831ebec59f89a80984eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6b29fe719f22831ebec59f89a80984eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 per cent of GDP every year'),
            ('B', 'A fixed amount each year'),
            ('C', '1 per cent of GDP every year'),
            ('D', '0.5 per cent of GDP every year')
           ) as v(label, option_text)
 where q.question_hash = '6b29fe719f22831ebec59f89a80984eb'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''output gap'' is the:',
    'The output gap is the difference between actual output and potential output, indicating whether the economy is operating above or below its capacity.',
    'hard',
    'Standard Reference',
    null,
    '3d31997cc07759058a720e5699906ebb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3d31997cc07759058a720e5699906ebb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Difference between exports and imports'),
            ('B', 'Gap between the revenue and the fiscal deficit'),
            ('C', 'Difference between the repo and the bank rate'),
            ('D', 'Difference between actual and potential output')
           ) as v(label, option_text)
 where q.question_hash = '3d31997cc07759058a720e5699906ebb'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Disinvestment'' refers to:',
    'Disinvestment means the reduction of the government''s equity shareholding in a public sector undertaking, as distinct from privatisation or sale of a minority stake.',
    'medium',
    'Standard Reference',
    null,
    'acf0b13f0451d335256e7fa3b62ecc8c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'acf0b13f0451d335256e7fa3b62ecc8c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A cut in tax rates'),
            ('B', 'Reduction in the government''s equity holding in public sector enterprises'),
            ('C', 'Reduction in government expenditure'),
            ('D', 'Sale of government securities to the public')
           ) as v(label, option_text)
 where q.question_hash = 'acf0b13f0451d335256e7fa3b62ecc8c'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Fiscal Consolidation Roadmap'' and the ''Medium Term Fiscal Policy Statement'' are presented in:',
    'The Union Budget presents the Medium Term Fiscal Policy Statement, which sets out the fiscal deficit and the debt targets for the next three years.',
    'medium',
    'Standard Reference',
    null,
    'f63a35e44ef528b84a017bd5ae938dd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f63a35e44ef528b84a017bd5ae938dd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Five Year Plan'),
            ('B', 'The Economic Survey'),
            ('C', 'The Budget'),
            ('D', 'The Monetary Policy Statement')
           ) as v(label, option_text)
 where q.question_hash = 'f63a35e44ef528b84a017bd5ae938dd2'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which tax is levied by the Union and shared with the states?',
    'The GST is levied by the Centre and collected by the states, with the revenue shared through the GST Council, while stamp duty is a state subject.',
    'hard',
    'Standard Reference',
    null,
    '8e6911487ae519b5c28ecc72b1bfab31'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8e6911487ae519b5c28ecc72b1bfab31'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Stamp duty'),
            ('B', 'Corporation tax'),
            ('C', 'Customs duty'),
            ('D', 'Goods and Services Tax')
           ) as v(label, option_text)
 where q.question_hash = '8e6911487ae519b5c28ecc72b1bfab31'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Tax to GDP ratio'' in India is relatively low because:',
    'The low tax to GDP ratio in India is attributed to the large informal sector, the narrow tax base and relatively low direct tax rates.',
    'medium',
    'Standard Reference',
    null,
    '1cc6b84ea74662952337730264ea6a40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1cc6b84ea74662952337730264ea6a40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A large share of the economy is in the informal sector with low tax compliance'),
            ('B', 'The government spends very little'),
            ('C', 'Indirect taxes have been abolished'),
            ('D', 'Direct taxes are the only source of revenue')
           ) as v(label, option_text)
 where q.question_hash = '1cc6b84ea74662952337730264ea6a40'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Buoyancy of taxes'' refers to:',
    'The buoyancy of taxes measures how responsive tax revenue is to changes in the tax base, the tax structure and the compliance levels.',
    'hard',
    'Standard Reference',
    null,
    'bb2a6f8e8c027eb6f009df0a2f91ef62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bb2a6f8e8c027eb6f009df0a2f91ef62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The tax exemption of the poor'),
            ('B', 'The ability of the government to borrow'),
            ('C', 'The responsiveness of tax revenue to changes in the tax base or rates'),
            ('D', 'The buoyancy of the currency')
           ) as v(label, option_text)
 where q.question_hash = 'bb2a6f8e8c027eb6f009df0a2f91ef62'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Consolidated Fund of India'' and the ''Public Account of India'' are provided under:',
    'Article 266 deals with the Consolidated Fund of India and the Public Account of India, and Article 112 with the Annual Financial Statement, the Budget.',
    'hard',
    'Standard Reference',
    null,
    '44e03aaf5421fc133cff12d86c71b4ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44e03aaf5421fc133cff12d86c71b4ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 112'),
            ('B', 'Article 263'),
            ('C', 'Article 280'),
            ('D', 'Article 266')
           ) as v(label, option_text)
 where q.question_hash = '44e03aaf5421fc133cff12d86c71b4ea'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which is a ''capital receipt''?',
    'Disinvestment proceeds are capital receipts because they are a one-off reduction in the government''s asset holding, unlike tax and interest receipts which are revenue receipts.',
    'medium',
    'Standard Reference',
    null,
    '392e9791cb090b70a2c1916c63dbc418'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '392e9791cb090b70a2c1916c63dbc418'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Disinvestment proceeds'),
            ('B', 'Interest receipts'),
            ('C', 'Grants from the Centre'),
            ('D', 'Corporation tax receipts')
           ) as v(label, option_text)
 where q.question_hash = '392e9791cb090b70a2c1916c63dbc418'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Public Account of India'' contains:',
    'The Public Account of India holds provident fund and small savings deposits, and the liabilities of the government in respect of these, which are not part of the Consolidated Fund.',
    'hard',
    'Standard Reference',
    null,
    '27915f7c833e8a170e49e87dc787676c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '27915f7c833e8a170e49e87dc787676c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Disinvestment proceeds'),
            ('B', 'Small savings and provident fund deposits'),
            ('C', 'Cash balances of the government'),
            ('D', 'External loans')
           ) as v(label, option_text)
 where q.question_hash = '27915f7c833e8a170e49e87dc787676c'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Contingency Fund of India'' is placed at the disposal of:',
    'Article 267 places the Contingency Fund of India at the disposal of the President to enable advances to meet unforeseen expenditure, pending authorisation by Parliament.',
    'medium',
    'Standard Reference',
    null,
    '7643237825345cdd0b5375cca9fdc0b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7643237825345cdd0b5375cca9fdc0b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Comptroller and Auditor General'),
            ('B', 'The Prime Minister'),
            ('C', 'The President'),
            ('D', 'The Finance Minister')
           ) as v(label, option_text)
 where q.question_hash = '7643237825345cdd0b5375cca9fdc0b9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Consolidated Fund of India'' is at the disposal of:',
    'Under Article 266 the Consolidated Fund and the Public Account are at the disposal of the Union government, and withdrawals require the President''s order on the advice of the Council of Ministers.',
    'hard',
    'Standard Reference',
    null,
    '6c084c65fe0007eb541979a9e5d99521'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6c084c65fe0007eb541979a9e5d99521'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Union Government on the recommendation of the President'),
            ('B', 'The Finance Minister'),
            ('C', 'The President'),
            ('D', 'The Prime Minister')
           ) as v(label, option_text)
 where q.question_hash = '6c084c65fe0007eb541979a9e5d99521'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''defence expenditure'' of the government includes:',
    'Defence expenditure comprises both the revenue and the capital expenditure of the Ministry of Defence, which is the largest single budget head in India.',
    'medium',
    'Standard Reference',
    null,
    'e69c41e1ff0923959167726c9b513610'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e69c41e1ff0923959167726c9b513610'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the capital expenditure'),
            ('B', 'The pension of civil servants'),
            ('C', 'Only the salaries of the armed forces'),
            ('D', 'Revenue and capital expenditure on defence')
           ) as v(label, option_text)
 where q.question_hash = 'e69c41e1ff0923959167726c9b513610'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Public-Private Partnership'' in infrastructure:',
    'In a PPP the government and the private sector share the cost and risk of an infrastructure project, with the private partner usually responsible for construction and maintenance for a fixed period.',
    'medium',
    'Standard Reference',
    null,
    '38c8341299c4acb910b7e527d0fac80e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '38c8341299c4acb910b7e527d0fac80e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a private enterprise fully funded by the government'),
            ('B', 'Shares the risk and investment between the government and the private sector'),
            ('C', 'Is a scheme of the Reserve Bank'),
            ('D', 'Refers to the disinvestment of PSUs')
           ) as v(label, option_text)
 where q.question_hash = '38c8341299c4acb910b7e527d0fac80e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Defence Procurement Manual'' and the ''Defence Procurement Procedure 2019'' relate to:',
    'The Defence Procurement Procedure lays down the policy and the processes for the acquisition of defence equipment and services by the Ministry of Defence.',
    'hard',
    'Standard Reference',
    null,
    '35ab97d6b09f1fb6e7e3c58286f98509'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '35ab97d6b09f1fb6e7e3c58286f98509'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The process of acquisition of defence equipment'),
            ('B', 'Training of the personnel'),
            ('C', 'Border management'),
            ('D', 'Budgeting of the defence forces')
           ) as v(label, option_text)
 where q.question_hash = '35ab97d6b09f1fb6e7e3c58286f98509'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Central Civil Services'' and the ''defence services'' expenditure constitute:',
    'Salaries and pensions of the civil and defence services are revenue expenditures since they are recurring in nature.',
    'medium',
    'Standard Reference',
    null,
    '163d86f79a20dbc9b389c44a55270055'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '163d86f79a20dbc9b389c44a55270055'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fiscal deficit'),
            ('B', 'Primary deficit'),
            ('C', 'Revenue expenditure'),
            ('D', 'Capital expenditure')
           ) as v(label, option_text)
 where q.question_hash = '163d86f79a20dbc9b389c44a55270055'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''tax revenue'' of the government includes:',
    'Tax revenue comprises taxes on income and expenditure, along with customs and excise duties, which together form the largest source of government revenue.',
    'medium',
    'Standard Reference',
    null,
    '702123118f091e4ce3f1b5baa4c2a7b5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '702123118f091e4ce3f1b5baa4c2a7b5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only corporation tax'),
            ('B', 'Taxes on income and expenditure as well as customs and excise duties'),
            ('C', 'Only customs duty'),
            ('D', 'Profits of the RBI')
           ) as v(label, option_text)
 where q.question_hash = '702123118f091e4ce3f1b5baa4c2a7b5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Non-tax revenue'' of the government includes:',
    'Non-tax revenue includes interest receipts, dividends from state-owned enterprises, fees and fines and the profits of the Reserve Bank of India.',
    'easy',
    'Standard Reference',
    null,
    '6c1925eb8a6140cbb51bbed67687c69f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6c1925eb8a6140cbb51bbed67687c69f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Corporation tax'),
            ('B', 'Customs duty'),
            ('C', 'GST'),
            ('D', 'Interest receipts, dividends and fees')
           ) as v(label, option_text)
 where q.question_hash = '6c1925eb8a6140cbb51bbed67687c69f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Monetary Policy Statement'' of the RBI is issued:',
    'The Monetary Policy Statement is released at the end of every quarter, following the meetings of the Monetary Policy Committee.',
    'hard',
    'Standard Reference',
    null,
    'e0e10ec12f36aea9826401edd4bb8dfc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e0e10ec12f36aea9826401edd4bb8dfc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Quarterly'),
            ('B', 'Every month'),
            ('C', 'Annually'),
            ('D', 'Twice a year')
           ) as v(label, option_text)
 where q.question_hash = 'e0e10ec12f36aea9826401edd4bb8dfc'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Financial Stability Report'' of the RBI is published:',
    'The Financial Stability Report is published by the RBI semi-annually, in June and December, and assesses the stability of the financial system.',
    'hard',
    'Standard Reference',
    null,
    '2e5e937624c01411a56249ee9600eaff'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e5e937624c01411a56249ee9600eaff'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Every quarter'),
            ('B', 'Every month'),
            ('C', 'Every year'),
            ('D', 'Semi-annually')
           ) as v(label, option_text)
 where q.question_hash = '2e5e937624c01411a56249ee9600eaff'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''call money market'' is:',
    'The call money market is an overnight market for loans and deposits among banks, an uncollateralised market regulated by the RBI.',
    'medium',
    'Standard Reference',
    null,
    '13fb6d7b6cdac832eb02ba33633dabc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '13fb6d7b6cdac832eb02ba33633dabc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A market for agricultural credit'),
            ('B', 'A market for overnight loans between banks'),
            ('C', 'A market for government securities'),
            ('D', 'A market for foreign exchange')
           ) as v(label, option_text)
 where q.question_hash = '13fb6d7b6cdac832eb02ba33633dabc3'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''money multiplier'' depends on:',
    'The money multiplier is the reciprocal of the sum of the cash leakages, principally the CRR and the proportion of deposits held as cash by the public.',
    'hard',
    'Standard Reference',
    null,
    'd1e4fe60e5773ab535493273739d1623'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd1e4fe60e5773ab535493273739d1623'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fiscal deficit'),
            ('B', 'The exchange rate'),
            ('C', 'The cash reserve ratio and the public''s cash-deposit preference'),
            ('D', 'The repo rate')
           ) as v(label, option_text)
 where q.question_hash = 'd1e4fe60e5773ab535493273739d1623'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Quantitative instruments'' of monetary policy include:',
    'Quantitative instruments work through price and quantity variables that affect the overall volume of credit, while qualitative instruments influence the direction of credit flows.',
    'medium',
    'Standard Reference',
    null,
    '12b1959556f0e4f84e55b300be7cd22a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '12b1959556f0e4f84e55b300be7cd22a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Moral suasion'),
            ('B', 'Direct action'),
            ('C', 'Selective credit controls'),
            ('D', 'Repo rate, CRR, SLR and open market operations')
           ) as v(label, option_text)
 where q.question_hash = '12b1959556f0e4f84e55b300be7cd22a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Selective credit control'' is used by the RBI to:',
    'Selective credit controls include differential rates of interest, sectoral priorities and directives to banks to stop lending for speculative purposes such as the trade in shares.',
    'medium',
    'Standard Reference',
    null,
    '90fe978fa55de71bce03ede08d2887e1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '90fe978fa55de71bce03ede08d2887e1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Control the overall volume of credit'),
            ('B', 'Direct credit to priority sectors and to curb certain speculative activities'),
            ('C', 'Set the repo rate'),
            ('D', 'Conduct open market operations')
           ) as v(label, option_text)
 where q.question_hash = '90fe978fa55de71bce03ede08d2887e1'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Transmission mechanism'' of monetary policy refers to:',
    'Monetary policy transmission describes the chain from the policy rate through interest rates, credit, demand and prices to output and employment.',
    'hard',
    'Standard Reference',
    null,
    'd2268340585d12ef7d6fae72c7eb3a36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd2268340585d12ef7d6fae72c7eb3a36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The transfer of funds to the public sector undertakings'),
            ('B', 'The process of issuing new currency'),
            ('C', 'The way in which monetary policy decisions affect aggregate demand and output'),
            ('D', 'The transmission of the budget to the states')
           ) as v(label, option_text)
 where q.question_hash = 'd2268340585d12ef7d6fae72c7eb3a36'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The RBI''s ''Liquidity Adjustment Facility'' provides:',
    'Under the LAF, the RBI provides overnight liquidity against securities with a marginal rate, and absorbs overnight liquidity with a reverse repo auction.',
    'hard',
    'Standard Reference',
    null,
    '6e2a39b2288368dee1c63e76321f1716'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6e2a39b2288368dee1c63e76321f1716'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Overnight liquidity against securities'),
            ('B', 'Long term loans for agriculture'),
            ('C', 'Foreign exchange to importers'),
            ('D', 'Credit to the housing sector')
           ) as v(label, option_text)
 where q.question_hash = '6e2a39b2288368dee1c63e76321f1716'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Inflation Target'' of the Central Government and the RBI in terms of headline CPI is:',
    'The inflation target is 4 per cent annual headline CPI inflation, with a tolerance band of 2 to 6 per cent, notified by the Central Government in consultation with the RBI.',
    'medium',
    'Standard Reference',
    null,
    '32e6d2d6319a532d8755679a6438d213'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '32e6d2d6319a532d8755679a6438d213'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4 per cent'),
            ('B', '6 per cent'),
            ('C', '8 per cent'),
            ('D', '2 per cent')
           ) as v(label, option_text)
 where q.question_hash = '32e6d2d6319a532d8755679a6438d213'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Flexible inflation targeting'' in India was introduced by:',
    'The RBI Act was amended in 2013 to give the RBI a statutory mandate to operate a flexible inflation targeting regime with a formal inflation target.',
    'hard',
    'Standard Reference',
    null,
    'f58717555fc73e04bdd88ad4545eec3f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f58717555fc73e04bdd88ad4545eec3f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The 1991 reforms'),
            ('B', 'The 2000 Fiscal Responsibility Act'),
            ('C', 'The 2016 demonetisation'),
            ('D', 'The 2013 amendment to the RBI Act')
           ) as v(label, option_text)
 where q.question_hash = 'f58717555fc73e04bdd88ad4545eec3f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''CAGR'' in the fiscal context refers to:',
    'CAGR is the compounded annual growth rate over a period, a standard measure used for comparing revenue or expenditure over time.',
    'easy',
    'Standard Reference',
    null,
    '89c330bf7f32bd9207a9aa633b0d870d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89c330bf7f32bd9207a9aa633b0d870d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Capital Asset Growth Reserve'),
            ('B', 'Compound Annual Growth Rate'),
            ('C', 'Central Audit and Governance Review'),
            ('D', 'Consolidated Annual Government Revenue')
           ) as v(label, option_text)
 where q.question_hash = '89c330bf7f32bd9207a9aa633b0d870d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''bank rate'' is revised by:',
    'The RBI recommends the bank rate, the repo rate and other policy rates, and the Central Government notifies them after consultation with the Central Board of the RBI.',
    'hard',
    'Standard Reference',
    null,
    'e0283307b8c7ce6c3aff5e19b2e2cc3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e0283307b8c7ce6c3aff5e19b2e2cc3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parliament'),
            ('B', 'The Finance Commission'),
            ('C', 'The Government of India on the recommendation of the RBI'),
            ('D', 'The RBI alone')
           ) as v(label, option_text)
 where q.question_hash = 'e0283307b8c7ce6c3aff5e19b2e2cc3d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Currency swap'' arrangement between the RBI and the US Federal Reserve was signed in:',
    'A three-year currency swap agreement between the RBI and the US Federal Reserve was signed in 2010, renewed in 2013 and 2018.',
    'hard',
    'Standard Reference',
    null,
    'b8ff5e03bc9d2ef544ea110978e34f5b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b8ff5e03bc9d2ef544ea110978e34f5b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '2005'),
            ('C', '2010'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = 'b8ff5e03bc9d2ef544ea110978e34f5b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Bilateral Swap Lines'' of the RBI are with:',
    'The RBI has bilateral swap lines with the central banks of the United States, Japan, the United Kingdom, the European Union and the ASEAN countries.',
    'hard',
    'Standard Reference',
    null,
    'c9ef6c43094e4ad1fb01c1486783c11c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9ef6c43094e4ad1fb01c1486783c11c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the United States'),
            ('B', 'The United States, Japan, the UK, the EU and the ASEAN'),
            ('C', 'Only the BRICS countries'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = 'c9ef6c43094e4ad1fb01c1486783c11c'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''financial inclusion'' index of India is measured by:',
    'The Global Findex survey by the World Bank measures the access to and the use of financial services across adults and small businesses.',
    'medium',
    'Standard Reference',
    null,
    '58c1adb1e504bb90445aca7e02f6a53f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '58c1adb1e504bb90445aca7e02f6a53f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The HDI'),
            ('B', 'The Ease of Doing Business Index'),
            ('C', 'The Multidimensional Poverty Index'),
            ('D', 'The Global Findex survey')
           ) as v(label, option_text)
 where q.question_hash = '58c1adb1e504bb90445aca7e02f6a53f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Digital financial literacy'' in India is measured by:',
    'The Financial Inclusion Index, developed by the World Bank, has a dimension on digital financial literacy to which the National Strategy for Financial Inclusion gives importance.',
    'hard',
    'Standard Reference',
    null,
    '48ea6b9dd8f7fd5de7dc0a52f0f0cda2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '48ea6b9dd8f7fd5de7dc0a52f0f0cda2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Financial Inclusion Index of the RBI'),
            ('B', 'The Global Findex'),
            ('C', 'The SDG Index'),
            ('D', 'The Innovation Index')
           ) as v(label, option_text)
 where q.question_hash = '48ea6b9dd8f7fd5de7dc0a52f0f0cda2'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''National Strategy for Financial Inclusion'' (NSFI) for 2019-24 was:',
    'The NSFI for 2019-24 was released by the RBI in January 2019 and set out twelve guiding principles for the financial inclusion agenda.',
    'medium',
    'Standard Reference',
    null,
    '83f7387f4b85bca3e920103a2041c500'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '83f7387f4b85bca3e920103a2041c500'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A legal statute'),
            ('B', 'A budget scheme'),
            ('C', 'An international treaty'),
            ('D', 'An RBI framework with twelve guiding principles')
           ) as v(label, option_text)
 where q.question_hash = '83f7387f4b85bca3e920103a2041c500'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Credit Guarantee Fund for Micro Units (CGFMU)'' provides:',
    'The CGFMU, operated through the DICGC, guarantees credit to micro units and small enterprises without collateral up to a prescribed limit.',
    'hard',
    'Standard Reference',
    null,
    'd036445111cfc46446c2e1098a723cc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd036445111cfc46446c2e1098a723cc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Guarantee of export credit'),
            ('B', 'Credit guarantee for small and micro enterprises'),
            ('C', 'Loans to the housing sector'),
            ('D', 'Insurance to depositors')
           ) as v(label, option_text)
 where q.question_hash = 'd036445111cfc46446c2e1098a723cc3'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''SME Credit Guarantee Fund'' and the ''credit information companies'' help in:',
    'Credit guarantee funds protect lenders against default, while credit information companies reduce information asymmetry about the creditworthiness of borrowers.',
    'medium',
    'Standard Reference',
    null,
    'b5f4870ce6a87139129e38b2771d058a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b5f4870ce6a87139129e38b2771d058a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulating the stock market'),
            ('B', 'Setting the repo rate'),
            ('C', 'Reducing the cost of credit for MSMEs by sharing risk and information'),
            ('D', 'Increasing the money supply')
           ) as v(label, option_text)
 where q.question_hash = 'b5f4870ce6a87139129e38b2771d058a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Payment and Settlement Systems Act'' was enacted in:',
    'The Payment and Settlement Systems Act, 2007, provides for the regulation and oversight of payment and settlement systems in India.',
    'hard',
    'Standard Reference',
    null,
    '940c224065e2d89da2b944804e368a26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '940c224065e2d89da2b944804e368a26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2007'),
            ('B', '2012'),
            ('C', '2015'),
            ('D', '2000')
           ) as v(label, option_text)
 where q.question_hash = '940c224065e2d89da2b944804e368a26'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Bharat Bill Payment Operating Limited'' is authorised to operate:',
    'The BBPOL was authorised in 2018 to operate the bill payment segment of the Bharat Bill Payment System.',
    'hard',
    'Standard Reference',
    null,
    '8d42239b3486ad51149b4a2a7e2d4282'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d42239b3486ad51149b4a2a7e2d4282'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The A2A payments rail'),
            ('B', 'The bill payment segment of the BBPS'),
            ('C', 'The card payment network'),
            ('D', 'The UPI settlement')
           ) as v(label, option_text)
 where q.question_hash = '8d42239b3486ad51149b4a2a7e2d4282'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Credit default swap'' is a:',
    'A credit default swap is an instrument in which the protection buyer pays a periodic premium to the protection seller, who pays out on the occurrence of a credit event.',
    'hard',
    'Standard Reference',
    null,
    '985cd5f5a18b53149d3f0df22ec8f403'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '985cd5f5a18b53149d3f0df22ec8f403'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ratio of deposits to advances'),
            ('B', 'Loan given by banks'),
            ('C', 'Contract in which the buyer pays a premium for protection against default'),
            ('D', 'Type of government bond')
           ) as v(label, option_text)
 where q.question_hash = '985cd5f5a18b53149d3f0df22ec8f403'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Securitisation'' in the context of banking means:',
    'Securitisation is the process of pooling loans and converting them into tradable securities, which allows banks to transfer credit risk off their balance sheet.',
    'medium',
    'Standard Reference',
    null,
    '4089ea34c6d4ff1a9a861b3feabbec2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4089ea34c6d4ff1a9a861b3feabbec2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Converting loans into tradable securities'),
            ('B', 'Lending against securities'),
            ('C', 'Trading in government securities'),
            ('D', 'Offering insurance products')
           ) as v(label, option_text)
 where q.question_hash = '4089ea34c6d4ff1a9a861b3feabbec2e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RBI''s Depositor Protection Fund'' and the ''DICGC'' ensure:',
    'The Deposit Insurance and Credit Guarantee Corporation insures deposits up to Rs. 5 lakh per depositor per bank, as revised in 2020.',
    'medium',
    'Standard Reference',
    null,
    'd3d60e2bf45ccc04b276748ad6e55214'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd3d60e2bf45ccc04b276748ad6e55214'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Protection of shareholders'),
            ('B', 'Guarantee of the government debt'),
            ('C', 'Insurance of exports'),
            ('D', 'Protection of depositors'' interests up to a prescribed limit')
           ) as v(label, option_text)
 where q.question_hash = 'd3d60e2bf45ccc04b276748ad6e55214'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''Small Finance Banks'' in India are:',
    'Small finance banks are formed as companies limited by guarantee under the Companies Act and are required to extend 75 per cent of their credit to priority sectors.',
    'hard',
    'Standard Reference',
    null,
    '65d11880f26db25d346ee2ec1a74f83b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '65d11880f26db25d346ee2ec1a74f83b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Companies limited by guarantee'),
            ('B', 'Scheduled private sector banks'),
            ('C', 'Foreign banks'),
            ('D', 'Companies limited by shares')
           ) as v(label, option_text)
 where q.question_hash = '65d11880f26db25d346ee2ec1a74f83b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Payment banks'' in India:',
    'Payment banks can accept deposits of up to Rs. 2 lakh per customer, cannot lend and cannot engage in credit creation, and are not allowed to give out loans.',
    'medium',
    'Standard Reference',
    null,
    '8d00f07bd6df1899e925ab960ccf5fd5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8d00f07bd6df1899e925ab960ccf5fd5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are scheduled banks'),
            ('B', 'Can lend to individuals'),
            ('C', 'Cannot lend and can offer deposits of up to Rs. 2 lakh'),
            ('D', 'Must be listed companies')
           ) as v(label, option_text)
 where q.question_hash = '8d00f07bd6df1899e925ab960ccf5fd5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RBI Governor'' is appointed for a term of:',
    'The Governor and the Deputy Governors of the RBI are appointed for a term of five years and can be removed only in the manner prescribed for a judge of the Supreme Court.',
    'easy',
    'Standard Reference',
    null,
    'c8fa2f82a7a15946a63b0827fdb5f2a5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c8fa2f82a7a15946a63b0827fdb5f2a5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Six years'),
            ('B', 'Three years'),
            ('C', 'Four years'),
            ('D', 'Five years')
           ) as v(label, option_text)
 where q.question_hash = 'c8fa2f82a7a15946a63b0827fdb5f2a5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RBI''s Central Board'' consists of:',
    'The Central Board of the RBI comprises the Governor, four Deputy Governors, one officer nominated by the Finance Ministry and twenty members representing the central and state governments and the interests of agriculture, industry, commerce and labour.',
    'hard',
    'Standard Reference',
    null,
    'b317ccb6efeb0e6132ae4bc91cfc1880'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b317ccb6efeb0e6132ae4bc91cfc1880'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Twelve directors of the central banks'),
            ('B', 'The Governor, four Deputy Governors and twenty officials'),
            ('C', 'The Governor and fifteen directors'),
            ('D', 'Only the Finance Secretary and the Governor')
           ) as v(label, option_text)
 where q.question_hash = 'b317ccb6efeb0e6132ae4bc91cfc1880'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Lender of Last Resort'' in India is:',
    'The RBI acts as the lender of last resort to the banking system, providing liquidity to banks facing a run or a liquidity crunch.',
    'easy',
    'Standard Reference',
    null,
    '2a0fcc7cee508caf406a9d33cf921058'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2a0fcc7cee508caf406a9d33cf921058'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The SBI'),
            ('B', 'The Reserve Bank of India'),
            ('C', 'The NABARD'),
            ('D', 'The SIDBI')
           ) as v(label, option_text)
 where q.question_hash = '2a0fcc7cee508caf406a9d33cf921058'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RBI''s balance sheet'' is divided into:',
    'Like any balance sheet, the RBI''s is divided into assets and liabilities, and it is conventionally published on a Friday.',
    'medium',
    'Standard Reference',
    null,
    '6850e8619522ae2f7645601a4e20965a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6850e8619522ae2f7645601a4e20965a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Revenue and expenditure'),
            ('B', 'Revenue and capital'),
            ('C', 'Assets and funds'),
            ('D', 'Assets and liabilities')
           ) as v(label, option_text)
 where q.question_hash = '6850e8619522ae2f7645601a4e20965a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Profit of the RBI'' is credited to:',
    'Under Section 22 of the RBI Act, 1934, the net profits of the Bank are transferred to the Consolidated Fund of India.',
    'hard',
    'Standard Reference',
    null,
    '8264919a718579f6f62d53afb299417e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8264919a718579f6f62d53afb299417e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Consolidated Fund of India'),
            ('B', 'The Public Account of India'),
            ('C', 'The Contingency Fund'),
            ('D', 'The Consolidated Fund of the states')
           ) as v(label, option_text)
 where q.question_hash = '8264919a718579f6f62d53afb299417e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''RBI''s Monetary Policy Report'' is published:',
    'The Monetary Policy Report is published every quarter along with the statement of the policy stance following the MPC meeting.',
    'medium',
    'Standard Reference',
    null,
    '8035a8a3c90025b2292774a04ae9e825'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8035a8a3c90025b2292774a04ae9e825'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Every month'),
            ('B', 'Every six months'),
            ('C', 'Every quarter with the Monetary Policy Statement'),
            ('D', 'Annually')
           ) as v(label, option_text)
 where q.question_hash = '8035a8a3c90025b2292774a04ae9e825'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Repo rate'' in India is announced by:',
    'The MPC, which has six members, decides the repo rate and the other policy rates, and its decisions are notified by the RBI.',
    'easy',
    'Standard Reference',
    null,
    '4c1eeb7376fe9d45d5ec9e5b19b60438'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4c1eeb7376fe9d45d5ec9e5b19b60438'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central Board of the RBI'),
            ('B', 'The Finance Minister'),
            ('C', 'The Monetary Policy Committee of the RBI'),
            ('D', 'The Governor of the RBI alone')
           ) as v(label, option_text)
 where q.question_hash = '4c1eeb7376fe9d45d5ec9e5b19b60438'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''OMO'' operations of the RBI are conducted by:',
    'Open market operations are conducted by the RBI through its dealing desk with the primary dealers, with repos and reverse repos accounting for the bulk of the volume.',
    'medium',
    'Standard Reference',
    null,
    'c9579b32cb5eb11b00262ea275703128'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c9579b32cb5eb11b00262ea275703128'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Parliament'),
            ('B', 'The National Securities Depository'),
            ('C', 'The Finance Ministry'),
            ('D', 'The RBI''s dealing desk with the primary dealers')
           ) as v(label, option_text)
 where q.question_hash = 'c9579b32cb5eb11b00262ea275703128'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Reverse repo'' is used by the RBI to:',
    'Under the reverse repo, the RBI buys securities from banks with the promise of selling them back, thereby absorbing liquidity from the system.',
    'easy',
    'Standard Reference',
    null,
    'a523871dfac42e7475f8580a494f9577'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a523871dfac42e7475f8580a494f9577'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Absorb liquidity'),
            ('B', 'Raise the CRR'),
            ('C', 'Print currency'),
            ('D', 'Inject liquidity')
           ) as v(label, option_text)
 where q.question_hash = 'a523871dfac42e7475f8580a494f9577'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''VRR'' and the ''VRRR'' as policy rates were introduced in:',
    'The Variable Rate Reverse Repo and the Variable Rate Reverse Repo Repo were introduced as additional tools for managing the liquidity conditions in 2020.',
    'hard',
    'Standard Reference',
    null,
    '2e5d90e74d4edd88f997c8c3a5ee2812'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2e5d90e74d4edd88f997c8c3a5ee2812'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2020'),
            ('C', '2022'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '2e5d90e74d4edd88f997c8c3a5ee2812'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The ''SDF'' of the RBI is:',
    'The Special Deposit Facility, introduced in 2022, absorbs liquidity with a flexible and a risk-free overnight rate and forms the floor of the LAF corridor.',
    'hard',
    'Standard Reference',
    null,
    '41ad21f0e049d26eb9986999c61d700d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '41ad21f0e049d26eb9986999c61d700d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A type of deposit by the public'),
            ('B', 'A loan to the states'),
            ('C', 'A foreign exchange instrument'),
            ('D', 'The Special Deposit Facility, a floor for the overnight rate')
           ) as v(label, option_text)
 where q.question_hash = '41ad21f0e049d26eb9986999c61d700d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    '''Zero ruin'' banking is a concept related to:',
    'The zero ruin resolution of the RBI in 2022 sought to ensure that the SDF rate never became a binding constraint, allowing banks to park funds with the RBI without loss.',
    'hard',
    'Standard Reference',
    null,
    '54e12f9d6277325c2d04f5bced65b0a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '54e12f9d6277325c2d04f5bced65b0a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RBI''s liquidity management with the SDF'),
            ('B', 'The deposit insurance scheme'),
            ('C', 'The Basel norms'),
            ('D', 'The monetisation of the deficit')
           ) as v(label, option_text)
 where q.question_hash = '54e12f9d6277325c2d04f5bced65b0a6'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''SEBI'' was given statutory powers in:',
    'SEBI was constituted as a non-statutory body in 1988 and was given statutory powers by the SEBI Act, 1992.',
    'medium',
    'Standard Reference',
    null,
    'a92d789b518cd1ab147c325893210952'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a92d789b518cd1ab147c325893210952'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1988'),
            ('B', '1992'),
            ('C', '1995'),
            ('D', '1999')
           ) as v(label, option_text)
 where q.question_hash = 'a92d789b518cd1ab147c325893210952'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'SEBI is headquartered at:',
    'The Securities and Exchange Board of India has its headquarters in Mumbai.',
    'easy',
    'Standard Reference',
    null,
    '0ef5839228b86e90053879c964575f50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ef5839228b86e90053879c964575f50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai'),
            ('B', 'Kolkata'),
            ('C', 'Mumbai'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '0ef5839228b86e90053879c964575f50'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''IRDAI'' was constituted in:',
    'The Insurance Regulatory and Development Authority of India was constituted in 1999 under the IRDA Act of 1999 and given statutory powers in 2000.',
    'medium',
    'Standard Reference',
    null,
    '23ce28d5d294b6d0e2df9093b5b50e50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '23ce28d5d294b6d0e2df9093b5b50e50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1998'),
            ('B', '1999'),
            ('C', '2000'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = '23ce28d5d294b6d0e2df9093b5b50e50'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''PFRDA'' and the ''Pension Fund Regulatory and Development Authority'' was set up in:',
    'The PFRDA was constituted in 2003 to regulate the pension funds and the National Pension System.',
    'hard',
    'Standard Reference',
    null,
    'e3699d55d761e43f5267381a0c4d5172'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e3699d55d761e43f5267381a0c4d5172'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '1999'),
            ('C', '2005'),
            ('D', '2003')
           ) as v(label, option_text)
 where q.question_hash = 'e3699d55d761e43f5267381a0c4d5172'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'NABARD is an apex institution for:',
    'The National Bank for Agriculture and Rural Development is the apex institution for agriculture and rural development and the national apex for cooperative banks.',
    'easy',
    'Standard Reference',
    null,
    '1d41cca509d5fea0b8ee6fbc122b002c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d41cca509d5fea0b8ee6fbc122b002c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Agriculture and rural development'),
            ('B', 'Small finance banks'),
            ('C', 'Insurance'),
            ('D', 'Capital markets')
           ) as v(label, option_text)
 where q.question_hash = '1d41cca509d5fea0b8ee6fbc122b002c'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'SIDBI is the apex institution for:',
    'The Small Industries Development Bank of India is the principal financial institution for the promotion, financing and growth of small scale enterprises.',
    'medium',
    'Standard Reference',
    null,
    'ed8970b62b6326e49f9938fe469d6a5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed8970b62b6326e49f9938fe469d6a5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Housing finance'),
            ('B', 'Farm credit'),
            ('C', 'Small scale industries'),
            ('D', 'Export credit')
           ) as v(label, option_text)
 where q.question_hash = 'ed8970b62b6326e49f9938fe469d6a5c'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'EXIM Bank was established to:',
    'EXIM Bank of India was set up in 1982 to provide financing for exports, imports and the development of infrastructure and other markets.',
    'hard',
    'Standard Reference',
    null,
    'f5bdd493539d1ae989d74d3da64427a1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f5bdd493539d1ae989d74d3da64427a1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulate the insurance sector'),
            ('B', 'Regulate the stock market'),
            ('C', 'Regulate the foreign exchange market'),
            ('D', 'Finance exports and imports')
           ) as v(label, option_text)
 where q.question_hash = 'f5bdd493539d1ae989d74d3da64427a1'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''NHB'' is the apex institution for:',
    'The National Housing Bank is the apex institution for housing finance in India and is wholly owned by the RBI.',
    'medium',
    'Standard Reference',
    null,
    '7aa4cdaa8d8a90d817bb1a43cc34eb9d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7aa4cdaa8d8a90d817bb1a43cc34eb9d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Housing finance'),
            ('B', 'Agriculture'),
            ('C', 'Education'),
            ('D', 'Export credit')
           ) as v(label, option_text)
 where q.question_hash = '7aa4cdaa8d8a90d817bb1a43cc34eb9d'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''EPFO'' administers:',
    'The Employees'' Provident Fund Organisation administers the contributory provident fund for the employees in the organised sector.',
    'easy',
    'Standard Reference',
    null,
    'cf20c46f8271bb629530ad9c2f694f50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cf20c46f8271bb629530ad9c2f694f50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gratuity only'),
            ('B', 'Esic benefits'),
            ('C', 'Provident fund for the employees in the organised sector'),
            ('D', 'Pension for the armed forces')
           ) as v(label, option_text)
 where q.question_hash = 'cf20c46f8271bb629530ad9c2f694f50'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    '''ESIC'' provides:',
    'The Employees'' State Insurance Corporation provides medical care and cash benefits in sickness, maternity, disablement and other contingencies.',
    'medium',
    'Standard Reference',
    null,
    '9ff9969d22057471e5c186f61f687846'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9ff9969d22057471e5c186f61f687846'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provident fund'),
            ('B', 'Medical care and cash benefits to the employees covered under the ESI scheme'),
            ('C', 'Housing loans'),
            ('D', 'Export credit')
           ) as v(label, option_text)
 where q.question_hash = '9ff9969d22057471e5c186f61f687846'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Insolvency and Bankruptcy Code'' was enacted in:',
    'The Insolvency and Bankruptcy Code, 2016 consolidated and amended the laws relating to the insolvency of individuals, companies and partnerships.',
    'easy',
    'Standard Reference',
    null,
    '49bcb3a565fd6dc8757c1e455d8e3bc3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '49bcb3a565fd6dc8757c1e455d8e3bc3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2016'),
            ('C', '2017'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '49bcb3a565fd6dc8757c1e455d8e3bc3'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Under the IBC, the ''moratorium period'' is:',
    'The Code declares a moratorium of 180 days on the institution of suits and proceedings against the corporate debtor from the date of admission of the application.',
    'medium',
    'Standard Reference',
    null,
    '8210e1b7670e7c426c19e5077c03d01c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8210e1b7670e7c426c19e5077c03d01c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '30 days'),
            ('B', '90 days'),
            ('C', '180 days'),
            ('D', '270 days')
           ) as v(label, option_text)
 where q.question_hash = '8210e1b7670e7c426c19e5077c03d01c'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'Under the IBC, the ''minimum liquidation value'' of an insolvency resolution plan is:',
    'The Code requires that the liquidation value of the assets of the corporate debtor should not be less than 25 per cent of the admitted claims.',
    'hard',
    'Standard Reference',
    null,
    '462508986da3d129db545a971f78db20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '462508986da3d129db545a971f78db20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '40 per cent of the admitted claims'),
            ('B', '50 per cent of the admitted claims'),
            ('C', '10 per cent of the admitted claims'),
            ('D', '25 per cent of the admitted claims')
           ) as v(label, option_text)
 where q.question_hash = '462508986da3d129db545a971f78db20'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Financial Creditors Committee'' and the ''Committee of Operational Creditors'' are constituted under the IBC to:',
    'The committees of financial and operational creditors monitor the resolution process and try to revive the company as a going concern within the time limit.',
    'medium',
    'Standard Reference',
    null,
    'eec94866371a2ed4ce723fd89e1282ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'eec94866371a2ed4ce723fd89e1282ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Monitor the insolvency resolution process and revive the business as a going concern'),
            ('B', 'Impose penalties on the directors'),
            ('C', 'Appoint the insolvency professional'),
            ('D', 'Audit the books of the company')
           ) as v(label, option_text)
 where q.question_hash = 'eec94866371a2ed4ce723fd89e1282ae'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Credit Information Companies Act'' was enacted in:',
    'The Credit Information Companies (Regulation) Act, 2000, regulates the credit information companies in India and gave RBI the power to license them.',
    'hard',
    'Standard Reference',
    null,
    'db963b795de5005c2054b700ba9304e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'db963b795de5005c2054b700ba9304e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '1999'),
            ('C', '2005'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = 'db963b795de5005c2054b700ba9304e4'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Banking Regulation Act, 1949'' was amended in:',
    'The Banking Regulation Act, 1949 was comprehensively amended in 2020, which brought in the concept of a resolution framework for weak banks and strengthened the RBI''s powers.',
    'hard',
    'Standard Reference',
    null,
    '7d6f834d28bf7bbc1fc9f59c04a23391'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7d6f834d28bf7bbc1fc9f59c04a23391'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2009'),
            ('C', '2014'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '7d6f834d28bf7bbc1fc9f59c04a23391'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s Financial Inclusion Fund'' was created in:',
    'The Financial Inclusion Fund was created in 2019 under the RBI''s National Strategy for Financial Inclusion with an initial corpus contributed by the RBI, NABARD and SIDBI.',
    'hard',
    'Standard Reference',
    null,
    '3fc4087c9c6f00487090b68ac00afa82'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3fc4087c9c6f00487090b68ac00afa82'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2016'),
            ('C', '2019'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '3fc4087c9c6f00487090b68ac00afa82'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Debt Recovery Tribunals'' in India were created under the:',
    'The Recovery of Debts Due to Banks and Financial Institutions Act, 1994 provides for the establishment of Debt Recovery Tribunals for the recovery of secured debts of banks and financial institutions.',
    'medium',
    'Standard Reference',
    null,
    'ece45342319fba9aa731d7207e2b37bb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ece45342319fba9aa731d7207e2b37bb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Recovery of Debts Due to Banks and Financial Institutions Act, 1994'),
            ('B', 'Insolvency and Bankruptcy Code'),
            ('C', 'SARFAESI Act, 2002'),
            ('D', 'Companies Act')
           ) as v(label, option_text)
 where q.question_hash = 'ece45342319fba9aa731d7207e2b37bb'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    '''SARFAESI Act'' relates to:',
    'The Securitisation and Reconstruction of Financial Assets and Enforcement of Security Interest Act, 2002, allows the enforcement of security interest without the intervention of the courts.',
    'hard',
    'Standard Reference',
    null,
    'bb931d627a32c615567da1a936c8a30a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bb931d627a32c615567da1a936c8a30a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulation of the stock market'),
            ('B', 'Direct tax collection'),
            ('C', 'The functioning of the RBI'),
            ('D', 'Securitisation and reconstruction of financial assets and enforcement of security interest')
           ) as v(label, option_text)
 where q.question_hash = 'bb931d627a32c615567da1a936c8a30a'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s Ombudsman'' scheme for customers of banks was first introduced in:',
    'The first banking ombudsman was appointed in 1993 and the scheme was extended over time and consolidated under the RBI Ombudsman Scheme, 2006.',
    'hard',
    'Standard Reference',
    null,
    'c63345d50580eb8d87d5c22194dd95f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c63345d50580eb8d87d5c22194dd95f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '1993'),
            ('C', '2006'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'c63345d50580eb8d87d5c22194dd95f9'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Financial Ombudsman'' and the ''Securities and Exchange Board of India'' run an online dispute resolution portal called:',
    'The SEBI SCORES portal provides online dispute resolution for investors in the securities market and is one of the largest such platforms in the world.',
    'hard',
    'Standard Reference',
    null,
    '55b2aeaf7a6832b18c5d4a71de92fa59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '55b2aeaf7a6832b18c5d4a71de92fa59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SEBI SCORES'),
            ('B', 'NCH'),
            ('C', 'CEDES'),
            ('D', 'SAMAAN')
           ) as v(label, option_text)
 where q.question_hash = '55b2aeaf7a6832b18c5d4a71de92fa59'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Mutual funds'' in India are registered with:',
    'Mutual funds, including the Unit Trust of India and the AMCs, are registered with the Securities and Exchange Board of India under the SEBI Regulations.',
    'easy',
    'Standard Reference',
    null,
    '90212d92098b07a1f73421570c52196d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '90212d92098b07a1f73421570c52196d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NABARD'),
            ('B', 'The RBI'),
            ('C', 'The SEBI'),
            ('D', 'The IRDAI')
           ) as v(label, option_text)
 where q.question_hash = '90212d92098b07a1f73421570c52196d'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Unit Trust of India'' was established in:',
    'The Unit Trust of India was established in 1964 by the Unit Trust Act and is one of the oldest and largest mutual funds in the world.',
    'medium',
    'Standard Reference',
    null,
    '165b4ead339c6af1e2343b52a5310996'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '165b4ead339c6af1e2343b52a5310996'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1964'),
            ('B', '1966'),
            ('C', '1969'),
            ('D', '1963')
           ) as v(label, option_text)
 where q.question_hash = '165b4ead339c6af1e2343b52a5310996'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''SEBI Regulations on Insider Trading'' came into force in:',
    'The SEBI (Insider Trading) Regulations were notified in 2015 and came into force on 1 April 2016, replacing the earlier voluntary guidelines of 1992.',
    'hard',
    'Standard Reference',
    null,
    '5d86ef0c8b429049ea0caeff7175bc2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5d86ef0c8b429049ea0caeff7175bc2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '1992'),
            ('C', '2000'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '5d86ef0c8b429049ea0caeff7175bc2b'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Public Sector Banks'' in India are governed by the:',
    'Public sector banks are governed by the Banking Regulation Act, 1949, and the Banking Companies Act, 1949, though they are not companies in the private sector sense.',
    'hard',
    'Standard Reference',
    null,
    '9deedeac88d73233953e59b60324300e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9deedeac88d73233953e59b60324300e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State Government enactments'),
            ('B', 'Companies Act'),
            ('C', 'Banking Regulation Act, 1949'),
            ('D', 'SEBI Act')
           ) as v(label, option_text)
 where q.question_hash = '9deedeac88d73233953e59b60324300e'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Municipal Bonds'' and the ''Tax Free Bonds'' are issued by:',
    'Municipal bonds and tax free bonds are issued by state governments, statutory bodies like the LIC and the HUDCO, and also by the central government.',
    'medium',
    'Standard Reference',
    null,
    '77662f6e10734f9ef4e7e7ca99d68076'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '77662f6e10734f9ef4e7e7ca99d68076'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central government'),
            ('B', 'The state governments and the statutory bodies'),
            ('C', 'Only the Union government'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '77662f6e10734f9ef4e7e7ca99d68076'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s Vision'' and the ''Statement on Monetary Policy'' are:',
    'The RBI''s Vision, Mission and Core Values and the Statement on Monetary Policy are communications that articulate the bank''s approach and the rationale for its policy decisions.',
    'medium',
    'Standard Reference',
    null,
    'b6fd799dd4ad2fa7b4c2bc6a534d89bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6fd799dd4ad2fa7b4c2bc6a534d89bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Statutory requirements'),
            ('B', 'Communications of the central bank'),
            ('C', 'Judicial orders of the Supreme Court'),
            ('D', 'Recommendations of the Parliament')
           ) as v(label, option_text)
 where q.question_hash = 'b6fd799dd4ad2fa7b4c2bc6a534d89bf'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Financial Sector Literacy'' and the ''RBI''s School of Finance'' relate to:',
    'The RBI conducts financial literacy programmes through the School of Finance, the Financial Inclusion Fund and the National Strategy for Financial Inclusion to improve consumer awareness.',
    'medium',
    'Standard Reference',
    null,
    'b57969c8fad852392868cbbee5c67c01'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b57969c8fad852392868cbbee5c67c01'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Priority sector lending'),
            ('B', 'Payment systems'),
            ('C', 'Consumer education'),
            ('D', 'Money laundering')
           ) as v(label, option_text)
 where q.question_hash = 'b57969c8fad852392868cbbee5c67c01'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''National Housing Bank'' and the ''NHB'' refinance:',
    'The National Housing Bank refinance the housing loans of banks, housing finance companies and other institutions approved by the NHB.',
    'hard',
    'Standard Reference',
    null,
    'f6b24fc19560f3300c74688a475baa78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f6b24fc19560f3300c74688a475baa78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Crop loans'),
            ('B', 'Export credit'),
            ('C', 'Micro finance'),
            ('D', 'Housing loans of banks and housing finance companies')
           ) as v(label, option_text)
 where q.question_hash = 'f6b24fc19560f3300c74688a475baa78'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''SIDBI'' and the ''NABARD'' are:',
    'SIDBI and NABARD are apex institutions for their respective sectors and function under the overall supervision of the RBI.',
    'medium',
    'Standard Reference',
    null,
    '44b5c913a83be5d2600a90023fd63d54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '44b5c913a83be5d2600a90023fd63d54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Apex institutions under the RBI''s umbrella'),
            ('B', 'Independent regulators'),
            ('C', 'Private sector banks'),
            ('D', 'RBI subsidiaries')
           ) as v(label, option_text)
 where q.question_hash = '44b5c913a83be5d2600a90023fd63d54'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s Bank Supervision'' is conducted through:',
    'The Department of Supervision of the RBI is responsible for the supervision and regulation of banks, non-banking financial companies and other entities in the financial system.',
    'hard',
    'Standard Reference',
    null,
    '8df12ccaae8c83f77556b58e8c1cebaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8df12ccaae8c83f77556b58e8c1cebaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Office of the Deputy Governor'),
            ('B', 'The Department of Supervision'),
            ('C', 'The Monetary Policy Department'),
            ('D', 'The Financial Markets Department')
           ) as v(label, option_text)
 where q.question_hash = '8df12ccaae8c83f77556b58e8c1cebaf'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    '''Anti-Money Laundering'' in India is governed principally by the:',
    'The Prevention of Money Laundering Act, 2002, as amended in 2009, is the principal statute for the prevention of money laundering and the financing of terrorism in India.',
    'medium',
    'Standard Reference',
    null,
    '6eb9a6bb70b4d6760ebb0435678671da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6eb9a6bb70b4d6760ebb0435678671da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Insolvency and Bankruptcy Code'),
            ('B', 'The Indian Contract Act'),
            ('C', 'The Prevention of Money Laundering Act, 2002'),
            ('D', 'The Companies Act, 2013')
           ) as v(label, option_text)
 where q.question_hash = '6eb9a6bb70b4d6760ebb0435678671da'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Financial Action Task Force'' on money laundering is headquartered at:',
    'The FATF, an intergovernmental body, is based in Paris; the Egmont Group, the main informal network of financial intelligence units, is hosted in The Hague.',
    'hard',
    'Standard Reference',
    null,
    '5bdf1c6747ee77af65b6adc3d7ad562c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5bdf1c6747ee77af65b6adc3d7ad562c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva'),
            ('B', 'Paris'),
            ('C', 'Vienna'),
            ('D', 'New York')
           ) as v(label, option_text)
 where q.question_hash = '5bdf1c6747ee77af65b6adc3d7ad562c'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Income Tax Act'' was enacted in:',
    'The Income Tax Act, 1961 replaced the Income Tax Act of 1922 and remains the principal statute governing direct taxation.',
    'easy',
    'Standard Reference',
    null,
    '189442adea9c50c444bf3a274db6dfe1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '189442adea9c50c444bf3a274db6dfe1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1961'),
            ('B', '1962'),
            ('C', '1960'),
            ('D', '1956')
           ) as v(label, option_text)
 where q.question_hash = '189442adea9c50c444bf3a274db6dfe1'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''CAG Act'' was amended in:',
    'The CAG (DPC) Act, 1996 gave the CAG statutory status and expanded its audit mandate over the autonomous bodies and the bodies substantially financed by the government.',
    'hard',
    'Standard Reference',
    null,
    'fd437db6c6ebedb67bdce470c1d34a40'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fd437db6c6ebedb67bdce470c1d34a40'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2011'),
            ('B', '1996'),
            ('C', '2000'),
            ('D', '2006')
           ) as v(label, option_text)
 where q.question_hash = 'fd437db6c6ebedb67bdce470c1d34a40'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Indian Contract Act'' and the ''Indian Partnership Act'' relate to:',
    'The Indian Contract Act, 1872 and the Indian Partnership Act, 1932 are among the oldest statutes of substantive law still in force.',
    'easy',
    'Standard Reference',
    null,
    '65741476f7e8af90da022434a88aaa1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '65741476f7e8af90da022434a88aaa1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Banking regulation'),
            ('B', 'Taxation'),
            ('C', 'Company law'),
            ('D', 'Contract and partnership law')
           ) as v(label, option_text)
 where q.question_hash = '65741476f7e8af90da022434a88aaa1f'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s regulation of NBFC microfinance companies'' requires them to:',
    'Microfinance companies must ensure that at least 75 per cent of their credit is disbursed to the priority sector, that is, the poor and weaker sections.',
    'hard',
    'Standard Reference',
    null,
    '842e8e0f36b9af203411e71606386043'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '842e8e0f36b9af203411e71606386043'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Disburse at least 75 per cent of the credit to the priority sector'),
            ('B', 'Hold 25 per cent of the credit as reserves with the RBI'),
            ('C', 'Restrict lending to the poor'),
            ('D', 'Accept public deposits')
           ) as v(label, option_text)
 where q.question_hash = '842e8e0f36b9af203411e71606386043'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''SEBI''s Corporate Governance Voluntary Guidelines, 2009'' are:',
    'The corporate governance voluntary guidelines issued in 2009 contain recommendations for listed companies which voluntarily adopt them for the benefit of stakeholders.',
    'medium',
    'Standard Reference',
    null,
    '2a21d804d8a592ff820f6af74e5ea363'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2a21d804d8a592ff820f6af74e5ea363'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A guideline for the unlisted companies'),
            ('B', 'Mandatory for all listed companies'),
            ('C', 'Voluntary guidelines'),
            ('D', 'A statutory rule')
           ) as v(label, option_text)
 where q.question_hash = '2a21d804d8a592ff820f6af74e5ea363'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''PFRDA'' and the ''National Pension System'' allow investment in:',
    'Under the pension regulations, the funds can invest in government securities and a limited range of corporate and other prescribed debt instruments, but not in real estate or equities directly.',
    'hard',
    'Standard Reference',
    null,
    'c5fc4f767bc5f2eaf390dafc6b5ff6e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c5fc4f767bc5f2eaf390dafc6b5ff6e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Government securities and prescribed debt instruments'),
            ('B', 'Only equity shares'),
            ('C', 'Only real estate'),
            ('D', 'Only government securities')
           ) as v(label, option_text)
 where q.question_hash = 'c5fc4f767bc5f2eaf390dafc6b5ff6e9'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s Prompt Corrective Action'' framework applies to:',
    'The PCA framework is applicable to scheduled private sector banks and cooperative banks and prescribes escalating regulatory action based on the capital, asset quality and leverage indicators.',
    'hard',
    'Standard Reference',
    null,
    '12cf500d4dbd58b00c4ae0ed62dd9bd0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '12cf500d4dbd58b00c4ae0ed62dd9bd0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the foreign banks'),
            ('B', 'Public sector banks only'),
            ('C', 'Scheduled private sector banks and cooperative banks'),
            ('D', 'All banks including small finance banks')
           ) as v(label, option_text)
 where q.question_hash = '12cf500d4dbd58b00c4ae0ed62dd9bd0'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''RBI''s Universal Risk Based'' and the ''Basel III capital adequacy'' norms for banks were implemented in India from:',
    'The RBI phased in the Basel III capital adequacy norms for scheduled commercial banks from 1 April 2013, with full compliance by 1 April 2019 for the capital conservation buffer.',
    'hard',
    'Standard Reference',
    null,
    '55126455bfdb8c1b2117394ee102ec2c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '55126455bfdb8c1b2117394ee102ec2c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2013'),
            ('B', '2016'),
            ('C', '2020'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '55126455bfdb8c1b2117394ee102ec2c'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Financial Stability Report'' and the ''Trend and Progress of Banking in India'' are published by:',
    'The RBI publishes the Financial Stability Report and the annual Trend and Progress of Banking in India report, which presents the performance of the banking sector.',
    'medium',
    'Standard Reference',
    null,
    '8851458ac5cd52270d0d244c7e092c20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8851458ac5cd52270d0d244c7e092c20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The CAG'),
            ('B', 'The SEBI'),
            ('C', 'The Finance Ministry'),
            ('D', 'The RBI')
           ) as v(label, option_text)
 where q.question_hash = '8851458ac5cd52270d0d244c7e092c20'
on conflict (question_id, label) do nothing;

-- economy | rbi-and-financial-regulation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'rbi-and-financial-regulation'),
    'The ''Licensing and regulation'' of the banks in India is the responsibility of:',
    'The RBI licenses and supervises banks, NBFCs and other entities under the Banking Regulation Act, 1949, and the RBI Act, 1934.',
    'easy',
    'Standard Reference',
    null,
    '1cdf8e4d87bdd3a9a9fa33b9ef2f5c97'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1cdf8e4d87bdd3a9a9fa33b9ef2f5c97'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RBI'),
            ('B', 'The SEBI'),
            ('C', 'The NABARD'),
            ('D', 'The Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '1cdf8e4d87bdd3a9a9fa33b9ef2f5c97'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Minimum Support Price'' in India is recommended by:',
    'The CACP, a body of the Ministry of Agriculture, recommends the MSP for the 22 mandated crops and the Fair and Reasonable Price for the sugarcane.',
    'easy',
    'Standard Reference',
    null,
    'cac6306f4b7f21e79ed7616f0efc1f26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cac6306f4b7f21e79ed7616f0efc1f26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The NITI Aayog'),
            ('B', 'The Finance Commission'),
            ('C', 'The Commission for Agricultural Costs and Prices'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'cac6306f4b7f21e79ed7616f0efc1f26'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The number of crops for which the MSP is announced is:',
    'The MSP is announced for 22 mandated crops, of which 14 are the Kharif, 6 the Rabi and 2 the commercial crops, and the sugarcane has the FRP.',
    'medium',
    'Standard Reference',
    null,
    '9aaffc423bad399b86fd0d3c11271091'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9aaffc423bad399b86fd0d3c11271091'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '14'),
            ('B', '45'),
            ('C', '28'),
            ('D', '22')
           ) as v(label, option_text)
 where q.question_hash = '9aaffc423bad399b86fd0d3c11271091'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The MSP is calculated on the basis of the:',
    'The CACP recommends the MSP based on the cost of production, and the A2 plus the FL and the C2 plus the FL costs are the basis of the recommendation.',
    'hard',
    'Standard Reference',
    null,
    '6bfc65e2f91172e24fe37ed5db141129'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6bfc65e2f91172e24fe37ed5db141129'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The wholesale price index'),
            ('B', 'The cost of production and the cost of the farm machinery'),
            ('C', 'The market price of the previous year'),
            ('D', 'The international price')
           ) as v(label, option_text)
 where q.question_hash = '6bfc65e2f91172e24fe37ed5db141129'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Swaminathan Commission'' recommended:',
    'The National Commission on Farmers headed by M.S. Swaminathan recommended that at least 25 per cent of the gross cropped area should be under food crops and at least 50 per cent of the net sown area should be irrigated.',
    'hard',
    'Standard Reference',
    null,
    '584c511609a3900aeceabf3ee6581491'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '584c511609a3900aeceabf3ee6581491'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A minimum of 50 per cent of the net sown area under irrigation'),
            ('B', 'A minimum of 25 per cent of the gross cropped area under food crops'),
            ('C', 'A minimum of 75 per cent of the area under the high yielding varieties'),
            ('D', 'A minimum of 30 per cent under the pulses')
           ) as v(label, option_text)
 where q.question_hash = '584c511609a3900aeceabf3ee6581491'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Rampal Committee'' was related to:',
    'The Rampal Committee of 2015 recommended the reform of the MSP, the procurement and the buffer stock management and it was critical of the open-ended procurement.',
    'hard',
    'Standard Reference',
    null,
    '2df3be8a8886d435d06726d27cda7666'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2df3be8a8886d435d06726d27cda7666'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fertiliser subsidy'),
            ('B', 'The crop insurance'),
            ('C', 'The irrigation'),
            ('D', 'The minimum support price and the procurement and the buffer stocks')
           ) as v(label, option_text)
 where q.question_hash = '2df3be8a8886d435d06726d27cda7666'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''FCI'' was established in:',
    'The Food Corporation of India was set up in January 1965 and it handles the procurement, the storage, the transportation and the distribution of the foodgrains.',
    'easy',
    'Standard Reference',
    null,
    'f76616c15928647114349cfa9dad0b4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f76616c15928647114349cfa9dad0b4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1965'),
            ('B', '1955'),
            ('C', '1970'),
            ('D', '1947')
           ) as v(label, option_text)
 where q.question_hash = 'f76616c15928647114349cfa9dad0b4e'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''MSP'' and the ''procurement'' and the ''FCI'':',
    'The FCI procures the wheat and the paddy at the MSP from the surplus states and distributes them through the Public Distribution System in the deficit states.',
    'medium',
    'Standard Reference',
    null,
    '3ccf9587b70126b2e6f3257c0f69e9f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3ccf9587b70126b2e6f3257c0f69e9f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FCI does not procure for the buffer stocks'),
            ('B', 'The MSP is not paid to the farmers'),
            ('C', 'The FCI procures the foodgrains at the MSP in the surplus states and distributes them in the deficit states'),
            ('D', 'The FCI procures in the deficit states')
           ) as v(label, option_text)
 where q.question_hash = '3ccf9587b70126b2e6f3257c0f69e9f4'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''buffer stock'' of the foodgrains in India is kept by:',
    'The buffer stock of the foodgrains is kept by the FCI and the State Government agencies, and the Centre bears the cost of the buffer stock for the rice and the wheat.',
    'medium',
    'Standard Reference',
    null,
    '02d64f449ba9847da2dbaba5bcdcc4ee'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '02d64f449ba9847da2dbaba5bcdcc4ee'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FCI and the State Government agencies'),
            ('B', 'The NABARD only'),
            ('C', 'The private traders'),
            ('D', 'The state governments only')
           ) as v(label, option_text)
 where q.question_hash = '02d64f449ba9847da2dbaba5bcdcc4ee'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''PDS'' in India is:',
    'The PDS supplies the foodgrains to the households at the subsidised prices through the Fair Price Shops, and the TPDS was the earlier household-oriented scheme that was reformed into the PDS.',
    'easy',
    'Standard Reference',
    null,
    'e43e126320aef86ead13610f28c783dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e43e126320aef86ead13610f28c783dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Primary Distribution System of the fertiliser'),
            ('B', 'The Private Distribution System'),
            ('C', 'The Postal Distribution System'),
            ('D', 'The Public Distribution System of the foodgrains through the fair price shops')
           ) as v(label, option_text)
 where q.question_hash = 'e43e126320aef86ead13610f28c783dd'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''A2'' and the ''FL'' and the ''C2'' costs in the MSP calculation:',
    'The A2 covers the paid out costs like the seeds and the fertilisers, the A2 plus the FL adds the imputed value of the family labour and the C2 plus the FL adds the imputed land rent and the capital interest.',
    'hard',
    'Standard Reference',
    null,
    'c6291b4c054fa788b52ba3461414fa0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c6291b4c054fa788b52ba3461414fa0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the import and the export costs'),
            ('B', 'The A2 covers the paid out costs, the A2 plus the FL the family labour and the C2 plus the FL the full cost including the rental and the interest'),
            ('C', 'The A2 is the full cost and the C2 is the paid out cost'),
            ('D', 'They are the retail and the wholesale prices')
           ) as v(label, option_text)
 where q.question_hash = 'c6291b4c054fa788b52ba3461414fa0e'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''agricultural marketing'' and the ''APMC'':',
    'The Agricultural Produce Market Committee is the regulated market mandi under the state Agricultural Produce Market Regulation Acts, and the 2020 laws proposed the reforms of the APMC and the e-NAM.',
    'medium',
    'Standard Reference',
    null,
    'f7d47814091173a01d5b90f00fc6fd8d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f7d47814091173a01d5b90f00fc6fd8d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The APMC is the fertiliser company'),
            ('B', 'The APMC is the agricultural university'),
            ('C', 'The APMC is the regulated market where the agricultural produce is sold under the state regulations'),
            ('D', 'The APMC is the crop insurance body')
           ) as v(label, option_text)
 where q.question_hash = 'f7d47814091173a01d5b90f00fc6fd8d'
on conflict (question_id, label) do nothing;

-- economy | agriculture | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''PM-KISAN'' Samman Nidhi:',
    'The PM-KISAN provides Rs. 6,000 a year in three equal instalments of Rs. 2,000 to the landholding farmer families, with the direct benefit transfer to the bank account.',
    'easy',
    'Standard Reference',
    null,
    'eca169d909b5e2421350e5ed5847bd1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eca169d909b5e2421350e5ed5847bd1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides Rs. 2,000 a year'),
            ('B', 'Provides Rs. 10,000 a year'),
            ('C', 'Provides Rs. 4,000 a year'),
            ('D', 'Provides Rs. 6,000 a year in three instalments to the landholding farmer families')
           ) as v(label, option_text)
 where q.question_hash = 'eca169d909b5e2421350e5ed5847bd1a'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Interest Subvention Scheme'' for the short term crop credit:',
    'The Interest Subvention Scheme provides the 2 per cent subvention for the short term crop credit up to Rs. 3 lakh, making the effective interest rate 4 per cent for the timely repaying farmers.',
    'medium',
    'Standard Reference',
    null,
    '888430d323e7988091135778bd7c4473'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '888430d323e7988091135778bd7c4473'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Provides the 2 per cent interest subvention for the crop loans up to Rs. 3 lakh'),
            ('B', 'Provides Rs. 6,000 of income support'),
            ('C', 'Provides the loan waiver'),
            ('D', 'Provides the insurance premium')
           ) as v(label, option_text)
 where q.question_hash = '888430d323e7988091135778bd7c4473'
on conflict (question_id, label) do nothing;

-- economy | agriculture | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Pradhan Mantri Fasal Bima Yojana'' was launched in:',
    'The PM Fasal Bima Yojana was launched in the Kharif of 2016 and it provides the crop insurance cover based on the technology and the yield data.',
    'medium',
    'Standard Reference',
    null,
    '177edc8c2d2b61c422d83038176f1ffd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '177edc8c2d2b61c422d83038176f1ffd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2019'),
            ('C', '2016'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = '177edc8c2d2b61c422d83038176f1ffd'
on conflict (question_id, label) do nothing;

-- economy | agriculture | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'agriculture'),
    'The ''Sole cultivator'' or the ''modified sole cultivator'' in the ''custom hiring centres'':',
    'The custom hiring centres provide the farm machinery on hire to the small and the marginal farmers at the subsidised rates and the government supports them with the 40 per cent subsidy.',
    'hard',
    'Standard Reference',
    null,
    '876cc14e34ea22b3a969cf466cc97b26'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '876cc14e34ea22b3a969cf466cc97b26'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the cold storages'),
            ('B', 'Are the farm machinery hubs that provide the machines on hire to the small farmers'),
            ('C', 'Are the seed storage depots'),
            ('D', 'Are the fertiliser plants')
           ) as v(label, option_text)
 where q.question_hash = '876cc14e34ea22b3a969cf466cc97b26'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Golden Quadrilateral'' of the highways:',
    'The Golden Quadrilateral was the super expressway project connecting the four metros of Delhi, Kolkata, Mumbai and Chennai and it was later subsumed in the North-South and the East-West corridors.',
    'medium',
    'Standard Reference',
    null,
    '963d1f2daf89bde12f7f31275534df52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '963d1f2daf89bde12f7f31275534df52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the super expressway project of the Delhi, Kolkata, Mumbai and Chennai'),
            ('B', 'Is the four agro-climatic zones'),
            ('C', 'Is the four major ports'),
            ('D', 'Is the four rivers of the Ganga')
           ) as v(label, option_text)
 where q.question_hash = '963d1f2daf89bde12f7f31275534df52'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''North-South East-West corridors'':',
    'The North-South East-West corridor project, of about 8,000 km, was the largest highway project of India and it was later merged with the Golden Quadrilateral.',
    'medium',
    'Standard Reference',
    null,
    'a3c8443885b730668b0423c768a05c02'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a3c8443885b730668b0423c768a05c02'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are the four ports of the Delhi'),
            ('B', 'Are the 8,000 km expressways of the Golden Quadrilateral'),
            ('C', 'Are the four metro rail projects'),
            ('D', 'Are the inland waterways')
           ) as v(label, option_text)
 where q.question_hash = 'a3c8443885b730668b0423c768a05c02'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Which of the following statements is/are correct in relation to the Sagar?',
    'The Setu Jayanti project of the four-lane divided highways was one of the Golden Quadrilateral''s components, along with the 1,000 km of the expressways and the 2,000 km of the road upgrade.',
    'hard',
    'Standard Reference',
    null,
    '675b4cca0da13a9e0463a9f26794fbd2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '675b4cca0da13a9e0463a9f26794fbd2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The metro rail of the Delhi'),
            ('B', 'The waterway project'),
            ('C', 'The port project'),
            ('D', 'The Setu Jayanti project of the four-lane divided highways')
           ) as v(label, option_text)
 where q.question_hash = '675b4cca0da13a9e0463a9f26794fbd2'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Bharatmala Pariyojana'':',
    'The Bharatmala Pariyojana is the project of the national highway network of about 6,000 km that is being implemented by the National Highways Authority of India.',
    'medium',
    'Standard Reference',
    null,
    'e14b0a9a627778625cfd47bf830bf4e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e14b0a9a627778625cfd47bf830bf4e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the metro rail project'),
            ('B', 'Is the industrial corridor project of the north'),
            ('C', 'Is the project of the national highways of about 6,000 km under the highway ministry'),
            ('D', 'Is the inland waterway project')
           ) as v(label, option_text)
 where q.question_hash = 'e14b0a9a627778625cfd47bf830bf4e4'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Sagarmala'' project:',
    'The Sagarmala programme seeks to accelerate the port-led development by modernising the ports and strengthening the connectivity through the rail, the road and the inland waterways.',
    'medium',
    'Standard Reference',
    null,
    'fe2687d5208aed5a39a09f7ae7a6061a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fe2687d5208aed5a39a09f7ae7a6061a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the highway project'),
            ('B', 'Is the inland waterway only'),
            ('C', 'Is the airport modernisation'),
            ('D', 'Is the port-led logistics development programme')
           ) as v(label, option_text)
 where q.question_hash = 'fe2687d5208aed5a39a09f7ae7a6061a'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''PM Gati Shakti'' National Master Plan:',
    'The PM Gati Shakti National Master Plan has 14 sectors, 20 key multimodal corridors and about 100 projects to be integrated with the logistics and the industrial development.',
    'medium',
    'Standard Reference',
    null,
    '7a7ef0cb4d8e432738d56719a080a2a6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7a7ef0cb4d8e432738d56719a080a2a6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has only the highways'),
            ('B', 'Has 14 sectors with 20 key corridors'),
            ('C', 'Has 7 sectors with 10 corridors'),
            ('D', 'Has 21 sectors')
           ) as v(label, option_text)
 where q.question_hash = '7a7ef0cb4d8e432738d56719a080a2a6'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''UDAN'' scheme:',
    'The UDAN, the Udaan or the Regional Connectivity Scheme, was launched in 2016 to connect the underserved and the unconnected airports with the small airports.',
    'medium',
    'Standard Reference',
    null,
    '8cd44c7f94108b4ecf435c366cb7adea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8cd44c7f94108b4ecf435c366cb7adea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the regional connectivity scheme of the civil aviation ministry'),
            ('B', 'Is the highway scheme'),
            ('C', 'Is the shipping subsidy'),
            ('D', 'Is the port dredging project')
           ) as v(label, option_text)
 where q.question_hash = '8cd44c7f94108b4ecf435c366cb7adea'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Vande Bharat'' and the ''2023'':',
    'The Vande Bharat, the semi-high speed intercity train service of the Indian Railways, was launched with the Vande Bharat Express on 30 January 2023.',
    'easy',
    'Standard Reference',
    2023,
    '3d5ee24c28e2ad0f48dc4c0843d6183e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3d5ee24c28e2ad0f48dc4c0843d6183e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a metro line'),
            ('B', 'It is a freight corridor'),
            ('C', 'It is the semi-high speed intercity train service of the Indian Railways'),
            ('D', 'It is a coastal shipping service')
           ) as v(label, option_text)
 where q.question_hash = '3d5ee24c28e2ad0f48dc4c0843d6183e'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Amrit Bharat Station Scheme'':',
    'The Amrit Bharat Station Scheme is the redevelopment of the railway stations with the modern amenities and the airport-like facilities and the model stations are the Dadar and the Nagpur in Mumbai.',
    'hard',
    'Standard Reference',
    null,
    '4a99a43a3b6ae7b0929c193c194f20ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4a99a43a3b6ae7b0929c193c194f20ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the metro project'),
            ('B', 'Is the port project'),
            ('C', 'Is the modernisation of the railway stations with the amenities of the airport on the model of the Dadar and the Nagpur stations'),
            ('D', 'Is the freight corridor project')
           ) as v(label, option_text)
 where q.question_hash = '4a99a43a3b6ae7b0929c193c194f20ba'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Which of the following is correct in the case of the Indian Railway?',
    'The Konkan Railway, a 760 km line along the coast of Maharashtra, Goa and Karnataka, was the most difficult project of the Indian Railways and it was opened in 1998.',
    'medium',
    'Standard Reference',
    null,
    '84d8fe73d2232ab2cceb62bca69ee65e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '84d8fe73d2232ab2cceb62bca69ee65e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Konkan Railway runs along the coast of Maharashtra, Goa and Karnataka'),
            ('B', 'The Konkan Railway is in the Himalayan region'),
            ('C', 'The Konkan Railway is the freight corridor of the coal'),
            ('D', 'The Konkan Railway is in the Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '84d8fe73d2232ab2cceb62bca69ee65e'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Kashmir railway runs from Banihal to Katra and it was:',
    'The Kashmir railway, the Katra-Banihal section, was inaugurated in 2014 and the extension to the Srinagar-Banohal section was expected to be completed.',
    'hard',
    'Standard Reference',
    null,
    '3891c607a47e4cd9209d4000d76f20b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3891c607a47e4cd9209d4000d76f20b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'in Tamil Nadu'),
            ('B', 'a freight line of the coal'),
            ('C', 'in the Rajasthan'),
            ('D', 'extended to Banohal to Srinagar')
           ) as v(label, option_text)
 where q.question_hash = '3891c607a47e4cd9209d4000d76f20b1'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Eastern Dedicated Freight Corridor'':',
    'The Eastern Dedicated Freight Corridor runs from Ludhiana to Sonnagar with the route of about 1,800 km and it is the first of the three dedicated freight corridors.',
    'hard',
    'Standard Reference',
    null,
    '6bbcb9237b029f60a76ac81a78c91bf1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6bbcb9237b029f60a76ac81a78c91bf1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Runs only in the Western Ghats'),
            ('B', 'Runs from Ludhiana to Sonnagar and it is the first freight corridor on the high-speed rail'),
            ('C', 'Runs from Delhi to Mumbai'),
            ('D', 'Runs from Chennai to Kolkata')
           ) as v(label, option_text)
 where q.question_hash = '6bbcb9237b029f60a76ac81a78c91bf1'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The dedicated freight corridor allows:',
    'The dedicated freight corridor is designed for the freight trains at the speed of about 100 km an hour and it decongests the busy passenger routes.',
    'hard',
    'Standard Reference',
    null,
    'e89ed8a99090416594b81b159b203433'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e89ed8a99090416594b81b159b203433'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '160 km an hour'),
            ('B', '60 km an hour'),
            ('C', 'a passenger line'),
            ('D', 'the trains at the speed of 100 km an hour')
           ) as v(label, option_text)
 where q.question_hash = 'e89ed8a99090416594b81b159b203433'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Delhi Metro Rail Corporation is:',
    'The Delhi Metro Rail Corporation is a joint venture of the Government of India and the Government of the National Capital Territory of Delhi and it was registered in 1991.',
    'medium',
    'Standard Reference',
    null,
    '98f964850ae03a0bd202ad4b36ae3d0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '98f964850ae03a0bd202ad4b36ae3d0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a state undertaking of the Haryana'),
            ('B', 'a project of the NITI Aayog'),
            ('C', 'a joint venture of the Government of India and the Government of the Delhi'),
            ('D', 'a private company')
           ) as v(label, option_text)
 where q.question_hash = '98f964850ae03a0bd202ad4b36ae3d0c'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Kochi Metro'':',
    'The Kochi Metro, the first metro rail system in Kerala, was opened in 2017 and it is the first and the only one in the state.',
    'medium',
    'Standard Reference',
    null,
    'fb6e2b52f109220dee0a4ada9b5a1b37'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fb6e2b52f109220dee0a4ada9b5a1b37'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the first and the only metro rail in Kerala and it was opened in 2017'),
            ('B', 'Was the first metro of the country'),
            ('C', 'Is in Tamil Nadu'),
            ('D', 'Is a monorail')
           ) as v(label, option_text)
 where q.question_hash = 'fb6e2b52f109220dee0a4ada9b5a1b37'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Namma Metro'' of Bengaluru:',
    'The Namma Metro, the Bengaluru metro, was the first in India to use an underground corridor and the Purple Line, 37 km long, was opened in 2011.',
    'hard',
    'Standard Reference',
    null,
    '518d14675e3151a555f8094ee18baec9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '518d14675e3151a555f8094ee18baec9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is a monorail'),
            ('B', 'Is the metro of the Bengaluru and it was the first in India to use the longest underground corridor'),
            ('C', 'Is the metro of the Mumbai'),
            ('D', 'Was opened in 2014')
           ) as v(label, option_text)
 where q.question_hash = '518d14675e3151a555f8094ee18baec9'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'In the context of the power sector, which of the following is correct?',
    'The thermal power, the coal, the gas and the diesel, still dominates the installed capacity of India even as the renewable capacity has grown rapidly.',
    'medium',
    'Standard Reference',
    null,
    'f9bb43388521192bdaade397acba9f6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f9bb43388521192bdaade397acba9f6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The thermal power still dominates the installed capacity in India despite the growth of the renewables'),
            ('B', 'The renewables dominate the installed capacity'),
            ('C', 'The nuclear is the largest'),
            ('D', 'The hydro is the largest')
           ) as v(label, option_text)
 where q.question_hash = 'f9bb43388521192bdaade397acba9f6f'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Peak Demand'' of the power in India:',
    'The peak power demand of India crossed the 250 GW mark in 2024, and the country became the third largest in the world in the generation and the consumption of the energy.',
    'medium',
    'Standard Reference',
    2024,
    'e704b11ce78e997fbb6824c7766b90f9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e704b11ce78e997fbb6824c7766b90f9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is about 50 GW'),
            ('B', 'Is about 100 GW'),
            ('C', 'Is about 400 GW'),
            ('D', 'Crossed the 250 GW mark in 2024')
           ) as v(label, option_text)
 where q.question_hash = 'e704b11ce78e997fbb6824c7766b90f9'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''National Green Hydrogen Mission'':',
    'The National Green Hydrogen Mission, approved in January 2023, has an outlay of Rs. 19,744 crore with the target of a minimum of 5 million tonnes of the annual green hydrogen production by 2030.',
    'medium',
    'Standard Reference',
    2023,
    '48f17203a4887a41bd174c318a4debc7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '48f17203a4887a41bd174c318a4debc7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Covers only the nuclear energy'),
            ('B', 'Is a state scheme'),
            ('C', 'Has an outlay of Rs. 19,744 crore for the green hydrogen and the associated infrastructure'),
            ('D', 'Has an outlay of Rs. 1,974 crore')
           ) as v(label, option_text)
 where q.question_hash = '48f17203a4887a41bd174c318a4debc7'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''PM Surya Ghar Muft Bijli Yojana'':',
    'The PM Surya Ghar Muft Bijli Yojana, launched in February 2024, has an outlay of Rs. 75,021 crore and it provides the rooftop solar with a maximum of 300 units per household.',
    'medium',
    'Standard Reference',
    2024,
    '7f8426d6c4c7fec23581eccfdb059110'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7f8426d6c4c7fec23581eccfdb059110'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a state scheme of the Gujarat'),
            ('B', 'Has an outlay of Rs. 75,021 crore for the rooftop solar in one crore households'),
            ('C', 'Has an outlay of Rs. 7,502 crore'),
            ('D', 'Covers the smart meters only')
           ) as v(label, option_text)
 where q.question_hash = '7f8426d6c4c7fec23581eccfdb059110'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Consider the following statements. Which of them is correct with regard to the Electricity?',
    'The Green Energy Corridor, the national programme of about 50 GW of the renewable transmission, was launched in 2017 with the objective of the evacuation of the renewable energy.',
    'hard',
    'Standard Reference',
    null,
    'a9375f0fae0d57e2c2dfc8a7b437f581'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a9375f0fae0d57e2c2dfc8a7b437f581'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the gas pipeline of the west'),
            ('B', 'Is the transmission project of about 50 GW of the renewable energy'),
            ('C', 'Is the metro of the Delhi'),
            ('D', 'Is the coal corridor of the east')
           ) as v(label, option_text)
 where q.question_hash = 'a9375f0fae0d57e2c2dfc8a7b437f581'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The spectrum of the 5G was:',
    'The spectrum of the 5G was auctioned in 2021 and the government got a revenue of about Rs. 43,949 crore, and the licences were for 25 years.',
    'hard',
    'Standard Reference',
    2021,
    '8b511709954c802033aefca8385ffede'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8b511709954c802033aefca8385ffede'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'auctioned in 2021 with a revenue of about Rs. 43,949 crore'),
            ('B', 'launched in 2015'),
            ('C', 'only in the private sector'),
            ('D', 'in 2005')
           ) as v(label, option_text)
 where q.question_hash = '8b511709954c802033aefca8385ffede'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Telecom Regulatory Authority of India was established in 1997 and it became:',
    'The TRAI was established in October 1997 and it became a statutory body in 2003 with the Telecom Regulatory Authority of India Act.',
    'hard',
    'Standard Reference',
    null,
    '6fafa5258756c406929ce781c7165eaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6fafa5258756c406929ce781c7165eaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'statutory in 1995'),
            ('B', 'established in 2003'),
            ('C', 'a ministry'),
            ('D', 'a statutory body in 2003')
           ) as v(label, option_text)
 where q.question_hash = '6fafa5258756c406929ce781c7165eaa'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''BharatNet'' project:',
    'The BharatNet, the National Optical Fibre or NOFN project, aims to connect the more than 2 lakh villages with the optical fibre and it is the largest rural telecom project.',
    'medium',
    'Standard Reference',
    null,
    'c3b304816daeae317866cff1fcc08a1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c3b304816daeae317866cff1fcc08a1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the mobile tower project'),
            ('B', 'Is the submarine cable project'),
            ('C', 'Is the national optical fibre project to connect the villages'),
            ('D', 'Is the satellite project')
           ) as v(label, option_text)
 where q.question_hash = 'c3b304816daeae317866cff1fcc08a1f'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The UIDAI is a statutory body created:',
    'The Unique Identification Authority of India became a statutory body under the Aadhaar (Targeted Delivery of Benefits and Other Services) Act of 2016 and it is under the MeitY.',
    'medium',
    'Standard Reference',
    null,
    '998bebadcee5d120bf1d45bb8c80b778'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '998bebadcee5d120bf1d45bb8c80b778'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'under the RBI'),
            ('B', 'in 2005'),
            ('C', 'by the Aadhaar Act, 2016'),
            ('D', 'a ministry')
           ) as v(label, option_text)
 where q.question_hash = '998bebadcee5d120bf1d45bb8c80b778'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The Open Network for Digital Commerce is:',
    'The ONDC is a network of interconnected digital commerce platforms with an interoperable protocol and it is aimed at the decentralisation of the digital commerce.',
    'hard',
    'Standard Reference',
    null,
    '0ca168eab15db1693c4ad0c19049c930'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0ca168eab15db1693c4ad0c19049c930'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a spectrum auction'),
            ('B', 'an interoperable protocol for the digital commerce'),
            ('C', 'a state electricity board'),
            ('D', 'a digital payments protocol of the RBI')
           ) as v(label, option_text)
 where q.question_hash = '0ca168eab15db1693c4ad0c19049c930'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''Digital Public Infrastructure'':',
    'The Digital Public Infrastructure is the framework of the interoperable digital public goods, the digital identity, the payments and the data exchange, and it was a key outcome of the G20 presidency.',
    'medium',
    'Standard Reference',
    null,
    '4cca86a040e41b9ddf8e55f09e74b6aa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4cca86a040e41b9ddf8e55f09e74b6aa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a private sector platform'),
            ('B', 'Is a state e-governance project'),
            ('C', 'Is the 5G network'),
            ('D', 'Is the framework of the interoperable digital public goods like the digital identity, the payments and the data exchange')
           ) as v(label, option_text)
 where q.question_hash = '4cca86a040e41b9ddf8e55f09e74b6aa'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The ''account aggregator'' in India:',
    'The Account Aggregator, with the Sahamati as the financial information repository, enables the consent-based sharing of the financial information of the citizens.',
    'hard',
    'Standard Reference',
    null,
    '920109d32751ae5423dc3856fe000c52'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '920109d32751ae5423dc3856fe000c52'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the financial information repository based system for the consent-based financial data sharing'),
            ('B', 'Is a payment system'),
            ('C', 'Is a credit information company'),
            ('D', 'Is a digital identity provider')
           ) as v(label, option_text)
 where q.question_hash = '920109d32751ae5423dc3856fe000c52'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Which of the following statements regarding the Nandan Nilekani is correct?',
    'Nandan Nilekani, the co-founder of the Infosys, founded the EkStep and he has been a promoter of the digital public infrastructure of India.',
    'hard',
    'Standard Reference',
    null,
    '4228fedacc220d15d00509738460ac8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4228fedacc220d15d00509738460ac8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'He is a founder of the EkStep and a promoter of the digital public infrastructure in India'),
            ('B', 'He was the governor of the RBI'),
            ('C', 'He founded the ISRO'),
            ('D', 'He was the chairman of the Election Commission')
           ) as v(label, option_text)
 where q.question_hash = '4228fedacc220d15d00509738460ac8a'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'health infrastructure are:',
    'The Ayushman Arogya Mandir, the health and the wellness centres, are planned at the sub-centre level to deliver the primary health care to the community.',
    'medium',
    'Standard Reference',
    null,
    '9e434db8e639b9f60a37a8e35963bf23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9e434db8e639b9f60a37a8e35963bf23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the multi-speciality hospitals of the cities'),
            ('B', 'the medical colleges'),
            ('C', 'the pharmacies'),
            ('D', 'the health and the wellness centres at the sub-centre level')
           ) as v(label, option_text)
 where q.question_hash = '9e434db8e639b9f60a37a8e35963bf23'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'education infrastructure is:',
    'The Samagra Shiksha is the school education programme of the Department of School Education and Literacy and it subsumes the Sarva Shiksha Abhiyan, the Rashtriya Madhyamik Shiksha Abhiyan and the Teacher Education programmes.',
    'medium',
    'Standard Reference',
    null,
    'cb13cf49a33a0433473ba1536ff457e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cb13cf49a33a0433473ba1536ff457e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the teacher recruitment programme'),
            ('B', 'the school education programme of the Department of School Education and Literacy'),
            ('C', 'the higher education policy'),
            ('D', 'the adult literacy programme only')
           ) as v(label, option_text)
 where q.question_hash = 'cb13cf49a33a0433473ba1536ff457e3'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'Which of the following is correct in the case of the tourism?',
    'The Swadesh Darshan and the Swadesh are the domestic and the international tourism circuits developed by the Ministry of Tourism with the circuit-wise thematic routes.',
    'hard',
    'Standard Reference',
    null,
    '37005f5e0374a5286388680a3b96e264'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '37005f5e0374a5286388680a3b96e264'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'They are the coastal zone projects'),
            ('B', 'They are the airport projects'),
            ('C', 'Are the domestic and the international tourism circuits of the ministry'),
            ('D', 'They are the heritage city programmes')
           ) as v(label, option_text)
 where q.question_hash = '37005f5e0374a5286388680a3b96e264'
on conflict (question_id, label) do nothing;

-- economy | infrastructure-and-services | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'infrastructure-and-services'),
    'The National Logistics Policy was:',
    'The National Logistics Policy was launched in 2022 and it was followed by the PM Gati Shakti National Master Plan with the aim of reducing the logistics costs and the time.',
    'hard',
    'Standard Reference',
    2022,
    '9be1b6802f6a3df6ba385323a0b2ec6e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9be1b6802f6a3df6ba385323a0b2ec6e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'no logistics policy'),
            ('B', 'launched in 1991'),
            ('C', 'launched in 2022'),
            ('D', 'launched in 2015')
           ) as v(label, option_text)
 where q.question_hash = '9be1b6802f6a3df6ba385323a0b2ec6e'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following statements is/are correct in relation to the The FDI?',
    'The FDI is allowed in 100 per cent of the sectors of the economy through the automatic route, except for the railways, the insurance and the defence, and the Press and the Atomic Energy.',
    'hard',
    'Standard Reference',
    null,
    '9050a5a9e5061bf56e1ec317686ac962'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9050a5a9e5061bf56e1ec317686ac962'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FDI is allowed in 51 per cent of the sectors'),
            ('B', 'The FDI is not allowed in any sector'),
            ('C', 'The FDI is allowed only in the IT'),
            ('D', 'The FDI is allowed in 100 per cent of the sectors except the railways and the insurance')
           ) as v(label, option_text)
 where q.question_hash = '9050a5a9e5061bf56e1ec317686ac962'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Make in India'' was launched in:',
    'Make in India was launched on 25 September 2014 with the objectives of the manufacturing, the job creation and the skill development, and it was later restructured with the National Manufacturing Mission in 2020.',
    'easy',
    'Standard Reference',
    null,
    '849d01431464fafedd3feb13905e0e90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '849d01431464fafedd3feb13905e0e90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2011'),
            ('C', '2015'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '849d01431464fafedd3feb13905e0e90'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''National Manufacturing Mission'' and the ''2020'':',
    'The National Manufacturing Mission, announced in 2020, focused on the eight sectors of the PLI and it emphasised the manufacturing of the electronics and the textiles and the quality of the products.',
    'hard',
    'Standard Reference',
    2020,
    '75022742b8d9287c5b9eddbc022dafae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '75022742b8d9287c5b9eddbc022dafae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It was a farm policy'),
            ('B', 'It was an eight-sector programme of the PLI and the focus was on the electronics and the textiles'),
            ('C', 'It was a state scheme'),
            ('D', 'It replaced the Make in India brand')
           ) as v(label, option_text)
 where q.question_hash = '75022742b8d9287c5b9eddbc022dafae'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following statements is/are correct in relation to the Production Linked Incentive?',
    'The PLI schemes cover 14 sectors with an outlay of about Rs. 1.97 lakh crore and they include the mobile phones, the pharmaceuticals, the food processing, the textiles, the white goods and the automobiles.',
    'medium',
    'Standard Reference',
    null,
    'b0b963cf336579bb6628ae6ee20e8ce7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b0b963cf336579bb6628ae6ee20e8ce7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The PLI covers 30 sectors'),
            ('B', 'The PLI was for the services only'),
            ('C', 'The PLI covers 14 sectors with an outlay of about Rs. 1.97 lakh crore'),
            ('D', 'The PLI covers 5 sectors with Rs. 5,000 crore')
           ) as v(label, option_text)
 where q.question_hash = 'b0b963cf336579bb6628ae6ee20e8ce7'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The units in the SEZ are:',
    'The Special Economic Zones offer the duty-free import of the capital goods and the raw materials and the exemption from the excise and the service tax on the domestic sales.',
    'medium',
    'Standard Reference',
    null,
    '05f025bc199885df2d6eb99ce87d888c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '05f025bc199885df2d6eb99ce87d888c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'not subject to the customs duty and the excise on the imports'),
            ('B', 'The SEZ units pay the highest taxes'),
            ('C', 'a state of India'),
            ('D', 'a financial district')
           ) as v(label, option_text)
 where q.question_hash = '05f025bc199885df2d6eb99ce87d888c'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The 32 industrial corridors across the country were:',
    'The Manufacturing Policy of 2011 proposed the setting up of the 32 industrial corridors across the country with the clusters of the manufacturing and the logistics.',
    'hard',
    'Standard Reference',
    null,
    'ffe57cd1bcbcb02fec4cf6fbfedf394c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ffe57cd1bcbcb02fec4cf6fbfedf394c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'proposed in 1991'),
            ('B', '5 industrial corridors'),
            ('C', 'proposed in 2021'),
            ('D', 'proposed in the manufacturing policy of 2011')
           ) as v(label, option_text)
 where q.question_hash = 'ffe57cd1bcbcb02fec4cf6fbfedf394c'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Industrial policy resolution of 1991'':',
    'The Industrial Policy Resolution of 1991 announced the industrial de-licensing, the delicensing of the foreign investment, the disinvestment of the public sector and the focus of the public sector in the strategic areas.',
    'medium',
    'Standard Reference',
    null,
    'cc49b5649d3de21f015d036027ae9913'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc49b5649d3de21f015d036027ae9913'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Was a trade policy'),
            ('B', 'Announced the de-licensing, the delicensing and the disinvestment and the public sector was made the focus of the strategic sectors'),
            ('C', 'Abolished the public sector'),
            ('D', 'Introduced the planning')
           ) as v(label, option_text)
 where q.question_hash = 'cc49b5649d3de21f015d036027ae9913'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following statements regarding the public sector enterprises is correct?',
    'The disinvestment means the dilution of the government''s equity in the state owned enterprises, and the privatisation and the strategic disinvestment are the two forms of it.',
    'hard',
    'Standard Reference',
    null,
    '9fb141f419a85ac2446e61b5dda7a234'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9fb141f419a85ac2446e61b5dda7a234'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The disinvestment is the nationalisation'),
            ('B', 'The disinvestment is the closure of the loss making units'),
            ('C', 'The disinvestment is the dilution of the government''s equity and it is different from the privatisation'),
            ('D', 'The disinvestment is the sale of the public assets to the private players')
           ) as v(label, option_text)
 where q.question_hash = '9fb141f419a85ac2446e61b5dda7a234'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Atmanirbhar Bharat Self-Reliant India is:',
    'The Atmanirbhar Bharat, the self-reliant India, is a key concept of the NITI Aayog with the emphasis on the domestic manufacturing, the agriculture and the modern infrastructure.',
    'medium',
    'Standard Reference',
    null,
    'a95daea9e29eb627abc4d18d29aff55a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a95daea9e29eb627abc4d18d29aff55a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a key concept of the NITI Aayog'),
            ('B', 'a scheme of the Planning Commission'),
            ('C', 'about the foreign trade'),
            ('D', 'a state initiative of the Kerala')
           ) as v(label, option_text)
 where q.question_hash = 'a95daea9e29eb627abc4d18d29aff55a'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following statements is/are correct in relation to the MSME?',
    'The revised MSME classification of 2020 raised the investment limit to Rs. 25 crore and the turnover limit to Rs. 100 crore for the enterprises.',
    'medium',
    'Standard Reference',
    null,
    '62d852ab6c0c8dad4ce2ee5c65795840'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62d852ab6c0c8dad4ce2ee5c65795840'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The enterprises with an investment of up to Rs. 500 crore'),
            ('B', 'The enterprises with a turnover of up to Rs. 1,000 crore'),
            ('C', 'There is no investment limit'),
            ('D', 'The service and the manufacturing sector enterprises with an investment of up to Rs. 25 crore and the turnover of up to Rs. 100 crore')
           ) as v(label, option_text)
 where q.question_hash = '62d852ab6c0c8dad4ce2ee5c65795840'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'Which of the following statements is/are correct in relation to the SIDBI?',
    'SIDBI is the apex institution for the MSME finance and the MUDRA Ltd is the refinancing institution for the MUDRA loans.',
    'medium',
    'Standard Reference',
    null,
    'e7cb12e8c83b2291782fb79f4219809f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e7cb12e8c83b2291782fb79f4219809f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'SIDBI is the regulator of the small finance banks'),
            ('B', 'SIDBI is the apex lender of the MSME sector and the MUDRA is the refinancing institution'),
            ('C', 'SIDBI is the apex lender of the agriculture'),
            ('D', 'SIDBI is the stock exchange of the small enterprises')
           ) as v(label, option_text)
 where q.question_hash = 'e7cb12e8c83b2291782fb79f4219809f'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ONGC and the OIL are:',
    'The ONGC and the Oil India are the upstream public sector companies, the Reliance and the IOC are the refiners and the marketing companies, and the ONGC is the largest crude producer of India.',
    'medium',
    'Standard Reference',
    null,
    '00b593cf5003450ac4b2516c5de99c70'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '00b593cf5003450ac4b2516c5de99c70'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the public sector oil companies and the Reliance and the IOC are the private and the public refiners'),
            ('B', 'a private company'),
            ('C', 'a mining company'),
            ('D', 'a gas distributor')
           ) as v(label, option_text)
 where q.question_hash = '00b593cf5003450ac4b2516c5de99c70'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Golden Quadrilateral is:',
    'The Golden Quadrilateral, the super expressway, connects the four metros and the 88 cities of the North-West and the East and it was later subsumed in the North-South and the East-West corridors.',
    'medium',
    'Standard Reference',
    null,
    '53571200decd0e52042cb2b7c347696d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '53571200decd0e52042cb2b7c347696d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a crop pattern'),
            ('B', 'a river system'),
            ('C', 'a mining belt'),
            ('D', 'the high density road network of the North-West and the East')
           ) as v(label, option_text)
 where q.question_hash = '53571200decd0e52042cb2b7c347696d'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''quality control'' and the ''BIS'':',
    'The Bureau of Indian Standards is the national body for the standardisation, the quality control and the certification, and it is under the Ministry of Commerce and Industry.',
    'medium',
    'Standard Reference',
    null,
    '412689ed6ebed5bc0418a7579b5e5659'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '412689ed6ebed5bc0418a7579b5e5659'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The BIS is the development finance institution'),
            ('B', 'The Bureau of Indian Standards is the body for the standardisation and the quality control'),
            ('C', 'The BIS is the stock exchange regulator'),
            ('D', 'The BIS is the trade promotion body')
           ) as v(label, option_text)
 where q.question_hash = '412689ed6ebed5bc0418a7579b5e5659'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The ''Competition Commission of India'':',
    'The Competition Commission of India was set up in 2002 under the Competition Act, 2002 and it replaced the Monopolistic and the Restrictive Trade Practices Commission.',
    'medium',
    'Standard Reference',
    null,
    'e08726cad6fb1f53d37a41474cde1e78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e08726cad6fb1f53d37a41474cde1e78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a statutory body of the 1956 Act'),
            ('B', 'Is a ministry'),
            ('C', 'Was set up in 2002 under the Competition Act, 2002 and it replaced the MRTP Commission'),
            ('D', 'Was set up in 1969')
           ) as v(label, option_text)
 where q.question_hash = 'e08726cad6fb1f53d37a41474cde1e78'
on conflict (question_id, label) do nothing;

-- economy | industry-and-manufacturing | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'industry-and-manufacturing'),
    'The Recommendations of the Disinvestment Committee of 1990 led to:',
    'The Disinvestment Committee of 1990 under the chairmanship of Manmohan Singh and the valuations by the R. K. Nair Committee helped the Government of India disinvest in the public sector shares.',
    'hard',
    'Standard Reference',
    null,
    '495e9d136f052d7d89495ec6ffd2e852'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '495e9d136f052d7d89495ec6ffd2e852'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the disinvestment of the shares of the public sector'),
            ('B', 'on the trade policy'),
            ('C', 'on the agriculture'),
            ('D', 'on the education')
           ) as v(label, option_text)
 where q.question_hash = '495e9d136f052d7d89495ec6ffd2e852'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Balance of Payments'' of India is compiled by the:',
    'The Reserve Bank of India compiles and releases the Balance of Payments statistics, the international investment position and the international reserves.',
    'easy',
    'Standard Reference',
    null,
    'b951922443d154133524f82d6c59cf0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b951922443d154133524f82d6c59cf0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central Statistical Organisation'),
            ('B', 'The Ministry of Commerce'),
            ('C', 'The Finance Commission'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'b951922443d154133524f82d6c59cf0f'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''current account balance'' of India:',
    'The current account records the trade in goods and the services and the primary and the secondary income transactions, and a deficit is financed by the capital account.',
    'medium',
    'Standard Reference',
    null,
    '93e44e3cdfae09dca3a76356868c2282'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '93e44e3cdfae09dca3a76356868c2282'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the total of the exports'),
            ('B', 'Is the reserve position'),
            ('C', 'Is the sum of the trade balance, the services and the primary and the secondary income'),
            ('D', 'Is the difference of the capital inflows and the outflows')
           ) as v(label, option_text)
 where q.question_hash = '93e44e3cdfae09dca3a76356868c2282'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''trade deficit'' of India:',
    'A trade deficit is the excess of the merchandise imports over the exports and India has run a merchandise trade deficit for most of the years since 1991.',
    'easy',
    'Standard Reference',
    null,
    'eef0321dfcd257a5edbd1249962b690e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eef0321dfcd257a5edbd1249962b690e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the reserves'),
            ('B', 'Is the excess of the imports over the exports of the merchandise'),
            ('C', 'Is the excess of the exports over the imports'),
            ('D', 'Is the difference of the FDI and the FPI')
           ) as v(label, option_text)
 where q.question_hash = 'eef0321dfcd257a5edbd1249962b690e'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''exchange rate'' of the Indian rupee:',
    'The rupee operates on a managed float with the RBI intervening to check the excessive volatility, and the de facto the exchange rate is the crawling peg against a basket.',
    'hard',
    'Standard Reference',
    null,
    '756c34152c7305e8ccab12f8ef6da3a7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '756c34152c7305e8ccab12f8ef6da3a7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a managed float and the RBI intervenes to check the volatility'),
            ('B', 'Is fully free and the RBI does not intervene'),
            ('C', 'Is a crawling peg fixed to the dollar'),
            ('D', 'Is a fully convertible')
           ) as v(label, option_text)
 where q.question_hash = '756c34152c7305e8ccab12f8ef6da3a7'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''REER'' of the rupee:',
    'The REER, the real effective exchange rate, is the trade-weighted real exchange rate and it takes the inflation differentials into account.',
    'hard',
    'Standard Reference',
    null,
    '1cb5517763f6d12d6059eaed03089df7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1cb5517763f6d12d6059eaed03089df7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the rate of the inflation'),
            ('B', 'Is the real effective exchange rate, the trade-weighted real exchange rate'),
            ('C', 'Is the nominal rate against the dollar'),
            ('D', 'Is the rate of the reserves')
           ) as v(label, option_text)
 where q.question_hash = '1cb5517763f6d12d6059eaed03089df7'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''FDI'' and the ''FPI'':',
    'The foreign direct investment is the investment made in the business assets of a company and the foreign portfolio investment is the investment in the securities like the shares and the bonds.',
    'easy',
    'Standard Reference',
    null,
    'df5f3768d28605d2fc12c664db52b58a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'df5f3768d28605d2fc12c664db52b58a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The FDI is in the government bonds'),
            ('B', 'The FPI is in the real estate'),
            ('C', 'The FDI is the investment in the business and the FPI is the investment in the securities'),
            ('D', 'They are the same')
           ) as v(label, option_text)
 where q.question_hash = 'df5f3768d28605d2fc12c664db52b58a'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following is correct in the case of the WTO?',
    'The TRIPS has the flexibility for the compulsory licensing and the 1999 and the 2005 amendments of the Indian patent law enabled the production of the generic versions of the drugs.',
    'hard',
    'Standard Reference',
    null,
    'c86688f7b4775df7b4a76fd5d26cab1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c86688f7b4775df7b4a76fd5d26cab1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The TRIPS banned the generics'),
            ('B', 'The TRIPS required the patents for the drugs'),
            ('C', 'There is no flexibility in the TRIPS'),
            ('D', 'The TRIPS and the patent law amendment of 1999 and 2005 allowed the compulsory licensing of the drugs')
           ) as v(label, option_text)
 where q.question_hash = 'c86688f7b4775df7b4a76fd5d26cab1e'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''Foreign Trade Development and Regulation (FTDPR) Act'' of 1992:',
    'The FTDPR Act of 1992 replaced the Imports and Exports (Control) Order of 1957 and it provided the framework for the liberalisation of the trade and the tariffs.',
    'hard',
    'Standard Reference',
    null,
    'af43b431bc20839ea27e76ca165a0c68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'af43b431bc20839ea27e76ca165a0c68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is a state trade act'),
            ('B', 'Replaced the Imports and Exports (Control) Order, 1957 and it provides for the liberalisation of the trade'),
            ('C', 'Was the trade policy of 1957'),
            ('D', 'Was the foreign exchange regulation')
           ) as v(label, option_text)
 where q.question_hash = 'af43b431bc20839ea27e76ca165a0c68'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following statements is/are correct in relation to the SEZ?',
    'The Special Economic Zones are the geographically delineated enclaves with the duty-free import of the raw materials and the capital goods and the simplified customs.',
    'medium',
    'Standard Reference',
    null,
    '6be63925e75f2fdd615b081f70432bcc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6be63925e75f2fdd615b081f70432bcc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The SEZ are the mining leases'),
            ('B', 'The SEZ are the industrial corridors'),
            ('C', 'The SEZ are the free trade zones of the WTO'),
            ('D', 'The SEZ are the enclaves with the duty-free import for the export manufacture')
           ) as v(label, option_text)
 where q.question_hash = '6be63925e75f2fdd615b081f70432bcc'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''foreign exchange reserves'' of India are held in:',
    'The forex reserves of the RBI comprise the foreign currency assets, the gold, the SDRs and the reserve tranche position with the IMF.',
    'medium',
    'Standard Reference',
    null,
    '85547c794251854b0f8ff5a83132344d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '85547c794251854b0f8ff5a83132344d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The forex reserves of the RBI include the foreign currency assets, the gold, the SDRs and the reserve position with the IMF'),
            ('B', 'The RBI only holds the gold'),
            ('C', 'The reserves are held by the government'),
            ('D', 'The reserves are held by the NABARD')
           ) as v(label, option_text)
 where q.question_hash = '85547c794251854b0f8ff5a83132344d'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The inward remittance of India is:',
    'The inward remittance of India is among the largest in the world at over 125 billion dollars and the remittance of the migrants is a major source of the foreign exchange.',
    'medium',
    'Standard Reference',
    null,
    '5df43b64f4c83ff491844007011e00f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5df43b64f4c83ff491844007011e00f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'only from the Gulf'),
            ('B', 'no remittance'),
            ('C', 'among the largest in the world at over $125 billion'),
            ('D', 'the lowest in the world')
           ) as v(label, option_text)
 where q.question_hash = '5df43b64f4c83ff491844007011e00f0'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following statements is/are correct in relation to the The services trade of India?',
    'India runs a persistent merchandise trade deficit with a services trade surplus and the net services exports offset a part of the merchandise deficit.',
    'medium',
    'Standard Reference',
    null,
    '69ed54380cdf300a0b9d33326d2dee36'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '69ed54380cdf300a0b9d33326d2dee36'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The services trade is in deficit'),
            ('B', 'The services trade of India is in surplus and the merchandise trade is in deficit'),
            ('C', 'Both are in surplus'),
            ('D', 'Both are in deficit')
           ) as v(label, option_text)
 where q.question_hash = '69ed54380cdf300a0b9d33326d2dee36'
on conflict (question_id, label) do nothing;

-- economy | external-sector | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'Which of the following statements regarding the The World Bank lends for is correct?',
    'The World Bank provides the long term development finance and the IMF provides the short term balance of payments support, and the IDA is the concessional window of the World Bank.',
    'easy',
    'Standard Reference',
    null,
    '9bc9d2fa088545b60c65b7af6106c24f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9bc9d2fa088545b60c65b7af6106c24f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The World Bank lends for the balance of payments'),
            ('B', 'The IMF lends for the infrastructure'),
            ('C', 'The World Bank lends only for the agriculture'),
            ('D', 'The World Bank lends for the development projects and the IMF for the balance of payments')
           ) as v(label, option_text)
 where q.question_hash = '9bc9d2fa088545b60c65b7af6106c24f'
on conflict (question_id, label) do nothing;

-- economy | external-sector | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The ''SDR'' of the IMF:',
    'The Special Drawing Right is an international reserve asset created by the IMF and it is a basket of the US dollar, the euro, the Chinese renminbi, the Japanese yen and the pound sterling.',
    'medium',
    'Standard Reference',
    null,
    'd7fb0cf3994fde2e933459d0a39d1a61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd7fb0cf3994fde2e933459d0a39d1a61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is the special drawing of the World Bank'),
            ('B', 'Is a digital currency of India'),
            ('C', 'Is a basket of five currencies and an asset of the IMF'),
            ('D', 'Is a currency of the European Union')
           ) as v(label, option_text)
 where q.question_hash = 'd7fb0cf3994fde2e933459d0a39d1a61'
on conflict (question_id, label) do nothing;

-- economy | external-sector | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'external-sector'),
    'The Appellate Body was:',
    'The Appellate Body of the WTO has been paralysed since December 2019 because the United States blocked the appointments and the disputes are now being appealed into the void.',
    'hard',
    'Standard Reference',
    null,
    'f9e9b6c86f1abe6a99970423169d4f80'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f9e9b6c86f1abe6a99970423169d4f80'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'paralysed from December 2019 because of the US blockage of the appointments'),
            ('B', 'dissolved in 2000'),
            ('C', 'The Appellate Body never existed'),
            ('D', 'in 2020')
           ) as v(label, option_text)
 where q.question_hash = 'f9e9b6c86f1abe6a99970423169d4f80'
on conflict (question_id, label) do nothing;

commit;
