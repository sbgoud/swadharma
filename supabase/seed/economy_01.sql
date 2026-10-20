-- =============================================================================
-- economy_01.sql — economy question pack, part 01
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
    'The fundamental economic problem of scarcity arises because',
    'Scarcity exists because human wants are unlimited whereas the resources and time available to satisfy them are limited and have alternative uses, so rationing such as foodgrain ration cards becomes necessary.',
    'easy',
    'NCERT Class XI',
    null,
    '2f3b52f3ad7554cf0f7faadaf24c0b65'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2f3b52f3ad7554cf0f7faadaf24c0b65'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Resources are unlimited but their prices rise continuously'),
            ('B', 'Government intervention restricts the free allocation of goods and services'),
            ('C', 'Human wants are unlimited while the means of satisfying them are limited'),
            ('D', 'Human wants are finite while the means of production are infinite')
           ) as v(label, option_text)
 where q.question_hash = '2f3b52f3ad7554cf0f7faadaf24c0b65'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'In a market economy, the price mechanism performs the function of',
    'Prices act as signals and incentives: the equilibrium price equates marginal benefit with marginal cost, thereby channelling scarce resources to their most valued uses.',
    'easy',
    'NCERT Class XI',
    null,
    '96088fa43f49e7e9203a14c66a242454'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '96088fa43f49e7e9203a14c66a242454'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Coordinating the allocation of scarce resources across competing uses'),
            ('B', 'Eliminating the need for government intervention in all markets'),
            ('C', 'Guaranteeing a minimum level of consumption for every household'),
            ('D', 'Distributing income equitably among all sections of society')
           ) as v(label, option_text)
 where q.question_hash = '96088fa43f49e7e9203a14c66a242454'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The opportunity cost of producing one more unit of a good is',
    'Opportunity cost is the value of the best alternative given up when a choice is made, so it measures the real cost of the extra unit in terms of what could have been produced instead.',
    'easy',
    'NCERT Class XI',
    null,
    'cc59aea474bb25f33d559365bf6f5f0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'cc59aea474bb25f33d559365bf6f5f0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The average cost of production of all units produced'),
            ('B', 'The value of the next best alternative that has been forgone'),
            ('C', 'The fixed cost of the firm divided by the number of units produced'),
            ('D', 'The total money spent on producing the extra unit')
           ) as v(label, option_text)
 where q.question_hash = 'cc59aea474bb25f33d559365bf6f5f0d'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Marginal utility refers to',
    'Marginal utility is the extra utility from the last unit consumed, while total utility is the sum of marginal utilities of all units, which is why the law of diminishing marginal utility applies.',
    'easy',
    'NCERT Class XI',
    null,
    'b92622ae800d97ed5237bc36c6c68fb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b92622ae800d97ed5237bc36c6c68fb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total satisfaction obtained from consuming a given quantity of a good'),
            ('B', 'The satisfaction obtained from the very first unit of a good consumed'),
            ('C', 'The maximum satisfaction obtainable from a bundle of goods'),
            ('D', 'The additional satisfaction derived from consuming one more unit of a good')
           ) as v(label, option_text)
 where q.question_hash = 'b92622ae800d97ed5237bc36c6c68fb7'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The law of diminishing marginal utility states that',
    'Diminishing marginal utility means that each successive unit of a good yields less extra satisfaction than the previous one, which is the basis of the law of demand and consumer equilibrium analysis.',
    'easy',
    'NCERT Class XI',
    null,
    'd6feae1cb4e37f860a05904d173505e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd6feae1cb4e37f860a05904d173505e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Marginal utility is the same for every unit of every good'),
            ('B', 'Marginal utility turns negative only after total utility has started falling'),
            ('C', 'As consumption of a good rises, the marginal utility from each additional unit declines'),
            ('D', 'Total utility from a good always rises at an increasing rate')
           ) as v(label, option_text)
 where q.question_hash = 'd6feae1cb4e37f860a05904d173505e7'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'A market characterised by very large numbers of buyers and sellers, homogeneous products, perfect information and free entry is',
    'Perfect competition has many buyers and sellers, identical products, free entry and exit and full information, so no single participant can influence price; the other structures involve market power.',
    'easy',
    'NCERT Class XI',
    null,
    '61089b6a5e4661a34b3f3725fcb30828'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '61089b6a5e4661a34b3f3725fcb30828'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A monopolistically competitive market'),
            ('B', 'A perfectly competitive market'),
            ('C', 'A monopoly market'),
            ('D', 'An oligopolistic market')
           ) as v(label, option_text)
 where q.question_hash = '61089b6a5e4661a34b3f3725fcb30828'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'A monopolist can raise prices without losing all its customers mainly because',
    'A monopoly retains the power to influence price because entry barriers such as licences, patents, control over raw materials or scale economies keep competitors out of the market.',
    'easy',
    'NCERT Class XI',
    null,
    '589ae69ebbb4fe65e720d7c9735e49cd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '589ae69ebbb4fe65e720d7c9735e49cd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The demand for its product is perfectly elastic'),
            ('B', 'The government fixes its maximum price at a high level'),
            ('C', 'Its product is always of superior quality to that of rivals'),
            ('D', 'Barriers to entry prevent new firms from competing with it')
           ) as v(label, option_text)
 where q.question_hash = '589ae69ebbb4fe65e720d7c9735e49cd'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Gross Domestic Product is valued at',
    'In the Indian national accounts, GDP is published at market prices, which is gross value added at basic prices plus net taxes on products, whereas basic prices and factor cost exclude such taxes.',
    'easy',
    'NCERT Class XI',
    null,
    '4f210be0ce40ec74ca513f26c0f0db42'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4f210be0ce40ec74ca513f26c0f0db42'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Market prices'),
            ('B', 'Wholesale prices'),
            ('C', 'Basic prices'),
            ('D', 'Factor cost')
           ) as v(label, option_text)
 where q.question_hash = '4f210be0ce40ec74ca513f26c0f0db42'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The difference between India''s GDP and GNP, computed on the same basis, arises from',
    'GNP equals GDP plus net factor income from abroad, so the two differ because of the income Indian residents earn overseas less the income earned by foreign residents in India.',
    'medium',
    'NCERT Class XI',
    null,
    '38763b719af0583cf54bcbd2859f5a76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '38763b719af0583cf54bcbd2859f5a76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The net factor income earned by residents from abroad'),
            ('B', 'The value of exports of goods and services'),
            ('C', 'The depreciation of capital assets in the economy'),
            ('D', 'The net unrecorded cash transactions in the economy')
           ) as v(label, option_text)
 where q.question_hash = '38763b719af0583cf54bcbd2859f5a76'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following is NOT included in the computation of Gross Value Added at basic prices?',
    'Gross value added at basic prices is output less intermediate consumption, and net taxes on products are added separately when converting GVA into GDP at market prices.',
    'medium',
    'NCERT Class XI',
    null,
    '1a53825c00178fcd35f690b28a7e2b2e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1a53825c00178fcd35f690b28a7e2b2e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Compensation of employees'),
            ('B', 'Operating surplus'),
            ('C', 'Consumption of fixed capital'),
            ('D', 'Net taxes on products')
           ) as v(label, option_text)
 where q.question_hash = '1a53825c00178fcd35f690b28a7e2b2e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The base year used for compiling the National Accounts Statistics of India is',
    'The Central Statistics Office uses 2011-12 as the base year for the constant price series of national accounts published since the 2019 base year revision, replacing the earlier 2004-05 base.',
    'easy',
    'RBI Handbook',
    null,
    '857f5d1a7a4651a5d8c97bd870341f0f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '857f5d1a7a4651a5d8c97bd870341f0f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1999-2000'),
            ('B', '2011-12'),
            ('C', '2004-05'),
            ('D', '2015-16')
           ) as v(label, option_text)
 where q.question_hash = '857f5d1a7a4651a5d8c97bd870341f0f'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Real GDP differs from nominal GDP because real GDP',
    'Real GDP is expressed at base year prices so that it measures only the change in the volume of output, while nominal GDP is at current prices and mixes volume with price changes.',
    'easy',
    'NCERT Class XI',
    null,
    '3f7a0be501f9cfa3d9bf92da0e25ffdd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3f7a0be501f9cfa3d9bf92da0e25ffdd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is calculated using current year prices'),
            ('B', 'Excludes the depreciation of capital assets'),
            ('C', 'Is computed at constant prices and thus removes the effect of price changes'),
            ('D', 'Includes net factor income from abroad')
           ) as v(label, option_text)
 where q.question_hash = '3f7a0be501f9cfa3d9bf92da0e25ffdd'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Per capita income in India is calculated as',
    'Per capita income is the average income of the population, obtained by dividing national income by the mid-year population, which is why a rising population dilutes per capita gains.',
    'easy',
    'NCERT Class XI',
    null,
    'b52c54ae5f4dd7839bdb8213f5b738b7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b52c54ae5f4dd7839bdb8213f5b738b7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total national income divided by the labour force'),
            ('B', 'Total national income divided by the working age population'),
            ('C', 'Total national income divided by the mid-year total population'),
            ('D', 'Total national income divided by the number of households')
           ) as v(label, option_text)
 where q.question_hash = 'b52c54ae5f4dd7839bdb8213f5b738b7'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Human Development Index is a composite of',
    'The HDI, published by the UNDP, combines three equally weighted dimensions, health measured by life expectancy, education through mean and expected years of schooling, and a measure of income.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '42b0bc4fd19b02be2322f989a455b237'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '42b0bc4fd19b02be2322f989a455b237'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Employment rate, wages and labour productivity'),
            ('B', 'Life expectancy at birth, education measured by mean and expected years of schooling, and GNI per capita'),
            ('C', 'Per capita income, poverty ratio and literacy rate'),
            ('D', 'Life expectancy, infant mortality and access to electricity')
           ) as v(label, option_text)
 where q.question_hash = '42b0bc4fd19b02be2322f989a455b237'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Multidimensional Poverty Index is published jointly by',
    'The global MPI is produced by the UNDP with the Oxford Poverty and Human Development Initiative, while NITI Aayog publishes a separate domestic index built on health, education and living standard indicators.',
    'easy',
    'Standard Reference',
    null,
    '2992c65d23b1f1988f72aaedeaeacc29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2992c65d23b1f1988f72aaedeaeacc29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'UNDP and the Oxford Poverty and Human Development Initiative'),
            ('B', 'The ILO and the ILO'),
            ('C', 'NITI Aayog and the Reserve Bank of India'),
            ('D', 'The World Bank and the IMF')
           ) as v(label, option_text)
 where q.question_hash = '2992c65d23b1f1988f72aaedeaeacc29'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'According to the Tendulkar Committee, the all-India poverty line should be',
    'The Tendulkar Committee fixed a single all-India poverty line at the per capita consumption expenditure of the poorest 10 percent of the population, with state specific lines adjusted upward to that level.',
    'medium',
    'Standard Reference',
    null,
    'fcb17e6512d8dadda891a5f7ba6f392e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fcb17e6512d8dadda891a5f7ba6f392e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The median per capita consumption expenditure of the country'),
            ('B', 'The per capita expenditure of the bottom 20 percent of households'),
            ('C', 'The average per capita consumption expenditure of the poorest states'),
            ('D', 'The per capita consumption expenditure of the poorest 10 percent of the population')
           ) as v(label, option_text)
 where q.question_hash = 'fcb17e6512d8dadda891a5f7ba6f392e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Rangarajan Committee differed from the Tendulkar Committee in that it',
    'The Rangarajan Committee used separate state specific poverty lines derived from the distribution of consumption expenditure within each state, unlike the single all-India line recommended by Tendulkar.',
    'hard',
    'Standard Reference',
    null,
    '6eac1aff6236eb0f4562691ce4014ddb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6eac1aff6236eb0f4562691ce4014ddb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Recommended state specific poverty lines derived from each state''s own expenditure distribution'),
            ('B', 'Recommended a uniform poverty line for rural and urban areas'),
            ('C', 'Rejected the use of consumption expenditure as the poverty measure'),
            ('D', 'Recommended a food energy based normative calorie requirement')
           ) as v(label, option_text)
 where q.question_hash = '6eac1aff6236eb0f4562691ce4014ddb'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Disguised unemployment refers to',
    'Disguised unemployment exists where too many workers are engaged in an activity such as farming on small holdings so that removing some of them would not reduce output, a situation typical of Indian agriculture.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '43b08aecbe30437db07305a295b3dc0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '43b08aecbe30437db07305a295b3dc0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Persons who have stopped seeking work and left the labour force'),
            ('B', 'New entrants who have not yet obtained their first job'),
            ('C', 'Workers engaged in an activity whose marginal contribution to output is negligible'),
            ('D', 'Workers unemployed for a short period due to seasonal factors')
           ) as v(label, option_text)
 where q.question_hash = '43b08aecbe30437db07305a295b3dc0e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Under the ILO definition, a person is counted as unemployed when he is',
    'The International Labour Organization''s usual status approach counts a person as unemployed if he has no work, is available for work and is actively seeking work, which is the basis of the Indian labour force surveys.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'c5ba4d6e5ab4d4969896df883e286f2f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5ba4d6e5ab4d4969896df883e286f2f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Working fewer hours than the full time standard'),
            ('B', 'Not in employment and not actively seeking work'),
            ('C', 'Without work but available for work, regardless of whether he seeks it'),
            ('D', 'Without work, available for work and actively seeking work')
           ) as v(label, option_text)
 where q.question_hash = 'c5ba4d6e5ab4d4969896df883e286f2f'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Seasonal unemployment is best described as',
    'Seasonal unemployment arises because demand for labour changes with the season, as in agriculture, tourism and construction, and it is pronounced in countries with a large agricultural workforce.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '9dc91f5c7cae1a232120a924c1ebc60e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9dc91f5c7cae1a232120a924c1ebc60e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Unemployment arising from a mismatch between worker skills and available jobs'),
            ('B', 'Unemployment that occurs when the demand for labour varies with the season'),
            ('C', 'Unemployment that lasts for more than six months'),
            ('D', 'Unemployment caused by a fall in aggregate demand during a downturn')
           ) as v(label, option_text)
 where q.question_hash = '9dc91f5c7cae1a232120a924c1ebc60e'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following is a growth indicator that does not take into account the distribution of income?',
    'GDP per capita is an average measure of output per head and is silent on how that output is distributed, whereas the HDI, MPI and Gini coefficient explicitly capture distribution and human development.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    'ed43a10332d4c5f23ce47ce9eb105ad5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ed43a10332d4c5f23ce47ce9eb105ad5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Multidimensional Poverty Index'),
            ('B', 'Gini coefficient'),
            ('C', 'Per capita real gross domestic product'),
            ('D', 'Human Development Index')
           ) as v(label, option_text)
 where q.question_hash = 'ed43a10332d4c5f23ce47ce9eb105ad5'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Inclusive growth is best described as',
    'Inclusive growth means that the benefits of growth are widely shared, that the poorest grow faster than the average and that inequality does not widen, a theme adopted in the Eleventh Five Year Plan.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '367c6c1c25a039ba8cd3a6ad6b87a549'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '367c6c1c25a039ba8cd3a6ad6b87a549'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Growth that benefits all sections of society, especially the poor, so that inequality does not rise'),
            ('B', 'Growth driven entirely by the export oriented sector'),
            ('C', 'Growth accompanied by a fall in the participation rate of women'),
            ('D', 'Growth concentrated in the most dynamic states of the country')
           ) as v(label, option_text)
 where q.question_hash = '367c6c1c25a039ba8cd3a6ad6b87a549'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The First Five Year Plan in India was mainly directed towards',
    'The First Plan (1951-56) was centred on agricultural development, irrigation and the aim of achieving self sufficiency in foodgrains, with heavy industry receiving attention only in the Second Plan.',
    'easy',
    'Standard Reference',
    null,
    '8dd47253e0111ba5a82ccc969c9f9160'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8dd47253e0111ba5a82ccc969c9f9160'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The development of heavy and machine based industries'),
            ('B', 'Agricultural development with an emphasis on food self sufficiency'),
            ('C', 'Establishment of a sound monetary and credit policy'),
            ('D', 'Rapid industrialisation through an import substitution model')
           ) as v(label, option_text)
 where q.question_hash = '8dd47253e0111ba5a82ccc969c9f9160'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which Five Year Plan had higher growth with inclusive growth and employment as its stated objective?',
    'The Eleventh Plan set the twin goals of higher growth and inclusive growth with employment, and it was the first plan to be framed as a National Employment Plan and monitored through the Five Year Plan Advisory Council.',
    'medium',
    'Standard Reference',
    null,
    'eac6c3b06717e8e001dc47151daab93d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eac6c3b06717e8e001dc47151daab93d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Twelfth Five Year Plan of 2012-17'),
            ('B', 'The Second Five Year Plan of 1956-61'),
            ('C', 'The Seventh Five Year Plan of 1985-90'),
            ('D', 'The Eleventh Five Year Plan of 2007-12')
           ) as v(label, option_text)
 where q.question_hash = 'eac6c3b06717e8e001dc47151daab93d'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Fifth Five Year Plan of 1974-79 is notable for',
    'The Fifth Plan introduced the concept of a rolling plan and set out a specific target for reducing the poverty ratio, marking a decisive shift in planning towards poverty alleviation.',
    'hard',
    'Standard Reference',
    null,
    '506f26d455cfc3a2dd2dd797e9ce3fa5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '506f26d455cfc3a2dd2dd797e9ce3fa5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Setting an explicit target for reducing the poverty ratio and introducing the rolling plan'),
            ('B', 'Prioritising the development of the electronics industry'),
            ('C', 'Giving the highest priority to defence production'),
            ('D', 'Rejecting the five year allocation of resources to development goals')
           ) as v(label, option_text)
 where q.question_hash = '506f26d455cfc3a2dd2dd797e9ce3fa5'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'NITI Aayog was constituted to',
    'NITI Aayog, which replaced the Planning Commission in 2015, does not allocate plan funds but works as a think tank that fosters cooperative federalism and provides policy advice to the centre and the states.',
    'easy',
    'Standard Reference',
    null,
    'e55954eca1da67f4b726475b85caed48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e55954eca1da67f4b726475b85caed48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Allocate five year plan funds among the states'),
            ('B', 'Regulate the prices of essential commodities across the country'),
            ('C', 'Supervise the working of the Central Board of Direct Taxes'),
            ('D', 'Replace the Planning Commission with a cooperative and holistic institution that promotes state participation in policy making')
           ) as v(label, option_text)
 where q.question_hash = 'e55954eca1da67f4b726475b85caed48'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Make in India programme launched in 2014 primarily aimed at',
    'Make in India sought to make India a global manufacturing hub by improving the ease of doing business, upgrading infrastructure and attracting investment, with twenty sectors identified for focused attention.',
    'easy',
    'Standard Reference',
    null,
    '219de961c6e72c91a3f09fe5039ed89f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '219de961c6e72c91a3f09fe5039ed89f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Setting up special economic zones exclusively for information technology firms'),
            ('B', 'Doubling the number of public sector enterprises'),
            ('C', 'Improving the competitiveness of the manufacturing sector through ease of doing business and better infrastructure'),
            ('D', 'Replacing the Planning Commission with a new body for state coordination')
           ) as v(label, option_text)
 where q.question_hash = '219de961c6e72c91a3f09fe5039ed89f'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Economic development, as distinct from economic growth, implies',
    'Growth is a quantitative increase in output whereas development is broader, combining growth with structural change, diversification of the economy and improvements in health, education and living standards.',
    'medium',
    'NCERT Class XI',
    null,
    '6814e74c4855af900831c62c1af1d6f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6814e74c4855af900831c62c1af1d6f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An increase in the per capita output of the country'),
            ('B', 'A widening of the range of goods available to the population together with an improvement in living standards'),
            ('C', 'A steady rise in the rate of investment in the economy'),
            ('D', 'A rise in the real gross domestic product of the economy')
           ) as v(label, option_text)
 where q.question_hash = '6814e74c4855af900831c62c1af1d6f8'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Rationalisation of the Consumer Price Index in India resulted in',
    'The 2011 rationalisation replaced the separate rural and urban series with a CPI Combined, divided into eight subgroups, with the base year for the new series fixed at 2012.',
    'medium',
    'RBI Handbook',
    null,
    '16173976ea5b33a5ce5110edae6a9886'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '16173976ea5b33a5ce5110edae6a9886'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Combining rural and urban prices into a single series'),
            ('B', 'Fixing the base year as 1986-87 for the combined series'),
            ('C', 'Reducing the number of price quotations collected in every city'),
            ('D', 'Splitting the CPI into eight subgroups for the combined rural and urban series')
           ) as v(label, option_text)
 where q.question_hash = '16173976ea5b33a5ce5110edae6a9886'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Scarcity, choice, opportunity cost and elasticity belong primarily to the study of',
    'These are the core tools of microeconomics, which analyses individual decision makers, firms and markets, whereas macroeconomics deals with aggregates such as inflation, output and unemployment.',
    'easy',
    'NCERT Class XI',
    null,
    'f7dd69ce439ee09f9783d710f28b4f16'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f7dd69ce439ee09f9783d710f28b4f16'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'International economics'),
            ('B', 'Microeconomics'),
            ('C', 'Macroeconomics'),
            ('D', 'Public finance')
           ) as v(label, option_text)
 where q.question_hash = 'f7dd69ce439ee09f9783d710f28b4f16'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'In a two period consumption model, a consumer will borrow when',
    'Intertemporal choice leads to borrowing when present income is insufficient relative to present desired consumption and future income is expected to rise, so repayment is possible from future earnings.',
    'medium',
    'NCERT Class XI',
    null,
    'cb76d5128b0ce0b0d545ea2889ae642c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cb76d5128b0ce0b0d545ea2889ae642c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The consumer wants to hold a larger money balance for transaction purposes'),
            ('B', 'Current income exceeds current consumption and the consumer prefers to hold money idle'),
            ('C', 'Current income is below desired consumption and the consumer expects future income to be higher'),
            ('D', 'The interest rate is zero and the consumer faces a liquidity constraint')
           ) as v(label, option_text)
 where q.question_hash = 'cb76d5128b0ce0b0d545ea2889ae642c'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The law of one price states that',
    'The law of one price holds that arbitrage keeps prices of identical goods equal across countries, with any difference explained by transport costs, tariffs and other barriers to trade.',
    'medium',
    'Standard Reference',
    null,
    '4bfb04a58e9c679193296035eea9cd1f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4bfb04a58e9c679193296035eea9cd1f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Identical goods traded across countries cost the same in each country once transport costs and trade barriers are excluded'),
            ('B', 'The domestic price of a non traded good equals the price of its closest substitute'),
            ('C', 'The price of a good in the domestic market must equal its price in every foreign market'),
            ('D', 'Exchange rates between two currencies remain constant over time')
           ) as v(label, option_text)
 where q.question_hash = '4bfb04a58e9c679193296035eea9cd1f'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following is an example of a positive externality?',
    'A positive externality occurs when an action creates benefits for third parties, as with knowledge spillovers from research and development, leading to under production of such goods by the market.',
    'medium',
    'NCERT Class XI',
    null,
    'c8cc703a7cb4f53e1ea06e686e1a2ac3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c8cc703a7cb4f53e1ea06e686e1a2ac3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A factory discharging smoke into the atmosphere'),
            ('B', 'A vehicle emitting carbon dioxide on a public road'),
            ('C', 'A coal fired power plant generating electricity for sale'),
            ('D', 'A firm''s research and development spending that benefits other firms in the industry')
           ) as v(label, option_text)
 where q.question_hash = 'c8cc703a7cb4f53e1ea06e686e1a2ac3'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Comparative advantage as formulated by Ricardo rests on',
    'Ricardo showed that even a country with absolute cost disadvantages can gain from trade if it specialises relatively in goods that it produces at a lower opportunity cost, which is the basis of comparative advantage.',
    'medium',
    'NCERT Class XI',
    null,
    'd0ea1baba1d196f83e5036c0e1a4d0fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0ea1baba1d196f83e5036c0e1a4d0fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The exchange rate at which goods are traded between countries'),
            ('B', 'Differences in the relative costs of producing goods across countries rather than on absolute cost levels'),
            ('C', 'The absolute productivity of each country in every industry'),
            ('D', 'The size of a country''s defence expenditure')
           ) as v(label, option_text)
 where q.question_hash = 'd0ea1baba1d196f83e5036c0e1a4d0fd'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Public goods are characterised by',
    'Because one person''s consumption does not reduce availability to others and non payers cannot be excluded, public goods tend to be under provided by the market, which is why they are financed through taxation.',
    'medium',
    'NCERT Class XI',
    null,
    '98aab0d7b09ee68dd764be7128b39080'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '98aab0d7b09ee68dd764be7128b39080'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Non rivalrous consumption and non excludability, which give rise to the free rider problem'),
            ('B', 'The ability of producers to keep non consumers out of the market'),
            ('C', 'High rivalry in consumption and easy exclusion of non payers'),
            ('D', 'Perfectly competitive supply by a large number of small producers')
           ) as v(label, option_text)
 where q.question_hash = '98aab0d7b09ee68dd764be7128b39080'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The market failure that arises when the benefits of an activity spill over to third parties is',
    'Positive externalities mean that private producers do not capture the full social benefit of their activity, so output is below the socially efficient level and corrective measures such as subsidies may be needed.',
    'medium',
    'NCERT Class XI',
    null,
    'ebd9acd50fd60cbf779387c555aa10da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ebd9acd50fd60cbf779387c555aa10da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Coase theorem'),
            ('B', 'The paradox of thrift'),
            ('C', 'The presence of positive externalities, which leads to under consumption'),
            ('D', 'The tragedy of the commons')
           ) as v(label, option_text)
 where q.question_hash = 'ebd9acd50fd60cbf779387c555aa10da'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The term gross in Gross Domestic Product implies that',
    'Gross measures do not deduct consumption of fixed capital, so GDP overstates the net addition to the stock of wealth, which is why net domestic product is also published.',
    'easy',
    'NCERT Class XI',
    null,
    'ffb1005e5380f6947370c3b76062d4a9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ffb1005e5380f6947370c3b76062d4a9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Net factor income from abroad has been included in the computation'),
            ('B', 'Depreciation of capital assets has not been deducted from the value of output'),
            ('C', 'Only the value of final goods has been included in the computation'),
            ('D', 'The value of intermediate goods has been excluded from the computation')
           ) as v(label, option_text)
 where q.question_hash = 'ffb1005e5380f6947370c3b76062d4a9'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The concept of a sunk cost implies that',
    'A sunk cost has already been incurred and cannot be recovered whatever the decision taken, so rational decisions depend only on future marginal costs and benefits.',
    'medium',
    'Standard Reference',
    null,
    '85bbd6684bc2856231c1d5f5c704c7e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '85bbd6684bc2856231c1d5f5c704c7e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Variable costs that vary with the level of output'),
            ('B', 'The minimum cost that a firm must bear in the short run'),
            ('C', 'Costs that can be recovered if the firm abandons the project'),
            ('D', 'Costs already incurred that cannot be recovered and should not influence future decisions')
           ) as v(label, option_text)
 where q.question_hash = '85bbd6684bc2856231c1d5f5c704c7e5'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The ''factor cost'' or basic price measure of national income excludes',
    'At factor cost the net product of the economy is shown without the impact of indirect taxes and subsidies, which is why GDP at market prices equals GVA at basic prices plus net taxes on products.',
    'medium',
    'NCERT Class XI',
    null,
    '781435d2a42fe2ab3e0d3d2d8116a391'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '781435d2a42fe2ab3e0d3d2d8116a391'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indirect taxes and subsidies'),
            ('B', 'Consumption of fixed capital'),
            ('C', 'Compensation of employees'),
            ('D', 'Rent and interest paid to factors of production')
           ) as v(label, option_text)
 where q.question_hash = '781435d2a42fe2ab3e0d3d2d8116a391'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the Indian system of national accounts, National Income is measured as',
    'National income is the net factor income accruing to the residents of the country, so it is net value added at factor cost within the country adjusted for net factor income from abroad.',
    'medium',
    'NCERT Class XI',
    null,
    'b75e113c00b1e9416954e446243c648a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b75e113c00b1e9416954e446243c648a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gross Domestic Product at factor cost'),
            ('B', 'Net Domestic Product at market prices'),
            ('C', 'Net National Income at factor cost, that is net value added within the country plus net factor income from abroad'),
            ('D', 'Gross National Product at market prices')
           ) as v(label, option_text)
 where q.question_hash = 'b75e113c00b1e9416954e446243c648a'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Value added by an industry is computed as',
    'Value added equals output minus intermediate consumption, and summing value added across all industries gives GDP while avoiding the double counting of intermediate goods.',
    'easy',
    'NCERT Class XI',
    null,
    'c1c012ddcd4a608f99f86c4f168bc22f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c1c012ddcd4a608f99f86c4f168bc22f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Its gross sales less the value of its exports'),
            ('B', 'The total value of all goods and services produced by the industry'),
            ('C', 'The value of its output minus the value of intermediate goods and services consumed in production'),
            ('D', 'The sum of wages and salaries paid by the industry')
           ) as v(label, option_text)
 where q.question_hash = 'c1c012ddcd4a608f99f86c4f168bc22f'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the national accounts, intermediate consumption refers to',
    'Intermediate consumption comprises goods and services that are fully used up in production, and it is deducted from gross value added to avoid counting them as part of final output.',
    'easy',
    'NCERT Class XI',
    null,
    '56acadc6a30c08bb5303160ef1d1b402'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '56acadc6a30c08bb5303160ef1d1b402'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The depreciation of machinery and equipment'),
            ('B', 'Goods and services used up in the production of other goods and services'),
            ('C', 'The gross fixed capital formation of enterprises'),
            ('D', 'Final goods purchased by households')
           ) as v(label, option_text)
 where q.question_hash = '56acadc6a30c08bb5303160ef1d1b402'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The primary sector continues to account for a disproportionately high share of employment in India because',
    'Because agricultural productivity remains low and non farm jobs have not grown fast enough, a very large share of the workforce continues to depend on low wage, low productivity agriculture.',
    'medium',
    'Economic Survey 2021',
    2021,
    'e61bade8a2769a4f3ea5d81b76a9c68f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e61bade8a2769a4f3ea5d81b76a9c68f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Indian agriculture is the most mechanised among the major economies'),
            ('B', 'Manufacturing output in India is not counted in the national accounts'),
            ('C', 'The services sector does not create jobs in the Indian economy'),
            ('D', 'A large number of workers remain in low productivity informal and subsistence agriculture')
           ) as v(label, option_text)
 where q.question_hash = 'e61bade8a2769a4f3ea5d81b76a9c68f'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Gross capital formation in the national accounts refers to',
    'Gross capital formation is the gross addition to the stock of fixed assets plus the change in stocks of inventories, and gross fixed capital formation is the part that corresponds to investment.',
    'medium',
    'NCERT Class XI',
    null,
    '2840f3926950de0356b68b5f9e775d0a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2840f3926950de0356b68b5f9e775d0a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Addition to the stock of physical assets, including changes in inventories, after allowing for depreciation'),
            ('B', 'The total savings of the household sector'),
            ('C', 'The total investment of the corporate sector alone'),
            ('D', 'Investment made by the government in roads and hospitals')
           ) as v(label, option_text)
 where q.question_hash = '2840f3926950de0356b68b5f9e775d0a'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following is NOT a component of gross capital formation as defined in the national accounts?',
    'Repayment of a loan is a financial transaction and involves no new physical asset, so it is excluded from capital formation; only additions to fixed assets and inventories are counted.',
    'medium',
    'NCERT Class XI',
    null,
    '3541ede0c5ef53f4af67e701a85b4e59'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3541ede0c5ef53f4af67e701a85b4e59'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Acquisition of machinery and equipment'),
            ('B', 'Repayment of an outstanding bank loan'),
            ('C', 'Construction of a new factory building'),
            ('D', 'Changes in stocks of finished goods')
           ) as v(label, option_text)
 where q.question_hash = '3541ede0c5ef53f4af67e701a85b4e59'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Gross Value Added by economic activity is used in the national accounts to',
    'Since value added strips out the intermediate inputs used by each industry, adding the value added of all industries gives GDP without double counting and also reveals the sectoral composition of output.',
    'easy',
    'NCERT Class XI',
    null,
    'e86f881f6ff215a29d286da1d0f1f5cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e86f881f6ff215a29d286da1d0f1f5cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Show the distribution of national income among households'),
            ('B', 'Measure the rate of inflation in the economy'),
            ('C', 'Show the sectoral composition of GDP while avoiding double counting of intermediate inputs'),
            ('D', 'Measure the level of unemployment in the country')
           ) as v(label, option_text)
 where q.question_hash = 'e86f881f6ff215a29d286da1d0f1f5cb'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The problem of double counting in national accounting arises because',
    'Adding the output of all industries would count the value of intermediate goods several times, which is why the value added approach is used to compute GDP.',
    'easy',
    'NCERT Class XI',
    null,
    '842abb01b7d4f6f76526956317b60d6d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '842abb01b7d4f6f76526956317b60d6d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Intermediate goods used in production are counted again as part of the value of the final product'),
            ('B', 'Goods are counted both at market prices and at factor cost'),
            ('C', 'Some sectors report both gross and net values of output'),
            ('D', 'Some goods are counted both as inputs and as final outputs')
           ) as v(label, option_text)
 where q.question_hash = '842abb01b7d4f6f76526956317b60d6d'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Gini coefficient is used to measure',
    'The Gini coefficient ranges from zero for perfect equality to one for perfect inequality and is used to compare the degree of inequality across societies and over time.',
    'easy',
    'NCERT Class XI',
    null,
    '22a67de482f888fb2f12eb5194f6f1f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '22a67de482f888fb2f12eb5194f6f1f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate at which poverty is reduced over a period of time'),
            ('B', 'The share of income going to the top ten percent of the population'),
            ('C', 'The ratio of the richest district to the poorest district'),
            ('D', 'Inequality in the distribution of income or consumption')
           ) as v(label, option_text)
 where q.question_hash = '22a67de482f888fb2f12eb5194f6f1f5'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Lorenz curve depicts',
    'The Lorenz curve plots cumulative population share against cumulative income share, and the Gini coefficient is derived from the area between this curve and the line of perfect equality.',
    'medium',
    'NCERT Class XI',
    null,
    '9891141e357d7284cc181a29b1c49745'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9891141e357d7284cc181a29b1c49745'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The cumulative share of income held by the cumulative percentage of the population arranged from poorest to richest'),
            ('B', 'The relationship between price and quantity demanded of a good'),
            ('C', 'The growth rate of the money supply over time'),
            ('D', 'The relationship between savings and income in an economy')
           ) as v(label, option_text)
 where q.question_hash = '9891141e357d7284cc181a29b1c49745'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The poverty line recommended by the Tendulkar Committee is based on',
    'The committee derived a single all-India line from the consumption expenditure of the poorest ten percent of the population and adjusted the state specific lines upward to that level.',
    'medium',
    'Standard Reference',
    null,
    '7797d057398b047d683265e61b31ef29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7797d057398b047d683265e61b31ef29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A calorie norm of 2100 calories per person per day for urban areas'),
            ('B', 'The per capita consumption expenditure of the poorest ten percent of the population'),
            ('C', 'The median consumption expenditure of the population'),
            ('D', 'The average consumption expenditure of the bottom thirty percent of households')
           ) as v(label, option_text)
 where q.question_hash = '7797d057398b047d683265e61b31ef29'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The National Sample Survey is conducted by',
    'The National Sample Survey Office under the Ministry of Statistics and Programme Implementation conducts the periodic labour force survey and other household surveys.',
    'easy',
    'Standard Reference',
    null,
    '41ce393a648df04a7cc8094241751428'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '41ce393a648df04a7cc8094241751428'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Reserve Bank of India'),
            ('B', 'NITI Aayog'),
            ('C', 'The Ministry of Statistics and Programme Implementation'),
            ('D', 'The Central Statistical Organisation of the erstwhile Planning Commission')
           ) as v(label, option_text)
 where q.question_hash = '41ce393a648df04a7cc8094241751428'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Periodic Labour Force Survey in India is conducted by',
    'The PLFS is conducted by the National Statistical Office, which replaced the quinquennial employment surveys and reports unemployment rates quarterly with annual averages.',
    'easy',
    'Standard Reference',
    null,
    'a534432fde09ca197efb0726e42df1da'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a534432fde09ca197efb0726e42df1da'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Labour Bureau of the Ministry of Employment'),
            ('B', 'The Ministry of Rural Development'),
            ('C', 'The Indian Statistical Institute'),
            ('D', 'The National Statistical Office under the Ministry of Statistics and Programme Implementation')
           ) as v(label, option_text)
 where q.question_hash = 'a534432fde09ca197efb0726e42df1da'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following pairs is correctly matched?',
    'The CPI Combined series uses 2012 as its base year, while the WPI series uses 2011-12 and constant price GDP also uses 2011-12, so the other pairs are wrong.',
    'hard',
    'RBI Handbook',
    null,
    '6e0d0abbca2095cbe9c9a5b923a38ef2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6e0d0abbca2095cbe9c9a5b923a38ef2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Base year for WPI : 2012'),
            ('B', 'Base year for constant price GDP : 2004-05'),
            ('C', 'Base year for CPI Combined : 2010-11'),
            ('D', 'Base year for CPI Combined : 2012')
           ) as v(label, option_text)
 where q.question_hash = '6e0d0abbca2095cbe9c9a5b923a38ef2'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the classification used in the national accounts, the primary sector comprises',
    'The primary sector covers the extraction of natural resources, that is agriculture and allied activities, forestry and fishing along with mining and quarrying of minerals.',
    'easy',
    'NCERT Class XI',
    null,
    '08f5af7b5629e3d34ecc4fcb979d6fcb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '08f5af7b5629e3d34ecc4fcb979d6fcb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manufacturing, mining and utilities'),
            ('B', 'Trade, transport, banking and real estate'),
            ('C', 'Agriculture, forestry, fishing and mining'),
            ('D', 'Public administration, defence and education services')
           ) as v(label, option_text)
 where q.question_hash = '08f5af7b5629e3d34ecc4fcb979d6fcb'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following activities is classified under the secondary sector?',
    'Sugar milling and food processing transform raw materials into finished goods and therefore belong to the secondary or industrial sector, whereas the other options are primary or tertiary activities.',
    'easy',
    'NCERT Class XI',
    null,
    '786cf966de422afd394a468d30a7e694'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '786cf966de422afd394a468d30a7e694'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Software services exported over the internet'),
            ('B', 'Sugar milling and food processing'),
            ('C', 'Fishing and animal husbandry'),
            ('D', 'Financial intermediation')
           ) as v(label, option_text)
 where q.question_hash = '786cf966de422afd394a468d30a7e694'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Gross Value Added at basic prices for the services sector is',
    'GVA is a gross measure, so consumption of fixed capital is not deducted from it, and net taxes on products are shown separately before arriving at GDP at market prices.',
    'hard',
    'NCERT Class XI',
    null,
    '062c07e71616536fb6d42fe839a0eb0e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '062c07e71616536fb6d42fe839a0eb0e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The value of output less intermediate consumption, with net taxes on products shown separately'),
            ('B', 'Net factor income earned from abroad'),
            ('C', 'The value of output after deducting consumption of fixed capital'),
            ('D', 'The gross value of exports of services alone')
           ) as v(label, option_text)
 where q.question_hash = '062c07e71616536fb6d42fe839a0eb0e'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Net national income at factor cost is the measure used in India to compute',
    'Per capita net national income at factor cost is the standard measure of average income and is also the denominator used in computing poverty ratios from consumption data.',
    'medium',
    'Standard Reference',
    null,
    'd907cc8eb430950fdf5714623c305f18'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd907cc8eb430950fdf5714623c305f18'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The real effective exchange rate of the rupee'),
            ('B', 'The fiscal deficit of the Union Budget'),
            ('C', 'Per capita income and the incidence of poverty'),
            ('D', 'The monetary deficit of the central government')
           ) as v(label, option_text)
 where q.question_hash = 'd907cc8eb430950fdf5714623c305f18'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following statements about the estimation of GDP in India is correct?',
    'Indian national accounts combine data from the Central and State government accounts, enterprise surveys, the Economic Census, the labour force survey and price data from the CPI and WPI series.',
    'medium',
    'RBI Handbook',
    null,
    'df329d7155a056fc6e5489a599757930'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'df329d7155a056fc6e5489a599757930'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India does not publish a constant price series for GDP'),
            ('B', 'Estimates are compiled by combining administrative sources, surveys and the accounts of the central and state governments'),
            ('C', 'GDP is computed exclusively from the national accounts of the central government'),
            ('D', 'GDP estimates are compiled from a census of enterprises conducted every five years')
           ) as v(label, option_text)
 where q.question_hash = 'df329d7155a056fc6e5489a599757930'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In India, the advance estimates of GDP are released',
    'The National Statistical Office brings out quarterly estimates with a First Advance Estimate in May accompanied by a Provisional Estimate for the first quarter, followed by later revisions through the year.',
    'hard',
    'RBI Handbook',
    null,
    'b0053a505bd12c4fb9d5dce9b839d35c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b0053a505bd12c4fb9d5dce9b839d35c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Twice a year, in May and December'),
            ('B', 'Once a year, in February'),
            ('C', 'Quarterly, along with the quarterly monetary policy statement'),
            ('D', 'First with a provisional estimate for the first quarter of the financial year')
           ) as v(label, option_text)
 where q.question_hash = 'b0053a505bd12c4fb9d5dce9b839d35c'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Economic growth in India is best measured by',
    'Real GDP at constant prices removes price effects and measures volume growth, and dividing it by population gives the per capita growth that matters for living standards.',
    'medium',
    'Economic Survey 2021',
    2021,
    '939d3dff09e996898a38450f88cc2acd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '939d3dff09e996898a38450f88cc2acd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Real gross domestic product at constant prices, and per head for per capita growth'),
            ('B', 'Nominal GDP converted at the current exchange rate'),
            ('C', 'The ratio of exports to GDP'),
            ('D', 'The index of industrial production')
           ) as v(label, option_text)
 where q.question_hash = '939d3dff09e996898a38450f88cc2acd'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Per capita income cannot by itself serve as a measure of well being because',
    'Per capita income is a distribution neutral average and ignores inequality, unpaid work, leisure, environment and access to public services, which is why the HDI and MPI were developed.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '91cc98c545667c517fc3068c83ad1942'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '91cc98c545667c517fc3068c83ad1942'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is calculated at current prices'),
            ('B', 'It is an average that ignores distribution as well as non economic aspects of welfare'),
            ('C', 'It is based on gross rather than net flows of income'),
            ('D', 'It is measured at factor cost only')
           ) as v(label, option_text)
 where q.question_hash = '91cc98c545667c517fc3068c83ad1942'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The multidimensional poverty index used by NITI Aayog measures poverty through a composite of',
    'The NITI Aayog index uses twelve indicators grouped under health, education and standard of living, and is computed for districts to guide convergence of schemes.',
    'medium',
    'NITI Aayog',
    null,
    'e817727c1d108038881d08772eb3d73e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e817727c1d108038881d08772eb3d73e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Employment type and wage levels'),
            ('B', 'Access to banking and digital payments'),
            ('C', 'Income and consumption levels'),
            ('D', 'Health, education and standard of living indicators')
           ) as v(label, option_text)
 where q.question_hash = 'e817727c1d108038881d08772eb3d73e'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Sustainable Development Goals replaced which earlier global development framework?',
    'The seventeen Sustainable Development Goals and their 169 targets adopted in 2015 replaced the eight Millennium Development Goals that ran from 2000 to 2015.',
    'easy',
    'Standard Reference',
    null,
    '4eac3723ff0a8c4e3283be352491662e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4eac3723ff0a8c4e3283be352491662e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Millennium Development Goals'),
            ('B', 'The Paris Agreement and the Kyoto Protocol'),
            ('C', 'The Washington Consensus and the Doha Round'),
            ('D', 'The Rio Declaration and Agenda 21')
           ) as v(label, option_text)
 where q.question_hash = '4eac3723ff0a8c4e3283be352491662e'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Human Development Report is published annually by',
    'The UNDP brings out the Human Development Report every year, which ranks countries on the HDI and related indices such as the IHDI, GDI and the planetary pressure adjusted HDI.',
    'easy',
    'Standard Reference',
    null,
    'fc5815e439d77122c6107c57e0231756'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fc5815e439d77122c6107c57e0231756'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The International Monetary Fund'),
            ('B', 'The World Economic Forum'),
            ('C', 'The United Nations Development Programme'),
            ('D', 'The World Bank')
           ) as v(label, option_text)
 where q.question_hash = 'fc5815e439d77122c6107c57e0231756'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Gender Development Index published in the Human Development Report measures',
    'The GDI compares the HDI achieved by women and men in the same country and highlights gaps in health, education and income rather than only labour market participation.',
    'medium',
    'Standard Reference',
    null,
    'c3567d029e7540711c74a31284b2086c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c3567d029e7540711c74a31284b2086c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Differences between female and male human development across health, education and income dimensions'),
            ('B', 'The ratio of women''s wages to men''s wages in the formal sector'),
            ('C', 'The share of women in the labour force of a country'),
            ('D', 'The overall gender gap in economic participation')
           ) as v(label, option_text)
 where q.question_hash = 'c3567d029e7540711c74a31284b2086c'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Inequality adjusted Human Development Index differs from the ordinary HDI by',
    'The IHDI adjusts the HDI for the inequality that prevails within each of the three dimensions, so a country with a high HDI but wide disparities may have a much lower IHDI.',
    'hard',
    'Standard Reference',
    null,
    'df3e9901a0bdf01f34f40c17e64ab447'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'df3e9901a0bdf01f34f40c17e64ab447'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Using mean years of schooling in place of expected years of schooling'),
            ('B', 'Using GNI per capita at purchasing power parity instead of market exchange rates'),
            ('C', 'Including a measure of the carbon footprint of the country'),
            ('D', 'Discounting each dimension of human development for inequality in its distribution')
           ) as v(label, option_text)
 where q.question_hash = 'df3e9901a0bdf01f34f40c17e64ab447'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The Plan of Action to Exit Poverty in India is based on the idea that',
    'The Plan of Action to Exit Poverty identifies nine essential elements and emphasises convergence of investments through social, financial and physical infrastructure to raise household incomes sustainably.',
    'medium',
    'NITI Aayog',
    null,
    '0443eda163c32b69afdbaaf06e5cc9f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0443eda163c32b69afdbaaf06e5cc9f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Assets of the poor should be pooled into common property resources'),
            ('B', 'Financial inclusion alone can lift every household out of poverty'),
            ('C', 'A convergence approach covering health, nutrition, agriculture, water, sanitation, skilling, housing, education and social security can lift households above the poverty line'),
            ('D', 'Every poor household should be guaranteed wage employment under MGNREGA')
           ) as v(label, option_text)
 where q.question_hash = '0443eda163c32b69afdbaaf06e5cc9f3'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The three components of the PM-KUSUM scheme are',
    'PM-KUSUM has three components, namely solar power plants of 500 kW to 2 MW per unit, standalone solar pumps for farmers and solarisation of grid connected small power plants.',
    'easy',
    'Standard Reference',
    null,
    'b2b9a4ac3e7f99a644405e9ea7faccea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b2b9a4ac3e7f99a644405e9ea7faccea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Cold chain support, warehouse modernisation and market yard development'),
            ('B', 'Solar power plants of 500 kW to 2 MW capacity, solar pumps for farmers and solarisation of grid connected small power plants'),
            ('C', 'Drip and sprinkler irrigation, rainwater harvesting and soil health cards'),
            ('D', 'Crop insurance, Kisan Credit Cards and integration with e-NAM markets')
           ) as v(label, option_text)
 where q.question_hash = 'b2b9a4ac3e7f99a644405e9ea7faccea'
