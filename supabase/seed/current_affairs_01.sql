-- =============================================================================
-- current_affairs_01.sql — current_affairs question pack, part 01
-- 250 questions. Applied after supabase/migrations/004_reference_data.sql
-- =============================================================================

begin;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'As per the National Statistical Office, the base year for India''s Consumer Price Index (Combined) is:',
    'The CPI (Combined) series uses calendar year 2012 as its base year, whereas the Wholesale Price Index and the Index of Industrial Production use 2011-12.',
    'medium',
    'Standard Reference',
    null,
    '6011b0f305e32e5f018cf27a5cb0d220'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6011b0f305e32e5f018cf27a5cb0d220'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2004-05'),
            ('B', '2011-12'),
            ('C', '1995-96'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '6011b0f305e32e5f018cf27a5cb0d220'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The base year of the Wholesale Price Index in India, after the revision effected with effect from 1 October 2011, is:',
    'The WPI was rebased to 2011-12 (with effect from October 2011), replacing the earlier 2004-05 base year, while the CPI (Combined) uses 2012 as its base.',
    'medium',
    'Standard Reference',
    null,
    '8e5703451087c817ccfac325ff6b24d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '8e5703451087c817ccfac325ff6b24d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2009-10'),
            ('B', '2012'),
            ('C', '2011-12'),
            ('D', '2004-05')
           ) as v(label, option_text)
 where q.question_hash = '8e5703451087c817ccfac325ff6b24d1'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Monetary Policy Committee of the Reserve Bank of India, which frames the repo rate decision, consists of how many members?',
    'The MPC has six members: three from the RBI (including the Governor) and three appointed by the Central Government, with the RBI Governor holding a casting vote.',
    'easy',
    'RBI',
    null,
    '89d8126c3cb440d335a8003b7cb37d1c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '89d8126c3cb440d335a8003b7cb37d1c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Seven'),
            ('B', 'Six'),
            ('C', 'Three'),
            ('D', 'Five')
           ) as v(label, option_text)
 where q.question_hash = '89d8126c3cb440d335a8003b7cb37d1c'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'In which year was the Goods and Services Tax (GST) introduced in India?',
    'GST was introduced on 1 July 2017, replacing a host of indirect taxes such as excise duty, VAT, service tax and octroi.',
    'easy',
    'PIB',
    2017,
    '26766e072677134eb8e046d3241b5835'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '26766e072677134eb8e046d3241b5835'
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
 where q.question_hash = '26766e072677134eb8e046d3241b5835'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Compensation to states for revenue loss caused by the introduction of GST is provided under which legislation?',
    'The GST (Compensation to States) Act, 2017 provided for a 14 per cent annual compensation for five years from July 2017 and the machinery to compute and pay it.',
    'medium',
    'PIB',
    2017,
    '21eed20c100fdd6c987cade69fa6681c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '21eed20c100fdd6c987cade69fa6681c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Goods and Services Tax (Council) Act, 2016'),
            ('B', 'The Constitution (One Hundred and Twenty-Second Amendment) Act, 2016'),
            ('C', 'The Goods and Services Tax (Compensation to States) Act, 2017'),
            ('D', 'The Finance Act, 2017')
           ) as v(label, option_text)
 where q.question_hash = '21eed20c100fdd6c987cade69fa6681c'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'For how many years was compensation payable to states for revenue loss on account of GST from the date of commencement of GST?',
    'Compensation was payable for five years, that is, for 2017-18 to 2021-22, after which the 14 per cent annual rate ceases.',
    'medium',
    'PIB',
    2017,
    'ab7a07d1dd58fbc2744d452eb1916882'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ab7a07d1dd58fbc2744d452eb1916882'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Five years'),
            ('B', 'Seven years'),
            ('C', 'Ten years'),
            ('D', 'Three years')
           ) as v(label, option_text)
 where q.question_hash = 'ab7a07d1dd58fbc2744d452eb1916882'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The World Bank''s ''Doing Business'' ranking of countries was discontinued after which edition?',
    'The Doing Business report was discontinued after the 2020 edition due to data irregularities, and the World Bank moved to a new Business Ready methodology.',
    'medium',
    'World Bank',
    2020,
    '07970192b49e2e081b03b145966c558d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '07970192b49e2e081b03b145966c558d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Doing Business 2022'),
            ('B', 'Doing Business 2020'),
            ('C', 'Doing Business 2018'),
            ('D', 'Doing Business 2016')
           ) as v(label, option_text)
 where q.question_hash = '07970192b49e2e081b03b145966c558d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'In the World Bank''s Doing Business 2020 report, India was ranked at which position among 190 economies?',
    'India improved to 63rd place in Doing Business 2020 from 77th in 2019 and 100th in 2018, its best-ever position in the series.',
    'medium',
    'World Bank',
    2020,
    'd79636288ebf5034abefef5d6cb94664'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd79636288ebf5034abefef5d6cb94664'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '87th'),
            ('B', '42nd'),
            ('C', '140th'),
            ('D', '63rd')
           ) as v(label, option_text)
 where q.question_hash = 'd79636288ebf5034abefef5d6cb94664'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'India''s foreign exchange reserves crossed the USD 600 billion mark for the first time in:',
    'Reserves first exceeded USD 600 billion in September 2021 when the RBI''s intervention and inflows from overseas investors lifted the stock to about USD 634 billion.',
    'medium',
    'RBI',
    2021,
    '2bcc14a69ff18fc21ad662c977a8cede'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '2bcc14a69ff18fc21ad662c977a8cede'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'June 2022'),
            ('B', 'September 2021'),
            ('C', 'January 2023'),
            ('D', 'March 2020')
           ) as v(label, option_text)
 where q.question_hash = '2bcc14a69ff18fc21ad662c977a8cede'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Section 42 of the Reserve Bank of India Act, 1934 provides that the inflation target for a five-year period shall be notified:',
    'Section 42(1) requires the Central Government to notify the inflation target in consultation with the RBI for a period of not less than three years; the current notification covers 2021-2026 at 4 per cent with a 2-6 per cent band.',
    'hard',
    'Standard Reference',
    null,
    '1885d140edd3c20c245ee5f4f872b234'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1885d140edd3c20c245ee5f4f872b234'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'by the Central Government in consultation with the RBI'),
            ('B', 'solely by the RBI Governor'),
            ('C', 'by the Union Budget each year'),
            ('D', 'by the Monetary Policy Committee alone')
           ) as v(label, option_text)
 where q.question_hash = '1885d140edd3c20c245ee5f4f872b234'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Which of the following taxes was subsumed by GST on its introduction in July 2017?',
    'Central excise duty, VAT, service tax, octroi, entry tax and other cesses were subsumed in GST; customs duty and property tax remain outside its ambit.',
    'easy',
    'PIB',
    2017,
    'c7c4be1288813f6b745ff736026caa89'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'c7c4be1288813f6b745ff736026caa89'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Property tax'),
            ('B', 'Stamp duty'),
            ('C', 'Excise duty'),
            ('D', 'Customs duty')
           ) as v(label, option_text)
 where q.question_hash = 'c7c4be1288813f6b745ff736026caa89'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The GST rate slabs that operated in India from 1 July 2017 were:',
    'GST initially had four main slabs of 5, 12, 18 and 28 per cent, plus special rates of 0.25 per cent and 3 per cent with compensation cess, and a nil rate for essential items.',
    'easy',
    'PIB',
    2017,
    '56e91612d7b41cd3550a6fdb55451d25'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '56e91612d7b41cd3550a6fdb55451d25'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '4 per cent, 8 per cent, 16 per cent and 24 per cent'),
            ('B', '5 per cent, 15 per cent, 25 per cent and 35 per cent'),
            ('C', '10 per cent, 20 per cent, 30 per cent and 40 per cent'),
            ('D', '5 per cent, 12 per cent, 18 per cent and 28 per cent')
           ) as v(label, option_text)
 where q.question_hash = '56e91612d7b41cd3550a6fdb55451d25'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Economic Survey 2021-22 was presented under which headline theme?',
    'The Survey for 2021-22, presented in January 2022, was themed ''A Recovery in Progress''; ''Fighting the Pandemic, Preparing for Recovery'' was the theme of the 2022-23 Survey.',
    'medium',
    'Economic Survey 2021-22',
    2022,
    '2ac0d418aa2fde833e4996f95a074053'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ac0d418aa2fde833e4996f95a074053'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Fighting the Pandemic, Preparing for Recovery'),
            ('B', 'Reimagining the Possible'),
            ('C', 'A Recovery in Progress'),
            ('D', 'Things to Do: Priorities for Development')
           ) as v(label, option_text)
 where q.question_hash = '2ac0d418aa2fde833e4996f95a074053'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The base year of the Index of Industrial Production (IIP) in India is:',
    'The IIP was rebased to 2011-12 from the earlier 2004-05 base year and is released by the National Statistical Office as a monthly index.',
    'medium',
    'Standard Reference',
    null,
    '1bc0e1a4a8b46e41c306dfd0646d2211'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1bc0e1a4a8b46e41c306dfd0646d2211'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015-16'),
            ('B', '2011-12'),
            ('C', '2004-05'),
            ('D', '2012')
           ) as v(label, option_text)
 where q.question_hash = '1bc0e1a4a8b46e41c306dfd0646d2211'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'According to IMF estimates published in 2023, India overtook which country to become the fourth largest economy in the world by nominal GDP?',
    'On IMF estimates published in April 2023, India overtook Germany to become the world''s fourth largest economy by nominal GDP, and the IMF projected India would become the third largest by 2027.',
    'medium',
    'IMF World Economic Outlook',
    2023,
    '25e803dbe63786ceb94676bd48bb72c3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '25e803dbe63786ceb94676bd48bb72c3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'United Kingdom'),
            ('B', 'Japan'),
            ('C', 'France'),
            ('D', 'Germany')
           ) as v(label, option_text)
 where q.question_hash = '25e803dbe63786ceb94676bd48bb72c3'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Monetary Policy Committee of the RBI was constituted through which statutory change?',
    'The Finance Act, 2016 amended the RBI Act, 1934 to give the MPC statutory status and put inflation targeting on a statutory footing from April 2016.',
    'hard',
    'RBI',
    2016,
    'd4e4bfbd865eb4767d275132db647c5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd4e4bfbd865eb4767d275132db647c5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Finance Act, 2016'),
            ('B', 'The Finance Act, 2018'),
            ('C', 'The Banking Regulation Amendment Act, 2020'),
            ('D', 'The Finance Act, 2014')
           ) as v(label, option_text)
 where q.question_hash = 'd4e4bfbd865eb4767d275132db647c5c'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Which authority compiles and publishes India''s Balance of Payments and international investment position data?',
    'The RBI compiles and releases quarterly Balance of Payments statistics, including the trade balance, current account and capital account flows, and the International Investment Position.',
    'easy',
    'RBI',
    null,
    '7db958e0d3fd3bc2aa8a220737a0e18d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7db958e0d3fd3bc2aa8a220737a0e18d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Reserve Bank of India'),
            ('B', 'The Central Board of Direct Taxes'),
            ('C', 'The Indian Statistical Institute'),
            ('D', 'The National Accounts Statistics Office alone')
           ) as v(label, option_text)
 where q.question_hash = '7db958e0d3fd3bc2aa8a220737a0e18d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The GST Council, the apex body for GST administration, is constituted under which Article of the Constitution?',
    'Article 279A, inserted by the 101st Constitutional Amendment Act, 2016, provides for the GST Council, which the President chairs and which includes Union and state finance ministers.',
    'medium',
    'Standard Reference',
    null,
    '13dc6a9584422eb8abc81820a4061cf0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '13dc6a9584422eb8abc81820a4061cf0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 280'),
            ('B', 'Article 269A'),
            ('C', 'Article 246A'),
            ('D', 'Article 279A')
           ) as v(label, option_text)
 where q.question_hash = '13dc6a9584422eb8abc81820a4061cf0'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Economic Survey of India is normally presented to Parliament in which month of the year?',
    'The Survey for the year ending March is presented in late January or early February, immediately before the Union Budget is presented to the Lok Sabha.',
    'easy',
    'Standard Reference',
    null,
    'd104e33b41d5addcfb9290463ce4fe99'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd104e33b41d5addcfb9290463ce4fe99'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'October'),
            ('B', 'December'),
            ('C', 'January'),
            ('D', 'March')
           ) as v(label, option_text)
 where q.question_hash = 'd104e33b41d5addcfb9290463ce4fe99'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Reserve Bank of India''s Variable Rate Reverse Repo (VRRR) operation is conducted in order to:',
    'VRRR is a variable rate reverse repo auction used by the RBI to absorb excess liquidity from the banking system for varying tenors, tightening monetary conditions.',
    'hard',
    'RBI',
    null,
    '340f57ab3e98b63340d01ff93b78d041'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '340f57ab3e98b63340d01ff93b78d041'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'provide cheaper long-term loans to banks'),
            ('B', 'absorb excess liquidity from the banking system'),
            ('C', 'regulate the benchmark yield on government securities'),
            ('D', 'inject durable liquidity into the banking system')
           ) as v(label, option_text)
 where q.question_hash = '340f57ab3e98b63340d01ff93b78d041'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The 101st Constitutional Amendment Act, 2016 inserted which set of Articles to give constitutional status to GST?',
    'Articles 246A, 269A and 279A created the concurrent taxing power for GST, the apportionment of GST revenue and the GST Council respectively.',
    'medium',
    'Standard Reference',
    2016,
    'a14e58be49c1ca7fd9800ab8f67f0963'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a14e58be49c1ca7fd9800ab8f67f0963'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Articles 21A, 22 and 23'),
            ('B', 'Articles 280, 281 and 282'),
            ('C', 'Articles 14, 15, 16 and 17'),
            ('D', 'Articles 246A, 269A and 279A')
           ) as v(label, option_text)
 where q.question_hash = 'a14e58be49c1ca7fd9800ab8f67f0963'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The 102nd Constitutional Amendment Act, 2018 provided for:',
    'The 102nd Amendment gave statutory backing to the NCBC and equal membership to SC and ST commissions in it, with effect from the Constitution (102nd Amendment) Act, 2018.',
    'medium',
    'Standard Reference',
    2018,
    'd6437f43019cbfe53d569de697738510'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd6437f43019cbfe53d569de697738510'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation for women in legislatures'),
            ('B', 'Constitutional status to the National Commission for Backward Classes and equal representation to SC and ST commissions in the NCBC'),
            ('C', 'Extension of the 15th Finance Commission''s term'),
            ('D', 'Abolition of the Legislative Council')
           ) as v(label, option_text)
 where q.question_hash = 'd6437f43019cbfe53d569de697738510'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Constitution (103rd Amendment) Act, 2019 extended the reservation of seats for Scheduled Castes and Scheduled Tribes in the Lok Sabha and state legislative assemblies up to:',
    'The 103rd Amendment extended the reservation of seats for SCs and STs in the Lok Sabha, state assemblies and Panchayat/Municipal bodies for the period ending 25 January 2030.',
    'medium',
    'Standard Reference',
    2019,
    'ebc87ec9033274ca71bfbe3b32f8b9b1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ebc87ec9033274ca71bfbe3b32f8b9b1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2035'),
            ('B', '2025'),
            ('C', '2030'),
            ('D', '2040')
           ) as v(label, option_text)
 where q.question_hash = 'ebc87ec9033274ca71bfbe3b32f8b9b1'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Constitution (104th Amendment) Act, 2019 provides for:',
    'The 104th Amendment inserted Article 15(6), enabling 10 per cent EWS reservation in educational institutions, and Article 334, extending SC and ST reservation to 2030.',
    'easy',
    'Standard Reference',
    2019,
    '20cf73a6bcebfdc31ebfcfcec854d6cb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '20cf73a6bcebfdc31ebfcfcec854d6cb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation of 10 per cent of seats in educational institutions for the Economically Weaker Sections'),
            ('B', 'Extension of the reservation of SC and ST seats to 2040'),
            ('C', 'Reservation of one-third of seats for women in Panchayats'),
            ('D', 'Creation of a separate OBC commission')
           ) as v(label, option_text)
 where q.question_hash = '20cf73a6bcebfdc31ebfcfcec854d6cb'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Constitution (105th Amendment) Act, 2021 inserted Article 342A, which:',
    'Article 342A, inserted in 2021, empowered states to prepare and notify their own lists of OBCs for their own jurisdiction, replacing the central power under Article 342.',
    'hard',
    'Standard Reference',
    2021,
    'e1907e82c4beb678f87d8fba6254f295'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e1907e82c4beb678f87d8fba6254f295'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'creates the National Commission for Backward Classes'),
            ('B', 'enables women''s reservation in state assemblies'),
            ('C', 'delegates to states the power to prepare their own lists of Other Backward Classes'),
            ('D', 'provides for a 10 per cent EWS quota')
           ) as v(label, option_text)
 where q.question_hash = 'e1907e82c4beb678f87d8fba6254f295'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Constitution (106th Amendment) Act, 2023, known as the Nari Shakti Vandan Adhiniyam, provides for:',
    'The 106th Amendment Act, 2023 provides for reservation of not less than one-third of seats for women in the Lok Sabha and state assemblies, and one-third of seats in Panchayat and Municipal bodies, after each census and delimitation.',
    'medium',
    'PIB',
    2023,
    'bb0004100e989dbc4086d3ffe3497efd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bb0004100e989dbc4086d3ffe3497efd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Reservation of 10 per cent for the EWS'),
            ('B', 'Abolition of the creamy layer'),
            ('C', 'Extension of the 15th Finance Commission'),
            ('D', 'Reservation of one-third of seats for women in the Lok Sabha and state legislative assemblies')
           ) as v(label, option_text)
 where q.question_hash = 'bb0004100e989dbc4086d3ffe3497efd'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Jan Vishwas (Amendment of Provisions) Bill, 2023, which decriminalises and amends various laws, was passed by Parliament in:',
    'The Jan Vishwas (Amendment of Provisions) Bill was passed by Parliament in 2023, decriminalising offences and decriminalising detention across several statutes to promote ease of doing business.',
    'easy',
    'PIB',
    2023,
    '4ccd7873e58ba7d2fb7240190e9fd88a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4ccd7873e58ba7d2fb7240190e9fd88a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2024'),
            ('C', '2021'),
            ('D', '2022')
           ) as v(label, option_text)
 where q.question_hash = '4ccd7873e58ba7d2fb7240190e9fd88a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Bharatiya Nagarik Suraksha Sanhita, 2023 came into force on:',
    'The Bharatiya Nagarik Suraksha Sanhita, 2023 replaced the Code of Criminal Procedure, 1973 with effect from 1 July 2024, along with the Bharatiya Nyaya Sanhita and the Bharatiya Sakshya Adhiniyam.',
    'medium',
    'PIB',
    2024,
    'aa854ea6cb020a395792a341f66e81eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aa854ea6cb020a395792a341f66e81eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 2024'),
            ('B', '1 July 2024'),
            ('C', '26 January 2024'),
            ('D', '1 January 2024')
           ) as v(label, option_text)
 where q.question_hash = 'aa854ea6cb020a395792a341f66e81eb'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Bharatiya Nyaya Sanhita, 2023, which replaced the Indian Penal Code, 1860, came into force on:',
    'The Bharatiya Nyaya Sanhita came into force on 1 July 2024, repealing the Indian Penal Code and the Code of Criminal Procedure, 1973.',
    'medium',
    'PIB',
    2024,
    '85a44c7f80a8df5a914e60c255a63828'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '85a44c7f80a8df5a914e60c255a63828'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 2024'),
            ('B', '26 January 2024'),
            ('C', '1 July 2024'),
            ('D', '1 January 2024')
           ) as v(label, option_text)
 where q.question_hash = '85a44c7f80a8df5a914e60c255a63828'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Digital Personal Data Protection Act was enacted in which year?',
    'The Digital Personal Data Protection Act, 2023 was enacted in August 2023, providing a framework for the processing of digital personal data and establishing the Data Protection Board.',
    'easy',
    'PIB',
    2023,
    '0a30609a877b53d26c2044de940014f3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0a30609a877b53d26c2044de940014f3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2024'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '0a30609a877b53d26c2044de940014f3'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Information Technology (Intermediary Guidelines and Digital Media Ethics Code) Rules, 2021 were notified by which ministry?',
    'MeitY notified the Intermediary Guidelines and Digital Media Ethics Code Rules in February 2021, adding due diligence obligations and a grievance officer for social media intermediaries and online news publishers.',
    'medium',
    'PIB',
    2021,
    'f201a94b3bcbbe328572ad1de06f1a93'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f201a94b3bcbbe328572ad1de06f1a93'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Electronics and Information Technology'),
            ('B', 'Ministry of Law and Justice'),
            ('C', 'Ministry of Information and Broadcasting'),
            ('D', 'Ministry of Commerce and Industry')
           ) as v(label, option_text)
 where q.question_hash = 'f201a94b3bcbbe328572ad1de06f1a93'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The three farm laws enacted in September 2020 were repealed by which Act?',
    'The Farm Laws Repeal Act, 2021 repealed the Farmers (Produce Trade and Commerce) Act, the Farmers (Empowerment and Protection) Agreement on Price Assurance and Farm Services Act and the Essential Commodities Amendment Act.',
    'medium',
    'PIB',
    2021,
    'ac50a8ffcf7a36bc428b39bbda9496dd'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ac50a8ffcf7a36bc428b39bbda9496dd'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Contract Farming Act, 2021'),
            ('B', 'The Farm Laws Repeal Act, 2021'),
            ('C', 'The Agricultural Produce Cess Act, 2021'),
            ('D', 'The Essential Commodities Amendment Act, 2022')
           ) as v(label, option_text)
 where q.question_hash = 'ac50a8ffcf7a36bc428b39bbda9496dd'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Insolvency and Bankruptcy Code, 2016 was amended in 2020 to:',
    'The 2020 amendment raised the minimum liquidation value of a corporate debtor to Rs 1 crore, exempted small and micro entities from the insolvency resolution process and clarified the treatment of the moratorium period.',
    'hard',
    'Standard Reference',
    2020,
    '5b165ed7d649cdf6a15ff6bc1c95444b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5b165ed7d649cdf6a15ff6bc1c95444b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'make the moratorium period 30 days'),
            ('B', 'permit retail insolvency resolution'),
            ('C', 'raise the minimum liquidation value of a corporate debtor from 50 lakh to 1 crore rupees'),
            ('D', 'abolish the role of the Insolvency and Bankruptcy Board')
           ) as v(label, option_text)
 where q.question_hash = '5b165ed7d649cdf6a15ff6bc1c95444b'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Comptroller and Auditor General (Amendment) Act, 2023 extended the CAG''s mandate to audit:',
    'The 2023 amendment brought within the CAG''s audit ambit entities financed substantially by public or government grants, enabling scrutiny of the use of such funds.',
    'hard',
    'PIB',
    2023,
    'fdd43f2cdde23b343b799451944c14f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fdd43f2cdde23b343b799451944c14f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'State-owned public sector enterprises'),
            ('B', 'entities financed substantially by public or government grants'),
            ('C', 'the accounts of the Reserve Bank of India'),
            ('D', 'the accounts of nationalised banks')
           ) as v(label, option_text)
 where q.question_hash = 'fdd43f2cdde23b343b799451944c14f5'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Foreign Contribution (Regulation) Amendment Rules, 2020 raised the threshold for registration under the FCRA from Rs 2 lakh to:',
    'The 2020 amendment raised the FCRA registration threshold from Rs 2 lakh to Rs 1 crore, while associations registered under the Societies Registration Act continued to require registration above Rs 50,000.',
    'medium',
    'PIB',
    2020,
    '9ab7d50a2a97e16ad51d7a84fca9bd6f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9ab7d50a2a97e16ad51d7a84fca9bd6f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rs 1 crore'),
            ('B', 'Rs 25 lakh'),
            ('C', 'Rs 50 lakh'),
            ('D', 'Rs 10 lakh')
           ) as v(label, option_text)
 where q.question_hash = '9ab7d50a2a97e16ad51d7a84fca9bd6f'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Motor Vehicles (Amendment) Act, 2019 introduced, among other measures:',
    'The 2019 amendment introduced the good Samaritan provision, a national register of vehicle registration, e-challans, a PUC database and a vehicle location tracking device for commercial vehicles.',
    'medium',
    'Standard Reference',
    2019,
    '2b039062a7a7624653b5e9022d5d9a2a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2b039062a7a7624653b5e9022d5d9a2a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'compulsory fitness testing of all private vehicles'),
            ('B', 'a mandatory driving licence for all two-wheelers'),
            ('C', 'a national database of vehicle registration numbers'),
            ('D', 'the ''good Samaritan'' provision protecting those who voluntarily help accident victims')
           ) as v(label, option_text)
 where q.question_hash = '2b039062a7a7624653b5e9022d5d9a2a'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Right to Repair framework, launched by the Department for Promotion of Industry and Internal Trade in 2023, initially covered:',
    'DPIIT launched the Right to Repair portal in July 2023 for mobile phones and laptops, extending it in 2024 to a range of electronic goods, aimed at improving the availability of spare parts and manuals.',
    'medium',
    'PIB',
    2023,
    'c3913b1afa07dd9656662f255db5f9b0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c3913b1afa07dd9656662f255db5f9b0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'mobile phones and electronic appliances'),
            ('B', 'cars and two-wheelers'),
            ('C', 'medical devices and implants'),
            ('D', 'farm machinery')
           ) as v(label, option_text)
 where q.question_hash = 'c3913b1afa07dd9656662f255db5f9b0'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The 73rd and 74th Constitutional Amendments of 1992 provided for:',
    'The 73rd and 74th Amendments introduced the three-tier Panchayati Raj system and three-tier municipal system, listed 29 and 18 subjects in the Eleventh and Twelfth Schedules respectively and reserved one-third of seats for women.',
    'medium',
    'Standard Reference',
    1992,
    '6d7c3856fb4f8d3b310bcf2c6e32a109'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '6d7c3856fb4f8d3b310bcf2c6e32a109'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the National Judicial Appointments Commission'),
            ('B', 'the Goods and Services Tribunal'),
            ('C', 'a three-tier Panchayati Raj system and reservation of seats for women'),
            ('D', 'creation of the Goods and Services Tax Council')
           ) as v(label, option_text)
 where q.question_hash = '6d7c3856fb4f8d3b310bcf2c6e32a109'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'Article 280 of the Constitution of India deals with:',
    'Article 280 requires the President to constitute a Finance Commission every fifth year to recommend the distribution of tax proceeds between the Union and the states and the principles governing grants.',
    'medium',
    'Standard Reference',
    null,
    '226785e7a5fb888b5f966aff98ce1568'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '226785e7a5fb888b5f966aff98ce1568'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Comptroller and Auditor General'),
            ('B', 'the Finance Commission'),
            ('C', 'the Election Commission'),
            ('D', 'the Union Public Service Commission')
           ) as v(label, option_text)
 where q.question_hash = '226785e7a5fb888b5f966aff98ce1568'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Election Commission of India was established on:',
    'The Election Commission came into existence on 25 January 1950, the date on which the Constitution came into force, under Article 324.',
    'medium',
    'Standard Reference',
    1950,
    'e8086204f04a6079d3665a25383487ba'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e8086204f04a6079d3665a25383487ba'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '15 August 1947'),
            ('B', '26 January 1950'),
            ('C', '19 August 1947'),
            ('D', '25 January 1950')
           ) as v(label, option_text)
 where q.question_hash = 'e8086204f04a6079d3665a25383487ba'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Chief Election Commissioner of India is appointed under which Article of the Constitution?',
    'Article 324 vests the superintendence, direction and control of elections to Parliament, the state legislatures and the offices of President and Vice-President in the Election Commission of India.',
    'easy',
    'Standard Reference',
    null,
    '29089baa9362ecafd7400ebd90670bd3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '29089baa9362ecafd7400ebd90670bd3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 312'),
            ('B', 'Article 315'),
            ('C', 'Article 324'),
            ('D', 'Article 320')
           ) as v(label, option_text)
 where q.question_hash = '29089baa9362ecafd7400ebd90670bd3'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Comptroller and Auditor General of India is appointed under which Article of the Constitution?',
    'Article 148 provides for an independent CAG appointed by the President, with the same removal procedure as a Supreme Court judge.',
    'easy',
    'Standard Reference',
    null,
    'c1b1654e9d45723bb1d474c4c111c0a2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c1b1654e9d45723bb1d474c4c111c0a2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 280'),
            ('B', 'Article 315'),
            ('C', 'Article 76'),
            ('D', 'Article 148')
           ) as v(label, option_text)
 where q.question_hash = 'c1b1654e9d45723bb1d474c4c111c0a2'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Attorney General of India is appointed under which Article of the Constitution?',
    'Article 76 provides for the Attorney General, who is appointed by the President and holds office during the pleasure of the President.',
    'easy',
    'Standard Reference',
    null,
    '6033f414ea99c01a0b1e6b7903137308'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6033f414ea99c01a0b1e6b7903137308'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 74'),
            ('B', 'Article 76'),
            ('C', 'Article 148'),
            ('D', 'Article 158')
           ) as v(label, option_text)
 where q.question_hash = '6033f414ea99c01a0b1e6b7903137308'