on conflict (question_id, label) do nothing;

-- economy | national-income | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The SDG India Index published by NITI Aayog is',
    'The SDG India Index scores each state and union territory on its progress against the seventeen SDGs, using 100 indicators, with a categorical score from 0 to 100 for each goal.',
    'medium',
    'NITI Aayog',
    null,
    '7b339c886d99d3fc9bb0061164b903fa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '7b339c886d99d3fc9bb0061164b903fa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An index of the competitiveness of Indian exports'),
            ('B', 'A composite index of the health performance of districts'),
            ('C', 'A ranking of states on their economic performance'),
            ('D', 'A measure of progress of states and union territories towards the seventeen Sustainable Development Goals, scored out of 100')
           ) as v(label, option_text)
 where q.question_hash = '7b339c886d99d3fc9bb0061164b903fa'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Which of the following is a limitation of GDP as a measure of economic performance?',
    'GDP is an aggregate of market valued production and omits the distribution of income, unpaid work of women and the depletion of natural assets, so it must be read with complementary social and environmental indicators.',
    'easy',
    'NCERT Class XI',
    null,
    '9b1266aff54b8c20fa039760635fdbbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9b1266aff54b8c20fa039760635fdbbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'GDP is measured for a single year only'),
            ('B', 'GDP ignores the value of imports'),
            ('C', 'GDP does not capture income distribution, unpaid household work or environmental degradation'),
            ('D', 'GDP is computed at current prices in India')
           ) as v(label, option_text)
 where q.question_hash = '9b1266aff54b8c20fa039760635fdbbb'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The sectoral approach to national income accounting in India involves',
    'The sectoral approach presents national income as a sum of value added by individual industries, which reveals the structure of the economy and the relative importance of each sector.',
    'easy',
    'NCERT Class XI',
    null,
    '6c0975619793a7e38fea429ed83a9e93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '6c0975619793a7e38fea429ed83a9e93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Breaking down output and income generation by economic activity such as agriculture, industry and services'),
            ('B', 'Studying the savings behaviour of households'),
            ('C', 'Analysing the distribution of income between rural and urban areas'),
            ('D', 'Studying the foreign trade performance of the economy')
           ) as v(label, option_text)
 where q.question_hash = '6c0975619793a7e38fea429ed83a9e93'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The unorganised sector in the Indian economy refers to',
    'The unorganised sector comprises small and unregistered enterprises and self employed workers and remains the larger of the two sectors in terms of both output and employment in India.',
    'easy',
    'Economic Survey 2021',
    2021,
    'a8b9881b451e4a269dbfb169471581cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8b9881b451e4a269dbfb169471581cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only the companies listed on the stock exchanges'),
            ('B', 'The part of the economy outside the organised sector, which is larger in terms of employment and output'),
            ('C', 'The part of the economy owned by the central government'),
            ('D', 'Enterprises owned by foreign investors')
           ) as v(label, option_text)
 where q.question_hash = 'a8b9881b451e4a269dbfb169471581cb'
on conflict (question_id, label) do nothing;

-- economy | national-income | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'Per capita income as published in official statistics is based on',
    'Per capita income is net national income at factor cost divided by the mid-year population, and because it is a net concept it is used to compute the poverty ratios from consumption data.',
    'hard',
    'Standard Reference',
    null,
    '8d9bf67de0db19a38e32b6573a098f76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8d9bf67de0db19a38e32b6573a098f76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gross domestic product divided by the total population'),
            ('B', 'Net national income at factor cost divided by the mid-year population'),
            ('C', 'Total national income divided by the labour force'),
            ('D', 'Gross value added by services divided by the total population')
           ) as v(label, option_text)
 where q.question_hash = '8d9bf67de0db19a38e32b6573a098f76'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'The three methods of estimating national income in India are',
    'National income can be estimated from the production side by value added, from the income side by summing factor incomes, and from the expenditure side by final consumption, investment and net exports.',
    'easy',
    'NCERT Class XI',
    null,
    'e20759ca3644026a59e728e41afcea8e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e20759ca3644026a59e728e41afcea8e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The balance of payments method, the budget method and the census method'),
            ('B', 'The input output method, the monetary method and the demographic method'),
            ('C', 'The production method, the income method and the expenditure method'),
            ('D', 'The value added method, the sales method and the tax method')
           ) as v(label, option_text)
 where q.question_hash = 'e20759ca3644026a59e728e41afcea8e'
on conflict (question_id, label) do nothing;