on conflict (question_id, label) do nothing;

-- current_affairs | polity-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'polity-current'),
    'The Union Public Service Commission is established under which Article of the Constitution?',
    'Article 315 provides for a Public Service Commission for the Union, while Article 320 lists its functions and Article 312 relates to the All India Services.',
    'medium',
    'Standard Reference',
    null,
    '3d10c65351e56c2c67bb6a29833af529'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3d10c65351e56c2c67bb6a29833af529'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Article 315'),
            ('B', 'Article 320'),
            ('C', 'Article 324'),
            ('D', 'Article 312')
           ) as v(label, option_text)
 where q.question_hash = '3d10c65351e56c2c67bb6a29833af529'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Under India''s updated Nationally Determined Contribution, the country targets installed electric power capacity from non-fossil fuel sources of:',
    'India''s updated NDC pledges 500 GW of installed non-fossil fuel based electric power capacity by 2030 and about 50 per cent of installed capacity from non-fossil sources by 2030.',
    'easy',
    'PIB',
    2022,
    '97213f5eff4b86fa884914a1452ccc30'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '97213f5eff4b86fa884914a1452ccc30'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '150 GW by 2025'),
            ('B', '500 GW by 2030'),
            ('C', '300 GW by 2030'),
            ('D', '750 GW by 2030')
           ) as v(label, option_text)
 where q.question_hash = '97213f5eff4b86fa884914a1452ccc30'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'India has committed to achieve net-zero greenhouse gas emissions by which year?',
    'At COP26 in Glasgow in 2021, India announced its long-term target of net-zero emissions by 2070, with 2030 as the milestone year for the 500 GW non-fossil target.',
    'easy',
    'PIB',
    2021,
    'c87de642d3ca352d00957ff9c5bed396'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'c87de642d3ca352d00957ff9c5bed396'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2080'),
            ('B', '2050'),
            ('C', '2060'),
            ('D', '2070')
           ) as v(label, option_text)
 where q.question_hash = 'c87de642d3ca352d00957ff9c5bed396'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'One of the key outcomes of COP26, held in Glasgow in November 2021, was:',
    'COP26 delivered the Glasgow Climate Pact, commitments to phase down unabated coal, cut methane 30 per cent by 2030 and double clean energy finance, while Article 6 carbon market rules were finalised at COP27.',
    'medium',
    'UNFCCC',
    2021,
    'ea8893505e9e48f6bcc166212f78347e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'ea8893505e9e48f6bcc166212f78347e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Glasgow Climate Pact pledging to phase down unabated coal power and cut methane emissions by 30 per cent by 2030'),
            ('B', 'the establishment of the Loss and Damage Fund'),
            ('C', 'the finalisation of the Paris Agreement''s ratcheting mechanism'),
            ('D', 'the creation of a global carbon market under Article 6')
           ) as v(label, option_text)
 where q.question_hash = 'ea8893505e9e48f6bcc166212f78347e'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Global Stocktake, the first global assessment of the Paris Agreement''s progress, was concluded at which COP and in which year?',
    'The first Global Stocktake was concluded at COP28 in Dubai in December 2023, with the UAE Consensus calling for the transition away from fossil fuels in energy systems and tripling renewables by 2030.',
    'medium',
    'UNFCCC',
    2023,
    '94f1a8465408bab5b0950a68db6d8fbb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '94f1a8465408bab5b0950a68db6d8fbb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP29, 2024'),
            ('B', 'COP26, 2021'),
            ('C', 'COP28, 2023'),
            ('D', 'COP27, 2022')
           ) as v(label, option_text)
 where q.question_hash = '94f1a8465408bab5b0950a68db6d8fbb'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The decision to establish a fund to assist countries affected by climate-related loss and damage was taken at:',
    'COP27 in Sharm el-Sheikh in November 2022 agreed to establish a Loss and Damage Fund, which was operationalised at COP28 in 2023 with initial pledges.',
    'easy',
    'UNFCCC',
    2022,
    'a78922664bee1456eb22c52d1425ef96'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a78922664bee1456eb22c52d1425ef96'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP26, Glasgow, 2021'),
            ('B', 'COP29, Baku, 2024'),
            ('C', 'COP25, Madrid, 2019'),
            ('D', 'COP27, Sharm el-Sheikh, 2022')
           ) as v(label, option_text)
 where q.question_hash = 'a78922664bee1456eb22c52d1425ef96'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'In the 2023 update of the IUCN Red List, the status of the Siamese crocodile was upgraded to:',
    'The 2023 Red List update moved the Siamese crocodile from Endangered to Least Concern after population recovery in Cambodia and other parts of its range; it was the first reptile to be removed from the list.',
    'hard',
    'IUCN Red List',
    2023,
    '300838f9fbb21ffc049790e4383d902b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '300838f9fbb21ffc049790e4383d902b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Critically Endangered'),
            ('B', 'Endangered'),
            ('C', 'Least Concern'),
            ('D', 'Vulnerable')
           ) as v(label, option_text)
 where q.question_hash = '300838f9fbb21ffc049790e4383d902b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'In March 2023, how many new Ramsar sites were designated in India, taking the total number of Ramsar sites to 86?',
    'India added 26 Ramsar sites on 6 March 2023, taking the national total to 86 and making India the country with the highest number of Ramsar sites in the world.',
    'medium',
    'PIB',
    2023,
    '0bdc54234db7087e907179accb980ec0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0bdc54234db7087e907179accb980ec0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12'),
            ('B', '26'),
            ('C', '15'),
            ('D', '40')
           ) as v(label, option_text)
 where q.question_hash = '0bdc54234db7087e907179accb980ec0'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The ban on identified single-use plastic items in India came into force on:',
    'India''s ban on identified single-use plastic items took effect on 1 April 2022, though the ban on plastic sachets and cigarette filters had come into force from 1 July 2021.',
    'medium',
    'PIB',
    2022,
    '3ff742f31cb9462ee5458a453418a8cc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3ff742f31cb9462ee5458a453418a8cc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 April 2022'),
            ('B', '1 July 2021'),
            ('C', '1 January 2022'),
            ('D', '15 August 2020')
           ) as v(label, option_text)
 where q.question_hash = '3ff742f31cb9462ee5458a453418a8cc'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The National Green Mission was launched in which year?',
    'The National Green Mission was announced in the Union Budget for 2014-15 and launched in 2014, aiming to plant trees and restore degraded ecosystems including mangroves and wetlands.',
    'hard',
    'Economic Survey 2015-16',
    2016,
    '3146e956d312739becc54c6236bda7c9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3146e956d312739becc54c6236bda7c9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018-19'),
            ('B', '2021-22'),
            ('C', '2014-15'),
            ('D', '2009-10')
           ) as v(label, option_text)
 where q.question_hash = '3146e956d312739becc54c6236bda7c9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Mission LiFE, the overarching framework for a ''just'' and ''liveable'' planet, was launched in which year?',
    'Mission LiFE was launched by the Union Environment Minister at COP26 in Glasgow in November 2021 and formally unveiled in 2022, promoting climate-positive actions in everyday life and livelihoods.',
    'medium',
    'PIB',
    2021,
    '1d080ff0d15b80676dd7276578171a17'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1d080ff0d15b80676dd7276578171a17'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '1d080ff0d15b80676dd7276578171a17'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The term ''Blue Economy'' refers to the sustainable use of which resource?',
    'Blue Economy refers to the sustainable utilisation of ocean and coastal resources such as fisheries, aquaculture, marine energy, tourism and biotechnology, guided by India''s Blue Economy policy framework.',
    'easy',
    'Economic Survey 2021-22',
    2022,
    '64756e66cc9d797e86926f1e54605c3b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '64756e66cc9d797e86926f1e54605c3b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ocean and coastal resources'),
            ('B', 'Arctic ice'),
            ('C', 'Deep underground water'),
            ('D', 'Desert land')
           ) as v(label, option_text)
 where q.question_hash = '64756e66cc9d797e86926f1e54605c3b'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Namami Gange Programme, India''s flagship river cleaning initiative, was launched in which year?',
    'Namami Gange was launched in June 2016 as an inter-ministerial programme for cleaning the Ganga and its tributaries, later aligned with the National River Conservation Plan.',
    'easy',
    'PIB',
    2016,
    '9c64ad21c32dbd84639832d98faf8494'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9c64ad21c32dbd84639832d98faf8494'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2019'),
            ('C', '2014'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '9c64ad21c32dbd84639832d98faf8494'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The e-Daam platform, launched in 2023, is associated with which of the following?',
    'e-Daam was launched by the Uttar Pradesh government in April 2023 as an electronic waste management and aggregator platform in the Lucknow district, connecting citizens, recyclers and producers.',
    'hard',
    'PIB',
    2023,
    'a2c47b4eaacda2b3f079fc669915f216'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'a2c47b4eaacda2b3f079fc669915f216'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An e-waste collection and recycling platform for the UP district of Lucknow'),
            ('B', 'A digital database of Ramsar sites'),
            ('C', 'An online auction of solar power capacity'),
            ('D', 'A satellite-based crop monitoring system')
           ) as v(label, option_text)
 where q.question_hash = 'a2c47b4eaacda2b3f079fc669915f216'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'Which ministry administers India''s Carbon Credit Trading Scheme?',
    'The Carbon Credit Trading Scheme, notified by the Ministry of Environment, Forest and Climate Change in 2023, provides for a compliance market, an offset mechanism and the Carbon Credit Trading Registry.',
    'medium',
    'PIB',
    2023,
    'dceb29c2400e900a30d48c89168fcca9'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'dceb29c2400e900a30d48c89168fcca9'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Ministry of Petroleum and Natural Gas'),
            ('B', 'Ministry of Environment, Forest and Climate Change'),
            ('C', 'Ministry of Power'),
            ('D', 'Ministry of Heavy Industries')
           ) as v(label, option_text)
 where q.question_hash = 'dceb29c2400e900a30d48c89168fcca9'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The PM Surya Ghar Muft Bijli Yojana, providing rooftop solar installations to households, was launched in which year?',
    'PM Surya Ghar Muft Bijli Yojana was approved and launched on 29 February 2024 with an outlay of about Rs 75,021 crore, targeting one crore households with rooftop solar.',
    'easy',
    'PIB',
    2024,
    'e6798ab48e2a5050eaddd8c6c691acc0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e6798ab48e2a5050eaddd8c6c691acc0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2023'),
            ('C', '2024'),
            ('D', '2025')
           ) as v(label, option_text)
 where q.question_hash = 'e6798ab48e2a5050eaddd8c6c691acc0'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The National Clean Air Programme (NCAP) for non-attainment cities was launched in which year?',
    'NCAP was launched by the Ministry of Environment, Forest and Climate Change in January 2019 to improve air quality in non-attainment cities through city-specific action plans.',
    'medium',
    'PIB',
    2019,
    '13d2b463c900887bf2eb28c243ef7885'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '13d2b463c900887bf2eb28c243ef7885'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2017'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '13d2b463c900887bf2eb28c243ef7885'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'According to the India State of Forest Report 2023, India''s forest and tree cover as a percentage of the country''s geographical area was:',
    'ISFR 2023 reported total forest and tree cover of 827,357 square km, equal to 21.76 per cent of the geographical area, an increase over the 2021 assessment, with tree cover alone at 9.9 per cent.',
    'hard',
    'Forest Survey of India',
    2023,
    '737c3fe5a367279d49a9ecf4eabfde23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '737c3fe5a367279d49a9ecf4eabfde23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '21.76 per cent'),
            ('B', '19.47 per cent'),
            ('C', '23.85 per cent'),
            ('D', '17.82 per cent')
           ) as v(label, option_text)
 where q.question_hash = '737c3fe5a367279d49a9ecf4eabfde23'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The fourth round of the All India Tiger Estimation, released in 2022, reported the number of tigers in India as:',
    'The 2022 estimation reported 3,682 tigers in 51 tiger reserves, an increase of about 12 per cent over the previous cycle and the highest tiger population estimate recorded in India.',
    'medium',
    'PIB',
    2022,
    '38867067203f8a67c6902a9abee26f5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '38867067203f8a67c6902a9abee26f5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '3,094'),
            ('B', '2,967'),
            ('C', '3,682'),
            ('D', '3,577')
           ) as v(label, option_text)
 where q.question_hash = '38867067203f8a67c6902a9abee26f5f'