-- economy | national-income | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'national-income'),
    'In the expenditure approach, GDP is measured as',
    'The expenditure method adds up final consumption expenditure, gross capital formation and net exports, which must equal output by the national accounting identity.',
    'easy',
    'NCERT Class XI',
    null,
    '6a591d8c152a46cbb2f7f79306afd71d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a591d8c152a46cbb2f7f79306afd71d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sum of all factor incomes earned in production'),
            ('B', 'The sum of value added across all industries'),
            ('C', 'Total output less depreciation'),
            ('D', 'Final consumption expenditure plus gross capital formation plus net exports')
           ) as v(label, option_text)
 where q.question_hash = '6a591d8c152a46cbb2f7f79306afd71d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Narrow money supply in India, designated M1, comprises',
    'M1, the narrow money aggregate, covers currency with the public, demand deposits of the banking system and other deposits of the public with the Reserve Bank of India.',
    'easy',
    'RBI Handbook',
    null,
    'ec049df6610f3f7fd9b479068473cf00'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ec049df6610f3f7fd9b479068473cf00'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Currency with the public, demand deposits with the banking system and other deposits with the RBI'),
            ('B', 'Currency with the public plus time deposits with the banking system'),
            ('C', 'Currency with the public, total deposits of the banking sector and postal savings deposits'),
            ('D', 'Total currency issued by the RBI plus total deposits of scheduled banks')
           ) as v(label, option_text)
 where q.question_hash = 'ec049df6610f3f7fd9b479068473cf00'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Broad money supply in India, designated M3, includes',
    'M3 is the broad money aggregate and adds time deposits of the banking system and post office savings deposits to narrow money, capturing funds available for spending and investment.',
    'medium',
    'RBI Handbook',
    null,
    'ab6f2606d488eb2a0a0d0f9d7a1ebf0b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ab6f2606d488eb2a0a0d0f9d7a1ebf0b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Currency with the public and the reserve deposits of the central bank'),
            ('B', 'Narrow money plus time deposits with the banking system and post office savings deposits'),
            ('C', 'Currency with the public plus gold and silver held by households'),
            ('D', 'Total currency issued by the RBI plus total deposits of scheduled commercial banks')
           ) as v(label, option_text)
 where q.question_hash = 'ab6f2606d488eb2a0a0d0f9d7a1ebf0b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is NOT one of the traditional functions of money?',
    'The basic functions of money are medium of exchange, unit of account and store of value, with the basis of credit and the basis of payments to government taxes being additional functions, not a measure of output.',
    'easy',
    'NCERT Class XI',
    null,
    'e703d6ab4dda2a0fd68b6df14b02cdaa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e703d6ab4dda2a0fd68b6df14b02cdaa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A measure of the physical size of the economy''s output'),
            ('B', 'Store of value'),
            ('C', 'Medium of exchange'),
            ('D', 'Unit of account')
           ) as v(label, option_text)
 where q.question_hash = 'e703d6ab4dda2a0fd68b6df14b02cdaa'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The currency deposit ratio in India indicates',
    'The currency deposit ratio reflects how much of the system''s funds the public prefers to hold as cash, and a rise in it signals a weakening of the money multiplier and of banks'' capacity to create credit.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '34b4e183e74913f34cdcee6e9ca298b9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '34b4e183e74913f34cdcee6e9ca298b9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ratio of bank advances to total deposits'),
            ('B', 'The proportion of a bank''s net worth funded by reserves'),
            ('C', 'The rate at which currency is converted into deposits'),
            ('D', 'The extent of public preference for holding cash rather than bank deposits')
           ) as v(label, option_text)
 where q.question_hash = '34b4e183e74913f34cdcee6e9ca298b9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Basic savings deposit accounts with banks are included in the monetary aggregates as',
    'Basic savings deposit accounts are operable as demand accounts and the RBI includes them in the narrow money aggregate M1 along with current account balances.',
    'hard',
    'RBI Handbook',
    null,
    'f86ee52719194e28f9fe6bb9b1df7499'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f86ee52719194e28f9fe6bb9b1df7499'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'M3, because they are maintained with post offices'),
            ('B', 'M1, because they carry a minimum balance requirement'),
            ('C', 'M1, because the RBI treats them as demand deposits'),
            ('D', 'M2, because they carry interest')
           ) as v(label, option_text)
 where q.question_hash = 'f86ee52719194e28f9fe6bb9b1df7499'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the Banking Regulation Act, 1949, the minimum holding of paid up equity capital by the public in a banking company is',
    'Section 5 of the Banking Regulation Act requires that at least 50 per cent of the paid up share capital of a banking company be held by the public, which is the condition for licensing a company as a bank.',
    'medium',
    'Standard Reference',
    null,
    '04de6f75f8102fc0fd227c7a857102f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '04de6f75f8102fc0fd227c7a857102f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '50 per cent'),
            ('B', '51 per cent'),
            ('C', '75 per cent'),
            ('D', '26 per cent')
           ) as v(label, option_text)
 where q.question_hash = '04de6f75f8102fc0fd227c7a857102f5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Cash Reserve Ratio is maintained by banks with',
    'CRR is a proportion of net demand and time liabilities that banks must hold as cash or approved securities with the RBI, and the RBI does not pay interest on such balances.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '64f15acd0c74ec12c172d70a56a1b526'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '64f15acd0c74ec12c172d70a56a1b526'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State Governments'),
            ('B', 'The Reserve Bank of India'),
            ('C', 'The National Bank for Agriculture and Rural Development'),
            ('D', 'The Central Government')
           ) as v(label, option_text)
 where q.question_hash = '64f15acd0c74ec12c172d70a56a1b526'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the Banking Regulation Act, 1949, the Statutory Liquidity Ratio may be maintained in',
    'SLR must be held in cash, gold or approved securities such as government bonds and treasury bills, and since these are government liabilities the central government provides a safe asset for this purpose.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '0ef7e7ea5fb12a1247487370e06c6c4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0ef7e7ea5fb12a1247487370e06c6c4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gold ornaments of customers held in bank lockers'),
            ('B', 'Commercial paper and corporate bonds'),
            ('C', 'Cash, gold or approved securities, mainly government securities'),
            ('D', 'Equity shares of listed companies')
           ) as v(label, option_text)
 where q.question_hash = '0ef7e7ea5fb12a1247487370e06c6c4a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'A Non-Banking Financial Company is defined under',
    'Section 5A of the Banking Regulation Act, 1949, as amended in 1998, defines an NBFC as a company that can accept deposits from the public in any form and lend or invest in the assets specified by the RBI.',
    'easy',
    'RBI Handbook',
    null,
    '44dfe2e69ec41cf55407b62bd6abaf85'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '44dfe2e69ec41cf55407b62bd6abaf85'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Companies Act, 2013'),
            ('B', 'The Finance Act'),
            ('C', 'The Securities and Exchange Board of India Act, 1992'),
            ('D', 'The Banking Regulation Act, 1949')
           ) as v(label, option_text)
 where q.question_hash = '44dfe2e69ec41cf55407b62bd6abaf85'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'A non-banking financial company registered with the RBI cannot',
    'An NBFC is not permitted to accept demand deposits from the public, because that would make it a bank, though it may accept time deposits and issue other instruments permitted by the RBI.',
    'medium',
    'RBI Handbook',
    null,
    'e8f2c45ef3ce8c0cb699acaf402fb8f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e8f2c45ef3ce8c0cb699acaf402fb8f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lend to individuals for consumption purposes'),
            ('B', 'Issue commercial paper'),
            ('C', 'Accept deposits from the public for a period of more than one year'),
            ('D', 'Accept demand deposits from the public')
           ) as v(label, option_text)
 where q.question_hash = 'e8f2c45ef3ce8c0cb699acaf402fb8f4'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Banking Ombudsman scheme for redressal of customer grievances operates under',
    'The RBI administers the Banking Ombudsman scheme for retail banking complaints, and its earlier three separate schemes were merged into a single framework with a centralised complaint handling system.',
    'easy',
    'RBI Handbook',
    null,
    '3fbaa9a67b274c5822e915fd908ecfdd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3fbaa9a67b274c5822e915fd908ecfdd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Reserve Bank of India'),
            ('B', 'The Ministry of Finance'),
            ('C', 'The Securities and Exchange Board of India'),
            ('D', 'The Insurance Regulatory and Development Authority')
           ) as v(label, option_text)
 where q.question_hash = '3fbaa9a67b274c5822e915fd908ecfdd'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Priority sector lending targets for commercial banks in India are determined by',
    'Priority sector lending norms are determined by the Government in consultation with the RBI and notified by the RBI, with the overall priority sector target fixed as a percentage of adjusted net bank credit.',
    'medium',
    'RBI Handbook',
    null,
    'd0ba6923e7046f82614a0fcae95b3405'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd0ba6923e7046f82614a0fcae95b3405'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Securities and Exchange Board of India'),
            ('B', 'The Government of India in consultation with the Reserve Bank of India'),
            ('C', 'The RBI alone under the directions of the Monetary Policy Committee'),
            ('D', 'The Finance Commission every five years')
           ) as v(label, option_text)
 where q.question_hash = 'd0ba6923e7046f82614a0fcae95b3405'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Priority sectors for lending by commercial banks in India include',
    'The RBI''s priority sector list covers agriculture and allied activities, MSMEs, export credit, education, housing, social infrastructure, renewables and credit to weaker sections, with sub-targets for each.',
    'medium',
    'RBI Handbook',
    null,
    '6170433e012c6a60b74be4480aabaadb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6170433e012c6a60b74be4480aabaadb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Only housing and education loans'),
            ('B', 'Infrastructure and corporate lending to large companies'),
            ('C', 'Agriculture, MSMEs, export credit, education, housing, social infrastructure, renewables and weaker sections'),
            ('D', 'Only agriculture and export credit')
           ) as v(label, option_text)
 where q.question_hash = '6170433e012c6a60b74be4480aabaadb'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the Pradhan Mantri Jan Dhan Yojana, basic savings bank deposit accounts are provided with',
    'Jan Dhan accounts come with a RuPay card, a zero balance overdraft of up to Rs 10,000 after six months and an accident insurance cover of Rs 2 lakh, and the overdraft scheme is now linked to the income of the account holder.',
    'medium',
    'Standard Reference',
    null,
    'c5e76a262fd44be437cb0130ad5b73cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c5e76a262fd44be437cb0130ad5b73cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A credit guarantee of Rs 5 lakh for each account holder'),
            ('B', 'An interest rate of seven per cent fixed by the government'),
            ('C', 'A mandatory life insurance cover of Rs 436 a year paid by the government'),
            ('D', 'A RuPay debit card, an overdraft facility of up to Rs 10,000 after satisfactory operation and an accident insurance cover of Rs 2 lakh')
           ) as v(label, option_text)
 where q.question_hash = 'c5e76a262fd44be437cb0130ad5b73cb'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Pradhan Mantri Mudra Yojana provides loans to',
    'MUDRA lending is divided into Shishu, Kishore and Tarun categories for micro enterprises and small units in manufacturing, trading, services and allied activities, and the loan is collateral free.',
    'easy',
    'Standard Reference',
    null,
    '5a6f8c210723d32cd982c115df81f56a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5a6f8c210723d32cd982c115df81f56a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Micro and small enterprises for income generating units in manufacturing, trading and services'),
            ('B', 'Women entrepreneurs for setting up information technology parks'),
            ('C', 'Large corporates for export diversification'),
            ('D', 'Farmers for seasonal cropping needs')
           ) as v(label, option_text)
 where q.question_hash = '5a6f8c210723d32cd982c115df81f56a'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Unified Payments Interface allows',
    'UPI is a real time retail payment system built on the Immediate Payment Service, and it enables small value transfers through mobile apps, bank apps, internet banking and other channels without any value ceiling.',
    'medium',
    'RBI Handbook',
    null,
    '815e8c05fb63538050369182a00c1b3d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '815e8c05fb63538050369182a00c1b3d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'High value fund transfers in tranches of Rs 2 lakh and above'),
            ('B', 'Instant person to merchant and person to person payments through an app or any other channel, round the clock'),
            ('C', 'Only inter bank settlement through a central clearing house'),
            ('D', 'Transfer of funds between two branches of the same bank')
           ) as v(label, option_text)
 where q.question_hash = '815e8c05fb63538050369182a00c1b3d'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Unlike the RTGS system, the National Electronic Funds Transfer operates on',
    'NEFT settles on a half hourly basis and allows any amount, while RTGS is a large value system operating in real time with a minimum transaction size of Rs 2 lakh.',
    'hard',
    'RBI Handbook',
    null,
    '8b4a38c7454985aad8412ddd8845a654'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8b4a38c7454985aad8412ddd8845a654'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A daily settlement cycle with no minimum transaction size'),
            ('B', 'A fortnightly cycle for government transactions'),
            ('C', 'A half hourly batch cycle with a minimum transaction size of Rs 2,000'),
            ('D', 'A continuous real time basis with a minimum size of Rs 2 lakh')
           ) as v(label, option_text)
 where q.question_hash = '8b4a38c7454985aad8412ddd8845a654'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The National Automated Clearing House is used primarily for',
    'NACH handles bulk electronic clearing of recurring collections and payments such as salaries, pensions, dividends, insurance premiums and utility dues under the eNACH framework.',
    'medium',
    'RBI Handbook',
    null,
    'f9765273978393203bb84327344fb5ea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9765273978393203bb84327344fb5ea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Settlement of stock market trades'),
            ('B', 'High value inter bank fund transfers'),
            ('C', 'Bulk processing of recurring credit and debit entries such as salary, dividend and interest payments'),
            ('D', 'Real time mobile payments between individuals')
           ) as v(label, option_text)
 where q.question_hash = 'f9765273978393203bb84327344fb5ea'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Immediate Payment Service was introduced in India in',
    'IMPS was launched by the National Payments Corporation of India in November 2010 and enabled round the clock inter bank fund transfer and, later, person to person payments through the UPI platform.',
    'medium',
    'RBI Handbook',
    null,
    'a0fb52f196bdf2eaa94cffb406aae990'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a0fb52f196bdf2eaa94cffb406aae990'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2010'),
            ('B', '2014'),
            ('C', '1998'),
            ('D', '2006')
           ) as v(label, option_text)
 where q.question_hash = 'a0fb52f196bdf2eaa94cffb406aae990'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'A loan account is classified as a Non Performing Asset by the RBI when',
    'An account becomes an NPA if the dues are not paid for more than 90 days for term loans and over 120 days for other demand loans and cash credit, the latter being termed as a non performing asset in the books of the bank.',
    'medium',
    'RBI Handbook',
    null,
    '3d0a143078562257764b36c949c1d14b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3d0a143078562257764b36c949c1d14b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is being serviced through the help of a collection agent'),
            ('B', 'It remains overdue beyond the stipulated period, such as 90 days for term loans'),
            ('C', 'It has been restructured by the bank'),
            ('D', 'It has been classified as a sub standard asset')
           ) as v(label, option_text)
 where q.question_hash = '3d0a143078562257764b36c949c1d14b'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the RBI''s asset classification norms, sub standard assets are those that',
    'Sub standard assets are NPAs of up to twelve months, doubtful assets have remained NPAs for more than twelve months, and loss assets are those where the loss has been identified but not yet written off.',
    'medium',
    'RBI Handbook',
    null,
    '161431a62e98fb14a80136ce57acbeea'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '161431a62e98fb14a80136ce57acbeea'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Have lost the certainty of realisation and are treated as loss assets'),
            ('B', 'Are being managed through the help of collection agencies'),
            ('C', 'Are doubtful but have not yet been written off'),
            ('D', 'Have remained non performing assets for a period of up to twelve months')
           ) as v(label, option_text)
 where q.question_hash = '161431a62e98fb14a80136ce57acbeea'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Capital Adequacy Ratio of a bank is computed as',
    'The CAR compares a bank''s capital base with its risk weighted assets, so that the higher the risk of the assets the more capital the bank must hold, as required under the Basel norms.',
    'medium',
    'RBI Handbook',
    null,
    '93de88622c2708b53c7fbd028aedbeae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93de88622c2708b53c7fbd028aedbeae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total assets divided by total deposits'),
            ('B', 'Capital, both Tier 1 and Tier 2, expressed as a percentage of total risk weighted assets'),
            ('C', 'Net profit after tax divided by total assets'),
            ('D', 'Total capital employed divided by total borrowings')
           ) as v(label, option_text)
 where q.question_hash = '93de88622c2708b53c7fbd028aedbeae'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the Basel norms, Tier 2 capital of a bank includes',
    'Tier 1 comprises common equity and additional Tier 1 instruments, while Tier 2 includes undisclosed reserves, revaluation reserves, loan loss provisions and subordinated debt with a maturity of at least five years.',
    'hard',
    'RBI Handbook',
    null,
    '0c3cf83f8cb698f2297d78e58daf1532'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0c3cf83f8cb698f2297d78e58daf1532'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The deposits of the public'),
            ('B', 'Paid up equity share capital and reserves'),
            ('C', 'Funds from the profits of the bank not distributed as dividend'),
            ('D', 'Undisclosed reserves, revaluation reserves and certain subordinated debt instruments')
           ) as v(label, option_text)
 where q.question_hash = '0c3cf83f8cb698f2297d78e58daf1532'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Financial Stability and Development Council is chaired by',
    'The FSDC, established in 2010, is chaired by the Union Finance Minister and includes the RBI Governor and the chairs of SEBI, IRDAI, PFRDA and the Finance Commission as members.',
    'easy',
    'RBI Handbook',
    null,
    '8944b9e59cad0408659be52e9be6a61f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8944b9e59cad0408659be52e9be6a61f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Union Finance Minister'),
            ('B', 'The Governor of the Reserve Bank of India'),
            ('C', 'The Chairman of the Finance Commission'),
            ('D', 'The Chief Minister of the largest state')
           ) as v(label, option_text)
 where q.question_hash = '8944b9e59cad0408659be52e9be6a61f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Digital public infrastructure in India refers to',
    'Digital public infrastructure builds on the principle of open and interoperable digital public goods, of which Aadhaar, UPI and the account aggregator framework are the best known Indian examples.',
    'medium',
    'Standard Reference',
    null,
    '879f97279bdb2b14d6a742e73aaa1426'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '879f97279bdb2b14d6a742e73aaa1426'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A framework for the mandatory digitisation of all small businesses'),
            ('B', 'The information technology infrastructure provided to government schools'),
            ('C', 'A shared digital layer of identity, payments and data such as Aadhaar, UPI linked banking and the account aggregator, built to deliver public services at scale'),
            ('D', 'The collection of all government data in a single centralised database')
           ) as v(label, option_text)
 where q.question_hash = '879f97279bdb2b14d6a742e73aaa1426'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Account Aggregator framework in India enables',
    'The Account Aggregator is a consented, customer driven data sharing platform through which a fintech can pull financial information from the banks of a customer for a specified purpose, with no blanket access to bank data.',
    'medium',
    'RBI Handbook',
    null,
    'a1a648760bb72a67a12ba289336a6be9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a1a648760bb72a67a12ba289336a6be9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A fintech to obtain, with the consent of the customer, financial information from various banks for a specified purpose'),
            ('B', 'The government to debit taxes directly from any bank account of a citizen'),
            ('C', 'Banks to share loan application data without the consent of the customer'),
            ('D', 'The RBI to collect the balances of all bank accounts in the country')
           ) as v(label, option_text)
 where q.question_hash = 'a1a648760bb72a67a12ba289336a6be9'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'In the standard textbook classification, near money includes',
    'Assets that are not money in the strict sense but can be readily converted into money without much loss, such as savings and time deposits, are called near money and are part of the broader monetary aggregates.',
    'medium',
    'NCERT Class XI',
    null,
    '9040749c4fe8131a993fd7da83f797f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9040749c4fe8131a993fd7da83f797f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Demand deposits with banks'),
            ('B', 'Time deposits with banks and post office savings deposits, which can be readily converted into money'),
            ('C', 'Gold and silver ornaments held by households'),
            ('D', 'Currency notes held by the public')
           ) as v(label, option_text)
 where q.question_hash = '9040749c4fe8131a993fd7da83f797f3'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Repo transactions are undertaken by the RBI with',
    'Under the repo, the RBI lends to banks against government securities with an agreement to repurchase them, thereby injecting liquidity into the system at the repo rate.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'f4b04649dac25ee6b5b78968a5448c7e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f4b04649dac25ee6b5b78968a5448c7e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The general public against government securities'),
            ('B', 'Only non banking financial companies against corporate bonds'),
            ('C', 'Commercial banks and other financial institutions against government securities'),
            ('D', 'The Central Government against tax arrears')
           ) as v(label, option_text)
 where q.question_hash = 'f4b04649dac25ee6b5b78968a5448c7e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'In a reverse repo transaction, the RBI',
    'In a reverse repo the RBI purchases securities from banks with an agreement to sell them back, which absorbs liquidity from the banking system at the reverse repo rate.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '62120457643d82d96543c1ae156f2e11'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62120457643d82d96543c1ae156f2e11'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lends directly to the Central Government'),
            ('B', 'Raises the cash reserve ratio of banks'),
            ('C', 'Lends to banks against securities with an obligation to repurchase'),
            ('D', 'Borrows from banks by buying securities with an agreement to sell them back')
           ) as v(label, option_text)
 where q.question_hash = '62120457643d82d96543c1ae156f2e11'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Marginal Standing Facility allows banks to',
    'The MSF is a standing overnight liquidity facility under which banks can borrow from the RBI by dipping into their cash reserve tranche up to five per cent below the repo rate, and the MSF rate stands above the repo rate.',
    'medium',
    'RBI Handbook',
    null,
    'b6e665eb09173b3402ed210bb0f50b4e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b6e665eb09173b3402ed210bb0f50b4e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Borrow for a period of up to one year against government securities'),
            ('B', 'Borrow overnight from the RBI by dipping up to five per cent below the repo rate'),
            ('C', 'Borrow overnight against corporate bonds'),
            ('D', 'Borrow from the National Securities Depository')
           ) as v(label, option_text)
 where q.question_hash = 'b6e665eb09173b3402ed210bb0f50b4e'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Liquidity Adjustment Facility of the RBI provides overnight liquidity to banks against',
    'Under the LAF, banks can borrow overnight from the RBI against government securities, with the RBI auctioning such liquidity through repo and reverse repo operations.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '33e91699a98592fa1128395bc64c9198'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '33e91699a98592fa1128395bc64c9198'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Foreign currency deposits'),
            ('B', 'Equity shares of listed companies'),
            ('C', 'Government securities'),
            ('D', 'Corporate bonds')
           ) as v(label, option_text)
 where q.question_hash = '33e91699a98592fa1128395bc64c9198'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Which of the following is a quantitative instrument of monetary policy?',
    'Quantitative instruments influence the overall volume and cost of credit, such as the repo rate and the cash reserve ratio, while qualitative or selective instruments direct credit to particular sectors.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'b02d12b97df8b5493a7586b9041689f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b02d12b97df8b5493a7586b9041689f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Repo rate'),
            ('B', 'Margin requirements for lending against securities'),
            ('C', 'Priority sector lending targets'),
            ('D', 'Ban on fresh credit to certain sectors')
           ) as v(label, option_text)
 where q.question_hash = 'b02d12b97df8b5493a7586b9041689f5'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'A bank''s balance sheet is best described in terms of',
    'A balance sheet is a statement of financial position showing assets on one side and liabilities and capital on the other, and the difference between assets and liabilities gives the net worth of the bank.',
    'easy',
    'Standard Reference',
    null,
    '245ec0e0d1bce21555ebd3260b052ab7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '245ec0e0d1bce21555ebd3260b052ab7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The number of branches opened during the year'),
            ('B', 'The total deposits mobilised from the public'),
            ('C', 'Its income statement alone'),
            ('D', 'Assets on one side and liabilities plus owners equity on the other')
           ) as v(label, option_text)
 where q.question_hash = '245ec0e0d1bce21555ebd3260b052ab7'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Financial Inclusion Index parameters used by the RBI include',
    'The Network for Financial Inclusion index measures account ownership, the share of deposits and credit in GDP and the number of outlets per 100,000 adults, and it underpins the monitoring of financial inclusion targets.',
    'hard',
    'RBI Handbook',
    null,
    '8667f09bb37b1653a50f38f68cd0707f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8667f09bb37b1653a50f38f68cd0707f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The average size of bank balance sheets'),
            ('B', 'The share of bank branches and ATMs located in villages'),
            ('C', 'The number of listed companies on the stock exchanges'),
            ('D', 'Account ownership, deposits and credit relative to GDP, and the number of outlets per 100,000 adults in rural areas')
           ) as v(label, option_text)
 where q.question_hash = '8667f09bb37b1653a50f38f68cd0707f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Credit Information Companies in India are registered with',
    'Credit information companies, which compile credit records on borrowers for lenders, are registered and regulated by the RBI under the Credit Information Companies (Regulation) Act, 2005.',
    'easy',
    'RBI Handbook',
    null,
    '489c00fc10b3a53c1ed01571cf017e30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '489c00fc10b3a53c1ed01571cf017e30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Reserve Bank of India'),
            ('B', 'SEBI'),
            ('C', 'IRDAI'),
            ('D', 'The Ministry of Corporate Affairs')
           ) as v(label, option_text)
 where q.question_hash = '489c00fc10b3a53c1ed01571cf017e30'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The Insolvency and Bankruptcy Code came into force in India on',
    'The IBC, 2016 received assent in May 2016 and came into force on 1 December 2016, creating a time bound corporate insolvency resolution process and establishing the NCLT and IBBI.',
    'medium',
    'Standard Reference',
    null,
    '0af980360037d102cd45627000c7746f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0af980360037d102cd45627000c7746f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '28 November 2015'),
            ('B', '1 April 2016'),
            ('C', '1 December 2016'),
            ('D', '1 January 2016')
           ) as v(label, option_text)
 where q.question_hash = '0af980360037d102cd45627000c7746f'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'Under the Insolvency and Bankruptcy Code, the corporate insolvency resolution process is to be completed within',
    'The Code provides 330 days from the date of admission, including the 180 day moratorium, and the adjudicating authority may extend the period by 90 days where there is genuine difficulty in completing the process.',
    'medium',
    'Standard Reference',
    null,
    'e6b9eb8bcbd88ebf109d4e7c2ac4cfad'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e6b9eb8bcbd88ebf109d4e7c2ac4cfad'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '180 days from the date of admission'),
            ('B', '330 days from the date of admission, which may be extended by 90 days'),
            ('C', '270 days with no provision for extension'),
            ('D', 'One year from the date of admission')
           ) as v(label, option_text)
 where q.question_hash = 'e6b9eb8bcbd88ebf109d4e7c2ac4cfad'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The moratorium period under the Insolvency and Bankruptcy Code refers to',
    'Once a company is admitted to the resolution process, a moratorium of 180 days is declared during which no proceedings can be initiated or continued against the corporate debtor or its assets.',
    'medium',
    'Standard Reference',
    null,
    'a5aae1557a313da428ab7c221c127b91'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a5aae1557a313da428ab7c221c127b91'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The period for appeals against an approved resolution plan'),
            ('B', 'The period during which no suit or proceeding can be instituted or continued against the corporate debtor, generally for 180 days'),
            ('C', 'The period for which the Financial Creditors Committee remains constituted after approval of the plan'),
            ('D', 'The period during which the liquidation process is carried out')
           ) as v(label, option_text)
 where q.question_hash = 'a5aae1557a313da428ab7c221c127b91'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The National Company Law Tribunal is the adjudicating authority for',
    'The NCLT has jurisdiction over the corporate insolvency resolution process and liquidation of companies and their partners, while the NCLAT hears appeals against its orders.',
    'easy',
    'Standard Reference',
    null,
    'e47e0d64f5fc9fa694801ff9da52d6dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e47e0d64f5fc9fa694801ff9da52d6dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tax disputes between the central and state governments'),
            ('B', 'Consumer disputes relating to deficiency in services'),
            ('C', 'Monetary policy decisions of the Reserve Bank of India'),
            ('D', 'Insolvency resolution and liquidation proceedings of companies')
           ) as v(label, option_text)
 where q.question_hash = 'e47e0d64f5fc9fa694801ff9da52d6dd'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The SARFAESI Act deals with',
    'The Securitisation and Reconstruction of Financial Assets and Enforcement of Security Interest Act, 2002 allows secured creditors to enforce security without waiting for the delay of civil proceedings, subject to the borrower being given notice.',
    'medium',
    'Standard Reference',
    null,
    '7a1db2cc2806cbb5dcfd71b89f3b79b3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7a1db2cc2806cbb5dcfd71b89f3b79b3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Enforcement of security interest in case of default by the borrower without the intervention of the court'),
            ('B', 'Regulation of the securities market and stock exchanges'),
            ('C', 'Prevention of money laundering and terrorist financing'),
            ('D', 'Regulation of payment and settlement systems')
           ) as v(label, option_text)
 where q.question_hash = '7a1db2cc2806cbb5dcfd71b89f3b79b3'
on conflict (question_id, label) do nothing;

-- economy | money-and-banking | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'money-and-banking'),
    'The regulatory authority for the insurance sector in India is',
    'The Insurance Regulatory and Development Authority of India regulates insurers, while PFRDA supervises pension funds and NABARD is the apex institution for rural and agricultural credit.',
    'easy',
    'Standard Reference',
    null,
    '8fdc2b03ced6d871a4e288442cc32da7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8fdc2b03ced6d871a4e288442cc32da7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NABARD'),
            ('B', 'SEBI'),
            ('C', 'IRDAI'),
            ('D', 'PFRDA')
           ) as v(label, option_text)
 where q.question_hash = '8fdc2b03ced6d871a4e288442cc32da7'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Inflation in an economy is best described as',
    'Inflation is a sustained and generalised rise in the price level, whereas a one time increase in the price of a single commodity is a relative price change.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '4c51c4a826305c63722bfa1e3a665a1a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4c51c4a826305c63722bfa1e3a665a1a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A one time rise in the price of a single commodity'),
            ('B', 'A fall in the general price level over a quarter'),
            ('C', 'A sustained rise in the general price level of goods and services over a period of time'),
            ('D', 'A rise in the price of traded goods only, without affecting domestic prices')
           ) as v(label, option_text)
 where q.question_hash = '4c51c4a826305c63722bfa1e3a665a1a'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Demand-pull inflation arises when',
    'Demand-pull inflation arises when spending outruns the capacity of the economy to supply goods and services, so firms respond by raising prices.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '6ab1f6eb8aaa436b645e2f848f4ca03a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6ab1f6eb8aaa436b645e2f848f4ca03a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The government reduces subsidies on key inputs'),
            ('B', 'Aggregate demand grows faster than the economy''s capacity to produce, pulling up prices'),
            ('C', 'The cost of imported raw materials rises sharply'),
            ('D', 'The exchange rate of the rupee appreciates sharply')
           ) as v(label, option_text)
 where q.question_hash = '6ab1f6eb8aaa436b645e2f848f4ca03a'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Cost-push inflation is best illustrated by',
    'Cost-push inflation originates on the supply side when production costs rise, as with a crude oil price shock, and firms pass the higher costs on to consumers.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    'a0158bcb4673021565b0f4bb886e7b03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a0158bcb4673021565b0f4bb886e7b03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A sharp rise in international crude oil prices feeding into domestic fuel prices'),
            ('B', 'A boom in consumer demand during a period of full employment'),
            ('C', 'An increase in money supply without a matching growth in output'),
            ('D', 'A large fiscal deficit financed by the printing of new notes')
           ) as v(label, option_text)
 where q.question_hash = 'a0158bcb4673021565b0f4bb886e7b03'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Built-in inflation refers to',
    'Built-in inflation is inherent in the system when higher prices lead workers to demand higher wages, which raise costs again and perpetuate the price rise, so it is hard to control.',
    'hard',
    'Standard Reference',
    null,
    'fd8ed2f8a012a1063967e0200a4f26d3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'fd8ed2f8a012a1063967e0200a4f26d3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Inflation caused by excess demand in the economy'),
            ('B', 'Inflation caused by the government hiking administered prices'),
            ('C', 'Inflation caused by a sharp rise in the international price of crude oil'),
            ('D', 'Inflation generated by a wage price spiral as workers seek higher wages to match rising prices')
           ) as v(label, option_text)
 where q.question_hash = 'fd8ed2f8a012a1063967e0200a4f26d3'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Which of the following would be most effective in controlling demand-pull inflation?',
    'Demand-pull inflation is best checked by withdrawing demand through tighter monetary policy, while the other options are supply side or expansionary measures.',
    'medium',
    'Standard Reference',
    null,
    'afcf1965f5158b8caddf27e9d1124bc5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'afcf1965f5158b8caddf27e9d1124bc5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A cut in the corporate tax rate to boost investment'),
            ('B', 'A large scale release of food stocks from the buffer'),
            ('C', 'A reduction of import duties on essential commodities'),
            ('D', 'A contractionary monetary policy involving higher interest rates and reduced liquidity')
           ) as v(label, option_text)
 where q.question_hash = 'afcf1965f5158b8caddf27e9d1124bc5'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The Wholesale Price Index in India is released by',
    'The Office of the Economic Adviser in the Department for Promotion of Industry and Internal Trade compiles and releases the WPI, while the CPI is compiled by the National Statistical Office.',
    'easy',
    'RBI Handbook',
    null,
    '5f253d29a65812a132dcad1071e4b640'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5f253d29a65812a132dcad1071e4b640'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Statistical Office under the Ministry of Statistics'),
            ('B', 'The Central Board of Direct Taxes'),
            ('C', 'The Office of the Economic Adviser under the Department for Promotion of Industry and Internal Trade'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = '5f253d29a65812a132dcad1071e4b640'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The Consumer Price Index Combined in India covers',
    'The CPI Combined, introduced with the 2011 rationalisation, is a single series covering both rural and urban households and is the metric used for inflation targeting.',
    'easy',
    'RBI Handbook',
    null,
    '92b1f3cfa4ca5dd853f62d3406c10775'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '92b1f3cfa4ca5dd853f62d3406c10775'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Both rural and urban households across the country'),
            ('B', 'Only rural households'),
            ('C', 'Only urban households'),
            ('D', 'Wholesale prices of traded goods')
           ) as v(label, option_text)
 where q.question_hash = '92b1f3cfa4ca5dd853f62d3406c10775'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Which of the following is a limitation of using the Consumer Price Index as a measure of inflation in India?',
    'The CPI measures the prices of consumption goods and services and excludes asset transactions, so movements in house prices or share prices do not enter the index.',
    'medium',
    'Standard Reference',
    null,
    '4d3e98f3de915d649080a2f782e6c27d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d3e98f3de915d649080a2f782e6c27d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is based on too few price quotations collected every year'),
            ('B', 'It does not capture changes in asset prices such as house prices and share prices'),
            ('C', 'It is computed for both rural and urban sectors'),
            ('D', 'It is revised periodically to remove price biases')
           ) as v(label, option_text)
 where q.question_hash = '4d3e98f3de915d649080a2f782e6c27d'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Headline inflation in India is measured by',
    'Headline inflation is the year on year change in the CPI Combined, which includes food and fuel and therefore reflects what households actually pay.',
    'easy',
    'RBI Handbook',
    null,
    'd02f00f8dae8ae67b523865659a39f29'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd02f00f8dae8ae67b523865659a39f29'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GDP deflator'),
            ('B', 'The Wholesale Price Index'),
            ('C', 'The Index of Industrial Production'),
            ('D', 'The Consumer Price Index Combined')
           ) as v(label, option_text)
 where q.question_hash = 'd02f00f8dae8ae67b523865659a39f29'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Core inflation in India is commonly measured as',
    'Core inflation strips out the volatile food and fuel components from the CPI, giving a better indication of the underlying trend in inflation.',
    'easy',
    'RBI Handbook',
    null,
    '0be5cf03561656c497b44040c4029ae9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0be5cf03561656c497b44040c4029ae9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The inflation in the price of non food manufactured goods only'),
            ('B', 'The inflation measured by the GDP deflator'),
            ('C', 'Consumer price inflation excluding the food and fuel components'),
            ('D', 'Wholesale price inflation minus the price of crude oil')
           ) as v(label, option_text)
 where q.question_hash = '0be5cf03561656c497b44040c4029ae9'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The base year currently used for the Consumer Price Index Combined series is',
    'The revised CPI series with eight subgroups uses 2012 as its base year, while the constant price GDP series and the WPI series use 2011-12.',
    'hard',
    'RBI Handbook',
    null,
    '0fd7344ec56f751903fc3c16c37c25f2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0fd7344ec56f751903fc3c16c37c25f2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2004-05'),
            ('C', '2011-12'),
            ('D', '2009-10')
           ) as v(label, option_text)
 where q.question_hash = '0fd7344ec56f751903fc3c16c37c25f2'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The base year used for the compilation of the Wholesale Price Index in India is',
    'The WPI series was rebased to 2011-12, so it uses the prices of that year as the base for measuring changes in wholesale prices.',
    'hard',
    'RBI Handbook',
    null,
    '6654e1b8158a511048557f4a80d38db7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6654e1b8158a511048557f4a80d38db7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004-05'),
            ('B', '2011-12'),
            ('C', '2012'),
            ('D', '2009-10')
           ) as v(label, option_text)
 where q.question_hash = '6654e1b8158a511048557f4a80d38db7'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Under the inflation targeting framework, the inflation target set by the Government in consultation with the RBI is',
    'The Central Government fixes the inflation target at 4 per cent of the CPI Combined with an upper tolerance of 6 per cent and a lower tolerance of 2 per cent, in consultation with the RBI.',
    'hard',
    'RBI Handbook',
    null,
    '2c6dc60fcfb5e7df8356e87e48ef9a28'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2c6dc60fcfb5e7df8356e87e48ef9a28'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '5 per cent of the Wholesale Price Index with a band of 2 to 8 per cent'),
            ('B', '6 per cent of the GDP deflator with an upper tolerance of 8 per cent'),
            ('C', '4 per cent of the Consumer Price Index Combined with a band of 2 to 6 per cent'),
            ('D', '3 per cent of the CPI with a lower tolerance of 1 per cent')
           ) as v(label, option_text)
 where q.question_hash = '2c6dc60fcfb5e7df8356e87e48ef9a28'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The Monetary Policy Committee of the Reserve Bank of India consists of',
    'The MPC has six members, three from the RBI including the Governor as Chairperson and three external members appointed by the Centre, while the Chief Financial Adviser and a Ministry of Finance representative attend without voting rights.',
    'hard',
    'UPSC Prelims',
    null,
    '738fdb6f1d9e8806a7dec17608de0739'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '738fdb6f1d9e8806a7dec17608de0739'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Six members, three from the RBI including the Governor who chairs it and three appointed by the Central Government, with two Union officials attending without voting rights'),
            ('B', 'Five members, all drawn from the Reserve Bank of India'),
            ('C', 'Seven members appointed entirely by Parliament'),
            ('D', 'Six members appointed by the State Governments in proportion to their representation')
           ) as v(label, option_text)
 where q.question_hash = '738fdb6f1d9e8806a7dec17608de0739'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The mandate of the Monetary Policy Committee is to',
    'Section 45ZB of the amended RBI Act requires the MPC to determine the policy rate needed to achieve the inflation target, so price stability is its central mandate.',
    'easy',
    'RBI Handbook',
    null,
    '3bc096844acfb09cc370e36569efe6eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3bc096844acfb09cc370e36569efe6eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Manage the foreign exchange reserves and the exchange rate of the rupee'),
            ('B', 'Maintain price stability in the country by keeping inflation within the target band'),
            ('C', 'Regulate the licensing of banks and non banking financial companies'),
            ('D', 'Set the tax rates and revenue expenditure of the central government')
           ) as v(label, option_text)
 where q.question_hash = '3bc096844acfb09cc370e36569efe6eb'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The inflation target in India is notified by',
    'Under Section 45ZA of the RBI Act, the Central Government determines the inflation target in consultation with the RBI and notifies it, and a failure to meet the target must be reported by the RBI to the Centre.',
    'medium',
    'RBI Handbook',
    null,
    'f550bb028367202903ada088982bb017'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f550bb028367202903ada088982bb017'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Monetary Policy Committee of the RBI'),
            ('B', 'The Ministry of Finance alone'),
            ('C', 'The Reserve Bank of India alone under its own regulations'),
            ('D', 'The Central Government in consultation with the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'f550bb028367202903ada088982bb017'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'A situation in which prices rise while output growth stagnates or falls is called',
    'Stagflation combines rising prices with stagnant or falling output and high unemployment, and it is particularly difficult to tackle with conventional monetary policy.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '3e5b12ba56c53f083568e1cc1f5db04a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3e5b12ba56c53f083568e1cc1f5db04a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Stagflation'),
            ('B', 'Reflation'),
            ('C', 'Deflation'),
            ('D', 'Disinflation')
           ) as v(label, option_text)
 where q.question_hash = '3e5b12ba56c53f083568e1cc1f5db04a'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The Phillips curve depicts the relationship between',
    'The Phillips curve shows an inverse relationship between inflation and unemployment, suggesting that accepting higher inflation may reduce unemployment.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'd49edf21d136df0ecb089cf805e85178'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd49edf21d136df0ecb089cf805e85178'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of money supply growth and the rate of economic growth'),
            ('B', 'The rate of inflation and the rate of unemployment'),
            ('C', 'The exchange rate and the trade balance'),
            ('D', 'The fiscal deficit and the current account deficit')
           ) as v(label, option_text)
 where q.question_hash = 'd49edf21d136df0ecb089cf805e85178'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Food inflation in India carries a large weight in the CPI because',
    'Food has a high weight in the Indian CPI basket and is strongly influenced by harvests, weather and international prices, so food inflation moves headline inflation sharply.',
    'medium',
    'RBI Handbook',
    null,
    '0a8d5a58d61f6baf43a9e0ce59fdad41'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0a8d5a58d61f6baf43a9e0ce59fdad41'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Food prices are excluded from the WPI but heavily weighted in the CPI'),
            ('B', 'The government fixes most food prices in the administered price basket'),
            ('C', 'Food items have a relatively high weight in the CPI basket and their prices are highly volatile'),
            ('D', 'The CPI is computed exclusively on food and fuel items')
           ) as v(label, option_text)
 where q.question_hash = '0a8d5a58d61f6baf43a9e0ce59fdad41'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Administered prices in India are',
    'Administered prices are announced by the government at the beginning of the season or the year for crops such as sugarcane and paddy and for petroleum products, fertilisers and LPG.',
    'medium',
    'Standard Reference',
    null,
    'd93a30eab92cc27d3e9c561744d5c1d2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd93a30eab92cc27d3e9c561744d5c1d2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fixed annually in the Union Budget without reference to market conditions'),
            ('B', 'Determined by an international body such as the World Bank'),
            ('C', 'Fixed by the Reserve Bank of India through its monetary operations'),
            ('D', 'Announced periodically by the government for crops such as sugarcane and paddy and for items such as fertilisers, petrol and LPG')
           ) as v(label, option_text)
 where q.question_hash = 'd93a30eab92cc27d3e9c561744d5c1d2'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The fertiliser subsidy in India is',
    'The nutrient based subsidy is paid to manufacturers who sell fertiliser to farmers at subsidised prices, with the subsidy notified per kilogram of nutrients for nitrogen, phosphorus and potassium.',
    'hard',
    'Economic Survey 2021',
    2021,
    '520abad2880e85a79be4c8bda976a357'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '520abad2880e85a79be4c8bda976a357'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Paid to farmers directly in cash for every bag of fertiliser bought'),
            ('B', 'Discontinued entirely since the introduction of the nutrient based subsidy scheme'),
            ('C', 'Granted only for urea produced from domestic gas and never for demeritised phosphate'),
            ('D', 'Provided mainly to fertiliser producers, who in turn sell subsidised fertiliser to farmers below the cost')
           ) as v(label, option_text)
 where q.question_hash = '520abad2880e85a79be4c8bda976a357'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The fuel subsidy in India',
    'The government phased out the subsidy on petrol and diesel, taking it to nil by 2020-21, while retaining subsidies on domestic LPG and kerosene for the poorer households.',
    'medium',
    'Economic Survey 2021',
    2021,
    '143f6cfaa1ddab2d58b495d46a8e09f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '143f6cfaa1ddab2d58b495d46a8e09f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is paid to oil marketing companies to fully compensate them for taxes on crude oil'),
            ('B', 'Was progressively reduced to nil on petrol and diesel by 2020-21, with subsidised LPG and kerosene retained'),
            ('C', 'Is paid directly to consumers of petrol and diesel at the pump'),
            ('D', 'Has been in place continuously since 2014 without any change')
           ) as v(label, option_text)
 where q.question_hash = '143f6cfaa1ddab2d58b495d46a8e09f1'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The repo rate affects the general price level of the economy through',
    'A change in the repo rate changes the cost of bank borrowing, which passes on to lending rates, credit demand and aggregate demand, and eventually to prices and output.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    'd4dec787099e425a91cdbf6c4d5847d5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4dec787099e425a91cdbf6c4d5847d5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A direct change in the administered prices of fertilisers and fuel'),
            ('B', 'A change in the base year of the price index used to measure inflation'),
            ('C', 'The cost of borrowing for banks and the resulting effect on credit demand and aggregate demand'),
            ('D', 'The statutory limits on cash withdrawals by the public')
           ) as v(label, option_text)
 where q.question_hash = 'd4dec787099e425a91cdbf6c4d5847d5'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The main instrument used by the RBI to absorb excess liquidity from the banking system is',
    'Selling securities in the open market drains rupees from the banking system, and the reverse repo is the other such instrument used to absorb liquidity.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '72af38629c7b338f73338d042c047611'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '72af38629c7b338f73338d042c047611'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sale of government securities under open market operations'),
            ('B', 'Reduction in the cash reserve ratio'),
            ('C', 'Reduction in the repo rate'),
            ('D', 'Purchase of foreign currency from authorised dealers')
           ) as v(label, option_text)
 where q.question_hash = '72af38629c7b338f73338d042c047611'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Core inflation is useful for monetary policy because',
    'Since food and fuel prices are volatile and subject to supply shocks, core inflation gives the MPC a clearer signal of the persistent component of price pressure.',
    'medium',
    'RBI Handbook',
    null,
    '05e29d1250d9c5500b486fa748a3f1e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '05e29d1250d9c5500b486fa748a3f1e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is computed from wholesale prices of manufactured goods only'),
            ('B', 'It excludes volatile food and fuel prices and so gives a better signal of underlying inflationary pressure'),
            ('C', 'It reflects the impact of supply disruptions on food prices'),
            ('D', 'It is the only measure on which the RBI may base its policy rate')
           ) as v(label, option_text)
 where q.question_hash = '05e29d1250d9c5500b486fa748a3f1e4'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The inflation targeting framework in India was made operational with effect from',
    'The Finance Act, 2016 amended the RBI Act to create a statutory Monetary Policy Committee and the flexible inflation targeting framework was put in place from 1 April 2016.',
    'hard',
    'RBI Handbook',
    null,
    '59143a70555dcf195a5db61f61efe216'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '59143a70555dcf195a5db61f61efe216'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'January 2016'),
            ('B', 'April 2014'),
            ('C', 'April 2012'),
            ('D', 'April 2016')
           ) as v(label, option_text)
 where q.question_hash = '59143a70555dcf195a5db61f61efe216'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Which of the following is a supply side measure to curb inflation?',
    'Buffer stocks and targeted distribution of foodgrains raise availability and moderate food prices, whereas the other options are demand side monetary measures.',
    'medium',
    'Standard Reference',
    null,
    '78c42ec6c067e5ce2add0ff10ba8d33a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '78c42ec6c067e5ce2add0ff10ba8d33a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increasing the buffer stocks of foodgrains and augmenting their release through fair price shops'),
            ('B', 'Restricting the supply of consumer credit through the RBI'),
            ('C', 'Raising the repo rate to tighten liquidity'),
            ('D', 'Lowering the statutory liquidity ratio')
           ) as v(label, option_text)
 where q.question_hash = '78c42ec6c067e5ce2add0ff10ba8d33a'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The index of food inflation in India is compiled and released by',
    'Food inflation is a component of the CPI released by the National Statistical Office, which also publishes the food price index for monitoring supply conditions.',
    'medium',
    'RBI Handbook',
    null,
    'bff02c37909a7833321a6f0a7fe9ca24'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bff02c37909a7833321a6f0a7fe9ca24'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Central Board of Direct Taxes'),
            ('B', 'The Department of Consumer Affairs'),
            ('C', 'The National Statistical Office under the Ministry of Statistics and Programme Implementation'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'bff02c37909a7833321a6f0a7fe9ca24'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'When the RBI raises the repo rate, the most likely first order effect is',
    'Higher repo rates raise the cost of bank funds, which passes on to lending rates and credit demand, so aggregate demand and inflation are dampened with a time lag.',
    'medium',
    'Standard Reference',
    null,
    '172b71a1fad16efc9d5c8ed5d817c3f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '172b71a1fad16efc9d5c8ed5d817c3f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It raises the cost of borrowing, dampening credit demand and moderating inflationary pressure over time'),
            ('B', 'An immediate fall in food prices'),
            ('C', 'A rise in the price of petroleum products'),
            ('D', 'A rise in the price of government securities and hence the cost of borrowing for the government')
           ) as v(label, option_text)
 where q.question_hash = '172b71a1fad16efc9d5c8ed5d817c3f7'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The base effect in the measurement of inflation means that',
    'Inflation is measured against the price level of a year earlier, so an unusually high base year can make the current rate look deceptively low even when prices are still rising.',
    'hard',
    'Standard Reference',
    null,
    '67fd18b940837e77e01d4ee584a4b1ef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '67fd18b940837e77e01d4ee584a4b1ef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The base year of the index is changed every five years'),
            ('B', 'The price index is calculated using the average prices of a base period'),
            ('C', 'A high inflation rate in the current year may appear lower because the comparison is with a base year that had unusually high prices'),
            ('D', 'Inflation is measured after adjusting for the purchasing power of the base year')
           ) as v(label, option_text)
 where q.question_hash = '67fd18b940837e77e01d4ee584a4b1ef'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Which of the following is a correct match?',
    'The inflation target is 4 per cent with a tolerance band of 2 to 6 per cent, the repo rate is set by the MPC, the MPC is a statutory body under the RBI Act, and the CPI is compiled by the NSO.',
    'hard',
    'Standard Reference',
    null,
    '98b0d4fe1f98660184e43e60c8118d03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '98b0d4fe1f98660184e43e60c8118d03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Consumer Price Index: compiled by the Office of the Economic Adviser'),
            ('B', 'Repo rate: fixed by the Government of India'),
            ('C', 'Monetary Policy Committee: constituted under the Companies Act'),
            ('D', 'Inflation target in India: 4 per cent with a band of plus or minus 2 percentage points')
           ) as v(label, option_text)
 where q.question_hash = '98b0d4fe1f98660184e43e60c8118d03'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The weighted median inflation measure used by the RBI is computed as',
    'The weighted median inflation takes the state whose CPI weight is the median and reports its inflation rate, so it is less distorted by large states than a simple average.',
    'hard',
    'RBI Handbook',
    null,
    'a83291f559da546f39d861ee1ec7f96c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a83291f559da546f39d861ee1ec7f96c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The inflation rate obtained by dividing the food index by the non food index'),
            ('B', 'The inflation rate of the median state in terms of CPI, weighted by the shares of states in the CPI'),
            ('C', 'The simple average of the inflation rates of all states and union territories'),
            ('D', 'The average of the inflation rates of the ten largest states by GDP')
           ) as v(label, option_text)
 where q.question_hash = 'a83291f559da546f39d861ee1ec7f96c'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The implicit weighted median inflation is published by',
    'The RBI publishes the implicit weighted median inflation as a measure of underlying inflation pressure for use in monetary policy analysis.',
    'medium',
    'RBI Handbook',
    null,
    '7744f45f32423ddcb176d72fb13e7f67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7744f45f32423ddcb176d72fb13e7f67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'NITI Aayog'),
            ('B', 'The Reserve Bank of India'),
            ('C', 'The Central Statistical Organisation'),
            ('D', 'The Office of the Economic Adviser')
           ) as v(label, option_text)
 where q.question_hash = '7744f45f32423ddcb176d72fb13e7f67'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Printing currency notes to finance a large fiscal deficit is described as',
    'When the government meets its financing needs by issuing currency, it adds to the money supply without any matching output, creating monetary overhang and inflationary pressure.',
    'medium',
    'Standard Reference',
    null,
    '430f537dfa9039849f00d37e1d7c38d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '430f537dfa9039849f00d37e1d7c38d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Demand pull inflation'),
            ('B', 'Stagflation'),
            ('C', 'Cost push inflation'),
            ('D', 'Monetisation of the fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '430f537dfa9039849f00d37e1d7c38d1'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Which measure can help check inflation arising from a depreciation of the rupee?',
    'A weaker rupee raises the domestic cost of imports such as crude oil, but inflows of foreign exchange enable the RBI to build reserves and smooth the adjustment.',
    'medium',
    'Standard Reference',
    null,
    'b1708e367cc63f9e03114bdaa6b07cdc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b1708e367cc63f9e03114bdaa6b07cdc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A rise in the fiscal deficit of the central government'),
            ('B', 'An increase in the money supply of the economy'),
            ('C', 'Sustained inflows of foreign exchange that add to the foreign exchange reserves'),
            ('D', 'A sharp rise in the administered prices of fertilisers')
           ) as v(label, option_text)
 where q.question_hash = 'b1708e367cc63f9e03114bdaa6b07cdc'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The Phillips curve is considered an unreliable guide for policy because',
    'Empirical estimates show the inflation unemployment trade-off shifting over time, and supply shocks can move the whole curve, so the Phillips curve is not a dependable policy rule.',
    'hard',
    'Standard Reference',
    null,
    '750d1334f3bc2431fc0f1d65a65a7f1e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '750d1334f3bc2431fc0f1d65a65a7f1e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The trade-off between inflation and unemployment is not stable over time and supply shocks can shift the curve'),
            ('B', 'It is difficult to measure the rate of unemployment accurately'),
            ('C', 'It can only be applied to the economies of developed countries'),
            ('D', 'It measures inflation in terms of the GDP deflator only')
           ) as v(label, option_text)
 where q.question_hash = '750d1334f3bc2431fc0f1d65a65a7f1e'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The CPI Combined, and not the WPI, is used as the metric for monetary policy targeting because',
    'The CPI captures the household basket of consumption including services and rents, so it reflects the inflation experienced by consumers, which is what the MPC targets.',
    'medium',
    'RBI Handbook',
    null,
    '2e3a503d74583687c737e3c79ab91c6c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2e3a503d74583687c737e3c79ab91c6c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The WPI is published only once a year'),
            ('B', 'The WPI excludes services and cannot be computed for individual states'),
            ('C', 'The WPI is compiled by the RBI and the CPI by the government'),
            ('D', 'It captures the prices that consumers actually pay and includes services and housing rents')
           ) as v(label, option_text)
 where q.question_hash = '2e3a503d74583687c737e3c79ab91c6c'
on conflict (question_id, label) do nothing;

-- economy | inflation | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Real wages of an employee refer to',
    'Real wages measure what a worker''s money wages can buy, so they fall when prices rise faster than nominal wages, which is why wage negotiations are linked to the cost of living index.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'fe28735850288094a170e877c14e9ff3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fe28735850288094a170e877c14e9ff3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The nominal wages adjusted for the level of employment'),
            ('B', 'The purchasing power of money wages, obtained by adjusting nominal wages for the prevailing inflation rate'),
            ('C', 'The total wage income of the economy'),
            ('D', 'The wages paid to all workers in the organised sector')
           ) as v(label, option_text)
 where q.question_hash = 'fe28735850288094a170e877c14e9ff3'
on conflict (question_id, label) do nothing;

-- economy | inflation | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'The government raised excise duty on petrol and diesel in July 2021 mainly in order to',
    'The July 2021 increase in excise duty was described as a partial restoration of the revenue lost when duties were cut in March 2020, rather than as a fresh revenue mobilisation measure.',
    'hard',
    'Economic Survey 2021',
    2021,
    'b5038ccffd469c02e48936c966a59424'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b5038ccffd469c02e48936c966a59424'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fund the construction of highways through the cess collected'),
            ('B', 'Reduce the losses of oil marketing companies caused by price freezes'),
            ('C', 'Offset the revenue loss from the reduction in excise duty in 2020-21 rather than to raise additional resources'),
            ('D', 'Compensate the states for their loss of sales tax revenue')
           ) as v(label, option_text)
 where q.question_hash = 'b5038ccffd469c02e48936c966a59424'
on conflict (question_id, label) do nothing;