on conflict (question_id, label) do nothing;

-- current_affairs | environment-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'environment-current'),
    'The Wild Life (Protection) Amendment Act, 2022 provided for:',
    'The 2022 amendment implemented the CITES decisions taken at CoP19, adding species to the schedules, banning the trade of ivory and rhinoceros horn and enabling the Centre to designate a wildlife crime control bureau.',
    'medium',
    'PIB',
    2022,
    '3fdb1403cb530cbc60a65dd43f0ca69d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3fdb1403cb530cbc60a65dd43f0ca69d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Extension of the protected area network to community forests'),
            ('B', 'A ban on the import of exotic pets'),
            ('C', 'Creation of a National Wildlife Crime Control Bureau'),
            ('D', 'Inclusion of species such as the great Indian bustard, cheetah and black-necked stork in the schedules and prohibition of ivory trade')
           ) as v(label, option_text)
 where q.question_hash = '3fdb1403cb530cbc60a65dd43f0ca69d'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Chandrayaan-3 lander touched down on the Moon on:',
    'Chandrayaan-3''s lander Vikram soft-landed on 23 August 2023 near Point Shiv Shakti in the lunar south polar region, making India the first country to land near the Moon''s south pole.',
    'easy',
    'ISRO',
    2023,
    'a8fa9c42422f0deb9000c521c8200579'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a8fa9c42422f0deb9000c521c8200579'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '6 September 2019'),
            ('B', '23 August 2023'),
            ('C', '14 July 2023'),
            ('D', '2 September 2023')
           ) as v(label, option_text)
 where q.question_hash = 'a8fa9c42422f0deb9000c521c8200579'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Aditya-L1, India''s first solar observatory, was launched on 2 September 2023 and was inserted into its halo orbit around the Sun-Earth L1 point in:',
    'Aditya-L1 reached the L1 point about 1.5 million km from Earth and was inserted into a halo orbit on 2 January 2024, completing the fourth Lagrange point mission of ISRO.',
    'medium',
    'ISRO',
    2024,
    '3077cf093c43d6e9b0332bb44ba22aa7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3077cf093c43d6e9b0332bb44ba22aa7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'December 2023'),
            ('B', 'January 2024'),
            ('C', 'February 2024'),
            ('D', 'November 2023')
           ) as v(label, option_text)
 where q.question_hash = '3077cf093c43d6e9b0332bb44ba22aa7'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Chandrayaan-2 mission, launched in July 2019, consisted of:',
    'Chandrayaan-2 carried an orbiter, the Vikram lander and the Pragyan rover; the lander failed during landing on 6 September 2019 but the orbiter continues to operate and has sent images of the south polar region.',
    'medium',
    'ISRO',
    2019,
    'b81ea4aee04938af06410f86df56f0ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b81ea4aee04938af06410f86df56f0ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'An orbiter, a lander and a rover'),
            ('B', 'An orbiter and a re-entry vehicle only'),
            ('C', 'A lander, a rover and a crew module'),
            ('D', 'Two orbiters and a communication satellite')
           ) as v(label, option_text)
 where q.question_hash = 'b81ea4aee04938af06410f86df56f0ed'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'India''s Mars Orbiter Mission (Mangalyaan) made India the first country to:',
    'Mangalyaan entered Mars orbit on 24 September 2014, making India the first nation to reach Mars on its first attempt, at a reported cost of about Rs 450 crore.',
    'easy',
    'ISRO',
    2014,
    '74659e4e1c0f65956b8e4122d8d9bdb6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '74659e4e1c0f65956b8e4122d8d9bdb6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sample Martian soil with a lander'),
            ('B', 'Orbit a spacecraft around the Sun'),
            ('C', 'Reach Mars on a maiden attempt and successfully place a spacecraft in Martian orbit'),
            ('D', 'Land a rover on the Moon''s far side')
           ) as v(label, option_text)
 where q.question_hash = '74659e4e1c0f65956b8e4122d8d9bdb6'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The first uncrewed test flight of the Gaganyaan human spaceflight programme was carried out in:',
    'On 21 October 2023 a GSLV Mk II rocket carried an uncrewed module to orbit in the Launchpad-2 mission, testing the crew escape system and validating the human spaceflight programme.',
    'medium',
    'ISRO',
    2023,
    'e61326a44711430aca15fd051681b810'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'e61326a44711430aca15fd051681b810'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'July 2022'),
            ('B', 'January 2024'),
            ('C', 'March 2023'),
            ('D', 'October 2023')
           ) as v(label, option_text)
 where q.question_hash = 'e61326a44711430aca15fd051681b810'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The launch vehicle used to place Chandrayaan-3 into its lunar orbit was:',
    'Chandrayaan-3 was launched on 14 July 2023 on PSLV-C37 from Sriharikota, while the LVM3 (GSLV Mk III) was used for the Aditya-L1 mission.',
    'medium',
    'ISRO',
    2023,
    '1932ba5ff077a91488bc1f2971a57e14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1932ba5ff077a91488bc1f2971a57e14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'PSLV'),
            ('B', 'SSLV'),
            ('C', 'SLV'),
            ('D', 'GSLV Mk III')
           ) as v(label, option_text)
 where q.question_hash = '1932ba5ff077a91488bc1f2971a57e14'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The IRS-Navic (NavIC) navigation payload system was developed in collaboration with:',
    'NavIC, India''s own navigation system, was developed with Japanese cooperation using the QZSS; it was the first Indian satellite navigation system to be completed and offered for civil use.',
    'medium',
    'ISRO',
    null,
    '7dc85f034fe554603c2935a31515ee20'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7dc85f034fe554603c2935a31515ee20'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'United States'),
            ('B', 'Japan'),
            ('C', 'France'),
            ('D', 'Israel')
           ) as v(label, option_text)
 where q.question_hash = '7dc85f034fe554603c2935a31515ee20'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The RISAT series of satellites launched by ISRO provides:',
    'The Radar Imaging Satellites (RISAT) carry X-band and C-band synthetic aperture radar, allowing all-weather monitoring of crops, forests, landslides, floods and cyclones.',
    'easy',
    'ISRO',
    null,
    '6a766897126db536daa47c1020a41ea4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6a766897126db536daa47c1020a41ea4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Weather data for the upper atmosphere'),
            ('B', 'Communication links for rural tele centres'),
            ('C', 'Navigation services for ships and aircraft'),
            ('D', 'Synthetic aperture radar imaging for agriculture, forestry and disaster management')
           ) as v(label, option_text)
 where q.question_hash = '6a766897126db536daa47c1020a41ea4'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'INS Vikrant, which was commissioned in 2021, is India''s:',
    'INS Vikrant, commissioned on 2 September 2021, is India''s first indigenously designed and built aircraft carrier, with indigenous content of about 76 per cent.',
    'easy',
    'PIB',
    2021,
    '7853c942fb87107549f285040e71b057'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7853c942fb87107549f285040e71b057'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'First indigenous missile destroyer'),
            ('B', 'Second indigenous nuclear-powered submarine'),
            ('C', 'First indigenously built aircraft carrier'),
            ('D', 'Largest domestically built research vessel')
           ) as v(label, option_text)
 where q.question_hash = '7853c942fb87107549f285040e71b057'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'BrahMos is a supersonic cruise missile developed as an India-Russia joint venture by:',
    'BrahMos Aerospace, a joint venture of BrahMos and the Russian United Shipbuilding Corporation''s Aircraft and Ship Building Industries, produces the missile, which entered Indian service in 2005.',
    'medium',
    'Standard Reference',
    null,
    '7608c271033e9a72a518d7ca0576a609'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '7608c271033e9a72a518d7ca0576a609'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'BrahMos Aerospace and the Aircraft and Ship Building Industries'),
            ('B', 'DRDO and the Indian Navy''s shipyard at Vizag'),
            ('C', 'HAL and the Ordnance Factory Board'),
            ('D', 'DRDO and HAL alone')
           ) as v(label, option_text)
 where q.question_hash = '7608c271033e9a72a518d7ca0576a609'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Akash missile is a medium-range surface-to-air defence system developed by:',
    'Akash was developed by the Defence Research and Development Organisation, with production by Bharat Dynamics and HAL, and has a range of about 25 to 70 km.',
    'easy',
    'Standard Reference',
    null,
    '090883b671f2d9dbc656e9c85d96449b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '090883b671f2d9dbc656e9c85d96449b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'BrahMos Aerospace'),
            ('B', 'Defence Services Limited'),
            ('C', 'Bharat Dynamics Limited'),
            ('D', 'DRDO')
           ) as v(label, option_text)
 where q.question_hash = '090883b671f2d9dbc656e9c85d96449b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'INS Arihant, India''s first nuclear-powered ballistic missile submarine, is significant because:',
    'INS Arihant completed its first deterrence patrol in 2018, giving India a sea-based leg for its nuclear deterrent triad, and later conducted further patrols in 2021 and 2024.',
    'medium',
    'PIB',
    2021,
    '1e8c7c46d7114fe5b71a9a2409f5c61a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e8c7c46d7114fe5b71a9a2409f5c61a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'It is the largest warship ever built in India'),
            ('B', 'It demonstrated sea-based nuclear deterrence capability'),
            ('C', 'It is powered by a nuclear reactor of indigenous design only'),
            ('D', 'It carries the first indigenous aircraft carrier air wing')
           ) as v(label, option_text)
 where q.question_hash = '1e8c7c46d7114fe5b71a9a2409f5c61a'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Advanced Medium Combat Aircraft (AMCA) is being developed by:',
    'The AMCA is a fifth-generation fighter being developed by the Aeronautical Development Agency and DRDO with the participation of private firms, with a prototype targeted by the mid-2020s.',
    'medium',
    'Standard Reference',
    null,
    '2ffb6497ddf402b5bf7b9e132adc024b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2ffb6497ddf402b5bf7b9e132adc024b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Aeronautical Development Agency alone'),
            ('B', 'BrahMos Aerospace and DRDO'),
            ('C', 'ADA-DRDO with private industry partners'),
            ('D', 'HAL and the Air Force Research and Development Organisation')
           ) as v(label, option_text)
 where q.question_hash = '2ffb6497ddf402b5bf7b9e132adc024b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The Arjun main battle tank is manufactured at:',
    'The Arjun tank is produced by the Heavy Vehicles Factory at Avani near Chennai in Tamil Nadu, in collaboration with private firms for the 120 mm main gun and other subsystems.',
    'medium',
    'Standard Reference',
    null,
    '8ecd7a04da20a37a58f7fe4fa1ffa4b8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8ecd7a04da20a37a58f7fe4fa1ffa4b8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Harsha Motors, Tumkur'),
            ('B', 'Armada vehicles in Hyderabad'),
            ('C', 'Larsen and Toubro''s facility in Chennai'),
            ('D', 'Heavy Vehicles Factory, Avani')
           ) as v(label, option_text)
 where q.question_hash = '8ecd7a04da20a37a58f7fe4fa1ffa4b8'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'Covaxin, India''s indigenous COVID-19 vaccine, was developed by:',
    'Covaxin is a whole-virion inactivated vaccine developed by Bharat Biotech with support from the Indian Council of Medical Research, while Covishield was made by the Serum Institute of India with Oxford-AstraZeneca.',
    'easy',
    'PIB',
    2021,
    'f292c761a2b0525c83732cd3a24a9393'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f292c761a2b0525c83732cd3a24a9393'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Serum Institute of India with Oxford University'),
            ('B', 'Bharat Biotech in collaboration with the ICMR'),
            ('C', 'Haffkine Institute'),
            ('D', 'Ganesh Immunobiology with WHO')
           ) as v(label, option_text)
 where q.question_hash = 'f292c761a2b0525c83732cd3a24a9393'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The CoWIN web portal for COVID-19 vaccination registration was launched in India in:',
    'CoWIN was launched in April 2021 and became the single national platform for vaccination registration, certificate download and slot booking, with the 18-plus registration opening from 1 May 2021.',
    'easy',
    'PIB',
    2021,
    '378987cb24e7b6ffb0a7d5c9d9902492'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '378987cb24e7b6ffb0a7d5c9d9902492'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'April 2021'),
            ('B', 'February 2020'),
            ('C', 'January 2022'),
            ('D', 'March 2020')
           ) as v(label, option_text)
 where q.question_hash = '378987cb24e7b6ffb0a7d5c9d9902492'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'PARAM, India''s indigenous supercomputing series, has been developed by:',
    'PARAM (Parallel Academic and Research Computing) supercomputers were developed by the Centre for Development of Advanced Computing, with the PARAM series reaching the petaflop scale.',
    'medium',
    'Standard Reference',
    null,
    '9fad44007327f0cd1efb703d379d81a3'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9fad44007327f0cd1efb703d379d81a3'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'DRDO'),
            ('B', 'BARC'),
            ('C', 'C-DAC'),
            ('D', 'ISRO')
           ) as v(label, option_text)
 where q.question_hash = '9fad44007327f0cd1efb703d379d81a3'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The National Quantum Mission, approved in 2021, is implemented by which department?',
    'The National Quantum Mission is implemented by the Department of Science and Technology with a five-year outlay, covering quantum computing, communication, sensing and materials.',
    'medium',
    'PIB',
    2021,
    '276e8fa4dcce19b600dd775fd592437b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '276e8fa4dcce19b600dd775fd592437b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Department of Science and Technology'),
            ('B', 'Ministry of Electronics and Information Technology'),
            ('C', 'Department of Space'),
            ('D', 'Department of Atomic Energy')
           ) as v(label, option_text)
 where q.question_hash = '276e8fa4dcce19b600dd775fd592437b'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'The India Semiconductor Mission was approved by the Cabinet in:',
    'The Cabinet approved the India Semiconductor Mission on 14 December 2021 to build a robust semiconductor ecosystem, including fabrication plants and ATMP units, with fiscal support of about Rs 76,000 crore.',
    'medium',
    'PIB',
    2021,
    'edf0d3ed44833844e84b64345c76ce86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'edf0d3ed44833844e84b64345c76ce86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'edf0d3ed44833844e84b64345c76ce86'
on conflict (question_id, label) do nothing;