-- economy | inflation | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'inflation'),
    'Inflation targeting in India aims primarily at',
    'Price stability in the sense of a moderate and predictable inflation rate is the primary goal of inflation targeting, with growth and employment considered as secondary objectives.',
    'medium',
    'RBI Handbook',
    null,
    'd7cb1b00737a25e5accbe87423e45614'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd7cb1b00737a25e5accbe87423e45614'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Achieving and maintaining price stability, understood as a stable and moderate rate of inflation over the medium term'),
            ('B', 'Keeping the exchange rate of the rupee stable against the dollar'),
            ('C', 'Ensuring that food prices remain stable irrespective of harvest conditions'),
            ('D', 'Reducing the fiscal deficit of the central government to 3 per cent of GDP')
           ) as v(label, option_text)
 where q.question_hash = 'd7cb1b00737a25e5accbe87423e45614'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The budget deficit shown in the Annual Financial Statement equals',
    'The budget deficit is total expenditure less total receipts including borrowings, and it is smaller than the fiscal deficit by the amount of net market borrowing taken by the government.',
    'hard',
    'Standard Reference',
    null,
    '265eafcbaba13dca29a38c0c3e9595c1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '265eafcbaba13dca29a38c0c3e9595c1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The revenue deficit'),
            ('B', 'The primary deficit'),
            ('C', 'The fiscal deficit minus interest payments'),
            ('D', 'Total expenditure minus total receipts including borrowings')
           ) as v(label, option_text)
 where q.question_hash = '265eafcbaba13dca29a38c0c3e9595c1'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following pairs regarding budget terminology is correctly matched?',
    'The revenue deficit is revenue expenditure minus revenue receipts, while the other three pairs invert or distort the correct relationships between the four deficit measures.',
    'hard',
    'Standard Reference',
    null,
    '414246b22921400694870b45833174a8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '414246b22921400694870b45833174a8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Revenue deficit: revenue expenditure less revenue receipts'),
            ('B', 'Fiscal deficit: total expenditure less total receipts including borrowings'),
            ('C', 'Primary deficit: fiscal deficit plus interest payments'),
            ('D', 'Budget deficit: revenue deficit less capital expenditure')
           ) as v(label, option_text)
 where q.question_hash = '414246b22921400694870b45833174a8'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Fiscal policy refers to',
    'Fiscal policy covers taxation, public expenditure and government borrowing, all of which the government uses to influence aggregate demand, employment and the level of prices.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'd91726c336baaa1a5a9c7ff3468f471e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd91726c336baaa1a5a9c7ff3468f471e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The regulation of the volume of money supply in the economy'),
            ('B', 'The government''s policy regarding public spending, taxation and borrowing to influence aggregate demand and the economy'),
            ('C', 'The central bank''s policy of regulating interest rates and credit'),
            ('D', 'The government''s policy on the exchange rate and foreign trade')
           ) as v(label, option_text)
 where q.question_hash = 'd91726c336baaa1a5a9c7ff3468f471e'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The instruments of fiscal policy include',
    'Taxation, public expenditure and borrowing are the fiscal instruments, whereas interest rates, reserve ratios and open market operations belong to monetary policy.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '1c570e29a0756c459aba20abdae50267'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1c570e29a0756c459aba20abdae50267'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Repo rate and the reverse repo rate'),
            ('B', 'Cash reserve ratio and open market operations'),
            ('C', 'Taxation, public expenditure and government borrowing'),
            ('D', 'The money multiplier and the velocity of money')
           ) as v(label, option_text)
 where q.question_hash = '1c570e29a0756c459aba20abdae50267'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Laffer curve depicts',
    'The Laffer curve shows that tax revenue rises with the tax rate up to a point and then falls as very high rates discourage work, investment and tax compliance.',
    'medium',
    'Standard Reference',
    null,
    'a074182a10fa84e2a3e891e861c846dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a074182a10fa84e2a3e891e861c846dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The relationship between unemployment and inflation'),
            ('B', 'The relationship between the tax rate and tax revenue, which rises up to a point and then falls'),
            ('C', 'The relationship between the money supply and the price level'),
            ('D', 'The relationship between the exchange rate and the trade balance')
           ) as v(label, option_text)
 where q.question_hash = 'a074182a10fa84e2a3e891e861c846dd'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'According to the Laffer curve, tax revenue falls when the tax rate becomes so high that',
    'Beyond the peak of the Laffer curve, high tax rates shrink the tax base and encourage avoidance and evasion, so revenue declines even though the rate is higher.',
    'medium',
    'Standard Reference',
    null,
    '0678888aa8020cd447af9b7ef6a94cbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0678888aa8020cd447af9b7ef6a94cbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The marginal cost of collecting the tax exceeds the revenue collected'),
            ('B', 'The government switches to non tax sources of revenue'),
            ('C', 'Inflation reduces the real value of tax collections'),
            ('D', 'It discourages economic activity and encourages tax avoidance and evasion')
           ) as v(label, option_text)
 where q.question_hash = '0678888aa8020cd447af9b7ef6a94cbb'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The fiscal multiplier measures',
    'The fiscal multiplier is the change in aggregate output or income resulting from a change in government expenditure or taxes, and its value depends on the openness and the import intensity of the economy.',
    'medium',
    'Standard Reference',
    null,
    'a3f463a5c3edd56bc72b73092d0c27e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a3f463a5c3edd56bc72b73092d0c27e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The impact of fiscal policy on the external value of the rupee'),
            ('B', 'The change in inflation resulting from a change in the money supply'),
            ('C', 'The change in output resulting from a unit change in government spending or taxation'),
            ('D', 'The ratio of the fiscal deficit to GDP')
           ) as v(label, option_text)
 where q.question_hash = 'a3f463a5c3edd56bc72b73092d0c27e5'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'A contractionary fiscal policy is appropriate when the economy is',
    'When demand exceeds the economy''s capacity, cutting expenditure and raising taxes reduces the inflationary gap, whereas the other situations call for expansionary fiscal support.',
    'medium',
    'Standard Reference',
    null,
    '46648336110e76068ea0aeb28c985033'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '46648336110e76068ea0aeb28c985033'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'In a state of excess aggregate demand with rising inflation'),
            ('B', 'Facing a severe drought with a fall in food output'),
            ('C', 'Suffering from a severe recession with high unemployment'),
            ('D', 'Facing a sharp fall in exports')
           ) as v(label, option_text)
 where q.question_hash = '46648336110e76068ea0aeb28c985033'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Fiscal Responsibility and Budget Management Act, 2003 provides for',
    'The FRBM Act institutionalised fiscal discipline by requiring a medium term fiscal deficit target, a fiscal policy statement and provisions for greater market participation in government borrowing.',
    'medium',
    'Standard Reference',
    null,
    'a837e7ade378e4f561444356c66aeb4d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a837e7ade378e4f561444356c66aeb4d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The setting up of the Monetary Policy Committee of the RBI'),
            ('B', 'The abolition of the distinction between revenue and capital expenditure'),
            ('C', 'A framework for fiscal discipline including a target fiscal deficit and a mechanism to offload government securities to the public'),
            ('D', 'A statutory cap on the repo rate of the Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'a837e7ade378e4f561444356c66aeb4d'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Under the FRBM Act, the objective of fiscal policy is stated as',
    'The Act requires the government to aim for fiscal sustainability and to ensure that fiscal policy is supportive of the growth objective, and the objective is kept under review by the Finance Commission.',
    'hard',
    'Standard Reference',
    null,
    '57ec4b6ef935d13566105b54c5c8c27b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '57ec4b6ef935d13566105b54c5c8c27b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Matching the government''s borrowing requirement with the monetary policy stance of the RBI'),
            ('B', 'Ensuring fiscal sustainability over a medium term while ensuring that fiscal policy is supportive of the growth objective of the government'),
            ('C', 'Achieving a zero fiscal deficit within three years of the Act coming into force'),
            ('D', 'Keeping the ratio of government debt to GDP constant every single year')
           ) as v(label, option_text)
 where q.question_hash = '57ec4b6ef935d13566105b54c5c8c27b'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The financing of the fiscal deficit of the central government can take the form of',
    'The government finances its deficit largely through market borrowing, that is treasury bills, dated securities and bonds sold to banks, the public and foreign investors.',
    'medium',
    'Standard Reference',
    null,
    '849ba12c162e5585ce1cd1ff5e2a6e50'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '849ba12c162e5585ce1cd1ff5e2a6e50'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Printing new currency notes'),
            ('B', 'Drawing down the foreign exchange reserves'),
            ('C', 'Raising the tax rates'),
            ('D', 'Market borrowings and the issuance of treasury bills and dated securities')
           ) as v(label, option_text)
 where q.question_hash = '849ba12c162e5585ce1cd1ff5e2a6e50'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'According to the Fiscal Consolidation Roadmap, the fiscal deficit of the central government was to be reduced to',
    'The roadmap set out a phased path for the central government''s fiscal deficit to 4.5 per cent of GDP by 2024-25 and then to around 3 per cent, with a nominal GDP growth anchor and expenditure efficiency gains.',
    'hard',
    'Economic Survey 2021',
    2021,
    '43072ab7e923dd73ed053e986a3e137a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '43072ab7e923dd73ed053e986a3e137a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4.5 per cent of GDP by 2024-25'),
            ('B', '7.5 per cent of GDP by 2030-31'),
            ('C', '1.5 per cent of GDP by 2025-26'),
            ('D', '3 per cent of GDP by 2020-21')
           ) as v(label, option_text)
 where q.question_hash = '43072ab7e923dd73ed053e986a3e137a'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Capital expenditure by the central government',
    'Capital expenditure builds assets such as roads, railways and school buildings, which add to the stock of national wealth, whereas revenue expenditure such as salaries and interest has to be financed every year.',
    'medium',
    'Standard Reference',
    null,
    '366e58a9454ffdb22f10afb6d8a199fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '366e58a9454ffdb22f10afb6d8a199fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Has no effect on the fiscal deficit of the government'),
            ('B', 'Includes repayment of interest on outstanding loans'),
            ('C', 'Is a part of revenue expenditure'),
            ('D', 'Is incurred on the creation of assets and is generally non debt creating in the long run')
           ) as v(label, option_text)
 where q.question_hash = '366e58a9454ffdb22f10afb6d8a199fd'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following statements on direct and indirect taxes is correct?',
    'Direct taxes such as income tax fall on the income or wealth of a person and cannot be passed on, while indirect taxes such as GST and customs duty are collected through prices and are a larger share of central revenue.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '57e5ec2dcd8aaabfecefed7fbd9ed8df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57e5ec2dcd8aaabfecefed7fbd9ed8df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Direct taxes are levied on income or wealth and cannot be shifted, while indirect taxes are levied on goods and services and can be passed on to consumers'),
            ('B', 'Direct taxes are levied on the sale of goods and services'),
            ('C', 'Indirect taxes are levied on the income of individuals'),
            ('D', 'Direct taxes form the larger share of the total tax revenue of the central government')
           ) as v(label, option_text)
 where q.question_hash = '57e5ec2dcd8aaabfecefed7fbd9ed8df'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Goods and Services Tax was introduced in India with effect from',
    'GST was launched on 1 July 2017 after the Constitution (122nd Amendment) Bill received presidential assent, subsuming central excise duty, service tax, sales tax and several other levies.',
    'easy',
    'Standard Reference',
    null,
    '7ece3e2563dbf08c076db4e6231b1531'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7ece3e2563dbf08c076db4e6231b1531'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 2014'),
            ('B', '1 July 2017'),
            ('C', '1 January 2016'),
            ('D', '1 April 2019')
           ) as v(label, option_text)
 where q.question_hash = '7ece3e2563dbf08c076db4e6231b1531'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The GST Council, which decides on GST rates and structure, consists of',
    'Under Article 279A the Council comprises the Union Finance Minister and the finance or state finance minister of each state government, with the Centre holding one third of the weighted votes.',
    'hard',
    'UPSC Prelims',
    null,
    'aceb03f7b42ddcac53e5cd3dc191a55c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aceb03f7b42ddcac53e5cd3dc191a55c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Members of Parliament and members of the state legislatures'),
            ('B', 'The Prime Minister, the Union Finance Minister and the Chief Finance Ministers of the states'),
            ('C', 'The Union Finance Minister and the Finance or State Finance Minister of each state government'),
            ('D', 'The Governor of the RBI, the Union Finance Minister and the Chief Economic Adviser')
           ) as v(label, option_text)
 where q.question_hash = 'aceb03f7b42ddcac53e5cd3dc191a55c'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Disputes between the central government and a state government over the distribution of GST revenue are resolved by',
    'Article 279AA provides for the GST Appellate Tribunal to adjudicate revenue disputes between the centre and the states, while inter-state disputes on GST rates go to the GST Council.',
    'hard',
    'Standard Reference',
    null,
    '8fdd22465d1ea5a186be7f21fb2a8e14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '8fdd22465d1ea5a186be7f21fb2a8e14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The GST Appellate Tribunal'),
            ('B', 'The civil courts'),
            ('C', 'The GST Council'),
            ('D', 'The Finance Commission')
           ) as v(label, option_text)
 where q.question_hash = '8fdd22465d1ea5a186be7f21fb2a8e14'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Under the GST regime, the compensation to states for the revenue loss on the abolition of excise duty and sales tax',
    'The GST (Compensation to States) Act, 2017 provided compensation for five years from July 2017 and allowed the GST Council to extend it, and the arrangement ended in June 2022.',
    'hard',
    'Standard Reference',
    null,
    '9d626604a0e646265532cabb5e2b0d48'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9d626604a0e646265532cabb5e2b0d48'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is provided for an indefinite period as a permanent constitutional right'),
            ('B', 'Was replaced by the devolution of 42 per cent of the divisible pool to the states'),
            ('C', 'Is payable only to the states that had the highest rate of sales tax'),
            ('D', 'Is payable for a period of five years as originally notified, with the GST Council deciding on any extension')
           ) as v(label, option_text)
 where q.question_hash = '9d626604a0e646265532cabb5e2b0d48'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The 101st Constitutional Amendment Act, 2016 which gave effect to the GST provides for',
    'The amendment inserted the GST provisions into the Constitution, creating the GST Council, the GST Appellate Tribunal and enabling legislation on the GST and the compensation of the states.',
    'hard',
    'Standard Reference',
    null,
    '1e9b6733e3fc1d73f1e1f96d0a104206'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e9b6733e3fc1d73f1e1f96d0a104206'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A separate legislature for the Union and each state for GST matters'),
            ('B', 'A GST Council to coordinate and harmonise GST policies and a GST Appellate Tribunal for adjudication of GST disputes'),
            ('C', 'The abolition of all state taxes on petroleum products'),
            ('D', 'The power of Parliament to levy GST on inter state supplies alone')
           ) as v(label, option_text)
 where q.question_hash = '1e9b6733e3fc1d73f1e1f96d0a104206'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The output gap in fiscal policy refers to',
    'The output gap measures the difference between actual and potential GDP, and it indicates whether the economy is operating below or beyond its sustainable capacity, which guides the stance of fiscal policy.',
    'hard',
    'Standard Reference',
    null,
    '646825010def6f4ed72182491c5e3b72'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '646825010def6f4ed72182491c5e3b72'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The difference between the government''s revenue and its expenditure'),
            ('B', 'The amount of government borrowing required to fill the fiscal gap'),
            ('C', 'The difference between actual output and potential output of the economy'),
            ('D', 'The gap between the fiscal deficit and the monetary deficit')
           ) as v(label, option_text)
 where q.question_hash = '646825010def6f4ed72182491c5e3b72'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'A positive output gap generally implies that',
    'A positive gap means the economy is producing beyond its potential, which creates upward pressure on wages and prices and calls for contractionary fiscal policy.',
    'hard',
    'Standard Reference',
    null,
    'd45d71898bc904b82bf87a970c89b2c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd45d71898bc904b82bf87a970c89b2c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The economy is in recession and unemployment is rising'),
            ('B', 'Actual output is below the potential output of the economy'),
            ('C', 'The government should follow an expansionary fiscal policy'),
            ('D', 'Actual output exceeds potential output, indicating inflationary pressure')
           ) as v(label, option_text)
 where q.question_hash = 'd45d71898bc904b82bf87a970c89b2c6'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'A public private partnership in infrastructure is best described as',
    'In a PPP the government contributes land, infrastructure or a viability grant while the private partner finances, builds and operates the project under a long term concession agreement.',
    'medium',
    'Standard Reference',
    null,
    '75fc9a4e6288662ea86bbcb987e26eb7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '75fc9a4e6288662ea86bbcb987e26eb7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An arrangement in which the government and a private entity share the risks, costs and returns of delivering a public service'),
            ('B', 'A model in which the government raises the entire project cost and a private firm merely operates it'),
            ('C', 'A scheme for disinvesting public sector units to private buyers'),
            ('D', 'A loan given by a bank to a private company for the construction of a road')
           ) as v(label, option_text)
 where q.question_hash = '75fc9a4e6288662ea86bbcb987e26eb7'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Viability gap funding helps public private partnership projects by',
    'Viability gap funding is a one time capital subsidy or annuity support to the government for a project that is not viable on user charges alone, so that the concession can be awarded.',
    'medium',
    'Standard Reference',
    null,
    'ee2bdada17bcd519d8bdecf0313b6be8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ee2bdada17bcd519d8bdecf0313b6be8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Insuring the project against political and construction risks'),
            ('B', 'Guaranteeing a minimum revenue stream to the private concessionaire'),
            ('C', 'Subsidising the project cost so that the project becomes commercially viable'),
            ('D', 'Providing the land at a concessional rate to the private partner')
           ) as v(label, option_text)
 where q.question_hash = 'ee2bdada17bcd519d8bdecf0313b6be8'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Disinvestment by the government means',
    'Disinvestment refers to the government selling all or part of its equity in a public sector enterprise, in contrast to privatisation which transfers ownership and control to private owners.',
    'easy',
    'Standard Reference',
    null,
    '41e2359be04d9ecfb7ab089c89238cce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '41e2359be04d9ecfb7ab089c89238cce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Writing off the losses of a public sector undertaking'),
            ('B', 'The sale of a portion of the government''s equity holding in a public sector enterprise'),
            ('C', 'Transferring a public asset to a private company free of cost'),
            ('D', 'Selling government bonds to the public')
           ) as v(label, option_text)
 where q.question_hash = '41e2359be04d9ecfb7ab089c89238cce'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Under the New Public Sector Enterprise Policy announced in 2021, the government intends to',
    'The policy retains a minimum public presence in strategic sectors and in entities providing public or quasi public services while allowing divestment and privatisation in non strategic and loss making units.',
    'hard',
    'Economic Survey 2021',
    2021,
    '0e0842d2a1040c3108003eb092866161'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0e0842d2a1040c3108003eb092866161'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increase the minimum public sector stake to 51 per cent in all strategic enterprises'),
            ('B', 'Retain a minimum presence in strategic sectors while divesting in non strategic and loss making enterprises'),
            ('C', 'Retain a minimum presence in all sectors through public enterprises'),
            ('D', 'Privatise all public sector enterprises in the banking and financial services sector')
           ) as v(label, option_text)
 where q.question_hash = '0e0842d2a1040c3108003eb092866161'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The distinction between revenue and capital expenditure in the government budget is important because',
    'Capital expenditure adds to the stock of national assets and is funded largely by borrowing, whereas revenue expenditure such as salaries, interest and subsidies must be met from current revenue every year.',
    'medium',
    'Standard Reference',
    null,
    '0aac7c92066ee5ab9a8016dda07f4451'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0aac7c92066ee5ab9a8016dda07f4451'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Capital expenditure creates assets and is generally non debt creating in the long run, while revenue expenditure is recurring'),
            ('B', 'Capital expenditure is always financed through external borrowings'),
            ('C', 'Revenue expenditure is reported only in the capital account of the budget'),
            ('D', 'Only capital expenditure is included in the fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = '0aac7c92066ee5ab9a8016dda07f4451'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The fiscal gap of a government is',
    'The fiscal gap measures the extent to which the actual fiscal deficit exceeds the target set in the budget, and it is a useful indicator of slippage in fiscal discipline.',
    'hard',
    'Standard Reference',
    null,
    'f8edda0f3692fa9e7f7bd5fe53467fc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f8edda0f3692fa9e7f7bd5fe53467fc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The sum of the fiscal deficit and the monetary deficit'),
            ('B', 'The difference between the revenue deficit and the primary deficit'),
            ('C', 'The excess of actual revenue receipts over budgeted revenue receipts'),
            ('D', 'The difference between the actual and the budgeted fiscal deficit')
           ) as v(label, option_text)
 where q.question_hash = 'f8edda0f3692fa9e7f7bd5fe53467fc8'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following is a direct tax?',
    'Corporation tax is levied on the income of companies and cannot be shifted to anyone else, whereas GST, customs duty and excise duty are indirect taxes collected through prices.',
    'easy',
    'Standard Reference',
    null,
    'adfec3f8ea2194424827565f91011db2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'adfec3f8ea2194424827565f91011db2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Goods and Services Tax'),
            ('B', 'Customs duty'),
            ('C', 'Corporation tax'),
            ('D', 'Excise duty')
           ) as v(label, option_text)
 where q.question_hash = 'adfec3f8ea2194424827565f91011db2'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Automatic stabilisers in fiscal policy refer to',
    'Built in stabilisers work automatically, since progressive tax rates and unemployment payments rise in a downturn and fall in a boom, cushioning the cycle without any fresh policy decision.',
    'medium',
    'Standard Reference',
    null,
    '5440f95142c8e19913e1a48b23eabba4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5440f95142c8e19913e1a48b23eabba4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The annual revision of tax rates to meet revenue targets'),
            ('B', 'Features such as progressive taxation and unemployment benefits that moderate business cycles without new legislation'),
            ('C', 'The government''s discretionary decision to raise capital expenditure in a recession'),
            ('D', 'The central bank''s automatic adjustment of the repo rate')
           ) as v(label, option_text)
 where q.question_hash = '5440f95142c8e19913e1a48b23eabba4'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Which of the following are examples of indirect taxes collected by the central government?',
    'Customs duty, excise duty and GST are central indirect taxes levied on goods and services and collected from the supplier but ultimately borne by consumers, unlike income tax.',
    'easy',
    'Standard Reference',
    null,
    '4b57e04091360953e8c2f11772048fc1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '4b57e04091360953e8c2f11772048fc1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Land revenue and stamp duty'),
            ('B', 'Professional tax and entertainment tax'),
            ('C', 'Customs duty, excise duty and GST'),
            ('D', 'Income tax and corporation tax')
           ) as v(label, option_text)
 where q.question_hash = '4b57e04091360953e8c2f11772048fc1'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Finance Commission of India',
    'The Finance Commission is a non statutory body constituted by the President every fifth year, and it recommends the vertical and horizontal distribution of tax revenues and grants in aid.',
    'medium',
    'Standard Reference',
    null,
    '5bd5b5072d4cac2d4a6b34b563ee372a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5bd5b5072d4cac2d4a6b34b563ee372a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Is chaired by the Governor of the Reserve Bank of India'),
            ('B', 'Determines the monetary policy of the country'),
            ('C', 'Is a statutory body created by the President'),
            ('D', 'Recommends the distribution of tax revenues between the centre and the states and the principles of horizontal distribution')
           ) as v(label, option_text)
 where q.question_hash = '5bd5b5072d4cac2d4a6b34b563ee372a'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Union Budget is presented to the Parliament on',
    'The annual budget is presented on 1 February, and the financial year of the government runs from 1 April to 31 March, with the practice of presenting it on the last working day of February having been discontinued.',
    'easy',
    'Standard Reference',
    null,
    '24dc3215f6d5c8b9558ebacb9412b082'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '24dc3215f6d5c8b9558ebacb9412b082'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 February'),
            ('B', '31 March'),
            ('C', '31 January'),
            ('D', '15 March')
           ) as v(label, option_text)
 where q.question_hash = '24dc3215f6d5c8b9558ebacb9412b082'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Expenditure on interest payments of the central government is',
    'Interest payments are revenue expenditure and are part of the fiscal deficit, but they are excluded when the primary deficit is computed, which isolates the current year''s fiscal effort.',
    'hard',
    'Standard Reference',
    null,
    'de18ecf0d3b9f9a137b16d27081cf8c5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'de18ecf0d3b9f9a137b16d27081cf8c5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Treated as capital expenditure in the Union Budget'),
            ('B', 'Included in the primary deficit of the government'),
            ('C', 'Not reflected in the fiscal deficit because it is a contractual liability'),
            ('D', 'Treated as revenue expenditure and deducted while computing the primary deficit')
           ) as v(label, option_text)
 where q.question_hash = 'de18ecf0d3b9f9a137b16d27081cf8c5'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'Fiscal consolidation of the central government implies',
    'Fiscal consolidation means lowering the deficit ratio gradually through revenue growth, better targeting of subsidies and spending efficiency rather than through a sudden compression of investment spending.',
    'hard',
    'Standard Reference',
    null,
    '1d22f94ea78d77408b0a9f83d9acd730'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1d22f94ea78d77408b0a9f83d9acd730'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A reduction in capital expenditure in order to fund interest payments'),
            ('B', 'A gradual reduction in the fiscal deficit as a share of GDP, mainly through higher revenue mobilisation and restrained expenditure'),
            ('C', 'A complete stoppage of all government borrowing'),
            ('D', 'A shift of all government expenditure to the states')
           ) as v(label, option_text)
 where q.question_hash = '1d22f94ea78d77408b0a9f83d9acd730'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The distinction between the fiscal deficit and the monetary deficit is that',
    'The fiscal deficit is a budgetary concept measuring government borrowing, while the monetary deficit, computed by the RBI, is the change in the monetary liabilities of the central and state governments less their financial assets.',
    'hard',
    'RBI Handbook',
    null,
    '03df94495598e52af0f6f95b6ccae9e3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '03df94495598e52af0f6f95b6ccae9e3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The fiscal deficit measures the borrowing requirement of the government, whereas the monetary deficit measures the increase in the monetary liabilities of the public sector'),
            ('B', 'The fiscal deficit is measured by the RBI while the monetary deficit is computed by the Finance Ministry'),
            ('C', 'Both terms refer to the same concept in Indian budgetary practice'),
            ('D', 'The fiscal deficit excludes capital expenditure while the monetary deficit includes it')
           ) as v(label, option_text)
 where q.question_hash = '03df94495598e52af0f6f95b6ccae9e3'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The objective of reducing the fiscal deficit under the FRBM Act is accompanied by the principle of',
    'The FRBM framework combines a medium term deficit path with commitments on expenditure efficiency and subsidy targeting, so that consolidation does not choke off growth spending.',
    'hard',
    'Standard Reference',
    null,
    '47159818fe93b76bb2feabe8fa84ceaf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '47159818fe93b76bb2feabe8fa84ceaf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Increasing the tax burden on the states'),
            ('B', 'Reducing the market borrowings of the central government to nil'),
            ('C', 'Substantial reduction in the fiscal deficit over a medium term horizon with better targeting of subsidies and greater expenditure efficiency'),
            ('D', 'Replacing the annual budget with a five year fiscal framework')
           ) as v(label, option_text)
 where q.question_hash = '47159818fe93b76bb2feabe8fa84ceaf'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The Goods and Services Tax has been a significant fiscal reform because',
    'By replacing several central and state levies with a single destination based tax and permitting input tax credit, GST removed cascading taxation and barriers to interstate trade.',
    'hard',
    'Standard Reference',
    null,
    '09990694ff42f72e112474c2f40c2537'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '09990694ff42f72e112474c2f40c2537'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It has replaced all state taxes on petroleum products'),
            ('B', 'It has eliminated the distinction between direct and indirect taxes'),
            ('C', 'It has made the central government independent of state revenue transfers'),
            ('D', 'It has created a uniform national market by subsuming multiple state and central taxes and allowing input tax credit')
           ) as v(label, option_text)
 where q.question_hash = '09990694ff42f72e112474c2f40c2537'
on conflict (question_id, label) do nothing;

-- economy | fiscal-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'fiscal-policy'),
    'The share of tax revenues divisible between the centre and the states is determined by',
    'The Finance Commission recommends the distribution of the divisible pool of taxes between the centre and the states, and its recommendations inform the devolution of the pool of states'' share of income tax and GST.',
    'easy',
    'Standard Reference',
    null,
    '319fd1a66e34c188c7b1289a4cbfba84'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '319fd1a66e34c188c7b1289a4cbfba84'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Monetary Policy Committee'),
            ('B', 'NITI Aayog'),
            ('C', 'The Finance Commission'),
            ('D', 'The GST Council')
           ) as v(label, option_text)
 where q.question_hash = '319fd1a66e34c188c7b1289a4cbfba84'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Monetary policy in India is formulated by',
    'The MPC, constituted under Section 45ZB of the RBI Act, determines the policy rate, and its decisions are binding on the RBI, which conducts monetary policy operations.',
    'easy',
    'RBI Handbook',
    null,
    'c9bb626c6a34108fda399b8507c27920'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9bb626c6a34108fda399b8507c27920'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Union Ministry of Finance'),
            ('B', 'The Monetary Policy Committee of the Reserve Bank of India'),
            ('C', 'The Finance Commission'),
            ('D', 'The Economic Policy Advisory Council')
           ) as v(label, option_text)
 where q.question_hash = 'c9bb626c6a34108fda399b8507c27920'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The primary instrument of monetary policy in India is',
    'The repo rate, at which the RBI lends to banks against government securities, is the benchmark policy rate and the anchor of the monetary policy transmission process.',
    'easy',
    'RBI Handbook',
    null,
    'b72a6d4b354a3956ed7fd047877e022a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b72a6d4b354a3956ed7fd047877e022a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The repo rate'),
            ('B', 'The bank rate'),
            ('C', 'The cash reserve ratio'),
            ('D', 'Open market operations')
           ) as v(label, option_text)
 where q.question_hash = 'b72a6d4b354a3956ed7fd047877e022a'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The repo rate is the rate at which the RBI',
    'Under the repo the RBI lends to banks against government securities with an agreement to repurchase them, so it is the main instrument for injecting short term liquidity.',
    'easy',
    'RBI Handbook',
    null,
    '74ddb1b1831950a2bd46277f8a8808dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '74ddb1b1831950a2bd46277f8a8808dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lends short term liquidity to banks against government securities'),
            ('B', 'Raises the cash reserve ratio of banks'),
            ('C', 'Allows banks to borrow short term liquidity for a longer period at a concessional rate'),
            ('D', 'Buys securities from banks with an agreement to sell them back later')
           ) as v(label, option_text)
 where q.question_hash = '74ddb1b1831950a2bd46277f8a8808dd'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Which of the following is a qualitative or selective instrument of monetary policy?',
    'Selective instruments such as margin requirements, credit ceilings and sectoral directives influence the direction of credit, whereas quantitative instruments influence its overall volume and price.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '2cf291e5b98b90e11e6fc02cf37eae98'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2cf291e5b98b90e11e6fc02cf37eae98'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The repo rate'),
            ('B', 'The cash reserve ratio'),
            ('C', 'Open market operations'),
            ('D', 'Margin requirements for loans against shares and securities')
           ) as v(label, option_text)
 where q.question_hash = '2cf291e5b98b90e11e6fc02cf37eae98'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The bank rate in India is',
    'The bank rate is the rate at which the RBI lends short term funds to banks, and since April 2022 it has been aligned with the repo rate and serves as a reference for other money market rates.',
    'easy',
    'RBI Handbook',
    null,
    'bf0a8f1b6a29efa6a8087f66ef3f11d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bf0a8f1b6a29efa6a8087f66ef3f11d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The rate of interest paid by the government on its short term borrowings'),
            ('B', 'The rate at which the RBI lends long term funds to banks against government securities'),
            ('C', 'The rate at which the RBI lends short term funds to banks and which also serves as a reference for other interest rates'),
            ('D', 'The rate at which banks lend to the corporate sector')
           ) as v(label, option_text)
 where q.question_hash = 'bf0a8f1b6a29efa6a8087f66ef3f11d0'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Open market operations refer to',
    'Open market operations are the RBI''s purchase or sale of government securities in the market, used to inject or absorb liquidity, with their use under the LAF framework expanded after 2016.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '8efbe4a7440317c534502d7ed1938b4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8efbe4a7440317c534502d7ed1938b4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The RBI changing the cash reserve ratio of banks'),
            ('B', 'The RBI buying and selling of government securities in the market'),
            ('C', 'The RBI fixing the ceiling on the interest rates charged by banks on advances'),
            ('D', 'The RBI allowing banks to borrow for longer periods against securities')
           ) as v(label, option_text)
 where q.question_hash = '8efbe4a7440317c534502d7ed1938b4a'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The money multiplier is',
    'The money multiplier measures how many times the monetary base is multiplied into the money supply through deposit creation by banks, and it depends on the reserve ratios and the currency holding preference of the public.',
    'medium',
    'NCERT Class XII (Economy)',
    null,
    '14f75fb8283e88508884442b8d45e719'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '14f75fb8283e88508884442b8d45e719'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The ratio of the total money supply to the monetary base'),
            ('B', 'The ratio of the change in money supply to the change in high powered money'),
            ('C', 'The ratio of the cash reserve ratio to the statutory liquidity ratio'),
            ('D', 'The ratio of total deposits to total advances of the banking system')
           ) as v(label, option_text)
 where q.question_hash = '14f75fb8283e88508884442b8d45e719'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'In the Indian context, the monetary base or high powered money consists of',
    'The monetary base is the liability of the RBI on which the money supply is built, and it comprises currency with the public, the RBI''s net reserves and other deposits of the banking system with the RBI.',
    'hard',
    'RBI Handbook',
    null,
    '5900ef1f102b3f0d41f267b8f64a68fd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5900ef1f102b3f0d41f267b8f64a68fd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The foreign exchange reserves held by the RBI'),
            ('B', 'Currency issued by the RBI net of cash with the RBI, plus the RBI''s net reserves and other deposits of the banking system'),
            ('C', 'Currency with the public plus total time and demand deposits with the banking system'),
            ('D', 'The total capital of scheduled commercial banks')
           ) as v(label, option_text)
 where q.question_hash = '5900ef1f102b3f0d41f267b8f64a68fd'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The transmission mechanism of monetary policy in India generally runs through',
    'Monetary policy works through a chain of reactions beginning with the policy rate and passing through money market and lending rates to credit demand, aggregate demand and finally output and prices, with time lags at each stage.',
    'medium',
    'RBI Handbook',
    null,
    'c6001370fbb3a22d25a16e81512fba44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c6001370fbb3a22d25a16e81512fba44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A direct purchase of government securities by the government from the RBI'),
            ('B', 'A direct link between the repo rate and the administered price of fertilisers'),
            ('C', 'A sequence from the policy rate to money market rates and bank lending rates, to credit demand and aggregate demand, and finally to prices and output'),
            ('D', 'The taxation policy of the central government')
           ) as v(label, option_text)
 where q.question_hash = 'c6001370fbb3a22d25a16e81512fba44'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'A rise in the repo rate may not fully translate into lower inflation in India because',
    'Monetary policy can control demand driven inflation, but supply side shocks to food and fuel prices can keep headline inflation high even with tight monetary conditions.',
    'medium',
    'Standard Reference',
    null,
    '357aa029ec39394865ecbbeae242ac4a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '357aa029ec39394865ecbbeae242ac4a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Banks do not lend to the private sector at all'),
            ('B', 'The repo rate is not the RBI''s policy rate'),
            ('C', 'The CPI does not include food prices'),
            ('D', 'Supply shocks such as food price spikes or imported inflation push prices up independently of monetary conditions')
           ) as v(label, option_text)
 where q.question_hash = '357aa029ec39394865ecbbeae242ac4a'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The Monetary Policy Committee votes on',
    'The MPC determines the policy rate and other monetary instruments, and its decisions are taken by majority with the Governor holding a casting vote in case of a tie.',
    'easy',
    'RBI Handbook',
    null,
    '5f7c372866488f75ff722e3c13f7d574'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '5f7c372866488f75ff722e3c13f7d574'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The allocation of the divisible pool of tax revenues'),
            ('B', 'The licensing of new banks and non banking financial companies'),
            ('C', 'The rate of interest paid on the provident fund by the government'),
            ('D', 'The repo rate and other policy instruments')
           ) as v(label, option_text)
 where q.question_hash = '5f7c372866488f75ff722e3c13f7d574'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Under the RBI Act, the surplus of the RBI is transferred to',
    'Section 18 of the RBI Act requires the surplus of the Bank to be transferred to the Central Government and credited to the Contingency Fund of India, while losses are borne by the government.',
    'hard',
    'RBI Handbook',
    null,
    '8e26edd5a35490fb2575d327c02d22c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e26edd5a35490fb2575d327c02d22c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Financial Stability and Development Council'),
            ('B', 'The Government of India as a general grant'),
            ('C', 'The Central Government, credited to the Contingency Fund of India'),
            ('D', 'The National Bank for Agriculture and Rural Development')
           ) as v(label, option_text)
 where q.question_hash = '8e26edd5a35490fb2575d327c02d22c6'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The cooperative banking structure in India is a two tier structure consisting of',
    'The short term credit structure supplies crop and short term agricultural credit, while the long term credit structure led by the State Cooperative Agricultural and Rural Development Banks provides term loans and investment finance.',
    'hard',
    'Standard Reference',
    null,
    '06da061d5cd4359ad17ddff435a30141'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '06da061d5cd4359ad17ddff435a30141'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State cooperative banks and primary cooperative banks'),
            ('B', 'A short term credit structure of state cooperative banks, district central cooperative banks and primary agricultural credit societies, and a long term credit structure'),
            ('C', 'Central cooperative banks and village councils'),
            ('D', 'Regional rural banks and self help groups')
           ) as v(label, option_text)
 where q.question_hash = '06da061d5cd4359ad17ddff435a30141'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Regional Rural Banks are',
    'RRBs were set up in 1975 and combine public sector ownership with the professional expertise of sponsor banks, with shareholding split among the centre, the state government and the sponsors.',
    'medium',
    'Standard Reference',
    null,
    '90969475eaed98e3275dea0b5897553f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '90969475eaed98e3275dea0b5897553f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A hybrid of public and private sector banks with capital held by the centre, the state government and sponsor banks'),
            ('B', 'Owned entirely by the central government'),
            ('C', 'A source of direct finance for the corporate sector'),
            ('D', 'A part of the cooperative banking structure')
           ) as v(label, option_text)
 where q.question_hash = '90969475eaed98e3275dea0b5897553f'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The RBI''s role as banker to the government includes',
    'As banker to the government the RBI keeps the accounts of the centre and the states, manages the Consolidated Fund and provides temporary ways and means advances for cash flow management.',
    'medium',
    'RBI Handbook',
    null,
    '7f82148e31d761f2bd1aee3ac5b77805'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7f82148e31d761f2bd1aee3ac5b77805'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Approving the annual budget of the government'),
            ('B', 'Guaranteeing the deposits of government employees'),
            ('C', 'Managing the government''s accounts and making ways and means advances'),
            ('D', 'Deciding the tax rates of the central government')
           ) as v(label, option_text)
 where q.question_hash = '7f82148e31d761f2bd1aee3ac5b77805'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The General Account of the central government is maintained with',
    'The General Account is the account of the central government maintained with the RBI, and the balances in it form part of the government account kept by the central bank.',
    'medium',
    'RBI Handbook',
    null,
    'db7e8b153a5f905ab5237570b717e46f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db7e8b153a5f905ab5237570b717e46f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The State Bank of India'),
            ('B', 'The National Bank for Agriculture and Rural Development'),
            ('C', 'The World Bank'),
            ('D', 'The Reserve Bank of India')
           ) as v(label, option_text)
 where q.question_hash = 'db7e8b153a5f905ab5237570b717e46f'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Ways and means advances provided by the RBI to the government',
    'Ways and means advances are a temporary bridging facility for cash flow mismatches and must be repaid within 91 days, with outstanding advances at the year end charged to the Consolidated Fund.',
    'hard',
    'RBI Handbook',
    null,
    'ad4aa6d34f721d6adcb8627c05567d08'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ad4aa6d34f721d6adcb8627c05567d08'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Are temporary advances to smooth cash flows and are repayable within 91 days'),
            ('B', 'Are available only to the state governments'),
            ('C', 'Are a permanent source of financing for government expenditure'),
            ('D', 'Are made against government securities for a period of up to 90 days')
           ) as v(label, option_text)
 where q.question_hash = 'ad4aa6d34f721d6adcb8627c05567d08'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'A non banking financial company in India can raise funds from',
    'An NBFC can accept time deposits and other permitted instruments from the public and can also borrow from banks and the corporate sector, but it cannot take demand deposits.',
    'medium',
    'RBI Handbook',
    null,
    '7f14ff058d70ac3cc052403032abadbf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7f14ff058d70ac3cc052403032abadbf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Deposits from cooperative banks'),
            ('B', 'The general public in the form of time deposits and other instruments permitted by the RBI'),
            ('C', 'Demand deposits from the general public'),
            ('D', 'Funds from the Reserve Bank of India at the policy repo rate')
           ) as v(label, option_text)
 where q.question_hash = '7f14ff058d70ac3cc052403032abadbf'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The call money market in India refers to',
    'Call money is borrowed and repaid within a day and the call money rate is the first and most sensitive indicator of the liquidity conditions and the market''s expectation of the policy rate.',
    'medium',
    'Standard Reference',
    null,
    '5cc117b149652512df0665dbcb809d1d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5cc117b149652512df0665dbcb809d1d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The market where banks raise deposits from the public for longer terms'),
            ('B', 'The market for trading government securities with maturities above one year'),
            ('C', 'The market for very short term loans, generally of up to 14 days, between banks and financial institutions'),
            ('D', 'The market for loans of one to five years between banks')
           ) as v(label, option_text)
 where q.question_hash = '5cc117b149652512df0665dbcb809d1d'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The repo market in India is',
    'The repo market is the market for short term borrowing against securities, and the call money rate derived from it is the benchmark for very short term funds in the economy.',
    'medium',
    'Standard Reference',
    null,
    '5a25365dcb1f8176a3e2b4a31ce9a0de'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5a25365dcb1f8176a3e2b4a31ce9a0de'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The market where banks lend to the public at high interest rates'),
            ('B', 'The market where banks borrow from each other or from the RBI against short term securities'),
            ('C', 'The market for the sale of foreign currency by the RBI'),
            ('D', 'The market where the government raises funds through treasury bills')
           ) as v(label, option_text)
 where q.question_hash = '5a25365dcb1f8176a3e2b4a31ce9a0de'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The money market in India comprises',
    'The money market deals in instruments of maturity up to one year, whereas the capital market deals in longer term securities like government bonds, corporate debentures and equity shares.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'e1e779e86f5a0c6399e12f2b55201a67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e1e779e86f5a0c6399e12f2b55201a67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Instruments of short maturity, generally up to one year, such as treasury bills, commercial paper, certificates of deposit and call money'),
            ('B', 'The primary market for equity issues of listed companies'),
            ('C', 'Long term bonds and debentures issued by companies'),
            ('D', 'Term loans of one year and above given by banks')
           ) as v(label, option_text)
 where q.question_hash = 'e1e779e86f5a0c6399e12f2b55201a67'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The capital market in India consists of',
    'The capital market mobilises medium and long term savings and includes the debt market of government and corporate securities and the equity market of shares, and it is regulated by SEBI.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    '981d9a23c856493ad4445d4516787636'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '981d9a23c856493ad4445d4516787636'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Instruments of maturity up to one year issued by the government and companies'),
            ('B', 'The market where banks borrow from one another overnight'),
            ('C', 'The market for foreign exchange and gold'),
            ('D', 'Instruments of maturity over one year, such as government securities, corporate bonds, debentures and equity shares')
           ) as v(label, option_text)
 where q.question_hash = '981d9a23c856493ad4445d4516787636'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'After April 2022, the relationship between the bank rate and the repo rate in India is that',
    'The RBI aligned the bank rate with the repo rate from April 2022 as part of the liquidity based framework, so that the legacy bank rate does not distort money market signals.',
    'hard',
    'RBI Handbook',
    null,
    '4cd4a07823ef7a4ad576e8c23697b52c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4cd4a07823ef7a4ad576e8c23697b52c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The bank rate has been aligned with the repo rate'),
            ('B', 'The bank rate is fixed at half the repo rate'),
            ('C', 'The bank rate is always higher than the repo rate by one percentage point'),
            ('D', 'The bank rate is fixed by the Ministry of Finance')
           ) as v(label, option_text)
 where q.question_hash = '4cd4a07823ef7a4ad576e8c23697b52c'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Which of the following is NOT a quantitative instrument of monetary policy?',
    'Moral suasion and priority sector directives belong to the selective or qualitative instruments that direct credit flows, while the repo rate, CRR and open market operations control the volume and cost of credit.',
    'easy',
    'NCERT Class XII (Economy)',
    null,
    'aca0ac8f9ddb529e7380aaf4d9128fda'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'aca0ac8f9ddb529e7380aaf4d9128fda'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Open market operations'),
            ('B', 'Repo rate'),
            ('C', 'Cash reserve ratio'),
            ('D', 'Moral suasion with banks to follow priority sector lending norms')
           ) as v(label, option_text)
 where q.question_hash = 'aca0ac8f9ddb529e7380aaf4d9128fda'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The policy rate referred to in the inflation targeting framework of India is',
    'The repo rate is the policy rate that the MPC uses to steer inflation to the target, with other rates in the financial system expected to move with it.',
    'easy',
    'RBI Handbook',
    null,
    'd81fb4769a5de3b25830b69b43a91662'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd81fb4769a5de3b25830b69b43a91662'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The yield on ten year government bonds'),
            ('B', 'The weighted average cost of funds of the banking system'),
            ('C', 'The repo rate of the Reserve Bank of India'),
            ('D', 'The bank rate')
           ) as v(label, option_text)
 where q.question_hash = 'd81fb4769a5de3b25830b69b43a91662'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The Liquidity Facility introduced by the RBI in 2019 replaced',
    'The Liquidity Facility was introduced in April 2019 to provide overnight liquidity to banks facing stress, and the MSF was retained but restricted to banks with serious liquidity stress.',
    'hard',
    'RBI Handbook',
    null,
    '48effd96e08858d9cafb88a40f10b99f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '48effd96e08858d9cafb88a40f10b99f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The repo and the reverse repo operations'),
            ('B', 'The Marginal Standing Facility'),
            ('C', 'The cash reserve ratio'),
            ('D', 'The liquidity adjustment facility')
           ) as v(label, option_text)
 where q.question_hash = '48effd96e08858d9cafb88a40f10b99f'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The RBI''s Operation Twist involved',
    'Operation Twist combined purchases of long dated securities with sales of short dated securities to push down long term yields, and the RBI conducted similar special operations in 2020 as well.',
    'hard',
    'RBI Handbook',
    null,
    '1d312d2030bc640a422256c7f11110a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1d312d2030bc640a422256c7f11110a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Simultaneously buying long term securities and selling short term securities to steepen the yield curve'),
            ('B', 'Cancelling the outstanding reverse repo auctions'),
            ('C', 'Raising the repo rate while buying long term securities'),
            ('D', 'Lowering the cash reserve ratio to inject liquidity')
           ) as v(label, option_text)
 where q.question_hash = '1d312d2030bc640a422256c7f11110a2'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Under the Minimum Reserve System of the RBI, the foreign exchange reserves are held in',
    'Under the Minimum Reserve System, forex reserves are held by the RBI on its own balance sheet and any change in them is automatically sterilised, unlike under the Multiple Exchange Rate system.',
    'hard',
    'RBI Handbook',
    null,
    'fc0d7b69052ea0b9cdd400a887aa5a0c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fc0d7b69052ea0b9cdd400a887aa5a0c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The accounts of the central government'),
            ('B', 'The RBI''s own balance sheet'),
            ('C', 'The accounts of the scheduled commercial banks'),
            ('D', 'The Consolidated Fund of India')
           ) as v(label, option_text)
 where q.question_hash = 'fc0d7b69052ea0b9cdd400a887aa5a0c'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Sterilisation of foreign exchange intervention by the RBI means',
    'Sterilisation neutralises the automatic monetary impact of an intervention, so that the RBI can change the exchange rate without altering the domestic liquidity conditions.',
    'hard',
    'RBI Handbook',
    null,
    '935091082d036fb15aded192eeca26df'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '935091082d036fb15aded192eeca26df'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Using the foreign exchange reserves to pay for imports without raising the repo rate'),
            ('B', 'Converting the foreign exchange reserves into gold'),
            ('C', 'Banning the purchase of foreign currency by authorised dealers'),
            ('D', 'Counteracting the effect of the intervention on domestic liquidity through offsetting open market operations')
           ) as v(label, option_text)
 where q.question_hash = '935091082d036fb15aded192eeca26df'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'A sterilised intervention by the central bank is designed to',
    'A sterilised intervention leaves the money supply unchanged, which is important under the Minimum Reserve System where every intervention automatically changes liquidity.',
    'medium',
    'RBI Handbook',
    null,
    '1db7982b0a6c697b2c95456937be1859'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1db7982b0a6c697b2c95456937be1859'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Raise the domestic interest rate to attract capital inflows'),
            ('B', 'Change the level of the exchange rate permanently'),
            ('C', 'Neutralise the effect of the intervention on the domestic money supply'),
            ('D', 'Increase the foreign exchange reserves of the central bank')
           ) as v(label, option_text)
 where q.question_hash = '1db7982b0a6c697b2c95456937be1859'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The RBI''s approach to the exchange rate of the rupee since 1992-93 has been described as',
    'India moved to a managed float in 1992-93, with the RBI letting the market determine the rate but intervening to smooth excessive volatility and prevent speculative attacks.',
    'hard',
    'RBI Handbook',
    null,
    'f2c196e8d60d57aeefbf962275f13074'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f2c196e8d60d57aeefbf962275f13074'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A managed float with periodic intervention to check excessive volatility'),
            ('B', 'A crawling band of two to three per cent around a central parity'),
            ('C', 'A crawling peg with a fixed parity'),
            ('D', 'A freely floating exchange rate determined solely by market forces')
           ) as v(label, option_text)
 where q.question_hash = 'f2c196e8d60d57aeefbf962275f13074'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The primary means by which the RBI influences liquidity conditions in the banking system is',
    'Day to day liquidity management is carried out through the LAF and the MSF, while open market operations, repo and reverse repo auctions adjust system liquidity to keep the call money rate close to the policy rate.',
    'medium',
    'RBI Handbook',
    null,
    '63e58de5641d83255393b038d126775c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '63e58de5641d83255393b038d126775c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Conducting the quarterly monetary policy review'),
            ('B', 'Conducting open market operations and repo and reverse repo transactions'),
            ('C', 'Advising banks on the priority sector lending targets'),
            ('D', 'Issuing guidelines on the classification of non performing assets')
           ) as v(label, option_text)
 where q.question_hash = '63e58de5641d83255393b038d126775c'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Forward contracts in the foreign exchange market are used primarily to',
    'Forward contracts fix today''s exchange rate for a future settlement date, so importers and exporters can hedge the risk of exchange rate movements on their receivables and payables.',
    'medium',
    'Standard Reference',
    null,
    '0ca11b58b07cb16277a95f294974ff58'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0ca11b58b07cb16277a95f294974ff58'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Regulate the money market rate of the banking system'),
            ('B', 'Determine the base year of the price indices'),
            ('C', 'Raise short term funds for the government'),
            ('D', 'Hedge against exchange rate risk on future transactions')
           ) as v(label, option_text)
 where q.question_hash = '0ca11b58b07cb16277a95f294974ff58'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'A swap in the foreign exchange market refers to',
    'A swap involves buying foreign currency spot and selling it forward, or the reverse, and is used to manage short term liquidity flows and to roll over forward positions.',
    'hard',
    'Standard Reference',
    null,
    '0299edf4e5a0534db2474e09b8abfbe0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0299edf4e5a0534db2474e09b8abfbe0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The purchase of foreign currency for immediate delivery against domestic currency'),
            ('B', 'The conversion of one currency into another at the spot rate'),
            ('C', 'The exchange of spot and forward contracts, involving the purchase of foreign currency spot and its sale forward'),
            ('D', 'The transfer of foreign exchange reserves between the RBI and the government')
           ) as v(label, option_text)
 where q.question_hash = '0299edf4e5a0534db2474e09b8abfbe0'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The spot exchange market in India is characterised by',
    'Spot transactions are settled on the day of the contract or within two business days, whereas forward contracts are settled at a future date at a rate agreed today.',
    'medium',
    'Standard Reference',
    null,
    'f66bded9955cae620d2a39a62d1bd488'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f66bded9955cae620d2a39a62d1bd488'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Transactions in which the exchange rate is fixed by the RBI each morning'),
            ('B', 'Transactions settled on the day of the contract, generally within two business days'),
            ('C', 'Transactions settled after a period of more than two days'),
            ('D', 'Transactions in which delivery takes place at a future date')
           ) as v(label, option_text)
 where q.question_hash = 'f66bded9955cae620d2a39a62d1bd488'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'Interest rate risk faced by a bank arises because',
    'A mismatch between the maturity and repricing of assets and liabilities exposes a bank to interest rate risk, which is why banks align the duration of their assets and liabilities.',
    'medium',
    'Standard Reference',
    null,
    'b889f39d13805e6ae7aad94e895f661f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'b889f39d13805e6ae7aad94e895f661f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The bank''s licence to operate is revoked if it earns insufficient interest'),
            ('B', 'The government can change the interest rate on government securities'),
            ('C', 'Changes in market interest rates affect the value of the bank''s assets and liabilities'),
            ('D', 'The bank''s borrowers default whenever interest rates fall')
           ) as v(label, option_text)
 where q.question_hash = 'b889f39d13805e6ae7aad94e895f661f'