-- current_affairs | science-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'science-current'),
    'In 2022, the Genetic Engineering Approval Committee (GEAC) recommended the approval for commercial release of:',
    'The GEAC recommended the release of the genetically modified mustard variety DM Mustard 1 for cultivation, the first GM food crop cleared in India, and the environment minister gave approval in November 2022.',
    'hard',
    'PIB',
    2022,
    '61f72b9c102a22ec0a906e02b8aa48f8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '61f72b9c102a22ec0a906e02b8aa48f8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bt brinjal'),
            ('B', 'Bt cotton'),
            ('C', 'GM mustard (DM Mustard 1)'),
            ('D', 'Golden rice')
           ) as v(label, option_text)
 where q.question_hash = '61f72b9c102a22ec0a906e02b8aa48f8'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'How many countries were invited to join BRICS at the BRICS Summit held in Johannesburg in August 2023?',
    'Six countries - Argentina, Egypt, Ethiopia, Iran, Saudi Arabia and the UAE - were invited to join BRICS at the 2023 Johannesburg summit, with membership taking effect from 1 January 2024.',
    'medium',
    'BRICS',
    2023,
    'a210c8a515e8a7e709d386592a4a0bf6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a210c8a515e8a7e709d386592a4a0bf6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Three'),
            ('B', 'Four'),
            ('C', 'Eight'),
            ('D', 'Six')
           ) as v(label, option_text)
 where q.question_hash = 'a210c8a515e8a7e709d386592a4a0bf6'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The theme of India''s G20 presidency in 2023 was:',
    'India''s G20 presidency in 2023 was themed ''One Earth, One Family, One Future'', reflecting the Panch sutra of five interlinked spheres - planet, people, prosperity, peace and purpose.',
    'easy',
    'PIB',
    2023,
    '62bb25e3f9f0ddb9225ab5c938f773f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '62bb25e3f9f0ddb9225ab5c938f773f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Build Back Better for All'),
            ('B', 'Action, Solidarity and Fairness'),
            ('C', 'Recovery, Resilience and Renewal'),
            ('D', 'One Earth, One Family, One Future')
           ) as v(label, option_text)
 where q.question_hash = '62bb25e3f9f0ddb9225ab5c938f773f4'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The outcome document of the 2023 G20 Leaders'' Summit held in New Delhi was known as the:',
    'The New Delhi Declaration was adopted by the G20 Leaders on 1 September 2023, containing more than 120 lines of agreed action on development, climate, digital public infrastructure and multilateral development bank reform.',
    'medium',
    'PIB',
    2023,
    '77555f93e7d1a3dae088cc44698efe33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '77555f93e7d1a3dae088cc44698efe33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kampala Declaration'),
            ('B', 'Bali Consensus'),
            ('C', 'New Delhi Declaration'),
            ('D', 'Buenos Aires Communique')
           ) as v(label, option_text)
 where q.question_hash = '77555f93e7d1a3dae088cc44698efe33'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'In the New Delhi Declaration of 2023, the G20 leaders committed to:',
    'The 2023 G20 declaration committed to tripling global renewable energy capacity to 11,000 GW by 2030 and to doubling the average annual rate of energy efficiency improvement.',
    'medium',
    'PIB',
    2023,
    '5ddaaf46c2e8f8b6cb820173532c598e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5ddaaf46c2e8f8b6cb820173532c598e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tripling global renewable energy capacity by 2030'),
            ('B', 'Creating a global green hydrogen alliance with a single registry'),
            ('C', 'Banning the export of critical minerals'),
            ('D', 'Eliminating all coal from the power sector by 2030')
           ) as v(label, option_text)
 where q.question_hash = '5ddaaf46c2e8f8b6cb820173532c598e'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The African Union was admitted as a permanent member of the G20 grouping in:',
    'At the G20 Leaders'' Summit in New Delhi in September 2023, the African Union was admitted as a permanent member, becoming the first regional grouping to join the G20.',
    'medium',
    'PIB',
    2023,
    '211bade09a613f15ed199d596deedbcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '211bade09a613f15ed199d596deedbcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2023'),
            ('C', '2021'),
            ('D', '2024')
           ) as v(label, option_text)
 where q.question_hash = '211bade09a613f15ed199d596deedbcf'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'Which country became the tenth full member of the Shanghai Cooperation Organisation in 2024?',
    'Belarus was admitted as the tenth member of the SCO at the Astana summit in July 2024, having joined as an observer in 2022; Iran had become the ninth member in 2023.',
    'hard',
    'SCO Secretariat',
    2024,
    '98ce830a4cdc6ab42ffa807a8b59673d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '98ce830a4cdc6ab42ffa807a8b59673d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Mongolia'),
            ('B', 'Afghanistan'),
            ('C', 'Belarus'),
            ('D', 'Iran')
           ) as v(label, option_text)
 where q.question_hash = '98ce830a4cdc6ab42ffa807a8b59673d'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 41st ASEAN Summit, at which the ASEAN-India relations were reviewed, was held in:',
    'The 41st ASEAN Summit and the 19th ASEAN-India Summit were held in Phnom Penh in October 2022, when the ASEAN-India Plan of Action 2021-2025 was reviewed.',
    'medium',
    'PIB',
    2022,
    '2440fc0f3b82bd0d5f92cdc65061fbcf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2440fc0f3b82bd0d5f92cdc65061fbcf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Phnom Penh'),
            ('B', 'Bangkok'),
            ('C', 'Kuala Lumpur'),
            ('D', 'Jakarta')
           ) as v(label, option_text)
 where q.question_hash = '2440fc0f3b82bd0d5f92cdc65061fbcf'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Quadrilateral Security Dialogue (QUAD) comprises:',
    'QUAD is an informal alliance of India, the United States, Japan and Australia, revived in 2021, with a focus on Indo-Pacific security, supply chains and critical and emerging technologies.',
    'easy',
    'Standard Reference',
    null,
    '99960dec63e80c3cc21aa1410e57d0e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '99960dec63e80c3cc21aa1410e57d0e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'India, Japan, South Korea and Australia'),
            ('B', 'India, the United Kingdom, France and Germany'),
            ('C', 'Brazil, India, Japan and Australia'),
            ('D', 'India, the United States, Japan and Australia')
           ) as v(label, option_text)
 where q.question_hash = '99960dec63e80c3cc21aa1410e57d0e0'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The 13th Ministerial Conference of the World Trade Organization, held in Abu Dhabi in February 2024, produced outcomes including:',
    'MC13 at Abu Dhabi delivered agreement on a dispute settlement reform package and a two-year moratorium on e-commerce customs duties, though no agreement was reached on agriculture.',
    'medium',
    'WTO',
    2024,
    '340bed34cc603b144ced4abe38677a44'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '340bed34cc603b144ced4abe38677a44'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'A complete agreement on agriculture and a dispute settlement reform package'),
            ('B', 'A decision on a dispute settlement reform package and a moratorium on e-commerce customs duties'),
            ('C', 'The withdrawal of all tariff concessions on industrial goods'),
            ('D', 'The establishment of a global carbon tariff')
           ) as v(label, option_text)
 where q.question_hash = '340bed34cc603b144ced4abe38677a44'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The headquarters of the New Development Bank, the BRICS bank, is located in:',
    'The NDB, established by the BRICS countries in 2014 and operationalised in 2015, is headquartered in Shanghai, with its first regional office in Johannesburg.',
    'medium',
    'NDB',
    null,
    'd8f7ca53fdd878bac0b2492b67fb69e8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8f7ca53fdd878bac0b2492b67fb69e8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Beijing'),
            ('B', 'Moscow'),
            ('C', 'New Delhi'),
            ('D', 'Shanghai')
           ) as v(label, option_text)
 where q.question_hash = 'd8f7ca53fdd878bac0b2492b67fb69e8'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The headquarters of the International Solar Alliance is located at:',
    'The International Solar Alliance, launched in 2015 with India and France as co-founders, has its headquarters in Gurugram in Haryana and was opened for signature at COP22 in Paris in 2016.',
    'medium',
    'International Solar Alliance',
    null,
    '5bb3c16360662ab99574ab5f5169a229'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5bb3c16360662ab99574ab5f5169a229'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gurugram, Haryana'),
            ('B', 'Jaipur'),
            ('C', 'Noida'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '5bb3c16360662ab99574ab5f5169a229'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The G4 grouping, which strongly favours United Nations Security Council reform including a permanent seat for India, comprises:',
    'The G4 nations - Brazil, Germany, India and Japan - support each other''s permanent membership in a reformed Security Council, while the G3 of China, Russia and France favours an expanded but not permanent-seat-only Council.',
    'medium',
    'Standard Reference',
    null,
    '316aeea26dbed24335ab2d765c0c151f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '316aeea26dbed24335ab2d765c0c151f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Germany, France, Japan and the United Kingdom'),
            ('B', 'Argentina, Brazil, India and South Africa'),
            ('C', 'Brazil, Germany, India and Japan'),
            ('D', 'China, Russia, India and Brazil')
           ) as v(label, option_text)
 where q.question_hash = '316aeea26dbed24335ab2d765c0c151f'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The India-France Joint Strategic Vision for the Indian Ocean Region was signed in:',
    'The Joint Strategic Vision for the Indian Ocean Region was signed at the 14th India-France Summit in March 2021, formalising France''s engagement with the Indo-Pacific region.',
    'hard',
    'PIB',
    2021,
    '6c6a63b4674c083c87233e94d6c41373'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '6c6a63b4674c083c87233e94d6c41373'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2021'),
            ('C', '2019'),
            ('D', '2022')
           ) as v(label, option_text)
 where q.question_hash = '6c6a63b4674c083c87233e94d6c41373'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The ''Global Partnership for SDGs'' agreement between India and Japan was signed in:',
    'India and Japan signed the Global Partnership for SDGs during the 14th India-Japan Summit in September 2021, aligning their development cooperation with the 2030 Agenda.',
    'hard',
    'PIB',
    2021,
    'bd2b692088ffb22b95a93d6ae08ed6ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'bd2b692088ffb22b95a93d6ae08ed6ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = 'bd2b692088ffb22b95a93d6ae08ed6ec'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Comprehensive Economic and Trade Agreement between India and Canada was signed in:',
    'India and Canada signed the Comprehensive Economic and Trade Agreement (CETA) in March 2022, which entered into force in 2022-23 and was ratified in 2023.',
    'medium',
    'PIB',
    2022,
    'cf8d45c61dbed0cf595326694992c21e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'cf8d45c61dbed0cf595326694992c21e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = 'cf8d45c61dbed0cf595326694992c21e'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Comprehensive Economic Partnership Agreement between India and the United Arab Emirates was signed in:',
    'India and the UAE signed the CEPA during the first India-UAE CEPA summit in February 2022, providing for tariff elimination on most goods and a services and investment agreement.',
    'medium',
    'PIB',
    2022,
    '68e4bfe53c55f112420d67cd2444a2ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '68e4bfe53c55f112420d67cd2444a2ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2024'),
            ('C', '2023'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '68e4bfe53c55f112420d67cd2444a2ec'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The framework agreement of the International Solar Alliance was opened for signature at:',
    'The ISA Framework Agreement was opened for signature by 20 countries at COP22 in Paris on 16 November 2016, after India and France proposed the alliance at COP21 in 2015.',
    'medium',
    'International Solar Alliance',
    2016,
    'eb7158a8f0086586552d71a4ff62ba69'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eb7158a8f0086586552d71a4ff62ba69'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'COP23, Bonn, 2017'),
            ('B', 'COP26, Glasgow, 2021'),
            ('C', 'COP21, Paris, 2015'),
            ('D', 'COP22, Paris, 2016')
           ) as v(label, option_text)
 where q.question_hash = 'eb7158a8f0086586552d71a4ff62ba69'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The G20 Leaders'' Summit 2023 was held in:',
    'India hosted the 18th G20 Leaders'' Summit at the Bharat Mandapam in New Delhi on 1 September 2023, the first G20 summit held in India and in Africa.',
    'easy',
    'PIB',
    2023,
    '2e34ce9dd5fe490c9e2ee5c8a7a9e7c8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '2e34ce9dd5fe490c9e2ee5c8a7a9e7c8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sendai, Japan'),
            ('B', 'Bali, Indonesia'),
            ('C', 'New Delhi, India'),
            ('D', 'Rio de Janeiro, Brazil')
           ) as v(label, option_text)
 where q.question_hash = '2e34ce9dd5fe490c9e2ee5c8a7a9e7c8'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The India-ASEAN Trade in Goods Agreement entered into force on:',
    'The India-ASEAN Trade in Goods Agreement, signed in 2009-10, entered into force on 1 January 2010, with the Trade in Services Agreement and the protocols for the acceding parties taking effect later.',
    'medium',
    'PIB',
    2010,
    'cfb0200a9e2e1bf2bae06a0a75482322'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'cfb0200a9e2e1bf2bae06a0a75482322'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 2010'),
            ('B', '1 August 2012'),
            ('C', '1 January 2009'),
            ('D', '1 January 2011')
           ) as v(label, option_text)
 where q.question_hash = 'cfb0200a9e2e1bf2bae06a0a75482322'
on conflict (question_id, label) do nothing;

-- current_affairs | international-relations-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'international-relations-current'),
    'The Kigali Amendment to the Montreal Protocol on Substances that Deplete the Ozone Layer was adopted in:',
    'The Kigali Amendment was adopted in October 2016 to phase down hydrofluorocarbons, which contributed to global warming, and entered into force on 1 January 2019.',
    'medium',
    'UNEP',
    2016,
    'eefb018fd465e020eed66e7477391670'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'eefb018fd465e020eed66e7477391670'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2018'),
            ('C', '2020'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = 'eefb018fd465e020eed66e7477391670'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Pradhan Mantri Awas Yojana, India''s housing scheme for the poor, was launched in which year?',
    'PMAY was launched in June 2015 for urban areas and extended to rural housing as PMAY-G in 2016, aiming to provide pucca houses with basic amenities to all households.',
    'easy',
    'PIB',
    2015,
    '9f4340f728bb4cc0a5bccab218ce404f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9f4340f728bb4cc0a5bccab218ce404f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2015'),
            ('C', '2016'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '9f4340f728bb4cc0a5bccab218ce404f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Pradhan Mantri Ujjwala Yojana, which provides free LPG connections to women from poor households, was launched in which year?',
    'PMUY was launched on 1 May 2016 with a target of one crore LPG connections to women in poor households, later expanded to include other benefits.',
    'easy',
    'PIB',
    2016,
    'b835aa4ebfc9e3a7ed992da6c0ad1809'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b835aa4ebfc9e3a7ed992da6c0ad1809'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2018'),
            ('C', '2015'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = 'b835aa4ebfc9e3a7ed992da6c0ad1809'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The National Jal Jeevan Mission, aiming to provide a functional household tap connection in every rural household, was launched in which year?',
    'The Jal Jeevan Mission was launched in August 2019 to provide a functional household tap connection to every rural home, under which women are trained as Jal Sathis.',
    'easy',
    'PIB',
    2019,
    'becae744db2187c7400ed9d9326654e7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'becae744db2187c7400ed9d9326654e7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2020'),
            ('C', '2017'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = 'becae744db2187c7400ed9d9326654e7'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Swachh Bharat Mission was launched on which date?',
    'The Swachh Bharat Mission was formally launched on 2 October 2014, the birth anniversary of Mahatma Gandhi, with separate urban and rural components.',
    'easy',
    'PIB',
    2014,
    '9c9a29d39d20624afa01d5ee0c568587'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9c9a29d39d20624afa01d5ee0c568587'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 December 2014'),
            ('B', '15 August 2014'),
            ('C', '2 October 2014'),
            ('D', '26 January 2015')
           ) as v(label, option_text)
 where q.question_hash = '9c9a29d39d20624afa01d5ee0c568587'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The PM-KISAN scheme, providing income support of Rs 6,000 a year to landholding farmer families, was launched in which year?',
    'PM-KISAN was launched in February 2019 as a direct income support scheme, with the first instalment paid to eligible farmer families in the same year.',
    'easy',
    'PIB',
    2019,
    'f4129953627c50b0b635ecdb0066ef03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'f4129953627c50b0b635ecdb0066ef03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2019'),
            ('C', '2020'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = 'f4129953627c50b0b635ecdb0066ef03'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Pradhan Mantri Fasal Bima Yojana, the crop insurance scheme for farmers, was launched in which year?',
    'PMFBY was launched in the 2016 kharif season, replacing the National Agricultural Insurance Scheme, and provides cover against crop loss from natural calamities.',
    'easy',
    'PIB',
    2016,
    'e443d6c4ad8d568d4ba26fb0caec0c0d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e443d6c4ad8d568d4ba26fb0caec0c0d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2016'),
            ('C', '2014'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = 'e443d6c4ad8d568d4ba26fb0caec0c0d'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Ayushman Bharat Pradhan Mantri Jan Arogya Yojana, the flagship health assurance scheme, was launched on:',
    'PM-JAY was launched on 23 September 2018 with an outlay of about Rs 5,400 crore a year, providing health cover of Rs 5 lakh per family per year for about 55 crore people.',
    'easy',
    'PIB',
    2018,
    'e02297ce9898da5482089958f714dbbc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e02297ce9898da5482089958f714dbbc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '26 January 2018'),
            ('B', '15 August 2018'),
            ('C', '23 September 2018'),
            ('D', '1 January 2019')
           ) as v(label, option_text)
 where q.question_hash = 'e02297ce9898da5482089958f714dbbc'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The MUDRA loan scheme, providing collateral-free loans to micro enterprises, was launched on:',
    'PM MUDRA was launched on 8 April 2015 with three categories - Shishu, Kishor and Tarun - for loans up to Rs 50,000, Rs 5 lakh and Rs 10 lakh respectively.',
    'medium',
    'PIB',
    2015,
    'd1752760fc741dafed5cd59946e1847e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd1752760fc741dafed5cd59946e1847e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '8 April 2015'),
            ('B', '15 April 2016'),
            ('C', '1 April 2015'),
            ('D', '8 May 2016')
           ) as v(label, option_text)
 where q.question_hash = 'd1752760fc741dafed5cd59946e1847e'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Pradhan Mantri Jan Dhan Yojana, the national financial inclusion mission, was launched on:',
    'PMJDY was launched on 28 August 2014 with the goal of a bank account for every household and a basic RuPay card and insurance cover for every account holder.',
    'easy',
    'PIB',
    2014,
    'a776ebe5fb3ebfb12364aee82d02cd61'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a776ebe5fb3ebfb12364aee82d02cd61'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 September 2014'),
            ('B', '2 October 2014'),
            ('C', '15 August 2014'),
            ('D', '28 August 2014')
           ) as v(label, option_text)
 where q.question_hash = 'a776ebe5fb3ebfb12364aee82d02cd61'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The PM Vishwakarma scheme, with 14 sub-schemes for traditional artisans and craftspeople, was launched in which year?',
    'The Union government launched 14 PM Vishwakarma schemes, including PM SVANidhi, PM Kaushal Vikas, PM Marksha Dhatu and PM Baglessa Dhan Vikas, on 2 November 2023.',
    'medium',
    'PIB',
    2023,
    '0db20553c8006c705c59dffa92b162f4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0db20553c8006c705c59dffa92b162f4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2024'),
            ('C', '2022'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '0db20553c8006c705c59dffa92b162f4'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The PM Kisan Maandhan Yojana, a contributory pension scheme for small and marginal farmers, was launched in which year?',
    'PM KMY was launched in September 2019 with a monthly contribution of Rs 55 to 200 by the farmer matched by the Central Government for old age pension after 60 years.',
    'medium',
    'PIB',
    2019,
    '3b169d5958492b996a630647be1e7666'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3b169d5958492b996a630647be1e7666'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2018'),
            ('C', '2019'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '3b169d5958492b996a630647be1e7666'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Sukanya Samriddhi Yojana, a small savings scheme for a girl child, was launched in which year?',
    'The Sukanya Samriddhi Yojana was launched on 22 January 2015 under the Balasakti Yojana, with a small deposit allowed for a girl below ten years of age.',
    'easy',
    'PIB',
    2015,
    '46759512eae5a77ab26159a089d4321e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '46759512eae5a77ab26159a089d4321e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2017'),
            ('B', '2015'),
            ('C', '2016'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '46759512eae5a77ab26159a089d4321e'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Beti Bachao Beti Padhao campaign was launched in which year?',
    'The campaign was launched on 5 May 2015 to address sex-selective abortion and promote the survival, protection and education of the girl child.',
    'easy',
    'PIB',
    2015,
    '010dcc02bef161412f1499e7cc7bb5ce'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '010dcc02bef161412f1499e7cc7bb5ce'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2016'),
            ('C', '2013'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '010dcc02bef161412f1499e7cc7bb5ce'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Mid-Day Meal scheme was renamed as the PM POSHAN scheme in which year?',
    'The National Mid-Day Meal Programme was renamed PM POSHAN (Pradhan Mantri Poshan Shakti Nirman) on 29 September 2021, expanding it to include pre-primary and upper primary classes.',
    'medium',
    'PIB',
    2021,
    '374b1796c1f365f2c52654f1e5caaea1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '374b1796c1f365f2c52654f1e5caaea1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2019'),
            ('C', '2020'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '374b1796c1f365f2c52654f1e5caaea1'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Samagra Shiksha scheme, an integrated education programme, was launched in which year?',
    'Samagra Shiksha was launched in July 2021 by integrating and strengthening school education programmes from pre-primary to higher education under one mission.',
    'medium',
    'PIB',
    2021,
    'd3716897935c47a1597015b2364bb217'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd3716897935c47a1597015b2364bb217'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2020'),
            ('C', '2021'),
            ('D', '2022')
           ) as v(label, option_text)
 where q.question_hash = 'd3716897935c47a1597015b2364bb217'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The National Education Policy, which replaced the earlier 1986 policy framework, was adopted in which year?',
    'The National Education Policy 2020 was adopted on 29 July 2020, introducing a new 5+3+3+4 school structure with vocational education from grade 6 and multilingualism.',
    'easy',
    'PIB',
    2020,
    '5927aa3bbb2c198717b7a9d083fc7d2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5927aa3bbb2c198717b7a9d083fc7d2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2019'),
            ('B', '2020'),
            ('C', '2021'),
            ('D', '2018')
           ) as v(label, option_text)
 where q.question_hash = '5927aa3bbb2c198717b7a9d083fc7d2b'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The PM Gati Shakti National Master Plan was launched in which year?',
    'The PM Gati Shakti National Master Plan was launched on 13 October 2021 to coordinate infrastructure planning across roads, railways, waterways, airports, logistics and energy corridors.',
    'medium',
    'PIB',
    2021,
    '56dc06dbcb551820835ecab843a05179'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '56dc06dbcb551820835ecab843a05179'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2019'),
            ('C', '2022'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '56dc06dbcb551820835ecab843a05179'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Bharatmala Pariyojana, India''s road development programme, was approved in which year?',
    'Bharatmala Pariyojana was approved in February 2015 with an outlay for about 6,000 km of high-speed corridors, later expanded under the ''Atmanirbhar Bharat'' road plan.',
    'medium',
    'PIB',
    2015,
    '0dafd781b1cfe51919c4fc727d0dab5f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '0dafd781b1cfe51919c4fc727d0dab5f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2014'),
            ('C', '2015'),
            ('D', '2013')
           ) as v(label, option_text)
 where q.question_hash = '0dafd781b1cfe51919c4fc727d0dab5f'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The UDAN regional aviation connectivity scheme was launched in which year?',
    'UDAN was launched in October 2016 to stimulate regional air connectivity through viability gap funding and incentives for aircraft and routes.',
    'medium',
    'PIB',
    2016,
    'de592a1ee9044130ac5bb119f9ed22a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'de592a1ee9044130ac5bb119f9ed22a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2016'),
            ('B', '2017'),
            ('C', '2018'),
            ('D', '2015')
           ) as v(label, option_text)
 where q.question_hash = 'de592a1ee9044130ac5bb119f9ed22a0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Pradhan Mantri Krishi Sinchayee Yojana, for irrigation efficiency, was launched in which year?',
    'PMKSY was launched on 1 July 2015 with three components - Per Drop More Crop, Watershed Development and Farm Water Management.',
    'medium',
    'PIB',
    2015,
    '8cafcacb00dd19a5edff31c041c10193'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '8cafcacb00dd19a5edff31c041c10193'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2015'),
            ('C', '2016'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = '8cafcacb00dd19a5edff31c041c10193'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Rashtriya Krishi Vikas Yojana was restructured in 2018 as:',
    'RKVY was restructured in 2018-19 from a centrally funded scheme to a state-level flexible intervention with additional long-term convergence sub-schemes.',
    'hard',
    'PIB',
    2018,
    '818afd672c9f2799d3f9f6042404d3bf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '818afd672c9f2799d3f9f6042404d3bf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a crop insurance scheme'),
            ('B', 'a minimum support price guarantee scheme'),
            ('C', 'a long-term irrigation programme'),
            ('D', 'a state-level flexible funding programme for agriculture and allied sectors')
           ) as v(label, option_text)
 where q.question_hash = '818afd672c9f2799d3f9f6042404d3bf'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The Soil Health Card scheme, providing farmers with soil analysis-based recommendations, was launched in which year?',
    'The Soil Health Card scheme was launched in 2015, with the first phase covering 2.2 crore farmers across districts and issuing crop-wise soil nutrient and fertiliser recommendations.',
    'medium',
    'PIB',
    2015,
    '2883854fd2a3086deaae05e2620cd408'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2883854fd2a3086deaae05e2620cd408'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2015'),
            ('B', '2016'),
            ('C', '2013'),
            ('D', '2014')
           ) as v(label, option_text)
 where q.question_hash = '2883854fd2a3086deaae05e2620cd408'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The electronic National Agricultural Market (e-NAM) platform was launched in which year?',
    'e-NAM was launched on 14 April 2016 as a national online trading platform connecting mandis across states for transparent price discovery in agri commodities.',
    'medium',
    'PIB',
    2016,
    '265f66a13cba06ef336b77d9bc0ea0d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '265f66a13cba06ef336b77d9bc0ea0d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2015'),
            ('C', '2016'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = '265f66a13cba06ef336b77d9bc0ea0d0'
on conflict (question_id, label) do nothing;

-- current_affairs | schemes-and-policies | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'schemes-and-policies'),
    'The One Stop Centre scheme, a support centre for women affected by violence, was launched in which year?',
    'The One Stop Centre scheme was launched in 2015 to integrate services such as medical aid, police assistance, legal aid, counselling and psychological support for affected women.',
    'medium',
    'PIB',
    2015,
    '7af92b8cb49226c25a01e52707efaa3c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7af92b8cb49226c25a01e52707efaa3c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2014'),
            ('B', '2015'),
            ('C', '2016'),
            ('D', '2017')
           ) as v(label, option_text)
 where q.question_hash = '7af92b8cb49226c25a01e52707efaa3c'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the Global Innovation Index 2023 published by the World Intellectual Property Organization, India was ranked:',
    'India ranked 39th in the GII 2023, its best position in the index, with strength in patents, trademarks and scientific publications.',
    'medium',
    'WIPO',
    2023,
    'ee0e7b9c21bf872894699e78a5c0bc54'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ee0e7b9c21bf872894699e78a5c0bc54'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '46th'),
            ('B', '81st'),
            ('C', '61st'),
            ('D', '39th')
           ) as v(label, option_text)
 where q.question_hash = 'ee0e7b9c21bf872894699e78a5c0bc54'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'According to the Human Development Report 2021-22, India was ranked in the human development index at which position?',
    'The HDR 2021-22, published in March 2022, placed India 131st out of 191 countries with an HDI value of 0.660, a rise of one place over the previous report.',
    'medium',
    'UNDP',
    2022,
    'df52dc641d08cace7ba01e5c56d8f767'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'df52dc641d08cace7ba01e5c56d8f767'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '118th'),
            ('B', '126th'),
            ('C', '131st'),
            ('D', '142nd')
           ) as v(label, option_text)
 where q.question_hash = 'df52dc641d08cace7ba01e5c56d8f767'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the Global Hunger Index 2023, India was ranked at which position among the countries covered?',
    'The GHI 2023 ranked India 111th out of 125 countries, with 13.7 per cent of the population estimated to be undernourished and 16.6 per cent children under five stunted.',
    'medium',
    'Global Hunger Index',
    2023,
    '0bffe09e0324a967a6dbd6511a26f38b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0bffe09e0324a967a6dbd6511a26f38b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '111th'),
            ('B', '121st'),
            ('C', '104th'),
            ('D', '107th')
           ) as v(label, option_text)
 where q.question_hash = '0bffe09e0324a967a6dbd6511a26f38b'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the World Happiness Report 2024, India was ranked at which position?',
    'The World Happiness Report 2024, based on the 2022-23 Gallup World Poll data, placed India 126th among 143 countries, improving from 143rd in the 2023 report.',
    'medium',
    'World Happiness Report',
    2024,
    '0ecda654d2d9e53f95e84e268d2af8d4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '0ecda654d2d9e53f95e84e268d2af8d4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '143rd'),
            ('B', '134th'),
            ('C', '118th'),
            ('D', '126th')
           ) as v(label, option_text)
 where q.question_hash = '0ecda654d2d9e53f95e84e268d2af8d4'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the Environmental Performance Index 2024, India was ranked:',
    'The EPI 2024, released in June 2024, placed India 176th out of 180 countries, with a very low score in the air pollution category.',
    'hard',
    'Environmental Performance Index',
    2024,
    'b1081282093f01932a6a30a1469d9299'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b1081282093f01932a6a30a1469d9299'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '167th'),
            ('B', '176th'),
            ('C', '148th'),
            ('D', '120th')
           ) as v(label, option_text)
 where q.question_hash = 'b1081282093f01932a6a30a1469d9299'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The World Air Quality Report, published annually by IQAir, ranks countries and cities primarily on the basis of:',
    'The IQAir report ranks countries and cities by their average annual PM2.5 concentration measured by reference-grade monitoring stations, with the most polluted countries listed first.',
    'easy',
    'IQAir',
    null,
    '65d6a27a5aca3c9164065ae9ae22c202'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '65d6a27a5aca3c9164065ae9ae22c202'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Total greenhouse gas emissions'),
            ('B', 'Average annual PM2.5 concentration'),
            ('C', 'Number of days exceeding the AQI'),
            ('D', 'Industrial sulphur dioxide emissions')
           ) as v(label, option_text)
 where q.question_hash = '65d6a27a5aca3c9164065ae9ae22c202'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the IMD World Competitiveness Ranking 2023, India was ranked:',
    'India ranked 41st out of 69 countries in the IMD World Competitiveness Ranking 2023, improving from 43rd place in the 2022 edition.',
    'hard',
    'IMD',
    2023,
    'd7cb41983576acf812f3f512d4f2c6e0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd7cb41983576acf812f3f512d4f2c6e0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '49th'),
            ('B', '53rd'),
            ('C', '41st'),
            ('D', '34th')
           ) as v(label, option_text)
 where q.question_hash = 'd7cb41983576acf812f3f512d4f2c6e0'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the World Economic Forum''s Global Gender Gap Report 2023, India was ranked:',
    'The Global Gender Gap Report 2023 placed India 143rd out of 146 countries, with a gender gap of about 68.4 per cent closed, though economic participation and opportunity remained the weakest pillar.',
    'medium',
    'World Economic Forum',
    2023,
    '2a1ac85578f30708d8b20502297ed45e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2a1ac85578f30708d8b20502297ed45e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '143rd'),
            ('B', '129th'),
            ('C', '116th'),
            ('D', '102nd')
           ) as v(label, option_text)
 where q.question_hash = '2a1ac85578f30708d8b20502297ed45e'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'According to the India Multidimensional Poverty Index 2022, the number of people in multidimensional poverty in India in 2021-22 was:',
    'The India MPI 2022, prepared by NITI Aayog with UNDP and Oxford, estimated 415 million people (24.82 per cent) to be multidimensionally poor, with 248 million escaping poverty between 2015-16 and 2019-21.',
    'hard',
    'NITI Aayog',
    2022,
    '15f9de633cb8e8d4e432cc6773e7154a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '15f9de633cb8e8d4e432cc6773e7154a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '248 million'),
            ('B', '364 million'),
            ('C', '187 million'),
            ('D', '415 million')
           ) as v(label, option_text)
 where q.question_hash = '15f9de633cb8e8d4e432cc6773e7154a'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The first edition of the SDG India Index was published by NITI Aayog in which year?',
    'The SDG India Index, the first government-developed country-level SDG index, was released in 2018 with a baseline for 2017-18 and has been updated annually since.',
    'medium',
    'NITI Aayog',
    2018,
    '269289e6270b531c52878ab1eaf25cfa'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '269289e6270b531c52878ab1eaf25cfa'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2018'),
            ('B', '2017'),
            ('C', '2019'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '269289e6270b531c52878ab1eaf25cfa'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'In the 2023 World Press Freedom Index published by Reporters Without Borders, India was ranked:',
    'India slipped to 161st of 180 countries in the 2023 World Press Freedom Index, its lowest ranking in the series to date.',
    'medium',
    'Reporters Without Borders',
    2023,
    'b1d1838501155ed3589c42c404f8cc04'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b1d1838501155ed3589c42c404f8cc04'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '142nd'),
            ('B', '161st'),
            ('C', '168th'),
            ('D', '150th')
           ) as v(label, option_text)
 where q.question_hash = 'b1d1838501155ed3589c42c404f8cc04'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The Wildlife Institute of India''s 2024 assessment of wildlife population reported increases in the populations of:',
    'The first-ever Wildlife Population Assessment in India, released in August 2024, found that the populations of the lion-tailed macaque, spotted deer, wild pig and grizzled giant squirrel had grown over two decades.',
    'hard',
    'Wildlife Institute of India',
    2024,
    '628b7d83eae7f486fb7c6db223f4b202'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '628b7d83eae7f486fb7c6db223f4b202'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'snow leopard, musk deer and blue sheep'),
            ('B', 'gharial, mugger crocodile and otter'),
            ('C', 'tiger, elephant and rhinoceros'),
            ('D', 'lion-tailed macaque, spotted deer, wild pig and grizzled giant squirrel')
           ) as v(label, option_text)
 where q.question_hash = '628b7d83eae7f486fb7c6db223f4b202'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The first edition of the India Biodiversity Index was released in which year?',
    'The India Biodiversity Index, the first such national assessment of 92 Biodiversity Indicators, was released in October 2022 by the Ministry of Environment, Forest and Climate Change.',
    'medium',
    'PIB',
    2022,
    '5df582bfea817748208d1ecab7ee9002'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '5df582bfea817748208d1ecab7ee9002'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2024'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2023')
           ) as v(label, option_text)
 where q.question_hash = '5df582bfea817748208d1ecab7ee9002'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The third Global Tiger Forum, hosted by India, was held in which year?',
    'The 3rd Global Tiger Forum was held in New Delhi in November 2022, launching the ''Tiger Reserve'' and ''Future Tiger'' roadmaps and reviewing progress on the Global Tiger Forum goals.',
    'medium',
    'PIB',
    2022,
    '41b56f512dabd704ea730add5390ed8f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '41b56f512dabd704ea730add5390ed8f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2024')
           ) as v(label, option_text)
 where q.question_hash = '41b56f512dabd704ea730add5390ed8f'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The Synthesis Report of the IPCC''s Sixth Assessment Cycle was released in which year?',
    'The IPCC AR6 Synthesis Report was released in March 2023, finding that human activities have unequivocally caused global warming of about 1.1 degrees Celsius above pre-industrial levels.',
    'medium',
    'IPCC',
    2023,
    '9aa9a8ead2d08e9fa8cf74abb8206c81'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '9aa9a8ead2d08e9fa8cf74abb8206c81'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2022'),
            ('B', '2023'),
            ('C', '2024'),
            ('D', '2021')
           ) as v(label, option_text)
 where q.question_hash = '9aa9a8ead2d08e9fa8cf74abb8206c81'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The Global Tiger Forum 2024 was held in which city?',
    'India hosted the Global Tiger Forum Summit in New Delhi in February 2024, which reviewed the progress of the four tiger range countries and launched the next phase of the programme.',
    'medium',
    'PIB',
    2024,
    '99426a7d31e2a2cdfe299ba8db920575'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '99426a7d31e2a2cdfe299ba8db920575'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bangkok'),
            ('B', 'Geneva'),
            ('C', 'Bhubaneswar'),
            ('D', 'New Delhi')
           ) as v(label, option_text)
 where q.question_hash = '99426a7d31e2a2cdfe299ba8db920575'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The annual report on air pollution in India titled ''State of India''s Air'' is published by:',
    'The Centre for Science and Environment publishes the annual ''State of India''s Air'' report with data from its network of monitoring stations.',
    'medium',
    'CSE',
    null,
    '57c2b8929b9476de3d3db1b70ef7aa76'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '57c2b8929b9476de3d3db1b70ef7aa76'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Centre for Science and Environment'),
            ('B', 'CPCB'),
            ('C', 'Ministry of Environment, Forest and Climate Change'),
            ('D', 'NITI Aayog')
           ) as v(label, option_text)
 where q.question_hash = '57c2b8929b9476de3d3db1b70ef7aa76'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The Corruption Perceptions Index is published by:',
    'Transparency International publishes the annual Corruption Perceptions Index, scoring countries on perceived public-sector corruption, and the associated CPI 2023 report was released in February 2024.',
    'easy',
    'Transparency International',
    null,
    'd4e53de860d62c52e2d496c46abf4246'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'd4e53de860d62c52e2d496c46abf4246'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'World Justice Project'),
            ('B', 'International Budget Partnership'),
            ('C', 'Transparency International'),
            ('D', 'World Bank')
           ) as v(label, option_text)
 where q.question_hash = 'd4e53de860d62c52e2d496c46abf4246'