on conflict (question_id, label) do nothing;

-- economy | monetary-policy | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'monetary-policy'),
    'The RBI''s approach to the financial stability of the banking system includes',
    'Financial stability is pursued through the RBI''s supervision of banks and other institutions, macroprudential tools such as counter cyclical capital buffers and periodic financial stability reports.',
    'medium',
    'RBI Handbook',
    null,
    '3065787de7862e7b13aae1a84a573cdd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3065787de7862e7b13aae1a84a573cdd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Supervision and regulation of financial institutions, macroprudential policy and the publication of financial stability reports'),
            ('B', 'Determining the fiscal deficit of the central government'),
            ('C', 'Allocating the funds of the Finance Commission to the states'),
            ('D', 'Fixing the lending rates of all scheduled banks')
           ) as v(label, option_text)
 where q.question_hash = '3065787de7862e7b13aae1a84a573cdd'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''basic motive of the state'' in a capitalist economy is:',
    'Marxist theory holds that the basic motive of the capitalist state is the accumulation of wealth for the capitalist class, in contrast to the welfare motive of the socialist state.',
    'medium',
    'NCERT Class XI',
    null,
    'f604b5cd595c6157015b259a8950bca6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f604b5cd595c6157015b259a8950bca6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The elimination of private property'),
            ('B', 'The abolition of the state'),
            ('C', 'The welfare of the people'),
            ('D', 'The accumulation of wealth by the capitalist class')
           ) as v(label, option_text)
 where q.question_hash = 'f604b5cd595c6157015b259a8950bca6'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'According to Adam Smith, the ''invisible hand'' guides:',
    'In The Wealth of Nations Adam Smith argued that individuals pursuing their own interest are guided, as if by an invisible hand, towards outcomes that benefit society.',
    'medium',
    'NCERT Class XI',
    null,
    '816ef5190de9e4baa7187e7b21c4187b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '816ef5190de9e4baa7187e7b21c4187b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The government towards free trade only'),
            ('B', 'The producers towards higher prices'),
            ('C', 'The state towards paternalism'),
            ('D', 'Individuals towards the common interest in an unregulated market')
           ) as v(label, option_text)
 where q.question_hash = '816ef5190de9e4baa7187e7b21c4187b'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Law of Diminishing Marginal Utility'' was formulated by:',
    'Alfred Marshall formulated the law of diminishing marginal utility, which explains the downward sloping demand curve.',
    'medium',
    'NCERT Class XI',
    null,
    '7317a5f05b1cb9ade8fc065dc182d19b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7317a5f05b1cb9ade8fc065dc182d19b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Adam Smith'),
            ('B', 'Alfred Marshall'),
            ('C', 'David Ricardo'),
            ('D', 'J.S. Mill')
           ) as v(label, option_text)
 where q.question_hash = '7317a5f05b1cb9ade8fc065dc182d19b'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Alfred Marshall is known for the concept of:',
    'Marshall developed the method of partial equilibrium, holding other variables constant while analysing a single market, in his Principles of Economics (1890).',
    'hard',
    'Standard Reference',
    null,
    'fedeb88798269cab5cdfa70384cb9f78'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fedeb88798269cab5cdfa70384cb9f78'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Partial equilibrium analysis'),
            ('B', 'General equilibrium analysis'),
            ('C', 'Trickle-down economics'),
            ('D', 'Comparative advantage')
           ) as v(label, option_text)
 where q.question_hash = 'fedeb88798269cab5cdfa70384cb9f78'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Doctrine of Comparative Advantage'' was given by:',
    'David Ricardo explained the gains from trade through comparative advantage, using the example of England and Portugal producing cloth and wine.',
    'easy',
    'NCERT Class XI',
    null,
    '53a341931a95adfb5b1cf66180745da7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '53a341931a95adfb5b1cf66180745da7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'J.S. Mill'),
            ('B', 'Adam Smith'),
            ('C', 'David Ricardo'),
            ('D', 'Heckscher-Ohlin')
           ) as v(label, option_text)
 where q.question_hash = '53a341931a95adfb5b1cf66180745da7'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Heckscher-Ohlin'' theory of international trade is based on:',
    'The Heckscher-Ohlin (factor endowment) theory states that a country will export those goods that use its relatively abundant factor intensively.',
    'hard',
    'Standard Reference',
    null,
    '7099482792b8b4fd206ab633db0b0f17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7099482792b8b4fd206ab633db0b0f17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Factor endowments'),
            ('B', 'Absolute advantage'),
            ('C', 'Demand and supply'),
            ('D', 'Comparative advantage')
           ) as v(label, option_text)
 where q.question_hash = '7099482792b8b4fd206ab633db0b0f17'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Keynes''s ''General Theory'' of employment, interest and money was published in:',
    'John Maynard Keynes published The General Theory of Employment, Interest and Money in 1936, laying the foundations of modern macroeconomics.',
    'medium',
    'Standard Reference',
    null,
    '4c603e1a16cee378bd24bdb94d158615'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4c603e1a16cee378bd24bdb94d158615'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1919'),
            ('B', '1936'),
            ('C', '1945'),
            ('D', '1929')
           ) as v(label, option_text)
 where q.question_hash = '4c603e1a16cee378bd24bdb94d158615'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''General equilibrium theory'' of Walras:',
    'Walras''s general equilibrium theory analyses all markets of an economy simultaneously, with prices adjusting so that the markets clear.',
    'hard',
    'Standard Reference',
    null,
    '1ecb6f0b56aff85e2e52f96bf8375f74'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1ecb6f0b56aff85e2e52f96bf8375f74'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Applies only to agriculture'),
            ('B', 'Is used for fiscal policy'),
            ('C', 'Holds prices and wages constant'),
            ('D', 'Considers all the markets of an economy simultaneously')
           ) as v(label, option_text)
 where q.question_hash = '1ecb6f0b56aff85e2e52f96bf8375f74'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Pigou effect'' refers to:',
    'The Pigou effect is the wealth effect whereby a fall in prices increases real balances and hence consumption, thereby reversing a deflationary spiral.',
    'hard',
    'Standard Reference',
    null,
    '711f52c625e3d7bc3cde0802dac8b20d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '711f52c625e3d7bc3cde0802dac8b20d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The crowding out effect'),
            ('B', 'The Phillips curve effect'),
            ('C', 'The wealth effect of a price fall on consumption'),
            ('D', 'The multiplier effect')
           ) as v(label, option_text)
 where q.question_hash = '711f52c625e3d7bc3cde0802dac8b20d'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''crowding out'' effect refers to:',
    'When the government borrows heavily, it raises interest rates and crowds out private investment, a central argument in the public choice critique of Keynesian fiscal policy.',
    'medium',
    'Standard Reference',
    null,
    '105aec0d3175f808eabdd1fa0ede6007'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '105aec0d3175f808eabdd1fa0ede6007'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An increase in private investment because of lower interest rates'),
            ('B', 'A reduction in private investment because of higher interest rates caused by public borrowing'),
            ('C', 'An increase in unemployment'),
            ('D', 'A fall in the price level')
           ) as v(label, option_text)
 where q.question_hash = '105aec0d3175f808eabdd1fa0ede6007'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Paradox of thrift'' was propounded by:',
    'In the General Theory Keynes described the paradox of thrift: an increase in saving reduces income and therefore reduces saving in the aggregate.',
    'hard',
    'Standard Reference',
    null,
    '9aa22edea710bac18fda57f497d943e9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9aa22edea710bac18fda57f497d943e9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Menger'),
            ('B', 'Samuelson'),
            ('C', 'Keynes'),
            ('D', 'Hayek')
           ) as v(label, option_text)
 where q.question_hash = '9aa22edea710bac18fda57f497d943e9'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which of the following is a ''derived'' demand?',
    'Labour is a derived demand because it is demanded for its capacity to produce other goods and services that have demand.',
    'medium',
    'Standard Reference',
    null,
    '74eacce8887f22095ad9ce91a7c28727'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '74eacce8887f22095ad9ce91a7c28727'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Demand for wheat'),
            ('B', 'Demand for a house'),
            ('C', 'Demand for money'),
            ('D', 'Demand for labour')
           ) as v(label, option_text)
 where q.question_hash = '74eacce8887f22095ad9ce91a7c28727'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Five Year Plans'' in India were first launched in:',
    'The First Five Year Plan was launched in 1951-52 with the objective of raising the income of the poor through the development of agriculture.',
    'easy',
    'NCERT Class XI',
    null,
    'd12b474afbb42459064230dd6cb734ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd12b474afbb42459064230dd6cb734ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1951-52'),
            ('B', '1956'),
            ('C', '1950'),
            ('D', '1947')
           ) as v(label, option_text)
 where q.question_hash = 'd12b474afbb42459064230dd6cb734ce'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which Five Year Plan is known as the ''Gadgil Yojana''?',
    'The First Five Year Plan (1951-56) was based on the Gadgil Yojana model, drafted by D.R. Gadgil.',
    'medium',
    'Standard Reference',
    null,
    '45a7d2f2516b407a518b6ee848f8e5e6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '45a7d2f2516b407a518b6ee848f8e5e6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Second'),
            ('B', 'Third'),
            ('C', 'Fourth'),
            ('D', 'First')
           ) as v(label, option_text)
 where q.question_hash = '45a7d2f2516b407a518b6ee848f8e5e6'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Nehru model'' of economic development was followed in the:',
    'The Second Five Year Plan (1956-61) followed the Nehru model, with P.C. Mahalanobis as the architect of a heavy industry-led model.',
    'medium',
    'Standard Reference',
    null,
    '0f1fb69bd1cb2dc391a3d050302c3dfd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0f1fb69bd1cb2dc391a3d050302c3dfd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'First Five Year Plan'),
            ('B', 'Second Five Year Plan'),
            ('C', 'Third Five Year Plan'),
            ('D', 'Fourth Five Year Plan')
           ) as v(label, option_text)
 where q.question_hash = '0f1fb69bd1cb2dc391a3d050302c3dfd'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Garibi Hatao'' slogan was associated with:',
    'Garibi Hatao (eradicate poverty) was the slogan of the Third Five Year Plan (1961-66), drafted largely by D.R. Gadgil.',
    'medium',
    'Standard Reference',
    null,
    'd000a2da5e1ff65d637cd17073682696'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd000a2da5e1ff65d637cd17073682696'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Third Five Year Plan'),
            ('B', 'The Fourth Five Year Plan'),
            ('C', 'The Fifth Five Year Plan'),
            ('D', 'The Second Five Year Plan')
           ) as v(label, option_text)
 where q.question_hash = 'd000a2da5e1ff65d637cd17073682696'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'Which Five Year Plan was called the ''Gadgil Yojana'' and focused on agriculture?',
    'The Second Five Year Plan, also called the Mahalanobis Plan, aimed at a faster rate of growth in an industrialising economy.',
    'medium',
    'Standard Reference',
    null,
    '332178c25a64d10cb422110eb71daae1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '332178c25a64d10cb422110eb71daae1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fourth'),
            ('B', 'Sixth'),
            ('C', 'Second'),
            ('D', 'Third')
           ) as v(label, option_text)
 where q.question_hash = '332178c25a64d10cb422110eb71daae1'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The ''Sixth Five Year Plan'' was named:',
    'The Sixth Five Year Plan (1980-85) was named after the Harrod-Domar model of growth.',
    'hard',
    'Standard Reference',
    null,
    'f00fce14f9eaac0ea0d722d3632af5e5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f00fce14f9eaac0ea0d722d3632af5e5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Rolling Plan'),
            ('B', 'The Harrod-Domar Plan'),
            ('C', 'The Fourth Plan'),
            ('D', 'The Fifth Plan')
           ) as v(label, option_text)
 where q.question_hash = 'f00fce14f9eaac0ea0d722d3632af5e5'
on conflict (question_id, label) do nothing;

-- economy | basic-concepts | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'economy'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'economy' and c.slug = 'basic-concepts'),
    'The Eighth Five Year Plan (1992-97) was also known as:',
    'The Eighth Plan was called the Employment Plan, with the objective of generating more employment through growth in the industrial and service sectors.',
    'medium',
    'Standard Reference',
    null,
    'bda2641e104faf69eb2414c3e1c80f32'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'bda2641e104faf69eb2414c3e1c80f32'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Employment Plan'),
            ('B', 'The Tourism Plan'),
            ('C', 'The Privatisation Plan'),
            ('D', 'The Infrastructure Plan')
           ) as v(label, option_text)
 where q.question_hash = 'bda2641e104faf69eb2414c3e1c80f32'
on conflict (question_id, label) do nothing;

commit;