on conflict (question_id, label) do nothing;

-- current_affairs | indices-and-reports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'indices-and-reports'),
    'The Global Peace Index is produced by which organisation?',
    'The Global Peace Index is produced by the Institute for Economics and Peace, ranking countries on indicators of ongoing conflict and societal safety and security.',
    'easy',
    'Institute for Economics and Peace',
    null,
    '42bb9ce998f3b58264ef5dbd856ce471'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '42bb9ce998f3b58264ef5dbd856ce471'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Institute for Economics and Peace'),
            ('B', 'Institute for Strategic Studies'),
            ('C', 'International Peace Bureau'),
            ('D', 'World Economic Forum')
           ) as v(label, option_text)
 where q.question_hash = '42bb9ce998f3b58264ef5dbd856ce471'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Physics for 2023 was awarded to:',
    'The 2023 Physics Nobel was awarded to Pierre Agostini, Ferenc Krausz and Anne L''Huillier for experimental methods generating attosecond pulses for the study of electron dynamics in matter.',
    'medium',
    'Nobel Prize',
    2023,
    '1e797969c0dbbef3acef3a2b6a2149ab'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '1e797969c0dbbef3acef3a2b6a2149ab'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Klaus Hasselmann and Syukuro Manabe'),
            ('B', 'Pierre Agostini, Ferenc Krausz and Anne L''Huillier'),
            ('C', 'John Hopfield and Geoffrey Hinton'),
            ('D', 'Alain Aspect, John Clauser and Zeilinger')
           ) as v(label, option_text)
 where q.question_hash = '1e797969c0dbbef3acef3a2b6a2149ab'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Chemistry for 2023 was awarded to:',
    'The 2023 Chemistry Nobel recognised the discovery and development of quantum dots, the nanoparticles used in displays, sensors and solar cells.',
    'medium',
    'Nobel Prize',
    2023,
    '258a6311d6553a75bee9585d31245a86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '258a6311d6553a75bee9585d31245a86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Barry Sharpless, Morten Meldal and Carolyn Bertozzi'),
            ('B', 'Koichi Tanaka, Kurt Wuthrich and Richard Robson'),
            ('C', 'John Goodenough, Stanley Whittingham and Akira Yoshino'),
            ('D', 'Moungi Bawendi, Alexei Ekimov and Louis Brus')
           ) as v(label, option_text)
 where q.question_hash = '258a6311d6553a75bee9585d31245a86'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Literature for 2023 was awarded to:',
    'The Norwegian playwright and novelist Jon Fosse received the 2023 Literature Nobel Prize for innovative plays and prose giving voice to the unsayable.',
    'easy',
    'Nobel Prize',
    2023,
    'd1d6194cac90821e0a238a4c11784d68'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'd1d6194cac90821e0a238a4c11784d68'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Jon Fosse'),
            ('B', 'Karl Ove Knausgaard'),
            ('C', 'Geir Gulliksen'),
            ('D', 'Peter Handke')
           ) as v(label, option_text)
 where q.question_hash = 'd1d6194cac90821e0a238a4c11784d68'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Peace Prize for 2023 was awarded to:',
    'Iranian human rights lawyer Narges Mohammadi received the 2023 Peace Nobel for her unyielding fight for the rights of women and for freedom of expression in Iran.',
    'medium',
    'Nobel Prize',
    2023,
    'ba1b88654d1d62e508a7c5885025a332'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ba1b88654d1d62e508a7c5885025a332'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Abiy Ahmed'),
            ('B', 'Volodymyr Zelenskyy'),
            ('C', 'Narges Mohammadi'),
            ('D', 'Ales Bialiatski')
           ) as v(label, option_text)
 where q.question_hash = 'ba1b88654d1d62e508a7c5885025a332'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Physics for 2024 was awarded to:',
    'The 2024 Physics Nobel was awarded to John Hopfield and Geoffrey Hinton for foundational discoveries and inventions that enable machine learning with artificial neural networks.',
    'easy',
    'Nobel Prize',
    2024,
    'f4ca89300ab1514a03fd8c33941068c0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'f4ca89300ab1514a03fd8c33941068c0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pierre Agostini and Ferenc Krausz'),
            ('B', 'Reinhard Genzel and Roger Penrose'),
            ('C', 'Alain Aspect and John Clauser'),
            ('D', 'John Hopfield and Geoffrey Hinton')
           ) as v(label, option_text)
 where q.question_hash = 'f4ca89300ab1514a03fd8c33941068c0'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Chemistry for 2024 was awarded to:',
    'The 2024 Chemistry Nobel honoured computational protein design and the prediction of protein structures with artificial intelligence, splitting the award between David Baker and the DeepMind scientists.',
    'medium',
    'Nobel Prize',
    2024,
    '79f5ce342c1904ae8d07d9f6825ed355'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '79f5ce342c1904ae8d07d9f6825ed355'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Barry Sharpless and Ryoji Noyori'),
            ('B', 'David Baker, Demis Hassabis and John Jumper'),
            ('C', 'Moungi Bawendi and Louis Brus'),
            ('D', 'Carolyn Bertozzi and Morten Meldal')
           ) as v(label, option_text)
 where q.question_hash = '79f5ce342c1904ae8d07d9f6825ed355'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Physiology or Medicine for 2024 was awarded to:',
    'Victor Ambros and Gary Ruvkun received the 2024 Medicine Nobel for the discovery of microRNA and its role in regulating gene expression after development.',
    'medium',
    'Nobel Prize',
    2024,
    'ff958e5b73e47c52325d51294074beef'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'ff958e5b73e47c52325d51294074beef'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Michael Houghton and Charles Rice'),
            ('B', 'Katalin Kariko and Drew Weissman'),
            ('C', 'Victor Ambros and Gary Ruvkun'),
            ('D', 'Har Gobind Khorana and Marshall Nirenberg')
           ) as v(label, option_text)
 where q.question_hash = 'ff958e5b73e47c52325d51294074beef'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel for 2024 was awarded to:',
    'The 2024 Economics Nobel was awarded to Acemoglu, Johnson and Robinson for studies of how institutions are formed and affect prosperity, revisiting the role of democracy in economic development.',
    'medium',
    'Nobel Prize',
    2024,
    '86868035ffccca2b1217c13edac5f0f5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '86868035ffccca2b1217c13edac5f0f5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Claudia Goldin'),
            ('B', 'Oliver Hart and Bengt Holmstrom'),
            ('C', 'Esther Duflo and Abhijit Banerjee'),
            ('D', 'Daron Acemoglu, Simon Johnson and James Robinson')
           ) as v(label, option_text)
 where q.question_hash = '86868035ffccca2b1217c13edac5f0f5'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Peace Prize for 2024 was awarded to:',
    'The Japanese anti-nuclear group Nihon Hidankyo received the 2024 Peace Nobel Prize for its efforts to achieve a nuclear-free world and for its courage in protesting and conveying the consequences of atomic weapons to future generations.',
    'medium',
    'Nobel Prize',
    2024,
    'b0e9ed2d940042f48a82537d287f95d1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b0e9ed2d940042f48a82537d287f95d1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nihon Hidankyo'),
            ('B', 'Narges Mohammadi'),
            ('C', 'ICAN'),
            ('D', 'Samantha Power')
           ) as v(label, option_text)
 where q.question_hash = 'b0e9ed2d940042f48a82537d287f95d1'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Literature for 2024 was awarded to:',
    'The South Korean author Han Kang won the 2024 Literature Nobel for her intense poetic prose confronting historical traumas and exposing the fragility of human life.',
    'medium',
    'Nobel Prize',
    2024,
    '265d69e5ed1caecac107530bdf5d905f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '265d69e5ed1caecac107530bdf5d905f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Annie Ernaux'),
            ('B', 'Han Kang'),
            ('C', 'Olga Tokarczuk'),
            ('D', 'Jokha Alharthi')
           ) as v(label, option_text)
 where q.question_hash = '265d69e5ed1caecac107530bdf5d905f'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Prize in Physiology or Medicine for 2023 was awarded to:',
    'Katalin Kariko and Drew Weissman received the 2023 Medicine Nobel for discoveries concerning nucleoside base modifications that enabled the development of effective mRNA vaccines against COVID-19.',
    'easy',
    'Nobel Prize',
    2023,
    '85d17241b80c07e18eda1ba85107b3d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '85d17241b80c07e18eda1ba85107b3d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'David Julius and Ardem Patapoutian'),
            ('B', 'Michael Houghton and Charles Rice'),
            ('C', 'Katalin Kariko and Drew Weissman'),
            ('D', 'William Kaelin and Gregg Semenza')
           ) as v(label, option_text)
 where q.question_hash = '85d17241b80c07e18eda1ba85107b3d0'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Nobel Peace Prize for 2020 was awarded to:',
    'The World Food Programme was awarded the 2020 Peace Nobel for its efforts to combat hunger and for its contribution to the highest ideals of humanitarianism, with a specific mention of its work during the pandemic.',
    'easy',
    'Nobel Prize',
    2020,
    '80cde828976df8ee7507b48e015c8859'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '80cde828976df8ee7507b48e015c8859'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the United Nations Peacekeeping Mission'),
            ('B', 'the World Food Programme'),
            ('C', 'the International Committee of the Red Cross'),
            ('D', 'Médecins Sans Frontières')
           ) as v(label, option_text)
 where q.question_hash = '80cde828976df8ee7507b48e015c8859'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Bharat Ratna awards conferred in 2019 were given to:',
    'The 2019 Bharat Ratna awards honoured former President Pranab Mukherjee, educationist Nanaji Deshmukh, former Haryana Chief Minister Bhupinder Singh Hooda and playback singer Asha Bhosle.',
    'medium',
    'PIB',
    2019,
    '29c18e9a8d0b39207523bb413571d868'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '29c18e9a8d0b39207523bb413571d868'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chaudhary Charan Singh and P.V. Narasimha Rao'),
            ('B', 'M. S. Swaminathan and K. R. Narayanan'),
            ('C', 'Lal Bahadur Shastri and V. K. Krishna Menon'),
            ('D', 'Pranab Mukherjee, Nanaji Deshmukh, Bhupinder Singh Hooda and Asha Bhosle')
           ) as v(label, option_text)
 where q.question_hash = '29c18e9a8d0b39207523bb413571d868'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Bharat Ratna awards conferred in 2021 were given to:',
    'The 2021 Bharat Ratna awards were conferred on former Prime Minister P.V. Narasimha Rao and former Prime Minister Chaudhary Charan Singh, the first non-Congress national leader to receive the honour.',
    'medium',
    'PIB',
    2021,
    '865948a74d7bcc8ec4c9f1838508b140'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '865948a74d7bcc8ec4c9f1838508b140'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chaudhary Charan Singh and P.V. Narasimha Rao'),
            ('B', 'Bhupinder Singh Hooda and Asha Bhosle'),
            ('C', 'Nelson Mandela and Mother Teresa'),
            ('D', 'C. V. Raman and Rabindranath Tagore')
           ) as v(label, option_text)
 where q.question_hash = '865948a74d7bcc8ec4c9f1838508b140'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'At the 69th National Film Awards, the Best Actress award was won by:',
    'Kangana Ranaut won Best Actress at the 69th National Film Awards for Tanu Weds Manu Returns, while Manoj Bajpayee won Best Actor for Bhonsle and Lijo Jose Pellissery took Best Director for Jallikattu.',
    'medium',
    'PIB',
    2022,
    '512cbf0a93b69ab7174773f9a2eb023a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '512cbf0a93b69ab7174773f9a2eb023a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kangana Ranaut for Tanu Weds Manu Returns'),
            ('B', 'Alia Bhatt for Gangubai Kathiawadi'),
            ('C', 'Taapsee Pannu for Bhonsle'),
            ('D', 'Mrunal Thakur for Sardar Ka Grandson')
           ) as v(label, option_text)
 where q.question_hash = '512cbf0a93b69ab7174773f9a2eb023a'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Best Feature Film award at the 69th National Film Awards was won by:',
    'The Tamil film Soorarai Pottru won the Best Feature Film award at the 69th National Film Awards, which covered films certified in 2020 and were presented in 2022.',
    'hard',
    'PIB',
    2022,
    'a43ba160169655db0b32e6c726c95edf'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'a43ba160169655db0b32e6c726c95edf'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '12th Fail'),
            ('B', 'Rocketry'),
            ('C', 'Jallikattu'),
            ('D', 'Soorarai Pottru')
           ) as v(label, option_text)
 where q.question_hash = 'a43ba160169655db0b32e6c726c95edf'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Dadasaheb Phalke Award for 2022 was conferred on:',
    'Waheeda Rehman received the 54th Dadasaheb Phalke Award for the year 2022, honouring her outstanding contribution to Indian cinema.',
    'medium',
    'PIB',
    2022,
    '32152ca22d58e3f0ffb757a707622248'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32152ca22d58e3f0ffb757a707622248'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lata Mangeshkar'),
            ('B', 'Smita Patil'),
            ('C', 'Waheeda Rehman'),
            ('D', 'Asha Parekh')
           ) as v(label, option_text)
 where q.question_hash = '32152ca22d58e3f0ffb757a707622248'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The Dadasaheb Phalke Award for 2023 was conferred on:',
    'Mithun Chakraborty was honoured with the 55th Dadasaheb Phalke Award for the year 2023 for his contribution to Indian cinema over five decades.',
    'medium',
    'PIB',
    2023,
    '7845a336a03730af1b3cd004a2692d7c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '7845a336a03730af1b3cd004a2692d7c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Dharmendra'),
            ('B', 'Mithun Chakraborty'),
            ('C', 'Sharmila Tagore'),
            ('D', 'Waheeda Rehman')
           ) as v(label, option_text)
 where q.question_hash = '7845a336a03730af1b3cd004a2692d7c'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'The 58th Jnanpith Award, presented in 2023, was conferred on:',
    'Jagadguru Rambhadracharya received the 58th Jnanpith Award for his work ''Bante Katha'' and for his contribution to Sanskrit literature, education and philosophy.',
    'medium',
    'Jnanpith',
    2023,
    '32745fce5ee81af0ce301057925c21f0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '32745fce5ee81af0ce301057925c21f0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Girish Karnad'),
            ('B', 'M. T. Vasudevan Nair'),
            ('C', 'Jagadguru Rambhadracharya'),
            ('D', 'V. S. Naipaul')
           ) as v(label, option_text)
 where q.question_hash = '32745fce5ee81af0ce301057925c21f0'
on conflict (question_id, label) do nothing;

-- current_affairs | awards-and-honours | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'awards-and-honours'),
    'How many awards were conferred under the Padma Awards in 2021?',
    'The Padma Awards 2021 comprised 13 Padma Vibhushan, 104 Padma Bhushan and 269 Padma Shri, totalling 386 awards, including 21 women and 10 foreign recipients.',
    'hard',
    'PIB',
    2021,
    'aefb583410bc290bcc26282f31c80a79'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'aefb583410bc290bcc26282f31c80a79'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '386'),
            ('B', '262'),
            ('C', '449'),
            ('D', '104')
           ) as v(label, option_text)
 where q.question_hash = 'aefb583410bc290bcc26282f31c80a79'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The number of medals won by India at the Paris 2024 Olympic Games was:',
    'India won 29 medals at the Paris 2024 Olympics - seven gold, 10 silver and 12 bronze - its best performance at a single edition of the Games.',
    'easy',
    'Olympics',
    2024,
    'b54584d4d111902de2c6a1c5002520fc'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b54584d4d111902de2c6a1c5002520fc'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '35'),
            ('B', '24'),
            ('C', '19'),
            ('D', '29')
           ) as v(label, option_text)
 where q.question_hash = 'b54584d4d111902de2c6a1c5002520fc'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'Neeraj Chopra became the first individual Indian Olympic champion since Abhinav Bindra in:',
    'Abhinav Bindra won India''s first individual Olympic gold in shooting in 2008, and Neeraj Chopra''s javelin title at Tokyo 2020 was India''s first individual gold in 12 years.',
    'medium',
    'Olympics',
    2021,
    '3b0ca9c0c2607f43d6593a8f38f2d5b4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '3b0ca9c0c2607f43d6593a8f38f2d5b4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '2008'),
            ('C', '2012'),
            ('D', '2016')
           ) as v(label, option_text)
 where q.question_hash = '3b0ca9c0c2607f43d6593a8f38f2d5b4'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'Mirabai Chanu won the silver medal in the women''s 49 kg weightlifting event at:',
    'Mirabai Chanu won silver in the 49 kg category at Tokyo 2020, becoming the first Indian weightlifter to win an Olympic medal of any colour after Sushil Kumar''s gold in 2012.',
    'medium',
    'Olympics',
    2021,
    '084646fe5e12a9e7dd159ff3e13ff277'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '084646fe5e12a9e7dd159ff3e13ff277'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Beijing 2008'),
            ('B', 'Rio 2016'),
            ('C', 'London 2012'),
            ('D', 'Tokyo 2020')
           ) as v(label, option_text)
 where q.question_hash = '084646fe5e12a9e7dd159ff3e13ff277'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The first individual World Championships title in badminton won by an Indian was secured by:',
    'P. V. Sindhu became the first Indian to win the BWF World Championships title in 2019 by defeating Carolina Marin in the final at Birmingham.',
    'medium',
    'BWF',
    2019,
    'fa2eabfa0e892283433e7c90182b093d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'fa2eabfa0e892283433e7c90182b093d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'P. V. Sindhu in 2019'),
            ('B', 'Saina Nehwal in 2011'),
            ('C', 'Lakshya Sen in 2021'),
            ('D', 'Chetan Anand in 1981')
           ) as v(label, option_text)
 where q.question_hash = 'fa2eabfa0e892283433e7c90182b093d'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The total number of medals won by India at the Asian Games held in Hangzhou in 2022 was:',
    'India won 38 medals at the Hangzhou 2022 Asian Games, its best ever performance at the Asian Games, including golds in shooting, athletics and archery.',
    'medium',
    'Olympic Council of Asia',
    2023,
    'd3919d739f113aebbf35f380133d84c6'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'd3919d739f113aebbf35f380133d84c6'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '51'),
            ('B', '38'),
            ('C', '45'),
            ('D', '27')
           ) as v(label, option_text)
 where q.question_hash = 'd3919d739f113aebbf35f380133d84c6'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The number of medals won by India at the 2022 Commonwealth Games in Birmingham was:',
    'India won 19 medals, including eight golds, at the Birmingham 2022 Commonwealth Games, with four gold medals in athletics and four in shooting.',
    'medium',
    'Commonwealth Games',
    2022,
    'fb882fdc247a3a9fc31e84404302698f'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'fb882fdc247a3a9fc31e84404302698f'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '13'),
            ('B', '32'),
            ('C', '19'),
            ('D', '25')
           ) as v(label, option_text)
 where q.question_hash = 'fb882fdc247a3a9fc31e84404302698f'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'India''s medal haul at the 2018 Asian Games in Gold Coast included:',
    'India finished the 2018 Gold Coast Asian Games with 65 medals - 15 gold, 16 silver and 34 bronze - the country''s best performance at the Asian Games until Hangzhou.',
    'hard',
    'Olympic Council of Asia',
    2018,
    'e7a47b882510a57bda38f243ea238ea0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'e7a47b882510a57bda38f243ea238ea0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '70 medals including 22 gold medals'),
            ('B', '49 medals including 8 gold medals'),
            ('C', '65 medals including 15 gold medals'),
            ('D', '58 medals including 11 gold medals')
           ) as v(label, option_text)
 where q.question_hash = 'e7a47b882510a57bda38f243ea238ea0'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'India won the ICC Men''s Cricket World Cup in 2023 by defeating which team in the final?',
    'India beat South Africa by five wickets in the final at the Wankhede Stadium in Mumbai on 19 November 2023, winning their second World Cup, six years after the 2011 triumph.',
    'easy',
    'ICC',
    2023,
    '60bd96bdb81b233fef05838515c474a0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '60bd96bdb81b233fef05838515c474a0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'South Africa'),
            ('B', 'Australia'),
            ('C', 'England'),
            ('D', 'New Zealand')
           ) as v(label, option_text)
 where q.question_hash = '60bd96bdb81b233fef05838515c474a0'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The ICC Men''s T20 World Cup title was won by India in 2024 after defeating:',
    'India won the 2024 T20 World Cup at the Kensington Oval in Barbados on 29 June 2024, defeating South Africa by seven runs after Virat Kohli''s innings of 76.',
    'easy',
    'ICC',
    2024,
    '038a3e8548f4b66a882299a813a5267b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '038a3e8548f4b66a882299a813a5267b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Pakistan'),
            ('B', 'South Africa'),
            ('C', 'England'),
            ('D', 'New Zealand')
           ) as v(label, option_text)
 where q.question_hash = '038a3e8548f4b66a882299a813a5267b'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Indian Premier League title in 2024 was won by:',
    'Kolkata Knight Riders won their third IPL title in 2024, defeating Sunrisers Hyderabad by four wickets in the final at Chennai.',
    'medium',
    'IPL',
    2024,
    'b9e6fbfd98bab2dc36f5ba3781eb637d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'b9e6fbfd98bab2dc36f5ba3781eb637d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Chennai Super Kings'),
            ('B', 'Royal Challengers Bengaluru'),
            ('C', 'Mumbai Indians'),
            ('D', 'Kolkata Knight Riders')
           ) as v(label, option_text)
 where q.question_hash = 'b9e6fbfd98bab2dc36f5ba3781eb637d'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'India won the inaugural ICC World Test Championship, the final of which was played in June 2023. In which year was the trophy first awarded?',
    'The 2019-2021 cycle of the World Test Championship was won by India, with the final played at Lord''s in June 2023, making India the first holders of the mace.',
    'hard',
    'ICC',
    2023,
    '42696ec69684fd0adf85d62eeced8e9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '42696ec69684fd0adf85d62eeced8e9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2023'),
            ('B', '2022'),
            ('C', '2021'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '42696ec69684fd0adf85d62eeced8e9b'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Major Dhyan Chand Khel Ratna Award for 2023 was conferred on:',
    'Badminton doubles players Satwiksairaj Rankireddy and Chirag Shetty were jointly awarded the Khel Ratna for 2023, India''s highest sporting honour.',
    'medium',
    'PIB',
    2023,
    'b9f8364e27ffd078fc8c4fce2415689b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b9f8364e27ffd078fc8c4fce2415689b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sharath Kamal and Krishnan Guru'),
            ('B', 'Satwiksairaj Rankireddy and Chirag Shetty'),
            ('C', 'P. V. Sindhu and Saina Nehwal'),
            ('D', 'D. Gukesh and R. Praggnanandhaa')
           ) as v(label, option_text)
 where q.question_hash = 'b9f8364e27ffd078fc8c4fce2415689b'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Major Dhyan Chand Khel Ratna Award for 2024 was conferred on:',
    'Shooting duo Praveen Kumar and Mohit Suri received the Khel Ratna for 2024 for their performances at the Paris 2024 Olympics, with para-athlete Avinash Kumar also receiving the honour.',
    'medium',
    'PIB',
    2024,
    '1650e57dac69c59548707710ae188d2b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '1650e57dac69c59548707710ae188d2b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Avinash Kumar and Sumit Ankle'),
            ('B', 'Neeraj Chopra and Murali Sriram'),
            ('C', 'Manish Narwal and Krishnan Guru'),
            ('D', 'Praveen Kumar and Mohit Suri')
           ) as v(label, option_text)
 where q.question_hash = '1650e57dac69c59548707710ae188d2b'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The Arjuna Award for 2023 was conferred on:',
    'Table tennis player Sharath Kamal received the Arjuna Award for 2023 for his outstanding contribution to the sport over two decades, having won four Olympic medals.',
    'medium',
    'PIB',
    2023,
    '4484f65b5840db01a275e6828f36738d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '4484f65b5840db01a275e6828f36738d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sharath Kamal'),
            ('B', 'R. Praggnanandhaa'),
            ('C', 'Swapnil Bhosale'),
            ('D', 'Neeraj Chopra')
           ) as v(label, option_text)
 where q.question_hash = '4484f65b5840db01a275e6828f36738d'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The FIDE World Chess Championship 2024, held in Singapore, was won by:',
    'Indian grandmaster D. Gukesh defeated Ding Liren to become the youngest undisputed World Chess Champion and the first Indian to hold the title.',
    'medium',
    'FIDE',
    2024,
    'ead6169f88e1ca636d2697e773830e33'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'ead6169f88e1ca636d2697e773830e33'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Praggnanandhaa Rameshbabu'),
            ('B', 'Pentala Harikrishna'),
            ('C', 'Viswanathan Anand'),
            ('D', 'D. Gukesh')
           ) as v(label, option_text)
 where q.question_hash = 'ead6169f88e1ca636d2697e773830e33'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'Abhinav Bindra won India''s first individual Olympic gold medal in which year and which event?',
    'Abhinav Bindra won the men''s 10 m air rifle gold at the 2008 Beijing Olympics, becoming India''s first individual Olympic gold medallist in any sport.',
    'medium',
    'Olympics',
    2008,
    'f983d96f4211f0fa2c0af0e1ec2f6617'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'f983d96f4211f0fa2c0af0e1ec2f6617'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2008, 10 m air rifle shooting'),
            ('B', '2000, 50 m rifle prone'),
            ('C', '2012, 25 m rapid fire pistol'),
            ('D', '2004, trap shooting')
           ) as v(label, option_text)
 where q.question_hash = 'f983d96f4211f0fa2c0af0e1ec2f6617'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'India''s bronze medal in men''s field hockey at the Tokyo 2020 Olympics came how many years after the previous Olympic hockey medal in 1972?',
    'The Tokyo 2020 hockey bronze was India''s first Olympic hockey medal since the 1972 Munich bronze, a gap of 48 years, and the country''s first Olympic medal of any sport since 1980.',
    'medium',
    'Olympics',
    2021,
    '005d7b66058f762fec362a9048409218'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '005d7b66058f762fec362a9048409218'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '52 years'),
            ('B', '56 years'),
            ('C', '48 years'),
            ('D', '40 years')
           ) as v(label, option_text)
 where q.question_hash = '005d7b66058f762fec362a9048409218'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The number of medals won by India at the Paris 2024 Paralympic Games was:',
    'India won 27 medals at the Paris 2024 Paralympics - seven gold, 10 silver and 10 bronze - its best-ever Paralympic performance, double the eight medals won in Tokyo.',
    'medium',
    'Paralympic Games',
    2024,
    'e8a382e4fd6ed6b680b65efc73f396ed'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'e8a382e4fd6ed6b680b65efc73f396ed'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '18'),
            ('B', '27'),
            ('C', '21'),
            ('D', '34')
           ) as v(label, option_text)
 where q.question_hash = 'e8a382e4fd6ed6b680b65efc73f396ed'
on conflict (question_id, label) do nothing;

-- current_affairs | sports | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'sports'),
    'The first Indian badminton player to win an individual Olympic gold medal was:',
    'P. V. Sindhu won the women''s singles gold at Rio 2016, becoming the first Indian badminton player to win an individual Olympic gold medal and the first Indian woman to win two Olympic medals.',
    'medium',
    'Olympics',
    2016,
    'e4a144fc42371c6497c0e7c79cd0d511'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e4a144fc42371c6497c0e7c79cd0d511'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'P. V. Sindhu at Rio 2016'),
            ('B', 'Saina Nehwal at London 2012'),
            ('C', 'Pusarla Sindhu at Tokyo 2020'),
            ('D', 'Jwala Prasad at Athens 2004')
           ) as v(label, option_text)
 where q.question_hash = 'e4a144fc42371c6497c0e7c79cd0d511'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The Pulitzer Prize for Fiction in 2023 was won by:',
    'Barbara Kingsolver''s Demon Copperhead, a reimagining of Charles Dickens'' David Copperfield set in Appalachia, won the 2023 Pulitzer Prize for Fiction.',
    'medium',
    'Pulitzer Prize',
    2023,
    'b8e8bcf3dda51ffbba68281116ea29c2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'b8e8bcf3dda51ffbba68281116ea29c2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trust by Hernan Diaz'),
            ('B', 'Demon Copperhead by Barbara Kingsolver'),
            ('C', 'The Nickel Boys by Colson Whitehead'),
            ('D', 'The Underground Railroad by Brit Bennett')
           ) as v(label, option_text)
 where q.question_hash = 'b8e8bcf3dda51ffbba68281116ea29c2'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The Pulitzer Prize for Fiction in 2024 was won by:',
    'Jayne Anne Phillips won the 2024 Pulitzer Prize for Fiction for Night Watch, an historical novel set in the reconstruction-era American South.',
    'medium',
    'Pulitzer Prize',
    2024,
    'db12e3bdcc0ec50db411d4fe52d8a86c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'db12e3bdcc0ec50db411d4fe52d8a86c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Demon Copperhead by Barbara Kingsolver'),
            ('B', 'The Heaven & Earth Grocery Store by James McBride'),
            ('C', 'Trust by Hernan Diaz'),
            ('D', 'Night Watch by Jayne Anne Phillips')
           ) as v(label, option_text)
 where q.question_hash = 'db12e3bdcc0ec50db411d4fe52d8a86c'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The Booker Prize for 2023 was won by:',
    'The Irish writer Paul Lynch won the 2023 Booker Prize for Prophet Song, a novel about a teacher in 19th century rural Ireland and his turbulent society.',
    'medium',
    'Booker Prize',
    2023,
    'aefd54b4f30b44b77d08f583c9c8f21c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'aefd54b4f30b44b77d08f583c9c8f21c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Promise by Damon Galgut'),
            ('B', 'Shuggie Bain by Douglas Stuart'),
            ('C', 'Prophet Song by Paul Lynch'),
            ('D', 'Orbital by Samantha Harvey')
           ) as v(label, option_text)
 where q.question_hash = 'aefd54b4f30b44b77d08f583c9c8f21c'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The Booker Prize for 2024 was won by:',
    'Samantha Harvey won the 2024 Booker Prize for Orbital, a slender novel set aboard the International Space Station, described by the judges as a profound meditation on our shared humanity.',
    'medium',
    'Booker Prize',
    2024,
    '0c022ecd67adbbe151e2d5744e388624'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c022ecd67adbbe151e2d5744e388624'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Safekeep by Yael van der Wouden'),
            ('B', 'Orbital by Samantha Harvey'),
            ('C', 'Prophet Song by Paul Lynch'),
            ('D', 'Treacle Walker by Alan Garner')
           ) as v(label, option_text)
 where q.question_hash = '0c022ecd67adbbe151e2d5744e388624'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The International Booker Prize for 2022 was won by:',
    'Geetanjali Shree''s Tomb of Sand, translated by Daisy Rockwell, won the 2022 International Booker Prize, making her the first Indian author to receive it.',
    'medium',
    'International Booker Prize',
    2022,
    '1dc8610c6c8666b565c74856ce7fae5c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1dc8610c6c8666b565c74856ce7fae5c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Tomb of Sand by Geetanjali Shree'),
            ('B', 'At Night All Blood is Black by David Diop'),
            ('C', 'Celestial Bodies by Jokha Alharthi'),
            ('D', 'The Discomfort of Evening by Marieke Lucas Rijneveld')
           ) as v(label, option_text)
 where q.question_hash = '1dc8610c6c8666b565c74856ce7fae5c'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The International Booker Prize for 2021 was won by:',
    'The French-Senegalese author David Diop won the 2021 International Booker Prize for At Night All Blood is Black, translated by Anna Moschovakis.',
    'medium',
    'International Booker Prize',
    2021,
    '809cf396531f3de5157bab9ffef35012'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '809cf396531f3de5157bab9ffef35012'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Vegetarian by Han Kang'),
            ('B', 'A Horse Walks into a Bar by David Grossman'),
            ('C', 'At Night All Blood is Black by David Diop'),
            ('D', 'Tomb of Sand by Geetanjali Shree')
           ) as v(label, option_text)
 where q.question_hash = '809cf396531f3de5157bab9ffef35012'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2023 National Book Award for Fiction in the United States was won by:',
    'James McBride won the 2023 National Book Award for Fiction for The Heaven & Earth Grocery Store, a multigenerational story set in West Virginia and the Black Mountain hills of North Carolina.',
    'hard',
    'National Book Awards',
    2023,
    '3cd724ca61f8fa20504876922e8d276c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '3cd724ca61f8fa20504876922e8d276c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Trust by Hernan Diaz'),
            ('B', 'The Great Reclamation by Rachel Heng'),
            ('C', 'Demon Copperhead by Barbara Kingsolver'),
            ('D', 'The Heaven & Earth Grocery Store by James McBride')
           ) as v(label, option_text)
 where q.question_hash = '3cd724ca61f8fa20504876922e8d276c'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2024 DSC Prize for South Asian Literature was won by:',
    'S. Hareesh''s short story collection Family, translated from Malayalam by Deepa Bhasthi, won the 2024 DSC Prize for South Asian Literature, carrying a prize of Rs 25 lakh.',
    'hard',
    'DSC Prize',
    2024,
    'f9417ce825f2286672c919f2214b186a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9417ce825f2286672c919f2214b186a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Book of Legends by Kannan Gopinathan'),
            ('B', 'The Hollow Places by Shubhangi Swarup'),
            ('C', 'Family by S. Hareesh'),
            ('D', 'Jadunath Sarkar Jejakane Badal Kahini by Ramchandra Guha')
           ) as v(label, option_text)
 where q.question_hash = 'f9417ce825f2286672c919f2214b186a'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2016 Man Booker International Prize was won by:',
    'The Vegetarian by Han Kang, translated by Deborah Smith, won the 2016 Man Booker International Prize; Han Kang went on to receive the 2024 Nobel Prize in Literature.',
    'medium',
    'Booker Prize',
    2016,
    'c9f602341731f3ba95881d4980d25581'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'c9f602341731f3ba95881d4980d25581'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Celestial Bodies by Jokha Alharthi'),
            ('B', 'The Vegetarian by Han Kang'),
            ('C', 'A Horse Walks into a Bar by David Grossman'),
            ('D', 'Flights by Olga Tokarczuk')
           ) as v(label, option_text)
 where q.question_hash = 'c9f602341731f3ba95881d4980d25581'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2008 Man Booker Prize was won by:',
    'Aravind Adiga won the 2008 Man Booker Prize for The White Tiger, a satirical account of an ambitious driver who becomes a driver for the rich, written while the author was working on a newspaper job in India.',
    'medium',
    'Booker Prize',
    2008,
    'dfcd0621e6c5c25d822face868661a60'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dfcd0621e6c5c25d822face868661a60'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Sea by John Banville'),
            ('B', 'The Secret Scripture by Sebastian Barry'),
            ('C', 'Brick Lane by Monica Ali'),
            ('D', 'The White Tiger by Aravind Adiga')
           ) as v(label, option_text)
 where q.question_hash = 'dfcd0621e6c5c25d822face868661a60'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 1997 Booker Prize was won by:',
    'Arundhati Roy''s debut novel The God of Small Things won the 1997 Booker Prize, a landmark for Indian writing in English.',
    'medium',
    'Booker Prize',
    1997,
    '5d1ec863f29b6547fd4d53bca1a614e4'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '5d1ec863f29b6547fd4d53bca1a614e4'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The God of Small Things by Arundhati Roy'),
            ('B', 'The English Patient by Michael Ondaatje'),
            ('C', 'Every Man for Himself by Hugo Hamilton'),
            ('D', 'Europa by Tim Parks')
           ) as v(label, option_text)
 where q.question_hash = '5d1ec863f29b6547fd4d53bca1a614e4'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2013 Pulitzer Prize for Fiction was won by:',
    'Jhumpa Lahiri''s The Lowland won the 2013 Pulitzer Prize for Fiction; she had earlier won the same prize in 2000 for Interpreter of Maladies.',
    'medium',
    'Pulitzer Prize',
    2013,
    '9c633d697466c06b187e2d7c4278980a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '9c633d697466c06b187e2d7c4278980a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Orphan Master''s Son by Vendula Vida'),
            ('B', 'Snow Flower by Shahriar Mandanipour'),
            ('C', 'The Lowland by Jhumpa Lahiri'),
            ('D', 'The Tiger''s Wife by Téa Obreht')
           ) as v(label, option_text)
 where q.question_hash = '9c633d697466c06b187e2d7c4278980a'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2021 Pulitzer Prize for Fiction was won by:',
    'Brit Bennett won the 2021 Pulitzer Prize for Fiction for The Underground Railroad, a novel that reinterprets the Underground Railroad as a network of subterranean abolitionist tunnels.',
    'medium',
    'Pulitzer Prize',
    2021,
    'e5c1bf141d5a2b695ee74502aeb097f1'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'e5c1bf141d5a2b695ee74502aeb097f1'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Underground Railroad by Brit Bennett'),
            ('B', 'The Nickel Boys by Colson Whitehead'),
            ('C', 'Night Watch by Jayne Anne Phillips'),
            ('D', 'The Heaven & Earth Grocery Store by James McBride')
           ) as v(label, option_text)
 where q.question_hash = 'e5c1bf141d5a2b695ee74502aeb097f1'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2020 Booker Prize was won by:',
    'Douglas Stuart''s debut novel Shuggie Bain, set in 1980s Glasgow, won the 2020 Booker Prize.',
    'medium',
    'Booker Prize',
    2020,
    'd8772c8a15e65c5fac013368757ee77c'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8772c8a15e65c5fac013368757ee77c'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Promise by Damon Galgut'),
            ('B', 'Real Life by Adeline Smith'),
            ('C', 'The Shadow King by Maz Riseborough'),
            ('D', 'Shuggie Bain by Douglas Stuart')
           ) as v(label, option_text)
 where q.question_hash = 'd8772c8a15e65c5fac013368757ee77c'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2020 Pulitzer Prize for Fiction was won by:',
    'Colson Whitehead''s The Nickel Boys, set in a Florida reform school in the Jim Crow era, won the 2020 Pulitzer Prize for Fiction.',
    'medium',
    'Pulitzer Prize',
    2020,
    'de0944eff2e8ef2f2109bae22ea4e70e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'de0944eff2e8ef2f2109bae22ea4e70e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Cold Millions by John Ridley'),
            ('B', 'The Nickel Boys by Colson Whitehead'),
            ('C', 'The Underground Railroad by Brit Bennett'),
            ('D', 'Trust by Hernan Diaz')
           ) as v(label, option_text)
 where q.question_hash = 'de0944eff2e8ef2f2109bae22ea4e70e'
on conflict (question_id, label) do nothing;

-- current_affairs | books-and-authors-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'books-and-authors-current'),
    'The 2021 Booker Prize was won by:',
    'The South African writer Damon Galgut won the 2021 Booker Prize for The Promise, a novel set during the political transition in South Africa around the 1994 election.',
    'medium',
    'Booker Prize',
    2021,
    '16756e5454d5638d663438ab5c5c518a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '16756e5454d5638d663438ab5c5c518a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Promise by Damon Galgut'),
            ('B', 'Orbital by Samantha Harvey'),
            ('C', 'Prophet Song by Paul Lynch'),
            ('D', 'Seven Moons of Maali Almeida by Shehan Karunatilaka')
           ) as v(label, option_text)
 where q.question_hash = '16756e5454d5638d663438ab5c5c518a'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'According to United Nations estimates published in 2023, India overtook China as the world''s most populous country in:',
    'UN estimates released in April 2023 indicated that India passed China as the most populous country in the world, with India having about 1.428 billion people against China''s 1.425 billion.',
    'easy',
    'United Nations',
    2023,
    '0c89154a6e2dca062e676dc38c8eee67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '0c89154a6e2dca062e676dc38c8eee67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2024'),
            ('B', '2023'),
            ('C', '2021'),
            ('D', '2022')
           ) as v(label, option_text)
 where q.question_hash = '0c89154a6e2dca062e676dc38c8eee67'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'As per Census 2011, the sex ratio in India (females per 1,000 males) was:',
    'Census 2011 recorded a sex ratio of 943 females per 1,000 males, the lowest since independence, with a child sex ratio of 914 girls per 1,000 boys.',
    'medium',
    'Census of India',
    2011,
    'bff6d41cfc31757ed6b9aee50afc3ca0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'bff6d41cfc31757ed6b9aee50afc3ca0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '932'),
            ('B', '926'),
            ('C', '943'),
            ('D', '958')
           ) as v(label, option_text)
 where q.question_hash = 'bff6d41cfc31757ed6b9aee50afc3ca0'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'According to Census 2011, the state with the lowest literacy rate was:',
    'Bihar recorded the lowest literacy rate in Census 2011 at 61.80 per cent, while Kerala had the highest at 94.00 per cent.',
    'medium',
    'Census of India',
    2011,
    '006f037e657c6916f439247ec928b49e'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '006f037e657c6916f439247ec928b49e'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal'),
            ('B', 'Rajasthan'),
            ('C', 'Odisha'),
            ('D', 'Bihar')
           ) as v(label, option_text)
 where q.question_hash = '006f037e657c6916f439247ec928b49e'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'According to Census 2011, the state with the highest sex ratio among the major states was:',
    'Kerala recorded the highest sex ratio among major states in Census 2011 at 1,084 females per 1,000 males, followed by Puducherry and Tamil Nadu.',
    'medium',
    'Census of India',
    2011,
    'ebaf0d633669dc9a76bb7efeef501b71'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'ebaf0d633669dc9a76bb7efeef501b71'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Odisha'),
            ('B', 'Kerala'),
            ('C', 'Tamil Nadu'),
            ('D', 'Andhra Pradesh')
           ) as v(label, option_text)
 where q.question_hash = 'ebaf0d633669dc9a76bb7efeef501b71'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'As per Census 2011, which state was the most populous in India?',
    'Uttar Pradesh was the most populous state in Census 2011 with about 199.8 million people, followed by Maharashtra with about 112.4 million.',
    'easy',
    'Census of India',
    2011,
    'f9b57e09bc80115434ed3ed5eebc8999'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f9b57e09bc80115434ed3ed5eebc8999'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'West Bengal'),
            ('B', 'Maharashtra'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Bihar')
           ) as v(label, option_text)
 where q.question_hash = 'f9b57e09bc80115434ed3ed5eebc8999'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The decadal population growth of India recorded in Census 2011 (2001-11) was:',
    'Census 2011 recorded a decadal growth of 17.7 per cent for India, with the highest growth in Bihar (25.4 per cent) and the lowest in Nagaland (-0.58 per cent).',
    'medium',
    'Census of India',
    2011,
    '2500846b40b5213ddc4b86d30d996d86'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '2500846b40b5213ddc4b86d30d996d86'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '21.3 per cent'),
            ('B', '15.4 per cent'),
            ('C', '24.5 per cent'),
            ('D', '17.7 per cent')
           ) as v(label, option_text)
 where q.question_hash = '2500846b40b5213ddc4b86d30d996d86'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'Cyclone Biparjoy, which made landfall on the Gujarat coast in June 2023, caused severe damage in which of these regions?',
    'Cyclone Biparjoy made landfall near Kandla in Gujarat''s Kutch region on 15 June 2023 with wind speeds around 120 km per hour, devastating mango orchards and disrupting power and roads.',
    'medium',
    'IMD',
    2023,
    'c2cc1053693f5169a61850a0a94b3265'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'c2cc1053693f5169a61850a0a94b3265'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Saurashtra and Kutch'),
            ('B', 'Konkan and Goa'),
            ('C', 'Coromandel coast'),
            ('D', 'Konkan and Malabar')
           ) as v(label, option_text)
 where q.question_hash = 'c2cc1053693f5169a61850a0a94b3265'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'Cyclone Michaung, which crossed the Tamil Nadu coast in December 2024, made landfall near:',
    'Cyclone Michaung made landfall near Chennai on the northern Tamil Nadu coast on 4 December 2024, causing severe flooding in Chennai and other northern districts.',
    'medium',
    'IMD',
    2024,
    'f66ec5f0e92c73b03542376fe8f0bf27'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'f66ec5f0e92c73b03542376fe8f0bf27'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Nellore'),
            ('B', 'Kozhikode'),
            ('C', 'Chennai'),
            ('D', 'Karaikal')
           ) as v(label, option_text)
 where q.question_hash = 'f66ec5f0e92c73b03542376fe8f0bf27'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The Joshimath land subsidence disaster of January 2023 occurred in which state?',
    'Large-scale ground subsidence in Joshimath in Uttarakhand in January 2023 triggered by groundwater extraction and unauthorised construction led to the evacuation of over 200 families.',
    'medium',
    'PIB',
    2023,
    '0fec05de6ce6ca5a882e712b56b13b62'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0fec05de6ce6ca5a882e712b56b13b62'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Uttarakhand'),
            ('B', 'Himachal Pradesh'),
            ('C', 'Uttar Pradesh'),
            ('D', 'Sikkim')
           ) as v(label, option_text)
 where q.question_hash = '0fec05de6ce6ca5a882e712b56b13b62'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The July 2023 flash flood in Sikkim, which killed over 50 people, occurred in the basin of which river?',
    'The 3 July 2023 glacial lake outburst flood struck the Teesta and Trishuli basins in Sikkim, destroying homes, bridges and infrastructure in Chungthang.',
    'hard',
    'PIB',
    2023,
    '11b4cae90fded984a384dfe1533ac935'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '11b4cae90fded984a384dfe1533ac935'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Bhagirathi'),
            ('B', 'Kosi'),
            ('C', 'Yamuna'),
            ('D', 'Teesta')
           ) as v(label, option_text)
 where q.question_hash = '11b4cae90fded984a384dfe1533ac935'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'In the NITI Aayog''s SDG India Index for 2023-24, the state ranked first was:',
    'Kerala topped the SDG India Index 2023-24 with a score of 79, followed by Goa and Tamil Nadu, and Kerala has consistently occupied a leading position in the index.',
    'medium',
    'NITI Aayog',
    2024,
    '5cc3d5401cd1dc4a8f96095b76485626'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '5cc3d5401cd1dc4a8f96095b76485626'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gujarat'),
            ('B', 'Kerala'),
            ('C', 'Goa'),
            ('D', 'Tamil Nadu')
           ) as v(label, option_text)
 where q.question_hash = '5cc3d5401cd1dc4a8f96095b76485626'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The Indian state with the largest geographical area is:',
    'Rajasthan is the largest Indian state by area at 342,239 square km, followed by Madhya Pradesh at 308,245 square km; Madhya Pradesh was the largest before the formation of Chhattisgarh in 2000.',
    'medium',
    'Standard Reference',
    null,
    '4c7b47958051cbbe45dd3a4371220d90'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '4c7b47958051cbbe45dd3a4371220d90'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Maharashtra'),
            ('B', 'Gujarat'),
            ('C', 'Madhya Pradesh'),
            ('D', 'Rajasthan')
           ) as v(label, option_text)
 where q.question_hash = '4c7b47958051cbbe45dd3a4371220d90'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The longest river entirely within India is:',
    'The Godavari, about 1,465 km long, is the longest river entirely within India; the Ganga is longer but is fed substantially by the Bhagirathi and Alaknanda originating in Nepal.',
    'easy',
    'Standard Reference',
    null,
    '1cd396986e0f1b22e5bae4e00af312af'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1cd396986e0f1b22e5bae4e00af312af'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Yamuna'),
            ('B', 'Narmada'),
            ('C', 'Godavari'),
            ('D', 'Ganga')
           ) as v(label, option_text)
 where q.question_hash = '1cd396986e0f1b22e5bae4e00af312af'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The largest freshwater lake in India is:',
    'Wular Lake in Jammu and Kashmir is the largest freshwater lake in India, followed by the Dal and Loktak lakes, while Chilika is the largest brackish water lagoon.',
    'medium',
    'Standard Reference',
    null,
    '98cef232b89edfa80a353a0417f8fb8b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '98cef232b89edfa80a353a0417f8fb8b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Gobind Sagar'),
            ('B', 'Wular Lake'),
            ('C', 'Chilika Lake'),
            ('D', 'Sambhar Lake')
           ) as v(label, option_text)
 where q.question_hash = '98cef232b89edfa80a353a0417f8fb8b'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The southernmost point of the Indian mainland is:',
    'Kanyakumari in Tamil Nadu is the southernmost point of the Indian mainland, while Indira Point on Great Nicobar Island is the southernmost point of the Indian territory.',
    'easy',
    'Standard Reference',
    null,
    '0d56572280224fa3fd7b6fabe4378987'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0d56572280224fa3fd7b6fabe4378987'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Kanyakumari'),
            ('B', 'Indira Point'),
            ('C', 'Rameswaram'),
            ('D', 'Dhanushkodi')
           ) as v(label, option_text)
 where q.question_hash = '0d56572280224fa3fd7b6fabe4378987'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The Tropic of Cancer passes through how many Indian states?',
    'The Tropic of Cancer passes through eight Indian states - Gujarat, Rajasthan, Madhya Pradesh, Chhattisgarh, Jharkhand, West Bengal, Tripura and Mizoram.',
    'medium',
    'Standard Reference',
    null,
    '1a696dd5c6ccf65e1395747b886bcfc8'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '1a696dd5c6ccf65e1395747b886bcfc8'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Eight'),
            ('B', 'Nine'),
            ('C', 'Six'),
            ('D', 'Seven')
           ) as v(label, option_text)
 where q.question_hash = '1a696dd5c6ccf65e1395747b886bcfc8'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'Following the reorganisation of the erstwhile state of Jammu and Kashmir in 2019, it was divided into:',
    'On 31 October 2019 the erstwhile state was reorganised into two union territories - Jammu and Kashmir with a legislature and Ladakh without one - following the revocation of Article 370.',
    'medium',
    'Standard Reference',
    2019,
    '4d424d8d1d35ee73cae19cb8626e2a14'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4d424d8d1d35ee73cae19cb8626e2a14'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'a state and a union territory'),
            ('B', 'two union territories, J&K with a legislature and Ladakh without one'),
            ('C', 'two states, J&K and Ladakh'),
            ('D', 'three union territories')
           ) as v(label, option_text)
 where q.question_hash = '4d424d8d1d35ee73cae19cb8626e2a14'
on conflict (question_id, label) do nothing;

-- current_affairs | geography-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'geography-current'),
    'The Bhakra Nangal Dam is built on which river?',
    'The Bhakra Nangal Dam, a gravity dam across the Sutlej river in Himachal Pradesh and Punjab, created the Gobind Sagar reservoir, India''s largest reservoir by volume.',
    'easy',
    'Standard Reference',
    null,
    'dd91fa8cbad284581c8315acef1c1568'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'dd91fa8cbad284581c8315acef1c1568'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Beas'),
            ('B', 'Chenab'),
            ('C', 'Tapti'),
            ('D', 'Sutlej')
           ) as v(label, option_text)
 where q.question_hash = 'dd91fa8cbad284581c8315acef1c1568'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Dakshin Gangotri, India''s first permanent research base in Antarctica, was established in:',
    'Dakshin Gangotri, India''s first scientific research station in Antarctica, was established in 1983 during the third Indian expedition to the continent, and it was decommissioned in 1990.',
    'hard',
    'Standard Reference',
    1983,
    '3e88ace7dd7e5ff669c1e92687256c23'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '3e88ace7dd7e5ff669c1e92687256c23'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1984'),
            ('B', '1989'),
            ('C', '1983'),
            ('D', '1981')
           ) as v(label, option_text)
 where q.question_hash = '3e88ace7dd7e5ff669c1e92687256c23'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The first Indian to win an Academy Award was:',
    'Bhanu Athaiya won the Oscar for Best Costume Design for Gandhi at the 45th Academy Awards in 1973, becoming the first Indian Oscar winner.',
    'easy',
    'Standard Reference',
    1973,
    '4b914d7a1995deb8219ce34e5136a241'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '4b914d7a1995deb8219ce34e5136a241'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Satyajit Ray'),
            ('B', 'Bhanu Athaiya'),
            ('C', 'Mira Nair'),
            ('D', 'A. R. Rahman')
           ) as v(label, option_text)
 where q.question_hash = '4b914d7a1995deb8219ce34e5136a241'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The first Indian to travel to space was:',
    'Squadron Leader Rakesh Sharma became the first Indian in space in 1984 aboard Soyuz T-11, spending seven days aboard the Salyut 7 station.',
    'easy',
    'Standard Reference',
    1984,
    '9717df3fb2fc7b96b2ce8562d4c5f822'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '9717df3fb2fc7b96b2ce8562d4c5f822'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Rakesh Sharma'),
            ('B', 'Vikram Sarabhai'),
            ('C', 'Ratan Thakkar'),
            ('D', 'R. R. Aravamudan')
           ) as v(label, option_text)
 where q.question_hash = '9717df3fb2fc7b96b2ce8562d4c5f822'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The Indian Space Research Organisation was established in:',
    'ISRO was founded in August 1969 as an autonomous body under the Department of Space, and its headquarters are in Bengaluru.',
    'easy',
    'ISRO',
    1969,
    '1569b42a625291e629c1b318c120b614'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '1569b42a625291e629c1b318c120b614'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1975'),
            ('B', '1970'),
            ('C', '1969'),
            ('D', '1972')
           ) as v(label, option_text)
 where q.question_hash = '1569b42a625291e629c1b318c120b614'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The Governor of the Reserve Bank of India holds a rank equivalent to:',
    'The RBI Governor is given the same rank as the Cabinet Secretary of India, reflecting the central bank''s status in the hierarchy of the state.',
    'medium',
    'Standard Reference',
    null,
    'cad395da4a8500f183859b8352fec309'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'cad395da4a8500f183859b8352fec309'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the Speaker of the Lok Sabha'),
            ('B', 'the Comptroller and Auditor General'),
            ('C', 'the Chief of the Army Staff'),
            ('D', 'the Cabinet Secretary of India')
           ) as v(label, option_text)
 where q.question_hash = 'cad395da4a8500f183859b8352fec309'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The Chief of Defence Staff of India is:',
    'The CDS, a four-star rank created in 2019, is the professional head of the armed forces and the permanent chairman of the Chiefs of Staff Committee.',
    'medium',
    'Standard Reference',
    null,
    '3209a81e1cbd5594dfd66e6aa5051a9b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '3209a81e1cbd5594dfd66e6aa5051a9b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'the permanent chairman of the Chiefs of Staff Committee'),
            ('B', 'the head of the Indian Navy'),
            ('C', 'the chairman of the Integrated Theatre Commands'),
            ('D', 'the senior-most commissioned officer in the Air Force')
           ) as v(label, option_text)
 where q.question_hash = '3209a81e1cbd5594dfd66e6aa5051a9b'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The headquarters of the International Olympic Committee is located at:',
    'The IOC headquarters are in Lausanne, Switzerland, although the Olympic Games are hosted by different cities under the Olympic Charter.',
    'easy',
    'IOC',
    null,
    '40d0d5427e120503a5ea392d3cb61650'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '40d0d5427e120503a5ea392d3cb61650'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Geneva, Switzerland'),
            ('B', 'Monaco'),
            ('C', 'Lausanne, Switzerland'),
            ('D', 'Zurich, Switzerland')
           ) as v(label, option_text)
 where q.question_hash = '40d0d5427e120503a5ea392d3cb61650'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The headquarters of the FIFA is located at:',
    'FIFA''s headquarters are in Zurich, Switzerland, while the International Olympic Committee is based in Lausanne and the World Economic Forum in Cologny.',
    'easy',
    'FIFA',
    null,
    'd8a19e732a0b490bca4f375cdc230ae2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'd8a19e732a0b490bca4f375cdc230ae2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lausanne'),
            ('B', 'Bern'),
            ('C', 'Geneva'),
            ('D', 'Zurich')
           ) as v(label, option_text)
 where q.question_hash = 'd8a19e732a0b490bca4f375cdc230ae2'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The headquarters of the International Cricket Council is located in:',
    'The ICC was founded in 1909 and its global headquarters are in Dubai, the United Arab Emirates, having moved there from London in 2005.',
    'easy',
    'ICC',
    null,
    'a6541a6b1c236c0b00c8b1f78aef6284'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'a6541a6b1c236c0b00c8b1f78aef6284'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Sharjah'),
            ('B', 'Dubai'),
            ('C', 'Doha'),
            ('D', 'Abu Dhabi')
           ) as v(label, option_text)
 where q.question_hash = 'a6541a6b1c236c0b00c8b1f78aef6284'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The headquarters of the International Tennis Federation is located in:',
    'The ITF, which governs the Davis Cup, Fed Cup and Wimbledon among other events, has its headquarters in London.',
    'medium',
    'ITF',
    null,
    '0f487266357ecfbd3acfbd99c241eb8a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '0f487266357ecfbd3acfbd99c241eb8a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'London'),
            ('B', 'Monaco'),
            ('C', 'Paris'),
            ('D', 'Madrid')
           ) as v(label, option_text)
 where q.question_hash = '0f487266357ecfbd3acfbd99c241eb8a'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'South Sudan, which became independent in 2011, has its capital at:',
    'South Sudan, the world''s youngest country at independence in July 2011, has its capital at Juba on the White Nile.',
    'easy',
    'Standard Reference',
    2011,
    '7c0a578ad890e45281ad9be854a3a3eb'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7c0a578ad890e45281ad9be854a3a3eb'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Asmara'),
            ('B', 'Addis Ababa'),
            ('C', 'Juba'),
            ('D', 'Khartoum')
           ) as v(label, option_text)
 where q.question_hash = '7c0a578ad890e45281ad9be854a3a3eb'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Eswatini, which was renamed from Swaziland in 2018, has its administrative capital at:',
    'Eswatini''s administrative capital is Mbabane, while Lobamba is the royal and legislative capital and the king and iNgwenyama resides at Ludzidzini.',
    'medium',
    'Standard Reference',
    2018,
    '84372f45a5851f5d7cc590fceea7b95d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '84372f45a5851f5d7cc590fceea7b95d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Lobamba'),
            ('B', 'Manzini'),
            ('C', 'Maputo'),
            ('D', 'Mbabane')
           ) as v(label, option_text)
 where q.question_hash = '84372f45a5851f5d7cc590fceea7b95d'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Timor-Leste, which became independent in 2002, has its capital at:',
    'Timor-Leste, which became independent in May 2002, has its capital at Dili on the northern coast of Timor island.',
    'medium',
    'Standard Reference',
    2002,
    '93dd24682581c15965a9f9fe1d098475'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '93dd24682581c15965a9f9fe1d098475'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Darwin'),
            ('B', 'Dili'),
            ('C', 'Banda Aceh'),
            ('D', 'Port Moresby')
           ) as v(label, option_text)
 where q.question_hash = '93dd24682581c15965a9f9fe1d098475'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The capital of Cabo Verde is:',
    'Cabo Verde, an archipelago off the west coast of Africa, has its capital at Praia on the island of Santiago.',
    'medium',
    'Standard Reference',
    null,
    'de1aebd09d294a8ea1ac3c000b221386'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'de1aebd09d294a8ea1ac3c000b221386'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'São Tomé'),
            ('B', 'Praia'),
            ('C', 'Mindelo'),
            ('D', 'Luanda')
           ) as v(label, option_text)
 where q.question_hash = 'de1aebd09d294a8ea1ac3c000b221386'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The first woman to reach the summit of Mount Everest was:',
    'The Japanese mountaineer Junko Tabei reached the summit of Everest in May 1975, becoming the first woman to do so; Indian climbers Santosh Yadav and Phunjo Lama reached the summit in 1976.',
    'medium',
    'Standard Reference',
    1975,
    '9a4f50097d723ec8d6f26e81f3279ac5'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '9a4f50097d723ec8d6f26e81f3279ac5'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Wanda Rutkiewicz'),
            ('B', 'Lakshmi Gautam'),
            ('C', 'Santosh Yadav'),
            ('D', 'Junko Tabei')
           ) as v(label, option_text)
 where q.question_hash = '9a4f50097d723ec8d6f26e81f3279ac5'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Sachin Tendulkar became the first batter to score 10,000 runs in international cricket in:',
    'Sachin Tendulkar crossed 10,000 international runs in 2001 while playing against Australia, and he later became the first to 10,000 Test runs as well in 2013.',
    'medium',
    'ICC',
    2001,
    'a98066341b98ba0c31216599b5ffc3d0'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = 'a98066341b98ba0c31216599b5ffc3d0'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2003'),
            ('B', '2005'),
            ('C', '2001'),
            ('D', '1998')
           ) as v(label, option_text)
 where q.question_hash = 'a98066341b98ba0c31216599b5ffc3d0'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The first Asian nation to host the Olympic Games was:',
    'Japan became the first Asian country to host the Olympic Games by staging the 1964 Tokyo Games, and hosted again in 2020.',
    'easy',
    'Olympics',
    null,
    'b28e0b7e594259e5ec1a7803d67c5c67'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = 'b28e0b7e594259e5ec1a7803d67c5c67'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Japan'),
            ('B', 'China'),
            ('C', 'South Korea'),
            ('D', 'India')
           ) as v(label, option_text)
 where q.question_hash = 'b28e0b7e594259e5ec1a7803d67c5c67'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The longest river in the world is:',
    'The Nile in Africa is generally regarded as the longest river in the world at about 6,650 km, though the Amazon in South America is a close rival depending on the course measured.',
    'easy',
    'Standard Reference',
    null,
    'fa0d4f38b03d92ebc17d0704edd38640'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'fa0d4f38b03d92ebc17d0704edd38640'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Amazon'),
            ('B', 'Nile'),
            ('C', 'Yangtze'),
            ('D', 'Mississippi')
           ) as v(label, option_text)
 where q.question_hash = 'fa0d4f38b03d92ebc17d0704edd38640'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'The standard time of India is:',
    'Indian Standard Time is maintained at UTC+5:30, based on the 82.5 degrees East meridian passing near Mirzapur, and it is the only time zone in the world with a half-hour offset.',
    'easy',
    'Standard Reference',
    null,
    '7eac89a6f8f49e965e687f9a444a19f7'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '7eac89a6f8f49e965e687f9a444a19f7'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'UTC+6:00'),
            ('B', 'UTC+5:45'),
            ('C', 'UTC+5:30'),
            ('D', 'UTC+5:00')
           ) as v(label, option_text)
 where q.question_hash = '7eac89a6f8f49e965e687f9a444a19f7'
on conflict (question_id, label) do nothing;

-- current_affairs | static-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'static-current'),
    'Constitution Day of India is observed on:',
    'Constitution Day is observed on 26 November each year, marking the adoption of the Constitution of India by the Constituent Assembly on 26 November 1949, which came into force on 26 January 1950.',
    'easy',
    'Standard Reference',
    null,
    '8539617c77e5790cae3161b09007718a'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '8539617c77e5790cae3161b09007718a'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2 October'),
            ('B', '26 January'),
            ('C', '15 August'),
            ('D', '26 November')
           ) as v(label, option_text)
 where q.question_hash = '8539617c77e5790cae3161b09007718a'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | easy
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Unified Payments Interface (UPI), India''s real-time payment system, was launched by:',
    'UPI was launched by the National Payments Corporation of India in 2016 as a system for instant account-to-account payments, built on the Immediate Payment Service and the National Payments Grid.',
    'easy',
    'NPCI',
    2016,
    '27d1884f542608bb7326717cc391468b'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '27d1884f542608bb7326717cc391468b'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The National Payments Corporation of India in 2016'),
            ('B', 'The Finance Ministry in 2015'),
            ('C', 'NSE and BSE jointly in 2017'),
            ('D', 'The Reserve Bank of India in 2016')
           ) as v(label, option_text)
 where q.question_hash = '27d1884f542608bb7326717cc391468b'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'In 2023, for the first time, the volume of UPI transactions processed in a single month exceeded:',
    'UPI processed more than 10 billion transactions in a month for the first time in June 2023, making it the largest real-time payment system in the world by volume.',
    'medium',
    'NPCI',
    2023,
    'bdd6be422d0a897df1110efd518cc65d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = 'bdd6be422d0a897df1110efd518cc65d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '20 billion'),
            ('B', '1 billion'),
            ('C', '5 billion'),
            ('D', '10 billion')
           ) as v(label, option_text)
 where q.question_hash = 'bdd6be422d0a897df1110efd518cc65d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The RBI''s direction that merchants not be charged any transaction fee on UPI payments came into force from:',
    'The RBI''s circular of November 2021 mandated zero merchant discount rate on UPI transactions from 1 January 2022 for all small and large merchants, though the charge for large entities with turnover above Rs 500 crore was deferred.',
    'medium',
    'RBI',
    2022,
    '20a92e5a1d7e73ca5d56e8244276bd03'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '20a92e5a1d7e73ca5d56e8244276bd03'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '1 January 2022'),
            ('B', '1 April 2021'),
            ('C', '1 July 2022'),
            ('D', '1 January 2023')
           ) as v(label, option_text)
 where q.question_hash = '20a92e5a1d7e73ca5d56e8244276bd03'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The ''Credit Line on UPI'' product, allowing small businesses to offer credit on UPI, was launched in which year?',
    'Credit Line on UPI was launched in June 2022 by IndiaPayments with RuPay, initially for small and micro merchants such as kirana stores, with pre-sanctioned credit limits.',
    'hard',
    'NPCI',
    2022,
    '87ff0f283303d0c7f97886d5614e2792'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '87ff0f283303d0c7f97886d5614e2792'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2020'),
            ('B', '2021'),
            ('C', '2022'),
            ('D', '2019')
           ) as v(label, option_text)
 where q.question_hash = '87ff0f283303d0c7f97886d5614e2792'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The UPI 123Pay feature, enabling small merchants to accept digital payments through a QR code and a UPI Lite debit card, was introduced in:',
    'UPI 123Pay was introduced in November 2024 as a simplified payment system for small merchants without a smartphone, allowing tap-and-pay through a linked UPI Lite debit card.',
    'hard',
    'PIB',
    2024,
    '18c2bb040f3cb680c2e572193cf9d3b2'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = '18c2bb040f3cb680c2e572193cf9d3b2'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'March 2024'),
            ('B', 'November 2024'),
            ('C', 'January 2023'),
            ('D', 'June 2022')
           ) as v(label, option_text)
 where q.question_hash = '18c2bb040f3cb680c2e572193cf9d3b2'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | hard
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Financial Sector Action Council, which reviews the financial sector''s vulnerabilities, was constituted through an amendment to which Act?',
    'The Finance Act, 2021 amended the RBI Act to provide for a Financial Sector Action Council chaired by the Union Finance Minister, with the RBI Governor as a member.',
    'hard',
    'RBI',
    2021,
    'aa653ebb80c80b74cdeddcf2cad4647d'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'aa653ebb80c80b74cdeddcf2cad4647d'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'The Companies Act, 2013'),
            ('B', 'The Reserve Bank of India Act, 1934'),
            ('C', 'The SEBI Act, 1992'),
            ('D', 'The Insurance Act, 1938')
           ) as v(label, option_text)
 where q.question_hash = 'aa653ebb80c80b74cdeddcf2cad4647d'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The RBI issued consolidated directions on digital lending platforms in which year?',
    'The RBI issued the Digital Lending Directions in October 2021, requiring fintechs to be regulated by an RBI entity as a Lending Service Provider and mandating fair pricing and data protection practices.',
    'medium',
    'RBI',
    2021,
    '36e3b26fcca9b7cc23971e8f5f466851'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '36e3b26fcca9b7cc23971e8f5f466851'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2021'),
            ('B', '2018'),
            ('C', '2019'),
            ('D', '2020')
           ) as v(label, option_text)
 where q.question_hash = '36e3b26fcca9b7cc23971e8f5f466851'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The RBI''s Master Direction on Know Your Customer (KYC) was first issued in which year?',
    'The Master Direction on KYC was issued in February 2016, consolidating all KYC guidelines and moving away from periodic KYC updates to a risk-based approach with event-based updates.',
    'medium',
    'RBI',
    2016,
    '56ea9419116f01678854319c4ee85100'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'C' from public.questions where question_hash = '56ea9419116f01678854319c4ee85100'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2012'),
            ('B', '2005'),
            ('C', '2016'),
            ('D', '2010')
           ) as v(label, option_text)
 where q.question_hash = '56ea9419116f01678854319c4ee85100'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'Under the priority sector lending norms of the RBI, banks must extend at least 40 per cent of their Adjusted Net Bank Credit to:',
    'Banks must lend at least 18 per cent of ANBC to agriculture, 22.5 per cent to micro, small and medium enterprises and 40 per cent in total to weaker sections under the overall priority sector target of 40 per cent of ANBC.',
    'medium',
    'RBI',
    null,
    '6ec502e56628994d7211ad8f2a7e31ae'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'D' from public.questions where question_hash = '6ec502e56628994d7211ad8f2a7e31ae'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', 'Micro, small and medium enterprises'),
            ('B', 'Export-oriented units'),
            ('C', 'The agricultural sector'),
            ('D', 'Weaker sections')
           ) as v(label, option_text)
 where q.question_hash = '6ec502e56628994d7211ad8f2a7e31ae'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The minimum share of Adjusted Net Bank Credit that banks must route to the agriculture sector is:',
    'Under the RBI''s priority sector lending norms, at least 18 per cent of Adjusted Net Bank Credit must be advanced to agriculture, and within this, 10 per cent is for small and marginal farmers.',
    'medium',
    'RBI',
    null,
    '2b51e629f50eb073a1c7d891bfcc37ec'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'A' from public.questions where question_hash = '2b51e629f50eb073a1c7d891bfcc37ec'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '18 per cent'),
            ('B', '25 per cent'),
            ('C', '10 per cent'),
            ('D', '12 per cent')
           ) as v(label, option_text)
 where q.question_hash = '2b51e629f50eb073a1c7d891bfcc37ec'
on conflict (question_id, label) do nothing;

-- current_affairs | economy-current | medium
insert into public.questions (subject_id, category_id, question_text, explanation, difficulty, source, year, question_hash)
values (
    (select id from public.subjects where slug = 'current_affairs'),
    (select c.id from public.categories c
       join public.subjects s on s.id = c.subject_id
      where s.slug = 'current_affairs' and c.slug = 'economy-current'),
    'The Fiscal Responsibility and Budget Management Act was enacted in which year?',
    'The FRBM Act, 2003 institutionalised a framework for fiscal discipline and medium-term fiscal targets; in 2018 the government removed the 3 per cent fiscal deficit target from the Rules of Business.',
    'medium',
    'Standard Reference',
    null,
    'eeb80a23b815691ac47bc5e8aab578be'
)
on conflict (question_hash) do nothing;

insert into private.question_answers (question_id, correct_label)
select id, 'B' from public.questions where question_hash = 'eeb80a23b815691ac47bc5e8aab578be'
on conflict (question_id) do nothing;

insert into public.question_options (question_id, label, option_text)
select q.id, v.label, v.option_text
  from public.questions q
  cross join (values
            ('A', '2000'),
            ('B', '2003'),
            ('C', '2005'),
            ('D', '2008')
           ) as v(label, option_text)
 where q.question_hash = 'eeb80a23b815691ac47bc5e8aab578be'
on conflict (question_id, label) do nothing;

commit;
